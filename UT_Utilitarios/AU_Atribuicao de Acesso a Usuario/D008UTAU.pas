unit D008UTAU;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, Ora, MemDS, DBAccess;

type
  TDTM_A008UTAU = class(TDataModule)
    QRY_057: TOraQuery;
    DTS_057: TOraDataSource;
    DTS_APLSYS: TOraDataSource;
    QRY_APLSYS: TOraQuery;
    QRY_055: TOraQuery;
    QRY_055NIDTBL_UP: TFloatField;
    QRY_055NIDTBL_U: TFloatField;
    QRY_055NIDTBL_PB: TFloatField;
    QRY_055CPERFIL: TStringField;
    QRY_055NSTATUS: TFloatField;
    DTS_055: TOraDataSource;
    QRY_041: TOraQuery;
    QRY_041CNOMEUNIT: TStringField;
    QRY_041CDESCAPLI: TStringField;
    QRY_041CNOMEBMP: TStringField;
    QRY_041CNOMEFORM: TStringField;
    QRY_041CSHOWFORM: TStringField;
    QRY_041CITENSMENU: TStringField;
    QRY_041CTITAPLIC: TStringField;
    QRY_041CCATEGORIA: TStringField;
    QRY_041NIMGSAIDA: TIntegerField;
    QRY_041NIDTBL_A: TFloatField;
    QRY_041NIDTBL_G: TFloatField;
    QRY_041NAPLICAUX: TIntegerField;
    QRY_041NIDTBL_PB: TFloatField;
    QRY_056: TOraQuery;
    QRY_056NIDTBL_PB: TFloatField;
    QRY_056CSIGLAPER: TStringField;
    QRY_056CNOMEPER: TStringField;
    QRY_APLSYSCNOMEUNIT: TStringField;
    QRY_APLSYSCDESCAPLI: TStringField;
    QRY_APLSYSCNOMEBMP: TStringField;
    QRY_APLSYSCNOMEFORM: TStringField;
    QRY_APLSYSCSHOWFORM: TStringField;
    QRY_APLSYSCITENSMENU: TStringField;
    QRY_APLSYSCTITAPLIC: TStringField;
    QRY_APLSYSCCATEGORIA: TStringField;
    QRY_APLSYSNIMGSAIDA: TIntegerField;
    QRY_APLSYSNIDTBL_A: TFloatField;
    QRY_APLSYSNIDTBL_G: TFloatField;
    QRY_APLSYSNAPLICAUX: TIntegerField;
    QRY_APLSYSNIDTBL_PB: TFloatField;
    QRY_057NIDTBL_UPA: TFloatField;
    QRY_057NIDTBL_UP: TFloatField;
    QRY_057NIDTBL_A: TFloatField;
    QRY_057NIDTBL_U: TFloatField;
    QRY_057CPERFIL: TStringField;
    QRY_057CDESCAPLI: TStringField;
    QRY_057NIDTBL_PB: TFloatField;
    QRY_APLSYSCNOMEPER: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DTM_A008UTAU: TDTM_A008UTAU;

implementation


{$R *.DFM}

end.
