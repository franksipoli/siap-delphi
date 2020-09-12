unit D027RH;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, Ora, MemDS, DBAccess;

type
  TDTM_A027RH = class(TDataModule)
    QRY_115: TOraQuery;
    QRY_112: TOraQuery;
    DTS_115: TOraDataSource;
    QRY_115NIDTBXRPV: TFloatField;
    QRY_115CDESCRRPV: TStringField;
    QRY_112CDESCRRPV: TStringField;
    QRY_112NIDTBXRPV: TFloatField;
    DTS_112: TOraDataSource;
    QRY_115NIDTAGRPC: TFloatField;
    QRY_115NIDTBXTCR: TFloatField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DTM_A027RH: TDTM_A027RH;

implementation

uses DMCTRL;

{$R *.DFM}

end.
