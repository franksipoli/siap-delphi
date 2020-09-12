unit D003RHCP;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, Ora, MemDS, DBAccess;

type
  TDTM_A003RHCP = class(TDataModule)
    QRY_006: TOraQuery;
    DTS_006: TOraDataSource;
    QRY_009: TOraQuery;
    DTS_009: TOraDataSource;
    QRY_010: TOraQuery;
    DTS_010: TOraDataSource;
    QRY_006NIDCADSEV: TFloatField;
    QRY_006CNOMESRV: TStringField;
    QRY_006NCRTPS: TFloatField;
    QRY_006NSERIE: TFloatField;
    QRY_006NMATRICULA: TFloatField;
    QRY_006NIDCADHOR: TFloatField;
    QRY_006NIDCADCAG: TFloatField;
    QRY_010NIDCADHOR: TFloatField;
    QRY_010CENTRMANHA: TStringField;
    QRY_010CSAIRMANHA: TStringField;
    QRY_010CINTERVALO: TStringField;
    QRY_010CENTRTARDE: TStringField;
    QRY_010CSAIRTARDE: TStringField;
    procedure DTS_006DataChange(Sender: TObject; Field: TField);
    procedure QRY_010AfterRefresh(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DTM_A003RHCP: TDTM_A003RHCP;

implementation

uses DMCTRL, A003RHCP, MPLLib;

{$R *.DFM}

procedure TDTM_A003RHCP.DTS_006DataChange(Sender: TObject; Field: TField);
begin
  if not (DTS_006.DataSet.State in [dsInsert,dsEdit]) then
    if DTS_006.DataSet.FieldByName('nMatricula').AsInteger <> null then
      FRM_A003RHCP.EDT_NMATRICULA.Text := StrZero(DTS_006.DataSet.FieldByName('nMatricula').AsInteger,8);
end;

procedure TDTM_A003RHCP.QRY_010AfterRefresh(DataSet: TDataSet);
begin
  if DataSet.RecordCount <= 15 then
    FRM_A003RHCP.DBL_NIDCADHOR.DropDownCount := DataSet.RecordCount;
end;

end.
