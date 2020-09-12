unit A047RH;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ToolEdit, RxLookup, DBCtrls, Grids, DBGrids, LMDCustomPanelFill,
  LMDPanelFill, StdCtrls, Mask, RXDBCtrl, LMDCustomControl, LMDCustomPanel,
  LMDCustomBevelPanel, LMDCustomParentPanel, LMDCustomGroupBox,
  LMDGroupBox, Buttons, ExtCtrls;

type
  TFRM_A047RH = class(TForm)
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
    LMDGroupBox2: TLMDGroupBox;
    DBG_TBXGRO: TDBGrid;
    btn_localizar: TSpeedButton;
    LMDGroupBox3: TLMDGroupBox;
    Label21: TLabel;
    DED_CDESCRIGRO: TDBEdit;
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
    procedure DBG_TBXGROMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRM_A047RH: TFRM_A047RH;

implementation

uses DMCTRL, MPLCtrl, MPLLib, UVariaveis, CtrlForms, D047RH;


{$R *.DFM}

procedure TFRM_A047RH.BTN_SAIRClick(Sender: TObject);
begin
  close;
end;

procedure TFRM_A047RH.btn_localizarClick(Sender: TObject);
begin
  Pesquisa(DTM_A047RH.QRY_086,true,'','');
end;

procedure TFRM_A047RH.Btn_AvancarClick(Sender: TObject);
begin
  //proximo registro do dataset
  DBGenerica(DTM_A047RH.DTS_086,'Conexao',0,3);
end;

procedure TFRM_A047RH.Btn_RetrocederClick(Sender: TObject);
begin
  //registro anterior do dataset
  DBGenerica(DTM_A047RH.DTS_086,'Conexao',0,2);
end;

procedure TFRM_A047RH.Btn_IncluirClick(Sender: TObject);
begin
 //inclui registro no dataset
 DBGenerica(DTM_A047RH.DTS_086,'Conexao',1,0,DBG_TBXGRO);
 Botoes(['Btn_Cancelar','Btn_Gravar','Btn_Sair'],'FRM_A047RH',true);
 DTM_A047RH.DTS_086.DataSet.FieldByName('NidTBXGRO').asInteger := 0;
 DED_CDESCRIGRO.SetFocus;
end;

procedure TFRM_A047RH.Btn_AlterarClick(Sender: TObject);
begin
  Botoes(['Btn_Cancelar','Btn_Gravar','Btn_Sair'],'FRM_A047RH',true);
  //edita registro do dataset
  DBGenerica(DTM_A047RH.DTS_086,'Conexao',2,0,DBG_TBXGRO);
  DED_CDESCRIGRO.SetFocus;
end;

procedure TFRM_A047RH.Btn_GravarClick(Sender: TObject);
begin
  if LiberadoGravacao(FRM_A047RH,DTM_A047RH.DTS_086) then
    begin
      //grava dados no dataset
      DBGenerica(DTM_A047RH.DTS_086,'Conexao',4,0,DBG_TBXGRO);
      if lResp then
       Botoes(['Btn_Gravar','Btn_Cancelar'],'FRM_A047RH',false);
    end;
end;

procedure TFRM_A047RH.Btn_CancelarClick(Sender: TObject);
begin
   //cancela a operação corrente no dataset
   DBGenerica(DTM_A047RH.DTS_086,'Conexao',3,0,DBG_TBXGRO);
   Botoes(['Btn_Cancelar','Btn_Gravar'],'FRM_A047RH',false);
end;

procedure TFRM_A047RH.Btn_ExcluirClick(Sender: TObject);
begin
  //exclui registro do dataset
  DBGenerica(DTM_A047RH.DTS_086,'Conexao',5,0,DBG_TBXGRO);
end;

procedure TFRM_A047RH.Btn_ImprimirClick(Sender: TObject);
begin
  RelCadastro(DTM_A047RH.QRY_086,'Cadastro dos Grupos Ocupacionais');
end;

procedure TFRM_A047RH.FormClose(Sender: TObject; var Action: TCloseAction);
begin
    Action:= oControlForms.Saidas(Self,[DTM_A047RH],DTM_A047RH.DTS_086.DataSet);
end;

procedure TFRM_A047RH.FormShow(Sender: TObject);
begin
  if not Acesso(nMatricula,'A047RH',DTM_A047RH) then
    close;
  Botoes(['Btn_Cancelar','Btn_Gravar'],'FRM_A047RH',false);
  FRM_A047RH.OnShow := nil;
 {é atribuido ao OnShow do Form o valor nil para que o mesmo seja executado apenas uma vez}
 {pelo fato que se outra aplicação for chamada pela tecla F3, e ao retornar da aplicação que foi chamada pela tecla}
 {o evento OnShow deste form não acontecerá, ou seja não será executado, para permanecer o mesmo status da aplicação}
 {quando o F3 foi chamado}
end;

procedure TFRM_A047RH.DBG_TBXGROMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  //chama pesquisa de grid
  if Button = mbRight then
    ChamaPesqGrid(DTM_A047RH.QRY_086,nil,'cdescrigro','Descrição do Grupos Ocupacionais');
end;

end.
