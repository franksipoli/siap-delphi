unit D010;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, Ora, MemDS, DBAccess;

type
  TDTM_A010 = class(TDataModule)
    QRY_021: TOraQuery;
    DTS_021: TOraDataSource;
    QRY_021NIDTBXECI: TFloatField;
    QRY_021CNOMEECI: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DTM_A010: TDTM_A010;

implementation

{$R *.DFM}

end.
