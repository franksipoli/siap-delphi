unit A004UTCO;

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
  LMDMessageHint, RzLstBox, RzChkLst, Gauges, ToolEdit, RXDBCtrl, RxDBComb,
  Mask, DBCtrls, RxLookup, Grids, DBGrids, A001UTCO, Db;


type
  TFRM_A004UTCO = class(TForm)
    Panel2: TPanel;
    Btn_Incluir: TSpeedButton;
    Btn_Alterar: TSpeedButton;
    Btn_Gravar: TSpeedButton;
    Btn_Localizar: TSpeedButton;
    Btn_Imprimir: TSpeedButton;
    BTN_SAIR: TSpeedButton;
    Btn_Avancar: TSpeedButton;
    Btn_Retroceder: TSpeedButton;
    Btn_Cancelar: TSpeedButton;
    Btn_Excluir: TSpeedButton;
    LMDGroupBox1: TLMDGroupBox;
    DBE_CNOMEOBJ: TDBEdit;
    DBE_CNOMECLA: TDBEdit;
    DBE_CCAPTION: TDBEdit;
    DBE_CHINT: TDBEdit;
    CBB_LVISIBLE: TRxDBComboBox;
    CBB_LENABLE: TRxDBComboBox;
    DBL_CNOMEBMP: TRxDBComboEdit;
    DLG_IMAGENS: TOpenDialog;
    CBB_LTRATADO: TRxDBComboBox;
    DBL_CNOMEUNIT: TRxDBLookupCombo;
    DBL_NIDTBL_D: TRxDBLookupCombo;
    DBL_CNOMECAMPO: TRxDBLookupCombo;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    LMDGroupBox2: TLMDGroupBox;
    DBG_OBJETOS: TDBGrid;
    DBC_CTIPOCUR: TRxDBComboEdit;
    CBB_LUPPERCASE: TRxDBComboBox;
    CBB_LCARINVALI: TRxDBComboBox;
    procedure BTN_SAIRClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure Btn_LocalizarClick(Sender: TObject);
    procedure Btn_AvancarClick(Sender: TObject);
    procedure Btn_RetrocederClick(Sender: TObject);
    procedure Btn_IncluirClick(Sender: TObject);
    procedure Btn_AlterarClick(Sender: TObject);
    procedure Btn_ExcluirClick(Sender: TObject);
    procedure Btn_GravarClick(Sender: TObject);
    procedure Btn_CancelarClick(Sender: TObject);
    procedure Btn_ImprimirClick(Sender: TObject);
    procedure DBC_CTIPOCURButtonClick(Sender: TObject);
    procedure DBL_CNOMEBMPButtonClick(Sender: TObject);
    procedure DBL_NIDTBL_DKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBL_CNOMECAMPOKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBL_CNOMEUNITKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRM_A004UTCO: TFRM_A004UTCO;

implementation

uses MPLCtrl, Login, TelaPrin, D004UTCO, UVariaveis, CtrlForms, uCursores;

{$R *.DFM}

procedure TFRM_A004UTCO.BTN_SAIRClick(Sender: TObject);
begin
  Close;
end; // TFRM_A004UTCO.BTN_SAIRClick

procedure TFRM_A004UTCO.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   Action:= oControlForms.Saidas(Self,[DTM_A004UTCO],DTM_A004UTCO.DTS_044.DataSet);
end; // TFRM_A004UTCO.FormClose

procedure TFRM_A004UTCO.FormShow(Sender: TObject);
begin
  Acesso(nMatricula,'A004UTCO', DTM_A004UTCO);
  Botoes(['Btn_Cancelar','Btn_Gravar'],'FRM_A004UTCO',False);
  FRM_A004UTCO.OnShow := nil;
  DLG_IMAGENS.InitialDir := cPathImg;
 {é atribuido ao OnShow do Form o valor nil para que o mesmo seja executado apenas uma vez}
 {pelo fato que se outra aplicação for chamada pela tecla F3, e ao retornar da aplicação que foi chamada pela tecla}
 {o evento OnShow deste form não acontecerá, ou seja não será executado, para permanecer o mesmo status da aplicação}
 {quando o F3 foi chamado}
end; // TFRM_A004UTCO.FormShow

procedure TFRM_A004UTCO.Btn_LocalizarClick(Sender: TObject);
begin
  {Pesquisa Registros cadastrados}
  Pesquisa(DTM_A004UTCO.QRY_044,true,'','','',false);
end;  // TFRM_A004UTCO.Btn_LocalizarClick

procedure TFRM_A004UTCO.Btn_AvancarClick(Sender: TObject);
begin
 {avança registro}
 DBGenerica(DTM_A004UTCO.DTS_044,'Conexao',0,3,DBG_OBJETOS,false);
end; // TFRM_A004UTCO.Btn_AvancarClick

procedure TFRM_A004UTCO.Btn_RetrocederClick(Sender: TObject);
begin
 {retrocede registro}
  DBGenerica(DTM_A004UTCO.DTS_044,'Conexao',0,2,DBG_OBJETOS,false);
end; // TFRM_A004UTCO.Btn_RetrocederClick

procedure TFRM_A004UTCO.Btn_IncluirClick(Sender: TObject);
begin
  {inclui um registro novo para uma nova UNIT}
  DBGenerica(DTM_A004UTCO.DTS_044,'Conexao',1,0,DBG_OBJETOS,false);

//  DTM_A004UTCO.DTS_044.DataSet.FieldByName('nidtbl_o').asInteger := 0;

  {trata os botões da aplicação}
  Botoes(['Btn_Cancelar','Btn_Gravar','Btn_Sair'],'FRM_A004UTCO',true);
  DBE_CNOMEOBJ.SetFocus;
end; // TFRM_A004UTCO.Btn_IncluirClick

procedure TFRM_A004UTCO.Btn_AlterarClick(Sender: TObject);
begin
  {trata os botões da aplicação}
  Botoes(['Btn_Cancelar','Btn_Gravar', 'Btn_Sair'],'FRM_A004UTCO',true);
  {coloca em estado de alteração o registro corrente}
  DBGenerica(DTM_A004UTCO.DTS_044,'Conexao',2,0,DBG_OBJETOS,false);
end; // TFRM_A004UTCO.Btn_AlterarClick

procedure TFRM_A004UTCO.Btn_ExcluirClick(Sender: TObject);
begin
  {exclui o registro corrente}
  DBGenerica(DTM_A004UTCO.DTS_044,'Conexao',5,0,DBG_OBJETOS,false);
end; //TFRM_A004UTCO.Btn_ExcluirClick

procedure TFRM_A004UTCO.Btn_GravarClick(Sender: TObject);
begin
// grava
  with DTM_A004UTCO do
    begin
      if LiberadoGravacao(FRM_A004UTCO,DTS_044) then
        begin
          if MessageDlg('Deseja Salvar Alterações?',mtConfirmation,[mbYes,mbNo],0) = mrYes then
            begin
              {Atualiza Valores de DBedits}
              if DTS_044.DataSet.State in [dsEdit,dsInsert] then
                QRY_044.UpdateRecord;
              {Grava no BD}
              DBGenerica(DTS_044,'Conexao',4,1,DBG_OBJETOS,false);
              {trata os botões da aplicação}
              Botoes(['Btn_Gravar','Btn_Cancelar'],'FRM_A004UTCO',false);
            end;
        end;
    end;
end; // TFRM_A004UTCO.Btn_GravarClick

procedure TFRM_A004UTCO.Btn_CancelarClick(Sender: TObject);
begin
  DBGenerica(DTM_A004UTCO.DTS_044,'Conexao',3,0,DBG_OBJETOS,false);
  {trata os botões da aplicação}
  Botoes(['Btn_Gravar','Btn_Cancelar'],'FRM_A004UTCO',false);
  {impede a edição do tabela atraves do grid}
  DBG_OBJETOS.Options := DBG_OBJETOS.Options - [dgEditing];
end;  // TFRM_A004UTCO.Btn_CancelarClick

procedure TFRM_A004UTCO.Btn_ImprimirClick(Sender: TObject);
begin
 {função Padrão de Impressão}
 RelCadastro(DTM_A004UTCO.QRY_044,'Cadastro de Objetos');
end;  // TFRM_A004UTCO.Btn_ImprimirClick

procedure TFRM_A004UTCO.DBC_CTIPOCURButtonClick(Sender: TObject);

begin
   Application.CreateForm(TFRM_CURSOR,FRM_CURSOR);
   if FRM_CURSOR.ShowModal = mrOk then
     DBC_CTIPOCUR.DataSource.DataSet.FieldByName('CTIPOCUR').Value :=
     IntToStr(StringToCursor(FRM_CURSOR.LST_Cursores.Items.Strings[FRM_CURSOR.LST_Cursores.ItemIndex]))+
     FRM_CURSOR.LST_Cursores.Items.Strings[FRM_CURSOR.LST_Cursores.ItemIndex];
end;

procedure TFRM_A004UTCO.DBL_CNOMEBMPButtonClick(Sender: TObject);
begin
  DLG_IMAGENS.Execute;
  DBL_CNOMEBMP.Text := ExtractFileName(DLG_IMAGENS.FileName);
end;

procedure TFRM_A004UTCO.DBL_NIDTBL_DKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if DTM_A004UTCO.DTS_044.DataSet.State in [dsEdit,dsInsert] then
    if (Key = VK_DELETE) or (Key = VK_BACK) then
      DTM_A004UTCO.DTS_044.DataSet.FieldByName('ncodcampo').value := null;
end;

procedure TFRM_A004UTCO.DBL_CNOMECAMPOKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if DTM_A004UTCO.DTS_044.DataSet.State in [dsEdit,dsInsert] then
    if (Key = VK_DELETE) or (Key = VK_BACK) then
      DTM_A004UTCO.DTS_044.DataSet.FieldByName('ccampopesq').value := null;

end;

procedure TFRM_A004UTCO.DBL_CNOMEUNITKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if DTM_A004UTCO.DTS_044.DataSet.State in [dsEdit,dsInsert] then
    if (Key = VK_DELETE) or (Key = VK_BACK) then
      DTM_A004UTCO.DTS_044.DataSet.FieldByName('cnomeunit').value := null;
end;

end.




