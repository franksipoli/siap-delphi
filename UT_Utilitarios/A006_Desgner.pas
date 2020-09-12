unit A006_Desgner;

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
  LMDSimplePanel ;

type
  TFRM_A006_Desgner = class(TForm)
    Panel2: TPanel;
    SpeedButton5: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton3: TSpeedButton;
    BTN_PESQUISAR: TSpeedButton;
    SpeedButton1: TSpeedButton;
    BTN_SAIR: TSpeedButton;
    SpeedButton7: TSpeedButton;
    SpeedButton8: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton9: TSpeedButton;
    DelSysMenuItems1: TDelSysMenuItems;
    SpeedButton10: TSpeedButton;
    SpeedButton11: TSpeedButton;
    SpeedButton12: TSpeedButton;
    SpeedButton13: TSpeedButton;
    SpeedButton14: TSpeedButton;
    SpeedButton15: TSpeedButton;
    LMDGroupBox2: TLMDGroupBox;
    Label4: TLabel;
    DBEdit6: TDBEdit;
    Label20: TLabel;
    LMDGroupBox4: TLMDGroupBox;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label17: TLabel;
    DBEdit2: TDBEdit;
    DBEdit8: TDBEdit;
    DBEdit9: TDBEdit;
    DBEdit13: TDBEdit;
    ComboEdit2: TComboEdit;
    Label24: TLabel;
    Edit2: TEdit;
    Label5: TLabel;
    DBEdit11: TDBEdit;
    LMDGroupBox3: TLMDGroupBox;
    Label33: TLabel;
    Label32: TLabel;
    DBEdit19: TDBEdit;
    Label15: TLabel;
    Label16: TLabel;
    Label25: TLabel;
    DBEdit12: TDBEdit;
    DBEdit15: TDBEdit;
    DBEdit16: TDBEdit;
    LMDGroupBox1: TLMDGroupBox;
    Label18: TLabel;
    Label19: TLabel;
    Label23: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    DBEdit3: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit17: TDBEdit;
    DBEdit18: TDBEdit;
    ComboEdit1: TComboEdit;
    Edit1: TEdit;
    DBEdit20: TDBEdit;
    DBEdit21: TDBEdit;
    Label34: TLabel;
    Label35: TLabel;
    Label36: TLabel;
    Label37: TLabel;
    Label38: TLabel;
    DBEdit22: TDBEdit;
    DBEdit23: TDBEdit;
    RxDBLookupCombo3: TRxDBLookupCombo;
    DBDateEdit3: TDBDateEdit;
    Label39: TLabel;
    Label40: TLabel;
    Label41: TLabel;
    DBDateEdit4: TDBDateEdit;
    DBEdit25: TDBEdit;
    RxDBComboEdit1: TRxDBComboEdit;
    Label2: TLabel;
    DBEdit1: TDBEdit;
    RxDBComboEdit2: TRxDBComboEdit;
    Label1: TLabel;
    DBEdit7: TDBEdit;
    Label6: TLabel;
    DBEdit10: TDBEdit;
    DBEdit4: TDBEdit;
    procedure BTN_SAIRClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRM_A006_Desgner: TFRM_A006_Desgner;

implementation

uses TelaPrin;

{$R *.DFM}

procedure TFRM_A006_Desgner.BTN_SAIRClick(Sender: TObject);
begin
   close ;
   Frm_TelaPrin.Frm_Display.RemoveForm(FRM_A005,false);
   Frm_TelaPrin.Pnl_Menu.Enabled := true;
   Frm_TelaPrin.Lbl_TituloAplicacao.Caption := 'Sistema Integrado de Administração Pública Municipal';
end;

procedure TFRM_A006_Desgner.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TFRM_A006_Desgner.FormCreate(Sender: TObject);
begin
   Frm_TelaPrin.Lbl_TituloAplicacao.Caption := 'Cadastro Geral de Pessoas';
end;

end.




