unit D007;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, Ora, MemDS, DBAccess;

type
  TDTM_A007 = class(TDataModule)
    QRY_020: TOraQuery;
    DTS_020: TOraDataSource;
    QRY_020NIDTBXCOR: TFloatField;
    QRY_020CNOMECOR: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DTM_A007: TDTM_A007;

implementation

{$R *.DFM}

end.
