unit D003UTCO;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, Ora, MemDS, DBAccess;

type
  TDTM_A003UTCO = class(TDataModule)
    QRY_041: TOraQuery;
    QRY_042: TOraQuery;
    QRY_045: TOraQuery;
    QRY_043: TOraQuery;
    QRY_044: TOraQuery;
    DTS_041: TOraDataSource;
    DTS_042: TOraDataSource;
    DTS_045: TOraDataSource;
    DTS_043: TOraDataSource;
    DTS_044: TOraDataSource;
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
    QRY_045CTBLCOMPO: TStringField;
    QRY_045CORDER: TStringField;
    QRY_045CMASTERF: TStringField;
    QRY_045CMASTERS: TStringField;
    QRY_045MSELECT: TMemoField;
    QRY_045NIDTBL_AT: TFloatField;
    QRY_045NIDTBL_T: TFloatField;
    QRY_045NIDTBL_A: TFloatField;
    QRY_043CNOMETBL: TStringField;
    QRY_043CNOMEFORM: TStringField;
    QRY_043LINDICE: TIntegerField;
    QRY_043CDESCRTBL: TStringField;
    QRY_043CORDERREL: TStringField;
    QRY_043CSEQBROWSE: TStringField;
    QRY_043NIDTBL_T: TFloatField;
    QRY_046: TOraQuery;
    DTS_046: TOraDataSource;
    QRY_046CNOMEGRUPO: TStringField;
    QRY_046NSEQUENCIA: TIntegerField;
    QRY_046NIDTBL_G: TFloatField;
    QRY_041NAPLICAUX: TIntegerField;
    QRY_041NIDTBL_PB: TFloatField;
    QRY_056: TOraQuery;
    DTS_056: TOraDataSource;
    QRY_056NIDTBL_PB: TFloatField;
    QRY_056CSIGLAPER: TStringField;
    QRY_056CNOMEPER: TStringField;
    QRY_042NIDTBL_A: TFloatField;
    QRY_042NIDTBL_O: TFloatField;
    QRY_042LREQUERIDO: TIntegerField;
    QRY_042NIDTBL_AO: TFloatField;
    QRY_042CFUNCAO: TStringField;
    QRY_042CNOMEOBJ: TStringField;
    QRY_042CNOMECLA: TStringField;
    QRY_042CHINT: TStringField;
    procedure DTS_041DataChange(Sender: TObject; Field: TField);
    procedure QRY_041NAPLICAUXGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure QRY_041NAPLICAUXSetText(Sender: TField; const Text: String);
    procedure QRY_042BeforeInsert(DataSet: TDataSet);
    procedure QRY_042AfterScroll(DataSet: TDataSet);
    procedure DTS_045DataChange(Sender: TObject; Field: TField);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DTM_A003UTCO: TDTM_A003UTCO;

implementation

uses A003UTCO;

{$R *.DFM}

procedure TDTM_A003UTCO.DTS_041DataChange(Sender: TObject; Field: TField);
begin
  {Verifica se a seguencia do Menu é valida}

  FRM_A003UTCO.SPE_CSEQUENCIA.ReadOnly := not(DTS_041.DataSet.State in [dsInsert,dsEdit]);

  if not(DTS_041.DataSet.FieldByName('nidtbl_g').isNull) then
    begin
      {Atribui Valor e mostra}
      if Trim(DTS_041.DataSet.FieldByName('citensmenu').AsString) <> '' then
        FRM_A003UTCO.SPE_CSEQUENCIA.Value :=
        StrToInt(DTS_041.DataSet.FieldByName('citensmenu').AsString);

      FRM_A003UTCO.SPE_CSEQUENCIA.Enabled := true;
    end
  else
    begin
      {Caso contrario, esconde valor default do Componente }
      FRM_A003UTCO.SPE_CSEQUENCIA.Value := 0;
      FRM_A003UTCO.SPE_CSEQUENCIA.Enabled := false;
    end;
end;

procedure TDTM_A003UTCO.QRY_041NAPLICAUXGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  if Sender.AsString = '0' then
    Text := 'Não';
  if Sender.AsString = '1' then
    Text := 'Sim';
end;

procedure TDTM_A003UTCO.QRY_041NAPLICAUXSetText(Sender: TField;
  const Text: String);
begin
  if Text = 'Sim' then
    Sender.AsString := '1';
  if Text = 'Não' then
    Sender.AsString := '0';
end;

procedure TDTM_A003UTCO.QRY_042BeforeInsert(DataSet: TDataSet);
begin
  if DataSet.Tag = 0 then
    Abort;
end;

procedure TDTM_A003UTCO.QRY_042AfterScroll(DataSet: TDataSet);
begin
  if not(DataSet.ControlsDisabled) then
    FRM_A003UTCO.DBG_APLICOBJETOS.Repaint;
end;

procedure TDTM_A003UTCO.DTS_045DataChange(Sender: TObject; Field: TField);
begin
  if DTS_045.DataSet.IsEmpty then
    begin
      FRM_A003UTCO.BTN_ALTERAR1.Enabled := false;
      FRM_A003UTCO.BTN_EXCLUIR1.Enabled := false;
    end;
end;

end.


