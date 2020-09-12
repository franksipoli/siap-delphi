unit D003RHTE;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, MemDS, DBAccess, Ora, ppComm, ppRelatv, ppCache, ppDB, ppDBPipe;

type
  TDTM_A003RHTE = class(TDataModule)
    QRY_062: TOraQuery;
    DTS_062: TOraDataSource;
    QRY_066: TOraQuery;
    DTS_066: TOraDataSource;
    QRY_062NIDCADREM: TFloatField;
    QRY_062CSEUNRO: TStringField;
    QRY_062CNOMFUN: TStringField;
    QRY_062CTIPOREM: TStringField;
    QRY_062NBCOPGT: TFloatField;
    QRY_062NAGEPGT: TFloatField;
    QRY_062DAT_NCTAPGT: TStringField;
    QRY_062NVLRLIQ: TFloatField;
    QRY_062NCODFUN: TFloatField;
    DBP_062: TppDBPipeline;
    DBP_066: TppDBPipeline;
    DBP_P: TppDBPipeline;
    QRY_062_01: TOraQuery;
    DTS_062_01: TOraDataSource;
    QRY_062_01NIDCADREM: TFloatField;
    QRY_062_01CSEUNRO: TStringField;
    QRY_062_01NCODFUN: TFloatField;
    QRY_062_01CNOMFUN: TStringField;
    QRY_062_01NBCOPGT: TFloatField;
    QRY_062_01NAGEPGT: TFloatField;
    QRY_062_01DAT_NCTAPGT: TStringField;
    QRY_062_01NVLRLIQ: TFloatField;
    QRY_062_01DPREVPAGTO: TDateTimeField;
    QRY_062_01CCTLORI: TStringField;
    QRY_062_01DAT_ORIGEM: TStringField;
    QRY_062_01DAT_FORMAPGTO: TStringField;
    QRY_066_01: TOraQuery;
    DTS_066_01: TOraDataSource;
    QRY_062_01CNOSSONRO: TFloatField;
    QRY_062_01DDATAPAGTO: TDateTimeField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DTM_A003RHTE: TDTM_A003RHTE;

implementation

uses DMCTRL;

{$R *.DFM}

end.
