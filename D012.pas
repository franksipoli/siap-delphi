unit D012;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, Ora, MemDS, DBAccess;

type
  TDTM_A012 = class(TDataModule)
    QRY_024: TOraQuery;
    DTS_024: TOraDataSource;
    QRY_024NIDTBXERG: TFloatField;
    QRY_024CNOMEEMIRG: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DTM_A012: TDTM_A012;

implementation

{$R *.DFM}

end.
