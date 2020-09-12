unit D005ADPT;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, MemDS, DBAccess, Ora, VirtualTable;

type
  TDTM_A005ADPT = class(TDataModule)
    QRY_151: TOraQuery;
    QRY_016: TOraQuery;
    QRY_LOCAIS: TOraQuery;
    DTS_LOCAIS: TOraDataSource;
    QRY_151NIDCADREQ: TFloatField;
    QRY_151CDESCRIREQ: TStringField;
    QRY_151NNROPROT: TFloatField;
    QRY_151DDTPROT: TDateTimeField;
    QRY_151CIDDESTINO: TStringField;
    QRY_151NIDTBXTRQ: TFloatField;
    QRY_151CEMITIDO: TStringField;
    QRY_151CEMIGTM: TStringField;
    QRY_151CEMIETQ: TStringField;
    QRY_151CDESCRITRQ: TStringField;
    QRY_151DAT_LUGAR: TStringField;
    QRY_151DAT_CIMPRIMIR: TStringField;
    DTS_151: TOraDataSource;
    QRY_153: TOraQuery;
    DTS_153: TOraDataSource;
    QRY_153CIDDESTINO: TStringField;
    QRY_153DAT_LUGAR: TStringField;
    QRY_151NQTDFOLHAS: TFloatField;
    VTB_PROTOCOLO: TVirtualTable;
    VTB_PROTOCOLONIDCADREQ: TFloatField;
    VTB_PROTOCOLOCDESCRIREQ: TStringField;
    VTB_PROTOCOLONNROPROT: TFloatField;
    VTB_PROTOCOLODDTPROT: TDateTimeField;
    VTB_PROTOCOLOCIDDESTINO: TStringField;
    VTB_PROTOCOLONIDTBXTRQ: TFloatField;
    VTB_PROTOCOLOCEMITIDO: TStringField;
    VTB_PROTOCOLOCEMIGTM: TStringField;
    VTB_PROTOCOLOCEMIETQ: TStringField;
    VTB_PROTOCOLOCDESCRITRQ: TStringField;
    VTB_PROTOCOLODAT_LUGAR: TStringField;
    VTB_PROTOCOLODAT_CIMPRIMIR: TStringField;
    VTB_PROTOCOLONQTDFOLHAS: TFloatField;
    VTB_PROTOCOLOGRUPO: TStringField;
    DTS_PROTOCOLO: TOraDataSource;
    VTB_DESTINO: TVirtualTable;
    DTS_DESTINO: TOraDataSource;
    VTB_DESTINODAT_LUGAR: TStringField;
    VTB_DESTINOGRUPO: TStringField;
    procedure QRY_151AfterOpen(DataSet: TDataSet);
    procedure QRY_151AfterScroll(DataSet: TDataSet);
    procedure QRY_151AfterClose(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DTM_A005ADPT: TDTM_A005ADPT;

implementation

uses A005ADPT;

{$R *.DFM}

procedure TDTM_A005ADPT.QRY_151AfterOpen(DataSet: TDataSet);
begin
  if FRM_A005ADPT = nil then
    exit;
  with FRM_A005ADPT do
    begin
      BTN_DESMARCA.Enabled := DataSet.RecordCount > 0;
      BTN_MARCTODO.Enabled := BTN_DESMARCA.Enabled;
      nCountImpri := 0;
      BTN_IMPRIMIR.Enabled := false;
      QRY_151AfterScroll(DataSet);
    end;
end;

procedure TDTM_A005ADPT.QRY_151AfterScroll(DataSet: TDataSet);
begin
  if FRM_A005ADPT = nil then
    exit;
  with FRM_A005ADPT do
    begin
      BTN_AVANCAR1.Enabled := (DataSet.RecordCount > 0) and (DataSet.RecordCount <> DataSet.RecNo);
      BTN_RETROCEDER1.Enabled := (DataSet.RecordCount > 0) and (DataSet.RecNo <> 1);
      if not(DataSet.ControlsDisabled) then
        DBG_REQ.Repaint;
    end;
end;

procedure TDTM_A005ADPT.QRY_151AfterClose(DataSet: TDataSet);
begin
  QRY_151AfterOpen(DataSet);
  FRM_A005ADPT.nCountImpri := 0;
end;

end.
