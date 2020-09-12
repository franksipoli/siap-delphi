unit D050RH;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, Ora, MemDS, DBAccess;

type
  TDTM_A050RH = class(TDataModule)
    QRY_113: TOraQuery;
    DTS_113: TOraDataSource;
    QRY_113NIDTBXUND: TFloatField;
    QRY_113CDESCRIUND: TStringField;
    QRY_113NCODCONTAB: TFloatField;
    QRY_113DAT_UND: TStringField;
    procedure QRY_113NCODCONTABSetText(Sender: TField; const Text: String);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DTM_A050RH: TDTM_A050RH;

implementation

uses DMCTRL, MPLLib;

{$R *.DFM}

procedure TDTM_A050RH.QRY_113NCODCONTABSetText(Sender: TField;
  const Text: String);
begin
   Sender.AsString := LimpaMask(Text);
end;

end.
