{*******************************************************************************
 *                                                                             *
 *  Acesso as a��es da aplica��o                                               *
 *  Aplica��o para controle de acesso as a��es                                 *
 *  da aplica��o                                                               *
 *                                                                             *
 *  Data da Cria��o : 23/04/2004                                               *
 *  Programador Leandro Ribas                                                  *
 *  Data Finaliza��o : 06/05/2004                                              *
 *                                                                             *
 *  Data da Ultima Atualiza��o : 12/05/2004                                    *
 *  Atualizado por: Leandro Ribas                                              *
 *  Motivo da Atualiza��o :                                                    *
 *   A tabela de usuario/aplica��o/objeto passa a armazenar todos as           *
 *   a��es da aplica��o, indicando em cada registro se o usuario               *
 *   tem acesso ou n�o na a��o.Com isso essa aplica��o foi atualizada          *
 *   para atender esse conceito.                                               *
 *                                                                             *
 *                                                                             *
 *******************************************************************************
}

unit A012UTAU;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ComCtrls, RzListVw, LMDCustomControl, LMDCustomPanel,
  LMDCustomBevelPanel, LMDCustomParentPanel, LMDCustomGroupBox, LMDGroupBox,
  ImgList, Contnrs,DB, MemDS, DBAccess, Ora, ExtCtrls, LMDCustomPanelFill,
  LMDStaticText;

type
  //tipo que indica o que deve se fazer com a a��o
  TtpPermissao = (tpDefault,tpLibera,tpRestringi);

  //indica qual deve ser o valor do check do item
  TtpCheck = (tcTrue,tcFalse,tcDefault);

  //objeto que representa uma acao na aplicacao
  TAcao = class
    nIdObjeto : Integer;//id do objeto
    //indica se o operador pode alterar o estado da a��o
    lAlterar : Boolean;
    //indica se o bot�o chama uma aplica��o
    lAplicacao : Boolean;
    //indica o que deve ser feito com a a��o(Liberacao,Restrin��o)
    Update : TtpPermissao;
  end;

  TFRM_A012UTAU = class(TForm)
    GRB_ENDEREC: TLMDGroupBox;
    LSTVIEW_ACOES: TRzListView;
    ImgList: TImageList;
    Panel2: TPanel;
    BTN_SAIR: TSpeedButton;
    BTN_ALTERAR: TSpeedButton;
    BTN_GRAVAR: TSpeedButton;
    BTN_CANCELAR: TSpeedButton;
    QRY_INSERIAPLUSU: TOraQuery;
    QRY_RESTRINGIACAOUSU: TOraQuery;
    LMDStaticText1: TLMDStaticText;
    LMDStaticText2: TLMDStaticText;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure LSTVIEW_ACOESDrawItem(Sender: TCustomListView;
      Item: TListItem; Rect: TRect; State: TOwnerDrawState);
    procedure LSTVIEW_ACOESMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure BTN_GRAVARClick(Sender: TObject);
    procedure BTN_SAIRClick(Sender: TObject);
    procedure BTN_ALTERARClick(Sender: TObject);
    procedure BTN_CANCELARClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure LMDStaticText1Click(Sender: TObject);
    procedure LMDStaticText2Click(Sender: TObject);
  private
    { Private declarations }
    procedure ChangeColor(Sender : TObject; MSG : Integer);
    procedure WndProc(Var Msg : TMessage);override;
  public
    { Public declarations }
    nIdAplicacao : Integer;//id da aplica��o das a��es
    nIdUsuario : Integer;//id do usuario
    nIdUa : Integer;//usuario/aplicacao
    nIdOpa : Integer;
    nIdOpaOperador : Integer;
    nIdUaOperador : integer;
    EnabledEdit : boolean;//indica se pode ser alterada alguma a��o
    AplicacaoChecked : boolean;//indica se a aplica��o das a��es estava checada
    cNmUsu : String;//nome do usuario
    AcaoUsu : ^Integer;//acao do operador(Confirmar/Cancelar)
    cDescAplic : String;

    //monta o listview
    procedure AlimentaLista;

    //grava as altera��e nas a��es da aplica��o
    procedure GravaPermissoesAcoes;

    //verifica quando uma acao faz chamada a uma aplica��o
    procedure VerficaBotoesChamamAplic(Update : TtpPermissao; cUnit : String);

    //limpa e libera os objetos da memoria da lista
    procedure LimpaListView;

    //Valida o item que deve ser alterado de estado da lista
    procedure ValidaClickListView(Item : TListItem ; Msg : Boolean; Check : TtpCheck = tcDefault);
  end;

var
  FRM_A012UTAU: TFRM_A012UTAU;

implementation

uses UVariaveis, MPLCtrl, D012UTAU, DMCTRL, D011UTAU;

{$R *.DFM}

procedure TFRM_A012UTAU.FormShow(Sender: TObject);
begin
  //verifica o acesso do usuario logado
  if Acesso(nMatricula,'A012UTAU',DTM_A012UTAU) then
    Close;


  Botoes(['BTN_GRAVAR','BTN_CANCELAR'],'FRM_A012UTAU',false);

  //se a aplica��o n�o estiver checada
  if not(AplicacaoChecked) then
    //desabilida a altera��o
    BTN_ALTERAR.Enabled := false
  else
    BTN_ALTERAR.Enabled := EnabledEdit;

  with DTM_A012UTAU do
    begin
      if nIdOpaOperador > 0 then
        begin
          QRY_042.Close;
          QRY_042.SQL.Clear;
          QRY_042.SQL.Text :=
            'select tbl_ao.nidtbl_ao, tbl_ao.nidtbl_o,InitCap(tbl_ao.cfuncao) as cfuncao, tbl_o.cnomeunit from tbl_ao, tbl_o ' +
            'where tbl_ao.nidtbl_a = :nidtbl_a and ' +
            'tbl_ao.nidtbl_o = tbl_o.nidtbl_o and ' +
            'tbl_ao.cfuncao <> ' + QuotedStr('SAIR') + ' and ' + 
            'tbl_o.cnomecla in (' + QuotedStr('TSPEEDBUTTON') +',' +QuotedStr('TBITBTN') + ') and ' +
            'tbl_o.nidtbl_o not in(select tbl_apa.nidtbl_o ' +
                                  'from tbl_apa where nidtbl_opa = :nidopaoperador and ' +
                                  'npermiti = 0)';
          QRY_042.ParamByName('nidtbl_a').asInteger := nIdAplicacao;
          QRY_042.ParamByName('nidopaoperador').AsInteger := nIdOpaOperador;
          QRY_042.Open;
        end
      else
        begin
          //busca as a�oes da aplica��o
          QRY_042.ParamByName('nidtbl_a').asInteger := nIdAplicacao;
          QRY_042.ParamByName('niduaoperador').asInteger := nIdUaOperador;
          QRY_042.ExecSQL;
        end;

      //se a aplica��o e de equivalencia
      if nIdOpa > 0 then
        begin
          QRY_053.Close;
          QRY_053.SQL.Clear;
          QRY_053.SQL.Text := 'select tbl_apa.*, tbl_u.cnomeusu from tbl_apa,tbl_u ' +
            'where nidtbl_opa = : nidtbl_opa and tbl_u.nidtbl_u = tbl_apa.nidtbl_u';
          QRY_053.ParamByName('nidtbl_opa').asInteger := nIdOpa;
          QRY_053.Open;
        end
      else
        begin

          //busca as a��es que o usuario n�o tem acesso
          QRY_053.ParamByName('nidtbl_ua').asInteger := nIdUa;
          QRY_053.ExecSQL;
        end;
    end;

  Caption := 'A��es da aplica��o - ' + cDescAplic;

  //alimenta o listview
  AlimentaLista;


  FRM_A012UTAU.OnShow := nil;
 {� atribuido ao OnShow do Form o valor nil para que o mesmo seja executado apenas uma vez}
 {pelo fato que se outra aplica��o for chamada pela tecla F3, e ao retornar da aplica��o que foi chamada pela tecla}
 {o evento OnShow deste form n�o acontecer�, ou seja n�o ser� executado, para permanecer o mesmo status da aplica��o}
 {quando o F3 foi chamado}

 if AcaoUsu <> nil then
   AcaoUsu^ := mrCancel;
end;

procedure TFRM_A012UTAU.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := oControlForms.Saidas(Self,[DTM_A012UTAU],NIL);
end;

procedure TFRM_A012UTAU.AlimentaLista;
  var
    Acao : TAcao;
begin
  with DTM_A012UTAU,LSTVIEW_ACOES do
    begin
      QRY_042.First;
      //la�o nas a��es da aplica��o
      while not(QRY_042.Eof) do
        begin
          //adiciona item no listview
          Items.Add;
          //coloca o nome da acao no item
          Items[Items.Count-1].Caption := QRY_042.FieldByName('cfuncao').asString;

          if AplicacaoChecked then
            begin
              //verifica qual � o acesso do usuario na acao
              if QRY_053.Locate('nidtbl_o',QRY_042.FieldByName('nidtbl_o').asInteger,[]) then
                begin
                  if QRY_053.FieldByName('npermiti').asInteger = 0 then
                    Items[Items.Count-1].SubItems.Add('N�o Permitido')
                  else
                    begin
                      Items[Items.Count-1].SubItems.Add('Permitido');
                      Items[Items.Count-1].Checked := true;
                    end;

                  Items[Items.Count-1].SubItems.Add(QRY_053.FieldByName('cnomeusu').asString);

                end;

              {  end
              else
                begin
                  Items[Items.Count-1].SubItems.Add('Permitido');
                  if not(QRY_042.FieldByName('cnomeunit').IsNull) then
                    Items[Items.Count-1].SubItems.Add(RetornaUsuAutorizouAplic(
                       QRY_042.FieldByName('cnomeunit').asString))
                  else
                    Items[Items.Count-1].SubItems.Add(cNmUsuAut);
                  Items[Items.Count-1].Checked := true;
                end;}

              //cria objeto acao
              Acao := TAcao.Create;
              //pega a id da acao
              Acao.nIdObjeto := QRY_042.FieldByName('nidtbl_o').asInteger;

              //verifica se a a��o chama uma aplica��o
              Acao.lAplicacao := not(QRY_042.FieldByName('cnomeunit').isNull);

              //verifica se o usuario pode alterar alguma acao
              if not(EnabledEdit) then
                Acao.lAlterar := false
              else
                //verifica se a a��o pode ser alterada
                if isAdmin then
                  //se for admin libera a altera��o
                  Acao.lAlterar := true
                else
                  //sen�o veirifica se o usuario restringiu/liberou � o operador
                  Acao.lAlterar := Items[Items.Count-1].SubItems.Strings[1] = cNomeUsuario;
            end
          else
            begin
              Items[Items.Count-1].SubItems.Add(' ');
              Items[Items.Count-1].SubItems.Add(' ');
              Acao := TAcao.Create;
            end;

           //associa o objeto acao ao item
          Items[Items.Count-1].SubItems.Objects[0] := Acao;

          QRY_042.Next;
        end;
    end;
end;

procedure TFRM_A012UTAU.LSTVIEW_ACOESDrawItem(Sender: TCustomListView;
  Item: TListItem; Rect: TRect; State: TOwnerDrawState);

 var
   Rct : TRect;
begin
  Sender.Canvas.FillRect(Rect);
    //se o item estiver seleciondo
    if odSelected in State then
    begin
      Sender.Canvas.Brush.Color := clNavy;
      Sender.Canvas.Font.Color := clWhite;
      Sender.Canvas.DrawFocusRect(Rect);
    end;

  Rect.Top := Rect.Top + 1;

  Rct := Rect;
  Rct.Left := Rct.Left + 25;

  Sender.Canvas.TextRect(Rct,Rct.Left,Rct.Top,Item.Caption);

  Rct := Rect;
  Rct.Left := Rct.Left + 260;

  Sender.Canvas.TextRect(Rct,Rct.Left,Rct.Top,Item.SubItems[0]);

  Rct := Rect;
  Rct.Left := Rct.Left + 360;

  Sender.Canvas.TextRect(Rct,Rct.Left,Rct.Top,Item.SubItems[1]);

  ImgList.Draw(Sender.Canvas,Rect.Left + 4,Rect.Top,0);

  //se o item estiver checado
  if Item.Checked then
    if TAcao(Item.SubItems.Objects[0]).lAlterar then
      ImgList.Draw(Sender.Canvas,Rect.Left + 4,Rect.Top,1)
    else
      ImgList.Draw(Sender.Canvas,Rect.Left + 4,Rect.Top,2);


end;

procedure TFRM_A012UTAU.LSTVIEW_ACOESMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin

  if BTN_GRAVAR.Enabled then
    ValidaClickListView(LSTVIEW_ACOES.Selected,true,tcDefault);

  {with LSTVIEW_ACOES do
    begin

      if Selected = nil then
        exit;
      //verifica se a a��o pode ser alterada
      if not(TAcao(Selected.SubItems.Objects[0]).lAlterar) then
        //se o usuario que restringiu for diferente do operador e o operador n�o
        //for um usuario admin
        if (Selected.SubItems[1] <> '') and (Selected.SubItems[1] <> cNomeUsuario) and (not(isAdmin))then
          begin
            MessageDlg('Voc� n�o pode alterar uma a��o que ' + #13 +
                        'n�o foi restringida/liberada por voc�!',mtInformation,[mbOk],0);
            exit;
          end;

      //troca o estado do item clicado
      Selected.Checked := not(LSTVIEW_ACOES.Selected.Checked);

      //se o item estiver cliclado
      if Selected.Checked then
        begin
          Selected.SubItems[0] := 'Permitido';
          //coloca a ac�o para estado de dele��o
          TAcao(Selected.SubItems.Objects[0]).Update := tpLibera;
          Selected.SubItems[1] := cNomeUsuario;
        end
      else
        begin
          Selected.SubItems[0] := 'N�o Permitido';
          //coloca a a��o para estado de inser��o
          TAcao(Selected.SubItems.Objects[0]).Update := tpRestringi;
          //coloca o nome do usuario que restringiu o acesso
          Selected.SubItems[1] := cNomeUsuario
        end;
    end;}
end;

procedure TFRM_A012UTAU.GravaPermissoesAcoes;
  var
    i : integer;
begin
  with LSTVIEW_ACOES,DTM_A012UTAU do
    begin
      //inicia a transa��o
      DMControle.Conexao.StartTransaction;
      try
        //loop nos itens do listview
        for i :=0 to Items.Count -1 do
          begin
            //se a acao estiver checada e estiver em estado de libera��o
            if (Items[i].Checked) and (TAcao(Items[i].SubItems.Objects[0]).Update = tpLibera) then
              begin
                //localiza a a��o
                if QRY_053.Locate('nidtbl_o',TAcao(Items[i].SubItems.Objects[0]).nIdObjeto,[]) then
                  //verifica se a a��o � bloqueada
                  if QRY_053.FieldByName('npermiti').asInteger = 0 then
                    begin
                      //altera o estado da a��o
                      QRY_053.Edit;
                      //libera a a��o para o usuario
                      QRY_053.FieldByName('npermiti').asInteger := 1;
                      //usuario que liberou o acesso
                      QRY_053.FieldByName('nidtbl_u').asInteger := nMatricula;
                      QRY_053.Post;

                      //localiza a a��o
                      QRY_042.Locate('nidtbl_o',TAcao(Items[i].SubItems.Objects[0]).nIdObjeto,[]);

                      //verifica se a a��o chama alguma aplica��o
                      VerficaBotoesChamamAplic(tpLibera,QRY_042.FieldByName('cnomeunit').asString);
                    end;
              end
            else
              //se a a��o n�o estiver checada e estiver em estado de restri��o
              if (not(Items[i].Checked)) and (TAcao(Items[i].SubItems.Objects[0]).Update = tpRestringi) then
                if QRY_053.Locate('nidtbl_o',TAcao(Items[i].SubItems.Objects[0]).nIdObjeto,[]) then
                  //se a a��o est� liberada
                  if QRY_053.FieldByName('npermiti').asInteger = 1 then
                    begin
                      //restringi a a��o para o usuario
                      QRY_RESTRINGIACAOUSU.ParamByName('nidaplicacao').asInteger := nIdAplicacao;
                      QRY_RESTRINGIACAOUSU.ParamByName('nidusuario').asInteger := nIdUsuario;
                      QRY_RESTRINGIACAOUSU.ParamByName('nidoperador').asInteger := nMatricula;
                      QRY_RESTRINGIACAOUSU.ParamByName('nidObjeto').asInteger := TAcao(Items[i].SubItems.Objects[0]).nIdObjeto;
                      QRY_042.Locate('nidtbl_o',TAcao(Items[i].SubItems.Objects[0]).nIdObjeto,[]);
                      QRY_RESTRINGIACAOUSU.ParamByName('cUnitBotaoChama').value :=
                      QRY_042.FieldByName('cnomeunit').value;
                      QRY_RESTRINGIACAOUSU.ParamByName('nidua').asInteger := nIdUa;
                      QRY_RESTRINGIACAOUSU.ExecSQL;
                    end;

          end;
        //grava efetivamente as informa��es no banco de dados
        DMControle.Conexao.Commit;
      except
        on E : Exception do
          begin
            //caso ocorra algum erro
            //desfaz as altera��es no banco de dados
            DMControle.Conexao.RollBack;
            //avisa ao usuario
            MessageDlg('N�o foi possivel efetuar a grava��o das informa��es.' + #13 +
                       'Esta opera��o ser� cancelada!' + #13 +
                       'Favor entrar em contato com o Administrador!' + #13 +
                       'Erro : ' + E.Message,mtError,[mbOk],0);
            close;
          end;
      end;
    end;
end;

procedure TFRM_A012UTAU.VerficaBotoesChamamAplic(Update : TtpPermissao; cUnit : String);
  var
    nIdAplic : Integer;
begin
  with DMControle, DTM_A012UTAU do
    begin
      if cUnit <> '' then
        begin
          //se estiver tanto acesso ao bot�o que chama a aplica��o,
          //� colocada a aplica��o no acesso do usuario
          if Update = tpLibera then
            begin
              //pega informa��es da aplica��o que � chamada pelo bot�o
              PrepareQryTemp('select tbl_a.nidtbl_a from tbl_a ' +
                             'where cnomeunit = ' + QuotedStr(cUnit));

              nIdAplic := QryTemp.FieldByName('nidtbl_a').asInteger;
              QryTemp.Close;
              QryTemp.SQL.Clear;

              //inseri a aplica��o no acesso do usuario
              QRY_INSERIAPLUSU.ParamByName('nidusuario').asInteger := nIdUsuario;
              QRY_INSERIAPLUSU.ParamByName('nidoperador').asInteger := nMatricula;
              QRY_INSERIAPLUSU.ParamByName('nidaplic').asInteger := nIdAplic;
              QRY_INSERIAPLUSU.ParamByName('cunit').asString := cUnit;
              QRY_INSERIAPLUSU.ParamByName('nidopa').asInteger := 0;
              QRY_INSERIAPLUSU.ExecSQL;

            end;
        end;
    end;


end;

procedure TFRM_A012UTAU.BTN_GRAVARClick(Sender: TObject);
begin
  //grava as altera��es nas a��es
  GravaPermissoesAcoes;
  if AcaoUsu <> nil then
    AcaoUsu^ := mrOk;
  Botoes(['BTN_GRAVAR','BTN_CANCELAR'],'FRM_A012UTAU',false);

end;

procedure TFRM_A012UTAU.BTN_SAIRClick(Sender: TObject);
begin
  close;
end;

procedure TFRM_A012UTAU.BTN_ALTERARClick(Sender: TObject);
begin
  Botoes(['BTN_GRAVAR','BTN_CANCELAR'],'FRM_A012UTAU',true);
end;

procedure TFRM_A012UTAU.BTN_CANCELARClick(Sender: TObject);
begin
  LimpaListView;
  AlimentaLista;
  Botoes(['BTN_GRAVAR','BTN_CANCELAR'],'FRM_A012UTAU',false);
end;

procedure TFRM_A012UTAU.LimpaListView;
  var
    i : integer;
begin
  //libera os objetos a��o da memoria
  for i := 0 to LSTVIEW_ACOES.Items.Count -1 do
    if LSTVIEW_ACOES.Items[i].SubItems.Objects[0] <> nil then
      LSTVIEW_ACOES.Items[i].SubItems.Objects[0].Free;
  //limpa o conteudo da lista
  LSTVIEW_ACOES.Items.Clear;
end;


procedure TFRM_A012UTAU.FormCreate(Sender: TObject);
begin
  AplicacaoChecked := true;
end;

procedure TFRM_A012UTAU.ChangeColor(Sender: TObject; MSG: Integer);
begin
    If Sender is TLMDStaticText Then
    begin
      If (Msg = CM_MOUSELEAVE) Then
        (Sender as TLMDStaticText).Font.Color:=clWindowText;
      If (Msg = CM_MOUSEENTER) Then
        (Sender as TLMDStaticText).Font.Color:=clBlue;
    end;
end;

procedure TFRM_A012UTAU.WndProc(var Msg: TMessage);
var I : Integer;
begin
   For I := 0 to ComponentCount -1 do
      If MSG.LParam = Longint(Components[I]) Then ChangeColor(Components[i],Msg.Msg);
   inherited WndProc(Msg);
end;

procedure TFRM_A012UTAU.ValidaClickListView(Item: TListItem; Msg: Boolean;
  Check: TtpCheck = tcDefault);
begin
  if Item = nil then
    exit;

  //verifica se a a��o pode ser alterada
  if not(TAcao(Item.SubItems.Objects[0]).lAlterar) then
    //se o usuario que restringiu for diferente do operador e o operador n�o
    //for um usuario admin
    if (Item.SubItems[1] <> '') and (Item.SubItems[1] <> cNomeUsuario) and (not(isAdmin))then
      begin
        //se for para mostrar a mensagem
        if Msg then
          MessageDlg('Voc� n�o pode alterar uma a��o que ' + #13 +
                      'n�o foi restringida/liberada por voc�!',mtInformation,[mbOk],0);
        exit;
      end;

  //troca o estado do item clicado
  if Check = tcTrue then
    Item.Checked := true
  else
    if Check = tcFalse then
      Item.Checked := false
    else
      Item.Checked := not(Item.Checked);

  //se o item estiver checado
  if Item.Checked then
    begin
      Item.SubItems[0] := 'Permitido';
      //coloca a ac�o para estado de libera��o
      TAcao(Item.SubItems.Objects[0]).Update := tpLibera;
      //usuario que liberou acesso
      Item.SubItems[1] := cNomeUsuario;
    end
  else
    begin
      Item.SubItems[0] := 'N�o Permitido';
      //coloca a a��o para estado de restri��o
      TAcao(Item.SubItems.Objects[0]).Update := tpRestringi;
      //usuario que restringiu o acesso
      Item.SubItems[1] := cNomeUsuario
    end;


end;

procedure TFRM_A012UTAU.LMDStaticText1Click(Sender: TObject);
  var
    i : integer;
begin
  if BTN_GRAVAR.Enabled then
    for i := 0 to LSTVIEW_ACOES.Items.Count - 1 do
      if not(LSTVIEW_ACOES.Items[i].Checked) then
        ValidaClickListView(LSTVIEW_ACOES.Items[i],false,tcTrue);
end;

procedure TFRM_A012UTAU.LMDStaticText2Click(Sender: TObject);
  var
    i : integer;
begin
  if BTN_GRAVAR.Enabled then
    for i := 0 to LSTVIEW_ACOES.Items.Count - 1 do
      if LSTVIEW_ACOES.Items[i].Checked then
        ValidaClickListView(LSTVIEW_ACOES.Items[i],false,tcFalse);
end;

end.
