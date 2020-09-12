unit D040RH;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, Ora, MemDS, DBAccess;

type
  TDTM_A040RH = class(TDataModule)
    QRY_089: TOraQuery;
    DTS_089: TOraDataSource;
    QRY_079: TOraQuery;
    DTS_079: TOraDataSource;
    QRY_073: TOraQuery;
    DTS_073: TOraDataSource;
    QRY_073CDESCRITCR: TStringField;
    QRY_073CDESCRICRG: TStringField;
    QRY_079NIDTAGQHR: TFloatField;
    QRY_079NIDTBXQHR: TFloatField;
    QRY_079NIDCADCRG: TFloatField;
    QRY_079DAT_HORARIO: TStringField;
    QRY_089NIDTBXQHR: TFloatField;
    QRY_089DAT_HORARIO: TStringField;
    QRY_073NIDCADCRG: TFloatField;
    QRY_089NPERINIINI: TFloatField;
    QRY_089NPERINIFIM: TFloatField;
    QRY_089NPERFININI: TFloatField;
    QRY_089NPERFINFIM: TFloatField;
    QRY_079NPERINIINI: TFloatField;
    QRY_079NPERINIFIM: TFloatField;
    QRY_079NPERFININI: TFloatField;
    QRY_079NPERFINFIM: TFloatField;
    procedure QRY_079DAT_HORARIOGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure QRY_089DAT_HORARIOGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DTM_A040RH: TDTM_A040RH;

implementation

{$R *.DFM}

procedure TDTM_A040RH.QRY_079DAT_HORARIOGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  with QRY_079 do
    begin
      if FieldByName('nperiniini').asString <> '' then
        Text :=
          FieldByName('nperiniini').DisplayText + ' | ' +
          FieldByName('nperinifim').DisplayText + ' | ' +
          FieldByName('nperfinini').DisplayText + ' | ' +
          FieldByName('nperfinfim').DisplayText;
    end;

end;

procedure TDTM_A040RH.QRY_089DAT_HORARIOGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  with QRY_089 do
    begin
      if FieldByName('nperiniini').asString <> '' then
        Text :=
          FieldByName('nperiniini').DisplayText + ' | ' +
          FieldByName('nperinifim').DisplayText + ' | ' +
          FieldByName('nperfinini').DisplayText + ' | ' +
          FieldByName('nperfinfim').DisplayText;
    end;
end;

end.
