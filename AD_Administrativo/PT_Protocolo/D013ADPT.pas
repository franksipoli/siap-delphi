unit D013ADPT;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, MemDS, DBAccess, Ora, ppDB, ppComm, ppRelatv, ppCache, ppDBPipe, Mask;

type
  TDTM_A013ADPT = class(TDataModule)
    QRY_A151: TOraQuery;
    DTS_A151: TOraDataSource;
    procedure QRY_A151AfterOpen(DataSet: TDataSet);
    procedure QRY_A151AfterClose(DataSet: TDataSet);
    procedure QRY_A151AfterScroll(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DTM_A013ADPT: TDTM_A013ADPT;

implementation

uses DMCTRL, A013ADPT;

{$R *.DFM}

procedure TDTM_A013ADPT.QRY_A151AfterOpen(DataSet: TDataSet);
begin
  if FRM_A013ADPT <> nil then
    with FRM_A013ADPT do
      begin
        BTN_DETTRAMI.Enabled := DataSet.RecordCount > 0;
        BTN_RETROCEDER1.Enabled := BTN_DETTRAMI.Enabled;
        BTN_AVANCAR1.Enabled := BTN_DETTRAMI.Enabled;
        BTN_REQ.Enabled := BTN_DETTRAMI.Enabled;
      end;
end;

procedure TDTM_A013ADPT.QRY_A151AfterClose(DataSet: TDataSet);
begin
  QRY_A151AfterOpen(DataSet);
end;

procedure TDTM_A013ADPT.QRY_A151AfterScroll(DataSet: TDataSet);
begin
  with FRM_A013ADPT do
    begin
      BTN_AVANCAR1.Enabled := (DataSet.RecordCount > 0) and (DataSet.RecordCount <> DataSet.RecNo);
      BTN_RETROCEDER1.Enabled := (DataSet.RecordCount > 0) and (DataSet.RecNo <> 1);
    end;
end;

end.
