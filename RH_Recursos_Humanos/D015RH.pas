unit D015RH;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, Ora, MemDS, DBAccess;

type
  TDTM_A015RH = class(TDataModule)
    QRY_088: TOraQuery;
    DTS_088: TOraDataSource;
    QRY_120: TOraQuery;
    DTS_120: TOraDataSource;
    QRY_088NIDTBXORG: TFloatField;
    QRY_088CDESCRIORG: TStringField;
    QRY_088NIDTBXFGV: TFloatField;
    QRY_088NCODCONTAB: TFloatField;
    QRY_088CCODANT: TStringField;
    QRY_088DAT_FUNCAO: TStringField;
    QRY_088DAT_ORGAO: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DTM_A015RH: TDTM_A015RH;

implementation

uses DMCTRL;

{$R *.DFM}

end.
