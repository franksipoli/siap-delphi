unit D033RH;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, Ora, MemDS, DBAccess;

type
  TDTM_A033RH = class(TDataModule)
    QRY_127: TOraQuery;
    DTS_127: TOraDataSource;
    QRY_127NIDTBXVPD: TFloatField;
    QRY_127CDESCRVPD: TStringField;
    QRY_127NCODTCE: TFloatField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DTM_A033RH: TDTM_A033RH;

implementation

uses DMCTRL;

{$R *.DFM}

end.
