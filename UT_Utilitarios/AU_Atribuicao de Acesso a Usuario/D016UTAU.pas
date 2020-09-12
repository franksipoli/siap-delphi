unit D016UTAU;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, MemDS, DBAccess, Ora;

type
  TDTM_A016UTAU = class(TDataModule)
    QRY_061: TOraQuery;
    QRY_051: TOraQuery;
    DTS_051: TOraDataSource;
    QRY_061NIDTBL_OPU: TFloatField;
    QRY_061NOPERADOR: TFloatField;
    QRY_061NIDTBL_U: TFloatField;
    QRY_061CNOMEUSU: TStringField;
    QRY_061CNOMEGRL: TStringField;
    QRY_051_01: TOraQuery;
    DTS_061: TOraDataSource;
    QRY_051CNOMEUSU: TStringField;
    QRY_051CSENHA: TStringField;
    QRY_051NIDTBL_U: TFloatField;
    QRY_051NIDCADGRL: TFloatField;
    QRY_051NADMIN: TFloatField;
    QRY_051NSUPERUSU: TFloatField;
    QRY_051_01CNOMEUSU: TStringField;
    QRY_051_01CSENHA: TStringField;
    QRY_051_01NIDTBL_U: TFloatField;
    QRY_051_01NIDCADGRL: TFloatField;
    QRY_051_01NADMIN: TFloatField;
    QRY_051_01NSUPERUSU: TFloatField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DTM_A016UTAU: TDTM_A016UTAU;

implementation

{$R *.DFM}

end.
