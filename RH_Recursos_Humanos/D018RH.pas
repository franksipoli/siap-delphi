unit D018RH;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, MemDS, DBAccess, Ora;

type
  TDTM_A018RH = class(TDataModule)
    QRY_076: TOraQuery;
    DTS_076: TOraDataSource;
    QRY_090: TOraQuery;
    DTS_090: TOraDataSource;
    QRY_076NIDTBXDPT: TFloatField;
    QRY_076NIDTBXSET: TFloatField;
    QRY_076CDESCRISET: TStringField;
    QRY_076NIDTAGDST: TFloatField;
    QRY_090CDESCRISET: TStringField;
    QRY_090NIDTBXSET: TFloatField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DTM_A018RH: TDTM_A018RH;

implementation

uses DMCTRL;

{$R *.DFM}

end.
