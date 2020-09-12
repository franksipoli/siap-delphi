unit D004AD;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, Ora, MemDS, DBAccess;

type
  TDTM_A004AD = class(TDataModule)
    QRY_033: TOraQuery;
    QRY_032: TOraQuery;
    DTS_033: TOraDataSource;
    DTS_032: TOraDataSource;
    QRY_033NIDTAGIGD: TFloatField;
    QRY_033CDESCDOC: TStringField;
    QRY_033CTIPOPESS: TStringField;
    QRY_033CVALIDADE: TStringField;
    QRY_033NIDCADGDC: TFloatField;
    QRY_033COBRIGA: TStringField;
    QRY_033CDISPEN: TStringField;
    QRY_033LKP_CGRUPODOC: TStringField;
    QRY_033CUTILIZA: TStringField;
    QRY_033CDESCREDUZ: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DTM_A004AD: TDTM_A004AD;

implementation

{$R *.DFM}

end.
