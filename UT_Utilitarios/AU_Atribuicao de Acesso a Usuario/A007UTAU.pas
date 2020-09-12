{*******************************************************************************
 *                                                                             *
 *  Restrições de Acesso a Campos                                              *
 *  Aplicação que controla a restrições a campos                               *
 *  de um usuario.                                                             *
 *                                                                             *
 *  Data da Criação : 30/01/2004                                               *
 *  Programador: Frank Sipoli                                                  *
 *  Data Finalização : 20/02/2004                                              *
 *                                                                             *
 *  Data da Ultima Atualização : 12/05/2004                                    *
 *  Atualizado por: Leandro Ribas                                              *
 *  Data da Finalização da Atualização : 13/05/2004                            *
 *  Motivo atualização :                                                       *
 *  A tabela de usuario/dicionario passa a armazenar o usuario                 *
 *  que restringiu o campo.                                                    *
 *  Essa aplicação passa a controlar quem restringiu o campo,                  *
 *  não permitindo a alteração ou liberação do campo caso                      *
 *  o mesmo campo tambem seja restringido para o operador ou                   *
 *  quem restringiu o campo seja um ususario diferente do operador.            *
 *  Caso o operador seja um usuario Admin, qualquer ação na aplicação          *
 *  esta liberada.                                                             *
 *                                                                             *
 *******************************************************************************
}


unit A007UTAU;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  lmdcctrl, lmdctrl, StdCtrls,lmdstdcS, ExtCtrls, Buttons,
  ImgList, ComCtrls, lmdextcS, lmdeditb,lmdeditc, LMDEdit, lmdbredt,
  lmdextcA, LMDShadowFill, LMDCustomPanelFill, LMDPanelFill,
  LMDGraphicControl, LMDBaseMeter, LMDCustomProgress, LMDProgress,
  LMDControl, LMDBaseControl, LMDBaseGraphicControl, LMDBaseLabel,
  LMDCustomSimpleLabel, LMDSimpleLabel, LMDCustomControl, LMDCustomPanel,
  LMDCustomBevelPanel, LMDCustomParentPanel, LMDCustomGroupBox, LMDGroupBox,
  AppEvnts, ActnList, LMDCustomComponent, LMDApplicationCtrl,
  LMDGlobalHotKey, LMDWndProcComponent, LMDMouseBaseCtrl,
  LMDMousePositioner, lmdformA, LMDCustomHint, LMDHint,
  LMDContainerComponent, LMDBaseDialog, LMDTipDlg, LMDCustomShapeHint,
  LMDMessageHint, RzLstBox, RzChkLst, Gauges, Mask, ToolEdit, DBCtrls,
  RzListVw, Grids, DBGrids, PageControlEx, Db,
  DBClient, Ora, Provider, OraProvider, MemDS, DBAccess ;


type
  TFRM_A007UTAU = class(TForm)
    LMDGroupBox3: TLMDGroupBox;
    PNL_APLIC1: TLMDPanelFill;
    BTN_RETROCEDER1: TSpeedButton;
    BTN_AVANCAR1: TSpeedButton;
    DBG_CAMPOS1: TDBGrid;
    DBG_CAMPOS2: TDBGrid;
    BTN_ADITEM1: TSpeedButton;
    BTN_RENITEM1: TSpeedButton;
    BTN_ADDTODOS1: TSpeedButton;
    BTN_RENTODOS1: TSpeedButton;
    PNL_APLIC2: TLMDPanelFill;
    BTN_RETROCEDER2: TSpeedButton;
    BTN_AVANCAR2: TSpeedButton;
    BTN_CONFIRMAR: TBitBtn;
    BTN_CANCELAR: TBitBtn;
    CDS_CPOUSU: TClientDataSet;
    OP_CPOUSU: TOraProvider;
    DTS_CPOUSU: TOraDataSource;
    CDS_CPOUSUCDESCCAMPO: TStringField;
    CDS_054: TClientDataSet;
    OP_054: TOraProvider;
    DTS_054: TOraDataSource;
    CDS_CPOUSUNIDTBL_D: TFloatField;
    BTN_ACOES: TSpeedButton;
    CDS_054CDESCCAMPO: TStringField;
    CDS_054CTIPOCAMPO: TStringField;
    CDS_054NIDTBL_U: TIntegerField;
    CDS_054NIDTBL_D: TIntegerField;
    CDS_054CCONDICAO: TStringField;
    CDS_054CTIPOMASCA: TStringField;
    CDS_054CTRATAMENT: TStringField;
    CDS_054NIDTBL_UD: TFloatField;
    CDS_CPOUSUCTIPOCAMPO: TStringField;
    CDS_054NUSUAUTOR: TFloatField;
    CDS_054CNOMEUSU: TStringField;
    CDS_054DAT_ALTERAR: TStringField;
    QRY_RESTRINGICAMPO: TOraQuery;
    QRY_ATUALIZACAMPOREST: TOraQuery;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BTN_CANCELARClick(Sender: TObject);
    procedure BTN_CONFIRMARClick(Sender: TObject);
    procedure DBG_CAMPOS1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBG_CAMPOS2DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure BTN_RETROCEDER1Click(Sender: TObject);
    procedure BTN_AVANCAR1Click(Sender: TObject);
    procedure BTN_RETROCEDER2Click(Sender: TObject);
    procedure BTN_AVANCAR2Click(Sender: TObject);
    procedure BTN_ADITEM1Click(Sender: TObject);
    procedure BTN_RENITEM1Click(Sender: TObject);
    procedure BTN_ADDTODOS1Click(Sender: TObject);
    procedure BTN_RENTODOS1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure CDS_054CTRATAMENTGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure BTN_ACOESClick(Sender: TObject);
    procedure DBG_CAMPOS1MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure DBG_CAMPOS2MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure CDS_054AfterScroll(DataSet: TDataSet);
    procedure OP_054BeforeUpdateRecord(Sender: TObject; SourceDS: TDataSet;
      DeltaDS: TClientDataSet; UpdateKind: TUpdateKind;
      var Applied: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
    nCodigoUsuario : Integer;//id do usuario
    cNmUsu : String;//nome do usuario
  end;

var
  FRM_A007UTAU: TFRM_A007UTAU;

implementation

uses D007UTAU, CtrlForms, DMCTRL, MPLCtrl, A010UTAU, UVariaveis;


{$R *.DFM}

procedure TFRM_A007UTAU.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  CDS_054.Close;
  CDS_CPOUSU.Close;
  Action:= oControlForms.Saidas(Self,[DTM_A007UTAU],nil);
end;

procedure TFRM_A007UTAU.BTN_CANCELARClick(Sender: TObject);
begin
  //cancela as operações executadas pelo operador
  CDS_CPOUSU.CancelUpdates;
  CDS_054.CancelUpdates;
  Close;
end;

procedure TFRM_A007UTAU.BTN_CONFIRMARClick(Sender: TObject);
begin
 {Com o CDS_054 Usuario/Dicionario}
  CDS_054.DisableControls;
  begin
    {Inicia uma Transação no Banco}
    DMControle.Conexao.StartTransaction;
    try
      {Aplica as modificações na TBL_UD}
      CDS_054.ApplyUpdates(-1);
      CDS_054.Refresh;
      //CDS_054.Refresh;
      {Comita no Banco}
      DMControle.Conexao.Commit;
    except
      {Se houve erro...}
      on E : Exception do
        begin
          MessageDlg('Não foi possivel efetuar a gravação de todos os dados,'+#13+
                     'por isso está operação será cancelada para manter a integridade'+#13+
                     'dos seus dados!'+#13+'Erro: '+E.Message,mtError,[mbOk],0);
          DMControle.Conexao.RollBack;
        end;
    end;
  end;
  CDS_054.EnableControls;
  Close;
end;

procedure TFRM_A007UTAU.DBG_CAMPOS1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  {Pinta linhas do Grid}
  oMetodos.ColorGrid(Sender,Rect,DataCol,Column,State);
end;

procedure TFRM_A007UTAU.DBG_CAMPOS2DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin

  {Pinta linhas do Grid}
  oMetodos.ColorGrid(Sender,Rect,DataCol,Column,State);

  //pinta o registro do grid de vermelho caso
  //o operador não tenha acesso para alterar/liberar o campo
  if (CDS_054.FieldByName('dat_alterar').asString = '1') or
     ((CDS_054.FieldByName('nusuautor').asInteger <> nMatricula) and
     (not(isAdmin)))
     then
    DBG_CAMPOS2.Canvas.Font.Color := clRed;

  TDBGrid(Sender).Canvas.FillRect(Rect);
  TDBGrid(Sender).DefaultDrawDataCell(Rect, Column.Field, State);

end;

procedure TFRM_A007UTAU.BTN_RETROCEDER1Click(Sender: TObject);
begin
  DTS_CPOUSU.DataSet.Prior;
end;

procedure TFRM_A007UTAU.BTN_AVANCAR1Click(Sender: TObject);
begin
  DTS_CPOUSU.DataSet.Next;
end;

procedure TFRM_A007UTAU.BTN_RETROCEDER2Click(Sender: TObject);
begin
  DTS_054.DataSet.Prior;
end;

procedure TFRM_A007UTAU.BTN_AVANCAR2Click(Sender: TObject);
begin
  DTS_054.DataSet.Next;
end;

procedure TFRM_A007UTAU.BTN_ADITEM1Click(Sender: TObject);

begin
  with DBG_CAMPOS1.DataSource.DataSet do
    begin
      {desabilita controle visuais na origem}
      DisableControls;
      {Posiciona Tabela de origem}
      First;
      while not Eof do
        begin
          {Se o item estiver selecionado}
          if DBG_CAMPOS1.SelectedRows.CurrentRowSelected then
            begin
              {inclui um registro novo para um novo item}
              DTS_054.DataSet.Insert;
              {Adiciona campos e valores selecionados}
              DTS_054.DataSet.FieldByName('nidtbl_ud').AsInteger := 0;
              DTS_054.DataSet.FieldByName('nidtbl_u').AsInteger := nCodigoUsuario;
              DTS_054.DataSet.FieldByName('nusuautor').AsInteger := nMatricula;
              DTS_054.DataSet.FieldByName('nidtbl_d').AsInteger :=
              DTS_CPOUSU.DataSet.FieldByName('nidtbl_d').AsInteger;
              DTS_054.DataSet.FieldByName('cdesccampo').AsString :=
              DTS_CPOUSU.DataSet.FieldByName('cdesccampo').AsString;
              DTS_054.DataSet.FieldByName('ctipocampo').AsString :=
              DTS_CPOUSU.DataSet.FieldByName('ctipocampo').AsString;
              DTS_054.DataSet.FieldByName('cnomeusu').AsString := cNomeUsuario;
              {Grava no destino}
              DTS_054.DataSet.Post;
            end;
          {Próximo Registro}
          Next;
        end;
      {Limpa seleção e deleta registros adicionados}
      DBG_CAMPOS1.SelectedRows.Delete;
      {Volta origem no primeiro registro}
      First;
      {Habilita controle visuais da origem}
      EnableControls;
    end;
end;

procedure TFRM_A007UTAU.BTN_RENITEM1Click(Sender: TObject);
  var
    lRowsSelect : Boolean;
begin
  with DBG_CAMPOS2.DataSource.DataSet do
    begin
      lRowsSelect := DBG_CAMPOS2.SelectedRows.Count = 1;
      {desabilita controle visuais na origem}
      DisableControls;
      {Posiciona Tabela de origem}
      First;
      while not Eof do
        begin
          {Se o item estiver selecionado}
          if DBG_CAMPOS2.SelectedRows.CurrentRowSelected then
            begin
              //se o campo estiver restringido para o operador
              if FieldByName('dat_alterar').asString = '1' then
                //se a mensagem deve ser mostrada
                if (Sender = BTN_RENITEM1) and (lRowsSelect) then
                  begin
                    MessageDlg('Você não tem acesso para liberar este campo!',
                               mtInformation,[mbOk],0);
                    EnableControls;
                    exit;
                  end
                else
                  begin
                    DBG_CAMPOS2.SelectedRows.CurrentRowSelected := false;
                    continue;
                  end;

              //se o operador não for admin e o usuario que restringiu não for
              //o operador
              if (not(isAdmin)) and
                 (DTS_054.DataSet.FieldByName('cnomeusu').AsString <> cNomeUsuario) then
                //se a mensagem deve ser mostrada
                if (Sender = BTN_RENITEM1) and (lRowsSelect) then
                  begin
                    MessageDlg('Você não pode liberar um campo que não foi restringido por você!',
                               mtInformation,[mbOk],0);
                    EnableControls;
                    exit;
                  end
                else
                  begin
                    DBG_CAMPOS2.SelectedRows.CurrentRowSelected := false;
                    continue;
                  end;


              {inclui um registro novo para um novo item}
              DTS_CPOUSU.DataSet.Insert;
              {Adiciona campos e valores selecionados}
              DTS_CPOUSU.DataSet.FieldByName('cdesccampo').AsString :=
              DTS_054.DataSet.FieldByName('cdesccampo').AsString;
              DTS_CPOUSU.DataSet.FieldByName('nidtbl_d').AsInteger :=
              DTS_054.DataSet.FieldByName('nidtbl_d').AsInteger;
              {Grava no destino}
              DTS_CPOUSU.DataSet.Post;
            end;
          {Próximo Registro}
          Next;
        end;
      {Desmarca seleção e delete registros selecionados}
      DBG_CAMPOS2.SelectedRows.Delete;
      {Volta origem no primeiro registro}
      First;
      {Habilita controle visuais da origem}
      EnableControls;

      if RecordCount = 0 then
        BTN_ACOES.Enabled := false;

    end;
end;

procedure TFRM_A007UTAU.BTN_ADDTODOS1Click(Sender: TObject);
begin
  with DBG_CAMPOS1.DataSource.DataSet do
    begin
      {desabilita controle visuais na origem}
      DisableControls;
      {Posiciona Tabela de origem}
      First;
      {Seleciona todos}
      while not Eof do
        begin
          DBG_CAMPOS1.SelectedRows.CurrentRowSelected := true;
          Next;
        end;
      {Executa adição de item}
      BTN_ADITEM1.Click;
      {Volta origem no primeiro registro}
      First;
      {Habilita controle visuais da origem}
      EnableControls;
    end;
end;

procedure TFRM_A007UTAU.BTN_RENTODOS1Click(Sender: TObject);
begin
  with DBG_CAMPOS2.DataSource.DataSet do
    begin
      {desabilita controle visuais na origem}
      DisableControls;
      {Posiciona Tabela de origem}
      First;
      {Seleciona todos}
      while not Eof do
        begin
          DBG_CAMPOS2.SelectedRows.CurrentRowSelected := true;
          Next;
        end;
      {Executa Retorno de item}
      BTN_RENITEM1Click(BTN_RENTODOS1);
      {Volta origem no primeiro registro}
      First;
      {Habilita controle visuais da origem}
      EnableControls;
    end;
end;


procedure TFRM_A007UTAU.FormShow(Sender: TObject);
begin
  if not Acesso(nMatricula,'A007UTAU',DTM_A007UTAU) then
    close;

  Caption := Caption + ' - ' + cNmUsu;

  FRM_A007UTAU.OnShow := nil;
  {é atribuido ao OnShow do Form o valor nil para que o mesmo seja executado apenas uma vez}
  {pelo fato que se outra aplicação for chamada pela tecla F3, e ao retornar da aplicação que foi chamada pela tecla}
  {o evento OnShow deste form não acontecerá, ou seja não será executado, para permanecer o mesmo status da aplicação}
  {quando o F3 foi chamado}

  CDS_CPOUSU.Params.ParamByName('nidtbl_u').asInteger := nCodigoUsuario;
  CDS_CPOUSU.Open;
  CDS_054.Params.ParamByName('nidtbl_u').asInteger := nCodigoUsuario;
  CDS_054.Params.ParamByName('nidoperador').asInteger := nMatricula;
  CDS_054.Open;
  //se não houver campos restringidos
  if CDS_054.RecordCount = 0 then
    //desabilida a chamada da aplicação de
    //configuração de restrição do campo
    BTN_ACOES.Enabled := false;

end;

procedure TFRM_A007UTAU.CDS_054CTRATAMENTGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  if Sender.AsString = 'M' then
    Text := 'Mascarado'
  else
    if Sender.AsString = 'R' then
      Text := 'Somente Leitura';
end;

procedure TFRM_A007UTAU.BTN_ACOESClick(Sender: TObject);
  var
    CondicaoEcolhida : TCondicaoCampo;

begin
  Application.CreateForm(TFRM_A010UTAU,FRM_A010UTAU);
  FRM_A010UTAU.Campo.Descricao := DTS_054.DataSet.FieldByName('cdesccampo').AsString;
  FRM_A010UTAU.Campo.Tipo := DTS_054.DataSet.FieldByName('ctipocampo').AsString;
  FRM_A010UTAU.Campo.Tratamento := DTS_054.DataSet.FieldByName('ctratament').AsString;
  FRM_A010UTAU.Campo.Condicao := DTS_054.DataSet.FieldByName('ccondicao').AsString;
  CondicaoEcolhida.Tratamento := '';
  CondicaoEcolhida.Condicao := '';
  FRM_A010UTAU.Condicoes := @CondicaoEcolhida;
  oControlForms.AtivaForm('FRM_A010UTAU',shModal,nil,false);
  DTS_054.DataSet.Edit;
  DTS_054.DataSet.FieldByName('ctratament').AsString := CondicaoEcolhida.Tratamento;
  DTS_054.DataSet.FieldByName('ccondicao').AsString := CondicaoEcolhida.Condicao;
  DTS_054.DataSet.Post;
end;

procedure TFRM_A007UTAU.DBG_CAMPOS1MouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  if Button = mbRight then
    begin
      ChamaPesqGrid(TOraQuery(OP_CPOUSU.DataSet),CDS_CPOUSU,TDBGrid(Sender).SelectedField.FieldName, TDBGrid(Sender).SelectedField.DisplayLabel);
      TDBGrid(Sender).SelectedRows.CurrentRowSelected := true;
    end;
end;

procedure TFRM_A007UTAU.DBG_CAMPOS2MouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  if Button = mbRight then
    ChamaPesqGrid(TOraQuery(OP_054.DataSet),CDS_054,TDBGrid(Sender).SelectedField.FieldName, TDBGrid(Sender).SelectedField.DisplayLabel);
end;

procedure TFRM_A007UTAU.CDS_054AfterScroll(DataSet: TDataSet);
begin

  //desabilida a chamada para a aplicação de configuração de restrições do
  //campo, se o operador tambem tem restrição no campo ou, o usuario que
  //restringiu o campo não for o operador, e o operador não seja
  //um usuario Admin
  BTN_ACOES.Enabled := not(((Dataset.FieldByName('dat_alterar').asString = '1') or
                           (cNomeUsuario <> Dataset.FieldByName('cnomeusu').asString)) and
                           (not(isAdmin)));
end;

procedure TFRM_A007UTAU.OP_054BeforeUpdateRecord(Sender: TObject;
  SourceDS: TDataSet; DeltaDS: TClientDataSet; UpdateKind: TUpdateKind;
  var Applied: Boolean);
begin
  if UpdateKind = ukInsert then
    begin
      Applied := true;
      with QRY_RESTRINGICAMPO do
        begin
          ParamByName('nidusuario').asInteger := nCodigoUsuario;
          ParamByName('nidoperador').asInteger := nMatricula;
          ParamByName('nidcampo').asInteger :=
          DeltaDS.FieldByName('nidtbl_d').asInteger;
          ParamByName('ccondicaocampo').asString :=
          DeltaDS.FieldByName('ccondicao').asString;
          ParamByName('cmascara').asString :=
          DeltaDS.FieldByName('ctipomasca').asString;
          ParamByName('ctrata').asString :=
          DeltaDS.FieldByName('ctratament').asString;
          ExecSQL;
        end;
    end
  else
    if UpdateKind = ukModify then
      begin
        Applied := true;
        with QRY_ATUALIZACAMPOREST do
          begin

            ParamByName('nidusuario').asInteger := nCodigoUsuario;
            ParamByName('nidcampo').asInteger :=
            DeltaDS.FieldByName('nidtbl_d').OldValue;
            //SourceDS.FieldByName('nidtbl_d').asInteger;

            if DeltaDS.FieldByName('ccondicao').Value = Null then
              ParamByName('ccondicaocampo').asString :=
              DeltaDS.FieldByName('ccondicao').OldValue
            else
              ParamByName('ccondicaocampo').value :=
              DeltaDS.FieldByName('ccondicao').value;



            if DeltaDS.FieldByName('ctipomasca').Value = Null then
              ParamByName('cmascara').value :=
              DeltaDS.FieldByName('ctipomasca').OldValue
            else
              ParamByName('cmascara').value :=
              DeltaDS.FieldByName('ctipomasca').value;

            if DeltaDS.FieldByName('ctratament').Value = Null then
              ParamByName('ctrata').value :=
              DeltaDS.FieldByName('ctratament').OldValue
            else
              ParamByName('ctrata').value :=
              DeltaDS.FieldByName('ctratament').value;



            ExecSQL;
          end;


    end;
end;

end.


