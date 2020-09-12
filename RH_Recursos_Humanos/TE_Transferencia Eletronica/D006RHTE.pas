unit D006RHTE;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, MemDS, DBAccess, Ora;

type
  TDTM_A006RHTE = class(TDataModule)
    QRY_063: TOraQuery;
    DTS_063: TOraDataSource;
    QRY_062: TOraQuery;
    DTS_062: TOraDataSource;
    QRY_065: TOraQuery;
    DTS_065: TOraDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DTM_A006RHTE: TDTM_A006RHTE;

implementation

{$R *.DFM}

end.
