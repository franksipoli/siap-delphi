unit D010RH;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, Ora, MemDS, DBAccess;

type
  TDTM_A010RH = class(TDataModule)
    QRY_099: TOraQuery;
    DTS_099: TOraDataSource;
    QRY_099CDESCRITPM: TStringField;
    QRY_099CNROATO: TStringField;
    QRY_099DDTEFEITOS: TDateTimeField;
    QRY_099DAT_ATO: TStringField;
    QRY_099DAT_EFEITOS: TDateTimeField;
    QRY_099NIDCADMOV: TFloatField;
    QRY_099NMESPGTO: TFloatField;
    QRY_099NANOPGTO: TFloatField;
    procedure DTS_099DataChange(Sender: TObject; Field: TField);
    procedure QRY_099NANOPGTOGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DTM_A010RH: TDTM_A010RH;

implementation

uses A010RH;

{$R *.DFM}

procedure TDTM_A010RH.DTS_099DataChange(Sender: TObject; Field: TField);
begin
  FRM_A010RH.BTN_ALTERAR.Enabled :=
  DTS_099.DataSet.RecordCount > 0;
end;

procedure TDTM_A010RH.QRY_099NANOPGTOGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  if Sender.asString <> '' then
    Text := DTS_099.DataSet.FieldByName('nmespgto').DisplayText + '/' +
    Sender.asString;
end;

end.
