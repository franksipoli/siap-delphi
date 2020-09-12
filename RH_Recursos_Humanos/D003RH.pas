unit D003RH;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, Ora, MemDS, DBAccess;

type
  TDTM_A003RH = class(TDataModule)
    QRY_028: TOraQuery;
    DTS_028: TOraDataSource;
    QRY_028NIDTBXDSF: TFloatField;
    QRY_028CNOMEDSF: TStringField;
    QRY_028NIDADE: TFloatField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DTM_A003RH: TDTM_A003RH;

implementation

{$R *.DFM}

end.
