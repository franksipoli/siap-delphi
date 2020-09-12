unit A012;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  LMDCustomControl, LMDCustomPanel, LMDCustomBevelPanel,
  LMDCustomParentPanel, LMDCustomGroupBox, LMDGroupBox, Buttons, ExtCtrls,
  Grids, DBGrids, StdCtrls, Mask, DBCtrls;

type
  TFRM_A012 = class(TForm)
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
    GRD_ERG: TDBGrid;
    Label2: TLabel;
    Label1: TLabel;
    DED_NIDTBXERG: TDBEdit;
    DED_CNOMEEMIRG: TDBEdit;
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
  FRM_A012: TFRM_A012;

implementation

uses D012, MPLCtrl, UVariaveis;

{$R *.DFM}

procedure TFRM_A012.Btn_LocalizarClick(Sender: TObject);
begin
    Pesquisa(DTM_A012.QRY_024,true,'','');
end;

procedure TFRM_A012.Btn_AvancarClick(Sender: TObject);
begin
  //proximo registro do dataset
  DBGenerica(DTM_A012.DTS_024,'Conexao',0,3);
end;

procedure TFRM_A012.Btn_RetrocederClick(Sender: TObject);
begin
  //registro anterior do dataset
  DBGenerica(DTM_A012.DTS_024,'Conexao',0,2);
end;

procedure TFRM_A012.Btn_IncluirClick(Sender: TObject);
begin
 //inclui registro no dataset
 DBGenerica(DTM_A012.DTS_024,'Conexao',1,0,GRD_ERG);
 Botoes(['Btn_Cancelar','Btn_Gravar','Btn_Sair'],'FRM_A012',true);
 DTM_A012.DTS_024.DataSet.FieldByName('nIdTbxErg').asInteger := 0;
 DED_CNOMEEMIRG.SetFocus;
end;

procedure TFRM_A012.Btn_AlterarClick(Sender: TObject);
begin
  Botoes(['Btn_Cancelar','Btn_Gravar','Btn_Sair'],'FRM_A012',true);
  //edita registro do dataset
  DBGenerica(DTM_A012.DTS_024,'Conexao',2,0, GRD_ERG);
  DED_CNOMEEMIRG.SetFocus;
end;

procedure TFRM_A012.Btn_GravarClick(Sender: TObject);
begin
  if LiberadoGravacao(FRM_A012,DTM_A012.DTS_024) then
    begin
      //grava dados do dataset
      DBGenerica(DTM_A012.DTS_024,'Conexao',4,0,GRD_ERG);
      if lResp then
       Botoes(['Btn_Gravar','Btn_Cancelar'],'FRM_A012',false);
    end;
end;

procedure TFRM_A012.Btn_CancelarClick(Sender: TObject);
begin
   //cancela operação atual do dataset
   DBGenerica(DTM_A012.DTS_024,'Conexao',3, 0, GRD_ERG);
   Botoes(['Btn_Cancelar','Btn_Gravar'],'FRM_A012',false);
end;

procedure TFRM_A012.Btn_ExcluirClick(Sender: TObject);
begin
    //exclui registro atual do dataset
    DBGenerica(DTM_A012.DTS_024,'Conexao',5,0);
end;

procedure TFRM_A012.Btn_ImprimirClick(Sender: TObject);
begin
  RelCadastro(DTM_A012.QRY_024,'Cadastro Orgão Emissor');
end;

procedure TFRM_A012.BTN_SAIRClick(Sender: TObject);
begin
  close;
end;

procedure TFRM_A012.FormClose(Sender: TObject; var Action: TCloseAction);
begin
    Action:= oControlForms.Saidas(Self,[DTM_A012],DTM_A012.DTS_024.DataSet);
end;

procedure TFRM_A012.FormShow(Sender: TObject);
begin
  if not Acesso(nMatricula,'A012',DTM_A012) then
    close;
  Botoes(['Btn_Cancelar','Btn_Gravar'],'FRM_A012',false);
  FRM_A012.OnShow := nil;
 {é atribuido ao OnShow do Form o valor nil para que o mesmo seja executado apenas uma vez}
 {pelo fato que se outra aplicação for chamada pela tecla F3, e ao retornar da aplicação que foi chamada pela tecla}
 {o evento OnShow deste form não acontecerá, ou seja não será executado, para permanecer o mesmo status da aplicação}
 {quando o F3 foi chamado}
end;

end.
