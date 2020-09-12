unit D006;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, Ora, MemDS, DBAccess,Mask;

type
  TDTM_A006 = class(TDataModule)
    QRY_016: TOraQuery;
    QRY_013: TOraQuery;
    DTS_016: TOraDataSource;
    DTS_013: TOraDataSource;
    QRY_018: TOraQuery;
    DTS_018: TOraDataSource;
    QRY_013_01: TOraQuery;
    DTS_013_01: TOraDataSource;
    QRY_019: TOraQuery;
    QRY_024: TOraQuery;
    DTS_019: TOraDataSource;
    DTS_024: TOraDataSource;
    QRY_025: TOraQuery;
    DTS_025: TOraDataSource;
    QRY_013NIDCADLOG: TFloatField;
    QRY_013NCEP: TIntegerField;
    QRY_013CNOMELOG: TStringField;
    QRY_013CNOMEBAI: TStringField;
    QRY_013CNOMELOC: TStringField;
    QRY_013CSIGLAUF: TStringField;
    QRY_013CNOMEPAIS: TStringField;
    QRY_013_01NIDCADLOG: TFloatField;
    QRY_013_01NCEP: TIntegerField;
    QRY_013_01CNOMELOG: TStringField;
    QRY_013_01CNOMEBAI: TStringField;
    QRY_013_01CNOMELOC: TStringField;
    QRY_013_01CDDD: TStringField;
    QRY_013_01CSIGLAUF: TStringField;
    QRY_013_01CNOMEPAIS: TStringField;
    QRY_016NIDCADGRL: TFloatField;
    QRY_016CNOMEGRL: TStringField;
    QRY_016CCPFCNPJ: TStringField;
    QRY_016CRGIE: TStringField;
    QRY_016CNUMERO: TStringField;
    QRY_016CCOMPLEMEN: TStringField;
    QRY_016CCONTATO: TStringField;
    QRY_016CTELRES: TStringField;
    QRY_016CTELCOM: TStringField;
    QRY_016CTELCELULA: TStringField;
    QRY_016CEMAIL: TStringField;
    QRY_016CPESSOAFJ: TFloatField;
    QRY_016NIDCADLOG: TFloatField;
    QRY_019NIDCADFIS: TFloatField;
    QRY_019NIDCADGRL: TFloatField;
    QRY_019CNOMEMAE: TStringField;
    QRY_019DDTEMIRG: TDateTimeField;
    QRY_019CUFEMIRG: TStringField;
    QRY_019CSEXO: TStringField;
    QRY_019DDTNASC: TDateTimeField;
    QRY_019NIDTBXECI: TFloatField;
    QRY_019NIDTBXERG: TFloatField;
    QRY_019NIDTBXLOC: TFloatField;
    QRY_019NIDTBXCOR: TFloatField;
    QRY_019NIDTBXNAC: TFloatField;
    QRY_019NIDTBXGRI: TFloatField;
    QRY_016CTELFAX: TStringField;
    QRY_016NIDTBXCNA: TFloatField;
    QRY_016CATIVIDADE: TStringField;
    QRY_013CDDD: TStringField;
    procedure DTS_013DataChange(Sender: TObject; Field: TField);
    procedure DTS_013_01DataChange(Sender: TObject; Field: TField);
    procedure DTS_016StateChange(Sender: TObject);
    procedure QRY_016CPESSOAFJGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure QRY_016AfterScroll(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DTM_A006: TDTM_A006;

implementation

uses A006, MPLCtrl;

{$R *.DFM}

procedure TDTM_A006.DTS_013DataChange(Sender: TObject; Field: TField);
begin
  if not(DTS_016.DataSet.State in [dsInsert,dsEdit]) then
    FRM_A006.CBE_NCEP.Text := DTS_013.DataSet.FieldByName('nCep').DisplayText;
end;

procedure TDTM_A006.DTS_013_01DataChange(Sender: TObject; Field: TField);
begin
    if not(DTS_016.DataSet.State in [dsInsert,dsEdit]) then
      FRM_A006.CBE_NCEP_1.Text := DTS_013_01.DataSet.FieldByName('nCep').DisplayText;

    FRM_A006.BTN_TIRAEC.Enabled := (not(DTS_013_01.DataSet.FieldByName('nidcadlog').IsNull)) and
                                       (DTS_016.DataSet.State in [dsEdit,dsInsert]);


end;

procedure TDTM_A006.DTS_016StateChange(Sender: TObject);
begin

  FRM_A006.CBE_NCEP.ReadOnly := not(DTS_016.DataSet.State in [dsInsert,dsEdit]);
  FRM_A006.CBE_NCEP_1.ReadOnly := not(DTS_016.DataSet.State in [dsInsert,dsEdit]);
  FRM_A006.BTN_TIRAEC.Enabled := (not(DTS_013_01.DataSet.FieldByName('nidcadlog').IsNull)) and
                                       (DTS_016.DataSet.State in [dsEdit,dsInsert])
end;

procedure TDTM_A006.QRY_016CPESSOAFJGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  if Sender.AsString = '1' then
    begin
      Text := 'FISICA';
      FRM_A006.CBE_CCPFCNPJ.EditMask := '999.999.999-99;0';
    end
  else
    if Sender.AsString = '2' then
      begin
        Text := 'JURIDICA';
        FRM_A006.CBE_CCPFCNPJ.EditMask := '99.999.999/9999-99;0';
      end;
end;

procedure TDTM_A006.QRY_016AfterScroll(DataSet: TDataSet);
begin
  FRM_A006.CBE_CCPFCNPJ.Text := DTS_016.DataSet.FieldByName('ccpfcnpj').DisplayText;
end;

end.
