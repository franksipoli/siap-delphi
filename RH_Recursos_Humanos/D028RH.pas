unit D028RH;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, Ora, MemDS, DBAccess;

type
  TDTM_A028RH = class(TDataModule)
    QRY_136: TOraQuery;
    QRY_149: TOraQuery;
    DTS_136: TOraDataSource;
    DTS_149: TOraDataSource;
    QRY_136NIDTAGPAU: TFloatField;
    QRY_136NIDTBXTFP: TFloatField;
    QRY_136NIDTBXTCR: TFloatField;
    QRY_136CDESCRITFP: TStringField;
    QRY_149CDESCRITFP: TStringField;
    QRY_149NIDTBXTFP: TFloatField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DTM_A028RH: TDTM_A028RH;

implementation

uses DMCTRL;

{$R *.DFM}

end.
