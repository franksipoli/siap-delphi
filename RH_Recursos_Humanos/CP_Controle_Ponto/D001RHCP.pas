unit D001RHCP;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, Ora, DBAccess, MemDS;

type
  TDTM_A001RHCP = class(TDataModule)
    QRY_005: TOraQuery;
    DTS_005: TDataSource;
    QRY_006: TOraQuery;
    QRY_007: TOraQuery;
    DTS_007: TOraDataSource;
    QRY_008: TOraQuery;
    DTS_008: TOraDataSource;
    QRY_007LKP_NOMESERV: TStringField;
    QRY_005NIDCADCPT: TFloatField;
    QRY_005NMATRICULA: TFloatField;
    QRY_005DDATAPTO: TDateTimeField;
    QRY_005CHORA: TStringField;
    QRY_005CMOVIMEN: TStringField;
    QRY_005CRELOGIO: TStringField;
    QRY_005CSERVIDOR: TStringField;
    QRY_007NIDCADACP: TFloatField;
    QRY_007DDATAATU: TDateTimeField;
    QRY_007CHORAATU: TStringField;
    QRY_007CNOMEARQUI: TStringField;
    QRY_007NERRO: TFloatField;
    QRY_007NIDCADSEV: TFloatField;
    QRY_006NIDCADSEV: TFloatField;
    QRY_006CNOMESRV: TStringField;
    QRY_006NCRTPS: TFloatField;
    QRY_006NSERIE: TFloatField;
    QRY_006NMATRICULA: TFloatField;
    QRY_006NIDCADHOR: TFloatField;
    QRY_006NIDCADCAG: TFloatField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DTM_A001RHCP: TDTM_A001RHCP;

implementation

uses DMCTRL;

{$R *.DFM}



end.
