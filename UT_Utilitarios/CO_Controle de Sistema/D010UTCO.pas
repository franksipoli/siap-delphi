unit D010UTCO;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, Ora, DBAccess, MemDS;

type
  TDTM_A010UTCO = class(TDataModule)
    QRY_056: TOraQuery;
    DTS_056: TOraDataSource;
    QRY_056NIDTBL_PB: TFloatField;
    QRY_056CSIGLAPER: TStringField;
    QRY_056CNOMEPER: TStringField;
    procedure DTS_056DataChange(Sender: TObject; Field: TField);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DTM_A010UTCO: TDTM_A010UTCO;

implementation

uses A010UTCO;

{$R *.DFM}

procedure TDTM_A010UTCO.DTS_056DataChange(Sender: TObject; Field: TField);
begin
  if DTS_056.DataSet.State in [DsBrowse] then
    FRM_A010UTCO.EDT_CSIGLAPER.Text :=
    DTS_056.DataSet.FieldByName('CSIGLAPER').AsString;
end;

end.
