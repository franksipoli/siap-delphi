unit A002UTCO;

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
  LMDMessageHint, RzLstBox, RzChkLst, Gauges, Mask, DBCtrls, ToolEdit,
  Grids, DBGrids, RXDBCtrl;


type
  TFRM_A002UTCO = class(TForm)
    Panel2: TPanel;
    Btn_Incluir: TSpeedButton;
    Btn_Alterar: TSpeedButton;
    Btn_Gravar: TSpeedButton;
    Btn_Localizar: TSpeedButton;
    Btn_Imprimir: TSpeedButton;
    BTN_SAIR: TSpeedButton;
    Btn_Avancar: TSpeedButton;
    Btn_Retroceder: TSpeedButton;
    Btn_Cancelar: TSpeedButton;
    Btn_Excluir: TSpeedButton;
    LMDGroupBox1: TLMDGroupBox;
    DED_CSEQUENCIA: TDBEdit;
    Label2: TLabel;
    Label1: TLabel;
    DBGrid1: TDBGrid;
    LMDPanelFill6: TLMDPanelFill;
    Btn_Retroceder2: TSpeedButton;
    Btn_Avancar2: TSpeedButton;
    Btn_Incluir2: TSpeedButton;
    Btn_PrimeiroReg1: TSpeedButton;
    Btn_UltimoReg1: TSpeedButton;
    DBC_CNOMEGRUPO: TRxDBComboEdit;
    procedure BTN_SAIRClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure Btn_LocalizarClick(Sender: TObject);
    procedure Btn_AvancarClick(Sender: TObject);
    procedure Btn_RetrocederClick(Sender: TObject);
    procedure Btn_IncluirClick(Sender: TObject);
    procedure Btn_AlterarClick(Sender: TObject);
    procedure Btn_ExcluirClick(Sender: TObject);
    procedure Btn_GravarClick(Sender: TObject);
    procedure Btn_CancelarClick(Sender: TObject);
    procedure Btn_ImprimirClick(Sender: TObject);
    procedure Btn_Incluir2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRM_A002UTCO: TFRM_A002UTCO;

implementation

uses MPLCtrl, Login, TelaPrin, D002UTCO, A006UTCO, D006UTCO, UVariaveis,
  CtrlForms;

{$R *.DFM}

procedure TFRM_A002UTCO.BTN_SAIRClick(Sender: TObject);
begin
  Close;
end;  //TFRM_A002UTCO.BTN_SAIRClick

procedure TFRM_A002UTCO.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   Action := oControlForms.Saidas(Sender,[DTM_A002UTCO],DTM_A002UTCO.DTS_040.DataSet);
end;  //TFRM_A002UTCO.FormClose

procedure TFRM_A002UTCO.FormShow(Sender: TObject);
begin
  Acesso(nMatricula,'A002UTCO',DTM_A002UTCO);
  Botoes(['Btn_Cancelar','Btn_Gravar','Btn_Incluir2' ],'FRM_A002UTCO',False);
  FRM_A002UTCO.OnShow := nil;
 {� atribuido ao OnShow do Form o valor nil para que o mesmo seja executado apenas uma vez}
 {pelo fato que se outra aplica��o for chamada pela tecla F3, e ao retornar da aplica��o que foi chamada pela tecla}
 {o evento OnShow deste form n�o acontecer�, ou seja n�o ser� executado, para permanecer o mesmo status da aplica��o}
 {quando o F3 foi chamado}
end;  //TFRM_A002UTCO.FormShow

procedure TFRM_A002UTCO.Btn_LocalizarClick(Sender: TObject);
begin
  {Pesquisa Registros cadastrados}
  Pesquisa(DTM_A002UTCO.QRY_040,true,'','','',false);
end;  // TFRM_A002UTCO.Btn_LocalizarClick

procedure TFRM_A002UTCO.Btn_AvancarClick(Sender: TObject);
begin
 {avan�a registro}
 DBGenerica(DTM_A002UTCO.DTS_040,'Conexao',0,3,nil,false);
end;  //TFRM_A002UTCO.Btn_AvancarClick

procedure TFRM_A002UTCO.Btn_RetrocederClick(Sender: TObject);
begin
 {retrocede registro}
  DBGenerica(DTM_A002UTCO.DTS_040,'Conexao',0,2,nil,false);
end;  //FRM_A002UTCO.Btn_RetrocederClick

procedure TFRM_A002UTCO.Btn_IncluirClick(Sender: TObject);
begin
  {inclui um registro novo para um novo Grupo com Aplica��es}
  DBGenerica(DTM_A002UTCO.DTS_040,'Conexao',1,0);
  {trata os bot�es da aplica��o}
  Botoes(['Btn_Cancelar','Btn_Gravar','Btn_Sair','Btn_Incluir2'],'FRM_A002UTCO',true);
  DBC_CNOMEGRUPO.SetFocus;
end;  // TFRM_A002UTCO.Btn_IncluirClick

procedure TFRM_A002UTCO.Btn_AlterarClick(Sender: TObject);
begin
  {trata os bot�es da aplica��o}
  Botoes(['Btn_Cancelar','Btn_Gravar', 'Btn_Sair', 'Btn_Incluir2'],'FRM_A002UTCO',true);
  {coloca em estado de altera��o o registro corrente}
  DBGenerica(DTM_A002UTCO.DTS_041,'Conexao',2,0);
end;  // TFRM_A002UTCO.Btn_AlterarClick

procedure TFRM_A002UTCO.Btn_ExcluirClick(Sender: TObject);
begin
  {exclui o registro corrente}
//  DBGenerica(DTM_A002UTCO.DTS_041,'Conexao',5,0,nil,false);
end;  // TFRM_A002UTCO.Btn_ExcluirClick

procedure TFRM_A002UTCO.Btn_GravarClick(Sender: TObject);
begin
//
end;  // TFRM_A002UTCO.Btn_GravarClick

procedure TFRM_A002UTCO.Btn_CancelarClick(Sender: TObject);
begin
//  DBGenerica(DTM_A002UTCO.DTS_041,'Conexao',3,0,nil,false);
  {trata os bot�es da aplica��o}
//  Botoes(['Btn_Gravar','Btn_Cancelar','Btn_Incluir2'],'FRM_A002UTCO',false);
end;  // TFRM_A002UTCO.Btn_CancelarClick

procedure TFRM_A002UTCO.Btn_ImprimirClick(Sender: TObject);
begin
  {fun��o Padr�o de Impress�o}
  RelCadastro(DTM_A002UTCO.QRY_041,'Cadastro de Grupos/Aplica��es');
end;  // TFRM_A002UTCO.Btn_ImprimirClick

procedure TFRM_A002UTCO.Btn_Incluir2Click(Sender: TObject);
begin
  Application.CreateForm(TDTM_A006UTCO, DTM_A006UTCO);
  Application.CreateForm(TFRM_A006UTCO, FRM_A006UTCO);
  FRM_A006UTCO.Pnl_Titulo.Caption := DTM_A002UTCO.DTS_040.DataSet.FieldByName('cnomegrupo').asString;
  oControlForms.AtivaForm('FRM_A006UTCO', shModal, NIL);
end;  // TFRM_A002UTCO.Btn_Incluir2Click

end.




