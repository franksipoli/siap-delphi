unit D011UTAU;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, MemDS, DBAccess, Ora;

type
  TDTM_A011UTAU = class(TDataModule)
    QRY_APLOPERADOR: TOraQuery;
    QRY_056: TOraQuery;
    QRY_APLUSUARIO: TOraQuery;
    QRY_055: TOraQuery;
    QRY_052: TOraQuery;
    DTS_052: TOraDataSource;
    QRY_TMP: TOraQuery;
    QRY_TMPCDESCAPLI: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DTM_A011UTAU: TDTM_A011UTAU;

implementation

{$R *.DFM}

end.
