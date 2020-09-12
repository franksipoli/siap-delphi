unit D012UTAU;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, MemDS, DBAccess, Ora;

type
  TDTM_A012UTAU = class(TDataModule)
    QRY_042: TOraQuery;
    QRY_053: TOraQuery;
    QRY_042NIDTBL_AO: TFloatField;
    QRY_042NIDTBL_O: TFloatField;
    QRY_042CFUNCAO: TStringField;
    QRY_042CNOMEUNIT: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DTM_A012UTAU: TDTM_A012UTAU;

implementation

{$R *.DFM}

end.
