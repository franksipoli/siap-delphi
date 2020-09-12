unit D001UTAU;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, Ora, MemDS, DBAccess;

type
  TDTM_A001UTAU = class(TDataModule)
    QRY_056: TOraQuery;
    DTS_056: TOraDataSource;
    QRY_051: TOraQuery;
    DTS_051: TOraDataSource;
    QRY_051CNOMEUSU: TStringField;
    QRY_051CSENHA: TStringField;
    QRY_051LBLOQUEADO: TIntegerField;
    QRY_051NIDTBL_U: TFloatField;
    QRY_051NIDCADGRL: TFloatField;
    QRY_TMP: TOraQuery;
    DTS_TMP: TOraDataSource;
    QRY_041: TOraQuery;
    DTS_041: TOraDataSource;
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
    QRY_041NIDTBL_UPA: TFloatField;
    QRY_041NIDTBL_PB: TFloatField;
    QRY_056NIDTBL_PB: TFloatField;
    QRY_056CSIGLAPER: TStringField;
    QRY_056CNOMEPER: TStringField;
    QRY_041LKP_CPERFIL: TStringField;
    QRY_055: TOraQuery;
    DTS_055: TOraDataSource;
    QRY_055NIDTBL_UP: TFloatField;
    QRY_055NIDTBL_U: TFloatField;
    QRY_055NIDTBL_PB: TFloatField;
    QRY_055CPERFIL: TStringField;
    QRY_055NSTATUS: TFloatField;
    QRY_046: TOraQuery;
    DTS_046: TOraDataSource;
    QRY_APLUSU: TOraQuery;
    DTS_APLUSU: TOraDataSource;
    QRY_APLUSUNIDTBL_UPA: TFloatField;
    QRY_APLUSUNIDTBL_UP: TFloatField;
    QRY_APLUSUNIDTBL_A: TFloatField;
    QRY_APLUSUNIDTBL_U: TFloatField;
    QRY_APLUSUCPERFIL: TStringField;
    QRY_APLUSUCDESCAPLI: TStringField;
    QRY_APLUSUCNOMEPER: TStringField;
    QRY_TMPCNOMEUNIT: TStringField;
    QRY_TMPCDESCAPLI: TStringField;
    QRY_TMPCNOMEBMP: TStringField;
    QRY_TMPCNOMEFORM: TStringField;
    QRY_TMPCSHOWFORM: TStringField;
    QRY_TMPCITENSMENU: TStringField;
    QRY_TMPCTITAPLIC: TStringField;
    QRY_TMPCCATEGORIA: TStringField;
    QRY_TMPNIMGSAIDA: TIntegerField;
    QRY_TMPNIDTBL_A: TFloatField;
    QRY_TMPNIDTBL_G: TFloatField;
    QRY_TMPNAPLICAUX: TIntegerField;
    QRY_TMPNIDTBL_PB: TFloatField;
    QRY_TMPNIDTBL_UPA: TFloatField;
    QRY_APLUSUCEQUIVALE: TStringField;
    QRY_RELACESSO: TOraQuery;
    FloatField1: TFloatField;
    FloatField2: TFloatField;
    FloatField3: TFloatField;
    FloatField4: TFloatField;
    QRY_RELACESSONIDTBL_PB: TFloatField;
    StringField1: TStringField;
    StringField2: TStringField;
    StringField3: TStringField;
    StringField4: TStringField;
    DTS_RELACESSO: TOraDataSource;
    QRY_042: TOraQuery;
    DTS_042: TOraDataSource;
    QRY_046NIDTBL_U: TIntegerField;
    QRY_046NIDTBL_D: TIntegerField;
    QRY_046CCONDICAO: TStringField;
    QRY_046CTIPOMASCA: TStringField;
    QRY_046CTRATAMENT: TStringField;
    QRY_046NIDTBL_UD: TFloatField;
    QRY_046CDESCCAMPO: TStringField;
    QRY_042NIDTBL_A: TFloatField;
    QRY_042NIDTBL_O: TFloatField;
    QRY_042LREQUERIDO: TIntegerField;
    QRY_042NIDTBL_AO: TFloatField;
    QRY_042CFUNCAO: TStringField;
    QRY_042DAT_PERMISSAO: TStringField;
    QRY_APLUSUCAPHERDADO: TStringField;
    procedure QRY_APLUSUCalcFields(DataSet: TDataSet);
    procedure DTS_APLUSUDataChange(Sender: TObject; Field: TField);
    procedure QRY_APLUSUAfterScroll(DataSet: TDataSet);
    procedure QRY_046LKP_TRATAMENTOGetText(Sender: TField;
      var Text: String; DisplayText: Boolean);
    procedure QRY_APLUSUCAPHERDADOGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DTM_A001UTAU: TDTM_A001UTAU;

implementation

uses A001UTAU;

{$R *.DFM}

procedure TDTM_A001UTAU.QRY_APLUSUCalcFields(DataSet: TDataSet);
begin
  if DataSet.FieldByName('nidtbl_u').AsInteger <>
     DTM_A001UTAU.DTS_051.DataSet.FieldByName('nidtbl_u').AsInteger then
     DataSet.FieldByName('cequivale').AsString :=
     DataSet.FieldByName('cperfil').AsString;

end;

procedure TDTM_A001UTAU.DTS_APLUSUDataChange(Sender: TObject;
  Field: TField);
begin

  FRM_A001UTAU.LMDPanelFill2.Caption := '  Acões da Aplicação - ' + DTS_APLUSU.DataSet.FieldByName('cdescapli').AsString;
  //FRM_A001UTAU.LMDPanelFill3.Caption := DTS_APLUSU.DataSet.FieldByName('cdescapli').AsString;
  FRM_A001UTAU.BTN_ACOES.Enabled := DTS_APLUSU.DataSet.FieldByName('cequivale').AsString = '';
end;

procedure TDTM_A001UTAU.QRY_APLUSUAfterScroll(DataSet: TDataSet);
begin
 FRM_A001UTAU.DBG_APLIC.Repaint;
 if qry_042.Active then
   qry_042.Refresh;

end;

procedure TDTM_A001UTAU.QRY_046LKP_TRATAMENTOGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  if Sender.AsString = 'M' then
    Text := 'Mascarado'
  else
    if Sender.AsString = 'R' then
      Text := 'Somente Leitura';  
end;

procedure TDTM_A001UTAU.QRY_APLUSUCAPHERDADOGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  if Sender.AsString <> '' then
    Text := 'S'
  else
    Text := '';  
end;

end.
