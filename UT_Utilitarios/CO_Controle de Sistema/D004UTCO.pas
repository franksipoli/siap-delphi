unit D004UTCO;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, Ora, MemDS, DBAccess;

type
  TDTM_A004UTCO = class(TDataModule)
    QRY_044: TOraQuery;
    QRY_046: TOraQuery;
    QRY_046_01: TOraQuery;
    DTS_044: TOraDataSource;
    DTS_041: TOraDataSource;
    DTS_046: TOraDataSource;
    DTS_046_01: TOraDataSource;
    QRY_041: TOraQuery;
    QRY_044CNOMEOBJ: TStringField;
    QRY_044CNOMECLA: TStringField;
    QRY_044CCAPTION: TStringField;
    QRY_044CHINT: TStringField;
    QRY_044CTIPOCUR: TStringField;
    QRY_044LENABLE: TIntegerField;
    QRY_044LVISIBLE: TIntegerField;
    QRY_044LTRATADO: TIntegerField;
    QRY_044CNOMEBMP: TStringField;
    QRY_044CNOMEUNIT: TStringField;
    QRY_044NCODCAMPO: TIntegerField;
    QRY_044CCAMPOPESQ: TStringField;
    QRY_044LUPPERCASE: TIntegerField;
    QRY_044LCARINVALI: TIntegerField;
    QRY_044NIDTBL_O: TFloatField;
    QRY_046NIDTBL_D: TFloatField;
    QRY_046CNOMECAMPO: TStringField;
    QRY_046_01NIDTBL_D: TFloatField;
    QRY_046_01CNOMECAMPO: TStringField;
    procedure DTS_044DataChange(Sender: TObject; Field: TField);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DTM_A004UTCO: TDTM_A004UTCO;

implementation

uses A004UTCO;

{$R *.DFM}

procedure TDTM_A004UTCO.DTS_044DataChange(Sender: TObject; Field: TField);
begin
  if DTS_044.DataSet.State in [dsEdit,dsInsert] then
    FRM_A004UTCO.DBL_CNOMEBMP.Button.Enabled := true
  else FRM_A004UTCO.DBL_CNOMEBMP.Button.Enabled := false;
end;

end.
