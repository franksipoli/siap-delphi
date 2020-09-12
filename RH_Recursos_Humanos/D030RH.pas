unit D030RH;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, Ora, MemDS, DBAccess;

type
  TDTM_A030RH = class(TDataModule)
    QRY_112: TOraQuery;
    DTS_112: TOraDataSource;
    QRY_112NIDTBXRPV: TFloatField;
    QRY_112CDESCRRPV: TStringField;
    QRY_112NCODTCE: TFloatField;
    QRY_112NPERPATRON: TFloatField;
    procedure QRY_112NPERPATRONGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DTM_A030RH: TDTM_A030RH;

implementation

uses DMCTRL;

{$R *.DFM}

procedure TDTM_A030RH.QRY_112NPERPATRONGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  Text := FORMAT('%5.2f',[Sender.asFloat]);
end;

end.
