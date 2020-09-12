unit D018ADPT;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, Ora, MemDS, DBAccess;

type
  TDTM_A018ADPT = class(TDataModule)
    QRY_151: TOraQuery;
    DTS_151: TOraDataSource;
    QRY_LOCAIS: TOraQuery;
    QRY_LOCAISCIDTBXULC: TStringField;
    QRY_LOCAISCDESCRIULC: TStringField;
    QRY_LOCAISCTIPO: TStringField;
    QRY_LOCAISNIDTBXORG: TFloatField;
    QRY_LOCAISNIDTBXDPT: TFloatField;
    QRY_LOCAISNIDTBXSET: TFloatField;
    QRY_151_1: TOraQuery;
    DTS_151_1: TOraDataSource;
    QRY_151NNROPROT: TFloatField;
    QRY_151CDESCRITRQ: TStringField;
    QRY_151_1NNROPROT: TFloatField;
    QRY_151_1CDESCRITRQ: TStringField;
    QRY_151NIDCADREQ: TFloatField;
    QRY_151_1NIDCADREQ: TFloatField;
    QRY_151_1DAT_INSERT: TStringField;
    QRY_151DAT_INSERT: TStringField;
    QRY_151CSITUAREQ: TStringField;
    QRY_151_1CSITUAREQ: TStringField;
    procedure QRY_151AfterScroll(DataSet: TDataSet);
    procedure QRY_151_1AfterScroll(DataSet: TDataSet);
    procedure QRY_151AfterOpen(DataSet: TDataSet);
    procedure QRY_151_1AfterOpen(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DTM_A018ADPT: TDTM_A018ADPT;

implementation

uses A018ADPT;

{$R *.DFM}

procedure TDTM_A018ADPT.QRY_151AfterScroll(DataSet: TDataSet);
begin
  if FRM_A018ADPT = nil then
    exit;
  with FRM_A018ADPT do
    begin
      BTN_AVANCAR1.Enabled := (DataSet.RecordCount > 0) and (DataSet.RecordCount <> DataSet.RecNo);
      BTN_RETROCEDER1.Enabled := (DataSet.RecordCount > 0) and (DataSet.RecNo <> 1);
      DBG_DISP.Repaint;
    end;
end;

procedure TDTM_A018ADPT.QRY_151_1AfterScroll(DataSet: TDataSet);
begin
  if FRM_A018ADPT = nil then
    exit;
  with FRM_A018ADPT do
    begin
      BTN_AVANCAR2.Enabled := (DataSet.RecordCount > 0) and (DataSet.RecordCount <> DataSet.RecNo);
      BTN_RETROCEDER2.Enabled := (DataSet.RecordCount > 0) and (DataSet.RecNo <> 1);
      DBG_AUT.Repaint;
    end;
end;

procedure TDTM_A018ADPT.QRY_151AfterOpen(DataSet: TDataSet);
begin
  if FRM_A018ADPT = nil then
    exit;
  FRM_A018ADPT.BTN_DETALHE.Enabled :=
  DataSet.RecordCount > 0;
  FRM_A018ADPT.BTN_REQ.Enabled :=
  FRM_A018ADPT.BTN_DETALHE.Enabled;
  QRY_151AfterScroll(DataSet);
end;

procedure TDTM_A018ADPT.QRY_151_1AfterOpen(DataSet: TDataSet);
begin
  if FRM_A018ADPT = nil then
    exit;
  FRM_A018ADPT.BTN_DETTRAMI.Enabled :=
  DataSet.RecordCount > 0;
  FRM_A018ADPT.BTN_REQ1.Enabled :=
  FRM_A018ADPT.BTN_DETTRAMI.Enabled;
  QRY_151_1AfterScroll(DataSet);
end;

end.
