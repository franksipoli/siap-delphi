unit D002ADAT;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, Ora, MemDS, DBAccess;

type
  TDTM_A002ADAT = class(TDataModule)
    QRY_070: TOraQuery;
    DTS_070: TOraDataSource;
    QRY_070NIDTBXRSV: TFloatField;
    QRY_070CDESCRIRSV: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DTM_A002ADAT: TDTM_A002ADAT;

implementation

{$R *.DFM}

end.
