unit D021RH;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, Ora, MemDS, DBAccess;

type
  TDTM_A021RH = class(TDataModule)
    QRY_080: TOraQuery;
    DTS_080: TOraDataSource;
    QRY_080NIDTAGSLR: TFloatField;
    QRY_080CCLASSE: TStringField;
    QRY_080NNIVEL: TFloatField;
    QRY_080NVALORSLR: TFloatField;
    QRY_080NIDTBXSLR: TFloatField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DTM_A021RH: TDTM_A021RH;

implementation

uses DMCTRL;

{$R *.DFM}

end.
