{*******************************************************************************
 *                                                                             *
 *  Atribuição de Equivalencia                                                 *
 *  Aplicação mostra os usuario que usam o perfil como                         *
 *  equivalencia e tambem atribui o perfil como equivalencia.                  *
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


unit A014UTAU;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, DBGrids, LMDCustomControl, LMDCustomPanel, LMDCustomBevelPanel,
  LMDCustomParentPanel, LMDCustomGroupBox, LMDGroupBox, LMDCustomPanelFill,
  LMDStaticText, Buttons, ExtCtrls, RxLookup, ImgList, DB, UVariaveis,
  MemDS, DBAccess, Ora ;

type
  
  TFRM_A014UTAU = class(TForm)
    LMDGroupBox3: TLMDGroupBox;
    DLC_CNOMEPER: TRxDBLookupCombo;
    Panel2: TPanel;
    BTN_SAIR: TSpeedButton;
    BTN_ALTERAR: TSpeedButton;
    BTN_GRAVAR: TSpeedButton;
    BTN_CANCELAR: TSpeedButton;
    LMDGroupBox1: TLMDGroupBox;
    STRGRD_USU: TStringGrid;
    LMDStaticText1: TLMDStaticText;
    LMDStaticText2: TLMDStaticText;
    ImgList: TImageList;
    QRY_REMOVEEQVUSU: TOraQuery;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure STRGRD_USUDrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure BTN_ALTERARClick(Sender: TObject);
    procedure BTN_GRAVARClick(Sender: TObject);
    procedure BTN_CANCELARClick(Sender: TObject);
    procedure STRGRD_USUMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure BTN_SAIRClick(Sender: TObject);
    procedure DLC_CNOMEPERCloseUp(Sender: TObject);
    procedure LMDStaticText1Click(Sender: TObject);
    procedure LMDStaticText2Click(Sender: TObject);
  private
    procedure ChangeColor(Sender: TObject; MSG: Integer);
    procedure WndProc(var Msg: TMessage);override;

    { Private declarations }
  public
    { Public declarations }
    nIdPerfil : Integer;
    //monta stringgrid
    procedure AlimentaLista;
    //cancela as alterações no stringgrid
    procedure CancelaAlteracoes;
    //valida o click do usuario na lista
    procedure ValidaClickGrid(C,L : Integer; Check : TtpCheck = tpDefault);
    //atualiza as informações da lista
    procedure AtualizaLista;
    //grava no banco de dados as alterações feitas na lista
    procedure GravaAlteracoes;
    //atualiza o estado do objeto Usuario
    procedure AtualizaObjUsu;
  end;

var
  FRM_A014UTAU: TFRM_A014UTAU;

implementation

uses MPLCtrl, CtrlForms, D014UTAU, DMCTRL;

{$R *.DFM}

procedure TFRM_A014UTAU.FormShow(Sender: TObject);
begin
  if Acesso(nMatricula,'A014UTAU',DTM_A014UTAU) then
    Close;



  with DTM_A014UTAU do
    begin
      //busca os perfil do operador
      QRY_058.ParamByName('nidtbl_u').asInteger := nMatricula;
      QRY_058.ExecSQL;

      //busca os usuarios que usam o perfil como equivalencia
      QRY_059.ParamByName('nidtbl_op').asInteger := nIdPerfil;
      QRY_059.ExecSQL;

      //busca os usuarios que são controlados pelo operador
      QRY_051.ParamByName('noperador').asInteger := nMatricula;
      QRY_051.ExecSql;

      if QRY_051.isEmpty then
        Botoes(['BTN_GRAVAR','BTN_CANCELAR','BTN_ALTERAR'],'FRM_A014UTAU',false)
      else
        Botoes(['BTN_GRAVAR','BTN_CANCELAR'],'FRM_A014UTAU',false);

    end;



  //atualiza o combo
  DLC_CNOMEPER.KeyValue := nIdPerfil;

  Caption := Caption + ' ' + cNomeUsuario;

  //monta stringgrid
  AlimentaLista;

  FRM_A014UTAU.OnShow := nil;
 {é atribuido ao OnShow do Form o valor nil para que o mesmo seja executado apenas uma vez}
 {pelo fato que se outra aplicação for chamada pela tecla F3, e ao retornar da aplicação que foi chamada pela tecla}
 {o evento OnShow deste form não acontecerá, ou seja não será executado, para permanecer o mesmo status da aplicação}
 {quando o F3 foi chamado}

end;

procedure TFRM_A014UTAU.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
    Action := oControlForms.Saidas(Self,[DTM_A014UTAU],nil);
end;

procedure TFRM_A014UTAU.AlimentaLista;
 var
   oUsuario : TUsuario;
begin
  with DTM_A014UTAU,STRGRD_USU do
    begin
      Cells[0,0] := ' Usuários';

      QRY_051.First;
      //loop nos usuarios que são controlados pelo operador
      while not(QRY_051.Eof) do
        begin

          if QRY_051.RecNo > 1 then
            RowCount := RowCount + 1;

          //coloca o login do usuario no stringgrid
          Cells[0,RowCount-1] := QRY_051.FieldByName('cnomeusu').asString;

          //cria o objeto usuario
          oUsuario := TUsuario.Create;
          oUsuario.IdUsuario := QRY_051.FieldByName('nidtbl_u').asInteger;

          //verifica se o usuario e respnsabilidade do operador
          if QRY_059.Locate('nidtbl_u',oUsuario.IdUsuario,[]) then
            begin
              oUsuario.Checked := true;
              oUsuario.OldChecked := true;
            end;

          //associa o objeto usuario a linha do stringgrid
          Rows[RowCount-1].Objects[0] := oUsuario;
          //proximo usuario do sistema
          QRY_051.Next;
        end;
    end;
end;

procedure TFRM_A014UTAU.STRGRD_USUDrawCell(Sender: TObject; ACol,
  ARow: Integer; Rect: TRect; State: TGridDrawState);
begin
  with STRGRD_USU do
    begin
      if Rows[ARow].Objects[0] <> nil then
        begin
          Canvas.FillRect(Rect);
          Canvas.TextRect(Rect,Rect.Left + 30,Rect.top + 3,Cells[Acol,ARow]);
          ImgList.Draw(Canvas,Rect.Left + 8, Rect.Top + 3,0);
          //se o usuario estiver checado, desenha check no string grid
          if TUsuario(Rows[ARow].Objects[0]).Checked then
            ImgList.Draw(Canvas,Rect.Left + 8, Rect.Top + 3,2);
        end;
    end;
end;

procedure TFRM_A014UTAU.BTN_ALTERARClick(Sender: TObject);
begin
  //habilida gravaçao e cancelamento da operação
  Botoes(['BTN_GRAVAR','BTN_CANCELAR'],'FRM_A014UTAU',true);
  DLC_CNOMEPER.Enabled := false;
end;

procedure TFRM_A014UTAU.BTN_GRAVARClick(Sender: TObject);
begin
  if MessageDlg('Deseja Salvar Alterações?',mtConfirmation,[mbYes,mbNo],0) = mrYes then
    begin
      //desabilida gravação e cancelamento
      Botoes(['BTN_GRAVAR','BTN_CANCELAR'],'FRM_A014UTAU',false);
      //grava as alterações no banco de dados
      GravaAlteracoes;
      //habilita a troca de nome de perfil
      DLC_CNOMEPER.Enabled := true;
    end;
end;

procedure TFRM_A014UTAU.BTN_CANCELARClick(Sender: TObject);
begin
   //cancela as alterações na lista de aplicações
  Botoes(['BTN_GRAVAR','BTN_CANCELAR'],'FRM_A014UTAU',false);
  CancelaAlteracoes;
  DLC_CNOMEPER.Enabled := true;
end;

procedure TFRM_A014UTAU.CancelaAlteracoes;
  var
    i : integer;
begin
   with STRGRD_USU do
     begin
       //loop nos objetos para retornar ao seu estado anterior
       for i:= 0 to RowCount - 1 do
         if Rows[i].Objects[0] <> nil then
           begin
             TUsuario(Rows[i].Objects[0]).Checked :=
             TUsuario(Rows[i].Objects[0]).OldChecked;
             TUsuario(Rows[i].Objects[0]).Update := ukModify;
           end;
       STRGRD_USU.Repaint;
     end;
end;
procedure TFRM_A014UTAU.ValidaClickGrid(C,L : Integer; Check : TtpCheck = tpDefault);
begin
  with STRGRD_USU do
    begin
      if (L < 0) or (L > RowCount - 1) then
        exit;
      if Rows[L].Objects[0] = nil then
        exit;

      if Check = tpTrue then
        TUsuario(Rows[L].Objects[0]).Checked := true
      else
        if Check = tpFalse then
          TUsuario(Rows[L].Objects[0]).Checked := false
        else
          TUsuario(Rows[L].Objects[0]).Checked := not(TUsuario(Rows[L].Objects[0]).Checked);

      //se o usuario ficou marcado
      if TUsuario(Rows[L].Objects[0]).Checked then
        begin
          //se já não estava marcado
          if not(TUsuario(Rows[L].Objects[0]).OldChecked) then
            //coloca o usuario em estado de insercao
            TUsuario(Rows[L].Objects[0]).Update := ukInsert;
        end
      else
        //se o usuario já estava marcado
        if TUsuario(Rows[L].Objects[0]).OldChecked then
          //coloca o usuario em estado de deleçaõ
          TUsuario(Rows[L].Objects[0]).Update := ukDelete;

    end;
end;

procedure TFRM_A014UTAU.STRGRD_USUMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
  var
    Coluna,Linha : Integer;
begin
  if Button = mbRight then
    begin
      DTM_A014UTAU.QRY_051.ParamByName('noperador').AsInteger := nMatricula;
      DTM_A014UTAU.QRY_051.ExecSql;
      if ChamaPesqGrid(DTM_A014UTAU.QRY_051,nil,'cnomeusu','Nome usuário') then
        //seleciona na grid o usuario localizado na pesquisa
        STRGRD_USU.Row := STRGRD_USU.Cols[0].IndexOf(DTM_A014UTAU.QRY_051.FieldByName('cnomeusu').asString);
      exit;
    end;
  if BTN_GRAVAR.Enabled then
    begin
      //pega coluna e linha atual do grid
      STRGRD_USU.MouseToCell(X,Y,Coluna,Linha);
      //valida o click do usuario
      ValidaClickGrid(Coluna,Linha,tpDefault);
      //atualiza o grid
      STRGRD_USU.Repaint;
    end;
end;

procedure TFRM_A014UTAU.BTN_SAIRClick(Sender: TObject);
begin
  close;
end;

procedure TFRM_A014UTAU.AtualizaLista;
  var
    i : integer;
begin
    with STRGRD_USU,DTM_A014UTAU do
    begin
      //busca os usuarios que usam o perfil como equivalencia
      QRY_059.ParamByName('nidtbl_op').value :=
      DLC_CNOMEPER.KeyValue;
      QRY_059.ExecSql;

      for i:=0 to RowCount - 1 do
        if TUsuario(Rows[i].Objects[0]) <> nil then
          begin
            TUsuario(Rows[i].Objects[0]).Update := ukModify;
            //se o usuario usa o perfil como equivalencia
            if QRY_059.Locate('nidtbl_u',TUsuario(Rows[i].Objects[0]).IdUsuario,[]) then
              //marca o usuario
              TUsuario(Rows[i].Objects[0]).Checked := true
            else
              TUsuario(Rows[i].Objects[0]).Checked := false;
             //atualiza estado anterior
            TUsuario(Rows[i].Objects[0]).OldChecked :=
            TUsuario(Rows[i].Objects[0]).Checked;
          end;
      STRGRD_USU.Repaint;
    end;
end;

procedure TFRM_A014UTAU.DLC_CNOMEPERCloseUp(Sender: TObject);
begin
  //atualiza a lista para o novo perfil escolhido
  AtualizaLista;
end;

procedure TFRM_A014UTAU.GravaAlteracoes;
  var
    i : integer;
begin
  with STRGRD_USU,DTM_A014UTAU do
    begin
      DMControle.Conexao.StartTransaction;
      try
        //loop no string grid
        for i:=0 to RowCount - 1 do
          begin
            if Rows[i].Objects[0] = nil then
              continue;
            //se o usuario estiver marcado e estiver em estado de inserção
            if (TUsuario(Rows[i].Objects[0]).Checked) and
               (TUsuario(Rows[i].Objects[0]).Update = ukInsert) then
              begin
                //inclui equivalencia para o usuario
                DBGenerica(DTS_059,'Conexao',1,0,nil);
                QRY_059.FieldByName('nidtbl_eqv').asInteger := 0;
                QRY_059.FieldByName('nidtbl_u').asInteger :=
                TUsuario(Rows[i].Objects[0]).IdUsuario;
                QRY_059.FieldByName('nidtbl_op').value := DLC_CNOMEPER.KeyValue;
                QRY_059.FieldByName('nusuautor').asInteger := nMatricula;
                DBGenerica(DTS_059,'Conexao',4,1,nil);
              end
            else
              //se o usuario estiver desmarcado e estiver em estado de delecao
              if (not(TUsuario(Rows[i].Objects[0]).Checked)) and
                 (TUsuario(Rows[i].Objects[0]).Update = ukDelete) then
                begin
                  QRY_REMOVEEQVUSU.ParamByName('nidperfil').asInteger := DLC_CNOMEPER.KeyValue;
                  QRY_REMOVEEQVUSU.ParamByName('nidusuario').asInteger :=
                  TUsuario(Rows[i].Objects[0]).IdUsuario;
                  QRY_REMOVEEQVUSU.ExecSQL;
                end;
                
          end;
        DMControle.Conexao.Commit;
        //atualiza os objetos TUsuario
        AtualizaObjUsu;
      except
        {caso ocorra algum erro é avisado ao usuário e desfeitas as alterações
         aplicadas nesta transação, nas tabelas do bando de dados}
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

procedure TFRM_A014UTAU.AtualizaObjUsu;
  var
    i : Integer ;
begin
  with STRGRD_USU do
    begin
      //loop nos objetos TUsuario
      for i:=0 to RowCount -1 do
        if Rows[i].Objects[0] <> nil then
          begin
            //retorna para seu valor anterior
            TUsuario(Rows[i].Objects[0]).OldChecked :=
            TUsuario(Rows[i].Objects[0]).Checked;
            TUsuario(Rows[i].Objects[0]).Update := ukModify;
          end;

    end;
end;

procedure TFRM_A014UTAU.ChangeColor(Sender: TObject; MSG: Integer);
begin
  If Sender is TLMDStaticText Then
  begin
    If (Msg = CM_MOUSELEAVE) Then
      (Sender as TLMDStaticText).Font.Color:=clWindowText;
    If (Msg = CM_MOUSEENTER) Then
      (Sender as TLMDStaticText).Font.Color:=clBlue;
  end;

end;

procedure TFRM_A014UTAU.WndProc(var Msg: TMessage);
var I : Integer;
begin
   For I := 0 to ComponentCount -1 do
      If MSG.LParam = Longint(Components[I]) Then ChangeColor(Components[i],Msg.Msg);
   inherited WndProc(Msg);
end;



procedure TFRM_A014UTAU.LMDStaticText1Click(Sender: TObject);
 var
     i : integer;
begin
  if BTN_GRAVAR.Enabled then
    begin
      //marca todos os itens da stringgrid como selecionado
      for i:=0 to STRGRD_USU.RowCount - 1 do
        ValidaClickGrid(0,i,tpTrue);
      STRGRD_USU.Repaint;
    end;

end;
procedure TFRM_A014UTAU.LMDStaticText2Click(Sender: TObject);
 var
     i : integer;
begin
  if BTN_GRAVAR.Enabled then
    begin
      //marca todos os item do string grid como desmarcado
      for i:=0 to STRGRD_USU.RowCount - 1 do
        ValidaClickGrid(0,i,tpFalse);
      STRGRD_USU.Repaint;
    end;

end;
end.
