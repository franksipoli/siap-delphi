unit A001UTAU;

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
  DBClient, MPLCtrl, ppDB, ppDBPipe, ppBands, ppClass, ppReport, ppStrtch,
  ppSubRpt, ppCtrls, ppVar, ppPrnabl, ppCache, ppComm, ppRelatv, ppProd,
  ppViewr, Ora, LMDStaticText;


type
  TFRM_A001UTAU = class(TForm)
    Panel2: TPanel;
    BTN_PERFIL: TSpeedButton;
    BTN_IMPRIMIR: TSpeedButton;
    BTN_SAIR: TSpeedButton;
    BTN_EQUIVALE: TSpeedButton;
    Rpt_RelAcesso: TppReport;
    ppHeaderBand1: TppHeaderBand;
    Shp_Titul: TppShape;
    Db_Razao: TppDBText;
    Lbl_Pag: TppLabel;
    Var_NumPag: TppSystemVariable;
    Lbl_Aplic: TppLabel;
    Lbl_Data: TppLabel;
    ppSystemVariable2: TppSystemVariable;
    Lbl_Hora: TppLabel;
    ppSystemVariable3: TppSystemVariable;
    Lbl_RelTiul: TppLabel;
    ppLine1: TppLine;
    ppLine2: TppLine;
    ppLabel1: TppLabel;
    ppLabel3: TppLabel;
    LBL_CNOMEUSU: TppLabel;
    ppLabel2: TppLabel;
    ppDetailBand1: TppDetailBand;
    ppSubReport1: TppSubReport;
    ppChildReport1: TppChildReport;
    ppDetailBand2: TppDetailBand;
    ppDBText2: TppDBText;
    ppSummaryBand1: TppSummaryBand;
    ppFooterBand1: TppFooterBand;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppDBText1: TppDBText;
    ppGroupFooterBand1: TppGroupFooterBand;
    DBP_RelaAcessos: TppDBPipeline;
    DBP_Parametros: TppDBPipeline;
    DBP_RelAcessoppField1: TppField;
    DBP_RelAcessoppField2: TppField;
    DBP_RelAcessoppField3: TppField;
    DBP_RelAcessoppField4: TppField;
    DBP_RelAcessoppField5: TppField;
    DBP_RelAcessoppField6: TppField;
    DBP_RelAcessoppField7: TppField;
    DBP_RelAcessoppField8: TppField;
    DBP_RelAcessoppField9: TppField;
    DBP_RelAcessoppField10: TppField;
    DBP_RelAcessoppField11: TppField;
    DBP_RelAcessoppField12: TppField;
    DBP_RelAcessoppField13: TppField;
    DBP_RelAcessoppField14: TppField;
    DBP_RelAcessoppField15: TppField;
    DBP_RelAcessoppField16: TppField;
    DBP_RelAcessoppField17: TppField;
    DBP_RelAcessoppField18: TppField;
    DBP_RelAcessoppField19: TppField;
    DBP_RelAcessoppField20: TppField;
    DBP_RelAcessoppField21: TppField;
    STE_APLIC: TStaticText;
    STE_PERFILBASE: TStaticText;
    STE_EQUIV: TStaticText;
    STE_ACAO: TStaticText;
    STE_STATUS: TStaticText;
    SRE_CAMPO: TStaticText;
    STE_TRATAMEN: TStaticText;
    STE_ORDAPLIC: TLMDStaticText;
    STE_ORDPERFIL: TLMDStaticText;
    STE_ORDEQUIV: TLMDStaticText;
    STE_ORDACAO: TLMDStaticText;
    STE_ORDSTAT: TLMDStaticText;
    STE_ORDCAMP: TLMDStaticText;
    STE_ORDTRATAMEN: TLMDStaticText;
    LMDPanelFill1: TLMDPanelFill;
    BTN_RETROCEDER1: TSpeedButton;
    BTN_AVANCAR1: TSpeedButton;
    BTN_APLICACAO: TSpeedButton;
    LMDPanelFill4: TLMDPanelFill;
    BTN_RETROCEDER4: TSpeedButton;
    BTN_AVANCAR4: TSpeedButton;
    BTN_CAMPOS: TSpeedButton;
    DBG_ACESSO2: TDBGrid;
    LMDPanelFill2: TLMDPanelFill;
    BTN_RETROCEDER2: TSpeedButton;
    BTN_AVANCAR2: TSpeedButton;
    BTN_ACOES: TSpeedButton;
    DBG_ACAO: TDBGrid;
    DBG_APLIC: TDBGrid;
    LMDGroupBox3: TLMDGroupBox;
    procedure BTN_SAIRClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BTN_APLICACAOClick(Sender: TObject);
    procedure BTN_PERFILClick(Sender: TObject);
    procedure BTN_EQUIVALEClick(Sender: TObject);
    procedure BTN_CAMPOSClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BTN_RETROCEDER1Click(Sender: TObject);
    procedure BTN_AVANCAR1Click(Sender: TObject);
    procedure BTN_RETROCEDER2Click(Sender: TObject);
    procedure BTN_AVANCAR2Click(Sender: TObject);
    procedure BTN_RETROCEDER4Click(Sender: TObject);
    procedure BTN_AVANCAR4Click(Sender: TObject);
    procedure Rpt_RelAcessoPreviewFormCreate(Sender: TObject);
    procedure BTN_IMPRIMIRClick(Sender: TObject);
    procedure BTN_ACOESClick(Sender: TObject);
    procedure STE_APLICClick(Sender: TObject);
    procedure STE_PERFILBASEClick(Sender: TObject);
    procedure STE_EQUIVClick(Sender: TObject);
    procedure STE_ACAOClick(Sender: TObject);
    procedure STE_STATUSClick(Sender: TObject);
    procedure SRE_CAMPOClick(Sender: TObject);
    procedure STE_TRATAMENClick(Sender: TObject);
    procedure DBG_APLICMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
  private
    { Private declarations }
    procedure ChangeColor(Sender : TObject; MSG : Integer);
    procedure WndProc(Var Msg : TMessage);override;
  public
    { Public declarations }
    nIdUsuario : Integer;
    cCaptionForm : String;
  end;

var
  FRM_A001UTAU: TFRM_A001UTAU;

implementation

uses  UVariaveis, CtrlForms, D001UTAU, DMCTRL, A003UTAU, D003UTAU, D004UTAU,
  A004UTAU, A006UTAU, D006UTAU, A007UTAU, D007UTAU, A002UTAU, D002UTAU;

{$R *.DFM}

procedure TFRM_A001UTAU.BTN_SAIRClick(Sender: TObject);
begin
  Close;
end;

procedure TFRM_A001UTAU.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:= oControlForms.Saidas(Self,[DTM_A001UTAU],DTM_A001UTAU.DTS_APLUSU.DataSet);
end;

procedure TFRM_A001UTAU.BTN_APLICACAOClick(Sender: TObject);
  var
    nAplicUlt : Integer;
begin
  nRetornoObjeto :=
  DTM_A001UTAU.DTS_051.DataSet.FieldByName('nidtbl_u').Value;
  Application.CreateForm(TDTM_A003UTAU,DTM_A003UTAU);
  Application.CreateForm(TFRM_A003UTAU,FRM_A003UTAU);
  DTM_A003UTAU.QRY_TMP.ParamByName('nidtbl_u').AsInteger := nRetornoObjeto;
  FRM_A003UTAU.EDT_CNOMEUSU.Text :=
  DTM_A001UTAU.DTS_051.DataSet.FieldByName('cnomeusu').AsString;
  nAplicUlt := -1;
  FRM_A003UTAU.nUltApli := @nAplicUlt;
  FRM_A003UTAU.nIdApliIni := DTM_A001UTAU.DTS_APLUSU.DataSet.FieldByName('nidtbl_a').AsInteger;
  oControlForms.AtivaForm('FRM_A003UTAU',shModal,nil);
  DTM_A001UTAU.QRY_TMP.ParamByName('nidtbl_u').AsInteger := nRetornoObjeto;
  DTM_A001UTAU.QRY_TMP.ExecSQL;
  if nAplicUlt > -1 then
    begin
      DTM_A001UTAU.QRY_APLUSU.ExecSQL;
      DTM_A001UTAU.DTS_APLUSU.DataSet.Locate('nidtbl_a',nAplicUlt,[]);
    end;
  nRetornoObjeto := 0;
end;

procedure TFRM_A001UTAU.BTN_PERFILClick(Sender: TObject);
begin
  nRetornoObjeto :=
  DTM_A001UTAU.DTS_051.DataSet.FieldByName('nidtbl_u').Value;
  Application.CreateForm(TDTM_A004UTAU,DTM_A004UTAU);
  Application.CreateForm(TFRM_A004UTAU,FRM_A004UTAU);
  DTM_A004UTAU.QRY_TMP.ParamByName('nidtbl_u').AsInteger := nRetornoObjeto;
  FRM_A004UTAU.EDT_CNOMEUSU.Text :=
  DTM_A001UTAU.DTS_051.DataSet.FieldByName('cnomeusu').AsString;
  oControlForms.AtivaForm('FRM_A004UTAU',shModal,nil);
  DTM_A001UTAU.QRY_TMP.ParamByName('nidtbl_u').AsInteger := nRetornoObjeto;
  DTM_A001UTAU.QRY_TMP.ExecSQL;
  DTM_A001UTAU.QRY_APLUSU.ExecSQL;
  nRetornoObjeto := 0;
end;

procedure TFRM_A001UTAU.BTN_EQUIVALEClick(Sender: TObject);

begin
  nRetornoObjeto :=
  DTM_A001UTAU.DTS_051.DataSet.FieldByName('nidtbl_u').Value;
  Application.CreateForm(TDTM_A006UTAU,DTM_A006UTAU);
  Application.CreateForm(TFRM_A006UTAU,FRM_A006UTAU);
  FRM_A006UTAU.nCodigoUsuario := nRetornoObjeto;
  FRM_A006UTAU.EDT_CNOMEUSU.Text :=
  DTM_A001UTAU.DTS_051.DataSet.FieldByName('cnomeusu').AsString;
  oControlForms.AtivaForm('FRM_A006UTAU',shModal,nil);
  DTM_A001UTAU.QRY_TMP.ParamByName('nidtbl_u').AsInteger := nRetornoObjeto;
  DTM_A001UTAU.QRY_TMP.ExecSQL;
  DTM_A001UTAU.QRY_APLUSU.ExecSQL;
  nRetornoObjeto := 0;
end;

procedure TFRM_A001UTAU.BTN_CAMPOSClick(Sender: TObject);
  
begin
  nRetornoObjeto :=
  DTM_A001UTAU.DTS_051.DataSet.FieldByName('nidtbl_u').Value;
  Application.CreateForm(TDTM_A007UTAU,DTM_A007UTAU);
  DTM_A007UTAU.QRY_TEMP.ParamByName('NIDTBL_U').AsInteger := nRetornoObjeto;
  Application.CreateForm(TFRM_A007UTAU,FRM_A007UTAU);
  FRM_A007UTAU.nCodigoUsuario := nRetornoObjeto;
  oControlForms.AtivaForm('FRM_A007UTAU',shModal,nil);
  DTM_A001UTAU.QRY_TMP.ParamByName('nidtbl_u').AsInteger := nRetornoObjeto;
  DTM_A001UTAU.QRY_TMP.ExecSQL;
  DTM_A001UTAU.QRY_APLUSU.ExecSQL;

  DTM_A001UTAU.QRY_046.ExecSQL;
  //DTM_A001UTAU.DTS_046.DataSet.Locate('nidtbl_d',CampoRetorno,[]);

  nRetornoObjeto := 0;
end;

procedure TFRM_A001UTAU.FormShow(Sender: TObject);
begin
  if not Acesso(nMatricula,'A001UTAU',DTM_A001UTAU) then
    close;
  Botoes(['Btn_Cancelar','Btn_Gravar'],'FRM_A001UTAU',false);

  Caption := cCaptionForm;

  DTM_A001UTAU.QRY_051.ParamByName('nidtbl_u').AsInteger := nIdUsuario;

  DTM_A001UTAU.QRY_051.ExecSql;

  DTM_A001UTAU.QRY_APLUSU.ExecSql;

  FRM_A001UTAU.OnShow := nil;
 {é atribuido ao OnShow do Form o valor nil para que o mesmo seja executado apenas uma vez}
 {pelo fato que se outra aplicação for chamada pela tecla F3, e ao retornar da aplicação que foi chamada pela tecla}
 {o evento OnShow deste form não acontecerá, ou seja não será executado, para permanecer o mesmo status da aplicação}
 {quando o F3 foi chamado}
end;

procedure TFRM_A001UTAU.BTN_RETROCEDER1Click(Sender: TObject);
begin
  DBGenerica(DTM_A001UTAU.DTS_APLUSU,'Conexao',0,2);
end;

procedure TFRM_A001UTAU.BTN_AVANCAR1Click(Sender: TObject);
begin
  DBGenerica(DTM_A001UTAU.DTS_APLUSU,'Conexao',0,3);
end;

procedure TFRM_A001UTAU.BTN_RETROCEDER2Click(Sender: TObject);
begin
  DBGenerica(DTM_A001UTAU.DTS_042,'Conexao',0,2);
end;

procedure TFRM_A001UTAU.BTN_AVANCAR2Click(Sender: TObject);
begin
  DBGenerica(DTM_A001UTAU.DTS_042,'Conexao',0,3);
end;

procedure TFRM_A001UTAU.BTN_RETROCEDER4Click(Sender: TObject);
begin
  DBGenerica(DTM_A001UTAU.DTS_046,'Conexao',0,2);
end;

procedure TFRM_A001UTAU.BTN_AVANCAR4Click(Sender: TObject);
begin
  DBGenerica(DTM_A001UTAU.DTS_046,'Conexao',0,3);
end;

procedure TFRM_A001UTAU.Rpt_RelAcessoPreviewFormCreate(Sender: TObject);
begin
  Rpt_RelAcesso.PreviewForm.WindowState := wsMaximized;
  Rpt_RelAcesso.PreviewForm.BorderIcons :=
  Rpt_RelAcesso.PreviewForm.BorderIcons - [biMaximize,biMinimize];
  TppViewer(Rpt_RelAcesso.PreviewForm.Viewer).ZoomPercentage := 80;
end;

procedure TFRM_A001UTAU.BTN_IMPRIMIRClick(Sender: TObject);
begin
  DTM_A001UTAU.QRY_RELACESSO.ExecSql;
  Rpt_RelAcesso.Print;
end;

procedure TFRM_A001UTAU.BTN_ACOESClick(Sender: TObject);
  var
    nObjetoID : Integer;
    nidAplic : Integer;
begin
  Application.CreateForm(TDTM_A002UTAU,DTM_A002UTAU);
  Application.CreateForm(TFRM_A002UTAU,FRM_A002UTAU);
  FRM_A002UTAU.EDT_CDESCAPLI.Text :=
  DTM_A001UTAU.DTS_APLUSU.DataSet.FieldByName('cdescapli').asString;
  FRM_A002UTAU.nQry_042 := DTM_A001UTAU.DTS_APLUSU.DataSet.FieldByName('nidtbl_a').asInteger;
  FRM_A002UTAU.nQry_053 := DTM_A001UTAU.DTS_APLUSU.DataSet.FieldByName('nidtbl_upa').asInteger;
  FRM_A002UTAU.nIdUsuario := DTM_A001UTAU.QRY_051.FieldByName('nidtbl_u').asInteger;
  FRM_A002UTAU.cUsu := DTM_A001UTAU.QRY_051.FieldByName('cnomeusu').asString;
  nObjetoID := DTM_A001UTAU.DTS_042.DataSet.FieldByName('nidtbl_o').asInteger;
  nIdAplic := DTM_A001UTAU.DTS_APLUSU.DataSet.FieldByName('nidtbl_a').asInteger;
  FRM_A002UTAU.nIdObjetoIni := DTM_A001UTAU.DTS_042.DataSet.FieldByName('nidtbl_o').asInteger;
  oControlForms.AtivaForm('FRM_A002UTAU',shModal,nil);
  DTM_A001UTAU.QRY_TMP.ExecSql;
  DTM_A001UTAU.QRY_APLUSU.ExecSql;
  if nObjetoID > -1 then
    begin
      DTM_A001UTAU.DTS_APLUSU.DataSet.Locate('nidtbl_a',nIdAplic,[]);
      DTM_A001UTAU.DTS_042.DataSet.Locate('nidtbl_o',nObjetoID,[]);
    end;

end;

procedure TFRM_A001UTAU.ChangeColor(Sender: TObject; MSG: Integer);
begin
  If Sender is TStaticText Then
    begin
      If (Msg = CM_MOUSELEAVE) Then
        (Sender as TStaticText).Font.Color:=clWindowText;
      If (Msg = CM_MOUSEENTER) Then
        (Sender as TStaticText).Font.Color:=clBlue;
    end;
end;

procedure TFRM_A001UTAU.WndProc(var Msg: TMessage);
var I : Integer;
begin
   For I := 0 to ComponentCount -1 do
      If MSG.LParam = Longint(Components[I]) Then ChangeColor(Components[i],Msg.Msg);
   inherited WndProc(Msg);
end;

procedure TFRM_A001UTAU.STE_APLICClick(Sender: TObject);
begin
  STE_ORDPERFIL.Caption := '';
  STE_ORDPERFIL.Repaint;
  STE_ORDEQUIV.Caption := '';
  STE_ORDEQUIV.Repaint;
  MudaOrdenacao(DTM_A001UTAU.QRY_APLUSU,'tbl_tmp.cdescapli',STE_ORDAPLIC);
end;

procedure TFRM_A001UTAU.STE_PERFILBASEClick(Sender: TObject);
begin
  STE_ORDAPLIC.Caption := '';
  STE_ORDAPLIC.Repaint;
  STE_ORDEQUIV.Caption := '';
  STE_ORDEQUIV.Repaint;
  MudaOrdenacao(DTM_A001UTAU.QRY_APLUSU,'tbl_pb.cnomeper',STE_ORDPERFIL);
end;

procedure TFRM_A001UTAU.STE_EQUIVClick(Sender: TObject);
begin
  STE_ORDAPLIC.Caption := '';
  STE_ORDAPLIC.Repaint;
  STE_ORDPERFIL.Caption := '';
  STE_ORDPERFIL.Repaint;
  MudaOrdenacao(DTM_A001UTAU.QRY_APLUSU,'tbl_up.cperfil',STE_ORDEQUIV);
end;

procedure TFRM_A001UTAU.STE_ACAOClick(Sender: TObject);
begin
  STE_ORDSTAT.Caption := '';
  STE_ORDSTAT.Repaint;
  MudaOrdenacao(DTM_A001UTAU.QRY_042,'cfuncao',STE_ORDACAO);
end;

procedure TFRM_A001UTAU.STE_STATUSClick(Sender: TObject);
begin
  STE_ORDACAO.Caption := '';
  STE_ORDACAO.Repaint;
  MudaOrdenacao(DTM_A001UTAU.QRY_042,'DAT_Permissao',STE_ORDSTAT);
end;

procedure TFRM_A001UTAU.SRE_CAMPOClick(Sender: TObject);
begin
  STE_ORDTRATAMEN.Caption := '';
  STE_ORDTRATAMEN.Repaint;
  MudaOrdenacao(DTM_A001UTAU.QRY_046,'tbl_d.cdesccampo',STE_ORDCAMP);
end;

procedure TFRM_A001UTAU.STE_TRATAMENClick(Sender: TObject);
begin
  STE_ORDCAMP.Caption := '';
  STE_ORDCAMP.Repaint;
  MudaOrdenacao(DTM_A001UTAU.QRY_046,'tbl_ud.ctratament',STE_ORDTRATAMEN);
end;


procedure TFRM_A001UTAU.DBG_APLICMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  if Button = mbRight then
    ChamaPesqGrid(TOraQuery(TDBGrid(Sender).DataSource.DataSet),nil,TDBGrid(Sender).SelectedField.FieldName, TDBGrid(Sender).SelectedField.DisplayLabel);
end;

end.



