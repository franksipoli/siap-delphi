unit D008;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, Ora, MemDS, DBAccess;

type
  TDTM_A008 = class(TDataModule)
    QRY_023: TOraQuery;
    DTS_023: TOraDataSource;
    QRY_023NIDTBXNAC: TFloatField;
    QRY_023CNOMENAC: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DTM_A008: TDTM_A008;

implementation

{$R *.DFM}

end.
