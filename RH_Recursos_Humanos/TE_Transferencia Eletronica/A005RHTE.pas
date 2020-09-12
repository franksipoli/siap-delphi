unit A005RHTE;

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
  LMDSimplePanel, jpeg, LMDBaseGraphicButton, LMDCustomSpeedButton,
  LMDSpeedButton, LMDFill, Gauges, LMDCustomLabel, LMDLabel ;

type
  TFRM_A005RHTE = class(TForm)
    DelSysMenuItems1: TDelSysMenuItems;
    BitBtn1: TBitBtn;
    LMDLabel1: TLMDLabel;
    LMDLabel2: TLMDLabel;
    LMDLabel3: TLMDLabel;
    LMDLabel4: TLMDLabel;
    LMDLabel5: TLMDLabel;
    LMDLabel6: TLMDLabel;
    LMDLabel7: TLMDLabel;
    LMDLabel8: TLMDLabel;
    DBT_CNOMFUN: TDBText;
    DBT_CDESCRICAO: TDBText;
    DBT_CCTLORI: TDBText;
    DBT_DAT_DESCRICAO: TDBText;
    DBT_NBCOPGT: TDBText;
    DBT_NAGEPGT: TDBText;
    DBT_NCTAPGT: TDBText;
    DBT_NVLRLIQ: TDBText;
    LMDSimplePanel4: TLMDSimplePanel;
    LMDSimplePanel5: TLMDSimplePanel;
    LMDSimplePanel1: TLMDSimplePanel;
    LMDSimplePanel2: TLMDSimplePanel;
    LMDLabel9: TLMDLabel;
    DBT_CNOSSONRO: TDBText;
    LMDLabel10: TLMDLabel;
    DBT_NMESREF: TDBText;
    LMDLabel11: TLMDLabel;
    DBT_DDATAPAGTO: TDBText;
    procedure BTN_SAIRClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BitBtn1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    nIdCadrem : Integer;
  end;

var
  FRM_A005RHTE: TFRM_A005RHTE;

implementation

uses A001RHTE, D005RHTE, MPLCtrl, CtrlForms, UVariaveis ;

{$R *.DFM}

procedure TFRM_A005RHTE.BTN_SAIRClick(Sender: TObject);
begin
   close ;
end;

procedure TFRM_A005RHTE.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:= oControlForms.Saidas(Self,[DTM_A005RHTE],DTM_A005RHTE.QRY_062);
end;

procedure TFRM_A005RHTE.BitBtn1Click(Sender: TObject);
begin
   Close ;
end;

procedure TFRM_A005RHTE.FormShow(Sender: TObject);
begin
  if Acesso(nMatricula,'A005RHTE',DTM_A005RHTE) then
    close;

  DTM_A005RHTE.QRY_062.ParamByName('nidcadrem').asInteger := nIdCadrem;
  DTM_A005RHTE.QRY_062.ExecSql;

  FRM_A005RHTE.OnShow := nil;
 {é atribuido ao OnShow do Form o valor nil para que o mesmo seja executado apenas uma vez}
 {pelo fato que se outra aplicação for chamada pela tecla F3, e ao retornar da aplicação que foi chamada pela tecla}
 {o evento OnShow deste form não acontecerá, ou seja não será executado, para permanecer o mesmo status da aplicação}
 {quando o F3 foi chamado}
end;

end.




