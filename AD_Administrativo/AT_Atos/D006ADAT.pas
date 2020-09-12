unit D006ADAT;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, Ora, MemDS, DBAccess;

type
  TDTM_A006ADAT = class(TDataModule)
    QRY_096: TOraQuery;
    DTS_096: TOraDataSource;
    QRY_096NIDTBXTPM: TFloatField;
    QRY_096CDESCRITPM: TStringField;
    QRY_096CTIPORVG: TStringField;
    QRY_096NIDTPMRVG: TFloatField;
    QRY_096CFIXAST: TStringField;
    QRY_096CCASCATA: TStringField;
    QRY_096CTIPOMVTO: TStringField;
    QRY_096NNROTAB: TFloatField;
    QRY_096NIDTBXGMV: TFloatField;
    QRY_096NIDCADEVE: TFloatField;
    QRY_096NIDTBXSTS: TFloatField;
    QRY_096_1: TOraQuery;
    DTS_096_1: TOraDataSource;
    QRY_093: TOraQuery;
    DTS_093: TOraDataSource;
    QRY_084: TOraQuery;
    DTS_084: TOraDataSource;
    QRY_084NIDTBXGMV: TFloatField;
    QRY_084CDESCRIGMV: TStringField;
    QRY_084NIDGMVRVG: TFloatField;
    QRY_074: TOraQuery;
    DTS_074: TOraDataSource;
    QRY_074NIDCADEVE: TFloatField;
    QRY_074CDESCRIEVE: TStringField;
    QRY_106: TOraQuery;
    DTS_106: TOraDataSource;
    QRY_104: TOraQuery;
    DTS_104: TOraDataSource;
    QRY_105: TOraQuery;
    DTS_105: TOraDataSource;
    QRY_096CATO: TStringField;
    QRY_096CCALCULA: TStringField;
    QRY_096NIDTBXSPT: TFloatField;
    QRY_096NIDTBXACR: TFloatField;
    QRY_096NIDTBXMVP: TFloatField;
    procedure DTS_074DataChange(Sender: TObject; Field: TField);
    procedure DTS_096StateChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DTM_A006ADAT: TDTM_A006ADAT;

implementation

uses A006ADAT;

{$R *.DFM}

procedure TDTM_A006ADAT.DTS_074DataChange(Sender: TObject; Field: TField);
begin
  FRM_A006ADAT.CBE_CDESCRIEVE.Text :=
  DTS_074.DataSet.FieldByName('cdescrieve').DisplayText;
end;

procedure TDTM_A006ADAT.DTS_096StateChange(Sender: TObject);
begin
  FRM_A006ADAT.CBE_CDESCRIEVE.ReadOnly := not(DTS_096.DataSet.State in [dsEdit,dsInsert]);
end;

end.
