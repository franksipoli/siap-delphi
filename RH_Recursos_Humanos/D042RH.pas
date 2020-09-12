unit D042RH;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, Ora, MemDS, DBAccess;

type
  TDTM_A042RH = class(TDataModule)
    QRY_087: TOraQuery;
    DTS_087: TOraDataSource;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DTM_A042RH: TDTM_A042RH;

implementation

{$R *.DFM}

end.
