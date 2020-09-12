unit D004ADPT;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, Ora, MemDS, DBAccess;

type
  TDTM_A004ADPT = class(TDataModule)
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DTM_A004ADPT: TDTM_A004ADPT;

implementation

uses A004ADPT;

{$R *.DFM}

end.
