unit D001UTDC;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  DBAccess, Ora, Db, MemDS;

type
  TDTM_A001UTDC = class(TDataModule)
    QRY_049: TOraQuery;
    QRY_050: TOraQuery;
    DTS_049: TOraDataSource;
    DTS_050: TOraDataSource;
    QRY_050NIDTBLFP: TFloatField;
    QRY_050CTIPO: TStringField;
    QRY_050CNOME: TStringField;
    QRY_050DDATAINI: TDateTimeField;
    QRY_050DDATAATU: TDateTimeField;
    QRY_050CNOMEPRG: TStringField;
    QRY_050CVARPUB: TStringField;
    QRY_050CVARPRI: TStringField;
    QRY_050CVARLOC: TStringField;
    QRY_050CDESCRI: TMemoField;
    QRY_050NIDTBLUNI: TFloatField;
    QRY_049NIDTBLUNI: TFloatField;
    QRY_049CDESC: TStringField;
    QRY_049CAUTOR: TStringField;
    QRY_049DDATADOC: TDateTimeField;
    QRY_049COBJETIVO: TMemoField;
    QRY_049CNOMEUNIT: TStringField;
    QRY_049CCAMINHO: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DTM_A001UTDC: TDTM_A001UTDC;

implementation

uses A001UTDC, DMCTRL;

{$R *.DFM}

end.
