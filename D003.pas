unit D003;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, Ora, DBAccess, MemDS;

type
  TDTM_A003 = class(TDataModule)
    QRY_004: TOraQuery;
    DTS_004: TOraDataSource;
    QRY_003: TOraQuery;
    QRY_002: TOraQuery;
    DTS_003: TOraDataSource;
    DTS_002: TOraDataSource;
    QRY_002CDESCORG: TStringField;
    QRY_004LKP_CDESCORGAO: TStringField;
    QRY_004LKP_CDESCSETOR: TStringField;
    QRY_002NIDCADORG: TFloatField;
    QRY_003CDESCSETOR: TStringField;
    QRY_003CENDSETOR: TStringField;
    QRY_003CBAIRROSET: TStringField;
    QRY_003NPREFSETOR: TFloatField;
    QRY_003NIDCADSET: TFloatField;
    QRY_004NIDCADORG: TFloatField;
    QRY_004NIDCADOST: TFloatField;
    QRY_004NIDCADSET: TFloatField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DTM_A003: TDTM_A003;

implementation



{$R *.DFM}

end.
