unit D044RH;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, Ora, MemDS, DBAccess;

type
  TDTM_A044RH = class(TDataModule)
    QRY_141: TOraQuery;
    DTS_141: TOraDataSource;
    QRY_141NIDTBXENT: TFloatField;
    QRY_141CDESCRIENT: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DTM_A044RH: TDTM_A044RH;

implementation

uses DMCTRL;

{$R *.DFM}

end.
