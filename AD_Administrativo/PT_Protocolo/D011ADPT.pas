unit D011ADPT;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, Ora, MemDS, DBAccess;

type
  TDTM_A011ADPT = class(TDataModule)
    QRY_155: TOraQuery;
    DTS_155: TOraDataSource;
    QRY_155NIDTBXTRQ: TFloatField;
    QRY_155CDESCRITRQ: TStringField;
    QRY_155CDOCUMENTO: TStringField;
    QRY_155NDIASATEND: TFloatField;
    QRY_155CREFERENRH: TStringField;
    QRY_155_1: TOraQuery;
    DTS_155_1: TOraDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DTM_A011ADPT: TDTM_A011ADPT;

implementation

{$R *.DFM}

end.
