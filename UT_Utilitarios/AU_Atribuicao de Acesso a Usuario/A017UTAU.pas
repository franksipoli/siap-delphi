{*******************************************************************************
 *                                                                             *
 *  Atribuição de Equivalencia                                                 *
 *  Aplicação que atribui os perfis criados                                    *
 *  pelo operador, como equivalencia para o usuario                            *
 *                                                                             *
 *  Data da Criação : 09/06/2004                                               *
 *  Programador Leandro Ribas                                                  *
 *  Data Finalização : 10/06/2004                                              *
 *                                                                             *
 *  Data da Ultima Atualização :                                               *
 *  Atualizado por:                                                            *
 *                                                                             *
 *******************************************************************************
}




unit A017UTAU;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ImgList, LMDCustomPanelFill, LMDStaticText, Grids, Buttons,
  ExtCtrls, LMDCustomControl, LMDCustomPanel, LMDCustomBevelPanel,
  LMDCustomParentPanel, LMDCustomGroupBox, LMDGroupBox,DB, UVariaveis,
  MemDS, DBAccess, Ora;

type
  TPerfil = class
    nIdPerfil : Integer;
    Checked : Boolean;
    OldChecked : Boolean;
    Update : TUpdateKind;
  end;

  TFRM_A017UTAU = class(TForm)
    Panel2: TPanel;
    BTN_SAIR: TSpeedButton;
    BTN_ALTERAR: TSpeedButton;
    BTN_GRAVAR: TSpeedButton;
    BTN_CANCELAR: TSpeedButton;
    LMDGroupBox1: TLMDGroupBox;
    STRGRD_PER: TStringGrid;
    LMDStaticText1: TLMDStaticText;
    LMDStaticText2: TLMDStaticText;
    ImgList: TImageList;
    QRY_REMOVEEQVUSU: TOraQuery;
    procedure FormShow(Sender: TObject);
    procedure BTN_SAIRClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure STRGRD_PERDrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure BTN_ALTERARClick(Sender: TObject);
    procedure BTN_GRAVARClick(Sender: TObject);
    procedure BTN_CANCELARClick(Sender: TObject);
    procedure STRGRD_PERMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure LMDStaticText1Click(Sender: TObject);
    procedure LMDStaticText2Click(Sender: TObject);
  private
    procedure ChangeColor(Sender: TObject; MSG: Integer);
    procedure WndProc(var Msg: TMessage);override;


    { Private declarations }
  public
    { Public declarations }
     nIdUsuario : Integer;//id usuario
     cNomeUsu : string;//nome do login do usuario
     nAcao : ^Integer;//indica se o operador alterou alguma informação

     //monta a stringgrid com os perfis do operador
     procedure AlimentaLista;
     //cancela as alterações no stringgrid
     procedure CancelaAlteracoes;
     //valida o click do operador
     procedure ValidaClickGrid(C, L: Integer; Check: TtpCheck = tpDefault);
     //atualiza o estado dos objetos perfil que estão ligados a stringgrid
     procedure AtualizaObjPer;
     //grava no banco de dados as alterações feita no stringgrid
     procedure GravaAlteracoes;
  end;

var
  FRM_A017UTAU: TFRM_A017UTAU;

implementation

uses D017UTAU, MPLCtrl, DMCTRL;

{$R *.DFM}

procedure TFRM_A017UTAU.FormShow(Sender: TObject);
begin
  //verifica o acesso do operador na aplicação
  if Acesso(nMatricula,'A017UTAU',DTM_A017UTAU) then
    Close;

  //busca quais os perfis que o usuario tem como equivalencia
  DTM_A017UTAU.QRY_059.ParamByName('nidtbl_u').asInteger := nIdUsuario;
  DTM_A017UTAU.QRY_059.ExecSQL;

  //busca os perfis criado pelo operador
  DTM_A017UTAU.QRY_058.ParamByName('nidtbl_u').asInteger := nMatricula;
  DTM_A017UTAU.QRY_058.ExecSQL;

  //se o operador não tiver nenhum perfil criado
  if DTM_A017UTAU.QRY_058.isEmpty then
    //desabilida todos os botões
    Botoes(['BTN_GRAVAR','BTN_CANCELAR','BTN_ALTERAR'],'FRM_A017UTAU',false)
  else
    //habilita alteração
    Botoes(['BTN_GRAVAR','BTN_CANCELAR'],'FRM_A017UTAU',false);

  //monta titulo da aplicação com o nome do usuario que esta sendo visto a equivalencia
  Caption := Caption + ' - ' + cNomeUsu;

  //monta o stringgrid com os perfis do operador
  //e marcar os perfis que são equivalencia do usuario
  AlimentaLista;

  //inicializa variavel de acão
  if nAcao <> nil then
    nAcao^ := mrCancel;

  FRM_A017UTAU.OnShow := nil;
 {é atribuido ao OnShow do Form o valor nil para que o mesmo seja executado apenas uma vez}
 {pelo fato que se outra aplicação for chamada pela tecla F3, e ao retornar da aplicação que foi chamada pela tecla}
 {o evento OnShow deste form não acontecerá, ou seja não será executado, para permanecer o mesmo status da aplicação}
 {quando o F3 foi chamado}

end;

procedure TFRM_A017UTAU.BTN_SAIRClick(Sender: TObject);
begin
  close;
end;

procedure TFRM_A017UTAU.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
    Action := oControlForms.Saidas(Self,[DTM_A017UTAU],nil);
end;


procedure TFRM_A017UTAU.AlimentaLista;
  var
    oPerfil : TPerfil;
begin
  with DTM_A017UTAU,STRGRD_PER do
    begin
      //titulo stringgrid
      Cells[0,0] := ' Perfis';

      //posiciona no primeiro perfil do operador
      QRY_058.First;

      //loop em todos perfis do operador
      while not(QRY_058.Eof) do
        begin

          if QRY_058.RecNo > 1 then
            //adiciona linha na string grid
            RowCount := RowCount + 1;

          //coloca o nome do perfil na string grid
          Cells[0,RowCount-1] := QRY_058.FieldByName('cnomeper').asString;

          //cria o objeto perfil
          oPerfil := TPerfil.Create;
          //pega a id do perfil
          oPerfil.nIdPerfil := QRY_058.FieldByName('nidtbl_op').asInteger;

          //verifica se o usuario usa o perfil como equivalencia
          if QRY_059.Locate('nidtbl_op',oPerfil.nIdPerfil,[]) then
            begin
              oPerfil.Checked := true;
              oPerfil.OldChecked := true;
            end;

          //associa o objeto usuario a linha do stringgrid
          Rows[RowCount-1].Objects[0] := oPerfil;
          //perfil do operador
          QRY_058.Next;
        end;
    end;
end;


procedure TFRM_A017UTAU.CancelaAlteracoes;
  var
    i : integer;
begin
   with STRGRD_PER do
     begin
       //loop nos objetos para retornar ao seu estado anterior
       for i:= 0 to RowCount - 1 do
         if Rows[i].Objects[0] <> nil then
           begin
             TPerfil(Rows[i].Objects[0]).Checked :=
             TPerfil(Rows[i].Objects[0]).OldChecked;
             TPerfil(Rows[i].Objects[0]).Update := ukModify;
           end;
       STRGRD_PER.Repaint;
     end;
end;


procedure TFRM_A017UTAU.ValidaClickGrid(C,L : Integer; Check : TtpCheck = tpDefault);
begin
  with STRGRD_PER do
    begin
      //se a linha/coluna estiver fora das coordenadas da stringgrid
      if (L < 0) or (L > RowCount - 1) then
        //sai da rotina
        exit;
      //se não houver objeto associado a linha
      if Rows[L].Objects[0] = nil then
        //sai da rotina
        exit;

      //se tiver que marcar true
      if Check = tpTrue then
        //marcar como checado
        TPerfil(Rows[L].Objects[0]).Checked := true
      else
        //se tiver que marcar false
        if Check = tpFalse then
          //desmarca o objeto
          TPerfil(Rows[L].Objects[0]).Checked := false
        else
          //pega o valo contrario do estado atual
          TPerfil(Rows[L].Objects[0]).Checked := not(TPerfil(Rows[L].Objects[0]).Checked);

      //se o perfil ficou marcado
      if TPerfil(Rows[L].Objects[0]).Checked then
        begin
          //se já não estava marcado
          if not(TPerfil(Rows[L].Objects[0]).OldChecked) then
            //coloca o perfil para ser inserido como equivalencia do usuario
            TPerfil(Rows[L].Objects[0]).Update := ukInsert;
        end
      else
        //se o usuario já estava marcado
        if TPerfil(Rows[L].Objects[0]).OldChecked then
          //coloca o perfil para ser retirado da equivalencia do usuario
          TPerfil(Rows[L].Objects[0]).Update := ukDelete;

    end;
end;


procedure TFRM_A017UTAU.AtualizaObjPer;
  var
    i : Integer ;
begin
  with STRGRD_PER do
    begin
      //loop nos objetos que estão associado a stringgrid
      for i:=0 to RowCount -1 do
        //se houver objeto na linha da stringgrid
        if Rows[i].Objects[0] <> nil then
          begin
            //retorna para seu valor anterior
            TPerfil(Rows[i].Objects[0]).OldChecked :=
            TPerfil(Rows[i].Objects[0]).Checked;
            TPerfil(Rows[i].Objects[0]).Update := ukModify;
          end;

    end;
end;



procedure TFRM_A017UTAU.STRGRD_PERDrawCell(Sender: TObject; ACol,
  ARow: Integer; Rect: TRect; State: TGridDrawState);
begin
  with STRGRD_PER do
    begin
      //se houver objeto na linha da string grid
      if Rows[ARow].Objects[0] <> nil then
        begin
          //limpa o espaco da celula
          Canvas.FillRect(Rect);
          //redesenha o conteudo da celula
          Canvas.TextRect(Rect,Rect.Left + 30, Rect.Top + 3, Cells[ACol,ARow]);
          //desenha caixa de check
          ImgList.Draw(Canvas,Rect.Left + 8, Rect.Top + 3,0);
          //se o perfil estiver selecionado
          if TPerfil(Rows[ARow].Objects[0]).Checked then
            //desenha check dentro da caixa
            ImgList.Draw(Canvas,Rect.Left + 8, Rect.Top + 3,2);
        end;
    end;
end;

procedure TFRM_A017UTAU.BTN_ALTERARClick(Sender: TObject);
begin
  //habilida gravaçao e cancelamento da operação
  Botoes(['BTN_GRAVAR','BTN_CANCELAR'],'FRM_A017UTAU',true);
end;

procedure TFRM_A017UTAU.BTN_GRAVARClick(Sender: TObject);
begin
   //pergunta ao usuario
  if MessageDlg('Deseja Salvar Alterações?',mtConfirmation,[mbYes,mbNo],0) = mrYes then
    begin
      //desabilida gravação e cancelamento
      Botoes(['BTN_GRAVAR','BTN_CANCELAR'],'FRM_A017UTAU',false);
      //grava as alterações no banco de dados
      GravaAlteracoes;
      //indica que o operador alterou alguma informação
      if nAcao <> nil then
        nAcao^ := mrOk;
    end;
end;

procedure TFRM_A017UTAU.BTN_CANCELARClick(Sender: TObject);
begin
   //cancela as alterações na lista de aplicações
  Botoes(['BTN_GRAVAR','BTN_CANCELAR'],'FRM_A017UTAU',false);
  //cancela as alterações feita na stringgrid
  CancelaAlteracoes;
end;

procedure TFRM_A017UTAU.STRGRD_PERMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
  var
    Coluna, Linha : Integer;
begin
  //se o operador clicou com o botão direito do mouse
  if Button = mbRight then
    begin
      //busca informações dos perfis do operador
      DTM_A017UTAU.QRY_058.ParamByName('nidtbl_u').AsInteger := nMatricula;
      DTM_A017UTAU.QRY_058.ExecSql;
      //chama pesquisa de grid
      if ChamaPesqGrid(DTM_A017UTAU.QRY_058,nil,'nidtbl_u','Nome Perfil') then
        //seleciona na grid o perfil localizado na pesquisa
        STRGRD_PER.Row := STRGRD_PER.Cols[0].IndexOf(DTM_A017UTAU.QRY_058.FieldByName('cnomeper').asString);
      exit;
    end;
  if BTN_GRAVAR.Enabled then
    begin
      //transforma coordenadas do mouse em linha e coluna do stringgrid
      STRGRD_PER.MouseToCell(X,Y,Coluna,Linha);
      //valida o click do usuario
      ValidaClickGrid(Coluna,Linha,tpDefault);
      //atualiza o grid
      STRGRD_PER.Repaint;
    end;
end;

procedure TFRM_A017UTAU.GravaAlteracoes;
  var
    i : integer;
begin
  with STRGRD_PER, DTM_A017UTAU do
    begin
      //inicia transação no banco
      DMControle.Conexao.StartTransaction;
      try
        //loop no string grid
        for i:=0 to RowCount -1 do
          begin
            //se não houver obejto perfil associado a linha do stringrid
            if Rows[i].Objects[0] = nil then
              //volta para o inicio do loop
              Continue;

            //se o perfil estiver checado e em estado de inserção
            if (TPerfil(Rows[i].Objects[0]).Checked) and
               (TPerfil(Rows[i].Objects[0]).Update = ukInsert) then
              begin
                //inclui o perfil como equivalencia do usuario
                DBGenerica(DTS_059,'Conexao',1,0,nil);
                QRY_059.FieldByName('nidtbl_eqv').asInteger := 0;
                QRY_059.FieldByName('nidtbl_u').asInteger := nIdUsuario;
                QRY_059.FieldByName('nidtbl_op').value := TPerfil(Rows[i].Objects[0]).nIdPerfil;
                QRY_059.FieldByName('nusuautor').asInteger := nMatricula;
                DBGenerica(DTS_059,'Conexao',4,1,nil);
              end
            else
              //se o perfil não estiver marcado e em estado de deleção
              if (not(TPerfil(Rows[i].Objects[0]).Checked)) and
                 (TPerfil(Rows[i].Objects[0]).Update = ukDelete) then
                begin
                  //retira o perfil da equivalencia do usuario
                  QRY_REMOVEEQVUSU.ParamByName('nidperfil').asInteger :=
                  TPerfil(Rows[i].Objects[0]).nIdPerfil;
                  QRY_REMOVEEQVUSU.ParamByName('nidusuario').asInteger := nIdUsuario;
                  QRY_REMOVEEQVUSU.ExecSQL;
                end;

          end;
        //grava as informações no banco de dados
        DMControle.Conexao.Commit;
        //atualiza o estado dos objetos perfil que estão associados a stringrid
        AtualizaObjPer;
      except
        {caso ocorra algum erro é avisado ao usuário e desfeitas as alterações
         aplicadas nesta transação, nas tabelas do bando de dados}
          on E : Exception do
            begin
              MessageDlg('Não foi possivel efetuar a gravação de todos os dados,'+#13+
                         'por isso está operação será cancelada para manter a integridade'+#13+
                         'dos seus dados!'+#13+'Erro: '+E.Message,mtError,[mbOk],0);
              //desfaz as alterações feitas nesta transação
              DMControle.Conexao.RollBack;
              //cancela as alterações do operador
              //nos compomente visuais
              Btn_CancelarClick(Btn_Cancelar);
            end;
      end;
    end;
end;

procedure TFRM_A017UTAU.ChangeColor(Sender: TObject; MSG: Integer);
begin
  If Sender is TLMDStaticText Then
  begin
    If (Msg = CM_MOUSELEAVE) Then
      (Sender as TLMDStaticText).Font.Color:=clWindowText;
    If (Msg = CM_MOUSEENTER) Then
      (Sender as TLMDStaticText).Font.Color:=clBlue;
  end;

end;

procedure TFRM_A017UTAU.WndProc(var Msg: TMessage);
var I : Integer;
begin
   For I := 0 to ComponentCount -1 do
      If MSG.LParam = Longint(Components[I]) Then ChangeColor(Components[i],Msg.Msg);
   inherited WndProc(Msg);
end;



procedure TFRM_A017UTAU.LMDStaticText1Click(Sender: TObject);
 var
     i : integer;
begin
  if BTN_GRAVAR.Enabled then
    begin
      //marca todos os itens da stringgrid como selecionado
      for i:=0 to STRGRD_PER.RowCount - 1 do
        ValidaClickGrid(0,i,tpTrue);
      STRGRD_PER.Repaint;
    end;

end;

procedure TFRM_A017UTAU.LMDStaticText2Click(Sender: TObject);
 var
     i : integer;
begin
  if BTN_GRAVAR.Enabled then
    begin
      //marca todos os itens da stringgrid como selecionado
      for i:=0 to STRGRD_PER.RowCount - 1 do
        ValidaClickGrid(0,i,tpFalse);
      STRGRD_PER.Repaint;
    end;

end;

end.
