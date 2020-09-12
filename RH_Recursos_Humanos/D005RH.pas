unit D005RH;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, Ora, MemDS, DBAccess;

type
  TDTM_A005RH = class(TDataModule)
    QRY_077: TOraQuery;
    DTS_077: TOraDataSource;
    QRY_108: TOraQuery;
    DTS_108: TOraDataSource;
    QRY_095: TOraQuery;
    DTS_095: TOraDataSource;
    QRY_073: TOraQuery;
    DTS_073: TOraDataSource;
    QRY_103: TOraQuery;
    DTS_103: TOraDataSource;
    QRY_079: TOraQuery;
    DTS_079: TOraDataSource;
    QRY_026: TOraQuery;
    DTS_026: TOraDataSource;
    QRY_115: TOraQuery;
    DTS_115: TOraDataSource;
    QRY_114: TOraQuery;
    DTS_114: TOraDataSource;
    QRY_088: TOraQuery;
    DTS_088: TOraDataSource;
    QRY_078: TOraQuery;
    DTS_078: TOraDataSource;
    QRY_076: TOraQuery;
    DTS_076: TOraDataSource;
    QRY_087: TOraQuery;
    DTS_087: TOraDataSource;
    QRY_029: TOraQuery;
    DTS_029: TOraDataSource;
    QRY_029CTELCOM: TStringField;
    QRY_029CEMAIL: TStringField;
    QRY_029NIDCADSER: TFloatField;
    QRY_079NIDTBXQHR: TFloatField;
    QRY_079NPERINIINI: TFloatField;
    QRY_079NPERINIFIM: TFloatField;
    QRY_079NPERFININI: TFloatField;
    QRY_079NPERFINFIM: TFloatField;
    QRY_079NIDTAGQHR: TFloatField;
    QRY_079CDESCRIQHR: TStringField;
    QRY_077NIDTAGFFU: TFloatField;
    QRY_077NPERSLR: TFloatField;
    QRY_077NIDTAGOBT: TFloatField;
    QRY_077NIDCADCRG: TFloatField;
    QRY_077NIDTAGSLR: TFloatField;
    QRY_077NIDTBXLTB: TFloatField;
    QRY_077NIDTAGQHR: TFloatField;
    QRY_077NIDTAGODP: TFloatField;
    QRY_077NIDTAGDST: TFloatField;
    QRY_077NIDTAGRPC: TFloatField;
    QRY_077NIDTAGOCT: TFloatField;
    QRY_077NIDTAGOPT: TFloatField;
    QRY_077NIDCADSER: TFloatField;
    QRY_077NMATRICULA: TFloatField;
    QRY_077DDTADMISSA: TDateTimeField;
    QRY_077DDTDESLIGA: TDateTimeField;
    QRY_077CULTIMOCRG: TStringField;
    QRY_077DDTOPCFGTS: TDateTimeField;
    QRY_077NIDTBXGRP: TFloatField;
    QRY_077NIDTBXTCR: TFloatField;
    QRY_077NIDTBXORG: TFloatField;
    QRY_077NIDTAGUNO: TFloatField;
    QRY_077NIDTAGUPJ: TFloatField;
    QRY_077NIDTBXENT: TFloatField;
    QRY_077NCODFUNOLD: TFloatField;
    QRY_141: TOraQuery;
    DTS_141: TOraDataSource;
    QRY_029CNOMEGRL: TStringField;
    QRY_077NIDTAGBOR: TFloatField;
    QRY_077NIDTAGFPG: TFloatField;
    procedure QRY_077AfterScroll(DataSet: TDataSet);
    procedure DTS_077StateChange(Sender: TObject);
    procedure QRY_077AfterOpen(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DTM_A005RH: TDTM_A005RH;

implementation

uses A005RH;

{$R *.DFM}

procedure TDTM_A005RH.QRY_077AfterScroll(DataSet: TDataSet);
begin
 FRM_A005RH.CBE_NIDTAGOBT.Text := DTS_103.DataSet.FieldByName('cnomegrl').asString;
end;

procedure TDTM_A005RH.DTS_077StateChange(Sender: TObject);
begin
  FRM_A005RH.CBE_NIDTAGOBT.ReadOnly :=
  not(DTS_077.DataSet.State in [dsEdit,dsInsert]);
end;

procedure TDTM_A005RH.QRY_077AfterOpen(DataSet: TDataSet);
begin
  FRM_A005RH.BTN_STATUS.Enabled := DataSet.RecordCount > 0;
  FRM_A005RH.BTN_FINAN.Enabled := DataSet.RecordCount > 0;
  FRM_A005RH.BTN_MOV.Enabled := DataSet.RecordCount > 0;
  FRM_A005RH.BTN_EXCLUIR.Enabled := DataSet.RecordCount > 0;
  FRM_A005RH.BTN_ALTERAR.Enabled := DataSet.RecordCount > 0;
end;

end.
