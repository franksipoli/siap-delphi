unit D020RH;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, MemDS, DBAccess, Ora;

type
  TDTM_A020RH = class(TDataModule)
    QRY_092: TOraQuery;
    DTS_092: TOraDataSource;
    QRY_092NIDTBXSLR: TFloatField;
    QRY_092CDESCRISLR: TStringField;
    QRY_092DAT_TABELA: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DTM_A020RH: TDTM_A020RH;

implementation

uses DMCTRL;

{$R *.DFM}

end.
