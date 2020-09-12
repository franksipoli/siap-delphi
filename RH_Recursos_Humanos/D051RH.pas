unit D051RH;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, MemDS, DBAccess, Ora;

type
  TDTM_A051RH = class(TDataModule)
    QRY_113: TOraQuery;
    DTS_113: TOraDataSource;
    QRY_123: TOraQuery;
    DTS_123: TOraDataSource;
    QRY_123NIDTBXORG: TFloatField;
    QRY_123NIDTBXUND: TFloatField;
    QRY_123CDESCRIUND: TStringField;
    QRY_123NIDTAGUNO: TFloatField;
    QRY_113CDESCRIUND: TStringField;
    QRY_113NIDTBXUND: TFloatField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DTM_A051RH: TDTM_A051RH;

implementation

uses DMCTRL;

{$R *.DFM}

end.
