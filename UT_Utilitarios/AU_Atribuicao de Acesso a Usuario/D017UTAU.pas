unit D017UTAU;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, Ora, MemDS, DBAccess;

type
  TDTM_A017UTAU = class(TDataModule)
    QRY_059: TOraQuery;
    DTS_059: TOraDataSource;
    QRY_058: TOraQuery;
    QRY_059NIDTBL_EQV: TFloatField;
    QRY_059NIDTBL_U: TFloatField;
    QRY_059NIDTBL_OP: TFloatField;
    QRY_059NUSUAUTOR: TFloatField;
    QRY_058NIDTBL_OP: TFloatField;
    QRY_058CNOMEPER: TStringField;
    QRY_058NIDTBL_U: TFloatField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DTM_A017UTAU: TDTM_A017UTAU;

implementation

{$R *.DFM}

end.
