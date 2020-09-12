unit D012RH;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, Ora, MemDS, DBAccess;

type
  TDTM_A012RH = class(TDataModule)
    QRY_103: TOraQuery;
    DTS_103: TOraDataSource;
    QRY_092: TOraQuery;
    DTS_092: TOraDataSource;
    QRY_080: TOraQuery;
    DTS_080: TOraDataSource;
    QRY_080_1: TOraQuery;
    DTS_080_1: TOraDataSource;
    QRY_103NIDTAGOBT: TFloatField;
    QRY_103DDTOBITO: TDateTimeField;
    QRY_103CMOTIVO: TStringField;
    QRY_103NBSPENSAO: TFloatField;
    QRY_103CULTIMOCRG: TStringField;
    QRY_103NIDCADSER: TFloatField;
    QRY_103NIDTAGSLR: TFloatField;
    QRY_103NIDTBXSLR: TFloatField;
    QRY_103CCLASSE: TStringField;
    QRY_103LKL_SAL: TCurrencyField;
    QRY_103CNOMEGRL: TStringField;
    QRY_077: TOraQuery;
    DTS_077: TOraDataSource;
    QRY_077CNOMEGRL: TStringField;
    QRY_077NPERSLR: TFloatField;
    QRY_077CNOMEGRP: TStringField;
    QRY_077NVALORSLR: TFloatField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DTM_A012RH: TDTM_A012RH;

implementation

{$R *.DFM}

end.
