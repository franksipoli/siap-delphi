unit A024RH;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ToolEdit, RxLookup, DBCtrls, Grids, DBGrids, LMDCustomPanelFill,
  LMDPanelFill, StdCtrls, Mask, RXDBCtrl, LMDCustomControl, LMDCustomPanel,
  LMDCustomBevelPanel, LMDCustomParentPanel, LMDCustomGroupBox,
  LMDGroupBox, Buttons, ExtCtrls;

type
  TFRM_A024RH = class(TForm)
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
    DBG_TBXTCT: TDBGrid;
    btn_localizar: TSpeedButton;
    LMDGroupBox3: TLMDGroupBox;
    Label21: TLabel;
    Label2: TLabel;
    DED_CDESCRITCT: TDBEdit;
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
    procedure DBG_TBXTCTMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRM_A024RH: TFRM_A024RH;

implementation

uses DMCTRL, MPLCtrl, MPLLib, UVariaveis, CtrlForms, D024RH;


{$R *.DFM}

procedure TFRM_A024RH.BTN_SAIRClick(Sender: TObject);
begin
  close;
end;

procedure TFRM_A024RH.btn_localizarClick(Sender: TObject);
begin
  Pesquisa(DTM_A024RH.QRY_121,true,'','');
end;

procedure TFRM_A024RH.Btn_AvancarClick(Sender: TObject);
begin
  //proximo registro do dataset
  DBGenerica(DTM_A024RH.DTS_121,'Conexao',0,3);
end;

procedure TFRM_A024RH.Btn_RetrocederClick(Sender: TObject);
begin
  //registro anterior do dataset
  DBGenerica(DTM_A024RH.DTS_121,'Conexao',0,2);
end;

procedure TFRM_A024RH.Btn_IncluirClick(Sender: TObject);
begin
 //inclui registro no dataset
 DBGenerica(DTM_A024RH.DTS_121,'Conexao',1,0,DBG_TBXTCT);
 Botoes(['Btn_Cancelar','Btn_Gravar','Btn_Sair'],'FRM_A024RH',true);
 DTM_A024RH.DTS_121.DataSet.FieldByName('NidTbxTct').asInteger := 0;
 DED_CDESCRITCT.SetFocus;
end;

procedure TFRM_A024RH.Btn_AlterarClick(Sender: TObject);
begin
  Botoes(['Btn_Cancelar','Btn_Gravar','Btn_Sair'],'FRM_A024RH',true);
  //edita registro do dataset
  DBGenerica(DTM_A024RH.DTS_121,'Conexao',2,0,DBG_TBXTCT);
  DED_CDESCRITCT.SetFocus;
end;

procedure TFRM_A024RH.Btn_GravarClick(Sender: TObject);
begin
  if LiberadoGravacao(FRM_A024RH,DTM_A024RH.DTS_121) then
    begin
      //grava dados no dataset
      DBGenerica(DTM_A024RH.DTS_121,'Conexao',4,0,DBG_TBXTCT);
      if lResp then
       Botoes(['Btn_Gravar','Btn_Cancelar'],'FRM_A024RH',false);
    end;
end;

procedure TFRM_A024RH.Btn_CancelarClick(Sender: TObject);
begin
   //cancela a operação corrente no dataset
   DBGenerica(DTM_A024RH.DTS_121,'Conexao',3,0,DBG_TBXTCT);
   Botoes(['Btn_Cancelar','Btn_Gravar'],'FRM_A024RH',false);
end;

procedure TFRM_A024RH.Btn_ExcluirClick(Sender: TObject);
begin
  //exclui registro do dataset
  DBGenerica(DTM_A024RH.DTS_121,'Conexao',5,0,DBG_TBXTCT);
end;

procedure TFRM_A024RH.Btn_ImprimirClick(Sender: TObject);
begin
  RelCadastro(DTM_A024RH.QRY_121,'Cadastro de Tipo de Cargos do TCE');
end;

procedure TFRM_A024RH.FormClose(Sender: TObject; var Action: TCloseAction);
begin
    Action:= oControlForms.Saidas(Self,[DTM_A024RH],DTM_A024RH.DTS_121.DataSet);
end;

procedure TFRM_A024RH.FormShow(Sender: TObject);
begin
  if not Acesso(nMatricula,'A024RH',DTM_A024RH) then
    close;
  Botoes(['Btn_Cancelar','Btn_Gravar'],'FRM_A024RH',false);
  FRM_A024RH.OnShow := nil;
 {é atribuido ao OnShow do Form o valor nil para que o mesmo seja executado apenas uma vez}
 {pelo fato que se outra aplicação for chamada pela tecla F3, e ao retornar da aplicação que foi chamada pela tecla}
 {o evento OnShow deste form não acontecerá, ou seja não será executado, para permanecer o mesmo status da aplicação}
 {quando o F3 foi chamado}
end;

procedure TFRM_A024RH.DBG_TBXTCTMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  //chama pesquisa de grid
  if Button = mbRight then
    ChamaPesqGrid(DTM_A024RH.QRY_121,nil,'cdescritct','Descrição do Tipo de Cargo');
end;

end.
