unit D005UTCO;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, Ora, MemDS, DBAccess;

type
  TDTM_A005UTCO = class(TDataModule)
    QRY_043: TOraQuery;
    QRY_047: TOraQuery;
    DTS_043: TOraDataSource;
    DTS_047: TOraDataSource;
    QRY_041: TOraQuery;
    DTS_041: TOraDataSource;
    QRY_043CNOMETBL: TStringField;
    QRY_043CNOMEFORM: TStringField;
    QRY_043LINDICE: TIntegerField;
    QRY_043CDESCRTBL: TStringField;
    QRY_043CORDERREL: TStringField;
    QRY_043CSEQBROWSE: TStringField;
    QRY_043NIDTBL_T: TFloatField;
    QRY_047NIDTBL_T: TIntegerField;
    QRY_047NIDTBL_ET: TFloatField;
    QRY_041CDESCAPLI: TStringField;
    QRY_041CNOMEFORM: TStringField;
    QRY_047CNOMECAMPO: TStringField;
    QRY_047CTIPOCAMPO: TStringField;
    QRY_047CTITULO: TStringField;
    QRY_047NTAMANHO: TIntegerField;
    QRY_047NDECIMAL: TIntegerField;
    QRY_047_01: TOraQuery;
    DTS_047_01: TOraDataSource;
    QRY_047_01NIDTBL_T: TIntegerField;
    QRY_047_01NIDTBL_ET: TFloatField;
    QRY_047NCODTABELA: TIntegerField;
    QRY_047NIDTBL_D: TFloatField;
    QRY_047_01NIDTBL_D: TFloatField;
    procedure DTS_043StateChange(Sender: TObject);
    procedure DTS_043DataChange(Sender: TObject; Field: TField);
    procedure QRY_043AfterScroll(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DTM_A005UTCO: TDTM_A005UTCO;

implementation

uses A005UTCO;

{$R *.DFM}

procedure TDTM_A005UTCO.DTS_043StateChange(Sender: TObject);
begin
  FRM_A005UTCO.CBE_NIDTBL_T.Enabled := not(DTS_043.DataSet.State in [dsEdit,dsInsert]);
  FRM_A005UTCO.GroupBox.Enabled := (DTS_043.DataSet.State in [dsEdit,dsInsert]);
end;

procedure TDTM_A005UTCO.DTS_043DataChange(Sender: TObject; Field: TField);
begin
  //if Field <> nil then
  //  if Field.FieldName = 'NIDTBL_T' then
      FRM_A005UTCO.CBE_NIDTBL_T.Text := DTS_043.DataSet.FieldByName('nidtbl_t').asString;
end;

procedure TDTM_A005UTCO.QRY_043AfterScroll(DataSet: TDataSet);
begin
  FRM_A005UTCO.MontaTreeView;
end;

end.
