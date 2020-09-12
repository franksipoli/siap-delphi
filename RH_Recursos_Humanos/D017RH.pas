unit D017RH;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, Ora, MemDS, DBAccess;

type
  TDTM_A017RH = class(TDataModule)
    QRY_082: TOraQuery;
    DTS_082: TOraDataSource;
    QRY_120: TOraQuery;
    DTS_120: TOraDataSource;
    QRY_082NIDTBXDPT: TFloatField;
    QRY_082CDESCRIDPT: TStringField;
    QRY_082NIDTBXFGV: TFloatField;
    QRY_082CCODANT: TStringField;
    QRY_082DAT_FUNCAO: TStringField;
    QRY_082DAT_DEPTO: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DTM_A017RH: TDTM_A017RH;

implementation

uses DMCTRL;

{$R *.DFM}

end.
