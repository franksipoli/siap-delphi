unit D009UTCO;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, Ora, MemDS, DBAccess;

type
  TDTM_A009UTCO = class(TDataModule)
    QRY_046: TOraQuery;
    DTS_046: TOraDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DTM_A009UTCO: TDTM_A009UTCO;

implementation

{$R *.DFM}

end.
