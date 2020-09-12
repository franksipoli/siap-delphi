unit D001;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, Ora, DBAccess, MemDS;

type
  TDTM_A001 = class(TDataModule)
    QRY_002: TOraQuery;
    DTS_002: TOraDataSource;
    QRY_002CDESCORG: TStringField;
    QRY_002NIDCADORG: TFloatField;
    procedure DTS_002DataChange(Sender: TObject; Field: TField);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DTM_A001: TDTM_A001;

implementation

uses DMCTRL, A001, MPLLib;

{$R *.DFM}

procedure TDTM_A001.DTS_002DataChange(Sender: TObject; Field: TField);
begin
  if not(DTS_002.DataSet.State in [dsedit,dsinsert]) and
    (DTS_002.DataSet.RecordCount <> 0) then
       FRM_A001.EDT_NIDCADORG.Text:= strZero(QRY_002.FieldByName('NIDCADORG').Value,5);

end;

end.
