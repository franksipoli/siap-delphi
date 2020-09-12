unit D037RH;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, Ora, MemDS, DBAccess;

type
  TDTM_A037RH = class(TDataModule)
    QRY_081: TOraQuery;
    DTS_081: TOraDataSource;
    QRY_081NIDTBXAGI: TFloatField;
    QRY_081CDESCRIAGI: TStringField;
    QRY_081NCODTCE: TFloatField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DTM_A037RH: TDTM_A037RH;

implementation

uses DMCTRL;

{$R *.DFM}

end.
