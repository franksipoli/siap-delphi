unit A001ADPT;

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
  LMDSimplePanel, jpeg ;

type
  TFRM_A001ADPT = class(TForm)
    Panel2: TPanel;
    BTN_PESQUISAR: TSpeedButton;
    BTN_SAIR: TSpeedButton;
    BTN_AVANCAR: TSpeedButton;
    BTN_RETROCEDER: TSpeedButton;
    BTN_EMSETQ: TSpeedButton;
    BTN_EMSREQ: TSpeedButton;
    BTN_LCTSOLI: TSpeedButton;
    BTN_ATUGTM: TSpeedButton;
    BTN_EMSGTM: TSpeedButton;
    BTN_CONREQ: TSpeedButton;
    LMDGroupBox2: TLMDGroupBox;
    LMDGroupBox3: TLMDGroupBox;
    Label24: TLabel;
    Label9: TLabel;
    DED_CNOMEGRL: TDBEdit;
    LMDGroupBox4: TLMDGroupBox;
    Label8: TLabel;
    Label12: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label19: TLabel;
    Label21: TLabel;
    Label25: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    Label36: TLabel;
    Label37: TLabel;
    CBE_NCEP: TComboEdit;
    DED_CNOMELOG: TDBEdit;
    DED_CNUMERO: TDBEdit;
    DED_CCOMPLEMEN: TDBEdit;
    DED_CNOMEBAI: TDBEdit;
    DED_CNOMELOC: TDBEdit;
    DED_CSIGLAUF: TDBEdit;
    DED_CDDD: TDBEdit;
    DED_CTELRES: TDBEdit;
    DED_CTELCELULA: TDBEdit;
    DED_CTELCOM: TDBEdit;
    DED_CEMAIL: TDBEdit;
    Label32: TLabel;
    LMDGroupBox1: TLMDGroupBox;
    LMDPanelFill1: TLMDPanelFill;
    BTN_RETROCEDER1: TSpeedButton;
    BTN_AVANCAR1: TSpeedButton;
    BTN_PRIMEIROREG1: TSpeedButton;
    BTN_ULTIMOREG1: TSpeedButton;
    DBGrid1: TDBGrid;
    BTN_DETALHES: TSpeedButton;
    CBE_CCPFCNPJ: TComboEdit;
    BTN_LCTSOLIANT: TSpeedButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure BTN_PESQUISARClick(Sender: TObject);
    procedure BTN_AVANCARClick(Sender: TObject);
    procedure BTN_RETROCEDERClick(Sender: TObject);
    procedure BTN_SAIRClick(Sender: TObject);
    procedure BTN_LCTSOLIClick(Sender: TObject);
    procedure BTN_PRIMEIROREG1Click(Sender: TObject);
    procedure BTN_RETROCEDER1Click(Sender: TObject);
    procedure BTN_AVANCAR1Click(Sender: TObject);
    procedure BTN_ULTIMOREG1Click(Sender: TObject);
    procedure BTN_DETALHESClick(Sender: TObject);
    procedure CBE_CCPFCNPJEnter(Sender: TObject);
    procedure CBE_CCPFCNPJKeyPress(Sender: TObject; var Key: Char);
    procedure CBE_CCPFCNPJExit(Sender: TObject);
    procedure CBE_CCPFCNPJKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BTN_EMSGTMClick(Sender: TObject);
    procedure BTN_EMSREQClick(Sender: TObject);
    procedure BTN_CONREQClick(Sender: TObject);
    procedure BTN_ATUGTMClick(Sender: TObject);
    procedure CBE_CCPFCNPJButtonClick(Sender: TObject);
    procedure BTN_EMSETQClick(Sender: TObject);
    procedure BTN_LCTSOLIANTClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
      cDigID: String;
      cMask: String;

  end;

var
  FRM_A001ADPT: TFRM_A001ADPT;

implementation

uses D001ADPT, MPLCtrl, UVariaveis, A002ADPT, D002ADPT, CtrlForms, MPLLib,
  A005ADPT, D005ADPT, A007ADPT, D007ADPT;


{$R *.DFM}

procedure TFRM_A001ADPT.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 Action:= oControlForms.Saidas(Self,[DTM_A001ADPT],DTM_A001ADPT.DTS_016.DataSet);
end;

procedure TFRM_A001ADPT.FormShow(Sender: TObject);
begin
  if not Acesso(nMatricula,'A001ADPT',DTM_A001ADPT) then
    close;
  DTM_A001ADPT.QRY_016AfterScroll(DTM_A001ADPT.QRY_016);
  DTM_A001ADPT.QRY_151AfterRefresh(DTM_A001ADPT.QRY_151);
  FRM_A001ADPT.OnShow := nil;
 {é atribuido ao OnShow do Form o valor nil para que o mesmo seja executado apenas uma vez}
 {pelo fato que se outra aplicação for chamada pela tecla F3, e ao retornar da aplicação que foi chamada pela tecla}
 {o evento OnShow deste form não acontecerá, ou seja não será executado, para permanecer o mesmo status da aplicação}
 {quando o F3 foi chamado}
end;

procedure TFRM_A001ADPT.BTN_PESQUISARClick(Sender: TObject);
begin
  Pesquisa(DTM_A001ADPT.Qry_016,true,'','');
end;

procedure TFRM_A001ADPT.BTN_AVANCARClick(Sender: TObject);
begin
   DBGenerica(DTM_A001ADPT.DTS_016,'Conexao',0,3,Nil,false);
end;

procedure TFRM_A001ADPT.BTN_RETROCEDERClick(Sender: TObject);
begin
 DBGenerica(DTM_A001ADPT.DTS_016,'Conexao',0,2,Nil,false);
end;

procedure TFRM_A001ADPT.BTN_SAIRClick(Sender: TObject);
begin
  close;
end;

procedure TFRM_A001ADPT.BTN_LCTSOLIClick(Sender: TObject);
begin
  //chama a aplicação de lançamento de solicitação
  Application.CreateForm(TDTM_A002ADPT,DTM_A002ADPT);
  Application.CreateForm(TFRM_A002ADPT,FRM_A002ADPT);
  with FRM_A002ADPT, DTM_A001ADPT do
    begin
      IdPessoa := QRY_016.FieldByName('nidcadgrl').asInteger;
      CpfCnpj := QRY_016.FieldByName('ccpfcnpj').asString;
      Nome := QRY_016.FieldByName('cnomegrl').asString;
      ProtAntigos := false; //indica se e lancamento de protocolos antigos
      oControlForms.AtivaForm('FRM_A002ADPT',shModal,nil);
      QRY_151.Refresh;
    end;
end;

procedure TFRM_A001ADPT.BTN_PRIMEIROREG1Click(Sender: TObject);
begin
  DTM_A001ADPT.DTS_151.DataSet.First;
end;

procedure TFRM_A001ADPT.BTN_RETROCEDER1Click(Sender: TObject);
begin
  DTM_A001ADPT.DTS_151.DataSet.Prior;
end;

procedure TFRM_A001ADPT.BTN_AVANCAR1Click(Sender: TObject);
begin
  DTM_A001ADPT.DTS_151.DataSet.Next;
end;

procedure TFRM_A001ADPT.BTN_ULTIMOREG1Click(Sender: TObject);
begin
  DTM_A001ADPT.DTS_151.DataSet.Last;
end;

procedure TFRM_A001ADPT.BTN_DETALHESClick(Sender: TObject);
begin
  Application.CreateForm(TDTM_A002ADPT,DTM_A002ADPT);
  Application.CreateForm(TFRM_A002ADPT,FRM_A002ADPT);
  with FRM_A002ADPT, DTM_A001ADPT do
    begin
      IdPessoa := QRY_016.FieldByName('nidcadgrl').asInteger;
      CpfCnpj := QRY_016.FieldByName('ccpfcnpj').asString;
      Nome := QRY_016.FieldByName('cnomegrl').asString;
      //nRequerimento := QRY_151.FieldByName('nidcadreq').asInteger;
      oControlForms.AtivaForm('FRM_A002ADPT',shModal,nil);
    end;

end;

procedure TFRM_A001ADPT.CBE_CCPFCNPJEnter(Sender: TObject);
begin
  cDigID := CBE_CCPFCNPJ.text;
  cMask := CBE_CCPFCNPJ.EditMask;
  CBE_CCPFCNPJ.EditMask := '';
  CBE_CCPFCNPJ.SelectAll;

end;

procedure TFRM_A001ADPT.CBE_CCPFCNPJKeyPress(Sender: TObject;
  var Key: Char);
begin
  {verifica se o caracter digitado é valido para um campo do tipo numerico}
  Key := ValEditNumerico(Key);
  if (Key in ['0'..'9']) and (CBE_CCPFCNPJ.EditMask <> '') then
    begin
      CBE_CCPFCNPJ.EditMask := '';
      CBE_CCPFCNPJ.Text := '' ;
    end;

end;

procedure TFRM_A001ADPT.CBE_CCPFCNPJExit(Sender: TObject);
begin
  DTM_A001ADPT.DTS_016.DataSet.Refresh;
  if not(DTM_A001ADPT.DTS_016.DataSet.Locate('ccpfcnpj',CBE_CCPFCNPJ.Text,[])) then
    MessageDlg('Cpf/Cnpj não cadastrado !',mtInformation,[mbOk],0);
end;

procedure TFRM_A001ADPT.CBE_CCPFCNPJKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = VK_ESCAPE then
    DTM_A001ADPT.QRY_016AfterScroll(DTM_A001ADPT.DTS_016.DataSet);

end;

procedure TFRM_A001ADPT.BTN_EMSGTMClick(Sender: TObject);
begin
  Application.CreateForm(TDTM_A005ADPT,DTM_A005ADPT);
  Application.CreateForm(TFRM_A005ADPT,FRM_A005ADPT);
  oControlForms.AtivaForm('FRM_A005ADPT',shModal,Nil);
end;

procedure TFRM_A001ADPT.BTN_EMSREQClick(Sender: TObject);
begin

  oControlForms.AtivaForm('FRM_A003ADPT',shModal,Nil);
end;

procedure TFRM_A001ADPT.BTN_CONREQClick(Sender: TObject);
begin
  oControlForms.AtivaForm('FRM_A007ADPT',shModal,Nil);
end;

procedure TFRM_A001ADPT.BTN_ATUGTMClick(Sender: TObject);
begin
  oControlForms.AtivaForm('FRM_A006ADPT',shModal,Nil);
end;

procedure TFRM_A001ADPT.CBE_CCPFCNPJButtonClick(Sender: TObject);
begin
  VerTeclas(VK_F2);
end;

procedure TFRM_A001ADPT.BTN_EMSETQClick(Sender: TObject);
begin
  oControlForms.AtivaForm('FRM_A004ADPT',shModal,Nil);
end;

procedure TFRM_A001ADPT.BTN_LCTSOLIANTClick(Sender: TObject);
begin
  //chama a aplicação de lançamento de solicitação
  Application.CreateForm(TDTM_A002ADPT,DTM_A002ADPT);
  Application.CreateForm(TFRM_A002ADPT,FRM_A002ADPT);
  with FRM_A002ADPT, DTM_A001ADPT do
    begin
      IdPessoa := QRY_016.FieldByName('nidcadgrl').asInteger;
      CpfCnpj := QRY_016.FieldByName('ccpfcnpj').asString;
      Nome := QRY_016.FieldByName('cnomegrl').asString;
      ProtAntigos := true;//indica se e lancamento de protocolos antigos
      oControlForms.AtivaForm('FRM_A002ADPT',shModal,nil);
      QRY_151.Refresh;
    end;

end;

end.




