unit D036RH;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, Ora, MemDS, DBAccess;

type
  TDTM_A036RH = class(TDataModule)
    QRY_073: TOraQuery;
    DTS_073: TOraDataSource;
    QRY_095: TOraQuery;
    DTS_095: TOraDataSource;
    QRY_086: TOraQuery;
    QRY_091: TOraQuery;
    QRY_126: TOraQuery;
    DTS_086: TOraDataSource;
    DTS_091: TOraDataSource;
    DTS_126: TOraDataSource;
    QRY_092: TOraQuery;
    DTS_092: TOraDataSource;
    QRY_080: TOraQuery;
    DTS_080: TOraDataSource;
    QRY_080_1: TOraQuery;
    DTS_080_1: TOraDataSource;
    QRY_080_2: TOraQuery;
    DTS_080_2: TOraDataSource;
    QRY_080_3: TOraQuery;
    DTS_080_3: TOraDataSource;
    QRY_073NIDCADCRG: TFloatField;
    QRY_073CDESCRICRG: TStringField;
    QRY_073NTOTVAGAS: TFloatField;
    QRY_073CGRADUACAO: TStringField;
    QRY_073NIDSLRFIM: TFloatField;
    QRY_073NHORASSEM: TFloatField;
    QRY_073NHORASMES: TFloatField;
    QRY_073NIDTBXTCR: TFloatField;
    QRY_073NIDTBXGRO: TFloatField;
    QRY_073NIDTBXSGO: TFloatField;
    QRY_073NIDTBXSLR: TFloatField;
    QRY_073NIDTBXCAT: TFloatField;
    QRY_073NIDTBXPCR: TFloatField;
    QRY_073NIDTAGSLR: TFloatField;
    QRY_073NIDTBXCBO: TFloatField;
    QRY_073NIDTBXTSL: TFloatField;
    QRY_073CCODANT: TStringField;
    QRY_095NIDTBXTCR: TFloatField;
    QRY_095CDESCRITCR: TStringField;
    QRY_092NIDTBXSLR: TFloatField;
    QRY_092CDESCRISLR: TStringField;
    QRY_073DAT_CLASSINI: TStringField;
    QRY_073DAT_CLASSFIM: TStringField;
    QRY_138: TOraQuery;
    DTS_138: TOraDataSource;
    QRY_138NIDTBXCBO: TFloatField;
    QRY_138CDESCRICBO: TStringField;
    QRY_138NNROCBO: TFloatField;
    QRY_122: TOraQuery;
    DTS_122: TOraDataSource;
    QRY_122NIDTBXPCR: TFloatField;
    QRY_122CDESCRIPCR: TStringField;
    QRY_122NCODTCE: TFloatField;
    QRY_080_2CCLASSE: TStringField;
    QRY_080_2NIDTBXSLR: TFloatField;
    QRY_080_3NNIVEL: TFloatField;
    QRY_080_3NIDTAGSLR: TFloatField;
    QRY_080_3NVALORSLR: TFloatField;
    QRY_080_1NNIVEL: TFloatField;
    QRY_080_1NIDTAGSLR: TFloatField;
    QRY_080_1NVALORSLR: TFloatField;
    QRY_080CCLASSE: TStringField;
    QRY_080NIDTBXSLR: TFloatField;
    QRY_TOTCRGOCP: TOraQuery;
    DTS_TOTCRGOCP: TOraDataSource;
    QRY_TOTCRGOCPTOT: TFloatField;
    QRY_TOTCRGOCPCLC_CRGLIVRES: TIntegerField;
    QRY_150: TOraQuery;
    DTS_150: TOraDataSource;
    procedure QRY_073AfterScroll(DataSet: TDataSet);
    procedure DTS_073StateChange(Sender: TObject);
    procedure QRY_TOTCRGOCPCalcFields(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DTM_A036RH: TDTM_A036RH;

implementation

uses A036RH;

{$R *.DFM}

procedure TDTM_A036RH.QRY_073AfterScroll(DataSet: TDataSet);
begin
  FRM_A036RH.CBE_NIDTBXCBO.Text :=
  DTS_138.DataSet.FieldByName('nnrocbo').DisplayText;
  FRM_A036RH.CBE_NIDTBXPCR.Text :=
  DTS_122.DataSet.FieldByName('cdescripcr').DisplayText;
end;

procedure TDTM_A036RH.DTS_073StateChange(Sender: TObject);
begin
  FRM_A036RH.CBE_NIDTBXCBO.ReadOnly :=
  not(DTS_073.DataSet.State in [dsInsert,dsEdit]);
  FRM_A036RH.CBE_NIDTBXPCR.ReadOnly :=
  FRM_A036RH.CBE_NIDTBXCBO.ReadOnly;

end;

procedure TDTM_A036RH.QRY_TOTCRGOCPCalcFields(DataSet: TDataSet);
begin
  DataSet.FieldByName('clc_crglivres').asInteger :=
   (DTS_073.DataSet.FieldByName('ntotvagas').asInteger -
   DataSet.FieldByName('tot').asInteger);

end;

end.
