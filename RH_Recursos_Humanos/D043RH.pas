unit D043RH;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, Ora, MemDS, DBAccess;

type
  TDTM_A043RH = class(TDataModule)
    QRY_083: TOraQuery;
    DTS_083: TOraDataSource;
    QRY_083NIDTBXEDI: TFloatField;
    QRY_083CNROEDITAL: TStringField;
    QRY_083DDTEDITAL: TDateTimeField;
    QRY_083DDTPUBLICA: TDateTimeField;
    QRY_083CDESCRIEDI: TStringField;
    QRY_083NIDTBXTPS: TFloatField;
    QRY_083NIDTBXVPB: TFloatField;
    QRY_097: TOraQuery;
    DTS_097: TOraDataSource;
    QRY_072: TOraQuery;
    DTS_072: TOraDataSource;
    QRY_072NIDTBXVPB: TFloatField;
    QRY_072CDESCRIVPB: TStringField;
    QRY_097NIDTBXTPS: TFloatField;
    QRY_097CDESCRITPS: TStringField;
    QRY_097NCODTCE: TFloatField;
    QRY_083LKP_TPSEL: TStringField;
    QRY_083LKP_VPB: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DTM_A043RH: TDTM_A043RH;

implementation

{$R *.DFM}

end.
