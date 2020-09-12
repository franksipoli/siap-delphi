unit D009RH;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, Ora, MemDS, DBAccess;

type
  TDTM_A009RH = class(TDataModule)
    QRY_077: TOraQuery;
    DTS_077: TOraDataSource;
    QRY_092: TOraQuery;
    DTS_092: TOraDataSource;
    QRY_080: TOraQuery;
    DTS_080: TOraDataSource;
    QRY_080_1: TOraQuery;
    DTS_080_1: TOraDataSource;
    QRY_029: TOraQuery;
    DTS_029: TOraDataSource;
    QRY_119: TOraQuery;
    DTS_119: TOraDataSource;
    QRY_088: TOraQuery;
    DTS_088: TOraDataSource;
    QRY_123: TOraQuery;
    DTS_123: TOraDataSource;
    QRY_124: TOraQuery;
    DTS_124: TOraDataSource;
    QRY_037: TOraQuery;
    DTS_037: TOraDataSource;
    QRY_125: TOraQuery;
    DTS_125: TOraDataSource;
    QRY_100: TOraQuery;
    DTS_100: TOraDataSource;
    QRY_107: TOraQuery;
    DTS_107: TOraDataSource;
    QRY_077LKP_SAL: TFloatField;
    QRY_073: TOraQuery;
    DTS_073: TOraDataSource;
    QRY_077LKP_AGENCIA: TIntegerField;
    QRY_077LKP_CONTA: TStringField;
    QRY_125NIDTAGBOR: TFloatField;
    QRY_125NCODAGE: TFloatField;
    QRY_125NNROCONTA: TFloatField;
    QRY_125NDIGCONTA: TFloatField;
    QRY_125CPASTA: TStringField;
    QRY_125NNROSEQ: TFloatField;
    QRY_125NIDTBXBCO: TFloatField;
    QRY_125NIDTBXORI: TFloatField;
    QRY_125CDESCRICAO: TStringField;
    QRY_119DAT_VALOR: TFloatField;
    QRY_119CLC_REMUNE: TFloatField;
    QRY_077NIDTAGFFU: TFloatField;
    QRY_077NIDTAGOBT: TFloatField;
    QRY_077NPERSLR: TFloatField;
    QRY_077NIDTAGSLR: TFloatField;
    QRY_077NIDTAGFPG: TFloatField;
    QRY_077NIDTBXORG: TFloatField;
    QRY_077NIDTAGOCT: TFloatField;
    QRY_077NIDTBXORI: TFloatField;
    QRY_077NIDTBXCTL: TFloatField;
    QRY_077NIDCADSER: TFloatField;
    QRY_077NIDTAGUNO: TFloatField;
    QRY_077NIDTAGUPJ: TFloatField;
    QRY_077NIDTAGBOR: TFloatField;
    QRY_077NMATRICULA: TFloatField;
    QRY_077NIDCADCRG: TFloatField;
    QRY_077NIDTBXUND: TFloatField;
    QRY_077NIDTBXPJA: TFloatField;
    QRY_077NIDTBXSLR: TFloatField;
    QRY_077CCLASSE: TStringField;
    QRY_077NIDTBXBCO: TFloatField;
    procedure DTS_029DataChange(Sender: TObject; Field: TField);
    procedure DTS_029StateChange(Sender: TObject);
    procedure QRY_077LKP_CONTAGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure QRY_119CalcFields(DataSet: TDataSet);
    procedure QRY_119DAT_VALORGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DTM_A009RH: TDTM_A009RH;

implementation

uses A009RH;

{$R *.DFM}

procedure TDTM_A009RH.DTS_029DataChange(Sender: TObject; Field: TField);
begin
  FRM_A009RH.CBE_NIDTBXBCO.ReadOnly :=
  not(DTS_029.DataSet.State = dsEdit);
end;

procedure TDTM_A009RH.DTS_029StateChange(Sender: TObject);
begin
  FRM_A009RH.CBE_NIDTBXBCO.Text :=
  DTS_029.DataSet.FieldByName('ncodbanco').asString;
end;

procedure TDTM_A009RH.QRY_077LKP_CONTAGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  if Sender.asString <> '' then
    Text := Sender.asString + '-' +
    QRY_125.FieldByName('ndigconta').asString;
end;

procedure TDTM_A009RH.QRY_119CalcFields(DataSet: TDataSet);
begin
  DataSet.FieldByName('clc_remune').asFloat :=
  (DataSet.FieldByName('dat_valor').asFloat +
  QRY_077.FieldByName('lkp_sal').asFloat);
end;

procedure TDTM_A009RH.QRY_119DAT_VALORGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  Text := FORMAT('%m',[Sender.asFloat]);
end;

end.
