{*******************************************************************************
 *                                                                             *
 *  Acesso as ações da aplicação do perfil do operador                         *
 *  Aplicação para controle de acesso as ações                                 *
 *  da aplicação do perfil                                                     *
 *                                                                             *
 *  Data da Criação : 04/06/2004                                               *
 *  Programador Leandro Ribas                                                  *
 *  Data Finalização : 08/06/2004                                              *
 *                                                                             *
 *  Data da Ultima Atualização :                                               *
 *  Atualizado por:                                                            *
 *  Motivo da Atualização :                                                    *
 *                                                                             *
 *                                                                             *
 *******************************************************************************
}



unit A015UTAU;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ImgList, Buttons, ExtCtrls, ComCtrls, RzListVw, LMDCustomControl,
  LMDCustomPanel, LMDCustomBevelPanel, LMDCustomParentPanel,
  LMDCustomGroupBox, LMDGroupBox, Db, MemDS, DBAccess, Ora,
  LMDCustomPanelFill, LMDStaticText;

type
  //tipo que indica o que deve se fazer com a ação
  TtpPermissao = (tpDefault,tpLibera,tpRestringi);

  //objeto ação
  TAcao = class
    nIdAcao : Integer;
    Update  : TtpPermissao;
    OldChecked : Boolean;
  end;

  TtpCheck = (tcTrue,tcFalse,tcDefault);

  TFRM_A015UTAU = class(TForm)
    GRB_ENDEREC: TLMDGroupBox;
    LSTVIEW_ACOES: TRzListView;
    Panel2: TPanel;
    BTN_SAIR: TSpeedButton;
    BTN_ALTERAR: TSpeedButton;
    BTN_GRAVAR: TSpeedButton;
    BTN_CANCELAR: TSpeedButton;
    ImgList: TImageList;
    QRY_INSERIAPLICPERFIL: TOraQuery;
    QRY_RESTRIACAO: TOraQuery;
    LMDStaticText1: TLMDStaticText;
    LMDStaticText2: TLMDStaticText;
    procedure LSTVIEW_ACOESDrawItem(Sender: TCustomListView;
      Item: TListItem; Rect: TRect; State: TOwnerDrawState);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BTN_SAIRClick(Sender: TObject);
    procedure BTN_ALTERARClick(Sender: TObject);
    procedure BTN_GRAVARClick(Sender: TObject);
    procedure BTN_CANCELARClick(Sender: TObject);
    procedure LSTVIEW_ACOESMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure LMDStaticText1Click(Sender: TObject);
    procedure LMDStaticText2Click(Sender: TObject);
  private
    procedure ChangeColor(Sender: TObject; MSG: Integer);
    procedure WndProc(var Msg: TMessage);override;
    { Private declarations }
  public
    { Public declarations }

    nIdAplicacao : Integer;//id da aplicação
    nIdUa : Integer;//id da aplicação no acesso do operador
    nIdOpa : Integer;//id da aplicação no perfil
    AplicCheck : Boolean;//indica se a aplicação esta checada
    nIdOpPerfil : Integer; //perfil que a aplicação pertence
    nIdEqv : Integer; //indica se a aplicacao e de equivalencia
    AcaoUsu : ^Integer;//indica se o operador gravou as alterações
    cNomeAplic : String;//nome da aplicação que é dona das ações

    //monta a lista de ações
    procedure AlimentaLisView;

    //valida click na lista
    procedure ValidaClickList(Item : TListItem; Check : TtpCheck = tcDefault);

    //cancela as alterações na lista
    procedure CancelaAlteracoes;

    //grava as alterações na lista
    procedure GravaAlteracoes;

    //verifica se a aplicação do usuario e recebida de uma equivalencia
    function VerificaAplicEqv(Aplic : Integer; IdUsuario : Integer) : Integer;
  end;

var
  FRM_A015UTAU: TFRM_A015UTAU;

implementation

uses D015UTAU, UVariaveis, MPLCtrl, CtrlForms, DMCTRL;

{$R *.DFM}

{ TFRM_A015UTAU }

procedure TFRM_A015UTAU.AlimentaLisView;
var
  Acao : TAcao;
begin
  with LSTVIEW_ACOES, DTM_A015UTAU do
    begin
      //posiciona no primeiro registro das ações da aplicação
      QRY_042.First;
      //loop nas ações da aplicação
      while not(QRY_042.Eof) do
        begin
          //adiciona item na lista
          Items.Add;
          //coloca a descrição da ação na lista
          Items[Items.Count - 1].Caption := QRY_042.FieldByName('cfuncao').asString;
          //adiciona um subitem
          Items[Items.Count - 1].SubItems.Add('');

          //cria o objeto ação
          Acao := TAcao.Create;
          //localiza a ação nas açãoes da aplicação do perfil
          if QRY_060.Locate('nidtbl_o',QRY_042.FieldByName('nidtbl_o').asInteger,[]) then
            begin
              //pega id da ação
              Acao.nIdAcao := QRY_060.FieldByName('nidtbl_apa').asInteger;
              //se a ação e permitida no perfil
              if QRY_060.FieldByName('npermiti').asInteger = 1 then
                begin
                  //marca a ação como checada
                  Items[Items.Count - 1].Checked := true;
                  //atualiza o valor antigo
                  Acao.OldChecked := true;
                end;
            end;
          //associa o objeto ação ao item da lista
          Items[Items.Count - 1].SubItems.Objects[0] := Acao;

          //proxima ação
          QRY_042.Next;
        end;
    end;
end;

procedure TFRM_A015UTAU.LSTVIEW_ACOESDrawItem(Sender: TCustomListView;
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

  {Rct := Rect;
  Rct.Left := Rct.Left + 260;

  Sender.Canvas.TextRect(Rct,Rct.Left,Rct.Top,Item.SubItems[0]);

  Rct := Rect;
  Rct.Left := Rct.Left + 360;

  Sender.Canvas.TextRect(Rct,Rct.Left,Rct.Top,Item.SubItems[1]);}

  ImgList.Draw(Sender.Canvas,Rect.Left + 4,Rect.Top,0);

  //se o item estiver checado
  if Item.Checked then
    ImgList.Draw(Sender.Canvas,Rect.Left + 4,Rect.Top,1)
 // else
//      ImgList.Draw(Sender.Canvas,Rect.Left + 4,Rect.Top,2);


end;

procedure TFRM_A015UTAU.FormShow(Sender: TObject);
begin
  if Acesso(nMatricula,'A015UTAU',DTM_A015UTAU) then
    Close;

  //se a aplicação dona da ação estiver checada
  if AplicCheck then
    //habilida botõe
    Botoes(['Btn_Cancelar','Btn_Gravar'],'FRM_A015UTAU',False)
  else
    //desabilida botões
    Botoes(['Btn_Alterar','Btn_Cancelar','Btn_Gravar'],'FRM_A015UTAU',False);

 with DTM_A015UTAU do
   begin
     //se a aplicacao do perfil do usuario, é de uma equivalencia
     if nIdEqv > 0 then
       begin
         QRY_042.Close;
         QRY_042.SQL.Text := 'select tbl_ao.nidtbl_ao, tbl_ao.nidtbl_o, ' +
            'InitCap(tbl_ao.cfuncao) as cfuncao, tbl_o.cnomeunit ' +
            'from tbl_ao, tbl_o ' +
            'where tbl_ao.nidtbl_a = :nidtbl_a and ' +
            'tbl_ao.nidtbl_o = tbl_o.nidtbl_o and ' +
            'tbl_ao.cfuncao <> ' + QuotedStr('SAIR') + ' and ' +
            'tbl_o.cnomecla in (' + QuotedStr('TSPEEDBUTTON') + ',' + QuotedStr('TBITBTN')+') ' +
            ' and tbl_o.nidtbl_o not in(select tbl_apa.nidtbl_o ' +
                                  'from tbl_apa where nidtbl_opa = :nidopa and ' +
                                  ' npermiti = 0)';

         QRY_042.ParamByName('nidtbl_a').asInteger := nIdAplicacao;
         QRY_042.ParamByName('nidopa').asInteger := nIdEqv;
         QRY_042.ExecSql;
       end
     else
       begin
         QRY_042.ParamByName('nidtbl_a').asInteger := nIdAplicacao;
         QRY_042.ParamByName('nidua').asInteger := nIdUa;
         QRY_042.ExecSql;
       end;

     QRY_060.ParamByName('nidtbl_opa').asInteger := nIdOpa;
     QRY_060.ExecSql;
   end;

 Caption := '  Ações da aplicação - ' + Trim(cNomeAplic);

 //monta o a lista
 AlimentaLisView;

 if AcaoUsu <> nil then
   AcaoUsu^ := mrCancel;

 FRM_A015UTAU.OnShow := nil;
 {é atribuido ao OnShow do Form o valor nil para que o mesmo seja executado apenas uma vez}
 {pelo fato que se outra aplicação for chamada pela tecla F3, e ao retornar da aplicação que foi chamada pela tecla}
 {o evento OnShow deste form não acontecerá, ou seja não será executado, para permanecer o mesmo status da aplicação}
 {quando o F3 foi chamado}
end;

procedure TFRM_A015UTAU.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
    Action := oControlForms.Saidas(Self,[DTM_A015UTAU],nil);
end;

procedure TFRM_A015UTAU.BTN_SAIRClick(Sender: TObject);
begin
  close;
end;

procedure TFRM_A015UTAU.BTN_ALTERARClick(Sender: TObject);
begin
  //habilida os botões de gravação e cancelamento
  Botoes(['BTN_GRAVAR','BTN_CANCELAR'],'FRM_A015UTAU',true);
end;

procedure TFRM_A015UTAU.BTN_GRAVARClick(Sender: TObject);
begin
  //grava as alteração feita na lista
  GravaAlteracoes;
  //indica que o operação alterou
  if AcaoUsu <> nil then
    AcaoUsu^:= mrOk;
  //desabilida gravacao e cancelamento
  Botoes(['BTN_GRAVAR','BTN_CANCELAR'],'FRM_A015UTAU',false);

end;

procedure TFRM_A015UTAU.BTN_CANCELARClick(Sender: TObject);
begin
  //cancela as alterações feita na lista
  CancelaAlteracoes;
  //desabilida gravação e cancelamento
  Botoes(['BTN_GRAVAR','BTN_CANCELAR'],'FRM_A015UTAU',false);

end;

procedure TFRM_A015UTAU.ValidaClickList(Item: TListItem; Check: TtpCheck);
begin
  //se não houver item no parametro
  if Item = nil then
    exit;

  if Check = tcTrue then
    //item checado
    Item.Checked := True
  else
    if Check = tcFalse then
      //item não selecionado
      Item.Checked := false
    else
      //valor contrario do proprio item
      Item.Checked := not(Item.Checked);

  //se o item estiver checado
  if Item.Checked then
    //coloca em estado de liberação
    TAcao(Item.SubItems.Objects[0]).Update := tpLibera
  else
    //coloca em estado de restrição
    TAcao(Item.SubItems.Objects[0]).Update := tpRestringi;

end;

procedure TFRM_A015UTAU.LSTVIEW_ACOESMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  if BTN_GRAVAR.Enabled then
    ValidaClickList(LSTVIEW_ACOES.Selected,tcDefault);
end;

procedure TFRM_A015UTAU.CancelaAlteracoes;
  var
    i : integer;
begin
  with LSTVIEW_ACOES do
    begin
      for i := 0 to Items.Count - 1 do
        Items[i].Checked :=
        TAcao(Items[i].SubItems.Objects[0]).OldChecked;
      LSTVIEW_ACOES.Repaint;
    end;
end;

procedure TFRM_A015UTAU.GravaAlteracoes;
  var
    i : integer;
    nIdApl : Integer;
begin
  with LSTVIEW_ACOES,DTM_A015UTAU do
    begin
      DMControle.Conexao.StartTransaction;
      try
        //loop nos itens da lista
        for i :=0 to Items.Count -1 do
          //se a a acao estiver checada e em estado de liberacao
          if (Items[i].Checked) and
             (TAcao(Items[i].SubItems.Objects[0]).Update = tpLibera) then
            begin
              //localica a acao da aplicacao
              QRY_060.Locate('nidtbl_apa',TAcao(Items[i].SubItems.Objects[0]).nIdAcao,[]);
              //se a acao e retrita
              if QRY_060.FieldByName('npermiti').AsInteger = 0 then
                begin
                  //libera a acao
                  QRY_060.Edit;
                  QRY_060.FieldByName('npermiti').AsInteger := 1;
                  QRY_060.Post;

                  //localiza a acao
                  QRY_042.Locate('nidtbl_o',QRY_060.FieldByName('nidtbl_o').asInteger,[]);

                  //se a acao chama uma aplicacao
                  if not(QRY_042.FieldByName('cnomeunit').IsNull) then
                    begin
                      //busca a id da aplicacao
                      PrepareQryTemp('select nidtbl_a from tbl_a where cnomeunit = ' +
                                     QuotedStr(QRY_042.FieldByName('cnomeunit').asString));
                      nIdApl := DMControle.QryTemp.FieldByName('nidtbl_a').asInteger;
                      DMControle.QryTemp.Close;
                      DMControle.QryTemp.SQL.Clear;

                      //inseri a aplicacao que a acao chama no perfil
                      QRY_INSERIAPLICPERFIL.ParamByName('nidusuario').asInteger := nMatricula;
                      QRY_INSERIAPLICPERFIL.ParamByName('nidopperfil').asInteger := nIdOpPerfil;
                      QRY_INSERIAPLICPERFIL.ParamByName('nidaplic').asInteger := nIdApl;
                      QRY_INSERIAPLICPERFIL.ParamByName('napliceqv').asInteger := VerificaAplicEqv(nIdApl,nMatricula);
                      QRY_INSERIAPLICPERFIL.ExecSQL;

                    end;

                end;
            end
          else
            //se não estiver checado e estiver em estado de restricao
            if (not(Items[i].Checked)) and (TAcao(Items[i].SubItems.Objects[0]).Update = tpRestringi) then
              begin

                QRY_060.Locate('nidtbl_apa',TAcao(Items[i].SubItems.Objects[0]).nIdAcao,[]);
                QRY_042.Locate('nidtbl_o',QRY_060.FieldByName('nidtbl_o').asInteger,[]);

                //busca a id da aplicacao
                PrepareQryTemp('select nidtbl_a from tbl_a where cnomeunit = ' +
                               QuotedStr(QRY_042.FieldByName('cnomeunit').asString));
                nIdApl := DMControle.QryTemp.FieldByName('nidtbl_a').asInteger;
                DMControle.QryTemp.Close;
                DMControle.QryTemp.SQL.Clear;

                QRY_RESTRIACAO.ParamByName('nidperfil').asInteger := nIdOpPerfil;
                QRY_RESTRIACAO.ParamByName('nidopa').asInteger := nIdOpa;
                QRY_RESTRIACAO.ParamByName('nidaplicacao').asInteger := nIdAplicacao;
                QRY_RESTRIACAO.ParamByName('nidApa').asInteger := TAcao(Items[i].SubItems.Objects[0]).nIdAcao;
                QRY_RESTRIACAO.ParamByName('nidAplacao').asInteger := nIdApl;
                QRY_RESTRIACAO.ParamByName('nidobj').asInteger := QRY_060.FieldByName('nidtbl_o').asInteger;

                QRY_RESTRIACAO.ExecSQL;

              end;
        DMControle.Conexao.Commit;

        //coloca os objetos em estado atual
        for i :=0 to Items.Count -1 do
          begin
            TAcao(Items[i].SubItems.Objects[0]).OldChecked :=
            Items[i].Checked;
            TAcao(Items[i].SubItems.Objects[0]).Update := tpDefault;
          end

      except
        //caso ocorra algum erro avisa ao usuario e desfaz qualquer
        //alteração no banco de dados
        on E : Exception do
          begin
            MessageDlg('Não foi possivel efetuar a gravação de todos os dados,'+#13+
                       'por isso está operação será cancelada para manter a integridade'+#13+
                       'dos seus dados!'+#13+'Erro: '+E.Message,mtError,[mbOk],0);
            DMControle.Conexao.RollBack;
            Btn_CancelarClick(Btn_Cancelar);
          end;
      end;
    end;
end;

function TFRM_A015UTAU.VerificaAplicEqv(Aplic,
  IdUsuario: Integer): Integer;
  var
    nRegs : Integer;
begin
  Result := 0;
  with DMControle do
    begin
      //verifica se a aplicação esta no acesso do usuario
      PrepareQryTemp('select tbl_ua.nidtbl_ua from tbl_ua where nidtbl_u = ' +
           IntToStr(IdUsuario) + ' and nidtbl_a = ' + IntToStr(Aplic));
      nRegs := QryTemp.RecordCount;
      QryTemp.Close;
      QryTemp.SQL.Clear;
      //se a aplicacao não estiver no acesso do usuario
      if nRegs = 0 then
        begin
          //busca a aplicacao nas equivalencias que o usuario possue
          PrepareQryTemp('select tbl_opa.nidtbl_opa ' +
                         'from ' +
                         'tbl_opa,tbl_op,tbl_eqv ' +
                         'where ' +
                         'tbl_eqv.nidtbl_u = ' + IntToStr(IdUsuario) + ' and ' +
                         'tbl_op.nidtbl_op = tbl_eqv.nidtbl_op and ' +
                         'tbl_opa.nidtbl_op = tbl_op.nidtbl_op and ' +
                         'tbl_opa.nidtbl_a = ' + IntToStr(Aplic));
          //pega a id da aplicacao no perfil de equivalencia
          Result := QryTemp.FieldByName('nidtbl_opa').asInteger;
          QryTemp.Close;
          QryTemp.SQL.Clear;
        end;
    end;
end;

procedure TFRM_A015UTAU.ChangeColor(Sender: TObject; MSG: Integer);
begin
  If Sender is TLMDStaticText Then
  begin
    If (Msg = CM_MOUSELEAVE) Then
      (Sender as TLMDStaticText).Font.Color:=clWindowText;
    If (Msg = CM_MOUSEENTER) Then
      (Sender as TLMDStaticText).Font.Color:=clBlue;
  end;

end;

procedure TFRM_A015UTAU.WndProc(var Msg: TMessage);
var I : Integer;
begin
   For I := 0 to ComponentCount -1 do
      If MSG.LParam = Longint(Components[I]) Then ChangeColor(Components[i],Msg.Msg);
   inherited WndProc(Msg);
end;



procedure TFRM_A015UTAU.LMDStaticText1Click(Sender: TObject);
  var
    i : integer;
begin
  if BTN_GRAVAR.Enabled then
    for i:=0 to LSTVIEW_ACOES.Items.Count - 1 do
      ValidaClickList(LSTVIEW_ACOES.Items[i],tcTrue);
end;

procedure TFRM_A015UTAU.LMDStaticText2Click(Sender: TObject);
  var
    i : integer;
begin
  if BTN_GRAVAR.Enabled then
    for i:=0 to LSTVIEW_ACOES.Items.Count - 1 do
      ValidaClickList(LSTVIEW_ACOES.Items[i],tcTrue);
end;

end.
