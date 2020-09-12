unit D008RHTE;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, MemDS, DBAccess, Ora;

type
  TDTM_A008RHTE = class(TDataModule)
    QRY_062: TOraQuery;
    DTS_062: TOraDataSource;
    QRY_062_01: TOraQuery;
    DTS_062_01: TOraDataSource;
    QRY_062_01NMESREF: TFloatField;
    QRY_062_01NANOREF: TFloatField;
    QRY_062_01NVLRLIQ: TFloatField;
    QRY_062_01NBCOPGT: TFloatField;
    QRY_062_01NAGEPGT: TFloatField;
    QRY_062_01DAT_CTAPGT: TStringField;
    QRY_062_01CTIPOREM: TStringField;
    QRY_062_01NIDCADREM: TFloatField;
    procedure QRY_062_01NMESREFGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DTM_A008RHTE: TDTM_A008RHTE;

implementation

{$R *.DFM}

procedure TDTM_A008RHTE.QRY_062_01NMESREFGetText(Sender: TField;
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

   Text := Text + '/ ' + QRY_062_01.FieldByName('nanoref').asString;

   {Text := UpperCase(LongMonthNames[Sender.AsInteger][1]) +
    Copy(LongMonthNames[Sender.AsInteger],2,length(LongMonthNames[Sender.AsInteger])-1)+ '/' +
    QRY_062_01.FieldByName('nanoref').asString;}
end;

end.
