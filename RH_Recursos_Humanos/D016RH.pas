unit D016RH;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, MemDS, DBAccess, Ora;

type
  TDTM_A016RH = class(TDataModule)
    QRY_082: TOraQuery;
    DTS_082: TOraDataSource;
    QRY_078: TOraQuery;
    DTS_078: TOraDataSource;
    QRY_082CDESCRIDPT: TStringField;
    QRY_082NIDTBXDPT: TFloatField;
    QRY_078NIDTBXORG: TFloatField;
    QRY_078NIDTBXDPT: TFloatField;
    QRY_078CDESCRIDPT: TStringField;
    QRY_078NIDTAGODP: TFloatField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DTM_A016RH: TDTM_A016RH;

implementation

uses DMCTRL;

{$R *.DFM}

end.
