unit D029RH;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, Ora, MemDS, DBAccess;

type
  TDTM_A029RH = class(TDataModule)
    QRY_114: TOraQuery;
    QRY_110: TOraQuery;
    DTS_114: TOraDataSource;
    DTS_110: TOraDataSource;
    QRY_114NIDTAGOPT: TFloatField;
    QRY_114NIDTBXOPT: TFloatField;
    QRY_114NIDTBXTCR: TFloatField;
    QRY_114CDESCRIOPT: TStringField;
    QRY_110CDESCRIOPT: TStringField;
    QRY_110NIDTBXOPT: TFloatField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DTM_A029RH: TDTM_A029RH;

implementation

uses DMCTRL;

{$R *.DFM}

end.
