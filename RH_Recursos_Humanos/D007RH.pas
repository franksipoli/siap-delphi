unit D007RH;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, MemDS, DBAccess, comctrls, Ora;

type
  TDTM_A007RH = class(TDataModule)
    QRY_084: TOraQuery;
    DTS_084: TOraDataSource;
    QRY_096: TOraQuery;
    DTS_096: TOraDataSource;
    QRY_099: TOraQuery;
    DTS_099: TOraDataSource;
    QRY_069: TOraQuery;
    DTS_069: TOraDataSource;
    QRY_069_1: TOraQuery;
    DTS_069_1: TOraDataSource;
    QRY_096_1: TOraQuery;
    DTS_096_1: TOraDataSource;
    QRY_069CNROATO: TStringField;
    QRY_069DDTEFEITOS: TDateTimeField;
    QRY_069CDESCRITAT: TStringField;
    QRY_069_1CNROATO: TStringField;
    QRY_069_1DDTEFEITOS: TDateTimeField;
    QRY_069_1CDESCRITAT: TStringField;
    QRY_095: TOraQuery;
    DTS_095: TOraDataSource;
    QRY_073: TOraQuery;
    DTS_073: TOraDataSource;
    QRY_083: TOraQuery;
    DTS_083: TOraDataSource;
    QRY_092: TOraQuery;
    DTS_092: TOraDataSource;
    QRY_080: TOraQuery;
    DTS_080: TOraDataSource;
    QRY_080_1: TOraQuery;
    DTS_080_1: TOraDataSource;
    QRY_086: TOraQuery;
    DTS_086: TOraDataSource;
    QRY_091: TOraQuery;
    DTS_091: TOraDataSource;
    QRY_081: TOraQuery;
    DTS_081: TOraDataSource;
    QRY_094: TOraQuery;
    DTS_094: TOraDataSource;
    QRY_103: TOraQuery;
    DTS_103: TOraDataSource;
    QRY_103_1: TOraQuery;
    DTS_103_1: TOraDataSource;
    QRY_103_1NIDTAGOBT: TFloatField;
    QRY_103_1DDTOBITO: TDateTimeField;
    QRY_103_1CMOTIVO: TStringField;
    QRY_103_1NBSPENSAO: TFloatField;
    QRY_103_1CULTIMOCRG: TStringField;
    QRY_103_1NIDCADSER: TFloatField;
    QRY_103_1NIDTAGSLR: TFloatField;
    QRY_103_1CNOMEGRL: TStringField;
    QRY_026: TOraQuery;
    DTS_026: TOraDataSource;
    QRY_103_1CCPFCNPJ: TStringField;
    QRY_098: TOraQuery;
    DTS_098: TOraDataSource;
    QRY_098CDESCRIVTG: TStringField;
    QRY_098NVALORSLR: TFloatField;
    QRY_098NPERINIC: TFloatField;
    QRY_098NPERFIM: TFloatField;
    QRY_088: TOraQuery;
    DTS_088: TOraDataSource;
    QRY_078: TOraQuery;
    DTS_078: TOraDataSource;
    QRY_076: TOraQuery;
    DTS_076: TOraDataSource;
    QRY_087: TOraQuery;
    DTS_087: TOraDataSource;
    QRY_073_1: TOraQuery;
    DTS_073_1: TOraDataSource;
    QRY_099NIDCADMOV: TFloatField;
    QRY_099NVALORSLR: TFloatField;
    QRY_099DDATAFIM: TDateTimeField;
    QRY_099DDTOBITO: TDateTimeField;
    QRY_099NPERBENEFI: TFloatField;
    QRY_099CORGAOORI: TStringField;
    QRY_099CMOTIVO: TStringField;
    QRY_099NPERVANTAG: TFloatField;
    QRY_099DDTAQSINI: TDateTimeField;
    QRY_099DDTAQSFIM: TDateTimeField;
    QRY_099NIDATORVG: TFloatField;
    QRY_099NIDTPMRVG: TFloatField;
    QRY_099NIDCADATO: TFloatField;
    QRY_099NIDTAGFFU: TFloatField;
    QRY_099NIDCADCRG: TFloatField;
    QRY_099NIDTBXEDI: TFloatField;
    QRY_099NIDTBXAGI: TFloatField;
    QRY_099NIDTBXTBI: TFloatField;
    QRY_099NIDTBXGRP: TFloatField;
    QRY_099NIDTBXLTB: TFloatField;
    QRY_099NIDTAGSLR: TFloatField;
    QRY_099NIDTBXTPM: TFloatField;
    QRY_099NIDTAGOBT: TFloatField;
    QRY_099NIDTAGDST: TFloatField;
    QRY_099NIDTAGODP: TFloatField;
    QRY_099DDATAINI: TDateTimeField;
    QRY_099CULTCRGAPS: TStringField;
    QRY_099NMATRICULA: TFloatField;
    QRY_099CENVIADOTC: TStringField;
    QRY_099NIDTBXGMV: TFloatField;
    QRY_099NIDTBXTCR: TFloatField;
    QRY_099NIDTBXGRO: TFloatField;
    QRY_099NIDTBXSGO: TFloatField;
    QRY_099NIDTBXSLR: TFloatField;
    QRY_099NNIVEL: TFloatField;
    QRY_099CCLASSE: TStringField;
    QRY_099NIDTBXORG: TFloatField;
    QRY_099NIDTBXDPT: TFloatField;
    QRY_099NIDTBXSET: TFloatField;
    QRY_099CLC_DIASFER: TIntegerField;
    QRY_099NMESPGTO: TFloatField;
    QRY_099NANOPGTO: TFloatField;
    QRY_099CENVIADRVG: TStringField;
    procedure DTS_069DataChange(Sender: TObject; Field: TField);
    procedure QRY_069CDESCRITATGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure DTS_069_1DataChange(Sender: TObject; Field: TField);
    procedure DTS_096DataChange(Sender: TObject; Field: TField);
    procedure DTS_083DataChange(Sender: TObject; Field: TField);
    procedure DTS_103_1DataChange(Sender: TObject; Field: TField);
    procedure QRY_098NVALORSLRGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure QRY_099CalcFields(DataSet: TDataSet);
    procedure QRY_099NANOPGTOGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DTM_A007RH: TDTM_A007RH;

implementation

uses A007RH, DMCTRL;


{$R *.DFM}

procedure TDTM_A007RH.DTS_069DataChange(Sender: TObject; Field: TField);
begin
  FRM_A007RH.CBE_CNROATO.ReadOnly := not(DTS_099.DataSet.State in [dsInsert,dsEdit]);
  if FRM_A007RH.CBE_CNROATO.ReadOnly then
    FRM_A007RH.CBE_CNROATO.Text := DTS_069.DataSet.FieldByName('cnroato').DisplayText;

end;

procedure TDTM_A007RH.QRY_069CDESCRITATGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  Text := Sender.AsString + ' Nº '
end;

procedure TDTM_A007RH.DTS_069_1DataChange(Sender: TObject;
  Field: TField);
begin
  FRM_A007RH.CBE_CNROATO_1.ReadOnly := not(DTS_099.DataSet.State in [dsInsert,dsEdit]);
  if FRM_A007RH.CBE_CNROATO_1.ReadOnly then
    FRM_A007RH.CBE_CNROATO_1.Text := DTS_069_1.DataSet.FieldByName('cnroato').DisplayText;
end;

procedure TDTM_A007RH.DTS_096DataChange(Sender: TObject; Field: TField);
begin
  FRM_A007RH.DBL_NIDTBXTPM_1.ReadOnly := (DTS_096.DataSet.FieldByName('nidtpmrvg').value <> null);
  FRM_A007RH.DBL_NIDTBXTPM_1.Repaint;
end;

procedure TDTM_A007RH.DTS_083DataChange(Sender: TObject; Field: TField);
begin
  FRM_A007RH.CBE_CNROEDITAL.ReadOnly := not(DTS_099.DataSet.State in [dsInsert,dsEdit]);
  FRM_A007RH.CBE_CNROEDITAL1.ReadOnly := FRM_A007RH.CBE_CNROEDITAL.ReadOnly;
  if FRM_A007RH.CBE_CNROEDITAL.ReadOnly then
    FRM_A007RH.CBE_CNROEDITAL.Text := DTS_083.DataSet.FieldByName('cnroedital').DisplayText;

  if FRM_A007RH.CBE_CNROEDITAL1.ReadOnly then
    FRM_A007RH.CBE_CNROEDITAL1.Text := DTS_083.DataSet.FieldByName('cnroedital').DisplayText;
end;

procedure TDTM_A007RH.DTS_103_1DataChange(Sender: TObject; Field: TField);
begin
   FRM_A007RH.CBE_CCPFCNPJ.Text :=
   DTS_103_1.DataSet.FieldByName('ccpfcnpj').asString;
end;

procedure TDTM_A007RH.QRY_098NVALORSLRGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  if Sender.Value = null then
    Text := FloatToStr(FRM_A007RH.nBaseCalculo)
  else
    Text := Sender.AsString;
end;

procedure TDTM_A007RH.QRY_099CalcFields(DataSet: TDataSet);
begin
  if (DataSet.FieldByName('ddatafim').value <> null) and
     (DataSet.FieldByName('ddataini').value <> null) then
    DataSet.FieldByName('clc_diasfer').value :=
    (DataSet.FieldByName('ddatafim').AsDateTime - DataSet.FieldByName('ddataini').AsDateTime) + 1
  else
    DataSet.FieldByName('clc_diasfer').value := 0;

end;

procedure TDTM_A007RH.QRY_099NANOPGTOGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  if Sender.asString <> '' then
    Text := DTS_099.DataSet.FieldByName('nmespgto').DisplayText + '/' +
    Sender.asString;
end;

end.
