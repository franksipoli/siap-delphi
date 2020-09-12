unit A003ADAT;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  LMDCustomControl, LMDCustomPanel, LMDCustomBevelPanel,
  LMDCustomParentPanel, LMDCustomGroupBox, LMDGroupBox, Buttons, ExtCtrls,
  Grids, DBGrids, StdCtrls, Mask, DBCtrls, ToolEdit, RXDBCtrl,
  LMDCustomComponent, LMDContainerComponent, LMDBaseDialog, LMDDirDlg, DB,
  LMDBrowseDlg;

type
  TFRM_A003ADAT = class(TForm)
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
    DED_NIDTBXTAT: TDBEdit;
    DED_CDESCRITAT: TDBEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    DBE_CPATHARQ: TRxDBComboEdit;
    Label4: TLabel;
    BrowseDlg: TLMDBrowseDlg;
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
    procedure DBE_CPATHARQButtonClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRM_A003ADAT: TFRM_A003ADAT;

implementation

uses MPLCtrl, CtrlForms, UVariaveis, D003ADAT;

{$R *.DFM}

procedure TFRM_A003ADAT.Btn_LocalizarClick(Sender: TObject);
begin
    Pesquisa(DTM_A003ADAT.QRY_071,true,'','');
end;

procedure TFRM_A003ADAT.Btn_AvancarClick(Sender: TObject);
begin
  DBGenerica(DTM_A003ADAT.DTS_071,'Conexao',0,3);
end;

procedure TFRM_A003ADAT.Btn_RetrocederClick(Sender: TObject);
begin
  DBGenerica(DTM_A003ADAT.DTS_071,'Conexao',0,2);
end;

procedure TFRM_A003ADAT.Btn_IncluirClick(Sender: TObject);
begin
 DED_CDESCRITAT.SetFocus;
 DBGenerica(DTM_A003ADAT.DTS_071,'Conexao',1,0,GRD_CAD);
 DTM_A003ADAT.QRY_071.FieldByName('nidtbxtat').asInteger := 0;
 Botoes(['Btn_Cancelar','Btn_Gravar','Btn_Sair'],'FRM_A003ADAT',true);
end;

procedure TFRM_A003ADAT.Btn_AlterarClick(Sender: TObject);
begin
  Botoes(['Btn_Cancelar','Btn_Gravar','Btn_Sair'],'FRM_A003ADAT',true);
  DBGenerica(DTM_A003ADAT.DTS_071,'Conexao',2,0, GRD_CAD);
end;

procedure TFRM_A003ADAT.Btn_GravarClick(Sender: TObject);
begin
  if LiberadoGravacao(FRM_A003ADAT,DTM_A003ADAT.DTS_071) then
    begin
      DBGenerica(DTM_A003ADAT.DTS_071,'Conexao',4,0,GRD_CAD);
      if lResp then
       Botoes(['Btn_Gravar','Btn_Cancelar'],'FRM_A003ADAT',false);
    end;
end;

procedure TFRM_A003ADAT.Btn_CancelarClick(Sender: TObject);
begin
   DBGenerica(DTM_A003ADAT.DTS_071,'Conexao',3, 0, GRD_CAD);
   Botoes(['Btn_Cancelar','Btn_Gravar'],'FRM_A003ADAT',false);
end;

procedure TFRM_A003ADAT.Btn_ExcluirClick(Sender: TObject);
begin
    DBGenerica(DTM_A003ADAT.DTS_071,'Conexao',5,0);
end;

procedure TFRM_A003ADAT.Btn_ImprimirClick(Sender: TObject);
begin
  RelCadastro(DTM_A003ADAT.QRY_071,'Cadastro de Tipos de Ato');
end;

procedure TFRM_A003ADAT.BTN_SAIRClick(Sender: TObject);
begin
  close;
end;

procedure TFRM_A003ADAT.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:= oControlForms.Saidas(Self,[DTM_A003ADAT],DTM_A003ADAT.DTS_071.DataSet);
end;

procedure TFRM_A003ADAT.FormShow(Sender: TObject);
begin
  if not Acesso(nMatricula,'A003ADAT',DTM_A003ADAT) then
    close;
  Botoes(['Btn_Cancelar','Btn_Gravar'],'FRM_A003ADAT',false);
  FRM_A003ADAT.OnShow := nil;
 {é atribuido ao OnShow do Form o valor nil para que o mesmo seja executado apenas uma vez}
 {pelo fato que se outra aplicação for chamada pela tecla F3, e ao retornar da aplicação que foi chamada pela tecla}
 {o evento OnShow deste form não acontecerá, ou seja não será executado, para permanecer o mesmo status da aplicação}
 {quando o F3 foi chamado}
end;

procedure TFRM_A003ADAT.DBE_CPATHARQButtonClick(Sender: TObject);
begin
  if DTM_A003ADAT.DTS_071.DataSet.State in [dsInsert,dsEdit] then
    if BrowseDlg.Execute then
      DBE_CPATHARQ.Text := BrowseDlg.SelectedFolder;
end;

end.
