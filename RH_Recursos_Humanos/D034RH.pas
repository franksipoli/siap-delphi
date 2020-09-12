unit D034RH;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, Ora, MemDS, DBAccess;

type
  TDTM_A034RH = class(TDataModule)
    QRY_097: TOraQuery;
    DTS_097: TOraDataSource;
    QRY_097NIDTBXTPS: TFloatField;
    QRY_097CDESCRITPS: TStringField;
    QRY_097NCODTCE: TFloatField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DTM_A034RH: TDTM_A034RH;

implementation

uses DMCTRL;

{$R *.DFM}

end.
