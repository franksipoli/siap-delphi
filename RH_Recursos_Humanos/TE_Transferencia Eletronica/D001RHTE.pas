unit D001RHTE;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, MemDS, DBAccess, Ora, ppComm, ppRelatv, ppCache, ppDB, ppDBPipe;

type
  TDTM_A001RHTE = class(TDataModule)
    QRY_062: TOraQuery;
    DTS_062: TOraDataSource;
    QRY_062_01: TOraQuery;
    QRY_062_02: TOraQuery;
    DTS_062_01: TOraDataSource;
    DTS_062_02: TOraDataSource;
    QRY_062_03: TOraQuery;
    QRY_062_04: TOraQuery;
    DTS_062_03: TOraDataSource;
    DTS_062_04: TOraDataSource;
    QRY_062_05: TOraQuery;
    QRY_062_06: TOraQuery;
    DTS_062_05: TOraDataSource;
    DTS_062_06: TOraDataSource;
    QRY_062_07: TOraQuery;
    QRY_062_08: TOraQuery;
    DTS_062_07: TOraDataSource;
    DTS_062_08: TOraDataSource;
    QRY_062_09: TOraQuery;
    QRY_062_10: TOraQuery;
    DTS_062_09: TOraDataSource;
    DTS_062_10: TOraDataSource;
    QRY_062_11: TOraQuery;
    QRY_062_12: TOraQuery;
    DTS_062_11: TOraDataSource;
    DTS_062_12: TOraDataSource;
    QRY_062_13: TOraQuery;
    QRY_062_14: TOraQuery;
    DTS_062_13: TOraDataSource;
    DTS_062_14: TOraDataSource;
    QRY_062_15: TOraQuery;
    QRY_062_16: TOraQuery;
    DTS_062_15: TOraDataSource;
    DTS_062_16: TOraDataSource;
    QRY_062_01DAT_NQTDBBB: TFloatField;
    QRY_062_02DAT_NTOTBBB: TFloatField;
    QRY_062_04DAT_NTOTAEV: TFloatField;
    QRY_062_06DAT_NTOTAGR: TFloatField;
    QRY_062_08DAT_NTOTPAG: TFloatField;
    QRY_062_10DAT_NTOTPEF: TFloatField;
    QRY_062_12DAT_NTOTPCC: TFloatField;
    QRY_062_13DAT_NQTDERR: TFloatField;
    QRY_062_14DAT_NTOTERR: TFloatField;
    QRY_062_16DAT_NTOTBLQ: TFloatField;
    QRY_062NMESREF: TFloatField;
    QRY_062NANOREF: TFloatField;
    QRY_062_17: TOraQuery;
    QRY_062_18: TOraQuery;
    DTS_062_17: TOraDataSource;
    DTS_062_18: TOraDataSource;
    QRY_062_17NIDCADREM: TFloatField;
    QRY_062_17CSEUNRO: TStringField;
    QRY_062_17CNOMFUN: TStringField;
    QRY_062_17NNUMCIC: TFloatField;
    QRY_062_17NBCOPGT: TFloatField;
    QRY_062_17NAGEPGT: TFloatField;
    QRY_062_17DAT_NCTAPGT: TStringField;
    QRY_062_17NVLRLIQ: TFloatField;
    QRY_062_17CDESCRICAO: TStringField;
    QRY_062_17CCTLORI: TStringField;
    QRY_062_18NIDCADREM: TFloatField;
    QRY_062_18CSEUNRO: TStringField;
    QRY_062_18CNOMFUN: TStringField;
    QRY_062_18NNUMCIC: TFloatField;
    QRY_062_18NBCOPGT: TFloatField;
    QRY_062_18NAGEPGT: TFloatField;
    QRY_062_18DAT_NCTAPGT: TStringField;
    QRY_062_18NVLRLIQ: TFloatField;
    QRY_062_18CDESCRICAO: TStringField;
    QRY_062_18CCTLORI: TStringField;
    QRY_062_18CSITUACAO: TStringField;
    QRY_062_18CSITANTER: TStringField;
    QRY_062_18CTIPOREM: TStringField;
    QRY_062_18CTRANTER: TStringField;
    QRY_062_18NTIPOMOVTO: TFloatField;
    QRY_062_17CSITUACAO: TStringField;
    QRY_062_17CSITANTER: TStringField;
    QRY_062_17CTIPOREM: TStringField;
    QRY_062_17CTRANTER: TStringField;
    QRY_062_17NTIPOMOVTO: TFloatField;
    QRY_062_01DAT_NTOTBBB: TFloatField;
    QRY_062DAT_ID: TStringField;
    QRY_062_17NCODFUN: TFloatField;
    QRY_062_18NCODFUN: TFloatField;
    QRY_062_19: TOraQuery;
    DTS_062_19: TOraDataSource;
    DBP_062_19: TppDBPipeline;
    procedure QRY_062_01AfterRefresh(DataSet: TDataSet);
    procedure QRY_062_03AfterRefresh(DataSet: TDataSet);
    procedure QRY_062_05AfterRefresh(DataSet: TDataSet);
    procedure QRY_062_07AfterRefresh(DataSet: TDataSet);
    procedure QRY_062_09AfterRefresh(DataSet: TDataSet);
    procedure QRY_062_11AfterRefresh(DataSet: TDataSet);
    procedure QRY_062_13AfterRefresh(DataSet: TDataSet);
    procedure QRY_062_15AfterRefresh(DataSet: TDataSet);
    procedure QRY_062NMESREFGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure QRY_062_17AfterRefresh(DataSet: TDataSet);
    procedure QRY_062_18AfterRefresh(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DTM_A001RHTE: TDTM_A001RHTE;

implementation

uses A001RHTE;



{$R *.DFM}

procedure TDTM_A001RHTE.QRY_062_01AfterRefresh(DataSet: TDataSet);
begin
  FRM_A001RHTE.BTN_BBB.Enabled :=
  QRY_062_01.FieldByName('dat_nqtdbbb').asInteger > 0;
  FRM_A001RHTE.BTN_BBB.ShowHint := FRM_A001RHTE.BTN_BBB.Enabled;
end;

procedure TDTM_A001RHTE.QRY_062_03AfterRefresh(DataSet: TDataSet);
begin
  with FRM_A001RHTE do
    begin
      BTN_AEV.Enabled :=
      QRY_062_03.FieldByName('dat_nqtdaev').asInteger > 0;
      BTN_AEV.ShowHint := BTN_AEV.Enabled;
      BTN_CNA.Enabled := BTN_AEV.Enabled;
      BTN_CNA.ShowHint := BTN_AEV.Enabled;
    end;
end;

procedure TDTM_A001RHTE.QRY_062_05AfterRefresh(DataSet: TDataSet);
begin
  with FRM_A001RHTE do
   begin
     BTN_AGR.Enabled :=
     QRY_062_05.FieldByName('dat_nqtdagr').asInteger > 0;
     BTN_AGR.ShowHint:= BTN_AGR.Enabled;
     BTN_RET.Enabled := BTN_AGR.Enabled;
     BTN_RET.ShowHint := BTN_AGR.Enabled;
   end;
end;

procedure TDTM_A001RHTE.QRY_062_07AfterRefresh(DataSet: TDataSet);
begin
  FRM_A001RHTE.BTN_PAG.Enabled :=
  QRY_062_07.FieldByName('dat_nqtdpag').asInteger > 0;
  FRM_A001RHTE.BTN_RET.Enabled := FRM_A001RHTE.BTN_PAG.Enabled or FRM_A001RHTE.BTN_AGR.Enabled ;
  FRM_A001RHTE.BTN_PAG.ShowHint := FRM_A001RHTE.BTN_PAG.Enabled;
end;

procedure TDTM_A001RHTE.QRY_062_09AfterRefresh(DataSet: TDataSet);
begin
  FRM_A001RHTE.BTN_PEF.Enabled :=
  QRY_062_09.FieldByName('dat_nqtdpef').asInteger > 0;
  FRM_A001RHTE.BTN_PEF.ShowHint := FRM_A001RHTE.BTN_PEF.Enabled;
end;

procedure TDTM_A001RHTE.QRY_062_11AfterRefresh(DataSet: TDataSet);
begin
  FRM_A001RHTE.BTN_PCC.Enabled :=
  QRY_062_11.FieldByName('dat_nqtdpcc').asInteger > 0;
  FRM_A001RHTE.BTN_PCC.ShowHint := FRM_A001RHTE.BTN_PCC.Enabled;
end;

procedure TDTM_A001RHTE.QRY_062_13AfterRefresh(DataSet: TDataSet);
begin
  FRM_A001RHTE.BTN_ERR.Enabled :=
  QRY_062_13.FieldByName('dat_nqtderr').asInteger > 0;
  FRM_A001RHTE.BTN_ERR.ShowHint := FRM_A001RHTE.BTN_ERR.Enabled;
end;

procedure TDTM_A001RHTE.QRY_062_15AfterRefresh(DataSet: TDataSet);
begin
  FRM_A001RHTE.BTN_BLQ.Enabled :=
  QRY_062_15.FieldByName('dat_nqtdblq').asInteger > 0;
  FRM_A001RHTE.BTN_BLQ.ShowHint := FRM_A001RHTE.BTN_BLQ.Enabled; 
end;

procedure TDTM_A001RHTE.QRY_062NMESREFGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  if Sender.AsInteger = 13 then
    text := '1ª Parc 13º '
  else
    if Sender.AsInteger = 14 then
      text := '13º Salário '
    else
      Text := UpperCase(LongMonthNames[Sender.AsInteger][1]) +
        Copy(LongMonthNames[Sender.AsInteger],2,length(LongMonthNames[Sender.AsInteger])-1) + ' ';
end;

procedure TDTM_A001RHTE.QRY_062_17AfterRefresh(DataSet: TDataSet);
begin
  with FRM_A001RHTE do
    begin
      BTN_ADDTODOS.Enabled :=
      (QRY_062_17.RecordCount > 0) and (QRY_062_17.Active);
      BTN_ADDTODOS.ShowHint :=
      BTN_ADDTODOS.Enabled;
      BTN_ADITEM.Enabled :=
      BTN_ADDTODOS.Enabled;
      BTN_ADITEM.ShowHint :=
      BTN_ADITEM.Enabled;
      BTN_PRIMEIROREG.Enabled :=
      BTN_ADITEM.Enabled;
      BTN_RETROCEDER1.Enabled :=
      BTN_ADITEM.Enabled;
      BTN_AVANCAR1.Enabled :=
      BTN_ADITEM.Enabled;
      BTN_ULTIMOREG.Enabled :=
      BTN_ADITEM.Enabled;
      BTN_DETFUN.Enabled :=
      BTN_ADITEM.Enabled;
    end;

end;

procedure TDTM_A001RHTE.QRY_062_18AfterRefresh(DataSet: TDataSet);
begin
  with  FRM_A001RHTE do
    begin
      BTN_RENITEM.Enabled :=
      (QRY_062_18.RecordCount > 0) and (QRY_062_18.Active);
      BTN_RENITEM.ShowHint :=
      BTN_RENITEM.Enabled;
      BTN_RENTODOS.Enabled :=
      BTN_RENITEM.Enabled;
      BTN_RENTODOS.ShowHint :=
      BTN_RENITEM.Enabled;
      Btn_PrimeiroReg1.Enabled :=
      BTN_RENITEM.Enabled;
      Btn_Retroceder2.Enabled :=
      BTN_RENITEM.Enabled;
      Btn_Avancar2.Enabled :=
      BTN_RENITEM.Enabled;
      Btn_UltimoReg1.Enabled :=
      BTN_RENITEM.Enabled;
      BTN_DEFFUN2.Enabled :=
      BTN_RENITEM.Enabled;
    end;
end;

end.
