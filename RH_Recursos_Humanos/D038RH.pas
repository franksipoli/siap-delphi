unit D038RH;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, MemDS, DBAccess, Ora;

type
  TDTM_A038RH = class(TDataModule)
    QRY_029: TOraQuery;
    DTS_029: TOraDataSource;
    QRY_077: TOraQuery;
    QRY_118: TOraQuery;
    DTS_077: TOraDataSource;
    DTS_118: TOraDataSource;
    QRY_118NANOREF: TFloatField;
    QRY_118NMESREF: TFloatField;
    QRY_118DAT_REF: TStringField;
    QRY_118_1: TOraQuery;
    DTS_118_1: TOraDataSource;
    QRY_118_1NIDCADEVE: TFloatField;
    QRY_118_1CDESCRIEVE: TStringField;
    QRY_118_1NREFERPAG: TFloatField;
    QRY_118_1CDESCRIREF: TStringField;
    QRY_118_2: TOraQuery;
    QRY_118_2NIDCADEVE: TFloatField;
    QRY_118_2CDESCRIEVE: TStringField;
    QRY_118_2NVALORPAG: TFloatField;
    DTS_118_2: TOraDataSource;
    QRY_118_3: TOraQuery;
    DTS_118_3: TOraDataSource;
    QRY_118_1NCODLANCTO: TFloatField;
    QRY_118_2NCODLANCTO: TFloatField;
    QRY_118_1DAT_VENC: TFloatField;
    QRY_118_1DAT_DESCON: TFloatField;
    QRY_118_3DAT_DESCON: TFloatField;
    QRY_118_3DAT_VENC: TFloatField;
    QRY_118CDESCRITFP: TStringField;
    QRY_118NANOPAG: TFloatField;
    QRY_118NMESPAG: TFloatField;
    QRY_118NIDTBXTFP: TFloatField;
    procedure QRY_118_1CDESCRIREFGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure QRY_118NMESREFGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DTM_A038RH: TDTM_A038RH;

implementation

{$R *.DFM}

procedure TDTM_A038RH.QRY_118_1CDESCRIREFGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  if Sender.AsString <> '' then
    Text := Sender.AsString[1];
end;

procedure TDTM_A038RH.QRY_118NMESREFGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  if Sender.asInteger = 13 then
    Text := '13º SALÁRIO'
  else
    Text := UpperCase(LongMonthNames[Sender.asInteger]);
  Text := Text + ' / ' + QRY_118.FieldByName('nanoref').asString;  
end;

end.
