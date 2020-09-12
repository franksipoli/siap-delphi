unit D003ADAT;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, Ora, MemDS, DBAccess;

type
  TDTM_A003ADAT = class(TDataModule)
    QRY_071: TOraQuery;
    DTS_071: TOraDataSource;
    QRY_071NIDTBXTAT: TFloatField;
    QRY_071CDESCRITAT: TStringField;
    QRY_071CPATHARQ: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DTM_A003ADAT: TDTM_A003ADAT;

implementation

{$R *.DFM}

end.
