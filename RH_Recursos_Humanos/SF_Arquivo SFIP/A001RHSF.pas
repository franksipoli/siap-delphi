unit A001RHSF;

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
  LMDMessageHint, RzLstBox, RzChkLst, Gauges, Mask, DBCtrls;


type
  TFRM_A001RHSF = class(TForm)
    Panel2: TPanel;
    BTN_INCLUIR: TSpeedButton;
    BTN_ALTERAR: TSpeedButton;
    BTN_GRAVAR: TSpeedButton;
    BTN_PESQUISAR: TSpeedButton;
    BTN_IMPRIMIR: TSpeedButton;
    BTN_SAIR: TSpeedButton;
    BTN_AVANCAR: TSpeedButton;
    BTN_RETROCEDER: TSpeedButton;
    BTN_CANCELAR: TSpeedButton;
    BTN_EXCLUIR: TSpeedButton;
    LMDGroupBox3: TLMDGroupBox;
    LMDGroupBox2: TLMDGroupBox;
    Label7: TLabel;
    Label8: TLabel;
    Label10: TLabel;
    LMDPanelFill1: TLMDPanelFill;
    Gauge1: TGauge;
    BitBtn1: TBitBtn;
    BitBtn5: TBitBtn;
    LMDPanelFill2: TLMDPanelFill;
    Gauge2: TGauge;
    SpeedButton1: TSpeedButton;
    OpenDialog1: TOpenDialog;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    DBEdit7: TDBEdit;
    DBEdit8: TDBEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    DBEdit9: TDBEdit;
    DBEdit10: TDBEdit;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label9: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    procedure BTN_SAIRClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRM_A001RHSF: TFRM_A001RHSF;

implementation

uses MPLLib, Login, TelaPrin;

{$R *.DFM}

procedure TFRM_A001RHSF.BTN_SAIRClick(Sender: TObject);
begin
  Close;
end;

procedure TFRM_A001RHSF.FormClose(Sender: TObject; var Action: TCloseAction);
begin
//  Action := Saidas(Sender,[NIL],NIL);
end;

procedure TFRM_A001RHSF.FormShow(Sender: TObject);
begin
//  Acesso(nMatricula,'FRM_A001RHSF',NIL);
//  Botoes(['Btn_Cancelar','Btn_Gravar'],'',False);
//  FRM_A001RHSF.OnShow := nil;
 {é atribuido ao OnShow do Form o valor nil para que o mesmo seja executado apenas uma vez}
 {pelo fato que se outra aplicação for chamada pela tecla F3, e ao retornar da aplicação que foi chamada pela tecla}
 {o evento OnShow deste form não acontecerá, ou seja não será executado, para permanecer o mesmo status da aplicação}
 {quando o F3 foi chamado}
end;

procedure TFRM_A001RHSF.SpeedButton1Click(Sender: TObject);
begin
  OpenDialog1.Execute;
end;

end.




