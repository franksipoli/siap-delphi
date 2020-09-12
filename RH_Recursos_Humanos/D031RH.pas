unit D031RH;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, Ora, MemDS, DBAccess;

type
  TDTM_A031RH = class(TDataModule)
    QRY_105: TOraQuery;
    DTS_105: TOraDataSource;
    QRY_105NIDTBXMVP: TFloatField;
    QRY_105CDESCRMVP: TStringField;
    QRY_105NCODTCE: TFloatField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DTM_A031RH: TDTM_A031RH;

implementation

uses DMCTRL;

{$R *.DFM}

end.
