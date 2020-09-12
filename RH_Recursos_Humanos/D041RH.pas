unit D041RH;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, Ora, MemDS, DBAccess;

type
  TDTM_A041RH = class(TDataModule)
    QRY_074: TOraQuery;
    DTS_074: TOraDataSource;
    QRY_148: TOraQuery;
    DST_148: TOraDataSource;
    QRY_149: TOraQuery;
    DTS_149: TOraDataSource;
    QRY_143: TOraQuery;
    DTS_143: TOraDataSource;
    QRY_074NIDCADEVE: TFloatField;
    QRY_074CDESCRIEVE: TStringField;
    QRY_074CSTATUSEVE: TStringField;
    QRY_074NFATOREVE: TFloatField;
    QRY_074NSQCALCULO: TFloatField;
    QRY_074NCODLANCTO: TFloatField;
    QRY_074NIDTBXRCL: TFloatField;
    QRY_074NIDTBXGEV: TFloatField;
    QRY_074NIDTBXFLC: TFloatField;
    QRY_074NIDTBXTFP: TFloatField;
    QRY_074NIDTBXTEV: TFloatField;
    QRY_074NIDTBXCFP: TFloatField;
    QRY_074NIDTBXVPD: TFloatField;
    QRY_074NIDTBXREF: TFloatField;
    QRY_148NIDTBXTEV: TFloatField;
    QRY_148CDESCRITEV: TStringField;
    QRY_149NIDTBXTFP: TFloatField;
    QRY_149CDESCRITFP: TStringField;
    QRY_149CCODANT: TStringField;
    QRY_143NIDTBXGEV: TFloatField;
    QRY_143CDESCRIGEV: TStringField;
    QRY_142: TOraQuery;
    DTS_142: TOraDataSource;
    QRY_142NIDTBXFLC: TFloatField;
    QRY_142CDESCRIFLC: TStringField;
    QRY_147: TOraQuery;
    DTS_147: TOraDataSource;
    QRY_147NIDTBXREF: TFloatField;
    QRY_147CDESCRIREF: TStringField;
    QRY_146: TOraQuery;
    DTS_146: TOraDataSource;
    QRY_146NIDTBXRCL: TFloatField;
    QRY_146CDESCRIRCL: TStringField;
    QRY_146CCODANT: TStringField;
    QRY_139: TOraQuery;
    DTS_139: TOraDataSource;
    QRY_139NIDTBXCFP: TFloatField;
    QRY_139CDESCRICFP: TStringField;
    QRY_139CCODANT: TStringField;
    QRY_127: TOraQuery;
    DTS_127: TOraDataSource;
    QRY_127NIDTBXVPD: TFloatField;
    QRY_127CDESCRVPD: TStringField;
    QRY_127NCODTCE: TFloatField;
    QRY_131: TOraQuery;
    DTS_131: TOraDataSource;
    QRY_074_1: TOraQuery;
    DTS_074_1: TOraDataSource;
    QRY_131NIDTAGBSC: TFloatField;
    QRY_131NIDEVEBSC: TFloatField;
    QRY_131NIDCADEVE: TFloatField;
    QRY_074_1NIDCADEVE: TFloatField;
    QRY_074_1CDESCRIEVE: TStringField;
    QRY_074_1CSTATUSEVE: TStringField;
    QRY_074_1NFATOREVE: TFloatField;
    QRY_074_1NSQCALCULO: TFloatField;
    QRY_074_1NCODLANCTO: TFloatField;
    QRY_074_1NIDTBXRCL: TFloatField;
    QRY_074_1NIDTBXGEV: TFloatField;
    QRY_074_1NIDTBXFLC: TFloatField;
    QRY_074_1NIDTBXTFP: TFloatField;
    QRY_074_1NIDTBXTEV: TFloatField;
    QRY_074_1NIDTBXCFP: TFloatField;
    QRY_074_1NIDTBXVPD: TFloatField;
    QRY_074_1NIDTBXREF: TFloatField;
    QRY_131CDESCRIEVE: TStringField;
    procedure QRY_074AfterScroll(DataSet: TDataSet);
    procedure DTS_074StateChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DTM_A041RH: TDTM_A041RH;

implementation

uses A041RH;

{$R *.DFM}

procedure TDTM_A041RH.QRY_074AfterScroll(DataSet: TDataSet);
begin
  FRM_A041RH.CBE_NIDTBXVPD.Text :=
  DTS_127.DataSet.FieldByName('cdescrvpd').DisplayText;
end;

procedure TDTM_A041RH.DTS_074StateChange(Sender: TObject);
begin
 FRM_A041RH.CBE_NIDTBXVPD.ReadOnly :=
 not(DTS_074.DataSet.State in [dsInsert,dsEdit]);
end;

end.
