unit D004UTAU;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, Ora, MemDS, DBAccess;

type
  TDTM_A004UTAU = class(TDataModule)
    QRY_055: TOraQuery;
    QRY_TMP: TOraQuery;
    QRY_TMPCNOMEUNIT: TStringField;
    QRY_TMPCDESCAPLI: TStringField;
    QRY_TMPCNOMEBMP: TStringField;
    QRY_TMPCNOMEFORM: TStringField;
    QRY_TMPCSHOWFORM: TStringField;
    QRY_TMPCITENSMENU: TStringField;
    QRY_TMPCTITAPLIC: TStringField;
    QRY_TMPCCATEGORIA: TStringField;
    QRY_TMPNIMGSAIDA: TIntegerField;
    QRY_TMPNIDTBL_A: TFloatField;
    QRY_TMPNIDTBL_G: TFloatField;
    QRY_TMPNAPLICAUX: TIntegerField;
    QRY_TMPNIDTBL_PB: TFloatField;
    QRY_TMPNIDTBL_UPA: TFloatField;
    QRY_056: TOraQuery;
    DTS_055: TOraDataSource;
    DTS_056: TOraDataSource;
    QRY_056NIDTBL_PB: TFloatField;
    QRY_056CSIGLAPER: TStringField;
    QRY_056CNOMEPER: TStringField;
    QRY_055NIDTBL_UP: TFloatField;
    QRY_055NIDTBL_U: TFloatField;
    QRY_055NIDTBL_PB: TFloatField;
    QRY_055CPERFIL: TStringField;
    QRY_055NSTATUS: TFloatField;
    QRY_055CNOMEPER: TStringField;
    QRY_057: TOraQuery;
    QRY_057NIDTBL_UPA: TFloatField;
    QRY_057NIDTBL_UP: TFloatField;
    QRY_057NIDTBL_A: TFloatField;
    QRY_057CPERFIL: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DTM_A004UTAU: TDTM_A004UTAU;

implementation

uses A004UTAU;

{$R *.DFM}

end.
