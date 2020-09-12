unit D003AD;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, Ora, MemDS, DBAccess;

type
  TDTM_A003AD = class(TDataModule)
    QRY_032: TOraQuery;
    DTS_032: TOraDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DTM_A003AD: TDTM_A003AD;

implementation

{$R *.DFM}

end.
