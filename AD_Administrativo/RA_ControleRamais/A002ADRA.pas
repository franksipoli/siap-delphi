unit A002ADRA;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ppBands, ppCtrls, ppReport, ppStrtch, ppSubRpt, ppVar, ppPrnabl, ppClass,
  ppCache, ppComm, ppRelatv, ppProd, ppDB, ppDBPipe, Db, Ora, MemDS,
  DBAccess, LMDCustomControl, LMDCustomPanel, LMDButtonControl,
  LMDCustomCheckBox, LMDCheckBox, StdCtrls, Buttons, LMDCustomComponent,
  lmdcont;

type
  TFRM_A002ADRA = class(TForm)
    QRY_REL: TOraQuery;
    DTS_REL: TOraDataSource;
    POP_REL: TppDBPipeline;
    ListaRamais: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppShape2: TppShape;
    ppLabel1: TppLabel;
    ppLine4: TppLine;
    ppLine5: TppLine;
    ppSystemVariable1: TppSystemVariable;
    ppLabel3: TppLabel;
    ppSystemVariable2: TppSystemVariable;
    ppLabel2: TppLabel;
    ppColumnHeaderBand1: TppColumnHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppColumnFooterBand1: TppColumnFooterBand;
    ppFooterBand1: TppFooterBand;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppDBText1: TppDBText;
    ppLine1: TppLine;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppGroup3: TppGroup;
    ppGroupHeaderBand3: TppGroupHeaderBand;
    ppShape1: TppShape;
    ppLabel6: TppLabel;
    ppDBText2: TppDBText;
    ppLine2: TppLine;
    ppGroupFooterBand3: TppGroupFooterBand;
    ppGroup4: TppGroup;
    ppGroupHeaderBand4: TppGroupHeaderBand;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppLine3: TppLine;
    ppGroupFooterBand4: TppGroupFooterBand;
    GroupBox1: TGroupBox;
    Chk_Divulgado: TLMDCheckBox;
    Chk_Naodivulg: TLMDCheckBox;
    Btn_Impr: TBitBtn;
    Bmp_List: TLMDBitmapList;
    procedure ListaRamaisPreviewFormCreate(Sender: TObject);
    procedure ppDBText3GetText(Sender: TObject; var Text: String);
    procedure Btn_ImprClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Chk_DivulgadoClick(Sender: TObject);
    procedure Chk_NaodivulgClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRM_A002ADRA: TFRM_A002ADRA;

implementation



{$R *.DFM}

procedure TFRM_A002ADRA.ListaRamaisPreviewFormCreate(Sender: TObject);
begin
ListaRamais.PreviewForm.WindowState := wsMaximized;
end;

procedure TFRM_A002ADRA.ppDBText3GetText(Sender: TObject;
  var Text: String);
begin
 Text := Text+'...........................................................'+
              '...........................................................';
end;

procedure TFRM_A002ADRA.Btn_ImprClick(Sender: TObject);
begin
  QRY_REL.SQL[6]:= '';
  if not((Chk_Divulgado.Checked) and (Chk_Naodivulg.Checked)) then
    begin
      if Chk_Divulgado.Checked then
        QRY_REL.SQL[6]:= 'and CadRam.cDivuRamal = '+QuotedStr('SIM')
      else
        QRY_REL.SQL[6]:= 'and CadRam.cDivuRamal = '+QuotedStr('NAO');
    end;
  QRY_REL.Open;
  ListaRamais.Print;
end;

procedure TFRM_A002ADRA.FormShow(Sender: TObject);
begin
  QRY_REL.SQL.Insert(6,' ');
end;

procedure TFRM_A002ADRA.Chk_DivulgadoClick(Sender: TObject);
begin
  if (not Chk_Divulgado.Checked) and (not Chk_Naodivulg.Checked) then
    Btn_Impr.Enabled := false
  else
    Btn_Impr.Enabled := true;

end;

procedure TFRM_A002ADRA.Chk_NaodivulgClick(Sender: TObject);
begin
  if (not Chk_Divulgado.Checked) and (not Chk_Naodivulg.Checked) then
    Btn_Impr.Enabled := false
  else
    Btn_Impr.Enabled := true;

end;

procedure TFRM_A002ADRA.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  QRY_REL.Close;
end;

end.
