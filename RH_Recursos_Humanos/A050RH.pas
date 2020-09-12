unit A050RH;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ToolEdit, RxLookup, DBCtrls, Grids, DBGrids, LMDCustomPanelFill,
  LMDPanelFill, StdCtrls, Mask, RXDBCtrl, LMDCustomControl, LMDCustomPanel,
  LMDCustomBevelPanel, LMDCustomParentPanel, LMDCustomGroupBox,
  LMDGroupBox, Buttons, ExtCtrls;

type
  TFRM_A050RH = class(TForm)
    Panel2: TPanel;
    Btn_Incluir: TSpeedButton;
    Btn_Alterar: TSpeedButton;
    Btn_Gravar: TSpeedButton;
    Btn_Excluir: TSpeedButton;
    BTN_SAIR: TSpeedButton;
    Btn_Avancar: TSpeedButton;
    Btn_Retroceder: TSpeedButton;
    Btn_Cancelar: TSpeedButton;
    Btn_Imprimir: TSpeedButton;
    LMDGroupBox3: TLMDGroupBox;
    LMDGroupBox2: TLMDGroupBox;
    Label21: TLabel;
    DBG_TBXUND: TDBGrid;
    Btn_Localizar: TSpeedButton;
    Label1: TLabel;
    DED_CDESCRIUND: TDBEdit;
    DED_NCODCONTAB: TDBEdit;
    BTN_PROJETOS: TSpeedButton;
    procedure BTN_SAIRClick(Sender: TObject);
    procedure Btn_AvancarClick(Sender: TObject);
    procedure Btn_RetrocederClick(Sender: TObject);
    procedure Btn_IncluirClick(Sender: TObject);
    procedure Btn_AlterarClick(Sender: TObject);
    procedure Btn_GravarClick(Sender: TObject);
    procedure Btn_CancelarClick(Sender: TObject);
    procedure Btn_ExcluirClick(Sender: TObject);
    procedure Btn_ImprimirClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure DBG_TBXUNDMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Btn_LocalizarClick(Sender: TObject);
    procedure BTN_PROJETOSClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRM_A050RH: TFRM_A050RH;

implementation

Uses CtrlForms, MPLCtrl, MPLLib, UVariaveis, D050RH, A052RH ;

{$R *.DFM}

procedure TFRM_A050RH.BTN_SAIRClick(Sender: TObject);
begin
   close;
end;

procedure TFRM_A050RH.Btn_AvancarClick(Sender: TObject);
begin
   //proximo registro do dataset
  DBGenerica(DTM_A050RH.DTS_113,'Conexao',0,3);
end;

procedure TFRM_A050RH.Btn_RetrocederClick(Sender: TObject);
begin
  //registro anterior do dataset
  DBGenerica(DTM_A050RH.DTS_113,'Conexao',0,2);
end;

procedure TFRM_A050RH.Btn_IncluirClick(Sender: TObject);
begin
 //inclui registro no dataset
 DBGenerica(DTM_A050RH.DTS_113,'Conexao',1,0,DBG_TBXUND);
 Botoes(['Btn_Cancelar','Btn_Gravar','Btn_Sair'],'FRM_A050RH',true);
 DTM_A050RH.DTS_113.DataSet.FieldByName('NidTBXUND').asInteger := 0;
 DED_CDESCRIUND.SetFocus;
end;

procedure TFRM_A050RH.Btn_AlterarClick(Sender: TObject);
begin
  Botoes(['Btn_Cancelar','Btn_Gravar','Btn_Sair'],'FRM_A050RH',true);
  //edita registro do dataset
  DBGenerica(DTM_A050RH.DTS_113,'Conexao',2,0,DBG_TBXUND);
  DED_CDESCRIUND.SetFocus;
end;

procedure TFRM_A050RH.Btn_GravarClick(Sender: TObject);
begin
  if LiberadoGravacao(FRM_A050RH,DTM_A050RH.DTS_113) then
    begin
      //grava dados no dataset
      DBGenerica(DTM_A050RH.DTS_113,'Conexao',4,0,DBG_TBXUND);
      if lResp then
       Botoes(['Btn_Gravar','Btn_Cancelar'],'FRM_A050RH',false);
    end;
end;

procedure TFRM_A050RH.Btn_CancelarClick(Sender: TObject);
begin
   //cancela a operação corrente no dataset
   DBGenerica(DTM_A050RH.DTS_113,'Conexao',3,0,DBG_TBXUND);
   Botoes(['Btn_Cancelar','Btn_Gravar'],'FRM_A050RH',false);
end;

procedure TFRM_A050RH.Btn_ExcluirClick(Sender: TObject);
begin
  //exclui registro do dataset
  DBGenerica(DTM_A050RH.DTS_113,'Conexao',5,0,DBG_TBXUND);
end;

procedure TFRM_A050RH.Btn_ImprimirClick(Sender: TObject);
begin
  RelCadastro(DTM_A050RH.QRY_113,'Cadastro das Unidades Contábeis');
end;

procedure TFRM_A050RH.FormClose(Sender: TObject; var Action: TCloseAction);
begin
    Action:= oControlForms.Saidas(Self,[DTM_A050RH],DTM_A050RH.DTS_113.DataSet);
end;

procedure TFRM_A050RH.FormShow(Sender: TObject);
begin
  if not Acesso(nMatricula,'A050RH',DTM_A050RH) then
    close;
  Botoes(['Btn_Cancelar','Btn_Gravar'],'FRM_A050RH',false);
  FRM_A050RH.OnShow := nil;
 {é atribuido ao OnShow do Form o valor nil para que o mesmo seja executado apenas uma vez}
 {pelo fato que se outra aplicação for chamada pela tecla F3, e ao retornar da aplicação que foi chamada pela tecla}
 {o evento OnShow deste form não acontecerá, ou seja não será executado, para permanecer o mesmo status da aplicação}
 {quando o F3 foi chamado}
end;

procedure TFRM_A050RH.DBG_TBXUNDMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  //chama pesquisa de grid
  if Button = mbRight then
    ChamaPesqGrid(DTM_A050RH.QRY_113,nil,'cdescriund','Descrição da Unidade Contabil');
end;

procedure TFRM_A050RH.Btn_LocalizarClick(Sender: TObject);
begin
  //chama pesquisa padrao
  Pesquisa(DTM_A050RH.QRY_113,true,'','');
end;

procedure TFRM_A050RH.BTN_PROJETOSClick(Sender: TObject);
begin
  oControlForms.AtivaForm('FRM_A052RH',shModal,nil);
end;

end.
