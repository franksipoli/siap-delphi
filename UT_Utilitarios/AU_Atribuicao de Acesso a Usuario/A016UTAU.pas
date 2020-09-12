{*******************************************************************************
 *                                                                             *
 *  Aplicação para indicar quais são os                                        *
 *  controlados pelo operador                                                  *
 *                                                                             *
 *  Data da Criação : 08/06/2004                                               *
 *  Programador Leandro Ribas                                                  *
 *  Data Finalização : 08/06/2004                                              *
 *                                                                             *
 *  Data da Ultima Atualização :                                               *
 *  Atualizado por:                                                            *
 *                                                                             *
 *******************************************************************************
}



unit A016UTAU;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, Buttons, ExtCtrls, RxLookup, LMDCustomControl, LMDCustomPanel,
  LMDCustomBevelPanel, LMDCustomParentPanel, LMDCustomGroupBox, LMDGroupBox,
  ImgList,DB, MemDS, DBAccess, Ora, LMDCustomPanelFill, LMDStaticText,
  StdCtrls;

type
  //objeto usuario
  TUsuario = class
    IdUsuario  : integer;
    Checked    : Boolean;
    OldChecked : Boolean;
    Update     : TUpdateKind;
  end;

  TtpCheck = (tpTrue,tpFalse,tpDefault);

  TFRM_A016UTAU = class(TForm)
    LMDGroupBox3: TLMDGroupBox;
    DLC_CNOMEUSU: TRxDBLookupCombo;
    Panel2: TPanel;
    BTN_SAIR: TSpeedButton;
    BTN_ALTERAR: TSpeedButton;
    BTN_GRAVAR: TSpeedButton;
    BTN_CANCELAR: TSpeedButton;
    LMDGroupBox1: TLMDGroupBox;
    STRGRD_USU: TStringGrid;
    ImgList: TImageList;
    QRY_REMOVEUSUOPER: TOraQuery;
    LMDStaticText1: TLMDStaticText;
    LMDStaticText2: TLMDStaticText;
    PNL_AVISO: TPanel;
    LBL_MENS: TLabel;
    procedure FormShow(Sender: TObject);
    procedure STRGRD_USUDrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BTN_SAIRClick(Sender: TObject);
    procedure STRGRD_USUMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure BTN_ALTERARClick(Sender: TObject);
    procedure BTN_GRAVARClick(Sender: TObject);
    procedure BTN_CANCELARClick(Sender: TObject);
    procedure DLC_CNOMEUSUCloseUp(Sender: TObject);
    procedure LMDStaticText1Click(Sender: TObject);
    procedure LMDStaticText2Click(Sender: TObject);
  private
    { Private declarations }
    procedure ChangeColor(Sender : TObject; MSG : Integer);
    procedure WndProc(Var Msg : TMessage);override;
  public
    { Public declarations }
    //monta stringgrid
    procedure AlimentaLista;
    //cancela as alteraçoes feitas no stringgrid
    procedure CancelaAlteracoes;
    //grava no banco as alterações feitas no string grid
    procedure GravaAlteracoes;
    //valida o click do usuario no stringgrid
    procedure ValidaClickGrid(C,L : Integer; Check : TtpCheck = tpDefault);
    //atualiza as informações da stringgrid
    procedure AtualizaLista;
    //atualiza o estado do objeto
    procedure AtualizaObjUsu;

    procedure AtualizaUsu(SuperUsu: Boolean; nIdUsu : Integer);
  end;

var
  FRM_A016UTAU: TFRM_A016UTAU;

implementation

uses D016UTAU, MPLCtrl, UVariaveis, CtrlForms, DMCTRL ;

{$R *.DFM}

procedure TFRM_A016UTAU.AlimentaLista;
  var
    oUsuario : TUsuario;
begin
  with DTM_A016UTAU,STRGRD_USU do
    begin
      Cells[0,0] := ' Usuários';

      QRY_051_01.First;
      //loop em todos os usuarios do sistema
      while not(QRY_051_01.Eof) do
        begin


          if QRY_051_01.RecNo > 1 then
            RowCount := RowCount + 1;

          if Rows[RowCount -1].Objects[0] <> nil then
            Rows[RowCount -1].Objects[0].Free;

          //coloca o login do usuario no stringgrid
          Cells[0,RowCount-1] := QRY_051_01.FieldByName('cnomeusu').asString;

          //cria o objeto usuario
          oUsuario := TUsuario.Create;
          oUsuario.IdUsuario := QRY_051_01.FieldByName('nidtbl_u').asInteger;

          //verifica se o usuario e respnsabilidade do operador
          if QRY_061.Locate('nidtbl_u',oUsuario.IdUsuario,[]) then
            begin
              oUsuario.Checked := true;
              oUsuario.OldChecked := true;
            end;

          //associa o objeto usuario a linha do stringgrid
          Rows[RowCount-1].Objects[0] := oUsuario;
          //proximo usuario do sistema
          QRY_051_01.Next;
        end;
    end;
end;

procedure TFRM_A016UTAU.FormShow(Sender: TObject);

begin
  //verifica acesso do usuario
  if Acesso(nMatricula,'A016UTAU',DTM_A016UTAU) then
    Close;

 Botoes(['BTN_GRAVAR','BTN_CANCELAR'],'FRM_A016UTAU',false);

  with DTM_A016UTAU do
    begin
      //se o operador for admin
      if (isAdmin) and (isSuperUsu) then
        begin
          //seleciona os usuarios
          QRY_051.Close;
          QRY_051.SQL.Clear;
          QRY_051.SQL.Text := 'select * from tbl_u order by cnomeusu';
          QRY_051.Open;
          QRY_051.Locate('nidtbl_u',nMatricula,[]);
        end
      else
        if isAdmin then
        begin
          //seleciona os usuarios
          QRY_051.Close;
          QRY_051.SQL.Clear;
          QRY_051.SQL.Text := 'select * from tbl_u where nadmin = 0 ' +
           'union select * from tbl_u where nidtbl_u = :nidtbl_u ';
          QRY_051.ParamByName('nidtbl_u').asInteger := nMatricula;
          QRY_051.Open;
          QRY_051.Locate('nidtbl_u',nMatricula,[]);
        end
        else
          begin
            QRY_051.ParamByName('nidtbl_u').asInteger := nMatricula;
            QRY_051.ExecSQL;
            QRY_051.First;
          end;

      AtualizaUsu(isSuperUsu,QRY_051.FieldByName('nidtbl_u').asInteger);

      //atualiza combobox
      DLC_CNOMEUSU.KeyValue := QRY_051.FieldByName('nidtbl_u').value;
      //seleciona os usuarios que são responsabilidade do operador
      QRY_061.ParamByName('noperador').asInteger := DLC_CNOMEUSU.KeyValue;
      QRY_061.ExecSQL;
    end;

  //monta stringgrid
  AlimentaLista;


  FRM_A016UTAU.OnShow := nil;
 {é atribuido ao OnShow do Form o valor nil para que o mesmo seja executado apenas uma vez}
 {pelo fato que se outra aplicação for chamada pela tecla F3, e ao retornar da aplicação que foi chamada pela tecla}
 {o evento OnShow deste form não acontecerá, ou seja não será executado, para permanecer o mesmo status da aplicação}
 {quando o F3 foi chamado}


end;

procedure TFRM_A016UTAU.STRGRD_USUDrawCell(Sender: TObject; ACol,
  ARow: Integer; Rect: TRect; State: TGridDrawState);
begin
  if ARow <> 0 then
    begin
      with STRGRD_USU do
        begin
          Canvas.FillRect(Rect);
          Canvas.TextRect(Rect,Rect.Left + 30,Rect.Top + 3,Cells[Acol,ARow]);
          ImgList.Draw(Canvas,Rect.Left + 8,Rect.Top + 3, 0);
          if TUsuario(Rows[ARow].Objects[0]).Checked then
            ImgList.Draw(Canvas,Rect.Left + 8, Rect.Top + 3, 2);
        end;
    end;
end;

procedure TFRM_A016UTAU.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
   Action := oControlForms.Saidas(Self,[DTM_A016UTAU],nil);
end;

procedure TFRM_A016UTAU.BTN_SAIRClick(Sender: TObject);
begin
  close;
end;

procedure TFRM_A016UTAU.ValidaClickGrid(C, L: Integer; Check: TtpCheck);
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

      if TUsuario(Rows[L].Objects[0]).Checked then
        begin
          if not(TUsuario(Rows[L].Objects[0]).OldChecked) then
            TUsuario(Rows[L].Objects[0]).Update := ukInsert;
        end
      else
        if TUsuario(Rows[L].Objects[0]).OldChecked then
          TUsuario(Rows[L].Objects[0]).Update := ukDelete;

    end;
end;

procedure TFRM_A016UTAU.STRGRD_USUMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
  var
    Linha, Coluna : Integer;
begin
  if Button = mbRight then
    begin
      if ChamaPesqGrid(DTM_A016UTAU.QRY_051_01,nil,'cnomeusu','Nome usuário') then
        //seleciona na grid o usuario localizado na pesquisa
        STRGRD_USU.Row := STRGRD_USU.Cols[0].IndexOf(DTM_A016UTAU.QRY_051_01.FieldByName('cnomeusu').asString);
      exit;
    end;
  if BTN_GRAVAR.Enabled then
    begin
      STRGRD_USU.MouseToCell(X,Y,Coluna,Linha);
      ValidaClickGrid(Coluna,Linha,tpDefault);
      STRGRD_USU.Repaint;
    end;
end;

procedure TFRM_A016UTAU.BTN_ALTERARClick(Sender: TObject);
begin
    //habilida gravaçao e cancelamento da operação
  Botoes(['BTN_GRAVAR','BTN_CANCELAR'],'FRM_A016UTAU',true);
  DLC_CNOMEUSU.Enabled := false;
end;

procedure TFRM_A016UTAU.BTN_GRAVARClick(Sender: TObject);
begin
  if MessageDlg('Deseja Salvar Alterações?',mtConfirmation,[mbYes,mbNo],0) = mrYes then
    begin
      //desabilida gravação e cancelamento
      Botoes(['BTN_GRAVAR','BTN_CANCELAR'],'FRM_A016UTAU',false);
      //grava as alterações no banco de dados
      GravaAlteracoes;
      //habilida troca de perfil
      DLC_CNOMEUSU.Enabled := true;
    end;
end;

procedure TFRM_A016UTAU.BTN_CANCELARClick(Sender: TObject);
begin
  //cancela as alterações na lista de aplicações
  Botoes(['BTN_GRAVAR','BTN_CANCELAR'],'FRM_A016UTAU',false);
  CancelaAlteracoes;
  DLC_CNOMEUSU.Enabled := true;
end;

procedure TFRM_A016UTAU.CancelaAlteracoes;
  var
    i : integer;
begin
   with STRGRD_USU do
     begin
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

procedure TFRM_A016UTAU.GravaAlteracoes;
  var
    i : integer;
begin
  with STRGRD_USU,DTM_A016UTAU do
    begin
      Pnl_Aviso.Visible := true;
      FRM_A016UTAU.Repaint;
      DMControle.Conexao.StartTransaction;
      try
        for i:=0 to RowCount - 1 do
          begin

            if Rows[i].Objects[0] = nil then
              continue;
            //se o item estive checado e em estado de inserção
            if (TUsuario(Rows[i].Objects[0]).Checked) and
               (TUsuario(Rows[i].Objects[0]).Update = ukInsert) then
              begin
                lbl_mens.caption := 'Incluindo ' + Trim(Cells[0,i]) + #13 +
                                    'na lista do operador' + #13 +
                                    'Aguarde...';
                FRM_A016UTAU.Repaint;
                //inclui registro
                DBGenerica(DTS_061,'Conexao',1,0,nil);
                QRY_061.FieldByName('nidtbl_opu').asInteger := 0;
                QRY_061.FieldByName('noperador').asInteger :=
                DLC_CNOMEUSU.KeyValue;
                QRY_061.FieldByName('nidtbl_u').asInteger :=
                TUsuario(Rows[i].Objects[0]).IdUsuario;
                DBGenerica(DTS_061,'Conexao',4,1,nil);
                lbl_mens.caption :='';
                FRM_A016UTAU.Repaint;
              end
            else
              //se o item não estiver checado e em estado de deleção
              if (not(TUsuario(Rows[i].Objects[0]).Checked)) and
                 (TUsuario(Rows[i].Objects[0]).Update = ukDelete) then
                begin
                  //deleta o usuario da lista do operador
                  lbl_mens.caption := 'Removendo ' + Trim(Cells[0,i]) + #13 +
                                    'da lista do operador' + #13 +
                                    'Aguarde...';
                  FRM_A016UTAU.Repaint;
                  QRY_REMOVEUSUOPER.ParamByName('nidusuario').asInteger :=
                  TUsuario(Rows[i].Objects[0]).IdUsuario;
                  QRY_REMOVEUSUOPER.ParamByName('nidoperador').asInteger:=
                  DLC_CNOMEUSU.KeyValue;
                  QRY_REMOVEUSUOPER.ExecSQL;
                  lbl_mens.caption :='';
                  FRM_A016UTAU.Repaint;
                end;


          end;
        DMControle.Conexao.Commit;
        AtualizaObjUsu;
        Pnl_Aviso.Visible := false;
      except
        {caso ocorra algum erro é avisado ao usuário e desfeitas as alterações
         aplicadas nesta transação, nas tabelas do bando de dados}
          on E : Exception do
            begin
              Pnl_Aviso.Visible := false;
              MessageDlg('Não foi possivel efetuar a gravação de todos os dados,'+#13+
                         'por isso está operação será cancelada para manter a integridade'+#13+
                         'dos seus dados!'+#13+'Erro: '+E.Message,mtError,[mbOk],0);
              DMControle.Conexao.RollBack;
              Btn_CancelarClick(Btn_Cancelar);
            end;
      end;
    end;
end;

procedure TFRM_A016UTAU.AtualizaLista;

begin
  with STRGRD_USU,DTM_A016UTAU do
    begin
      RowCount := 2;

      AtualizaUsu(DTS_051.DataSet.FieldByName('nsuperusu').asInteger = 1,
        DTS_051.DataSet.FieldByName('nidtbl_u').asInteger);

      QRY_061.ParamByName('noperador').value :=
      DLC_CNOMEUSU.KeyValue;
      QRY_061.ExecSql;

      AlimentaLista;

    end;
end;

procedure TFRM_A016UTAU.DLC_CNOMEUSUCloseUp(Sender: TObject);
begin
  AtualizaLista;
end;

procedure TFRM_A016UTAU.AtualizaObjUsu;
  var
    i : Integer ;
begin
  with STRGRD_USU do
    begin
      for i:=0 to RowCount -1 do
        if Rows[i].Objects[0] <> nil then
          begin
            TUsuario(Rows[i].Objects[0]).OldChecked :=
            TUsuario(Rows[i].Objects[0]).Checked;
            TUsuario(Rows[i].Objects[0]).Update := ukModify;
          end;

    end;
end;

procedure TFRM_A016UTAU.ChangeColor(Sender: TObject; MSG: Integer);
begin
  If Sender is TLMDStaticText Then
  begin
    If (Msg = CM_MOUSELEAVE) Then
      (Sender as TLMDStaticText).Font.Color:=clWindowText;
    If (Msg = CM_MOUSEENTER) Then
      (Sender as TLMDStaticText).Font.Color:=clBlue;
  end;

end;

procedure TFRM_A016UTAU.WndProc(var Msg: TMessage);
var I : Integer;
begin
   For I := 0 to ComponentCount -1 do
      If MSG.LParam = Longint(Components[I]) Then ChangeColor(Components[i],Msg.Msg);
   inherited WndProc(Msg);
end;

procedure TFRM_A016UTAU.LMDStaticText1Click(Sender: TObject);
  var
     i : integer;
begin
  if BTN_GRAVAR.Enabled then
    begin
      for i:=0 to STRGRD_USU.RowCount - 1 do
        ValidaClickGrid(0,i,tpTrue);
      STRGRD_USU.Repaint;
    end;

end;

procedure TFRM_A016UTAU.LMDStaticText2Click(Sender: TObject);
  var
     i : integer;
begin
  if BTN_GRAVAR.Enabled then
    begin
      for i:=0 to STRGRD_USU.RowCount - 1 do
        ValidaClickGrid(0,i,tpFalse);
      STRGRD_USU.Repaint;
    end;

end;

procedure TFRM_A016UTAU.AtualizaUsu(SuperUsu: Boolean; nIdUsu : Integer);
begin
  with DTM_A016UTAU do
    begin
      if SuperUsu then
        QRY_051_01.SQL.Text :=
        'select * from tbl_u where nidtbl_u <> :nidtbl_u order by cnomeusu'
      else
        QRY_051_01.SQL.Text :=
        'select * from tbl_u where nidtbl_u <> :nidtbl_u and nsuperusu = 0 and nadmin = 0 order by cnomeusu';

      QRY_051_01.ParamByName('nidtbl_u').asInteger := nIdUsu;
      QRY_051_01.ExecSQL;
      QRY_051_01.First;
    end;

end;

end.
