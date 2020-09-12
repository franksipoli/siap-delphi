unit D015ADPT;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, MemDS, DBAccess, Ora;

type
  TDTM_A015ADPT = class(TDataModule)
    QRY_152: TOraQuery;
    DTS_152: TOraDataSource;
    QRY_152CDESCRITRQ: TStringField;
    QRY_152NNROPROT: TFloatField;
    QRY_152NQTDFOLHAS: TFloatField;
    QRY_152CSITUAREQ: TStringField;
    QRY_152NIDCADREQ: TFloatField;
    procedure QRY_152AfterScroll(DataSet: TDataSet);
    procedure QRY_152AfterExecute(Sender: TObject; Result: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DTM_A015ADPT: TDTM_A015ADPT;

implementation

uses A015ADPT;

{$R *.DFM}

procedure TDTM_A015ADPT.QRY_152AfterScroll(DataSet: TDataSet);
begin
  if FRM_A015ADPT = nil then
    exit;
  with FRM_A015ADPT do
    begin
      BTN_AVANCAR1.Enabled := (DataSet.RecordCount > 0) and (DataSet.RecordCount <> DataSet.RecNo);
      BTN_RETROCEDER1.Enabled := (DataSet.RecordCount > 0) and (DataSet.RecNo <> 1);
    end;
end;

procedure TDTM_A015ADPT.QRY_152AfterExecute(Sender: TObject;
  Result: Boolean);
begin
  QRY_152AfterScroll(QRY_152);
end;

end.
