unit A015ADPT;

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
  TFRM_A015ADPT = class(TForm)
    GBX_PROTO: TLMDGroupBox;
    LMDPanelFill2: TLMDPanelFill;
    BTN_RETROCEDER1: TSpeedButton;
    BTN_AVANCAR1: TSpeedButton;
    DBGrid2: TDBGrid;
    BTN_DETALHE: TSpeedButton;
    Panel2: TPanel;
    BTN_SAIR: TSpeedButton;
    BTN_REQ: TSpeedButton;
    procedure BTN_SAIRClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure BTN_AVANCAR1Click(Sender: TObject);
    procedure BTN_RETROCEDER1Click(Sender: TObject);
    procedure BTN_REQClick(Sender: TObject);
    procedure BTN_DETALHEClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    cNumGuia : String;
    nIdGuia : Integer;
  end;

var
  FRM_A015ADPT: TFRM_A015ADPT;

implementation

uses MPLCtrl, UVariaveis, D015ADPT, A002ADPT, D002ADPT, DMCTRL, CtrlForms,
  A008ADPT, D008ADPT;


{$R *.DFM}

procedure TFRM_A015ADPT.BTN_SAIRClick(Sender: TObject);
begin
  close;
end;

procedure TFRM_A015ADPT.FormShow(Sender: TObject);
begin
 if not Acesso(nMatricula,'A015ADPT',DTM_A015ADPT) then
    close;
  if cNumGuia <> '' then
    GBX_PROTO.Caption := '  Guia Nº ' + cNumGuia + '  ';
  DTM_A015ADPT.QRY_152.ParamByName('nidtbxgtm').asInteger :=
  nIdGuia;
  DTM_A015ADPT.QRY_152.ExecSQL;
  FRM_A015ADPT.OnShow := nil;
 {é atribuido ao OnShow do Form o valor nil para que o mesmo seja executado apenas uma vez}
 {pelo fato que se outra aplicação for chamada pela tecla F3, e ao retornar da aplicação que foi chamada pela tecla}
 {o evento OnShow deste form não acontecerá, ou seja não será executado, para permanecer o mesmo status da aplicação}
 {quando o F3 foi chamado}
end;

procedure TFRM_A015ADPT.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 Action:= oControlForms.Saidas(Self,[DTM_A015ADPT],DTM_A015ADPT.DTS_152.DataSet);
end;

procedure TFRM_A015ADPT.FormCreate(Sender: TObject);
begin
  cNumGuia := '';
  nIdGuia := 0;
end;

procedure TFRM_A015ADPT.BTN_AVANCAR1Click(Sender: TObject);
begin
  DTM_A015ADPT.QRY_152.Next;
end;

procedure TFRM_A015ADPT.BTN_RETROCEDER1Click(Sender: TObject);
begin
  DTM_A015ADPT.QRY_152.Prior;
end;

procedure TFRM_A015ADPT.BTN_REQClick(Sender: TObject);
begin
  Application.CreateForm(TDTM_A002ADPT,DTM_A002ADPT);
  Application.CreateForm(TFRM_A002ADPT,FRM_A002ADPT);
  with DTM_A015ADPT, FRM_A002ADPT, DMControle do
    begin
      PrepareQryTemp('select cidtbxurq from tagreq where nidcadreq = ' +
      QRY_152.FieldByName('nidcadreq').asString + ' and cprincipal = ' + QuotedStr('S'));
      cIdRequerenteLocate := QryTemp.FieldByName('cidtbxurq').asString;
      QryTemp.Close;
      QryTemp.SQL.Clear;
      PrepareQryTemp('select cidtbxurq from tagitr where nidcadreq = ' +
      QRY_152.FieldByName('nidcadreq').asString + ' and cprincipal = ' + QuotedStr('S'));
      cIdInterLocate := QryTemp.FieldByName('cidtbxurq').asString;
      nNroProtLocate := QRY_152.FieldByName('nnroprot').asInteger;
      QryTemp.Close;
      QryTemp.Sql.Clear;
    end;
  oControlForms.AtivaForm('FRM_A002ADPT',shModal,nil);
end;

procedure TFRM_A015ADPT.BTN_DETALHEClick(Sender: TObject);
begin
  Application.CreateForm(TDTM_A008ADPT,DTM_A008ADPT);
  Application.CreateForm(TFRM_A008ADPT,FRM_A008ADPT);
  DTM_A008ADPT.DTS_CABECLH.DataSet :=
  DTM_A015ADPT.QRY_152;
  oControlForms.AtivaForm('FRM_A008ADPT',shModal,Nil);
end;

end.




