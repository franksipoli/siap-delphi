unit A020RH;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ToolEdit, RxLookup, DBCtrls, Grids, DBGrids, LMDCustomPanelFill,
  LMDPanelFill, StdCtrls, Mask, RXDBCtrl, LMDCustomControl, LMDCustomPanel,
  LMDCustomBevelPanel, LMDCustomParentPanel, LMDCustomGroupBox,
  LMDGroupBox, Buttons, ExtCtrls;

type
  TFRM_A020RH = class(TForm)
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
    DED_CDESCRISLR: TDBEdit;
    DBG_TBLSLR: TDBGrid;
    BTN_VlrSalariais: TSpeedButton;
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
    procedure DBG_TBLSLRMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRM_A020RH: TFRM_A020RH;

implementation

Uses D020RH, CtrlForms, MPLCtrl, MPLLib, UVariaveis ;

{$R *.DFM}

procedure TFRM_A020RH.BTN_SAIRClick(Sender: TObject);
begin
   close;
end;

procedure TFRM_A020RH.BTN_VlrSalariaisClick(Sender: TObject);
begin
  oControlForms.AtivaForm('FRM_A021RH',shModal,nil);
end;

procedure TFRM_A020RH.Btn_AvancarClick(Sender: TObject);
begin
   //proximo registro do dataset
  DBGenerica(DTM_A020RH.DTS_092,'Conexao',0,3);
end;

procedure TFRM_A020RH.Btn_RetrocederClick(Sender: TObject);
begin
  //registro anterior do dataset
  DBGenerica(DTM_A020RH.DTS_092,'Conexao',0,2);
end;

procedure TFRM_A020RH.Btn_IncluirClick(Sender: TObject);
begin
 //inclui registro no dataset
 DBGenerica(DTM_A020RH.DTS_092,'Conexao',1,0,DBG_TBLSLR);
 Botoes(['Btn_Cancelar','Btn_Gravar','Btn_Sair'],'FRM_A020RH',true);
 DTM_A020RH.DTS_092.DataSet.FieldByName('NidTbxSlr').asInteger := 0;
 DED_CDESCRISLR.SetFocus;
end;

procedure TFRM_A020RH.Btn_AlterarClick(Sender: TObject);
begin
  Botoes(['Btn_Cancelar','Btn_Gravar','Btn_Sair'],'FRM_A020RH',true);
  //edita registro do dataset
  DBGenerica(DTM_A020RH.DTS_092,'Conexao',2,0,DBG_TBLSLR);
  DED_CDESCRISLR.SetFocus;
end;

procedure TFRM_A020RH.Btn_GravarClick(Sender: TObject);
begin
  if LiberadoGravacao(FRM_A020RH,DTM_A020RH.DTS_092) then
    begin
      //grava dados no dataset
      DBGenerica(DTM_A020RH.DTS_092,'Conexao',4,0,DBG_TBLSLR);
      if lResp then
       Botoes(['Btn_Gravar','Btn_Cancelar'],'FRM_A020RH',false);
    end;
end;

procedure TFRM_A020RH.Btn_CancelarClick(Sender: TObject);
begin
   //cancela a operação corrente no dataset
   DBGenerica(DTM_A020RH.DTS_092,'Conexao',3,0,DBG_TBLSLR);
   Botoes(['Btn_Cancelar','Btn_Gravar'],'FRM_A020RH',false);
end;

procedure TFRM_A020RH.Btn_ExcluirClick(Sender: TObject);
begin
  //exclui registro do dataset
  DBGenerica(DTM_A020RH.DTS_092,'Conexao',5,0,DBG_TBLSLR);
end;

procedure TFRM_A020RH.Btn_ImprimirClick(Sender: TObject);
begin
  RelCadastro(DTM_A020RH.QRY_092,'Tabelas Salariais');
end;

procedure TFRM_A020RH.FormClose(Sender: TObject; var Action: TCloseAction);
begin
    Action:= oControlForms.Saidas(Self,[DTM_A020RH],DTM_A020RH.DTS_092.DataSet);
end;

procedure TFRM_A020RH.FormShow(Sender: TObject);
begin
  if not Acesso(nMatricula,'A020RH',DTM_A020RH) then
    close;
  Botoes(['Btn_Cancelar','Btn_Gravar'],'FRM_A020RH',false);
  FRM_A020RH.OnShow := nil;
 {é atribuido ao OnShow do Form o valor nil para que o mesmo seja executado apenas uma vez}
 {pelo fato que se outra aplicação for chamada pela tecla F3, e ao retornar da aplicação que foi chamada pela tecla}
 {o evento OnShow deste form não acontecerá, ou seja não será executado, para permanecer o mesmo status da aplicação}
 {quando o F3 foi chamado}
end;

procedure TFRM_A020RH.DBG_TBLSLRMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  //chama pesquisa de grid
  if Button = mbRight then
    ChamaPesqGrid(DTM_A020RH.QRY_092,nil,'cdescrislr','Descrição da Tabela');
end;

end.
