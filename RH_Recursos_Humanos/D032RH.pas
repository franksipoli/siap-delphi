unit D032RH;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, Ora, MemDS, DBAccess;

type
  TDTM_A032RH = class(TDataModule)
    QRY_122: TOraQuery;
    DTS_122: TOraDataSource;
    QRY_122NIDTBXPCR: TFloatField;
    QRY_122CDESCRIPCR: TStringField;
    QRY_122NCODTCE: TFloatField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DTM_A032RH: TDTM_A032RH;

implementation

uses DMCTRL;

{$R *.DFM}

end.
