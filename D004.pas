unit D004;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, Ora, MemDS, DBAccess;

type
  TDTM_A004 = class(TDataModule)
    QRY_013: TOraQuery;
    DTS_013: TOraDataSource;
    QRY_011: TOraQuery;
    DTS_011: TOraDataSource;
    QRY_014: TOraQuery;
    DTS_014: TOraDataSource;
    QRY_013CNOMELOG: TStringField;
    QRY_013CTIPOREG: TStringField;
    QRY_013CTABORIGEM: TStringField;
    QRY_013NIDTBXBAI: TFloatField;
    QRY_013NIDTBXTPL: TFloatField;
    QRY_013NIDTBXLOC: TFloatField;
    QRY_013NCEP: TIntegerField;
    QRY_013CNOMETPL: TStringField;
    QRY_013CNOMEBAI: TStringField;
    QRY_013CNOMELOC: TStringField;
    QRY_013UFLOC: TStringField;
    QRY_013NIDCADLOG: TFloatField;
    QRY_011NIDTBXBAI: TFloatField;
    QRY_011CNOMEBAI: TStringField;
    QRY_011NIDTBXLOC: TFloatField;
    procedure DTS_013DataChange(Sender: TObject; Field: TField);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DTM_A004: TDTM_A004;

implementation

uses DMCTRL, A004;

{$R *.DFM}

procedure TDTM_A004.DTS_013DataChange(Sender: TObject; Field: TField);
begin
  if DTM_A004.DTS_013.DataSet.State = dsBrowse then
    begin
      QRY_011.MasterSource := DTS_013;
      FRM_A004.CBE_CNOMELOC.Text :=
      DTM_A004.DTS_013.DataSet.FieldByName('CNOMELOC').AsString;
      FRM_A004.EDT_UFLOC.Text :=
      DTM_A004.DTS_013.DataSet.FieldByName('UFLOC').AsString;
      FRM_A004.CBE_CNOMETPL.Text :=
      DTM_A004.DTS_013.DataSet.FieldByName('CNOMETPL').AsString;
    end;
end;

end.
