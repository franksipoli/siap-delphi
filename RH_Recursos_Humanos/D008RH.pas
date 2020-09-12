unit D008RH;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, Ora, MemDS, DBAccess;

type
  TDTM_A008RH = class(TDataModule)
    QRY_016: TOraQuery;
    DTS_016: TOraDataSource;
    QRY_029: TOraQuery;
    QRY_103: TOraQuery;
    DTS_103: TOraDataSource;
    QRY_016NIDCADGRL: TFloatField;
    QRY_016CNOMEGRL: TStringField;
    QRY_016CCPFCNPJ: TStringField;
    QRY_016CPESSOAFJ: TFloatField;
    QRY_016NIDCADLOG: TFloatField;
    QRY_016NIDTBXCNA: TFloatField;
    QRY_092: TOraQuery;
    DTS_092: TOraDataSource;
    QRY_080: TOraQuery;
    DTS_080: TOraDataSource;
    QRY_080_1: TOraQuery;
    DTS_080_1: TOraDataSource;
    DTS_029: TOraDataSource;
    QRY_019: TOraQuery;
    DTS_019: TOraDataSource;
    QRY_103NIDTAGOBT: TFloatField;
    QRY_103DDTOBITO: TDateTimeField;
    QRY_103CMOTIVO: TStringField;
    QRY_103NBSPENSAO: TFloatField;
    QRY_103CULTIMOCRG: TStringField;
    QRY_103NIDCADSER: TFloatField;
    QRY_103NIDTAGSLR: TFloatField;
    QRY_103CCLASSE: TStringField;
    QRY_103NNIVEL: TFloatField;
    QRY_103NIDTBXSLR: TFloatField;
    QRY_019NIDCADGRL: TFloatField;
    QRY_019NIDCADFIS: TFloatField;
    QRY_019NIDTBXECI: TFloatField;
    QRY_019NIDTBXERG: TFloatField;
    QRY_019NIDTBXLOC: TFloatField;
    QRY_019NIDTBXCOR: TFloatField;
    QRY_019NIDTBXNAC: TFloatField;
    QRY_019NIDTBXGRI: TFloatField;
    QRY_029NIDCADSER: TFloatField;
    QRY_029NIDCADGRL: TFloatField;
    QRY_103NIDTBXTBI: TFloatField;
    QRY_094: TOraQuery;
    DTS_094: TOraDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DTM_A008RH: TDTM_A008RH;

implementation

{$R *.DFM}

end.
