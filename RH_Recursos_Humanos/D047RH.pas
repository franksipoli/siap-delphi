unit D047RH;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, Ora, MemDS, DBAccess;

type
  TDTM_A047RH = class(TDataModule)
    QRY_086: TOraQuery;
    DTS_086: TOraDataSource;
    QRY_086NIDTBXGRO: TFloatField;
    QRY_086CDESCRIGRO: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DTM_A047RH: TDTM_A047RH;

implementation

uses DMCTRL;

{$R *.DFM}

end.
