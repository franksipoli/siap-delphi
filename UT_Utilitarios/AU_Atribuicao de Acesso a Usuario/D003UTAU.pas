unit D003UTAU;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, Ora, MemDS, DBAccess;

type
  TDTM_A003UTAU = class(TDataModule)
    QRY_057: TOraQuery;
    DTS_057: TOraDataSource;
    DTS_APLSYS: TOraDataSource;
    QRY_APLSYS: TOraQuery;
    StringField1: TStringField;
    StringField2: TStringField;
    StringField3: TStringField;
    StringField4: TStringField;
    StringField5: TStringField;
    StringField6: TStringField;
    StringField7: TStringField;
    StringField8: TStringField;
    IntegerField1: TIntegerField;
    FloatField1: TFloatField;
    FloatField2: TFloatField;
    IntegerField2: TIntegerField;
    FloatField3: TFloatField;
    QRY_057NIDTBL_UPA: TFloatField;
    QRY_057NIDTBL_UP: TFloatField;
    QRY_057NIDTBL_A: TFloatField;
    QRY_057NIDTBL_U: TFloatField;
    QRY_057CPERFIL: TStringField;
    QRY_057CDESCAPLI: TStringField;
    QRY_057CLC_CEQUIVALE: TStringField;
    QRY_055: TOraQuery;
    DTS_055: TOraDataSource;
    QRY_055NIDTBL_UP: TFloatField;
    QRY_055NIDTBL_U: TFloatField;
    QRY_055NIDTBL_PB: TFloatField;
    QRY_055CPERFIL: TStringField;
    QRY_055NSTATUS: TFloatField;
    QRY_041: TOraQuery;
    QRY_041CNOMEUNIT: TStringField;
    QRY_041CDESCAPLI: TStringField;
    QRY_041CNOMEBMP: TStringField;
    QRY_041CNOMEFORM: TStringField;
    QRY_041CSHOWFORM: TStringField;
    QRY_041CITENSMENU: TStringField;
    QRY_041CTITAPLIC: TStringField;
    QRY_041CCATEGORIA: TStringField;
    QRY_041NIMGSAIDA: TIntegerField;
    QRY_041NIDTBL_A: TFloatField;
    QRY_041NIDTBL_G: TFloatField;
    QRY_041NAPLICAUX: TIntegerField;
    QRY_041NIDTBL_PB: TFloatField;
    QRY_057NIDTBL_PB: TFloatField;
    QRY_056: TOraQuery;
    QRY_056NIDTBL_PB: TFloatField;
    QRY_056CSIGLAPER: TStringField;
    QRY_056CNOMEPER: TStringField;
    QRY_TMP: TOraQuery;
    QRY_057CNOMEUNIT: TStringField;
    procedure QRY_057CalcFields(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DTM_A003UTAU: TDTM_A003UTAU;

implementation

uses A003UTAU, UVariaveis;

{$R *.DFM}

procedure TDTM_A003UTAU.QRY_057CalcFields(DataSet: TDataSet);
begin
  if DataSet.FieldByName('nidtbl_u').AsInteger <> nRetornoObjeto then
     DataSet.FieldByName('CLC_CEQUIVALE').AsString := 'Sim';
end;

end.
