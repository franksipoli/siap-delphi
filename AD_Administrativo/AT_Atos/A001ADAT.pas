unit A001ADAT;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  lmdcctrl, lmdctrl, StdCtrls, Mask, ToolEdit, Grids, DBGrids, RXDBCtrl,
  lmdstdcS, ExtCtrls, Buttons, ImgList, ComCtrls, lmdextcS, lmdeditb,
  lmdeditc, LMDEdit, RxLookup, DBCtrls, lmdbredt, RzTreeVw, RzListVw,
  lmdextcA, LMDShadowFill, LMDCustomPanelFill, LMDPanelFill,
  LMDGraphicControl, LMDBaseMeter, LMDCustomProgress, LMDProgress,
  LMDControl, LMDBaseControl, LMDBaseGraphicControl, LMDBaseLabel,
  LMDCustomSimpleLabel, LMDSimpleLabel, LMDCustomControl, LMDCustomPanel,
  LMDCustomBevelPanel, LMDCustomParentPanel, LMDCustomGroupBox, LMDGroupBox,
  Db, DBTables, AppEvnts, ActnList, LMDCustomComponent, LMDApplicationCtrl,
  LMDGlobalHotKey, LMDWndProcComponent, LMDMouseBaseCtrl,
  LMDMousePositioner, lmdformA, LMDCustomHint, LMDHint,
  LMDContainerComponent, LMDBaseDialog, LMDTipDlg, LMDCustomShapeHint,
  LMDMessageHint, RxDBComb, PageControlEx, Ora, MemDS, DBAccess, CurrEdit,
  OraScript, delmenu, DBClient, MConnect, SConnect,
  LMDSimplePanel, jpeg, LMDFill ;

type
  TFRM_A001ADAT = class(TForm)
    Panel2: TPanel;
    BTN_Alterar: TSpeedButton;
    BTN_Cancelar: TSpeedButton;
    BTN_LOCALIZAR: TSpeedButton;
    BTN_IMPRIMIR: TSpeedButton;
    BTN_SAIR: TSpeedButton;
    BTN_AVANCAR: TSpeedButton;
    BTN_RETROCEDER: TSpeedButton;
    BTN_Excluir: TSpeedButton;
    BTN_Gravar: TSpeedButton;
    DelSysMenuItems1: TDelSysMenuItems;
    SpeedButton10: TSpeedButton;
    SpeedButton11: TSpeedButton;
    BTN_Incluir: TSpeedButton;
    SpeedButton13: TSpeedButton;
    SpeedButton14: TSpeedButton;
    SpeedButton15: TSpeedButton;
    SpeedButton5: TSpeedButton;
    LMDGroupBox2: TLMDGroupBox;
    Label9: TLabel;
    Label17: TLabel;
    DBE_cNroAto: TDBEdit;
    Label6: TLabel;
    DBD_dDtCriacao: TDBDateEdit;
    Label8: TLabel;
    DBM_cSumula: TDBMemo;
    Label10: TLabel;
    DBM_CATRIBU: TDBMemo;
    Label11: TLabel;
    Label12: TLabel;
    DBD_dDtPublic: TDBDateEdit;
    Label13: TLabel;
    DBD_dDtEfeitos: TDBDateEdit;
    Label20: TLabel;
    DBL_nIdTbxTat: TRxDBLookupCombo;
    DBL_nIdTbxRsv: TRxDBLookupCombo;
    DBL_nIdTbxVpb: TRxDBLookupCombo;
    PGC_MvtAto: TPageControlEx;
    TBS_Concessao: TTabSheet;
    TBS_Revogacao: TTabSheet;
    LMDPanelFill2: TLMDPanelFill;
    IML_MvtAto: TImageList;
    LMDPanelFill1: TLMDPanelFill;
    LMDPanelFill4: TLMDPanelFill;
    BTN_PrimeiroReg: TSpeedButton;
    BTN_Retroceder2: TSpeedButton;
    BTN_Avancar2: TSpeedButton;
    BTN_UltimoReg: TSpeedButton;
    BTN_DetCcs: TSpeedButton;
    DBG_Ccs: TDBGrid;
    LMDPanelFill3: TLMDPanelFill;
    LMDPanelFill5: TLMDPanelFill;
    BTN_PrimeiroReg2: TSpeedButton;
    BTN_Retroceder3: TSpeedButton;
    BTN_Avancar3: TSpeedButton;
    BTN_UltimoReg2: TSpeedButton;
    BTN_DetRvg: TSpeedButton;
    DBG_Rvg: TDBGrid;
    DBE_nEdicao: TDBEdit;
    DBE_nPagEdicao: TDBEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    DBE_cNomeArq: TRxDBComboEdit;
    OpenDialog: TOpenDialog;
    procedure BTN_SAIRClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure BTN_LOCALIZARClick(Sender: TObject);
    procedure BTN_AVANCARClick(Sender: TObject);
    procedure BTN_RETROCEDERClick(Sender: TObject);
    procedure BTN_IncluirClick(Sender: TObject);
    procedure BTN_AlterarClick(Sender: TObject);
    procedure BTN_GravarClick(Sender: TObject);
    procedure BTN_CancelarClick(Sender: TObject);
    procedure BTN_ExcluirClick(Sender: TObject);
    procedure BTN_IMPRIMIRClick(Sender: TObject);
    procedure DBE_cNomeArqButtonClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }

  end;

var
  FRM_A001ADAT: TFRM_A001ADAT;

implementation

uses D001ADAT, MPLCtrl, UVariaveis, DMCTRL ;

{$R *.DFM}

procedure TFRM_A001ADAT.BTN_SAIRClick(Sender: TObject);
begin
   close ;
end;

procedure TFRM_A001ADAT.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := oControlForms.Saidas(Self,[DTM_A001ADAT],DTM_A001ADAT.DTS_069.DataSet);
end;

procedure TFRM_A001ADAT.FormShow(Sender: TObject);
begin
  if not Acesso(nMatricula,'A001ADAT',DTM_A001ADAT) then
    close;
  Botoes(['Btn_Cancelar','Btn_Gravar'],'FRM_A001ADAT',false);

  DTM_A001ADAT.QRY_069AfterScroll(DTM_A001ADAT.DTS_069.DataSet);

  FRM_A001ADAT.OnShow := nil;
 {é atribuido ao OnShow do Form o valor nil para que o mesmo seja executado apenas uma vez}
 {pelo fato que se outra aplicação for chamada pela tecla F3, e ao retornar da aplicação que foi chamada pela tecla}
 {o evento OnShow deste form não acontecerá, ou seja não será executado, para permanecer o mesmo status da aplicação}
 {quando o F3 foi chamado}
end;

procedure TFRM_A001ADAT.BTN_LOCALIZARClick(Sender: TObject);
begin
  Pesquisa(DTM_A001ADAT.QRY_069,true,'','');
end;

procedure TFRM_A001ADAT.BTN_AVANCARClick(Sender: TObject);
begin
   DBGenerica(DTM_A001ADAT.DTS_069,'Conexao',0,3,nil,false);
end;

procedure TFRM_A001ADAT.BTN_RETROCEDERClick(Sender: TObject);
begin
 DBGenerica(DTM_A001ADAT.DTS_069,'Conexao',0,2,nil,false);
end;

procedure TFRM_A001ADAT.BTN_IncluirClick(Sender: TObject);
begin
  DBL_nIdTbxTat.SetFocus;
  DBGenerica(DTM_A001ADAT.DTS_069,'Conexao',1,0,nil,false);
  DTM_A001ADAT.DTS_069.DataSet.FieldByName('nidcadato').asInteger:=0;
  Botoes(['Btn_Cancelar','Btn_Sair','Btn_Gravar'],'FRM_A001ADAT',true);
end;

procedure TFRM_A001ADAT.BTN_AlterarClick(Sender: TObject);
begin
  Botoes(['Btn_Cancelar','Btn_Gravar','Btn_Sair'],'Frm_A001ADAT',true);
  DBGenerica(DTM_A001ADAT.DTS_069,'Conexao',2,0,NIL,false);
end;

procedure TFRM_A001ADAT.BTN_GravarClick(Sender: TObject);
begin
  {if Trim(DBM_cSumula.Text) = '' then
    begin
      MessageDlg('Campo Sumula deve ser preenchido!',mtInformation,[mbOk],0);
      DBM_cSumula.SetFocus;
      exit;
    end;}
  if LiberadoGravacao(FRM_A001ADAT,DTM_A001ADAT.DTS_069) then
    begin
      PrepareQryTemp('select nidcadato from cadato where ' +
      'nidtbxtat ='+IntToStr(DBL_nIdTbxTat.KeyValue)+' and cnroato = ' + QuotedStr(DBE_cNroAto.Text) +
      ' and nidcadato <> ' + DTM_A001ADAT.QRY_069.FieldByName('nidcadato').asString);
      if not(DMControle.QryTemp.IsEmpty) then
        begin
          MessageDlg('Já existe um ato com mesmo tipo e nº de ato!',mtError,[mbOk],0);
          DMControle.QryTemp.Close;
          DMControle.QryTemp.SQL.Clear;
        end
      else
        begin
          DBGenerica(DTM_A001ADAT.DTS_069,'Conexao',4,0,NIL,false);
          if lResp then
            Botoes(['Btn_Gravar','Btn_Cancelar'],'Frm_A001ADAT',false);
        end;
    end;
end;

procedure TFRM_A001ADAT.BTN_CancelarClick(Sender: TObject);
begin
   DBGenerica(DTM_A001ADAT.DTS_069,'Conexao',3,0,NIL,false);
   Botoes(['Btn_Cancelar', 'Btn_Gravar'],'Frm_A001ADAT',false);
end;

procedure TFRM_A001ADAT.BTN_ExcluirClick(Sender: TObject);
begin
  DBGenerica(DTM_A001ADAT.DTS_069,'Conexao',5,0,NIL,false);
end;

procedure TFRM_A001ADAT.BTN_IMPRIMIRClick(Sender: TObject);
begin
  RelCadastro(DTM_A001ADAT.QRY_069,'Cadastro de Atos');
end;

procedure TFRM_A001ADAT.DBE_cNomeArqButtonClick(Sender: TObject);
begin
 if DTM_A001ADAT.DTS_069.DataSet.State in [dsInsert,dsEdit] then
   begin
     OpenDialog.InitialDir := DTM_A001ADAT.QRY_071.FieldByName('cpatharq').asString;
     if OpenDialog.Execute then
       DTM_A001ADAT.QRY_069.FieldByName('cnomearq').asString :=
       ExtractFileName(OpenDialog.FileName);
   end;
end;

end.




