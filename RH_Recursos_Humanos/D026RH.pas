unit D026RH;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, Ora, MemDS, DBAccess;

type
  TDTM_A026RH = class(TDataModule)
    QRY_095: TOraQuery;
    DTS_095: TOraDataSource;
    QRY_095NIDTBXTCR: TFloatField;
    QRY_095CDESCRITCR: TStringField;
    QRY_095NIDTBXTCT: TFloatField;
    QRY_095NIDTBXTPM: TFloatField;
    QRY_095NIDTBXGMV: TFloatField;
    QRY_095CACAOTCE: TStringField;
    QRY_095NIDCADEVE: TFloatField;
    QRY_121: TOraQuery;
    QRY_074: TOraQuery;
    DTS_121: TOraDataSource;
    DTS_074: TOraDataSource;
    QRY_121NIDTBXTCT: TFloatField;
    QRY_121CDESCRITCT: TStringField;
    QRY_121NCODTCE: TFloatField;
    QRY_074NIDCADEVE: TFloatField;
    QRY_074CDESCRIEVE: TStringField;
    QRY_074CSTATUSEVE: TStringField;
    QRY_074NFATOREVE: TFloatField;
    QRY_074NSQCALCULO: TFloatField;
    QRY_074NCODLANCTO: TFloatField;
    QRY_074NIDTBXRCL: TFloatField;
    QRY_074NIDTBXGEV: TFloatField;
    QRY_074NIDTBXFLC: TFloatField;
    QRY_074NIDTBXTFP: TFloatField;
    QRY_074NIDTBXTEV: TFloatField;
    QRY_074NIDTBXCFP: TFloatField;
    QRY_074NIDTBXVPD: TFloatField;
    QRY_074NIDTBXREF: TFloatField;
    QRY_095LKP_TCT: TStringField;
    QRY_095LKP_CADEVE: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DTM_A026RH: TDTM_A026RH;

implementation

uses DMCTRL;

{$R *.DFM}

end.
