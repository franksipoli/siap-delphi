unit D013;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, Ora, MemDS, DBAccess;

type
  TDTM_A013 = class(TDataModule)
    QRY_013: TOraQuery;
    DTS_013: TOraDataSource;
    QRY_016: TOraQuery;
    DTS_016: TOraDataSource;
    QRY_013NIDCADLOG: TFloatField;
    QRY_013NCEP: TIntegerField;
    QRY_013CNOMELOG: TStringField;
    QRY_013CNOMEBAI: TStringField;
    QRY_013CNOMELOC: TStringField;
    QRY_013CSIGLAUF: TStringField;
    QRY_013CNOMEPAIS: TStringField;
    QRY_013CDDD: TStringField;
    QRY_018: TOraQuery;
    DTS_018: TOraDataSource;
    QRY_013_01: TOraQuery;
    FloatField1: TFloatField;
    IntegerField1: TIntegerField;
    StringField1: TStringField;
    StringField2: TStringField;
    StringField3: TStringField;
    StringField4: TStringField;
    StringField5: TStringField;
    StringField6: TStringField;
    DTS_013_01: TOraDataSource;
    QRY_018NIDTAGEEC: TFloatField;
    QRY_018CNUMEROEC: TStringField;
    QRY_018CCOMPLEEC: TStringField;
    QRY_018NIDCADLOG: TFloatField;
    QRY_018NIDCADGRL: TFloatField;
    procedure QRY_013AfterScroll(DataSet: TDataSet);
    procedure DTS_018DataChange(Sender: TObject; Field: TField);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DTM_A013: TDTM_A013;

implementation

uses A013;

{$R *.DFM}

procedure TDTM_A013.QRY_013AfterScroll(DataSet: TDataSet);
begin
  FRM_A013.CBE_NCEP.Text := DTS_013.DataSet.FieldByName('ncep').DisplayText;
  FRM_A013.CBE_NCEP_1.Text := DTS_013_01.DataSet.FieldByName('ncep').DisplayText;
end;

procedure TDTM_A013.DTS_018DataChange(Sender: TObject; Field: TField);
begin
FRM_A013.BTN_TIRAEC.Enabled := (not(DTS_013_01.DataSet.FieldByName('nidcadlog').IsNull)) and
                               (DTS_016.DataSet.State = dsEdit);
end;

end.
