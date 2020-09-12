unit D002RHTE;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, MemDS, DBAccess, Ora;

type
  TDTM_A002RHTE = class(TDataModule)
    QRY_PAGTO: TQuery;
    QRY_062: TOraQuery;
    DTS_062: TOraDataSource;
    QRY_PAGTOnContr: TSmallintField;
    QRY_PAGTOnCodFun: TSmallintField;
    QRY_PAGTOcNomFun: TStringField;
    QRY_PAGTOcNumCic: TStringField;
    QRY_PAGTOnBcoPgt: TSmallintField;
    QRY_PAGTOnCtaPgt: TFloatField;
    QRY_PAGTOcCodOri: TStringField;
    QRY_PAGTOcCtlOri: TStringField;
    QRY_PAGTOnVlrLiq: TFloatField;
    QRY_PAGTOnMesRef: TSmallintField;
    QRY_PAGTOnAnoRef: TSmallintField;
    QRY_PAGTOnAgePgt: TSmallintField;
    QRY_PAGTOcDigCta: TStringField;
    QRY_PAGTOnDigAge: TSmallintField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DTM_A002RHTE: TDTM_A002RHTE;

implementation

{$R *.DFM}

end.
