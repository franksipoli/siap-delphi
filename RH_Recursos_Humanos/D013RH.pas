unit D013RH;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, Ora, MemDS, DBAccess;

type
  TDTM_A013RH = class(TDataModule)
    QRY_119: TOraQuery;
    DTS_119: TOraDataSource;
    QRY_119CDESCRIVTG: TStringField;
    QRY_119NPERCVGC: TFloatField;
    QRY_119DAT_DIAS: TFloatField;
    QRY_119DAT_VALOR: TFloatField;
    QRY_119NVALORSLR: TFloatField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DTM_A013RH: TDTM_A013RH;

implementation

{$R *.DFM}

end.
