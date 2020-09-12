unit A022RH;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ToolEdit, RxLookup, DBCtrls, Grids, DBGrids, LMDCustomPanelFill,
  LMDPanelFill, StdCtrls, Mask, RXDBCtrl, LMDCustomControl, LMDCustomPanel,
  LMDCustomBevelPanel, LMDCustomParentPanel, LMDCustomGroupBox,
  LMDGroupBox, Buttons, ExtCtrls;

type
  TFRM_A022RH = class(TForm)
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
    DED_CFUNCAO: TDBEdit;
    DBG_TBXFGV: TDBGrid;
    Label2: TLabel;
    btn_localizar: TSpeedButton;
    DED_CODTCE: TDBEdit;
    procedure BTN_SAIRClick(Sender: TObject);
    procedure btn_localizarClick(Sender: TObject);
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
    procedure DBG_TBXFGVMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRM_A022RH: TFRM_A022RH;

implementation

uses DMCTRL, MPLCtrl, MPLLib, UVariaveis, CtrlForms, D022RH;


{$R *.DFM}

procedure TFRM_A022RH.BTN_SAIRClick(Sender: TObject);
begin
  close;
end;

procedure TFRM_A022RH.btn_localizarClick(Sender: TObject);
begin
  Pesquisa(DTM_A022RH.QRY_120,true,'','');
end;

procedure TFRM_A022RH.Btn_AvancarClick(Sender: TObject);
begin
  //proximo registro do dataset
  DBGenerica(DTM_A022RH.DTS_120,'Conexao',0,3);
end;

procedure TFRM_A022RH.Btn_RetrocederClick(Sender: TObject);
begin
  //registro anterior do dataset
  DBGenerica(DTM_A022RH.DTS_120,'Conexao',0,2);
end;

procedure TFRM_A022RH.Btn_IncluirClick(Sender: TObject);
begin
 //inclui registro no dataset
 DBGenerica(DTM_A022RH.DTS_120,'Conexao',1,0,DBG_TBXFGV);
 Botoes(['Btn_Cancelar','Btn_Gravar','Btn_Sair'],'FRM_A022RH',true);
 DTM_A022RH.DTS_120.DataSet.FieldByName('NidTbxFgv').asInteger := 0;
 DED_CFUNCAO.SetFocus;
end;

procedure TFRM_A022RH.Btn_AlterarClick(Sender: TObject);
begin
  Botoes(['Btn_Cancelar','Btn_Gravar','Btn_Sair'],'FRM_A022RH',true);
  //edita registro do dataset
  DBGenerica(DTM_A022RH.DTS_120,'Conexao',2,0,DBG_TBXFGV);
  DED_CFUNCAO.SetFocus;
end;

procedure TFRM_A022RH.Btn_GravarClick(Sender: TObject);
begin
  if LiberadoGravacao(FRM_A022RH,DTM_A022RH.DTS_120) then
    begin
      //grava dados no dataset
      DBGenerica(DTM_A022RH.DTS_120,'Conexao',4,0,DBG_TBXFGV);
      if lResp then
       Botoes(['Btn_Gravar','Btn_Cancelar'],'FRM_A022RH',false);
    end;
end;

procedure TFRM_A022RH.Btn_CancelarClick(Sender: TObject);
begin
   //cancela a operação corrente no dataset
   DBGenerica(DTM_A022RH.DTS_120,'Conexao',3,0,DBG_TBXFGV);
   Botoes(['Btn_Cancelar','Btn_Gravar'],'FRM_A022RH',false);
end;

procedure TFRM_A022RH.Btn_ExcluirClick(Sender: TObject);
begin
  //exclui registro do dataset
  DBGenerica(DTM_A022RH.DTS_120,'Conexao',5,0,DBG_TBXFGV);
end;

procedure TFRM_A022RH.Btn_ImprimirClick(Sender: TObject);
begin
  RelCadastro(DTM_A022RH.QRY_120,'Cadastro de Funções de Governo');
end;

procedure TFRM_A022RH.FormClose(Sender: TObject; var Action: TCloseAction);
begin
    Action:= oControlForms.Saidas(Self,[DTM_A022RH],DTM_A022RH.DTS_120.DataSet);
end;

procedure TFRM_A022RH.FormShow(Sender: TObject);
begin
  if not Acesso(nMatricula,'A022RH',DTM_A022RH) then
    close;
  Botoes(['Btn_Cancelar','Btn_Gravar'],'FRM_A022RH',false);
  FRM_A022RH.OnShow := nil;
 {é atribuido ao OnShow do Form o valor nil para que o mesmo seja executado apenas uma vez}
 {pelo fato que se outra aplicação for chamada pela tecla F3, e ao retornar da aplicação que foi chamada pela tecla}
 {o evento OnShow deste form não acontecerá, ou seja não será executado, para permanecer o mesmo status da aplicação}
 {quando o F3 foi chamado}
end;

procedure TFRM_A022RH.DBG_TBXFGVMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  //chama pesquisa de grid
  if Button = mbRight then
    ChamaPesqGrid(DTM_A022RH.QRY_120,nil,'cfuncao','Descrição da Função');
end;

end.
