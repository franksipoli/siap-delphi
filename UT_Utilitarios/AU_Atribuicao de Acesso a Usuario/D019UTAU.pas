unit D019UTAU;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, MemDS, DBAccess, Ora;

type
  TDTM_A019UTAU = class(TDataModule)
    QRY_051: TOraQuery;
    QRY_051_01: TOraQuery;
    DTS_051: TOraDataSource;
    DTS_051_01: TOraDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DTM_A019UTAU: TDTM_A019UTAU;

implementation

{$R *.DFM}

end.
