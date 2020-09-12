unit D001AD;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, Ora, MemDS, DBAccess, VirtualTable, DBGrids, Mask;

type
  TDTM_A001AD = class(TDataModule)
    QRY_031: TOraQuery;
    QRY_016: TOraQuery;
    QRY_013: TOraQuery;
    QRY_039: TOraQuery;
    QRY_038: TOraQuery;
    QRY_033: TOraQuery;
    QRY_034: TOraQuery;
    DTS_031: TOraDataSource;
    DTS_016: TOraDataSource;
    DTS_013: TOraDataSource;
    DTS_039: TOraDataSource;
    DTS_038: TOraDataSource;
    DTS_033: TOraDataSource;
    DTS_034: TOraDataSource;
    QRY_025: TOraQuery;
    DTS_019: TOraDataSource;
    DTS_025: TOraDataSource;
    QRY_035: TOraQuery;
    DTS_035: TOraDataSource;
    QRY_037: TOraQuery;
    DTS_037: TOraDataSource;
    QRY_038NIDTAGBFN: TFloatField;
    QRY_038CAGENCIA: TStringField;
    QRY_038NIDCADFOR: TFloatField;
    QRY_038NIDTBXBCO: TFloatField;
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
    QRY_013NIDCADLOG: TFloatField;
    QRY_013NCEP: TIntegerField;
    QRY_013CNOMELOG: TStringField;
    QRY_013CNOMEBAI: TStringField;
    QRY_013CNOMELOC: TStringField;
    QRY_013CDDD: TStringField;
    QRY_013CSIGLAUF: TStringField;
    QRY_013CNOMEPAIS: TStringField;
    QRY_039NIDTBXCNA: TFloatField;
    QRY_039CCODCNAE: TStringField;
    QRY_039CDESCCNAE: TStringField;
    QRY_031NIDCADFOR: TFloatField;
    QRY_031NIDCADGRL: TFloatField;
    QRY_031CTELCOMFOR: TStringField;
    QRY_031CTELFAXFOR: TStringField;
    QRY_031CTELCELFOR: TStringField;
    QRY_031CEMAILFOR: TStringField;
    QRY_031NTOTEMPREG: TFloatField;
    QRY_031NTOTTECNIC: TFloatField;
    QRY_031NCAPSOCIAL: TFloatField;
    QRY_031NFATUANUAL: TFloatField;
    QRY_031CCONTATFOR: TStringField;
    QRY_019: TOraQuery;
    QRY_019NIDCADGRL: TFloatField;
    QRY_019NIDCADFIS: TFloatField;
    QRY_019NIDTBXECI: TFloatField;
    QRY_019NIDTBXERG: TFloatField;
    QRY_019NIDTBXLOC: TFloatField;
    QRY_019NIDTBXCOR: TFloatField;
    QRY_019NIDTBXNAC: TFloatField;
    QRY_019NIDTBXGRI: TFloatField;
    QRY_016CTELFAX: TStringField;
    QRY_037NIDTBXBCO: TFloatField;
    QRY_037NCODBANCO: TFloatField;
    QRY_037CDESCBANCO: TStringField;
    QRY_038LKP_CDESCBANCO: TStringField;
    QRY_038LKP_NCODBANCO: TIntegerField;
    QRY_033NIDTAGIGD: TFloatField;
    QRY_033CDESCDOC: TStringField;
    QRY_033CTIPOPESS: TStringField;
    QRY_033CVALIDADE: TStringField;
    QRY_033NIDCADGDC: TFloatField;
    QRY_034NIDTAGDOC: TFloatField;
    QRY_034CDISPENSA: TStringField;
    QRY_034CENTREGUE: TStringField;
    QRY_034DDATAVALID: TDateTimeField;
    QRY_034CSTATUS: TStringField;
    QRY_034NIDCADFOR: TFloatField;
    QRY_034NIDTAGIGD: TFloatField;
    QRY_034COBRIGA: TStringField;
    QRY_034CDISPEN: TStringField;
    QRY_033COBRIGA: TStringField;
    QRY_033CDISPEN: TStringField;
    QRY_034CVALIDADE: TStringField;
    QRY_036: TOraQuery;
    DTS_036: TOraDataSource;
    QRY_034CNUMDOC: TStringField;
    QRY_031DDTEMISSAO: TDateTimeField;
    QRY_031DDTVALIDAD: TDateTimeField;
    QRY_031CCERTIFICA: TStringField;
    QRY_016NIDTBXCNA: TFloatField;
    QRY_033CUTILIZA: TStringField;
    QRY_033_01: TOraQuery;
    QRY_038CCONTCORRE: TStringField;
    QRY_034LKP_CDESCDOC: TStringField;
    QRY_033CDESCREDUZ: TStringField;
    QRY_035NIDTAGRFN: TFloatField;
    QRY_035NIDCADFOR: TFloatField;
    QRY_035CNOMEREFOR: TStringField;
    QRY_035CCONTREFOR: TStringField;
    QRY_035CFONEREFOR: TStringField;
    QRY_035NIDTBXLOC: TFloatField;
    QRY_012: TOraQuery;
    DTS_012: TOraDataSource;
    QRY_012_01: TOraQuery;
    DTS_012_01: TOraDataSource;
    QRY_036NIDTAGRCL: TFloatField;
    QRY_036NIDCADFOR: TFloatField;
    QRY_036CNOMECLIRE: TStringField;
    QRY_036CCONTCLIRE: TStringField;
    QRY_036CFONECLIRE: TStringField;
    QRY_036NIDTBXLOC: TFloatField;
    QRY_016CATIVIDADE: TStringField;
    DTS_033_01: TOraDataSource;
    QRY_031CPESSCERTF: TStringField;
    QRY_031CCPFRESP: TStringField;
    QRY_031CNOMERESP: TStringField;
    procedure DTS_031StateChange(Sender: TObject);
    procedure QRY_016AfterScroll(DataSet: TDataSet);
    procedure DTS_038DataChange(Sender: TObject; Field: TField);
    procedure QRY_034AfterScroll(DataSet: TDataSet);
    procedure QRY_034CENTREGUEGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure DTS_034StateChange(Sender: TObject);
    procedure QRY_034CSTATUSGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure QRY_034DDATAVALIDValidate(Sender: TField);
    procedure DTS_012_01DataChange(Sender: TObject; Field: TField);
    procedure DTS_036StateChange(Sender: TObject);
    procedure DTS_035StateChange(Sender: TObject);
    procedure DTS_012DataChange(Sender: TObject; Field: TField);
    procedure QRY_034BeforeInsert(DataSet: TDataSet);
    procedure DTS_016StateChange(Sender: TObject);
    procedure DTS_034DataChange(Sender: TObject; Field: TField);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DTM_A001AD: TDTM_A001AD;

implementation

uses DMCTRL, A001AD;

{$R *.DFM}

procedure TDTM_A001AD.DTS_031StateChange(Sender: TObject);
begin
  FRM_A001AD.CBE_CCPFCNPJ.ReadOnly := not(DTS_031.DataSet.State in [dsInsert,dsBrowse]);
  FRM_A001AD.CBE_CCODCNAE.ReadOnly := not(DTS_031.DataSet.State in [dsEdit,dsInsert]);
end;

procedure TDTM_A001AD.QRY_016AfterScroll(DataSet: TDataSet);
  var
    lAux : Boolean;
begin
 with FRM_A001AD do
  begin
    CBE_CCPFCNPJ.Text      := DTS_016.DataSet.FieldByName('cCpfCnpj').DisplayText;
    CBE_CCODCNAE.Text      := DTS_039.DataSet.FieldByName('ccodcnae').DisplayText;
    CBE_NCEP.Text          := DTS_013.DataSet.FieldByName('nCep').DisplayText;
    //LBL_CCODCNAE.Enabled   := DTS_016.DataSet.FieldByName('cPessoaFJ').AsString = '2';
    lAux := DTS_016.DataSet.FieldByName('cPessoaFJ').AsString = '2';


    if lAux then
      begin
        LBL_CRGIE.Caption := 'Inscrição Estadual';
        CBE_CCPFCNPJ.EditMask := '99.999.999/9999-99;0;*';
        QRY_033.ParamByName('TipoPess').AsString := 'J';
      end
    else
      begin
        LBL_CRGIE.Caption := 'Número do RG';
        CBE_CCPFCNPJ.EditMask := '999.999.999-99;0;*';
        QRY_033.ParamByName('TipoPess').AsString := 'F';
      end;

    QRY_033.ExecSql;

    LBL_CINSMUNI.Enabled   := lAux;
    DED_CINSMUNICI.Enabled := lAux;
    LBL_CNOMEFAN.Enabled   := lAux;
    DED_CNOMEFAN.Enabled   := lAux;
    if DBD_DDATVALIDAD.Date < Date then
      DBD_DDATVALIDAD.Font.Color := clRed
    else
      DBD_DDATVALIDAD.Font.Color := clBlack;

  end;
end;

procedure TDTM_A001AD.DTS_038DataChange(Sender: TObject; Field: TField);
begin
  FRM_A001AD.CBE_NCODBANCO.ReadOnly := not(DTS_038.DataSet.State in [dsInsert,dsEdit]);
  if FRM_A001AD.CBE_NCODBANCO.ReadOnly then
    FRM_A001AD.CBE_NCODBANCO.Text := DTS_038.DataSet.FieldByName('LKP_NCODBANCO').DisplayText;
end;

procedure TDTM_A001AD.QRY_034AfterScroll(DataSet: TDataSet);
begin
  if QRY_034.Tag = 0 then
    FRM_A001AD.DBG_DOC.Repaint;

end;

procedure TDTM_A001AD.QRY_034CENTREGUEGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  if Sender.AsString = 'S' then
    Text := 'ü'
  else
    Text := '';
end;

procedure TDTM_A001AD.DTS_034StateChange(Sender: TObject);
begin
  FRM_A001AD.DBG_DOC.Repaint;
end;

procedure TDTM_A001AD.QRY_034CSTATUSGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  if (Sender.AsString = 'IRREGULAR') or
     (Sender.AsString = '')  then
    Text := 'IR'
  else
    Text := 'OK';
end;

procedure TDTM_A001AD.QRY_034DDATAVALIDValidate(Sender: TField);
begin
    FRM_A001AD.ValidaDocumento(DTM_A001AD.QRY_031);
end;

procedure TDTM_A001AD.DTS_012_01DataChange(Sender: TObject; Field: TField);
begin
  FRM_A001AD.CBE_CNOMELOC.Text :=
  DTS_012_01.DataSet.FieldByName('cnomeloc').DisplayText;
end;

procedure TDTM_A001AD.DTS_036StateChange(Sender: TObject);
begin
  FRM_A001AD.CBE_CNOMELOC.ReadOnly := not(DTS_036.DataSet.State in [dsInsert,dsEdit]);
  
end;

procedure TDTM_A001AD.DTS_035StateChange(Sender: TObject);
begin
  FRM_A001AD.CBE_CNOMELOC_1.ReadOnly := not(DTS_035.DataSet.State in [dsInsert,dsEdit]);

end;

procedure TDTM_A001AD.DTS_012DataChange(Sender: TObject; Field: TField);
begin
  FRM_A001AD.CBE_CNOMELOC_1.Text :=
  DTS_012.DataSet.FieldByName('cnomeloc').DisplayText;
end;

procedure TDTM_A001AD.QRY_034BeforeInsert(DataSet: TDataSet);
begin
   if QRY_034.Tag = 0 then
     Abort;
end;

procedure TDTM_A001AD.DTS_016StateChange(Sender: TObject);
begin
  DTS_034.AutoEdit := DTS_016.DataSet.State in [dsEdit, dsInsert];
  //DTS_038.AutoEdit := DTS_034.AutoEdit;
  //DTS_036.AutoEdit := DTS_034.AutoEdit;
  //DTS_035.AutoEdit := DTS_034.AutoEdit;
end;

procedure TDTM_A001AD.DTS_034DataChange(Sender: TObject; Field: TField);
begin
  DTS_034.AutoEdit := DTS_016.DataSet.State in [dsEdit, dsInsert];
end;

end.

