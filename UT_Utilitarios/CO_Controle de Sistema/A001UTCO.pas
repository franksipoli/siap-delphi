unit A001UTCO;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  LMDCustomControl, LMDCustomPanel, LMDCustomBevelPanel,
  LMDCustomParentPanel, LMDCustomGroupBox, LMDGroupBox, Buttons, ExtCtrls,
  Grids, DBGrids, StdCtrls, Mask, DBCtrls;

type
  TFRM_A001UTCO = class(TForm)
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
    GRD_CAD: TDBGrid;
    DED_NIDTBL_G: TDBEdit;
    DED_CNOMEGRUPO: TDBEdit;
    DED_NSEQUENCIA: TDBEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
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
  FRM_A001UTCO: TFRM_A001UTCO;

implementation

uses D001UTCO, MPLCtrl, TELAPRIN, Login, UVariaveis;

{$R *.DFM}

procedure TFRM_A001UTCO.Btn_LocalizarClick(Sender: TObject);
begin
  Pesquisa(DTM_A001UTCO.QRY_040,true,'','');
end;

procedure TFRM_A001UTCO.Btn_AvancarClick(Sender: TObject);
begin
  DBGenerica(DTM_A001UTCO.DTS_040,'Conexao',0,3);
end;

procedure TFRM_A001UTCO.Btn_RetrocederClick(Sender: TObject);
begin
  DBGenerica(DTM_A001UTCO.DTS_040,'Conexao',0,2);
end;

procedure TFRM_A001UTCO.Btn_IncluirClick(Sender: TObject);
begin
  DBGenerica(DTM_A001UTCO.DTS_040,'Conexao',1,0,GRD_CAD);
  DTM_A001UTCO.DTS_040.DataSet.FieldByName('NIDTBL_G').asInteger := 0;
  DED_CNOMEGRUPO.SetFocus;
  Botoes(['Btn_Cancelar','Btn_Gravar','Btn_Sair'],'FRM_A001UTCO',true);
end;

procedure TFRM_A001UTCO.Btn_AlterarClick(Sender: TObject);
begin
  Botoes(['Btn_Cancelar','Btn_Gravar','Btn_Sair'],'FRM_A001UTCO',true);
  DBGenerica(DTM_A001UTCO.DTS_040,'Conexao',2,0, GRD_CAD);
end;

procedure TFRM_A001UTCO.Btn_GravarClick(Sender: TObject);
begin
  if LiberadoGravacao(FRM_A001UTCO,DTM_A001UTCO.DTS_040) then
    begin
      DBGenerica(DTM_A001UTCO.DTS_040,'Conexao',4,0,GRD_CAD);
      if lResp then
       Botoes(['Btn_Gravar','Btn_Cancelar'],'FRM_A001UTCO',false);
    end;
end;

procedure TFRM_A001UTCO.Btn_CancelarClick(Sender: TObject);
begin
  DBGenerica(DTM_A001UTCO.DTS_040,'Conexao',3, 0, GRD_CAD);
  Botoes(['Btn_Cancelar','Btn_Gravar'],'FRM_A001UTCO',false);
end;

procedure TFRM_A001UTCO.Btn_ExcluirClick(Sender: TObject);
begin
  DBGenerica(DTM_A001UTCO.DTS_040,'Conexao',5,0);
end;

procedure TFRM_A001UTCO.Btn_ImprimirClick(Sender: TObject);
begin
  RelCadastro(DTM_A001UTCO.QRY_040,'Cadastro');
end;

procedure TFRM_A001UTCO.BTN_SAIRClick(Sender: TObject);
begin
  close;
end;

procedure TFRM_A001UTCO.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:= oControlForms.Saidas(Self,[DTM_A001UTCO],DTM_A001UTCO.DTS_040.DataSet);
end;

procedure TFRM_A001UTCO.FormShow(Sender: TObject);
begin
  if not Acesso(nMatricula,'A001UTCO',DTM_A001UTCO) then
    close;
  Botoes(['Btn_Cancelar','Btn_Gravar'],'FRM_A001UTCO',false);
  FRM_A001UTCO.OnShow := nil;
 {é atribuido ao OnShow do Form o valor nil para que o mesmo seja executado apenas uma vez}
 {pelo fato que se outra aplicação for chamada pela tecla F3, e ao retornar da aplicação que foi chamada pela tecla}
 {o evento OnShow deste form não acontecerá, ou seja não será executado, para permanecer o mesmo status da aplicação}
 {quando o F3 foi chamado}
end;

end.
