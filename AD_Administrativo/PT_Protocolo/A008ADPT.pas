unit A008ADPT;

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
  LMDSimplePanel, jpeg, LMDFill, ppDB, ppDBPipe, ppCtrls, ppVar, ppBands,
  ppStrtch, ppRichTx, ppPrnabl, ppClass, ppCache, ppComm, ppRelatv, ppProd,
  ppReport, ppViewr ;

type
  TFRM_A008ADPT = class(TForm)
    LMDGroupBox2: TLMDGroupBox;
    LMDPanelFill2: TLMDPanelFill;
    BTN_RETROCEDER1: TSpeedButton;
    BTN_AVANCAR1: TSpeedButton;
    DBGrid2: TDBGrid;
    Label24: TLabel;
    DED_CDESCRITRQ: TDBEdit;
    Label9: TLabel;
    DED_NNROPROT: TDBEdit;
    BTN_ULTIMOREG: TSpeedButton;
    BTN_PRIMEIROREG: TSpeedButton;
    Panel2: TPanel;
    BTN_IMPRIMIR: TSpeedButton;
    BTN_SAIR: TSpeedButton;
    BTN_AVANCAR: TSpeedButton;
    BTN_RETROCEDER: TSpeedButton;
    ppDetalhes: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppImage1: TppImage;
    ppDBText1: TppDBText;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppDetailBand1: TppDetailBand;
    ppLabel5: TppLabel;
    ppDBText3: TppDBText;
    DBP_Params: TppDBPipeline;
    DB_Detalhes: TppDBPipeline;
    ppLine1: TppLine;
    ppLabel9: TppLabel;
    ppLine2: TppLine;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    ppDBText5: TppDBText;
    ppLabel12: TppLabel;
    LBL_NNROPROT: TppLabel;
    LBL_CNOMEGRL: TppLabel;
    LBL_CDESCRITRQ: TppLabel;
    DED_CSITUAREQ: TDBEdit;
    Label1: TLabel;
    LBL_CSITUAREQ: TppLabel;
    LMDFill2: TLMDFill;
    LMDFill3: TLMDFill;
    EDT_CNOMEREQ: TEdit;
    EDT_CNOMEINTER: TEdit;
    ppLabel3: TppLabel;
    LBL_INTERESS: TppLabel;
    procedure BTN_SAIRClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure BTN_ULTIMOREGClick(Sender: TObject);
    procedure BTN_PRIMEIROREGClick(Sender: TObject);
    procedure BTN_RETROCEDER1Click(Sender: TObject);
    procedure BTN_AVANCAR1Click(Sender: TObject);
    procedure BTN_AVANCARClick(Sender: TObject);
    procedure BTN_RETROCEDERClick(Sender: TObject);
    procedure BTN_IMPRIMIRClick(Sender: TObject);
    procedure ppDetalhesBeforePrint(Sender: TObject);
    procedure ppDetalhesPreviewFormCreate(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    procedure MostraDetalhe;
    { Private declarations }
  public
    { Public declarations }
    lPesqProt: Boolean;
    lDetGuia: Boolean;

  end;

var
  FRM_A008ADPT: TFRM_A008ADPT;

implementation

uses TelaPrin, D008ADPT, D007ADPT, UVariaveis, MPLLib, MPLCtrl, CtrlForms,
  A007ADPT, DMCTRL, D002ADPT, A013ADPT, A015ADPT, D015ADPT ;

{$R *.DFM}

procedure TFRM_A008ADPT.BTN_SAIRClick(Sender: TObject);
begin
  close ;
end;

procedure TFRM_A008ADPT.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := oControlForms.Saidas(Self,[DTM_A008ADPT],nil);
  FRM_A008ADPT := nil;
end;

procedure TFRM_A008ADPT.MostraDetalhe;
var
  cSqlDetalhe,cIdReque,cIdInteres : string;
  nIdReq: Integer;

begin
  with DTM_A008ADPT do
    begin
      {if lDetGuia then
        begin
          QRY_CONSULREQ.ParamByName('nidcadreq').asInteger :=
          DTM_A015ADPT.QRY_152.FieldByName('nidcadreq').asInteger;
          QRY_CONSULREQ.ExecSQL;
          cIdReque := QRY_CONSULREQ.FieldByName('cidtbxurq').asString;
          QRY_CONSULINT.ParamByName('nidcadreq').asInteger :=
          DTM_A015ADPT.QRY_152.FieldByName('nidcadreq').asInteger;
          QRY_CONSULINT.ExecSQL;
          cIdInteres := QRY_CONSULINT.FieldByName('cidtbxurq').asString;
          nIdReq := DTM_A015ADPT.QRY_152.FieldByName('nidcadreq').asInteger;
          DED_NNROPROT.DataSource := DTM_A015ADPT.DTS_152;
          DED_CSITUAREQ.DataSource := DTM_A015ADPT.DTS_152;
          DED_CDESCRITRQ.DataSource := DTM_A015ADPT.DTS_152;
        end
      else
      if lPesqProt then
        begin
          cIdReque := FRM_A013ADPT.QRY_A151.FieldByName('cidtbxurq').AsString;
          cIdInteres := FRM_A013ADPT.QRY_A151.FieldByName('cidreq_inter').AsString;
          nIdReq := FRM_A013ADPT.QRY_A151.FieldByName('nidcadreq').AsInteger;
        end
      else
        begin
          cIdReque := DTM_A002ADPT.QRY_153_1.FieldByName('cidtbxurq').AsString;
          cIdInteres := DTM_A002ADPT.QRY_153_1.FieldByName('dat_idinter').AsString;
          nIdReq := DTM_A002ADPT.QRY_153_2.FieldByName('nidcadreq').asInteger;
          DED_NNROPROT.DataSource := DTM_A002ADPT.DTS_153_2;
          DED_CSITUAREQ.DataSource := DTM_A002ADPT.DTS_153_2;
          DED_CDESCRITRQ.DataField := '';
          DED_CDESCRITRQ.DataSource := DTM_A002ADPT.DTS_153_2;
          DED_CDESCRITRQ.DataField := 'LKP_TIPO';
        end;
      QRY_REQPROTO.ParamByName('cidtbxurq').asString := cIdReque;
      QRY_REQPROTO.ExecSQL;
      EDT_CNOMEREQ.Text := QRY_REQPROTO.FieldByName('cnome').asString;
      QRY_REQPROTO.ParamByName('cidtbxurq').asString := cIdInteres;
      QRY_REQPROTO.ExecSQL;
      EDT_CNOMEINTER.Text := QRY_REQPROTO.FieldByName('cnome').asString;
    end;}

      cSqlDetalhe := 'select tbxgtm.ciddestino, tbxgtm.ddtdestino, tbxulc.cdescriulc, cadreq.csituareq ' +
                     'from tbxgtm, taggtm, tbxulc, cadreq ' +
                     'where taggtm.nidcadreq = :nidcadreq  and ' +
                     'taggtm.nidtbxgtm = tbxgtm.nidtbxgtm and ' +
                     'tbxgtm.ciddestino = tbxulc.cidtbxulc  and ' +
                     'cadreq.nidcadreq = :nidcadreq ' +
                     'order by tbxgtm.ddtdestino desc';

      QRY_DETALHE.Close;
      QRY_DETALHE.SQL.Clear;
      QRY_DETALHE.SQL.Add(cSqlDetalhe);
      QRY_DETALHE.ParamByName('nidcadreq').AsInteger :=
      DTS_CABECLH.DataSet.FieldByName('nidcadreq').asInteger;
      QRY_DETALHE.Open;
      QRY_DETALHE.FindField('DDTDESTINO').Alignment := taCenter;
      TDateField(QRY_DETALHE.FindField('DDTDESTINO')).DisplayFormat := 'dd/mm/yyyy';
      QRY_DETALHE.First;
      QRY_CONSULREQ.ParamByName('nidcadreq').asInteger :=
      DTS_CABECLH.DataSet.FieldByName('nidcadreq').asInteger;
      QRY_CONSULREQ.ExecSQL;
      EDT_CNOMEREQ.Text := QRY_CONSULREQ.FieldByName('cnome').asString;
      QRY_CONSULINT.ParamByName('nidcadreq').asInteger :=
      DTS_CABECLH.DataSet.FieldByName('nidcadreq').asInteger;
      QRY_CONSULINT.ExecSQL;
      EDT_CNOMEINTER.Text := QRY_CONSULINT.FieldByName('cnome').asString;

    end;
end;

procedure TFRM_A008ADPT.FormShow(Sender: TObject);
begin
  if not Acesso(nMatricula,'A008ADPT',DTM_A008ADPT) then
    close;
  Botoes(['Btn_Cancelar','Btn_Gravar'],'FRM_A008ADPT',false);
  FRM_A008ADPT.OnShow := nil;
 {é atribuido ao OnShow do Form o valor nil para que o mesmo seja executado apenas uma vez}
 {pelo fato que se outra aplicação for chamada pela tecla F3, e ao retornar da aplicação que foi chamada pela tecla}
 {o evento OnShow deste form não acontecerá, ou seja não será executado, para permanecer o mesmo status da aplicação}
 {quando o F3 foi chamado}
  MostraDetalhe;
  DTM_A008ADPT.QRY_DETALHEAfterOpen(DTM_A008ADPT.QRY_DETALHE);
  DTM_A008ADPT.QRY_DETALHEAfterScroll(DTM_A008ADPT.QRY_DETALHE);
end;

procedure TFRM_A008ADPT.BTN_ULTIMOREGClick(Sender: TObject);
begin
 {Ultimo registro}
 DBGenerica(DTM_A008ADPT.DTS_DETALHE,'Conexao',0,4,nil,false);
end;

procedure TFRM_A008ADPT.BTN_PRIMEIROREGClick(Sender: TObject);
begin
 {Primeiro registro}
 DBGenerica(DTM_A008ADPT.DTS_DETALHE,'Conexao',0,1,nil,false);
end;

procedure TFRM_A008ADPT.BTN_RETROCEDER1Click(Sender: TObject);
begin
 {Retroceder registro}
 DBGenerica(DTM_A008ADPT.DTS_DETALHE,'Conexao',0,2,nil,false);
end;

procedure TFRM_A008ADPT.BTN_AVANCAR1Click(Sender: TObject);
begin
 {Avançar registro}
 DBGenerica(DTM_A008ADPT.DTS_DETALHE,'Conexao',0,3,nil,false);
end;

procedure TFRM_A008ADPT.BTN_AVANCARClick(Sender: TObject);
  var
    cIdReque, cIdInteres: String;
begin
 with DTM_A008ADPT do
   begin
     {if lDetGuia then
       begin
         DBGenerica(DTM_A015ADPT.DTS_152,'Conexao',0,3,nil,false);
         QRY_CONSULREQ.ParamByName('nidcadreq').asInteger :=
         DTM_A015ADPT.QRY_152.FieldByName('nidcadreq').asInteger;
         QRY_CONSULREQ.ExecSQL;
         cIdReque := QRY_CONSULREQ.FieldByName('cidtbxurq').asString;
         QRY_CONSULINT.ParamByName('nidcadreq').asInteger :=
         DTM_A015ADPT.QRY_152.FieldByName('nidcadreq').asInteger;
         QRY_CONSULINT.ExecSQL;
         cIdInteres := QRY_CONSULINT.FieldByName('cidtbxurq').asString;
         QRY_DETALHE.ParamByName('nidcadreq').AsInteger :=
         DTM_A015ADPT.QRY_152.FieldByName('nidcadreq').asInteger;
       end
     else
     if lPesqProt then
       begin
         DBGenerica(FRM_A013ADPT.DTS_A151,'Conexao',0,3,nil,false);
         QRY_DETALHE.ParamByName('nidcadreq').AsInteger :=
         FRM_A013ADPT.QRY_A151.FieldByName('nidcadreq').AsInteger;
         cIdReque := FRM_A013ADPT.QRY_A151.FieldByName('cidtbxurq').AsString;
         cIdInteres := FRM_A013ADPT.QRY_A151.FieldByName('cidreq_inter').AsString;
       end
     else
       begin
         DBGenerica(DTM_A002ADPT.DTS_153_2,'Conexao',0,3,nil,false);
         QRY_DETALHE.ParamByName('nidcadreq').AsInteger :=
         DTM_A002ADPT.QRY_153_2.FieldByName('nidcadreq').AsInteger;
         cIdReque := DTM_A002ADPT.QRY_153_1.FieldByName('cidtbxurq').AsString;
         cIdInteres := DTM_A002ADPT.QRY_153_1.FieldByName('dat_idinter').AsString;
       end;}
     DBGenerica(DTS_CABECLH,'Conexao',0,3,nil,false);
     QRY_CONSULREQ.ParamByName('nidcadreq').asInteger :=
     DTS_CABECLH.DataSet.FieldByName('nidcadreq').asInteger;
     QRY_CONSULREQ.ExecSQL;
     EDT_CNOMEREQ.Text := QRY_CONSULREQ.FieldByName('cnome').asString;
//     QRY_REQPROTO.ParamByName('cidtbxurq').asString := cIdInteres;
//     QRY_REQPROTO.ExecSQL;
     QRY_CONSULINT.ParamByName('nidcadreq').asInteger :=
     DTS_CABECLH.DataSet.FieldByName('nidcadreq').asInteger;
     QRY_CONSULINT.ExecSQL;
//     EDT_CNOMEINTER.Text := QRY_REQPROTO.FieldByName('cnome').asString;
     EDT_CNOMEINTER.Text := QRY_CONSULINT.FieldByName('cnome').asString;
     QRY_DETALHE.ParamByName('nidcadreq').AsInteger :=
     DTS_CABECLH.DataSet.FieldByName('nidcadreq').asInteger;
     QRY_DETALHE.ExecSQL;
     QRY_DETALHE.FindField('DDTDESTINO').Alignment := taCenter;
     TDateField(DTM_A008ADPT.QRY_DETALHE.FindField('DDTDESTINO')).DisplayFormat := 'dd/mm/yyyy';
  end;
end;

procedure TFRM_A008ADPT.BTN_RETROCEDERClick(Sender: TObject);
  var
    cIdReque, cIdInteres: String;
begin
 with DTM_A008ADPT do
   begin
{     if lDetGuia then
       begin
         DBGenerica(DTM_A015ADPT.DTS_152,'Conexao',0,2,nil,false);
         QRY_CONSULREQ.ParamByName('nidcadreq').asInteger :=
         DTM_A015ADPT.QRY_152.FieldByName('nidcadreq').asInteger;
         QRY_CONSULREQ.ExecSQL;
         cIdReque := QRY_CONSULREQ.FieldByName('cidtbxurq').asString;
         QRY_CONSULINT.ParamByName('nidcadreq').asInteger :=
         DTM_A015ADPT.QRY_152.FieldByName('nidcadreq').asInteger;
         QRY_CONSULINT.ExecSQL;
         cIdInteres := QRY_CONSULINT.FieldByName('cidtbxurq').asString;
         QRY_DETALHE.ParamByName('nidcadreq').AsInteger :=
         DTM_A015ADPT.QRY_152.FieldByName('nidcadreq').asInteger;
       end
     else
     if lPesqProt then
       begin
         DBGenerica(FRM_A013ADPT.DTS_A151,'Conexao',0,2,nil,false);
         QRY_DETALHE.ParamByName('nidcadreq').AsInteger :=
         FRM_A013ADPT.QRY_A151.FieldByName('nidcadreq').AsInteger;
         cIdReque := FRM_A013ADPT.QRY_A151.FieldByName('cidtbxurq').AsString;
         cIdInteres := FRM_A013ADPT.QRY_A151.FieldByName('cidreq_inter').AsString;
       end
     else
       begin
         DBGenerica(DTM_A002ADPT.DTS_153_2,'Conexao',0,2,nil,false);
         QRY_DETALHE.ParamByName('nidcadreq').AsInteger :=
         DTM_A002ADPT.QRY_153_2.FieldByName('nidcadreq').AsInteger;
         cIdReque := DTM_A002ADPT.QRY_153_1.FieldByName('cidtbxurq').AsString;
         cIdInteres := DTM_A002ADPT.QRY_153_1.FieldByName('dat_idinter').AsString;
       end;}
     DBGenerica(DTS_CABECLH,'Conexao',0,2,nil,false);
//     QRY_REQPROTO.ParamByName('cidtbxurq').asString := cIdReque;
//     QRY_REQPROTO.ExecSQL;
     QRY_CONSULREQ.ParamByName('nidcadreq').asInteger :=
     DTS_CABECLH.DataSet.FieldByName('nidcadreq').asInteger;
     QRY_CONSULREQ.ExecSQL;
// EDT_CNOMEREQ.Text := QRY_REQPROTO.FieldByName('cnome').asString;
     EDT_CNOMEREQ.Text := QRY_CONSULREQ.FieldByName('cnome').asString;
//     QRY_REQPROTO.ParamByName('cidtbxurq').asString := cIdInteres;
//     QRY_REQPROTO.ExecSQL;
     QRY_CONSULINT.ParamByName('nidcadreq').asInteger :=
     DTS_CABECLH.DataSet.FieldByName('nidcadreq').asInteger;
     QRY_CONSULINT.ExecSQL;
//     EDT_CNOMEINTER.Text := QRY_REQPROTO.FieldByName('cnome').asString;
     EDT_CNOMEINTER.Text := QRY_CONSULINT.FieldByName('cnome').asString;
     QRY_DETALHE.ParamByName('nidcadreq').AsInteger :=
     DTS_CABECLH.DataSet.FieldByName('nidcadreq').asInteger;
     QRY_DETALHE.ExecSQL;
     QRY_DETALHE.FindField('DDTDESTINO').Alignment := taCenter;
     TDateField(DTM_A008ADPT.QRY_DETALHE.FindField('DDTDESTINO')).DisplayFormat := 'dd/mm/yyyy';
  end;
end;


procedure TFRM_A008ADPT.BTN_IMPRIMIRClick(Sender: TObject);
begin
  ppDetalhes.Print;
end;

procedure TFRM_A008ADPT.ppDetalhesBeforePrint(Sender: TObject);
begin
  LBL_NNROPROT.Text := DED_NNROPROT.Text;
  LBL_CNOMEGRL.Text := EDT_CNOMEREQ.Text;
  LBL_INTERESS.Text := EDT_CNOMEINTER.Text;
  LBL_CDESCRITRQ.Text := DED_CDESCRITRQ.Text;
  LBL_CSITUAREQ.Text := DED_CSITUAREQ.Text;
end;

procedure TFRM_A008ADPT.ppDetalhesPreviewFormCreate(Sender: TObject);
begin
   ppDetalhes.PreviewForm.WindowState:= wsMaximized;
   TppViewer(ppDetalhes.PreviewForm.Viewer).ZoomSetting:= zsPageWidth;
end;

procedure TFRM_A008ADPT.FormCreate(Sender: TObject);
begin
  lPesqProt := false;
  lDetGuia := false;
end;

end.




