unit A011ADPT;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Buttons, ExtCtrls, Mask, DBCtrls, StdCtrls, Grids, DBGrids,
  LMDCustomControl, LMDCustomPanel, LMDCustomBevelPanel,
  LMDCustomParentPanel, LMDCustomGroupBox, LMDGroupBox, RxDBComb, ppDB,
  ppDBPipe, ppBands, ppStrtch, ppMemo, ppCtrls, ppVar, ppPrnabl, ppClass,
  ppCache, ppComm, ppRelatv, ppProd, ppReport;

type
  TFRM_A011ADPT = class(TForm)
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
    LMDGroupBox2: TLMDGroupBox;
    GRD_ORGAOS: TDBGrid;
    LMDGroupBox3: TLMDGroupBox;
    Label2: TLabel;
    DED_CDESCRITRQ: TDBEdit;
    DBE_NDIASATEND: TDBEdit;
    Label1: TLabel;
    DBC_CREFERENRH: TRxDBComboBox;
    Label3: TLabel;
    DBM_CDOCUMENTO: TDBMemo;
    Label4: TLabel;
    RPT_DOCS: TppReport;
    ppHeaderBand1: TppHeaderBand;
    Shp_Titul: TppShape;
    Db_Razao: TppDBText;
    Lbl_Pag: TppLabel;
    Var_NumPag: TppSystemVariable;
    Lbl_Aplic: TppLabel;
    Lbl_Data: TppLabel;
    ppSystemVariable2: TppSystemVariable;
    Lbl_Hora: TppLabel;
    ppSystemVariable3: TppSystemVariable;
    Lbl_RelTiul: TppLabel;
    Lbl_TitOpc: TppLabel;
    IMG_LOGO: TppImage;
    ppDetailBand1: TppDetailBand;
    ppDBText1: TppDBText;
    ppLabel1: TppLabel;
    ppDBMemo1: TppDBMemo;
    ppLabel2: TppLabel;
    ppFooterBand1: TppFooterBand;
    DBP_P: TppDBPipeline;
    DBP_PppField1: TppField;
    DBP_PppField2: TppField;
    DBP_PppField3: TppField;
    DBP_PppField4: TppField;
    DBP_PppField5: TppField;
    DBP_PppField6: TppField;
    DBP_PppField7: TppField;
    DBP_PppField8: TppField;
    DBP_PppField9: TppField;
    DBP_PppField10: TppField;
    DBP_PppField11: TppField;
    DBP_PppField12: TppField;
    DBP_PppField13: TppField;
    DBP_PppField14: TppField;
    DBP_PppField15: TppField;
    DBP_PppField16: TppField;
    DBP_PppField17: TppField;
    DBP_PppField18: TppField;
    DBP_PppField19: TppField;
    DBP_PppField20: TppField;
    DBP_PppField21: TppField;
    DBP_PppField22: TppField;
    DBP_PppField23: TppField;
    DBP_PppField24: TppField;
    DBP_PppField25: TppField;
    DBP_PppField26: TppField;
    DBP_PppField27: TppField;
    DBP_PppField28: TppField;
    DBP_PppField29: TppField;
    DBP_PppField30: TppField;
    DBP_PppField31: TppField;
    DBP_DOCS: TppDBPipeline;
    BTN_IMPDOC: TSpeedButton;
    procedure Btn_LocalizarClick(Sender: TObject);
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
    procedure BTN_SAIRClick(Sender: TObject);
    procedure BTN_IMPDOCClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRM_A011ADPT: TFRM_A011ADPT;

implementation

uses D011ADPT, UVariaveis, MPLCtrl, DMCTRL;

{$R *.DFM}

procedure TFRM_A011ADPT.Btn_LocalizarClick(Sender: TObject);
begin
  Pesquisa(DTM_A011ADPT.QRY_155,true,'','');
end;

procedure TFRM_A011ADPT.Btn_AvancarClick(Sender: TObject);
begin
   DBGenerica(DTM_A011ADPT.DTS_155,'Conexao',0,3,GRD_ORGAOS,false);
end;

procedure TFRM_A011ADPT.Btn_RetrocederClick(Sender: TObject);
begin
 DBGenerica(DTM_A011ADPT.DTS_155,'Conexao',0,2,GRD_ORGAOS,false);
end;

procedure TFRM_A011ADPT.Btn_IncluirClick(Sender: TObject);
begin
  DBGenerica(DTM_A011ADPT.DTS_155,'Conexao',1,0,GRD_ORGAOS,false);
  Botoes(['Btn_Cancelar','Btn_Sair','Btn_Gravar'],'FRM_A011ADPT',true);
  DED_CDESCRITRQ.SetFocus;
end;

procedure TFRM_A011ADPT.Btn_AlterarClick(Sender: TObject);
begin
  Botoes(['Btn_Cancelar','Btn_Gravar','Btn_Sair'],'FRM_A011ADPT',true);
  DBGenerica(DTM_A011ADPT.DTS_155,'Conexao',2,0,GRD_ORGAOS,false);
end;

procedure TFRM_A011ADPT.Btn_GravarClick(Sender: TObject);
begin
  if LiberadoGravacao(FRM_A011ADPT,DTM_A011ADPT.DTS_155) then
    begin
      DBGenerica(DTM_A011ADPT.DTS_155,'Conexao',4,0,GRD_ORGAOS,false);
      if lResp then
        Botoes(['Btn_Gravar','Btn_Cancelar'],'FRM_A011ADPT',false);
    end;

end;

procedure TFRM_A011ADPT.Btn_CancelarClick(Sender: TObject);
begin
   DBGenerica(DTM_A011ADPT.DTS_155,'Conexao',3, 0,GRD_ORGAOS,false);
   Botoes(['Btn_Cancelar', 'Btn_Gravar'],'FRM_A011ADPT',false);
end;

procedure TFRM_A011ADPT.Btn_ExcluirClick(Sender: TObject);
begin
 DBGenerica(DTM_A011ADPT.DTS_155,'Conexao',5,0,GRD_ORGAOS,false);
end;

procedure TFRM_A011ADPT.Btn_ImprimirClick(Sender: TObject);
begin
 RelCadastro(DTM_A011ADPT.QRY_155,'Cadastro de Orgão');
end;

procedure TFRM_A011ADPT.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 Action:= oControlForms.Saidas(Self,[DTM_A011ADPT],DTM_A011ADPT.DTS_155.DataSet);
end;

procedure TFRM_A011ADPT.FormShow(Sender: TObject);
begin
  if not Acesso(nMatricula,'A011ADPT',DTM_A011ADPT) then
    close;
  Botoes(['Btn_Cancelar','Btn_Gravar'],'FRM_A011ADPT',false);
  FRM_A011ADPT.OnShow := nil;
 {é atribuido ao OnShow do Form o valor nil para que o mesmo seja executado apenas uma vez}
 {pelo fato que se outra aplicação for chamada pela tecla F3, e ao retornar da aplicação que foi chamada pela tecla}
 {o evento OnShow deste form não acontecerá, ou seja não será executado, para permanecer o mesmo status da aplicação}
 {quando o F3 foi chamado}
end;

procedure TFRM_A011ADPT.BTN_SAIRClick(Sender: TObject);
begin
  close;
end;

procedure TFRM_A011ADPT.BTN_IMPDOCClick(Sender: TObject);
begin
  IMG_LOGO.Picture.LoadFromFile(cPathImg+'logo.bmp');
  Imprimir(RPT_DOCS,DTM_A011ADPT.QRY_155_1,nil);
end;

end.
