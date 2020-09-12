unit A026RH;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ToolEdit, RxLookup, DBCtrls, Grids, DBGrids, LMDCustomPanelFill,
  LMDPanelFill, StdCtrls, Mask, RXDBCtrl, LMDCustomControl, LMDCustomPanel,
  LMDCustomBevelPanel, LMDCustomParentPanel, LMDCustomGroupBox,
  LMDGroupBox, Buttons, ExtCtrls;

type
  TFRM_A026RH = class(TForm)
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
    DED_CDESCRITCR: TDBEdit;
    DBG_TBXTCR: TDBGrid;
    BTN_RegPrevi: TSpeedButton;
    DBL_CDESCRITCT: TRxDBLookupCombo;
    Label1: TLabel;
    Label2: TLabel;
    DBL_CDESCRIEVE: TRxDBLookupCombo;
    Btn_PgtoAut: TSpeedButton;
    Btn_OpFgts: TSpeedButton;
    Btn_Localizar: TSpeedButton;
    procedure BTN_SAIRClick(Sender: TObject);
    procedure BTN_RegPreviClick(Sender: TObject);
    procedure Btn_PgtoAutClick(Sender: TObject);
    procedure Btn_OpFgtsClick(Sender: TObject);
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
    procedure DBG_TBXTCRMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Btn_LocalizarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRM_A026RH: TFRM_A026RH;

implementation

Uses D026RH, MPLCtrl, MPLLib, UVariaveis, CtrlForms ;

{$R *.DFM}

procedure TFRM_A026RH.BTN_SAIRClick(Sender: TObject);
begin
   close;
end;

procedure TFRM_A026RH.BTN_RegPreviClick(Sender: TObject);
begin
  oControlForms.AtivaForm('FRM_A027RH',shModal,nil);
end;

procedure TFRM_A026RH.Btn_PgtoAutClick(Sender: TObject);
begin
  oControlForms.AtivaForm('FRM_A028RH',shModal,nil);
end;

procedure TFRM_A026RH.Btn_OpFgtsClick(Sender: TObject);
begin
  oControlForms.AtivaForm('FRM_A029RH',shModal,nil);
end;


procedure TFRM_A026RH.Btn_AvancarClick(Sender: TObject);
begin
  //proximo registro do dataset
  DBGenerica(DTM_A026RH.DTS_095,'Conexao',0,3);
end;

procedure TFRM_A026RH.Btn_RetrocederClick(Sender: TObject);
begin
  //registro anterior do dataset
  DBGenerica(DTM_A026RH.DTS_095,'Conexao',0,2);
end;

procedure TFRM_A026RH.Btn_IncluirClick(Sender: TObject);
begin
 //inclui registro no dataset
 DBGenerica(DTM_A026RH.DTS_095,'Conexao',1,0,DBG_TBXTCR);
 Botoes(['Btn_Cancelar','Btn_Gravar','Btn_Sair'],'FRM_A026RH',true);
 DTM_A026RH.DTS_095.DataSet.FieldByName('NidTbxTcr').asInteger := 0;
 DED_CDESCRITCR.SetFocus;
end;

procedure TFRM_A026RH.Btn_AlterarClick(Sender: TObject);
begin
  Botoes(['Btn_Cancelar','Btn_Gravar','Btn_Sair'],'FRM_A026RH',true);
  //edita registro do dataset
  DBGenerica(DTM_A026RH.DTS_095,'Conexao',2,0,DBG_TBXTCR);
  DED_CDESCRITCR.SetFocus;
end;

procedure TFRM_A026RH.Btn_GravarClick(Sender: TObject);
begin
  if LiberadoGravacao(FRM_A026RH,DTM_A026RH.DTS_095) then
    begin
      //grava dados no dataset
      DBGenerica(DTM_A026RH.DTS_095,'Conexao',4,0,DBG_TBXTCR);
      if lResp then
       Botoes(['Btn_Gravar','Btn_Cancelar'],'FRM_A026RH',false);
    end;
end;

procedure TFRM_A026RH.Btn_CancelarClick(Sender: TObject);
begin
   //cancela a operação corrente no dataset
   DBGenerica(DTM_A026RH.DTS_095,'Conexao',3,0,DBG_TBXTCR);
   Botoes(['Btn_Cancelar','Btn_Gravar'],'FRM_A026RH',false);
end;

procedure TFRM_A026RH.Btn_ExcluirClick(Sender: TObject);
begin
  //exclui registro do dataset
  DBGenerica(DTM_A026RH.DTS_095,'Conexao',5,0,DBG_TBXTCR);
end;

procedure TFRM_A026RH.Btn_ImprimirClick(Sender: TObject);
begin
  RelCadastro(DTM_A026RH.QRY_095,'Cadastro do Tipo de Cargo');
end;

procedure TFRM_A026RH.FormClose(Sender: TObject; var Action: TCloseAction);
begin
    Action:= oControlForms.Saidas(Self,[DTM_A026RH],DTM_A026RH.DTS_095.DataSet);
end;

procedure TFRM_A026RH.FormShow(Sender: TObject);
begin
  if not Acesso(nMatricula,'A026RH',DTM_A026RH) then
    close;
  Botoes(['Btn_Cancelar','Btn_Gravar'],'FRM_A026RH',false);
  FRM_A026RH.OnShow := nil;
 {é atribuido ao OnShow do Form o valor nil para que o mesmo seja executado apenas uma vez}
 {pelo fato que se outra aplicação for chamada pela tecla F3, e ao retornar da aplicação que foi chamada pela tecla}
 {o evento OnShow deste form não acontecerá, ou seja não será executado, para permanecer o mesmo status da aplicação}
 {quando o F3 foi chamado}
end;

procedure TFRM_A026RH.DBG_TBXTCRMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  //chama pesquisa de grid
  if Button = mbRight then
    ChamaPesqGrid(DTM_A026RH.QRY_095,nil,'cdescritcr','Descrição do Tipo de Cargo');
end;




procedure TFRM_A026RH.Btn_LocalizarClick(Sender: TObject);
begin
 {chama a pesquisa padrão}
 Pesquisa(DTM_A026RH.QRY_095,true,'','');
end;

end.
