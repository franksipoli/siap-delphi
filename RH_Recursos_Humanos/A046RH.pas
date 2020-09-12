unit A046RH;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ToolEdit, RxLookup, DBCtrls, Grids, DBGrids, LMDCustomPanelFill,
  LMDPanelFill, StdCtrls, Mask, RXDBCtrl, LMDCustomControl, LMDCustomPanel,
  LMDCustomBevelPanel, LMDCustomParentPanel, LMDCustomGroupBox,
  LMDGroupBox, Buttons, ExtCtrls, RxDBComb;

type
  TFRM_A046RH = class(TForm)
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
    DBG_TBXGMV: TDBGrid;
    btn_localizar: TSpeedButton;
    LMDGroupBox3: TLMDGroupBox;
    Label21: TLabel;
    DED_CDESCRIGMV: TDBEdit;
    CBB_CTIPOMVT: TRxDBComboBox;
    DBL_NIDTBXGMV: TRxDBLookupCombo;
    Label1: TLabel;
    Label2: TLabel;
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
    procedure DBG_TBXGMVMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRM_A046RH: TFRM_A046RH;

implementation

uses DMCTRL, MPLCtrl, MPLLib, UVariaveis, CtrlForms, D046RH;


{$R *.DFM}

procedure TFRM_A046RH.BTN_SAIRClick(Sender: TObject);
begin
  close;
end;

procedure TFRM_A046RH.btn_localizarClick(Sender: TObject);
begin
  Pesquisa(DTM_A046RH.QRY_084,true,'','');
end;

procedure TFRM_A046RH.Btn_AvancarClick(Sender: TObject);
begin
  //proximo registro do dataset
  DBGenerica(DTM_A046RH.DTS_084,'Conexao',0,3);
end;

procedure TFRM_A046RH.Btn_RetrocederClick(Sender: TObject);
begin
  //registro anterior do dataset
  DBGenerica(DTM_A046RH.DTS_084,'Conexao',0,2);
end;

procedure TFRM_A046RH.Btn_IncluirClick(Sender: TObject);
begin
 //inclui registro no dataset
 DBGenerica(DTM_A046RH.DTS_084,'Conexao',1,0,DBG_TBXGMV);
 Botoes(['Btn_Cancelar','Btn_Gravar','Btn_Sair'],'FRM_A046RH',true);
 DTM_A046RH.DTS_084.DataSet.FieldByName('NidTBXGMV').asInteger := 0;
 DED_CDESCRIGMV.SetFocus;
end;

procedure TFRM_A046RH.Btn_AlterarClick(Sender: TObject);
begin
  Botoes(['Btn_Cancelar','Btn_Gravar','Btn_Sair'],'FRM_A046RH',true);
  //edita registro do dataset
  DBGenerica(DTM_A046RH.DTS_084,'Conexao',2,0,DBG_TBXGMV);
  DED_CDESCRIGMV.SetFocus;
end;

procedure TFRM_A046RH.Btn_GravarClick(Sender: TObject);
begin
  if LiberadoGravacao(FRM_A046RH,DTM_A046RH.DTS_084) then
    begin
      //grava dados no dataset
      DBGenerica(DTM_A046RH.DTS_084,'Conexao',4,0,DBG_TBXGMV);
      if lResp then
       Botoes(['Btn_Gravar','Btn_Cancelar'],'FRM_A046RH',false);
    end;
end;

procedure TFRM_A046RH.Btn_CancelarClick(Sender: TObject);
begin
   //cancela a operação corrente no dataset
   DBGenerica(DTM_A046RH.DTS_084,'Conexao',3,0,DBG_TBXGMV);
   Botoes(['Btn_Cancelar','Btn_Gravar'],'FRM_A046RH',false);
end;

procedure TFRM_A046RH.Btn_ExcluirClick(Sender: TObject);
begin
  //exclui registro do dataset
  DBGenerica(DTM_A046RH.DTS_084,'Conexao',5,0,DBG_TBXGMV);
end;

procedure TFRM_A046RH.Btn_ImprimirClick(Sender: TObject);
begin
  RelCadastro(DTM_A046RH.QRY_084,'Cadastro dos Grupos de Movimento');
end;

procedure TFRM_A046RH.FormClose(Sender: TObject; var Action: TCloseAction);
begin
    Action:= oControlForms.Saidas(Self,[DTM_A046RH],DTM_A046RH.DTS_084.DataSet);
end;

procedure TFRM_A046RH.FormShow(Sender: TObject);
begin
  if not Acesso(nMatricula,'A046RH',DTM_A046RH) then
    close;
  Botoes(['Btn_Cancelar','Btn_Gravar'],'FRM_A046RH',false);
  FRM_A046RH.OnShow := nil;
 {é atribuido ao OnShow do Form o valor nil para que o mesmo seja executado apenas uma vez}
 {pelo fato que se outra aplicação for chamada pela tecla F3, e ao retornar da aplicação que foi chamada pela tecla}
 {o evento OnShow deste form não acontecerá, ou seja não será executado, para permanecer o mesmo status da aplicação}
 {quando o F3 foi chamado}
end;

procedure TFRM_A046RH.DBG_TBXGMVMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  //chama pesquisa de grid
  if Button = mbRight then
    ChamaPesqGrid(DTM_A046RH.QRY_084,nil,'cdescrigmv','Descrição do Grupo de Movimento');
end;

end.
