unit A004AD;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  LMDCustomControl, LMDCustomPanel, LMDCustomBevelPanel,
  LMDCustomParentPanel, LMDCustomGroupBox, LMDGroupBox, Buttons, ExtCtrls,
  Grids, DBGrids, StdCtrls, Mask, DBCtrls, RxLookup, RxDBComb;

type
  TFRM_A004AD = class(TForm)
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
    Label2: TLabel;
    DED_CDESCDOC: TDBEdit;
    DBL_NIDCADGDC: TRxDBLookupCombo;
    Label1: TLabel;
    CBB_CTIPOPESS: TRxDBComboBox;
    CBB_COBRIGA: TRxDBComboBox;
    CBB_CDISPEN: TRxDBComboBox;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    CBB_CVALIDADE: TRxDBComboBox;
    Label6: TLabel;
    CBB_CUTILIZA: TRxDBComboBox;
    Label7: TLabel;
    DED_CDESCREDUZ: TDBEdit;
    Label8: TLabel;
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
  FRM_A004AD: TFRM_A004AD;

implementation

uses D004AD, MPLCtrl, UVariaveis;

{$R *.DFM}

procedure TFRM_A004AD.Btn_LocalizarClick(Sender: TObject);
begin
    Pesquisa(DTM_A004AD.QRY_033,true,'','');
end;

procedure TFRM_A004AD.Btn_AvancarClick(Sender: TObject);
begin
  //proximo registro
  DBGenerica(DTM_A004AD.DTS_033,'Conexao',0,3);
end;

procedure TFRM_A004AD.Btn_RetrocederClick(Sender: TObject);
begin
  //registro anterior
  DBGenerica(DTM_A004AD.DTS_033,'Conexao',0,2);
end;

procedure TFRM_A004AD.Btn_IncluirClick(Sender: TObject);
begin
 //inclui registro no dataset
 DBGenerica(DTM_A004AD.DTS_033,'Conexao',1,0,GRD_CAD);
 Botoes(['Btn_Cancelar','Btn_Gravar','Btn_Sair'],'FRM_A004AD',true);
 DTM_A004AD.QRY_033.FieldByName('nidtagigd').asInteger := 0;
 DTM_A004AD.QRY_033.FieldByName('cutiliza').asString := 'S';
 DED_CDESCREDUZ.SetFocus;
end;

procedure TFRM_A004AD.Btn_AlterarClick(Sender: TObject);
begin
  Botoes(['Btn_Cancelar','Btn_Gravar','Btn_Sair'],'FRM_A004AD',true);
  //edita registro do dataset
  DBGenerica(DTM_A004AD.DTS_033,'Conexao',2,0, GRD_CAD);
end;

procedure TFRM_A004AD.Btn_GravarClick(Sender: TObject);
begin
  if LiberadoGravacao(FRM_A004AD,DTM_A004AD.DTS_033) then
    begin
      if trim(DBL_NIDCADGDC.Text) = '' then
        begin
          MessageDlg('Você deve informar um grupo de Documentos!',mtInformation,[mbOk],0);
          DBL_NIDCADGDC.SetFocus;
          exit;
        end;
      //grava registro no dataset
      DBGenerica(DTM_A004AD.DTS_033,'Conexao',4,0,GRD_CAD);
      if lResp then
       Botoes(['Btn_Gravar','Btn_Cancelar'],'FRM_A004AD',false);
    end;
end;

procedure TFRM_A004AD.Btn_CancelarClick(Sender: TObject);
begin
   //cancela a operação corrente no dataset
   DBGenerica(DTM_A004AD.DTS_033,'Conexao',3, 0, GRD_CAD);
   Botoes(['Btn_Cancelar','Btn_Gravar'],'FRM_A004AD',false);
end;

procedure TFRM_A004AD.Btn_ExcluirClick(Sender: TObject);
begin
    //exclui registro do dataset
    DBGenerica(DTM_A004AD.DTS_033,'Conexao',5,0);
end;

procedure TFRM_A004AD.Btn_ImprimirClick(Sender: TObject);
begin
  RelCadastro(DTM_A004AD.QRY_033,'Cadastro de Documentos');
end;

procedure TFRM_A004AD.BTN_SAIRClick(Sender: TObject);
begin
  close;
end;

procedure TFRM_A004AD.FormClose(Sender: TObject; var Action: TCloseAction);
begin
    Action:= oControlForms.Saidas(Self,[DTM_A004AD],DTM_A004AD.DTS_033.DataSet);
end;

procedure TFRM_A004AD.FormShow(Sender: TObject);
begin
  if not Acesso(nMatricula,'A004AD',DTM_A004AD) then
    close;
  Botoes(['Btn_Cancelar','Btn_Gravar'],'FRM_A004AD',false);
  DBL_NIDCADGDC.DropDownCount := DTM_A004AD.QRY_032.RecordCount;
  if DBL_NIDCADGDC.DropDownCount > 10 then
    DBL_NIDCADGDC.DropDownCount := 10;
  FRM_A004AD.OnShow := nil;
 {é atribuido ao OnShow do Form o valor nil para que o mesmo seja executado apenas uma vez}
 {pelo fato que se outra aplicação for chamada pela tecla F3, e ao retornar da aplicação que foi chamada pela tecla}
 {o evento OnShow deste form não acontecerá, ou seja não será executado, para permanecer o mesmo status da aplicação}
 {quando o F3 foi chamado}
end;

end.
