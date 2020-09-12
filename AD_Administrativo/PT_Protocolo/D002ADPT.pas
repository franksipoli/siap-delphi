unit D002ADPT;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, Ora, MemDS, DBAccess, Mask;

type
  TDTM_A002ADPT = class(TDataModule)
    QRY_155: TOraQuery;
    DTS_155: TOraDataSource;
    QRY_153_1: TOraQuery;
    QRY_155NIDTBXTRQ: TFloatField;
    QRY_155CDESCRITRQ: TStringField;
    QRY_163: TOraQuery;
    DTS_163: TOraDataSource;
    QRY_153: TOraQuery;
    DTS_153: TOraDataSource;
    QRY_029: TOraQuery;
    DTS_029: TOraDataSource;
    QRY_155CREFERENRH: TStringField;
    QRY_153_2: TOraQuery;
    DTS_153_2: TOraDataSource;
    QRY_153_2NIDCADREQ: TFloatField;
    QRY_153_2CDESCRIREQ: TStringField;
    QRY_153_2NNROPROT: TFloatField;
    QRY_153_2DDTPROT: TDateTimeField;
    QRY_153_2NIDTBXTRQ: TFloatField;
    QRY_153_2CEMITIDO: TStringField;
    QRY_153_2CEMIGTM: TStringField;
    QRY_153_2CEMIETQ: TStringField;
    QRY_153_2NQTDFOLHAS: TFloatField;
    QRY_153_2CSITUAREQ: TStringField;
    QRY_153_2CDESCRIORG: TStringField;
    QRY_153_2CDESCRICRG: TStringField;
    QRY_153_2DDTADMISSA: TDateTimeField;
    QRY_158: TOraQuery;
    DTS_158: TOraDataSource;
    DTS_153_1: TOraDataSource;
    QRY_161_1: TOraQuery;
    QRY_161: TOraQuery;
    QRY_153_1CIDTBXURQ: TStringField;
    QRY_153_1CNOME: TStringField;
    QRY_153_1DAT_IDINTER: TStringField;
    QRY_153_1DAT_CNOMEINTER: TStringField;
    QRY_153NIDTAGREQ: TFloatField;
    QRY_153CDESCRIORG: TStringField;
    QRY_153CDESCRICRG: TStringField;
    QRY_153DDTADMISSA: TDateTimeField;
    QRY_153NIDCADREQ: TFloatField;
    QRY_153CIDTBXURQ: TStringField;
    QRY_153CPRINCIPAL: TStringField;
    QRY_153LKP_CNOMEINTER: TStringField;
    QRY_153_2NIDTBXGTM: TFloatField;
    QRY_153_2LKP_TIPO: TStringField;
    QRY_153_2CIDTBXULC: TStringField;
    QRY_153_2LKP_DESTINICIAL: TStringField;
    QRY_158NIDTAGITR: TFloatField;
    QRY_158NIDCADREQ: TFloatField;
    QRY_158CIDTBXURQ: TStringField;
    QRY_158CPRINCIPAL: TStringField;
    QRY_158LKP_CNOMEINTER: TStringField;
    QRY_153_2CDESCRITRQ: TStringField;
    procedure QRY_153CCPFCNPJGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure DTS_153_2StateChange(Sender: TObject);
    procedure QRY_153_1AfterScroll(DataSet: TDataSet);
    procedure QRY_153_2AfterScroll(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DTM_A002ADPT: TDTM_A002ADPT;

implementation

uses A002ADPT;

{$R *.DFM}

procedure TDTM_A002ADPT.QRY_153CCPFCNPJGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  if DTS_153.DataSet.FieldByName('cPessoaFJ').AsString = '2' then
    Text := FormatMaskText('99.999.999/9999-99;0;*',Sender.AsString)
  else
    Text := FormatMaskText('999.999.999-99;0;*',Sender.AsString);
end;

procedure TDTM_A002ADPT.DTS_153_2StateChange(Sender: TObject);
begin
  FRM_A002ADPT.CBE_CNOMEINTER.ReadOnly :=
  not(DTS_153_2.State in [dsEdit,dsInsert]);
  FRM_A002ADPT.CBE_CNOMEREQ.ReadOnly :=
  FRM_A002ADPT.CBE_CNOMEINTER.ReadOnly;
end;

procedure TDTM_A002ADPT.QRY_153_1AfterScroll(DataSet: TDataSet);
begin
  with FRM_A002ADPT do
    begin
      CBE_CNOMEINTER.Text :=
      DataSet.FieldByName('dat_cnomeinter').asString;
      CBE_CNOMEREQ.Text :=
      DataSet.FieldByName('cnome').asString;
    end;

end;

procedure TDTM_A002ADPT.QRY_153_2AfterScroll(DataSet: TDataSet);
begin
  FRM_A002ADPT.BTN_CANCELDOC.Enabled :=
  (DataSet.FieldByName('csituareq').asString <> 'EM ANDAMENTO') and
  (DataSet.FieldByName('csituareq').asString <> 'CONCLUIDO');
  FRM_A002ADPT.VerGuiaEmitida;
end;

end.
