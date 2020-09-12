unit D025RH;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, Ora, MemDS, DBAccess;

type
  TDTM_A025RH = class(TDataModule)
    QRY_106: TOraQuery;
    DTS_106: TOraDataSource;
    QRY_106NIDTBXSPT: TFloatField;
    QRY_106CDESCRSPT: TStringField;
    QRY_106NCODTCE: TFloatField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DTM_A025RH: TDTM_A025RH;

implementation

uses DMCTRL;

{$R *.DFM}

end.
