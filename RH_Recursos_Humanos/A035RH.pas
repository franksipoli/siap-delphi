unit A035RH;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ToolEdit, RxLookup, DBCtrls, Grids, DBGrids, LMDCustomPanelFill,
  LMDPanelFill, StdCtrls, Mask, RXDBCtrl, LMDCustomControl, LMDCustomPanel,
  LMDCustomBevelPanel, LMDCustomParentPanel, LMDCustomGroupBox,
  LMDGroupBox, Buttons, ExtCtrls;

type
  TFRM_A035RH = class(TForm)
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
    DED_CDESCRACR: TDBEdit;
    DBG_TBXACR: TDBGrid;
    Label2: TLabel;
    DED_CODTCE: TDBEdit;
    Btn_Localizar: TSpeedButton;
    procedure BTN_SAIRClick(Sender: TObject);
    procedure BTN_VlrSalariaisClick(Sender: TObject);
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
    procedure DBG_TBXACRMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Btn_LocalizarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRM_A035RH: TFRM_A035RH;

implementation

Uses CtrlForms, MPLCtrl, MPLLib, UVariaveis, D035RH;

{$R *.DFM}

procedure TFRM_A035RH.BTN_SAIRClick(Sender: TObject);
begin
   close;
end;

procedure TFRM_A035RH.BTN_VlrSalariaisClick(Sender: TObject);
begin
  oControlForms.AtivaForm('FRM_A021RH',shModal,nil);
end;

procedure TFRM_A035RH.Btn_AvancarClick(Sender: TObject);
begin
   //proximo registro do dataset
  DBGenerica(DTM_A035RH.DTS_104,'Conexao',0,3);
end;

procedure TFRM_A035RH.Btn_RetrocederClick(Sender: TObject);
begin
  //registro anterior do dataset
  DBGenerica(DTM_A035RH.DTS_104,'Conexao',0,2);
end;

procedure TFRM_A035RH.Btn_IncluirClick(Sender: TObject);
begin
 //inclui registro no dataset
 DBGenerica(DTM_A035RH.DTS_104,'Conexao',1,0,DBG_TBXACR);
 Botoes(['Btn_Cancelar','Btn_Gravar','Btn_Sair'],'FRM_A035RH',true);
 DTM_A035RH.DTS_104.DataSet.FieldByName('NidTbxAcr').asInteger := 0;
 DED_CDESCRACR.SetFocus;
end;

procedure TFRM_A035RH.Btn_AlterarClick(Sender: TObject);
begin
  Botoes(['Btn_Cancelar','Btn_Gravar','Btn_Sair'],'FRM_A035RH',true);
  //edita registro do dataset
  DBGenerica(DTM_A035RH.DTS_104,'Conexao',2,0,DBG_TBXACR);
  DED_CDESCRACR.SetFocus;
end;

procedure TFRM_A035RH.Btn_GravarClick(Sender: TObject);
begin
  if LiberadoGravacao(FRM_A035RH,DTM_A035RH.DTS_104) then
    begin
      //grava dados no dataset
      DBGenerica(DTM_A035RH.DTS_104,'Conexao',4,0,DBG_TBXACR);
      if lResp then
       Botoes(['Btn_Gravar','Btn_Cancelar'],'FRM_A035RH',false);
    end;
end;

procedure TFRM_A035RH.Btn_CancelarClick(Sender: TObject);
begin
   //cancela a operação corrente no dataset
   DBGenerica(DTM_A035RH.DTS_104,'Conexao',3,0,DBG_TBXACR);
   Botoes(['Btn_Cancelar','Btn_Gravar'],'FRM_A035RH',false);
end;

procedure TFRM_A035RH.Btn_ExcluirClick(Sender: TObject);
begin
  //exclui registro do dataset
  DBGenerica(DTM_A035RH.DTS_104,'Conexao',5,0,DBG_TBXACR);
end;

procedure TFRM_A035RH.Btn_ImprimirClick(Sender: TObject);
begin
  RelCadastro(DTM_A035RH.QRY_104,'Tipo de Seleção');
end;

procedure TFRM_A035RH.FormClose(Sender: TObject; var Action: TCloseAction);
begin
    Action:= oControlForms.Saidas(Self,[DTM_A035RH],DTM_A035RH.DTS_104.DataSet);
end;

procedure TFRM_A035RH.FormShow(Sender: TObject);
begin
  if not Acesso(nMatricula,'A035RH',DTM_A035RH) then
    close;
  Botoes(['Btn_Cancelar','Btn_Gravar'],'FRM_A035RH',false);
  FRM_A035RH.OnShow := nil;
 {é atribuido ao OnShow do Form o valor nil para que o mesmo seja executado apenas uma vez}
 {pelo fato que se outra aplicação for chamada pela tecla F3, e ao retornar da aplicação que foi chamada pela tecla}
 {o evento OnShow deste form não acontecerá, ou seja não será executado, para permanecer o mesmo status da aplicação}
 {quando o F3 foi chamado}
end;

procedure TFRM_A035RH.DBG_TBXACRMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  //chama pesquisa de grid
  if Button = mbRight then
    ChamaPesqGrid(DTM_A035RH.QRY_104,nil,'cdescracr','Descrição das Espécies de Ato de Cargo');
end;

procedure TFRM_A035RH.Btn_LocalizarClick(Sender: TObject);
begin
  //chama pesquisa padrao
  Pesquisa(DTM_A035RH.QRY_104,true,'','');
end;

end.
