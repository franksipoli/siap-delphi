unit D045RH;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, Ora, MemDS, DBAccess;

type
  TDTM_A045RH = class(TDataModule)
    QRY_143: TOraQuery;
    DTS_143: TOraDataSource;
    QRY_143NIDTBXGEV: TFloatField;
    QRY_143CDESCRIGEV: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DTM_A045RH: TDTM_A045RH;

implementation

uses DMCTRL;

{$R *.DFM}

end.
