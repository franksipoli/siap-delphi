unit D003ADPT;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, MemDS, DBAccess, Ora, ppDB, ppComm, ppRelatv, ppCache, ppDBPipe, Mask;

type
  TDTM_A003ADPT = class(TDataModule)
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DTM_A003ADPT: TDTM_A003ADPT;

implementation

uses DMCTRL, A003ADPT;

{$R *.DFM}

end.
