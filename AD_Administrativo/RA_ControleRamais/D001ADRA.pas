unit D001ADRA;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  DBAccess, Ora, Db, MemDS, ppDB, ppComm, ppRelatv, ppCache, ppDBPipe;

type
  TDTM_A001ADRA = class(TDataModule)
    QRY_003: TOraQuery;
    DTS_003: TOraDataSource;
    QRY_002: TOraQuery;
    DTS_002: TOraDataSource;
    QRY_001: TOraQuery;
    DTS_001: TOraDataSource;
    QryInativa: TOraQuery;
    QryDivulgado: TOraQuery;
    QryAtiva: TOraQuery;
    QRY_004: TOraQuery;
    DTS_004: TOraDataSource;
    QRY_004LKP_CDESCSETOR: TStringField;
    QRY_002CDESCORG: TStringField;
    QRY_002NIDCADORG: TFloatField;
    QRY_003CDESCSETOR: TStringField;
    QRY_003CENDSETOR: TStringField;
    QRY_003CBAIRROSET: TStringField;
    QRY_003NPREFSETOR: TFloatField;
    QRY_003NIDCADSET: TFloatField;
    QRY_004NIDCADORG: TFloatField;
    QRY_004NIDCADOST: TFloatField;
    QRY_004NIDCADSET: TFloatField;
    QRY_001NIDCADRAM: TFloatField;
    QRY_001NNUMRAMAL: TFloatField;
    QRY_001CSTATRAMAL: TStringField;
    QRY_001CCONTRARAM: TStringField;
    QRY_001CDIVURAMAL: TStringField;
    QRY_001CCONTRAMAL: TStringField;
    QRY_001CMAILRAMAL: TStringField;
    QRY_001NIDCADORG: TFloatField;
    QRY_001NIDCADSET: TFloatField;
    QRY_001LKP_CENDSETOR: TStringField;
    QRY_001LKP_CBAIRROSET: TStringField;
    QRY_001LKP_NPREFSETOR: TStringField;
    QRY_001LKP_CDESCORGAO: TStringField;
    QRY_001LKP_CDESCSETOR: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DTM_A001ADRA: TDTM_A001ADRA;

implementation

{$R *.DFM}

end.
