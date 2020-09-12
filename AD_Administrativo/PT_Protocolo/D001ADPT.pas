unit D001ADPT;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, MemDS, DBAccess, Ora;

type
  TDTM_A001ADPT = class(TDataModule)
    QRY_016: TOraQuery;
    QRY_151: TOraQuery;
    DTS_151: TOraDataSource;
    DTS_016: TOraDataSource;
    DTS_013: TOraDataSource;
    QRY_013: TOraQuery;
    QRY_013NIDCADLOG: TFloatField;
    QRY_013NCEP: TIntegerField;
    QRY_013CNOMELOG: TStringField;
    QRY_013CNOMEBAI: TStringField;
    QRY_013CNOMELOC: TStringField;
    QRY_013CDDD: TStringField;
    QRY_013CSIGLAUF: TStringField;
    QRY_013CNOMEPAIS: TStringField;
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
    QRY_016CTELFAX: TStringField;
    QRY_016NIDTBXCNA: TFloatField;
    QRY_016CATIVIDADE: TStringField;
    QRY_151NIDCADREQ: TFloatField;
    QRY_151CDESCRIREQ: TStringField;
    QRY_151DAT_LUGAR: TStringField;
    QRY_151NNROPROT: TFloatField;
    QRY_151CDESCRITRQ: TStringField;
    procedure QRY_016AfterScroll(DataSet: TDataSet);
    procedure QRY_151AfterRefresh(DataSet: TDataSet);
    procedure QRY_151AfterScroll(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DTM_A001ADPT: TDTM_A001ADPT;

implementation

uses A001ADPT;

{$R *.DFM}

procedure TDTM_A001ADPT.QRY_016AfterScroll(DataSet: TDataSet);
begin
 //if FRM_A001ADPT = nil then
//   exit;
 with FRM_A001ADPT do
  begin
    CBE_CCPFCNPJ.Text      := DTS_016.DataSet.FieldByName('cCpfCnpj').DisplayText;
    CBE_NCEP.Text          := DTS_013.DataSet.FieldByName('nCep').DisplayText;
    if DTS_016.DataSet.FieldByName('cPessoaFJ').AsString = '2' then
      CBE_CCPFCNPJ.EditMask := '99.999.999/9999-99;0;*'
    else
      CBE_CCPFCNPJ.EditMask := '999.999.999-99;0;*';
  end;
end;
procedure TDTM_A001ADPT.QRY_151AfterRefresh(DataSet: TDataSet);
begin
  with FRM_A001ADPT do
    begin
      BTN_PRIMEIROREG1.Enabled := DataSet.RecordCount > 0;
      BTN_RETROCEDER1.Enabled := BTN_PRIMEIROREG1.Enabled;
      BTN_AVANCAR1.Enabled := BTN_PRIMEIROREG1.Enabled;
      BTN_ULTIMOREG1.Enabled := BTN_PRIMEIROREG1.Enabled;
      BTN_DETALHES.Enabled := BTN_PRIMEIROREG1.Enabled;
      if DataSet.RecordCount > 0 then
        QRY_151AfterScroll(DataSet);
    end;

end;

procedure TDTM_A001ADPT.QRY_151AfterScroll(DataSet: TDataSet);
begin
  with FRM_A001ADPT do
    begin
      BTN_PRIMEIROREG1.Enabled := not(DataSet.RecNo = 1);
      BTN_RETROCEDER1.Enabled := BTN_PRIMEIROREG1.Enabled;
      BTN_ULTIMOREG1.Enabled := not(DataSet.RecNo = DataSet.RecordCount);
      BTN_AVANCAR1.Enabled := BTN_ULTIMOREG1.Enabled;
    end;
end;

end.
