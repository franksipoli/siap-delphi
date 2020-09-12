unit D015UTAU;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, MemDS, DBAccess, Ora;

type
  TDTM_A015UTAU = class(TDataModule)
    QRY_042: TOraQuery;
    QRY_060: TOraQuery;
  private
    { Private declarations }
  public
    { Public declarations }

  end;

var
  DTM_A015UTAU: TDTM_A015UTAU;

implementation

{$R *.DFM}

{ TDTM_A015UTAU }

end.
