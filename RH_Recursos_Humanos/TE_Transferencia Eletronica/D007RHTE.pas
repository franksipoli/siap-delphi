unit D007RHTE;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, Ora, MemDS, DBAccess;

type
  TDTM_A007RHTE = class(TDataModule)
    QRY_063: TOraQuery;
    DTS_063: TOraDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DTM_A007RHTE: TDTM_A007RHTE;

implementation

{$R *.DFM}

end.
