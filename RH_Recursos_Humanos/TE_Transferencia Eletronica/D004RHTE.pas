unit D004RHTE;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, MemDS, DBAccess, Ora;

type
  TDTM_A004RHTE = class(TDataModule)
    QRY_064: TOraQuery;
    QRY_063: TOraQuery;
    QRY_QTDORI: TOraQuery;
    QRY_063NIDTBXORI: TFloatField;
    QRY_063CCODORI: TStringField;
    QRY_063CDESCRICAO: TStringField;
    QRY_063NCODBCO: TFloatField;
    QRY_063NAGENCIA: TFloatField;
    QRY_063NCONTA: TFloatField;
    QRY_063NDIGITO: TFloatField;
    QRY_063CPASTA: TStringField;
    QRY_063NNROSEQ: TFloatField;
    QRY_062: TOraQuery;
    QRY_062NIDCADREM: TFloatField;
    QRY_062CSEUNRO: TStringField;
    QRY_062CNOMFUN: TStringField;
    QRY_062NNUMCIC: TFloatField;
    QRY_062NBCOPGT: TFloatField;
    QRY_062NAGEPGT: TFloatField;
    QRY_062NCTAPGT: TFloatField;
    QRY_062NVLRLIQ: TFloatField;
    QRY_062NCODLOTE: TFloatField;
    QRY_062NTIPOPGTO: TFloatField;
    QRY_062NFORMAPGTO: TFloatField;
    QRY_062NNROREG: TFloatField;
    QRY_062NTIPOMOVTO: TFloatField;
    QRY_062CNOSSONRO: TFloatField;
    QRY_062CREMESSA: TStringField;
    QRY_062DDATAREM: TDateTimeField;
    QRY_062CHORAREM: TStringField;
    QRY_062CTIPOREM: TStringField;
    QRY_062CSITUACAO: TStringField;
    QRY_062DPREVPAGTO: TDateTimeField;
    QRY_063CFUNDEF: TStringField;
    QRY_063CCODANT: TStringField;
    QRY_063NDIGAGE: TFloatField;
    QRY_062CDIGCTA: TStringField;
    QRY_062NDIGAGE: TFloatField;
  private
    { Private declarations }
  public
    { Public declarations }

  end;

var
  DTM_A004RHTE: TDTM_A004RHTE;

implementation

{$R *.DFM}

end.
