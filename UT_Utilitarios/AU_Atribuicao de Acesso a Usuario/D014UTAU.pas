unit D014UTAU;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, MemDS, DBAccess, Ora;

type
  TDTM_A014UTAU = class(TDataModule)
    QRY_051: TOraQuery;
    QRY_059: TOraQuery;
    QRY_058: TOraQuery;
    DTS_059: TOraDataSource;
    DTS_058: TOraDataSource;
    QRY_051NIDTBL_U: TFloatField;
    QRY_051CNOMEUSU: TStringField;
    QRY_058NIDTBL_OP: TFloatField;
    QRY_058CNOMEPER: TStringField;
    QRY_058NIDTBL_U: TFloatField;
    QRY_059NIDTBL_EQV: TFloatField;
    QRY_059NIDTBL_U: TFloatField;
    QRY_059NIDTBL_OP: TFloatField;
    QRY_059NUSUAUTOR: TFloatField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DTM_A014UTAU: TDTM_A014UTAU;

implementation

{$R *.DFM}

end.
