unit D002UTAU;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, Ora, MemDS, DBAccess;

type
  TDTM_A002UTAU = class(TDataModule)
    QRY_042: TOraQuery;
    DTS_042: TOraDataSource;
    QRY_053: TOraQuery;
    DTS_053: TOraDataSource;
    QRY_053NIDTBL_O: TFloatField;
    QRY_053NIDTBL_UAO: TFloatField;
    QRY_053NIDTBL_UPA: TFloatField;
    QRY_053CFUNCAO: TStringField;
    QRY_042NIDTBL_O: TFloatField;
    QRY_042NIDTBL_A: TFloatField;
    QRY_042CFUNCAO: TStringField;
    QRY_053NIDTBL_A: TFloatField;
    QRY_042CNOMEUNIT: TStringField;
    QRY_053CHERDADO: TStringField;
    QRY_053CNOMEUNIT: TStringField;
    QRY_056: TOraQuery;
    DTS_056: TOraDataSource;
    QRY_056NIDTBL_UP: TFloatField;
    QRY_056NIDTBL_U: TFloatField;
    QRY_056NIDTBL_PB: TFloatField;
    QRY_056CPERFIL: TStringField;
    QRY_056NSTATUS: TFloatField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DTM_A002UTAU: TDTM_A002UTAU;

implementation

uses A002UTAU;

{$R *.DFM}

end.
