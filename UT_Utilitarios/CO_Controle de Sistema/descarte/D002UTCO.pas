unit D002UTCO;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBAccess, Ora, MemDS;

type
  TDTM_A002UTCO = class(TDataModule)
    QRY_040: TOraQuery;
    DTS_040: TOraDataSource;
    QRY_041: TOraQuery;
    DTS_041: TOraDataSource;
    QRY_040NCODGRUPO: TIntegerField;
    QRY_040CNOMEGRUPO: TStringField;
    QRY_040NSEQUENCIA: TIntegerField;
    QRY_041CNOMEUNIT: TStringField;
    QRY_041CDESCAPLI: TStringField;
    QRY_041CCATEGORIA: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DTM_A002UTCO: TDTM_A002UTCO;

implementation

uses A002UTCO;

{$R *.DFM}

end.
