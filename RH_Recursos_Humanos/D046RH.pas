unit D046RH;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, Ora, MemDS, DBAccess;

type
  TDTM_A046RH = class(TDataModule)
    QRY_084: TOraQuery;
    DTS_084: TOraDataSource;
    QRY_084NIDTBXGMV: TFloatField;
    QRY_084CDESCRIGMV: TStringField;
    QRY_084CTIPOMVT: TStringField;
    QRY_084NIDGMVRVG: TFloatField;
    QRY_084_1: TOraQuery;
    DTS_084_1: TOraDataSource;
    QRY_084_1NIDTBXGMV: TFloatField;
    QRY_084_1CDESCRIGMV: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DTM_A046RH: TDTM_A046RH;

implementation



{$R *.DFM}

end.
