unit D013UTAU;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, MemDS, DBAccess, Ora;

type
  TDTM_A013UTAU = class(TDataModule)
    QRY_056: TOraQuery;
    QRY_055: TOraQuery;
    QRY_058: TOraQuery;
    DTS_055: TOraDataSource;
    DTS_058: TOraDataSource;
    QRY_EQV: TOraQuery;
    QRY_TEMP: TOraQuery;
    QRY_APLICUSU: TOraQuery;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DTM_A013UTAU: TDTM_A013UTAU;

implementation

{$R *.DFM}

end.
