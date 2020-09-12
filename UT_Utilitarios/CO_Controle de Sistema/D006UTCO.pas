unit D006UTCO;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, Ora, MemDS, DBAccess;

type
  TDTM_A006UTCO = class(TDataModule)
    QRY_041: TOraQuery;
    DTS_041: TOraDataSource;
    QRY_041CNOMEUNIT: TStringField;
    QRY_041CDESCAPLI: TStringField;
    QRY_041CCATEGORIA: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DTM_A006UTCO: TDTM_A006UTCO;

implementation

{$R *.DFM}

end.
