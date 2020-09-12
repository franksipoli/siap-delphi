unit D001UTCO;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, Ora, MemDS, DBAccess;

type
  TDTM_A001UTCO = class(TDataModule)
    QRY_040: TOraQuery;
    DTS_040: TOraDataSource;
    QRY_040CNOMEGRUPO: TStringField;
    QRY_040NSEQUENCIA: TIntegerField;
    QRY_040NIDTBL_G: TFloatField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DTM_A001UTCO: TDTM_A001UTCO;

implementation

uses DMCTRL;

{$R *.DFM}

end.
