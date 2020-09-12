unit A045RH;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ToolEdit, RxLookup, DBCtrls, Grids, DBGrids, LMDCustomPanelFill,
  LMDPanelFill, StdCtrls, Mask, RXDBCtrl, LMDCustomControl, LMDCustomPanel,
  LMDCustomBevelPanel, LMDCustomParentPanel, LMDCustomGroupBox,
  LMDGroupBox, Buttons, ExtCtrls;

type
  TFRM_A045RH = class(TForm)
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
    DED_CDESCRIGEV: TDBEdit;
    DBG_TBXGEV: TDBGrid;
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
    procedure DBG_TBXGEVMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Btn_LocalizarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRM_A045RH: TFRM_A045RH;

implementation

Uses CtrlForms, MPLCtrl, MPLLib, UVariaveis, D045RH ;

{$R *.DFM}

procedure TFRM_A045RH.BTN_SAIRClick(Sender: TObject);
begin
   close;
end;

procedure TFRM_A045RH.BTN_VlrSalariaisClick(Sender: TObject);
begin
  oControlForms.AtivaForm('FRM_A021RH',shModal,nil);
end;

procedure TFRM_A045RH.Btn_AvancarClick(Sender: TObject);
begin
   //proximo registro do dataset
  DBGenerica(DTM_A045RH.DTS_143,'Conexao',0,3);
end;

procedure TFRM_A045RH.Btn_RetrocederClick(Sender: TObject);
begin
  //registro anterior do dataset
  DBGenerica(DTM_A045RH.DTS_143,'Conexao',0,2);
end;

procedure TFRM_A045RH.Btn_IncluirClick(Sender: TObject);
begin
 //inclui registro no dataset
 DBGenerica(DTM_A045RH.DTS_143,'Conexao',1,0,DBG_TBXGEV);
 Botoes(['Btn_Cancelar','Btn_Gravar','Btn_Sair'],'FRM_A045RH',true);
 DTM_A045RH.DTS_143.DataSet.FieldByName('NidTBXGEV').asInteger := 0;
 DED_CDESCRIGEV.SetFocus;
end;

procedure TFRM_A045RH.Btn_AlterarClick(Sender: TObject);
begin
  Botoes(['Btn_Cancelar','Btn_Gravar','Btn_Sair'],'FRM_A045RH',true);
  //edita registro do dataset
  DBGenerica(DTM_A045RH.DTS_143,'Conexao',2,0,DBG_TBXGEV);
  DED_CDESCRIGEV.SetFocus;
end;

procedure TFRM_A045RH.Btn_GravarClick(Sender: TObject);
begin
  if LiberadoGravacao(FRM_A045RH,DTM_A045RH.DTS_143) then
    begin
      //grava dados no dataset
      DBGenerica(DTM_A045RH.DTS_143,'Conexao',4,0,DBG_TBXGEV);
      if lResp then
       Botoes(['Btn_Gravar','Btn_Cancelar'],'FRM_A045RH',false);
    end;
end;

procedure TFRM_A045RH.Btn_CancelarClick(Sender: TObject);
begin
   //cancela a operação corrente no dataset
   DBGenerica(DTM_A045RH.DTS_143,'Conexao',3,0,DBG_TBXGEV);
   Botoes(['Btn_Cancelar','Btn_Gravar'],'FRM_A045RH',false);
end;

procedure TFRM_A045RH.Btn_ExcluirClick(Sender: TObject);
begin
  //exclui registro do dataset
  DBGenerica(DTM_A045RH.DTS_143,'Conexao',5,0,DBG_TBXGEV);
end;

procedure TFRM_A045RH.Btn_ImprimirClick(Sender: TObject);
begin
  RelCadastro(DTM_A045RH.QRY_143,'Cadastro de Grupos de Eventos');
end;

procedure TFRM_A045RH.FormClose(Sender: TObject; var Action: TCloseAction);
begin
    Action:= oControlForms.Saidas(Self,[DTM_A045RH],DTM_A045RH.DTS_143.DataSet);
end;

procedure TFRM_A045RH.FormShow(Sender: TObject);
begin
  if not Acesso(nMatricula,'A045RH',DTM_A045RH) then
    close;
  Botoes(['Btn_Cancelar','Btn_Gravar'],'FRM_A045RH',false);
  FRM_A045RH.OnShow := nil;
 {é atribuido ao OnShow do Form o valor nil para que o mesmo seja executado apenas uma vez}
 {pelo fato que se outra aplicação for chamada pela tecla F3, e ao retornar da aplicação que foi chamada pela tecla}
 {o evento OnShow deste form não acontecerá, ou seja não será executado, para permanecer o mesmo status da aplicação}
 {quando o F3 foi chamado}
end;

procedure TFRM_A045RH.DBG_TBXGEVMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  //chama pesquisa de grid
  if Button = mbRight then
    ChamaPesqGrid(DTM_A045RH.QRY_143,nil,'cdescrigev','Descrição do Grupo de Eventos');
end;

procedure TFRM_A045RH.Btn_LocalizarClick(Sender: TObject);
begin
  //chama pesquisa padrao
 Pesquisa(DTM_A045RH.QRY_143,true,'','');
end;

end.
