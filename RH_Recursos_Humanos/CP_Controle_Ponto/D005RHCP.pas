unit D005RHCP;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, Ora, MemDS, DBAccess;

type
  TDTM_A005RHCP = class(TDataModule)
    QRY_010: TOraQuery;
    DTS_010: TOraDataSource;
    QRY_010DAT_INTERVALO: TStringField;
    QRY_010NIDCADHOR: TFloatField;
    QRY_010CENTRMANHA: TStringField;
    QRY_010CSAIRMANHA: TStringField;
    QRY_010CINTERVALO: TStringField;
    QRY_010CENTRTARDE: TStringField;
    QRY_010CSAIRTARDE: TStringField;
    procedure QRY_010CalcFields(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DTM_A005RHCP: TDTM_A005RHCP;

implementation

uses DMCTRL;

{$R *.DFM}

procedure TDTM_A005RHCP.QRY_010CalcFields(DataSet: TDataSet);
begin
  if (Trim(DataSet.FieldByName('CSAIRMANHA').AsString)<> '') and
     (Trim(DataSet.FieldByName('CENTRTARDE').AsString)<> '') then
    DataSet.FieldByName('LKP_INTERVALO').AsString :=
    DataSet.FieldByName('CSAIRMANHA').AsString +' / '+
    DataSet.FieldByName('CENTRTARDE').AsString
  else
    DataSet.FieldByName('LKP_INTERVALO').AsString := ' / ';
end;

end.
