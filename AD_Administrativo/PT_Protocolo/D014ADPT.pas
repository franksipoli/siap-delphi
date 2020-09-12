unit D014ADPT;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, MemDS, DBAccess, Ora, VirtualTable;

type
  TDTM_A014ADPT = class(TDataModule)
    QRY_ORIGENS: TOraQuery;
    DTS_ORIGENS: TOraDataSource;
    QRY_DESTINOS: TOraQuery;
    DST_DESTINOS: TOraDataSource;
    QRY_151: TOraQuery;
    DTS_151: TOraDataSource;
    QRY_151NNROPROT: TFloatField;
    QRY_151CDESCRITRQ: TStringField;
    QRY_151DAT_IMPRIMIR: TStringField;
    VTB_PROTOCOLO: TVirtualTable;
    VTB_PROTOCOLONIDCADREQ: TFloatField;
    VTB_PROTOCOLOCDESCRIREQ: TStringField;
    VTB_PROTOCOLONNROPROT: TFloatField;
    VTB_PROTOCOLODDTPROT: TDateTimeField;
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
    VTB_DESTINODAT_LUGAR: TStringField;
    VTB_DESTINOGRUPO: TStringField;
    DTS_DESTINO: TOraDataSource;
    QRY_LOCAIS: TOraQuery;
    QRY_151NIDCADREQ: TFloatField;
    QRY_151NIDTBXTRQ: TFloatField;
    QRY_151CEMIGTM: TStringField;
    QRY_151NQTDFOLHAS: TFloatField;
    QRY_151DAT_LUGAR: TStringField;
    QRY_154: TOraQuery;
    QRY_152: TOraQuery;
    DTS_154: TOraDataSource;
    VTB_DESTINOCNROGUIA: TStringField;
    QRY_154NIDTBXGTM: TFloatField;
    QRY_154DDTORIGEM: TDateTimeField;
    QRY_154CIDDESTINO: TStringField;
    QRY_154DDTDESTINO: TDateTimeField;
    QRY_154CNROGUIA: TStringField;
    QRY_154CRECEBIDO: TStringField;
    QRY_152NIDTAGGTM: TFloatField;
    QRY_152NQTDFOLHAS: TFloatField;
    QRY_152NIDCADREQ: TFloatField;
    QRY_152NIDTBXGTM: TFloatField;
    DTS_152: TOraDataSource;
    QRY_151CSITUAREQ: TStringField;
    QRY_151CIDTBXULC: TStringField;
    QRY_LOCAISCIDTBXULC: TStringField;
    QRY_LOCAISCDESCRIULC: TStringField;
    QRY_LOCAISCTIPO: TStringField;
    QRY_LOCAISNIDTBXORG: TFloatField;
    QRY_LOCAISNIDTBXDPT: TFloatField;
    QRY_LOCAISNIDTBXSET: TFloatField;
    QRY_154CIDTBXULC: TStringField;
    VTB_PROTOCOLOCIDTBXULC: TStringField;
    procedure QRY_151AfterOpen(DataSet: TDataSet);
    procedure QRY_151AfterScroll(DataSet: TDataSet);
    procedure QRY_151AfterClose(DataSet: TDataSet);
    procedure QRY_151BeforeInsert(DataSet: TDataSet);
    procedure QRY_151BeforeDelete(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DTM_A014ADPT: TDTM_A014ADPT;

implementation

uses A014ADPT;

{$R *.DFM}

procedure TDTM_A014ADPT.QRY_151AfterOpen(DataSet: TDataSet);
begin
  if FRM_A014ADPT = nil then
    exit;
  with FRM_A014ADPT do
    begin
      BTN_DESMARCA.Enabled := DataSet.RecordCount > 0;
      BTN_MARCTODO.Enabled := BTN_DESMARCA.Enabled;
      nCountImpri := 0;
      BTN_IMPRIMIR.Enabled := false;
      QRY_151AfterScroll(DataSet);
    end;
end;

procedure TDTM_A014ADPT.QRY_151AfterScroll(DataSet: TDataSet);
begin
  if FRM_A014ADPT = nil then
    exit;
  with FRM_A014ADPT do
    begin
      BTN_AVANCAR1.Enabled := (DataSet.RecordCount > 0) and (DataSet.RecordCount <> DataSet.RecNo);
      BTN_RETROCEDER1.Enabled := (DataSet.RecordCount > 0) and (DataSet.RecNo <> 1);
      if not(DataSet.ControlsDisabled) then
        DBG_REQ.Repaint;
    end;
end;

procedure TDTM_A014ADPT.QRY_151AfterClose(DataSet: TDataSet);
begin
  QRY_151AfterOpen(DataSet);
  FRM_A014ADPT.nCountImpri := 0;
end;

procedure TDTM_A014ADPT.QRY_151BeforeInsert(DataSet: TDataSet);
begin
  //se o usuario tentar inserir um registro
  //aborta a operação
  Abort;
end;

procedure TDTM_A014ADPT.QRY_151BeforeDelete(DataSet: TDataSet);
begin
  //se o usuario tentar deletar o registro
  //aborta a operação
  Abort;
end;

end.
