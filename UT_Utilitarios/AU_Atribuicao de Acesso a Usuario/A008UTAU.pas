unit A008UTAU;

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
  RzListVw, Grids, DBGrids, PageControlEx, Db, DBClient, Ora, Provider,
  OraProvider;


type
  TFRM_A008UTAU = class(TForm)
    LMDGroupBox2: TLMDGroupBox;
    BTN_ADITEM: TSpeedButton;
    BTN_RENTODOS: TSpeedButton;
    BTN_RENITEM: TSpeedButton;
    BTN_ADDTODOS: TSpeedButton;
    LMDPanelFill5: TLMDPanelFill;
    LMDPanelFill1: TLMDPanelFill;
    DBG_APLIC2: TDBGrid;
    DBG_APLIC1: TDBGrid;
    ImageList1: TImageList;
    BTN_CONFIRMAR: TBitBtn;
    BTN_CANCELAR: TBitBtn;
    Label3: TLabel;
    EDT_CNOMEUSU: TEdit;
    CDS_057: TClientDataSet;
    CDS_APLSYS: TClientDataSet;
    OP_057: TOraProvider;
    OP_APLSYS: TOraProvider;
    DTS_057: TOraDataSource;
    DTS_APLSYS: TOraDataSource;
    CDS_APLSYSCNOMEUNIT: TStringField;
    CDS_APLSYSCDESCAPLI: TStringField;
    CDS_APLSYSCNOMEBMP: TStringField;
    CDS_APLSYSCNOMEFORM: TStringField;
    CDS_APLSYSCSHOWFORM: TStringField;
    CDS_APLSYSCITENSMENU: TStringField;
    CDS_APLSYSCTITAPLIC: TStringField;
    CDS_APLSYSCCATEGORIA: TStringField;
    CDS_APLSYSNIMGSAIDA: TIntegerField;
    CDS_APLSYSNIDTBL_A: TFloatField;
    CDS_APLSYSNIDTBL_G: TFloatField;
    CDS_APLSYSNAPLICAUX: TIntegerField;
    CDS_APLSYSNIDTBL_PB: TFloatField;
    CDS_057NIDTBL_UPA: TFloatField;
    CDS_057NIDTBL_UP: TFloatField;
    CDS_057NIDTBL_A: TFloatField;
    CDS_057NIDTBL_U: TFloatField;
    CDS_057CPERFIL: TStringField;
    CDS_057CDESCAPLI: TStringField;
    CDS_057NIDTBL_PB: TFloatField;
    CDS_APLSYSCNOMEPER: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBG_APLIC2DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBG_APLIC2DblClick(Sender: TObject);
    procedure BTN_CANCELARClick(Sender: TObject);
    procedure BTN_CONFIRMARClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DBG_APLIC1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure BTN_ADITEMClick(Sender: TObject);
    procedure BTN_RENITEMClick(Sender: TObject);
    procedure BTN_RENTODOSClick(Sender: TObject);
    procedure BTN_ADDTODOSClick(Sender: TObject);
  private
    { Private declarations }
  public
     nPerfilUsuario : integer;
    { Public declarations }
  end;

var
  FRM_A008UTAU: TFRM_A008UTAU;

implementation

uses MPLCtrl, UVariaveis, DMCTRL, CtrlForms, D008UTAU, D002UTAU, A002UTAU;


{$R *.DFM}

procedure TFRM_A008UTAU.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  {Fecha os CDS e Tira da Memoria a Aplicação}
  CDS_057.Close;
  CDS_APLSYS.Close;
  Action:= oControlForms.Saidas(Self,[DTM_A008UTAU],DTM_A008UTAU.DTS_057.DataSet);
end;

procedure TFRM_A008UTAU.DBG_APLIC2DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  {Pinta linhas do Grid}
  oMetodos.ColorGrid(Sender,Rect,DataCol,Column,State);
  {Pinta Figura na Célula}
  if  Column.FieldName = 'CFIGURA' then
    begin
      DBG_APLIC2.Canvas.FillRect(Rect);
      ImageList1.Draw(DBG_APLIC2.Canvas,Rect.Left+8,Rect.Top+1,0);
    end;
end;

procedure TFRM_A008UTAU.DBG_APLIC2DblClick(Sender: TObject);
begin
    {Verifica na linha selecionada a Celula numero 1 (CFIGURA)}
    if DBG_APLIC2.SelectedRows.CurrentRowSelected  and
      (DBG_APLIC2.SelectedIndex = 1) then
      begin
        Application.CreateForm(TDTM_A002UTAU,DTM_A002UTAU);
        Application.CreateForm(TFRM_A002UTAU,FRM_A002UTAU);
        FRM_A002UTAU.EDT_CDESCAPLI.Text :=
        CDS_057.FieldByName('cdescapli').AsString;
        FRM_A002UTAU.nQry_042 := CDS_057.FieldByName('nidtbl_a').AsInteger;
        FRM_A002UTAU.nQry_053 := CDS_057.FieldByName('nidtbl_upa').AsInteger;
        oControlForms.AtivaForm('FRM_A002UTAU',shModal,nil);
      end;
end;

procedure TFRM_A008UTAU.BTN_CANCELARClick(Sender: TObject);
begin
  {Cancela as Ações dos CDS e Fecha Aplicação}
  CDS_057.CancelUpdates;
  CDS_APLSYS.CancelUpdates;
  Close;
end;

procedure TFRM_A008UTAU.BTN_CONFIRMARClick(Sender: TObject);
begin
  {Com o CDS_057 Usuario/Perfil/Aplicação}
  with CDS_057 do
    begin
      First;
      while (not Eof) do
        begin
          {Se tem valor ZERO é uma aplicação NOVA para um perfil de usuario}
          if FieldByName('nidtbl_upa').AsInteger = 0 then
            begin
              {Localiza a aplicação na TBL_A}
              DTM_A008UTAU.QRY_041.Locate('nidtbl_a',
              FieldByName('nidtbl_a').AsInteger,[]);
              {Tenta localizar o Usuario/Perfil}
              if DTM_A008UTAU.QRY_055.Locate('nidtbl_u;nidtbl_pb',VarArrayOf([
                 nRetornoObjeto,DTM_A008UTAU.QRY_041.FieldByName('nidtbl_pb').Value]),[]) then
                {Edita registro do CDS_057 TBL_UPA}
              Edit;
              {Passa valores aos campos}
              FieldByName('nidtbl_up').AsInteger :=
              DTM_A008UTAU.QRY_055.FieldByName('nidtbl_up').AsInteger;
              FieldByName('nidtbl_a').AsInteger :=
              DTM_A008UTAU.QRY_041.FieldByName('nidtbl_a').AsInteger;
              FieldByName('nidtbl_u').AsInteger := nRetornoObjeto;
              {Grava}
              Post;
            end;
          Next;
        end;
      {Inicia uma Transação no Banco}
      DMControle.Conexao.StartTransaction;
      try
        {Aplica as modificações na TBL_UPA}
        CDS_057.ApplyUpdates(-1);
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
  {Fecha a Aplicação}
  Close;
end;

procedure TFRM_A008UTAU.FormShow(Sender: TObject);
begin
  if not Acesso(nMatricula,'A008UTAU',DTM_A008UTAU) then
    close;
  FRM_A008UTAU.OnShow := nil;
 {é atribuido ao OnShow do Form o valor nil para que o mesmo seja executado apenas uma vez}
 {pelo fato que se outra aplicação for chamada pela tecla F3, e ao retornar da aplicação que foi chamada pela tecla}
 {o evento OnShow deste form não acontecerá, ou seja não será executado, para permanecer o mesmo status da aplicação}
 {quando o F3 foi chamado}
 DTM_A008UTAU.QRY_057.ParamByName('nidtbl_up').AsInteger := nPerfilUsuario;
 DTM_A008UTAU.QRY_057.ExecSQL;
 LMDPanelFill5.Caption := LMDPanelFill5.Caption +
 Trim(DTM_A008UTAU.QRY_APLSYS.FieldByName('CNOMEPER').AsString);
 CDS_057.Open;
 CDS_APLSYS.Open;
end;

procedure TFRM_A008UTAU.DBG_APLIC1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  {Pinta linhas do Grid}
  oMetodos.ColorGrid(Sender,Rect,DataCol,Column,State);
end;

procedure TFRM_A008UTAU.BTN_ADITEMClick(Sender: TObject);
begin
  with DBG_APLIC1.DataSource.DataSet do
    begin
      {desabilita controle visuais na origem}
      DisableControls;
      {Posiciona Tabela de origem}
      First;
      while not Eof do
        begin
          {Se o item estiver selecionado}
          if DBG_APLIC1.SelectedRows.CurrentRowSelected then
            begin
              {inclui um registro novo para um novo item}
              DTS_057.DataSet.Insert;
              {Adiciona campos e valores selecionados}
              DTS_057.DataSet.FieldByName('nidtbl_upa').AsInteger := 0;
              DTS_057.DataSet.FieldByName('nidtbl_up').AsInteger := 0;
              DTS_057.DataSet.FieldByName('nidtbl_u').AsInteger := nRetornoObjeto;
              DTS_057.DataSet.FieldByName('nidtbl_a').AsInteger :=
              DTS_APLSYS.DataSet.FieldByName('nidtbl_a').AsInteger;
              DTS_057.DataSet.FieldByName('nidtbl_pb').AsInteger :=
              DTS_APLSYS.DataSet.FieldByName('nidtbl_pb').AsInteger;
              DTS_057.DataSet.FieldByName('cdescapli').AsString :=
              DTS_APLSYS.DataSet.FieldByName('cdescapli').AsString;
              {Grava no destino}
              DTS_057.DataSet.Post;
            end;
          {Próximo Registro}
          Next;
        end;
      {Limpa seleção e deleta registros adicionados}
      DBG_APLIC1.SelectedRows.Delete;
      {Volta origem no primeiro registro}
      First;
      {Habilita controle visuais da origem}
      EnableControls;
    end;
end;

procedure TFRM_A008UTAU.BTN_RENITEMClick(Sender: TObject);
begin
  with DBG_APLIC2.DataSource.DataSet do
    begin
      {desabilita controle visuais na origem}
      DisableControls;
      {Posiciona Tabela de origem}
      First;
      while not Eof do
        begin
          {Se o item estiver selecionado}
          if DBG_APLIC2.SelectedRows.CurrentRowSelected then
            begin
              {inclui um registro novo para um novo item}
              DTS_APLSYS.DataSet.Insert;
              {Adiciona campos e valores selecionados}
              DTS_APLSYS.DataSet.FieldByName('nidtbl_a').AsInteger :=
              DTS_057.DataSet.FieldByName('nidtbl_a').AsInteger;
              DTS_APLSYS.DataSet.FieldByName('cdescapli').AsString :=
              DTS_057.DataSet.FieldByName('cdescapli').AsString;
              DTS_APLSYS.DataSet.FieldByName('nidtbl_pb').AsInteger :=
              DTS_057.DataSet.FieldByName('nidtbl_pb').AsInteger;
              {Grava no destino}
              DTS_APLSYS.DataSet.Post;
            end;
          {Próximo Registro}
          Next;
        end;
      {Desmarca seleção e delete registros selecionados}
      DBG_APLIC2.SelectedRows.Delete;
      {Volta origem no primeiro registro}
      First;
      {Habilita controle visuais da origem}
      EnableControls;
    end;
end;

procedure TFRM_A008UTAU.BTN_RENTODOSClick(Sender: TObject);
begin
  with DBG_APLIC2.DataSource.DataSet do
    begin
      {desabilita controle visuais na origem}
      DisableControls;
      {Posiciona Tabela de origem}
      First;
      {Seleciona todos}
      while not Eof do
        begin
          DBG_APLIC2.SelectedRows.CurrentRowSelected := true;
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

procedure TFRM_A008UTAU.BTN_ADDTODOSClick(Sender: TObject);
begin
  with DBG_APLIC1.DataSource.DataSet do
    begin
      {desabilita controle visuais na origem}
      DisableControls;
      {Posiciona Tabela de origem}
      First;
      {Seleciona todos}
      while not Eof do
        begin
          DBG_APLIC1.SelectedRows.CurrentRowSelected := true;
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

end.



