unit D011RH;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, Ora, MemDS, DBAccess;

type
  TDTM_A011RH = class(TDataModule)
    QRY_096: TOraQuery;
    DTS_096: TOraDataSource;
    QRY_108: TOraQuery;
    DTS_108: TOraDataSource;
    QRY_108NIDTAGMVF: TFloatField;
    QRY_108DDTINICIAL: TDateTimeField;
    QRY_108DDTFINAL: TDateTimeField;
    QRY_108CPROCAUTOM: TStringField;
    QRY_108CTIPOLACTO: TStringField;
    QRY_108CMVFINICIO: TStringField;
    QRY_108CMVFATUAL: TStringField;
    QRY_108NIDTBXTPM: TFloatField;
    QRY_108NIDTAGFFU: TFloatField;
    QRY_108CDESCRITPM: TStringField;
    QRY_108CDESCRISTS: TStringField;
    SPR_ATUASTATUS: TOraStoredProc;
    SPR_RVGAUTOM: TOraStoredProc;
    QRY_096NIDTBXTPM: TFloatField;
    QRY_096CDESCRITPM: TStringField;
    QRY_096CTIPORVG: TStringField;
    QRY_096CDESCRISTS: TStringField;
    QRY_CONSULTA: TOraQuery;
    QRY_108NIDMVFORI: TFloatField;
    QRY_108NIDTBXGMV: TFloatField;
    QRY_096NIDTBXGMV: TFloatField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DTM_A011RH: TDTM_A011RH;

implementation

{$R *.DFM}

end.
