unit A025RH;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ToolEdit, RxLookup, DBCtrls, Grids, DBGrids, LMDCustomPanelFill,
  LMDPanelFill, StdCtrls, Mask, RXDBCtrl, LMDCustomControl, LMDCustomPanel,
  LMDCustomBevelPanel, LMDCustomParentPanel, LMDCustomGroupBox,
  LMDGroupBox, Buttons, ExtCtrls;

type
  TFRM_A025RH = class(TForm)
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
    DBG_TBXSPT: TDBGrid;
    btn_localizar: TSpeedButton;
    LMDGroupBox3: TLMDGroupBox;
    Label21: TLabel;
    Label2: TLabel;
    DED_CDESCRSPT: TDBEdit;
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
    procedure DBG_TBXSPTMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRM_A025RH: TFRM_A025RH;

implementation

uses DMCTRL, MPLCtrl, MPLLib, UVariaveis, CtrlForms, D025RH;


{$R *.DFM}

procedure TFRM_A025RH.BTN_SAIRClick(Sender: TObject);
begin
  close;
end;

procedure TFRM_A025RH.btn_localizarClick(Sender: TObject);
begin
  //chama pesquisa padrao
  Pesquisa(DTM_A025RH.QRY_106,true,'','');
end;

procedure TFRM_A025RH.Btn_AvancarClick(Sender: TObject);
begin
  //proximo registro do dataset
  DBGenerica(DTM_A025RH.DTS_106,'Conexao',0,3);
end;

procedure TFRM_A025RH.Btn_RetrocederClick(Sender: TObject);
begin
  //registro anterior do dataset
  DBGenerica(DTM_A025RH.DTS_106,'Conexao',0,2);
end;

procedure TFRM_A025RH.Btn_IncluirClick(Sender: TObject);
begin
 //inclui registro no dataset
 DBGenerica(DTM_A025RH.DTS_106,'Conexao',1,0,DBG_TBXSPT);
 Botoes(['Btn_Cancelar','Btn_Gravar','Btn_Sair'],'FRM_A025RH',true);
 DTM_A025RH.DTS_106.DataSet.FieldByName('NidTbxSpt').asInteger := 0;
 DED_CDESCRSPT.SetFocus;
end;

procedure TFRM_A025RH.Btn_AlterarClick(Sender: TObject);
begin
  Botoes(['Btn_Cancelar','Btn_Gravar','Btn_Sair'],'FRM_A025RH',true);
  //edita registro do dataset
  DBGenerica(DTM_A025RH.DTS_106,'Conexao',2,0,DBG_TBXSPT);
  DED_CDESCRSPT.SetFocus;
end;

procedure TFRM_A025RH.Btn_GravarClick(Sender: TObject);
begin
  if LiberadoGravacao(FRM_A025RH,DTM_A025RH.DTS_106) then
    begin
      //grava dados no dataset
      DBGenerica(DTM_A025RH.DTS_106,'Conexao',4,0,DBG_TBXSPT);
      if lResp then
       Botoes(['Btn_Gravar','Btn_Cancelar'],'FRM_A025RH',false);
    end;
end;

procedure TFRM_A025RH.Btn_CancelarClick(Sender: TObject);
begin
   //cancela a operação corrente no dataset
   DBGenerica(DTM_A025RH.DTS_106,'Conexao',3,0,DBG_TBXSPT);
   Botoes(['Btn_Cancelar','Btn_Gravar'],'FRM_A025RH',false);
end;

procedure TFRM_A025RH.Btn_ExcluirClick(Sender: TObject);
begin
  //exclui registro do dataset
  DBGenerica(DTM_A025RH.DTS_106,'Conexao',5,0,DBG_TBXSPT);
end;

procedure TFRM_A025RH.Btn_ImprimirClick(Sender: TObject);
begin
  RelCadastro(DTM_A025RH.QRY_106,'Cadastro da Situação da Pessoa');
end;

procedure TFRM_A025RH.FormClose(Sender: TObject; var Action: TCloseAction);
begin
    Action:= oControlForms.Saidas(Self,[DTM_A025RH],DTM_A025RH.DTS_106.DataSet);
end;

procedure TFRM_A025RH.FormShow(Sender: TObject);
begin
  if not Acesso(nMatricula,'A025RH',DTM_A025RH) then
    close;
  Botoes(['Btn_Cancelar','Btn_Gravar'],'FRM_A025RH',false);
  FRM_A025RH.OnShow := nil;
 {é atribuido ao OnShow do Form o valor nil para que o mesmo seja executado apenas uma vez}
 {pelo fato que se outra aplicação for chamada pela tecla F3, e ao retornar da aplicação que foi chamada pela tecla}
 {o evento OnShow deste form não acontecerá, ou seja não será executado, para permanecer o mesmo status da aplicação}
 {quando o F3 foi chamado}
end;

procedure TFRM_A025RH.DBG_TBXSPTMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  //chama pesquisa de grid
  if Button = mbRight then
    ChamaPesqGrid(DTM_A025RH.QRY_106,nil,'cdescrspt','Descrição da Situação da Pessoa');
end;

end.
