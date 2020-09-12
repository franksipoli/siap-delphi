unit D002RH;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, Ora, MemDS, DBAccess;

type
  TDTM_A002RH = class(TDataModule)
    QRY_027: TOraQuery;
    DTS_027: TOraDataSource;
    QRY_027NIDTBXDIR: TFloatField;
    QRY_027CNOMEDIR: TStringField;
    QRY_027NIDADE: TFloatField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DTM_A002RH: TDTM_A002RH;

implementation

{$R *.DFM}

end.
