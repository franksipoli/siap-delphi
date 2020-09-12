unit D008ADPT;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, Ora, MemDS, DBAccess;

type
  TDTM_A008ADPT = class(TDataModule)
    QRY_DETALHE: TOraQuery;
    DTS_DETALHE: TOraDataSource;
    QRY_REQPROTO: TOraQuery;
    QRY_CONSULREQ: TOraQuery;
    QRY_CONSULINT: TOraQuery;
    QRY_DETALHECIDDESTINO: TStringField;
    QRY_DETALHEDDTDESTINO: TDateTimeField;
    QRY_DETALHECDESCRIULC: TStringField;
    QRY_DETALHECSITUAREQ: TStringField;
    DTS_CABECLH: TOraDataSource;
    procedure QRY_DETALHEAfterOpen(DataSet: TDataSet);
    procedure QRY_DETALHEAfterClose(DataSet: TDataSet);
    procedure QRY_DETALHEAfterScroll(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DTM_A008ADPT: TDTM_A008ADPT;

implementation

uses DMCTRL, A008ADPT;

{$R *.DFM}

procedure TDTM_A008ADPT.QRY_DETALHEAfterOpen(DataSet: TDataSet);
begin
  if FRM_A008ADPT <> nil then
    with FRM_A008ADPT do
      begin
        BTN_IMPRIMIR.Enabled := DataSet.RecordCount > 0;
        BTN_RETROCEDER1.Enabled := BTN_IMPRIMIR.Enabled;
        BTN_AVANCAR1.Enabled := BTN_IMPRIMIR.Enabled;
        BTN_IMPRIMIR.Enabled := BTN_IMPRIMIR.Enabled;
        BTN_PRIMEIROREG.Enabled := BTN_IMPRIMIR.Enabled;
        BTN_ULTIMOREG.Enabled := BTN_IMPRIMIR.Enabled;
      end;

end;

procedure TDTM_A008ADPT.QRY_DETALHEAfterClose(DataSet: TDataSet);
begin
  QRY_DETALHEAfterOpen(DataSet);
end;

procedure TDTM_A008ADPT.QRY_DETALHEAfterScroll(DataSet: TDataSet);
begin
  if FRM_A008ADPT <> nil then
    with FRM_A008ADPT do
      begin
        BTN_AVANCAR1.Enabled := (DataSet.RecordCount > 0) and (DataSet.RecordCount <> DataSet.RecNo);
        BTN_ULTIMOREG.Enabled := (DataSet.RecordCount > 0) and (DataSet.RecordCount <> DataSet.RecNo);
        BTN_PRIMEIROREG.Enabled := (DataSet.RecordCount > 0) and (DataSet.RecNo <> 1);
        BTN_RETROCEDER1.Enabled := (DataSet.RecordCount > 0) and (DataSet.RecNo <> 1);
      end;
end;

end.
