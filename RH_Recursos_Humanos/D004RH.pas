{*******************************************************************************
 *                                                                             *
 *  DataModule do Cadastro de Dependentes                                      *
 *                                                                             *
 *                                                                             *
 *  Data da Criação : 05/02/2004                                               *
 *  Programador Leandro Ribas                                                  *
 *  Data Finalização : 06/02/2004                                              *
 *                                                                             *
 *  Data da Ultima Atualização :06/02/2004                                     *
 *  Atualizado por: Leandro Ribas                                              *
 *                                                                "vamo nessa" *
 *******************************************************************************
}


unit D004RH;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, Ora, MemDS, DBAccess, DateUtil;

type
  TDTM_A004RH = class(TDataModule)
    QRY_030: TOraQuery;
    DTS_030: TOraDataSource;
    QRY_026: TOraQuery;
    QRY_028: TOraQuery;
    QRY_027: TOraQuery;
    DTS_026: TOraDataSource;
    DTS_028: TOraDataSource;
    DTS_027: TOraDataSource;
    QRY_026NIDTBXGRP: TFloatField;
    QRY_026CNOMEGRP: TStringField;
    QRY_028NIDTBXDSF: TFloatField;
    QRY_028CNOMEDSF: TStringField;
    QRY_027NIDTBXDIR: TFloatField;
    QRY_027CNOMEDIR: TStringField;
    QRY_030LKP_PARENTESCO: TStringField;
    QRY_DEPSALFAM: TOraQuery;
    QRY_DEPIMPRENDA: TOraQuery;
    DTS_DEPSALFAM: TOraDataSource;
    DTS_DEPIMPRENDA: TOraDataSource;
    QRY_DEPSALFAMTOTAL: TFloatField;
    QRY_DEPIMPRENDATOTAL: TFloatField;
    QRY_016: TOraQuery;
    DTS_016: TOraDataSource;
    QRY_019: TOraQuery;
    DTS_019: TOraDataSource;
    QRY_030NIDCADGRL: TFloatField;
    QRY_030NIDTAGDEP: TFloatField;
    QRY_030NIDTBXGRP: TFloatField;
    QRY_016NIDCADGRL: TFloatField;
    QRY_016CNOMEGRL: TStringField;
    QRY_016CCPFCNPJ: TStringField;
    QRY_019NIDCADGRL: TFloatField;
    QRY_019NIDCADFIS: TFloatField;
    QRY_019CNOMEMAE: TStringField;
    QRY_019CSEXO: TStringField;
    QRY_019DDTNASC: TDateTimeField;
    QRY_019NIDTBXECI: TFloatField;
    QRY_019NIDTBXERG: TFloatField;
    QRY_019NIDTBXLOC: TFloatField;
    QRY_019NIDTBXCOR: TFloatField;
    QRY_019NIDTBXNAC: TFloatField;
    QRY_019NIDTBXGRI: TFloatField;
    QRY_016NIDCADLOG: TFloatField;
    QRY_030NIDCADPAI: TFloatField;
    QRY_016CPESSOAFJ: TFloatField;
    QRY_030CNOMEGRL: TStringField;
    QRY_030DDTNASC: TDateTimeField;
    QRY_030CSEXO: TStringField;
    QRY_030CLC_IDADE: TStringField;
    QRY_019CLC_IDADE: TStringField;
    QRY_026NIDTBXVPR: TFloatField;
    QRY_026NIDRELMASC: TFloatField;
    QRY_026NIDRELFEMI: TFloatField;
    QRY_026CSEXO: TStringField;
    QRY_030LKP_CSEXO: TStringField;
    QRY_030NIDTAGGIR: TFloatField;
    QRY_030NIDTAGGSF: TFloatField;
    QRY_028NIDTAGGSF: TFloatField;
    QRY_028NIDADE: TFloatField;
    QRY_027NIDTAGGIR: TFloatField;
    QRY_027NIDADE: TFloatField;
    procedure QRY_030AfterScroll(DataSet: TDataSet);
    procedure QRY_030CalcFields(DataSet: TDataSet);
    procedure DTS_030DataChange(Sender: TObject; Field: TField);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DTM_A004RH: TDTM_A004RH;

implementation

uses DMCTRL, A004RH;

{$R *.DFM}

procedure TDTM_A004RH.QRY_030AfterScroll(DataSet: TDataSet);
begin
  FRM_A004RH.CBE_CCPFCNPJ.Text :=
  DTS_016.DataSet.FieldByName('ccpfcnpj').DisplayText;
  if not(QRY_030.FieldByName('nidtaggir').IsNull) then
    FRM_A004RH.DBL_NIDTBXDIR.KeyValue := QRY_030.FieldByName('nidtaggir').value;
  if not(QRY_030.FieldByName('nidtaggsf').IsNull) then
    FRM_A004RH.DBL_NIDTBXDSF.KeyValue := QRY_030.FieldByName('nidtaggsf').value;

end;

procedure TDTM_A004RH.QRY_030CalcFields(DataSet: TDataSet);
  var
    dDataNasc : TDateTime;
begin
//calcula a idade do dependente
  if DTS_030.DataSet.FieldByName('ddtnasc').isNull then
    DTS_030.DataSet.FieldByName('clc_idade').AsString := '0'
  else
    begin
      if DataSet = nil then
        dDataNasc := FRM_A004RH.DBD_DDTNASCDEP.Date
      else
        dDataNasc := DTS_030.DataSet.FieldByName('ddtnasc').AsDateTime;
      DTS_030.DataSet.FieldByName('clc_idade').AsString :=
      IntToStr(Trunc(MonthsBetween(dDataNasc,Now) / 12))+' ano(s)';
    end;
end;

procedure TDTM_A004RH.DTS_030DataChange(Sender: TObject; Field: TField);
begin
  if QRY_030.IsEmpty then
    FRM_A004RH.AlteraStatusBotao;
  FRM_A004RH.CBE_CCPFCNPJ.ReadOnly := QRY_030.State = dsBrowse;
end;

end.
