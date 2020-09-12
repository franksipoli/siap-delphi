unit D022RH;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, Ora, MemDS, DBAccess;

type
  TDTM_A022RH = class(TDataModule)
    QRY_120: TOraQuery;
    DTS_120: TOraDataSource;
    QRY_120NIDTBXFGV: TFloatField;
    QRY_120CFUNCAO: TStringField;
    QRY_120NCODTCE: TFloatField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DTM_A022RH: TDTM_A022RH;

implementation

uses DMCTRL;

{$R *.DFM}

end.
