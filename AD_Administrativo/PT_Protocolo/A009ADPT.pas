unit A009ADPT;

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
  TFRM_A009ADPT = class(TForm)
    Panel2: TPanel;
    SpeedButton4: TSpeedButton;
    SpeedButton3: TSpeedButton;
    BTN_PESQUISAR: TSpeedButton;
    SpeedButton1: TSpeedButton;
    BTN_SAIR: TSpeedButton;
    SpeedButton7: TSpeedButton;
    SpeedButton8: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton9: TSpeedButton;
    BTN_INCLUIR: TSpeedButton;
    LMDGroupBox1: TLMDGroupBox;
    LMDGroupBox3: TLMDGroupBox;
    Label24: TLabel;
    Label9: TLabel;
    RxDBComboEdit1: TRxDBComboEdit;
    DBEdit6: TDBEdit;
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
    Label32: TLabel;
    ComboEdit2: TComboEdit;
    DBEdit7: TDBEdit;
    DBEdit10: TDBEdit;
    DBEdit12: TDBEdit;
    DBEdit15: TDBEdit;
    DBEdit16: TDBEdit;
    DBEdit19: TDBEdit;
    DBEdit22: TDBEdit;
    DBEdit33: TDBEdit;
    DBEdit35: TDBEdit;
    DBEdit36: TDBEdit;
    DBEdit37: TDBEdit;
    LMDPanelFill1: TLMDPanelFill;
    SpeedButton13: TSpeedButton;
    SpeedButton16: TSpeedButton;
    DBGrid1: TDBGrid;
    procedure BTN_SAIRClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRM_A009ADPT: TFRM_A009ADPT;

implementation

uses TelaPrin ;

{$R *.DFM}

procedure TFRM_A009ADPT.BTN_SAIRClick(Sender: TObject);
begin
   close ;
end;

procedure TFRM_A009ADPT.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

end.




