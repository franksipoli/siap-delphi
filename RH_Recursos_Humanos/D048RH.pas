unit D048RH;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, Ora, MemDS, DBAccess;

type
  TDTM_A048RH = class(TDataModule)
    QRY_093: TOraQuery;
    DTS_093: TOraDataSource;
    QRY_093NIDTBXSTS: TFloatField;
    QRY_093CDESCRISTS: TStringField;
    QRY_093CDISPCRG: TStringField;
    procedure QRY_093CDISPCRGGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DTM_A048RH: TDTM_A048RH;

implementation

uses DMCTRL;

{$R *.DFM}

procedure TDTM_A048RH.QRY_093CDISPCRGGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  if Sender.AsString = 'S' then
    Text := 'Sim'
  else Text := 'Não';
end;

end.
