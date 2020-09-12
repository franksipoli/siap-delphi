unit A006RH;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, DBCtrls, StdCtrls, Mask, ToolEdit, RXDBCtrl, LMDCustomGroupBox,
  LMDGroupBox, ComCtrls, PageControlEx, Buttons, LMDCustomParentPanel,
  LMDCustomPanelFill, LMDPanelFill, Grids, DBGrids, LMDCustomControl,
  LMDCustomPanel, LMDCustomBevelPanel, LMDSimplePanel;

type
  TFRM_A006RH = class(TForm)
    LMDSimplePanel11: TLMDSimplePanel;
    DBGrid6: TDBGrid;
    LMDPanelFill4: TLMDPanelFill;
    SpeedButton34: TSpeedButton;
    SpeedButton35: TSpeedButton;
    SpeedButton36: TSpeedButton;
    SpeedButton37: TSpeedButton;
    PageControlEx5: TPageControlEx;
    TBS_FORMADERECEBER: TTabSheet;
    LMDSimplePanel12: TLMDSimplePanel;
    LMDGroupBox16: TLMDGroupBox;
    Label103: TLabel;
    Label119: TLabel;
    Label120: TLabel;
    Label121: TLabel;
    Label122: TLabel;
    Label123: TLabel;
    RxDBComboEdit23: TRxDBComboEdit;
    RxDBComboEdit26: TRxDBComboEdit;
    DBEdit79: TDBEdit;
    DBEdit82: TDBEdit;
    DBEdit83: TDBEdit;
    DBEdit89: TDBEdit;
    LMDGroupBox17: TLMDGroupBox;
    Label125: TLabel;
    Label126: TLabel;
    Label127: TLabel;
    Label128: TLabel;
    Label129: TLabel;
    DBEdit90: TDBEdit;
    DBEdit91: TDBEdit;
    DBEdit92: TDBEdit;
    DBEdit93: TDBEdit;
    DBEdit94: TDBEdit;
    TBS_BENEFICIARIOS: TTabSheet;
    LMDSimplePanel13: TLMDSimplePanel;
    LMDPanelFill5: TLMDPanelFill;
    SpeedButton30: TSpeedButton;
    SpeedButton31: TSpeedButton;
    SpeedButton32: TSpeedButton;
    DBGrid5: TDBGrid;
    PageControlEx6: TPageControlEx;
    TBS_VCTOBASE: TTabSheet;
    LMDSimplePanel10: TLMDSimplePanel;
    LMDGroupBox11: TLMDGroupBox;
    Label107: TLabel;
    Label108: TLabel;
    Label110: TLabel;
    Label111: TLabel;
    Label112: TLabel;
    Label113: TLabel;
    Label114: TLabel;
    Label115: TLabel;
    Label116: TLabel;
    Label117: TLabel;
    Label37: TLabel;
    Label40: TLabel;
    Label41: TLabel;
    DBEdit78: TDBEdit;
    DBEdit81: TDBEdit;
    DBEdit84: TDBEdit;
    DBEdit85: TDBEdit;
    DBEdit86: TDBEdit;
    DBEdit87: TDBEdit;
    DBEdit88: TDBEdit;
    DBEdit95: TDBEdit;
    DBEdit98: TDBEdit;
    DBEdit103: TDBEdit;
    DBEdit22: TDBEdit;
    DBEdit36: TDBEdit;
    DBEdit40: TDBEdit;
    TBS_VCTOPENSAO: TTabSheet;
    LMDSimplePanel14: TLMDSimplePanel;
    LMDGroupBox9: TLMDGroupBox;
    Label93: TLabel;
    Label94: TLabel;
    Label95: TLabel;
    Label96: TLabel;
    DBEdit67: TDBEdit;
    DBEdit68: TDBEdit;
    DBEdit69: TDBEdit;
    DBEdit70: TDBEdit;
    Panel2: TPanel;
    Btn_Incluir: TSpeedButton;
    Btn_Alterar: TSpeedButton;
    Btn_Gravar: TSpeedButton;
    Btn_Localizar: TSpeedButton;
    Btn_Excluir: TSpeedButton;
    BTN_SAIR: TSpeedButton;
    Btn_Avancar: TSpeedButton;
    Btn_Retroceder: TSpeedButton;
    Btn_Cancelar: TSpeedButton;
    Btn_Imprimir: TSpeedButton;
    LMDGroupBox2: TLMDGroupBox;
    Label4: TLabel;
    Label6: TLabel;
    DED_CNOMEGRL: TDBEdit;
    DED_NMATRICULA: TDBEdit;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BTN_SAIRClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRM_A006RH: TFRM_A006RH;

implementation

uses MPLCtrl, UVariaveis;

{$R *.DFM}

procedure TFRM_A006RH.FormShow(Sender: TObject);
begin
  //verifica o acesso do usuário aos objetos e campo da aplicação
  if not Acesso(nMatricula,'A006RH',nil) then
    close;

  //muda o estado dos botões
  Botoes(['Btn_Cancelar','Btn_Gravar'],'FRM_A006RH',false);

  FRM_A006RH.OnShow := nil;

 {é atribuido ao OnShow do Form o valor nil para que o mesmo seja executado apenas uma vez}
 {pelo fato que se outra aplicação for chamada pela tecla F3, e ao retornar da aplicação que foi chamada pela tecla}
 {o evento OnShow deste form não acontecerá, ou seja não será executado, para permanecer o mesmo status da aplicação}
 {quando o F3 foi chamado}
end;

procedure TFRM_A006RH.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  //fecha os Datasets do DataModule e libera o form da memoria
  Action:= oControlForms.Saidas(Self,[nil],nil);

end;

procedure TFRM_A006RH.BTN_SAIRClick(Sender: TObject);
begin
 close;
end;

end.
