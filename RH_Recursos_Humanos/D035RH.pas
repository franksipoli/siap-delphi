unit D035RH;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, Ora, MemDS, DBAccess;

type
  TDTM_A035RH = class(TDataModule)
    QRY_104: TOraQuery;
    DTS_104: TOraDataSource;
    QRY_104NIDTBXACR: TFloatField;
    QRY_104CDESCRACR: TStringField;
    QRY_104NCODTCE: TFloatField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DTM_A035RH: TDTM_A035RH;

implementation

uses DMCTRL;

{$R *.DFM}

end.
