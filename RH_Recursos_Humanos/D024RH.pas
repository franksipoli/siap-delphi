unit D024RH;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, Ora, MemDS, DBAccess;

type
  TDTM_A024RH = class(TDataModule)
    QRY_121: TOraQuery;
    DTS_121: TOraDataSource;
    QRY_121NIDTBXTCT: TFloatField;
    QRY_121CDESCRITCT: TStringField;
    QRY_121NCODTCE: TFloatField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DTM_A024RH: TDTM_A024RH;

implementation

uses DMCTRL;

{$R *.DFM}

end.
