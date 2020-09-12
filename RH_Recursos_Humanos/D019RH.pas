unit D019RH;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, Ora, MemDS, DBAccess;

type
  TDTM_A019RH = class(TDataModule)
    QRY_090: TOraQuery;
    DTS_090: TOraDataSource;
    QRY_120: TOraQuery;
    DTS_120: TOraDataSource;
    QRY_090NIDTBXSET: TFloatField;
    QRY_090CDESCRISET: TStringField;
    QRY_090NIDTBXFGV: TFloatField;
    QRY_090DAT_FUNCAO: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DTM_A019RH: TDTM_A019RH;

implementation

uses DMCTRL;

{$R *.DFM}

end.
