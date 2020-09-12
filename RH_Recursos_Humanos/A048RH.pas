unit A048RH;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ToolEdit, RxLookup, DBCtrls, Grids, DBGrids, LMDCustomPanelFill,
  LMDPanelFill, StdCtrls, Mask, RXDBCtrl, LMDCustomControl, LMDCustomPanel,
  LMDCustomBevelPanel, LMDCustomParentPanel, LMDCustomGroupBox,
  LMDGroupBox, Buttons, ExtCtrls, RxDBComb;

type
  TFRM_A048RH = class(TForm)
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
    DBG_TBXSTS: TDBGrid;
    btn_localizar: TSpeedButton;
    LMDGroupBox3: TLMDGroupBox;
    Label21: TLabel;
    Label2: TLabel;
    DED_CDESCRISTS: TDBEdit;
    DBC_CDISPCRG: TRxDBComboBox;
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
    procedure DBG_TBXSTSMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRM_A048RH: TFRM_A048RH;

implementation

uses DMCTRL, MPLCtrl, MPLLib, UVariaveis, CtrlForms, D048RH;


{$R *.DFM}

procedure TFRM_A048RH.BTN_SAIRClick(Sender: TObject);
begin
  close;
end;

procedure TFRM_A048RH.btn_localizarClick(Sender: TObject);
begin
  //chama pesquisa padrao
  Pesquisa(DTM_A048RH.QRY_093,true,'','');
end;

procedure TFRM_A048RH.Btn_AvancarClick(Sender: TObject);
begin
  //proximo registro do dataset
  DBGenerica(DTM_A048RH.DTS_093,'Conexao',0,3);
end;

procedure TFRM_A048RH.Btn_RetrocederClick(Sender: TObject);
begin
  //registro anterior do dataset
  DBGenerica(DTM_A048RH.DTS_093,'Conexao',0,2);
end;

procedure TFRM_A048RH.Btn_IncluirClick(Sender: TObject);
begin
 //inclui registro no dataset
 DBGenerica(DTM_A048RH.DTS_093,'Conexao',1,0,DBG_TBXSTS);
 Botoes(['Btn_Cancelar','Btn_Gravar','Btn_Sair'],'FRM_A048RH',true);
 DTM_A048RH.DTS_093.DataSet.FieldByName('NidTbxSts').asInteger := 0;
 DED_CDESCRISTS.SetFocus;
end;

procedure TFRM_A048RH.Btn_AlterarClick(Sender: TObject);
begin
  Botoes(['Btn_Cancelar','Btn_Gravar','Btn_Sair'],'FRM_A048RH',true);
  //edita registro do dataset
  DBGenerica(DTM_A048RH.DTS_093,'Conexao',2,0,DBG_TBXSTS);
  DED_CDESCRISTS.SetFocus;
end;

procedure TFRM_A048RH.Btn_GravarClick(Sender: TObject);
begin
  if LiberadoGravacao(FRM_A048RH,DTM_A048RH.DTS_093) then
    begin
      //grava dados no dataset
      DBGenerica(DTM_A048RH.DTS_093,'Conexao',4,0,DBG_TBXSTS);
      if lResp then
       Botoes(['Btn_Gravar','Btn_Cancelar'],'FRM_A048RH',false);
    end;
end;

procedure TFRM_A048RH.Btn_CancelarClick(Sender: TObject);
begin
   //cancela a operação corrente no dataset
   DBGenerica(DTM_A048RH.DTS_093,'Conexao',3,0,DBG_TBXSTS);
   Botoes(['Btn_Cancelar','Btn_Gravar'],'FRM_A048RH',false);
end;

procedure TFRM_A048RH.Btn_ExcluirClick(Sender: TObject);
begin
  //exclui registro do dataset
  DBGenerica(DTM_A048RH.DTS_093,'Conexao',5,0,DBG_TBXSTS);
end;

procedure TFRM_A048RH.Btn_ImprimirClick(Sender: TObject);
begin
  RelCadastro(DTM_A048RH.QRY_093,'Cadastro do Status Funcional');
end;

procedure TFRM_A048RH.FormClose(Sender: TObject; var Action: TCloseAction);
begin
    Action:= oControlForms.Saidas(Self,[DTM_A048RH],DTM_A048RH.DTS_093.DataSet);
end;

procedure TFRM_A048RH.FormShow(Sender: TObject);
begin
  if not Acesso(nMatricula,'A048RH',DTM_A048RH) then
    close;
  Botoes(['Btn_Cancelar','Btn_Gravar'],'FRM_A048RH',false);
  FRM_A048RH.OnShow := nil;
 {é atribuido ao OnShow do Form o valor nil para que o mesmo seja executado apenas uma vez}
 {pelo fato que se outra aplicação for chamada pela tecla F3, e ao retornar da aplicação que foi chamada pela tecla}
 {o evento OnShow deste form não acontecerá, ou seja não será executado, para permanecer o mesmo status da aplicação}
 {quando o F3 foi chamado}
end;

procedure TFRM_A048RH.DBG_TBXSTSMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  //chama pesquisa de grid
  if Button = mbRight then
    ChamaPesqGrid(DTM_A048RH.QRY_093,nil,'cdescrists','Descrição do Status Funcional');
end;

end.
