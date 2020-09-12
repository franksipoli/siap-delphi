unit D004RHCP;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, MemDS, DBAccess, Ora;

type
  TDTM_A004RHCP = class(TDataModule)
    QRY_009: TOraQuery;
    DTS_009: TOraDataSource;
    QRY_009NIDCADCAG: TFloatField;
    QRY_009CDESCCARGO: TStringField;
    procedure DTS_009DataChange(Sender: TObject; Field: TField);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DTM_A004RHCP: TDTM_A004RHCP;

implementation

uses DMCTRL, A004RHCP, MPLLib;

{$R *.DFM}

procedure TDTM_A004RHCP.DTS_009DataChange(Sender: TObject; Field: TField);
begin
  if (not(DTS_009.DataSet.State in [dsInsert,dsEdit])) and
     (DTS_009.DataSet.FieldByName('NIDCADCAG').AsInteger <> null) then
     FRM_A004RHCP.EDT_NIDCADCAG.Text := StrZero(DTS_009.DataSet.FieldByName('NIDCADCAG').AsInteger,5);
end;

end.
