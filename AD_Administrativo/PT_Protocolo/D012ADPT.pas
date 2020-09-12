unit D012ADPT;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, Ora, MemDS, DBAccess;

type
  TDTM_A012ADPT = class(TDataModule)
    QRY_155: TOraQuery;
    DTS_155: TOraDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DTM_A012ADPT: TDTM_A012ADPT;

implementation

{$R *.DFM}

end.
