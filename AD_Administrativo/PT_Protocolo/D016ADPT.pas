unit D016ADPT;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, MemDS, DBAccess, Ora;

type
  TDTM_A016ADPT = class(TDataModule)
    QRY_LOCAIS: TOraQuery;
    DTS_LOCAIS: TOraDataSource;
    QRY_154: TOraQuery;
    DTS_154: TOraDataSource;
    QRY_154CNROGUIA: TStringField;
    QRY_154DAT_LUGAR: TStringField;
    QRY_154_1: TOraQuery;
    DTS_154_1: TOraDataSource;
    QRY_154_1CNROGUIA: TStringField;
    QRY_154_1DAT_LUGAR: TStringField;
    QRY_154NIDTBXGTM: TFloatField;
    QRY_154_1NIDTBXGTM: TFloatField;
    QRY_154DAT_INSERT: TStringField;
    QRY_154_1DAT_INSERT: TStringField;
    QRY_LOCAISCIDTBXULC: TStringField;
    QRY_LOCAISCDESCRIULC: TStringField;
    QRY_LOCAISCTIPO: TStringField;
    QRY_LOCAISNIDTBXORG: TFloatField;
    QRY_LOCAISNIDTBXDPT: TFloatField;
    QRY_LOCAISNIDTBXSET: TFloatField;
    procedure QRY_154AfterScroll(DataSet: TDataSet);
    procedure QRY_154_1AfterScroll(DataSet: TDataSet);
    procedure QRY_154AfterOpen(DataSet: TDataSet);
    procedure QRY_154_1AfterOpen(DataSet: TDataSet);
    procedure QRY_154_1AfterExecute(Sender: TObject; Result: Boolean);
    procedure QRY_154AfterExecute(Sender: TObject; Result: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DTM_A016ADPT: TDTM_A016ADPT;

implementation

uses A016ADPT;

{$R *.DFM}

procedure TDTM_A016ADPT.QRY_154AfterScroll(DataSet: TDataSet);
begin
  if FRM_A016ADPT = nil then
    exit;
  with FRM_A016ADPT do
    begin
      BTN_AVANCAR1.Enabled := (DataSet.RecordCount > 0) and (DataSet.RecordCount <> DataSet.RecNo);
      BTN_RETROCEDER1.Enabled := (DataSet.RecordCount > 0) and (DataSet.RecNo <> 1);
      DBG_DISP.Repaint;
    end;
end;

procedure TDTM_A016ADPT.QRY_154_1AfterScroll(DataSet: TDataSet);
begin
  if FRM_A016ADPT = nil then
    exit;
  with FRM_A016ADPT do
    begin
      BTN_AVANCAR2.Enabled := (DataSet.RecordCount > 0) and (DataSet.RecordCount <> DataSet.RecNo);
      BTN_RETROCEDER2.Enabled := (DataSet.RecordCount > 0) and (DataSet.RecNo <> 1);
      DBG_AUT.Repaint;
    end;  
end;

procedure TDTM_A016ADPT.QRY_154AfterOpen(DataSet: TDataSet);
begin
  if FRM_A016ADPT = nil then
    exit;
  FRM_A016ADPT.BTN_DETALHE.Enabled :=
  DataSet.RecordCount > 0;
  QRY_154AfterScroll(DataSet);

end;

procedure TDTM_A016ADPT.QRY_154_1AfterOpen(DataSet: TDataSet);
begin
  if FRM_A016ADPT = nil then
    exit;
  FRM_A016ADPT.BTN_DETTRAMI.Enabled :=
  DataSet.RecordCount > 0;
  QRY_154_1AfterScroll(DataSet);


end;

procedure TDTM_A016ADPT.QRY_154_1AfterExecute(Sender: TObject;
  Result: Boolean);
begin
  DTM_A016ADPT.QRY_154_1AfterOpen(DTM_A016ADPT.QRY_154_1);
end;

procedure TDTM_A016ADPT.QRY_154AfterExecute(Sender: TObject;
  Result: Boolean);
begin
  DTM_A016ADPT.QRY_154AfterOpen(DTM_A016ADPT.QRY_154);
end;

end.
