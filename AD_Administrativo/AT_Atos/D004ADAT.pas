unit D004ADAT;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, Ora, MemDS, DBAccess;

type
  TDTM_A004ADAT = class(TDataModule)
    QRY_072: TOraQuery;
    DTS_072: TOraDataSource;
    QRY_072NIDTBXVPB: TFloatField;
    QRY_072CDESCRIVPB: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DTM_A004ADAT: TDTM_A004ADAT;

implementation

{$R *.DFM}

end.
