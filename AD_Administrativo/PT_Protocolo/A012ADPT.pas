unit A012ADPT;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Buttons, ExtCtrls, StdCtrls, DBCtrls, LMDCustomControl, LMDCustomPanel,
  LMDCustomBevelPanel, LMDCustomParentPanel, LMDCustomGroupBox, LMDGroupBox,
  ppBands, ppCache, ppClass, ppComm, ppRelatv, ppProd, ppReport, ppVar,
  ppCtrls, ppPrnabl, ppDB, ppDBPipe, ppStrtch, ppMemo;

type
  TFRM_A012ADPT = class(TForm)
    Panel2: TPanel;
    BTN_SAIR: TSpeedButton;
    BTN_IMPRIMIR: TSpeedButton;
    LMDGroupBox2: TLMDGroupBox;
    DBM_CDOCUMENTO: TDBMemo;
    RPT_DOCS: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
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
    DBP_P: TppDBPipeline;
    IMG_LOGO: TppImage;
    ppDBText1: TppDBText;
    ppLabel1: TppLabel;
    ppDBMemo1: TppDBMemo;
    ppLabel2: TppLabel;
    DBP_DOCS: TppDBPipeline;
    procedure BTN_SAIRClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BTN_IMPRIMIRClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    nIdTipReq: Integer;
  end;

var
  FRM_A012ADPT: TFRM_A012ADPT;

implementation

uses D012ADPT, UVariaveis, MPLCtrl, DMCTRL;

{$R *.DFM}

procedure TFRM_A012ADPT.BTN_SAIRClick(Sender: TObject);
begin
  close;
end;

procedure TFRM_A012ADPT.FormShow(Sender: TObject);
begin
  if not Acesso(nMatricula,'A012ADPT',DTM_A012ADPT) then
    close;
  DTM_A012ADPT.QRY_155.ParamByName('nidtbxtrq').asInteger := nIdTipReq;
  DTM_A012ADPT.QRY_155.ExecSql;
  Caption := 'Solicitação ' + DTM_A012ADPT.QRY_155.FieldByName('cdescritrq').asString;
  FRM_A012ADPT.OnShow := nil;
 {é atribuido ao OnShow do Form o valor nil para que o mesmo seja executado apenas uma vez}
 {pelo fato que se outra aplicação for chamada pela tecla F3, e ao retornar da aplicação que foi chamada pela tecla}
 {o evento OnShow deste form não acontecerá, ou seja não será executado, para permanecer o mesmo status da aplicação}
 {quando o F3 foi chamado}
end;

procedure TFRM_A012ADPT.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 Action:= oControlForms.Saidas(Self,[DTM_A012ADPT],DTM_A012ADPT.DTS_155.DataSet);
end;

procedure TFRM_A012ADPT.BTN_IMPRIMIRClick(Sender: TObject);
begin
  IMG_LOGO.Picture.LoadFromFile(cPathImg+'logo.bmp');
  Imprimir(RPT_DOCS,DTM_A012ADPT.QRY_155,nil);
end;

end.
