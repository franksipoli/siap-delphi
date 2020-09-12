unit D002RHCP;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ppDB, ppDBPipe, ppBands, ppCtrls, ppPrnabl, ppClass, ppCache, ppComm,
  ppRelatv, ppProd, ppReport, Db, MemDS, DBAccess, Ora, VirtualTable, DateUtil;

type
  TDTM_A002RHCP = class(TDataModule)
    QRY_005: TOraQuery;
    Pop_CartaoPonto: TppDBPipeline;
    TabelaVirtual: TVirtualTable;
    Dts_TabVirtual: TOraDataSource;
    Pop_Qry_P: TppDBPipeline;
    QRY_010: TOraQuery;
    Pop_010: TppDBPipeline;
    DTS_010: TDataSource;
    QRY_010LKP_INTERVALO: TStringField;
    QRY_RelCartPonto: TOraQuery;
    Dts_RelCartPonto: TOraDataSource;
    DTS_005: TOraDataSource;
    QRY_010NIDCADHOR: TFloatField;
    QRY_010CENTRMANHA: TStringField;
    QRY_010CSAIRMANHA: TStringField;
    QRY_010CINTERVALO: TStringField;
    QRY_010CENTRTARDE: TStringField;
    QRY_010CSAIRTARDE: TStringField;
    procedure QRY_010CalcFields(DataSet: TDataSet);
    procedure QRY_005AfterOpen(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DTM_A002RHCP: TDTM_A002RHCP;

implementation

uses DMCTRL, A002RHCP ;

{$R *.DFM}

procedure TDTM_A002RHCP.QRY_010CalcFields(DataSet: TDataSet);
begin
  if (Trim(DataSet.FieldByName('CSAIRMANHA').AsString)<> '') and
     (Trim(DataSet.FieldByName('CENTRTARDE').AsString)<> '') then
    DataSet.FieldByName('LKP_INTERVALO').AsString :=
    DataSet.FieldByName('CSAIRMANHA').AsString +' / '+
    DataSet.FieldByName('CENTRTARDE').AsString
  else
    DataSet.FieldByName('LKP_INTERVALO').AsString := ' / ';
end;

procedure TDTM_A002RHCP.QRY_005AfterOpen(DataSet: TDataSet);
begin
  QRY_005.First;
  with FRM_A002RHCP do
    begin
      while not(QRY_005.Eof) do
        begin
          if CBB_ANO.Items.IndexOf(QRY_005.FieldByName('DAT_Ano').value) = -1 then
            CBB_ANO.Items.Add(QRY_005.FieldByName('DAT_Ano').Value);
          QRY_005.Next;
        end;
    end;

end;

end.
