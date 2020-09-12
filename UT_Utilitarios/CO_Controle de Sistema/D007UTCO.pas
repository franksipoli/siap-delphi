unit D007UTCO;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, Ora, MemDS, DBAccess;

type
  TDTM_A007UTCO = class(TDataModule)
    QRY_044: TOraQuery;
    QRY_042: TOraQuery;
    DTS_044: TOraDataSource;
    DTS_042: TOraDataSource;
    QRY_044CNOMEOBJ: TStringField;
    QRY_044CNOMECLA: TStringField;
    QRY_044CHINT: TStringField;
    QRY_044NIDTBL_O: TFloatField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DTM_A007UTCO: TDTM_A007UTCO;

implementation

uses DMCTRL;

{$R *.DFM}

end.
