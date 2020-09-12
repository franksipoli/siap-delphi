unit D049RH;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, Ora, MemDS, DBAccess;

type
  TDTM_A049RH = class(TDataModule)
    QRY_111: TOraQuery;
    DTS_111: TOraDataSource;
    QRY_111NIDTBXPJA: TFloatField;
    QRY_111CDESCRIPJA: TStringField;
    QRY_111NCODCONTAB: TFloatField;
    procedure QRY_111NCODCONTABSetText(Sender: TField; const Text: String);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DTM_A049RH: TDTM_A049RH;

implementation

uses DMCTRL, MPLLib;

{$R *.DFM}

procedure TDTM_A049RH.QRY_111NCODCONTABSetText(Sender: TField;
  const Text: String);
begin
   Sender.AsString := LimpaMask(Text);
end;

end.
