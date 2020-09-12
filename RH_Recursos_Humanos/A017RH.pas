unit A017RH;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ToolEdit, RxLookup, DBCtrls, Grids, DBGrids, LMDCustomPanelFill,
  LMDPanelFill, StdCtrls, Mask, RXDBCtrl, LMDCustomControl, LMDCustomPanel,
  LMDCustomBevelPanel, LMDCustomParentPanel, LMDCustomGroupBox,
  LMDGroupBox, Buttons, ExtCtrls;

type
  TFRM_A017RH = class(TForm)
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
    DED_CDESCRIDPT: TDBEdit;
    GRD_DEPTO: TDBGrid;
    BTN_Setor: TSpeedButton;
    DBL_CFUNCAO: TRxDBLookupCombo;
    Label2: TLabel;
    btn_localizar: TSpeedButton;
    procedure BTN_SAIRClick(Sender: TObject);
    procedure BTN_SetorClick(Sender: TObject);
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
    procedure GRD_DEPTOMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRM_A017RH: TFRM_A017RH;

implementation

uses DMCTRL, D017RH, MPLCtrl, MPLLib, UVariaveis, CtrlForms;


{$R *.DFM}

procedure TFRM_A017RH.BTN_SAIRClick(Sender: TObject);
begin
  close;
end;

procedure TFRM_A017RH.BTN_SetorClick(Sender: TObject);
begin
  oControlForms.AtivaForm('FRM_A018RH',shModal,nil);
end;

procedure TFRM_A017RH.btn_localizarClick(Sender: TObject);
begin
  Pesquisa(DTM_A017RH.QRY_082,true,'','');
end;

procedure TFRM_A017RH.Btn_AvancarClick(Sender: TObject);
begin
  //proximo registro do dataset
  DBGenerica(DTM_A017RH.DTS_082,'Conexao',0,3);
end;

procedure TFRM_A017RH.Btn_RetrocederClick(Sender: TObject);
begin
  //registro anterior do dataset
  DBGenerica(DTM_A017RH.DTS_082,'Conexao',0,2);
end;

procedure TFRM_A017RH.Btn_IncluirClick(Sender: TObject);
begin
 //inclui registro no dataset
 DBGenerica(DTM_A017RH.DTS_082,'Conexao',1,0,GRD_DEPTO);
 Botoes(['Btn_Cancelar','Btn_Gravar','Btn_Sair'],'FRM_A017RH',true);
 DTM_A017RH.DTS_082.DataSet.FieldByName('nidtbxdpt').asInteger := 0;
 DBL_CFUNCAO.KeyValue := 0;
 DTM_A017RH.DTS_082.DataSet.FieldByName('nidtbxfgv').asInteger := 0;
 DED_CDESCRIDPT.SetFocus;
end;

procedure TFRM_A017RH.Btn_AlterarClick(Sender: TObject);
begin
  Botoes(['Btn_Cancelar','Btn_Gravar','Btn_Sair'],'FRM_A017RH',true);
  //edita registro do dataset
  DBGenerica(DTM_A017RH.DTS_082,'Conexao',2,0,GRD_DEPTO);
  DED_CDESCRIDPT.SetFocus;
end;

procedure TFRM_A017RH.Btn_GravarClick(Sender: TObject);
begin
  if LiberadoGravacao(FRM_A017RH,DTM_A017RH.DTS_082) then
    begin
      //grava dados no dataset
      DBGenerica(DTM_A017RH.DTS_082,'Conexao',4,0,GRD_DEPTO);
      if lResp then
       Botoes(['Btn_Gravar','Btn_Cancelar'],'FRM_A017RH',false);
    end;
end;

procedure TFRM_A017RH.Btn_CancelarClick(Sender: TObject);
begin
   //cancela a operação corrente no dataset
   DBGenerica(DTM_A017RH.DTS_082,'Conexao',3,0,GRD_DEPTO);
   Botoes(['Btn_Cancelar','Btn_Gravar'],'FRM_A017RH',false);
end;

procedure TFRM_A017RH.Btn_ExcluirClick(Sender: TObject);
begin
  //exclui registro do dataset
  DBGenerica(DTM_A017RH.DTS_082,'Conexao',5,0,GRD_DEPTO);
end;

procedure TFRM_A017RH.Btn_ImprimirClick(Sender: TObject);
begin
  RelCadastro(DTM_A017RH.QRY_082,'Cadastro Departamentos');
end;

procedure TFRM_A017RH.FormClose(Sender: TObject; var Action: TCloseAction);
begin
    Action:= oControlForms.Saidas(Self,[DTM_A017RH],DTM_A017RH.DTS_082.DataSet);
end;

procedure TFRM_A017RH.FormShow(Sender: TObject);
begin
  if not Acesso(nMatricula,'A017RH',DTM_A017RH) then
    close;
  Botoes(['Btn_Cancelar','Btn_Gravar'],'FRM_A017RH',false);
  FRM_A017RH.OnShow := nil;
 {é atribuido ao OnShow do Form o valor nil para que o mesmo seja executado apenas uma vez}
 {pelo fato que se outra aplicação for chamada pela tecla F3, e ao retornar da aplicação que foi chamada pela tecla}
 {o evento OnShow deste form não acontecerá, ou seja não será executado, para permanecer o mesmo status da aplicação}
 {quando o F3 foi chamado}
end;

procedure TFRM_A017RH.GRD_DEPTOMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  //chama pesquisa de grid
  if Button = mbRight then
    ChamaPesqGrid(DTM_A017RH.QRY_082,nil,'cdescridpt','Descrição do Departamento');
end;

end.
