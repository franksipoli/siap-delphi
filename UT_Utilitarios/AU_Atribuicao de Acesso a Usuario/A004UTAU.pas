unit A004UTAU;

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
  LMDMessageHint, RzLstBox, RzChkLst, Gauges, Mask, DBCtrls, ToolEdit,
  Grids, DBGrids, Db, MemDS, DBClient, Provider, OraProvider, Ora, DBAccess;


type
  TFRM_A004UTAU = class(TForm)
    LMDGroupBox1: TLMDGroupBox;
    LMDPanelFill5: TLMDPanelFill;
    LMDPanelFill1: TLMDPanelFill;
    BTN_ADITEM: TSpeedButton;
    BTN_RENTODOS: TSpeedButton;
    BTN_RENITEM: TSpeedButton;
    BTN_ADDTODOS: TSpeedButton;
    Label1: TLabel;
    DBG_PERFIL2: TDBGrid;
    DBG_PERFIL1: TDBGrid;
    BTN_CONFIRMAR: TBitBtn;
    BTN_CANCELAR: TBitBtn;
    ImageList1: TImageList;
    CDS_056: TClientDataSet;
    OP_056: TOraProvider;
    DTS_056: TOraDataSource;
    CDS_056NIDTBL_PB: TFloatField;
    CDS_056CSIGLAPER: TStringField;
    CDS_056CNOMEPER: TStringField;
    EDT_CNOMEUSU: TEdit;
    CDS_057: TClientDataSet;
    OP_057: TOraProvider;
    CDS_057NIDTBL_UPA: TFloatField;
    CDS_057NIDTBL_UP: TFloatField;
    CDS_057NIDTBL_A: TFloatField;
    CDS_057CPERFIL: TStringField;
    CDS_055: TClientDataSet;
    OP_055: TOraProvider;
    DTS_055: TOraDataSource;
    CDS_055NIDTBL_UP: TFloatField;
    CDS_055NIDTBL_U: TFloatField;
    CDS_055NIDTBL_PB: TFloatField;
    CDS_055CPERFIL: TStringField;
    CDS_055NSTATUS: TFloatField;
    CDS_055CNOMEPER: TStringField;
    QRY_EXCLUIPERFIL: TOraQuery;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure DBG_PERFIL1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBG_PERFIL2DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure BTN_CONFIRMARClick(Sender: TObject);
    procedure BTN_CANCELARClick(Sender: TObject);
    procedure DBG_PERFIL2DblClick(Sender: TObject);
    procedure CDS_055NSTATUSSetText(Sender: TField; const Text: String);
    procedure CDS_055NSTATUSGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure BTN_ADITEMClick(Sender: TObject);
    procedure BTN_RENITEMClick(Sender: TObject);
    procedure BTN_ADDTODOSClick(Sender: TObject);
    procedure BTN_RENTODOSClick(Sender: TObject);
    procedure CDS_056AfterScroll(DataSet: TDataSet);
    procedure CDS_055AfterScroll(DataSet: TDataSet);
    procedure OP_055BeforeUpdateRecord(Sender: TObject; SourceDS: TDataSet;
      DeltaDS: TClientDataSet; UpdateKind: TUpdateKind;
      var Applied: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }

  end;

var
  FRM_A004UTAU: TFRM_A004UTAU;

implementation

uses MPLCtrl, UVariaveis, DMCTRL, D004UTAU, CtrlForms, A008UTAU, D008UTAU;



{$R *.DFM}

procedure TFRM_A004UTAU.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  CDS_055.Close;
  CDS_056.Close;
  CDS_057.Close;
  Action:= oControlForms.Saidas(Self,[DTM_A004UTAU],DTM_A004UTAU.DTS_055.DataSet);
end;

procedure TFRM_A004UTAU.FormShow(Sender: TObject);
  var
    ListaPerfil : TStringList;
    cSql : String;
    nPos : Integer;
begin
  if not Acesso(nMatricula,'A004UTAU',DTM_A004UTAU) then
    close;
  FRM_A004UTAU.OnShow := nil;
 {é atribuido ao OnShow do Form o valor nil para que o mesmo seja executado apenas uma vez}
 {pelo fato que se outra aplicação for chamada pela tecla F3, e ao retornar da aplicação que foi chamada pela tecla}
 {o evento OnShow deste form não acontecerá, ou seja não será executado, para permanecer o mesmo status da aplicação}
 {quando o F3 foi chamado}

  ListaPerfil := TStringList.Create;
  ListaPerfil.Sorted := true;
  ListaPerfil.Duplicates := dupIgnore;
  DMControle.Qry_A.First;
  while not(DMControle.Qry_A.Eof) do
    begin
      if DMControle.Qry_A.FieldByName('nidtbl_pb').asString <> '' then
        ListaPerfil.Add(DMControle.Qry_A.FieldByName('nidtbl_pb').asString);
      DMControle.Qry_A.Next;
    end;

  cSql := DTM_A004UTAU.QRY_056.SQL.Text;
  DTM_A004UTAU.QRY_056.Close;
  DTM_A004UTAU.QRY_056.SQL.Clear;

  nPos := Pos(':nidtbl_pb',cSql);

  Delete(cSql,nPos,10);

  Insert(ListaPerfil.CommaText,cSql,nPos);

  DTM_A004UTAU.QRY_056.SQL.Add(cSql);


  CDS_055.Params.ParamByName('nidtbl_u').AsInteger := nRetornoObjeto;
  CDS_055.Open;

  CDS_056.Params.ParamByName('nidtbl_u').AsInteger := nRetornoObjeto;
  CDS_056.Open;

  CDS_057.Params.ParamByName('nidtbl_u').AsInteger := nRetornoObjeto;
  CDS_057.Open;
  DBG_PERFIL2.Repaint;
end;

procedure TFRM_A004UTAU.DBG_PERFIL1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  {Pinta linhas do Grid}
 oMetodos.ColorGrid(Sender,Rect,DataCol,Column,State);
end;

procedure TFRM_A004UTAU.DBG_PERFIL2DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  {Pinta linhas do Grid}
  oMetodos.ColorGrid(Sender,Rect,DataCol,Column,State);

end;

procedure TFRM_A004UTAU.BTN_CONFIRMARClick(Sender: TObject);
var nPerfilNoFilho : integer;
    lPerfilNoFilho : Boolean;
    ListaAplic : TStringList;


begin
 {Com o CDS_055 Usuario/Perfil}
  with CDS_055 do
    begin
      CDS_055.DisableControls;
      First;
      lPerfilNoFilho := false;
      nPerfilNoFilho := 0;
      ListaAplic := TStringList.Create;
      while (not Eof) do
        begin
          {Se tem valor ZERO é um perfil NOVO para o usuario}
          if FieldByName('nidtbl_up').AsInteger = 0 then
            begin
              nPerfilNoFilho := nPerfilNoFilho + 1;
              DMControle.Qry_A.First;
              while not(DMControle.Qry_A.Eof) do
                begin
                  if DMControle.Qry_A.FieldByName('nidtbl_pb').asInteger =
                     FieldByName('nidtbl_pb').AsInteger then
                    ListaAplic.Add(DMControle.Qry_A.FieldByName('nidtbl_a').asString);
                  DMControle.Qry_A.Next;  
                end;
              PrepareQryTemp('select * from tbl_a where tbl_a.nidtbl_a in ('+
              ListaAplic.CommaText+')');
              DMControle.QryTemp.ExecSQL;
              DMControle.QryTemp.First;
              while (not DMControle.QryTemp.Eof) do
                begin
                  CDS_057.Insert;
                  CDS_057.FieldByName('nidtbl_upa').AsInteger := 0;
                  CDS_057.FieldByName('nidtbl_up').AsInteger := nPerfilNoFilho;
                  CDS_057.FieldByName('nidtbl_a').AsInteger :=
                  DMControle.QryTemp.FieldByName('nidtbl_a').AsInteger;
                  CDS_057.FieldByName('cperfil').AsString :=
                  CDS_055.FieldByName('cperfil').AsString;
                  CDS_057.Post;
                  DMControle.QryTemp.Next;
                  lPerfilNoFilho := true;
                end;
            end;
          Next;
        end;
      {Inicia uma Transação no Banco}
      DMControle.Conexao.StartTransaction;
      try
        {Aplica as modificações na TBL_UPA}
        CDS_055.ApplyUpdates(-1);
        CDS_055.Refresh;
        if lPerfilNoFilho then
          begin
            CDS_057.First;
            while (not CDS_057.Eof) do
              begin
                if CDS_055.Locate('cperfil',
                   CDS_057.FieldByName('cperfil').AsString,[]) then
                  begin
                   CDS_057.Edit;
                   CDS_057.FieldByName('nidtbl_up').AsInteger :=
                   CDS_055.FieldByName('nidtbl_up').AsInteger;
                   CDS_057.Post;
                  end;
                CDS_057.Next;
              end;
            CDS_057.ApplyUpdates(-1);
            PrepareQryTemp('update tbl_upa set cperfil = null');
            DMControle.QryTemp.ExecSQL;
          end;
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
  CDS_055.EnableControls;
  {Fecha a Aplicação}
  Close;
end;

procedure TFRM_A004UTAU.BTN_CANCELARClick(Sender: TObject);
begin
  CDS_055.CancelUpdates;
  CDS_056.CancelUpdates;
  CDS_057.CancelUpdates;
  Close;
end;

procedure TFRM_A004UTAU.DBG_PERFIL2DblClick(Sender: TObject);
begin

  if DBG_PERFIL2.SelectedRows.CurrentRowSelected  and
     (DBG_PERFIL2.SelectedIndex = 1) then
    begin
      CDS_055.Edit;
      if CDS_055.FieldByName('nstatus').AsInteger = 1 then
        CDS_055.FieldByName('nstatus').AsInteger := 0
      else CDS_055.FieldByName('nstatus').AsInteger := 1;
    end;

end;

procedure TFRM_A004UTAU.CDS_055NSTATUSSetText(Sender: TField;
  const Text: String);
begin
  if Text = 'Sim' then
    Sender.AsString := '1';
  if Text = 'Não' then
    Sender.AsString := '0';
end;

procedure TFRM_A004UTAU.CDS_055NSTATUSGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  if Sender.AsString = '0' then
    Text := 'Não';
  if Sender.AsString = '1' then
    Text := 'Sim';
end;

procedure TFRM_A004UTAU.BTN_ADITEMClick(Sender: TObject);
begin
  with DBG_PERFIL1.DataSource.DataSet do
    begin
      {desabilita controle visuais na origem}
      DisableControls;
      {Posiciona Tabela de origem}
      First;
      while not Eof do
        begin
          {Se o item estiver selecionado}
          if DBG_PERFIL1.SelectedRows.CurrentRowSelected then
            begin
              {inclui um registro novo para um novo item}
              DTS_055.DataSet.Insert;
              {Adiciona campos e valores selecionados}
              DTS_055.DataSet.FieldByName('nidtbl_up').AsInteger := 0;
              DTS_055.DataSet.FieldByName('nidtbl_u').AsInteger := nRetornoObjeto;
              DTS_055.DataSet.FieldByName('nidtbl_pb').AsInteger :=
              DTS_056.DataSet.FieldByName('nidtbl_pb').AsInteger;
              DTS_055.DataSet.FieldByName('cperfil').AsString :=
              Trim(EDT_CNOMEUSU.Text)+ '-'+
              DTS_056.DataSet.FieldByName('csiglaper').AsString;
              DTS_055.DataSet.FieldByName('nstatus').AsInteger := 1;
              DTS_055.DataSet.FieldByName('cnomeper').AsString :=
              DTS_056.DataSet.FieldByName('cnomeper').AsString;
              {Grava no destino}
              DTS_055.DataSet.Post;
            end;
          {Próximo Registro}
          Next;
        end;
      {Limpa seleção e deleta registros adicionados}
      DBG_PERFIL1.SelectedRows.Delete;
      {Volta origem no primeiro registro}
      First;
      {Habilita controle visuais da origem}
      EnableControls;
    end;
end;

procedure TFRM_A004UTAU.BTN_RENITEMClick(Sender: TObject);
begin
  with DBG_PERFIL2.DataSource.DataSet do
    begin
      {desabilita controle visuais na origem}
      DisableControls;
      {Posiciona Tabela de origem}
      First;
      while not Eof do
        begin
          {Se o item estiver selecionado}
          if DBG_PERFIL2.SelectedRows.CurrentRowSelected then
            begin
              {inclui um registro novo para um novo item}
              DTS_056.DataSet.Insert;
              {Adiciona campos e valores selecionados}
              DTS_056.DataSet.FieldByName('nidtbl_pb').AsInteger :=
              DTS_055.DataSet.FieldByName('nidtbl_pb').AsInteger;
              DTS_056.DataSet.FieldByName('csiglaper').AsString :=
              Copy(DTS_055.DataSet.FieldByName('cperfil').AsString,
              Pos('-',DTS_055.DataSet.FieldByName('cperfil').AsString)+1,
              Length(DTS_055.DataSet.FieldByName('cperfil').AsString)-
              Pos('-',DTS_055.DataSet.FieldByName('cperfil').AsString));
              DTS_056.DataSet.FieldByName('cnomeper').AsString :=
              DTS_055.DataSet.FieldByName('cnomeper').AsString;
              {Grava no destino}
              DTS_056.DataSet.Post;
            end;
          {Próximo Registro}
          Next;
        end;
      {Desmarca seleção e delete registros selecionados}
      DBG_PERFIL2.SelectedRows.Delete;
      {Volta origem no primeiro registro}
      First;
      {Habilita controle visuais da origem}
      EnableControls;
    end;
end;

procedure TFRM_A004UTAU.BTN_ADDTODOSClick(Sender: TObject);
begin
  with DBG_PERFIL1.DataSource.DataSet do
    begin
      {desabilita controle visuais na origem}
      DisableControls;
      {Posiciona Tabela de origem}
      First;
      {Seleciona todos}
      while not Eof do
        begin
          DBG_PERFIL1.SelectedRows.CurrentRowSelected := true;
          Next;
        end;
      {Executa adição de item}
      BTN_ADITEM.Click;
      {Volta origem no primeiro registro}
      First;
      {Habilita controle visuais da origem}
      EnableControls;
    end;
end;

procedure TFRM_A004UTAU.BTN_RENTODOSClick(Sender: TObject);
begin
  with DBG_PERFIL2.DataSource.DataSet do
    begin
      {desabilita controle visuais na origem}
      DisableControls;
      {Posiciona Tabela de origem}
      First;
      {Seleciona todos}
      while not Eof do
        begin
          DBG_PERFIL2.SelectedRows.CurrentRowSelected := true;
          Next;
        end;
      {Executa Retorno de item}
      BTN_RENITEM.Click;
      {Volta origem no primeiro registro}
      First;
      {Habilita controle visuais da origem}
      EnableControls;
    end;
end;

procedure TFRM_A004UTAU.CDS_056AfterScroll(DataSet: TDataSet);
begin
  if (not DataSet.ControlsDisabled) then
    DBG_PERFIL1.Repaint;
end;

procedure TFRM_A004UTAU.CDS_055AfterScroll(DataSet: TDataSet);
begin
    if (not DataSet.ControlsDisabled) then
      DBG_PERFIL2.Repaint;
end;

procedure TFRM_A004UTAU.OP_055BeforeUpdateRecord(Sender: TObject;
  SourceDS: TDataSet; DeltaDS: TClientDataSet; UpdateKind: TUpdateKind;
  var Applied: Boolean);

begin
  if UpdateKind = ukDelete then
    begin
      Applied := true;
      QRY_EXCLUIPERFIL.ParamByName('ncodperfil').asInteger :=
      DeltaDS.FieldByName('nidtbl_up').asInteger;
      QRY_EXCLUIPERFIL.ParamByName('cnomeperfil').asString :=
      DeltaDS.FieldByName('cperfil').asString;

      QRY_EXCLUIPERFIL.ExecSQL;
    end;

end;

end.


