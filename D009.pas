unit D009;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, Ora, MemDS, DBAccess;

type
  TDTM_A009 = class(TDataModule)
    QRY_022: TOraQuery;
    DTS_022: TOraDataSource;
    QRY_022NIDTBXGRI: TFloatField;
    QRY_022CNOMEGRI: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DTM_A009: TDTM_A009;

implementation

{$R *.DFM}

end.
