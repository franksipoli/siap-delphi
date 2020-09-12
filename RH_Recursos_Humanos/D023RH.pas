unit D023RH;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, Ora, MemDS, DBAccess;

type
  TDTM_A023RH = class(TDataModule)
    QRY_126: TOraQuery;
    DTS_126: TOraDataSource;
    QRY_126NIDTBXCAT: TFloatField;
    QRY_126CDESCRICAT: TStringField;
    QRY_126NCODTCE: TFloatField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DTM_A023RH: TDTM_A023RH;

implementation

uses DMCTRL;

{$R *.DFM}

end.
