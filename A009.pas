unit A009;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  LMDCustomControl, LMDCustomPanel, LMDCustomBevelPanel,
  LMDCustomParentPanel, LMDCustomGroupBox, LMDGroupBox, Buttons, ExtCtrls,
  Grids, DBGrids, StdCtrls, Mask, DBCtrls;

type
  TFRM_A009 = class(TForm)
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
    GRD_GRI: TDBGrid;
    Label2: TLabel;
    DED_NIDTBXGRI: TDBEdit;
    DED_CNOMEGRI: TDBEdit;
    Label1: TLabel;
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
  FRM_A009: TFRM_A009;

implementation

uses D009, MPLCtrl, UVariaveis;

{$R *.DFM}

procedure TFRM_A009.Btn_LocalizarClick(Sender: TObject);
begin
    Pesquisa(DTM_A009.QRY_022,true,'','');
end;

procedure TFRM_A009.Btn_AvancarClick(Sender: TObject);
begin
  //proximo registro do dataset
  DBGenerica(DTM_A009.DTS_022,'Conexao',0,3);
end;

procedure TFRM_A009.Btn_RetrocederClick(Sender: TObject);
begin
  //registro anterior do dataset
  DBGenerica(DTM_A009.DTS_022,'Conexao',0,2);
end;

procedure TFRM_A009.Btn_IncluirClick(Sender: TObject);
begin
 //inclui registro no dataset
 DBGenerica(DTM_A009.DTS_022,'Conexao',1,0,GRD_GRI);
 Botoes(['Btn_Cancelar','Btn_Gravar','Btn_Sair'],'FRM_A009',true);
 DTM_A009.DTS_022.DataSet.FieldByName('nIdTbxGri').asInteger := 0;
 DED_CNOMEGRI.SetFocus;
end;

procedure TFRM_A009.Btn_AlterarClick(Sender: TObject);
begin
  Botoes(['Btn_Cancelar','Btn_Gravar','Btn_Sair'],'FRM_A009',true);
  //edita registro do dataset
  DBGenerica(DTM_A009.DTS_022,'Conexao',2,0, GRD_GRI);
  DED_CNOMEGRI.SetFocus;
end;

procedure TFRM_A009.Btn_GravarClick(Sender: TObject);
begin
  if LiberadoGravacao(FRM_A009,DTM_A009.DTS_022) then
    begin
      //grava dados do dataset
      DBGenerica(DTM_A009.DTS_022,'Conexao',4,0,GRD_GRI);
      if lResp then
       Botoes(['Btn_Gravar','Btn_Cancelar'],'FRM_A009',false);
    end;
end;

procedure TFRM_A009.Btn_CancelarClick(Sender: TObject);
begin
   //cancela a operação corrente do dataset
   DBGenerica(DTM_A009.DTS_022,'Conexao',3, 0, GRD_GRI);
   Botoes(['Btn_Cancelar','Btn_Gravar'],'FRM_A009',false);
end;

procedure TFRM_A009.Btn_ExcluirClick(Sender: TObject);
begin
    //exclui registro do dataset
    DBGenerica(DTM_A009.DTS_022,'Conexao',5,0);
end;

procedure TFRM_A009.Btn_ImprimirClick(Sender: TObject);
begin
  RelCadastro(DTM_A009.QRY_022,'Cadastro de Grau de Instrução');
end;

procedure TFRM_A009.BTN_SAIRClick(Sender: TObject);
begin
  close;
end;

procedure TFRM_A009.FormClose(Sender: TObject; var Action: TCloseAction);
begin
    Action:= oControlForms.Saidas(Self,[DTM_A009],DTM_A009.DTS_022.DataSet);
end;

procedure TFRM_A009.FormShow(Sender: TObject);
begin
  if not Acesso(nMatricula,'A009',DTM_A009) then
    close;
  Botoes(['Btn_Cancelar','Btn_Gravar'],'FRM_A009',false);
  FRM_A009.OnShow := nil;
 {é atribuido ao OnShow do Form o valor nil para que o mesmo seja executado apenas uma vez}
 {pelo fato que se outra aplicação for chamada pela tecla F3, e ao retornar da aplicação que foi chamada pela tecla}
 {o evento OnShow deste form não acontecerá, ou seja não será executado, para permanecer o mesmo status da aplicação}
 {quando o F3 foi chamado}
end;

end.
