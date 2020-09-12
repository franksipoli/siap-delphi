unit A023RH;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ToolEdit, RxLookup, DBCtrls, Grids, DBGrids, LMDCustomPanelFill,
  LMDPanelFill, StdCtrls, Mask, RXDBCtrl, LMDCustomControl, LMDCustomPanel,
  LMDCustomBevelPanel, LMDCustomParentPanel, LMDCustomGroupBox,
  LMDGroupBox, Buttons, ExtCtrls;

type
  TFRM_A023RH = class(TForm)
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
    DBG_TBXCAT: TDBGrid;
    btn_localizar: TSpeedButton;
    LMDGroupBox3: TLMDGroupBox;
    Label21: TLabel;
    Label2: TLabel;
    DED_CDESCRICAT: TDBEdit;
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
    procedure DBG_TBXCATMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRM_A023RH: TFRM_A023RH;

implementation

uses DMCTRL, MPLCtrl, MPLLib, UVariaveis, CtrlForms, D023RH;


{$R *.DFM}

procedure TFRM_A023RH.BTN_SAIRClick(Sender: TObject);
begin
  close;
end;

procedure TFRM_A023RH.btn_localizarClick(Sender: TObject);
begin
  Pesquisa(DTM_A023RH.QRY_126,true,'','');
end;

procedure TFRM_A023RH.Btn_AvancarClick(Sender: TObject);
begin
  //proximo registro do dataset
  DBGenerica(DTM_A023RH.DTS_126,'Conexao',0,3);
end;

procedure TFRM_A023RH.Btn_RetrocederClick(Sender: TObject);
begin
  //registro anterior do dataset
  DBGenerica(DTM_A023RH.DTS_126,'Conexao',0,2);
end;

procedure TFRM_A023RH.Btn_IncluirClick(Sender: TObject);
begin
 //inclui registro no dataset
 DBGenerica(DTM_A023RH.DTS_126,'Conexao',1,0,DBG_TBXCAT);
 Botoes(['Btn_Cancelar','Btn_Gravar','Btn_Sair'],'FRM_A023RH',true);
 DTM_A023RH.DTS_126.DataSet.FieldByName('NidTbxCat').asInteger := 0;
 DED_CDESCRICAT.SetFocus;
end;

procedure TFRM_A023RH.Btn_AlterarClick(Sender: TObject);
begin
  Botoes(['Btn_Cancelar','Btn_Gravar','Btn_Sair'],'FRM_A023RH',true);
  //edita registro do dataset
  DBGenerica(DTM_A023RH.DTS_126,'Conexao',2,0,DBG_TBXCAT);
  DED_CDESCRICAT.SetFocus;
end;

procedure TFRM_A023RH.Btn_GravarClick(Sender: TObject);
begin
  if LiberadoGravacao(FRM_A023RH,DTM_A023RH.DTS_126) then
    begin
      //grava dados no dataset
      DBGenerica(DTM_A023RH.DTS_126,'Conexao',4,0,DBG_TBXCAT);
      if lResp then
       Botoes(['Btn_Gravar','Btn_Cancelar'],'FRM_A023RH',false);
    end;
end;

procedure TFRM_A023RH.Btn_CancelarClick(Sender: TObject);
begin
   //cancela a operação corrente no dataset
   DBGenerica(DTM_A023RH.DTS_126,'Conexao',3,0,DBG_TBXCAT);
   Botoes(['Btn_Cancelar','Btn_Gravar'],'FRM_A023RH',false);
end;

procedure TFRM_A023RH.Btn_ExcluirClick(Sender: TObject);
begin
  //exclui registro do dataset
  DBGenerica(DTM_A023RH.DTS_126,'Conexao',5,0,DBG_TBXCAT);
end;

procedure TFRM_A023RH.Btn_ImprimirClick(Sender: TObject);
begin
  RelCadastro(DTM_A023RH.QRY_126,'Cadastro Classes de Atividades');
end;

procedure TFRM_A023RH.FormClose(Sender: TObject; var Action: TCloseAction);
begin
    Action:= oControlForms.Saidas(Self,[DTM_A023RH],DTM_A023RH.DTS_126.DataSet);
end;

procedure TFRM_A023RH.FormShow(Sender: TObject);
begin
  if not Acesso(nMatricula,'A023RH',DTM_A023RH) then
    close;
  Botoes(['Btn_Cancelar','Btn_Gravar'],'FRM_A023RH',false);
  FRM_A023RH.OnShow := nil;
 {é atribuido ao OnShow do Form o valor nil para que o mesmo seja executado apenas uma vez}
 {pelo fato que se outra aplicação for chamada pela tecla F3, e ao retornar da aplicação que foi chamada pela tecla}
 {o evento OnShow deste form não acontecerá, ou seja não será executado, para permanecer o mesmo status da aplicação}
 {quando o F3 foi chamado}
end;

procedure TFRM_A023RH.DBG_TBXCATMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  //chama pesquisa de grid
  if Button = mbRight then
    ChamaPesqGrid(DTM_A023RH.QRY_126,nil,'cdescricat','Descrição Classe de Atividade');
end;

end.
