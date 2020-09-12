unit D001RH;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, Ora, MemDS, DBAccess, DateUtil, OraErrHand, JPEG;

type
  TDTM_A001RH = class(TDataModule)
    QRY_019: TOraQuery;
    DTS_019: TOraDataSource;
    QRY_020: TOraQuery;
    DTS_020: TOraDataSource;
    QRY_023: TOraQuery;
    DTS_023: TOraDataSource;
    QRY_012: TOraQuery;
    DTS_012: TOraDataSource;
    QRY_013: TOraQuery;
    DTS_013: TOraDataSource;
    QRY_021: TOraQuery;
    DTS_021: TOraDataSource;
    QRY_022: TOraQuery;
    DTS_022: TOraDataSource;
    QRY_024: TOraQuery;
    DTS_024: TOraDataSource;
    QRY_029: TOraQuery;
    DTS_029: TOraDataSource;
    QRY_016: TOraQuery;
    DTS_016: TOraDataSource;
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
    QRY_019NIDCADGRL: TFloatField;
    QRY_019NIDCADFIS: TFloatField;
    QRY_019CNOMEMAE: TStringField;
    QRY_019CNOMEPAI: TStringField;
    QRY_019DDTEMIRG: TDateTimeField;
    QRY_019CUFEMIRG: TStringField;
    QRY_019CSEXO: TStringField;
    QRY_019DDTNASC: TDateTimeField;
    QRY_019NANOCHEG: TFloatField;
    QRY_019CNOMECONJ: TStringField;
    QRY_019NCARTTRAB: TFloatField;
    QRY_019NTITELEIT: TFloatField;
    QRY_019NZONELEIT: TFloatField;
    QRY_019NSECELEIT: TFloatField;
    QRY_019NNROCNH: TFloatField;
    QRY_019CCATCNH: TStringField;
    QRY_019DVALCNH: TDateTimeField;
    QRY_019NNROCSM: TFloatField;
    QRY_019CPIS: TStringField;
    QRY_019DDATAPIS: TDateTimeField;
    QRY_019CDEFICIENT: TStringField;
    QRY_019NIDTBXECI: TFloatField;
    QRY_019NIDTBXERG: TFloatField;
    QRY_019NIDTBXLOC: TFloatField;
    QRY_019NIDTBXCOR: TFloatField;
    QRY_019NIDTBXNAC: TFloatField;
    QRY_019NIDTBXGRI: TFloatField;
    QRY_013NIDCADLOG: TFloatField;
    QRY_013NCEP: TIntegerField;
    QRY_013CNOMELOG: TStringField;
    QRY_013CNOMEBAI: TStringField;
    QRY_013CNOMELOC: TStringField;
    QRY_013CSIGLAUF: TStringField;
    QRY_013CNOMEPAIS: TStringField;
    QRY_013CDDD: TStringField;
    QRY_019LKP_IDADE: TStringField;
    QRY_019CUFCARTTRB: TStringField;
    QRY_019DEMICATTRB: TDateTimeField;
    QRY_029NIDCADSER: TFloatField;
    QRY_029NIDCADGRL: TFloatField;
    QRY_029CSIGCONCLA: TStringField;
    QRY_029CNRCONSCLA: TStringField;
    QRY_029NDEPIR: TFloatField;
    QRY_029NDEPSF: TFloatField;
    QRY_029CNROAPOSEN: TStringField;
    QRY_029NAGENCIA: TFloatField;
    QRY_029NCONTA: TFloatField;
    QRY_029NIDTBXBCO: TFloatField;
    QRY_015: TOraQuery;
    DTS_015: TOraDataSource;
    QRY_029CCPFCNPJ: TStringField;
    QRY_109: TOraQuery;
    DTS_109: TOraDataSource;
    QRY_109NIDTAGFTO: TFloatField;
    QRY_109BFOTO: TBlobField;
    QRY_109NIDCADGRL: TFloatField;
    QRY_019CENVIARTC: TStringField;
    QRY_019CSERIETRAB: TStringField;
    QRY_029CDIGITO: TStringField;
    QRY_029NDIGAGE: TFloatField;
    procedure DTS_013DataChange(Sender: TObject; Field: TField);
    procedure DTS_012DataChange(Sender: TObject; Field: TField);
    procedure QRY_029AfterScroll(DataSet: TDataSet);
    procedure QRY_019CalcFields(DataSet: TDataSet);
    procedure DTS_029StateChange(Sender: TObject);
    procedure DTS_019StateChange(Sender: TObject);
    procedure QRY_019CSEXOGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DTM_A001RH: TDTM_A001RH;

implementation

uses A001RH, DMCTRL;

{$R *.DFM}

procedure TDTM_A001RH.DTS_013DataChange(Sender: TObject; Field: TField);
begin
  if not(DTS_029.DataSet.State in [dsInsert,dsEdit]) then
    FRM_A001RH.CBE_NCEP.Text := DTS_013.DataSet.FieldByName('nCep').DisplayText;
end;

procedure TDTM_A001RH.DTS_012DataChange(Sender: TObject; Field: TField);
begin
  FRM_A001RH.CBE_CNOMELOC.Text := DTS_012.DataSet.FieldByName('cNomeLoc').AsString;
end;

procedure TDTM_A001RH.QRY_029AfterScroll(DataSet: TDataSet);
  var
    Str : TBlobStream;
    JP : TJPEGImage;
begin
  with FRM_A001RH do
    begin
      CBE_CCPFCNPJ.Text :=
      QRY_016.FieldByName('ccpfcnpj').asString;
      DBL_NIDTBXECIChange(DataSet);
      STT_Foto.Visible := DTS_109.DataSet.FieldByName('bFoto').IsNull ;

      if DTS_109.DataSet.FieldByName('bFoto').IsNull then
        IMG_SERVIDOR.Picture := nil
      else
        begin
          Str := TBlobStream.Create((QRY_109BFOTO as TBlobField), bmRead);
          JP := TJPEGImage.Create;
          try
            JP.LoadFromStream(Str);
            IMG_SERVIDOR.Picture.Assign(JP);
          finally
            JP.Free;
          end;
        end;
    end;
end;

procedure TDTM_A001RH.QRY_019CalcFields(DataSet: TDataSet);
begin
  if DTS_019.DataSet.FieldByName('dDtNasc').isNull then
    DTS_019.DataSet.FieldByName('Lkp_Idade').AsString := '0'
  else
    DTS_019.DataSet.FieldByName('Lkp_Idade').AsString :=
    IntToStr(Trunc(MonthsBetween(StrToDate(DTS_019.DataSet.FieldByName('dDtNasc').asString),Now) / 12))+' ano(s)';
end;

procedure TDTM_A001RH.DTS_029StateChange(Sender: TObject);
begin
  FRM_A001RH.CBE_NCEP.ReadOnly := not(DTS_029.DataSet.State in [dsInsert,dsEdit]);
  //FRM_A001RH.CBE_CCPFCNPJ.ReadOnly := FRM_A001RH.CBE_NCEP.ReadOnly;
end;

procedure TDTM_A001RH.DTS_019StateChange(Sender: TObject);
begin
  FRM_A001RH.CBE_CNOMELOC.ReadOnly := not( DTS_019.DataSet.State in [dsInsert,dsEdit] );
end;

procedure TDTM_A001RH.QRY_019CSEXOGetText(Sender: TField; var Text: String;
  DisplayText: Boolean);
begin
  if Sender.AsString = 'F' then
    Text := 'FEMININO'
  else
    if Sender.AsString = 'M' then
      Text := 'MASCULINO'
end;

end.
