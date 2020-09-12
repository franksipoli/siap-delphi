unit D008UTCO;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, Ora, MemDS, DBAccess;

type
  TDTM_A008UTCO = class(TDataModule)
    QRY_046: TOraQuery;
    DTS_046: TOraDataSource;
    QRY_046CNOMECAMPO: TStringField;
    QRY_046CTIPOCAMPO: TStringField;
    QRY_046NTAMANHO: TIntegerField;
    QRY_046NDECIMAL: TIntegerField;
    QRY_046CTITULO: TStringField;
    QRY_046CDESCCAMPO: TStringField;
    QRY_046CMASCEDIT: TStringField;
    QRY_046CMASCDISP: TStringField;
    QRY_046NCODTABELA: TIntegerField;
    QRY_046MCAMPOHELP: TMemoField;
    QRY_046CALINHAR: TStringField;
    QRY_046CVALIDA: TStringField;
    QRY_046CTIPOFISIC: TStringField;
    QRY_046NIDTBL_D: TFloatField;
    QRY_043: TOraQuery;
    DST_043: TOraDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DTM_A008UTCO: TDTM_A008UTCO;

implementation

{$R *.DFM}

end.
