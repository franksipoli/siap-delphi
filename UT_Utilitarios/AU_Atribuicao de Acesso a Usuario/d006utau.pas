unit D006UTAU;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, Ora, MemDS, DBAccess;

type
  TDTM_A006UTAU = class(TDataModule)
    QRY_055: TOraQuery;
    DTS_055: TOraDataSource;
    QRY_059: TOraQuery;
    QRY_059NIDTBL_EQV: TFloatField;
    QRY_059NIDTBL_UP: TFloatField;
    QRY_059NCODEQV: TFloatField;
    QRY_059CPERFIL: TStringField;
    QRY_055NIDTBL_UP: TFloatField;
    QRY_055NIDTBL_U: TFloatField;
    QRY_055NIDTBL_PB: TFloatField;
    QRY_055CPERFIL: TStringField;
    QRY_055NSTATUS: TFloatField;
    QRY_055CNOMEPER: TStringField;
    DTS_059: TOraDataSource;
    QRY_059DAT_PERFIL: TStringField;
    QRY_055_01: TOraQuery;
    DTS_055_01: TOraDataSource;
    QRY_055_01NIDTBL_UP: TFloatField;
    QRY_055_01NIDTBL_U: TFloatField;
    QRY_055_01NIDTBL_PB: TFloatField;
    QRY_055_01CPERFIL: TStringField;
    QRY_055_01NSTATUS: TFloatField;
    QRY_055CSIGLAPER: TStringField;
    QRY_059CHERDADO: TStringField;
    QRY_059NIDTBL_U: TFloatField;
    QRY_059CNOMEUSU: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DTM_A006UTAU: TDTM_A006UTAU;

implementation

uses A006UTAU;

{$R *.DFM}

end.
