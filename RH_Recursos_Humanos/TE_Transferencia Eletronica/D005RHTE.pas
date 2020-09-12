unit D005RHTE;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, Ora, MemDS, DBAccess;

type
  TDTM_A005RHTE = class(TDataModule)
    QRY_062: TOraQuery;
    DTS_062: TOraDataSource;
    QRY_062CSEUNRO: TStringField;
    QRY_062CNOMFUN: TStringField;
    QRY_062CDESCRICAO: TStringField;
    QRY_062CCTLORI: TStringField;
    QRY_062DAT_DESCRICAO: TStringField;
    QRY_062NBCOPGT: TFloatField;
    QRY_062NAGEPGT: TFloatField;
    QRY_062DAT_NCTAPGT: TStringField;
    QRY_062NVLRLIQ: TFloatField;
    QRY_062CNOSSONRO: TFloatField;
    QRY_062NANOREF: TFloatField;
    QRY_062NMESREF: TFloatField;
    QRY_062DDATAPAGTO: TDateTimeField;
    procedure QRY_062NMESREFGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DTM_A005RHTE: TDTM_A005RHTE;

implementation

{$R *.DFM}

procedure TDTM_A005RHTE.QRY_062NMESREFGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  if Sender.AsInteger = 13 then
    text := '1ª Parc 13º '
  else
    if Sender.AsInteger = 14 then
      text := '13º Salário '
    else
      Text := UpperCase(LongMonthNames[Sender.AsInteger][1]) +
        Copy(LongMonthNames[Sender.AsInteger],2,length(LongMonthNames[Sender.AsInteger])-1) + ' ';

   Text := Text + '/ ' + QRY_062.FieldByName('nanoref').asString;
end;

end.
