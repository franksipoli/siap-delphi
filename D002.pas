unit D002;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  DBAccess, Ora, Db, MemDS;

type
  TDTM_A002 = class(TDataModule)
    QRY_003: TOraQuery;
    DTS_003: TOraDataSource;
    QRY_003CDESCSETOR: TStringField;
    QRY_003CENDSETOR: TStringField;
    QRY_003CBAIRROSET: TStringField;
    QRY_003NPREFSETOR: TFloatField;
    QRY_003NIDCADSET: TFloatField;
    procedure DTS_003DataChange(Sender: TObject; Field: TField);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DTM_A002: TDTM_A002;

implementation

uses DMCTRL, A002, MPLLib;

{$R *.DFM}

procedure TDTM_A002.DTS_003DataChange(Sender: TObject; Field: TField);
begin
  if not(DTS_003.DataSet.State in [dsInsert,dsEdit]) and
   (DTS_003.DataSet.RecordCount <> 0 ) then
   FRM_A002.EDT_NIDCADSET.Text := StrZero(DTS_003.DataSet.FieldByName('NIDCADSET').value,5);
end;

end.
