unit D007UTAU;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, Ora, MemDS, DBAccess;

type
  TDTM_A007UTAU = class(TDataModule)
    QRY_054: TOraQuery;
    QRY_CPOUSU: TOraQuery;
    QRY_CPOUSUCDESCCAMPO: TStringField;
    QRY_CPOUSUNIDTBL_D: TFloatField;
    QRY_TEMP: TOraQuery;
    QRY_054CDESCCAMPO: TStringField;
    QRY_054CTIPOCAMPO: TStringField;
    QRY_054NIDTBL_U: TIntegerField;
    QRY_054NIDTBL_D: TIntegerField;
    QRY_054CCONDICAO: TStringField;
    QRY_054CTIPOMASCA: TStringField;
    QRY_054CTRATAMENT: TStringField;
    QRY_054NIDTBL_UD: TFloatField;
    QRY_CPOUSUCTIPOCAMPO: TStringField;
    QRY_054NUSUAUTOR: TFloatField;
    QRY_054CNOMEUSU: TStringField;
    QRY_054DAT_ALTERAR: TStringField;
    QRY_TEMPCNOMEUNIT: TStringField;
    QRY_TEMPCDESCAPLI: TStringField;
    QRY_TEMPCNOMEBMP: TStringField;
    QRY_TEMPCNOMEFORM: TStringField;
    QRY_TEMPCSHOWFORM: TStringField;
    QRY_TEMPCITENSMENU: TStringField;
    QRY_TEMPCTITAPLIC: TStringField;
    QRY_TEMPCCATEGORIA: TStringField;
    QRY_TEMPNIMGSAIDA: TIntegerField;
    QRY_TEMPNIDTBL_A: TFloatField;
    QRY_TEMPNIDTBL_G: TFloatField;
    QRY_TEMPNAPLICAUX: TIntegerField;
    QRY_TEMPNIDTBL_PB: TFloatField;
    QRY_TEMPNIDTBL_U: TFloatField;
    QRY_TEMPNAPLICEQV: TFloatField;
    QRY_TEMPNIDTBL_UA: TFloatField;
    QRY_TEMPNIDTBL_OPA: TFloatField;
    QRY_TEMPNIDTBL_OP: TFloatField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DTM_A007UTAU: TDTM_A007UTAU;

implementation

uses A007UTAU;

{$R *.DFM}

end.
