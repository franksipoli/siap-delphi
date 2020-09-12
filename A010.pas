unit A010;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  LMDCustomControl, LMDCustomPanel, LMDCustomBevelPanel,
  LMDCustomParentPanel, LMDCustomGroupBox, LMDGroupBox, Buttons, ExtCtrls,
  Grids, DBGrids, StdCtrls, Mask, DBCtrls, ToolEdit, RXDBCtrl;

type
  TFRM_A010 = class(TForm)
    Panel2: TPanel;
    Btn_Incluir: TSpeedButton;
    Btn_Alterar: TSpeedButton;
    Btn_Gravar: TSpeedButton;
    Btn_Localizar: TSpeedButton;
    Btn_Excluir: TSpeedButton;
    BTN_SAIR: TSpeedButton;
    Btn_Avancar: TSpeedButton;
    Btn_Retroceder: TSpeedButton;
    Btn_Cancelar: TSpeedButton;
    Btn_Imprimir: TSpeedButton;
    LMDGroupBox3: TLMDGroupBox;
    LMDGroupBox2: TLMDGroupBox;
    GRD_ECI: TDBGrid;
    Label2: TLabel;
    Label1: TLabel;
    DED_NIDTBXECI: TDBEdit;
    DED_CNOMEECI: TDBEdit;
    Label3: TLabel;
    RxDBComboEdit1: TRxDBComboEdit;
    RxDBComboEdit2: TRxDBComboEdit;
    Label4: TLabel;
    procedure Btn_LocalizarClick(Sender: TObject);
    procedure Btn_AvancarClick(Sender: TObject);
    procedure Btn_RetrocederClick(Sender: TObject);
    procedure Btn_IncluirClick(Sender: TObject);
    procedure Btn_AlterarClick(Sender: TObject);
    procedure Btn_GravarClick(Sender: TObject);
    procedure Btn_CancelarClick(Sender: TObject);
    procedure Btn_ExcluirClick(Sender: TObject);
    procedure Btn_ImprimirClick(Sender: TObject);
    procedure BTN_SAIRClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRM_A010: TFRM_A010;

implementation

uses MPLCtrl, D010, UVariaveis;

{$R *.DFM}

procedure TFRM_A010.Btn_LocalizarClick(Sender: TObject);
begin
    Pesquisa(DTM_A010.QRY_021,true,'','');
end;

procedure TFRM_A010.Btn_AvancarClick(Sender: TObject);
begin
  //proximo registro do dataset
  DBGenerica(DTM_A010.DTS_021,'Conexao',0,3);
end;

procedure TFRM_A010.Btn_RetrocederClick(Sender: TObject);
begin
  //registro anterior do dataset
  DBGenerica(DTM_A010.DTS_021,'Conexao',0,2);
end;

procedure TFRM_A010.Btn_IncluirClick(Sender: TObject);
begin
 //inclui registro no dataset
 DBGenerica(DTM_A010.DTS_021,'Conexao',1,0,GRD_ECI);
 Botoes(['Btn_Cancelar','Btn_Gravar','Btn_Sair'],'FRM_A010',true);
 DTM_A010.DTS_021.DataSet.FieldByName('nIdTbxEci').asInteger := 0;
 DED_CNOMEECI.SetFocus;
end;

procedure TFRM_A010.Btn_AlterarClick(Sender: TObject);
begin
  Botoes(['Btn_Cancelar','Btn_Gravar','Btn_Sair'],'FRM_A010',true);
  //edita registro do dataset
  DBGenerica(DTM_A010.DTS_021,'Conexao',2,0, GRD_ECI);
  DED_CNOMEECI.SetFocus;
end;

procedure TFRM_A010.Btn_GravarClick(Sender: TObject);
begin
  if LiberadoGravacao(FRM_A010,DTM_A010.DTS_021) then
    begin
      //grava os dados do dataset
      DBGenerica(DTM_A010.DTS_021,'Conexao',4,0,GRD_ECI);
      if lResp then
       Botoes(['Btn_Gravar','Btn_Cancelar'],'FRM_A010',false);
    end;
end;

procedure TFRM_A010.Btn_CancelarClick(Sender: TObject);
begin
   //cancela a operação corrente do dataset
   DBGenerica(DTM_A010.DTS_021,'Conexao',3, 0, GRD_ECI);
   Botoes(['Btn_Cancelar','Btn_Gravar'],'FRM_A010',false);
end;

procedure TFRM_A010.Btn_ExcluirClick(Sender: TObject);
begin
    //exclui registro corrente do dataset
    DBGenerica(DTM_A010.DTS_021,'Conexao',5,0);
end;

procedure TFRM_A010.Btn_ImprimirClick(Sender: TObject);
begin
  RelCadastro(DTM_A010.QRY_021,'Cadastro de Estado Civil');
end;

procedure TFRM_A010.BTN_SAIRClick(Sender: TObject);
begin
  close;
end;

procedure TFRM_A010.FormClose(Sender: TObject; var Action: TCloseAction);
begin
    Action:= oControlForms.Saidas(Self,[DTM_A010],DTM_A010.DTS_021.DataSet);
end;

procedure TFRM_A010.FormShow(Sender: TObject);
begin
  if not Acesso(nMatricula,'A010',DTM_A010) then
    close;
  Botoes(['Btn_Cancelar','Btn_Gravar'],'FRM_A010',false);
  FRM_A010.OnShow := nil;
 {é atribuido ao OnShow do Form o valor nil para que o mesmo seja executado apenas uma vez}
 {pelo fato que se outra aplicação for chamada pela tecla F3, e ao retornar da aplicação que foi chamada pela tecla}
 {o evento OnShow deste form não acontecerá, ou seja não será executado, para permanecer o mesmo status da aplicação}
 {quando o F3 foi chamado}
end;

end.
