unit D052RH;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, MemDS, DBAccess, Ora;

type
  TDTM_A052RH = class(TDataModule)
    QRY_111: TOraQuery;
    DTS_111: TOraDataSource;
    QRY_124: TOraQuery;
    DTS_124: TOraDataSource;
    QRY_124NIDTBXUND: TFloatField;
    QRY_124NIDTBXPJA: TFloatField;
    QRY_124CDESCRIPJA: TStringField;
    QRY_124NIDTAGUPJ: TFloatField;
    QRY_111CDESCRIPJA: TStringField;
    QRY_111NIDTBXPJA: TFloatField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DTM_A052RH: TDTM_A052RH;

implementation

uses DMCTRL;

{$R *.DFM}

end.
