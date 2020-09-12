unit D006ADPT;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, Ora, MemDS, DBAccess;

type
  TDTM_A006ADPT = class(TDataModule)
    QRY_LOCAIS: TOraQuery;
    QRY_LOCAIS_1: TOraQuery;
    DTS_LOCAIS: TOraDataSource;
    DTS_LOCAIS_1: TOraDataSource;
    QRY_154: TOraQuery;
    DTS_154: TOraDataSource;
    QRY_152: TOraQuery;
    DTS_152: TOraDataSource;
    QRY_152NIDTAGGTM: TFloatField;
    QRY_152NQTDFOLHAS: TFloatField;
    QRY_152NIDCADREQ: TFloatField;
    QRY_152NIDTBXGTM: TFloatField;
    QRY_154NIDTBXGTM: TFloatField;
    QRY_154DDTORIGEM: TDateTimeField;
    QRY_154CIDDESTINO: TStringField;
    QRY_154DDTDESTINO: TDateTimeField;
    QRY_152CDESCRITRQ: TStringField;
    QRY_152NNROPROT: TFloatField;
    QRY_CONSUL: TOraQuery;
    QRY_UPTREQ: TOraQuery;
    QRY_154CNROGUIA: TStringField;
    QRY_154CRECEBIDO: TStringField;
    QRY_154CIDTBXULC: TStringField;
    QRY_CONSULGTREB: TOraQuery;
    procedure DTS_154DataChange(Sender: TObject; Field: TField);
    procedure QRY_152AfterScroll(DataSet: TDataSet);
    procedure QRY_152AfterRefresh(DataSet: TDataSet);
    procedure QRY_152NNROPROTValidate(Sender: TField);
    procedure QRY_152BeforeDelete(DataSet: TDataSet);
    procedure QRY_152BeforePost(DataSet: TDataSet);
    procedure QRY_152NNROPROTSetText(Sender: TField; const Text: String);
    procedure QRY_154AfterScroll(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
    nProtOld : Integer;
  end;

var
  DTM_A006ADPT: TDTM_A006ADPT;

implementation

uses A006ADPT, MPLLib;

{$R *.DFM}

procedure TDTM_A006ADPT.DTS_154DataChange(Sender: TObject; Field: TField);
begin
  with FRM_A006ADPT do
    begin
      DBD_DDTORIGEM.ReadOnly := not(DTS_154.DataSet.State in [dsInsert,dsEdit]);
      DBD_DDTDESTINO.ReadOnly := FRM_A006ADPT.DBD_DDTORIGEM.ReadOnly;
      EDT_HORAS.ReadOnly := FRM_A006ADPT.DBD_DDTORIGEM.ReadOnly ;
      EDT_HORAS_1.ReadOnly := FRM_A006ADPT.DBD_DDTORIGEM.ReadOnly ;
      if not(DTS_154.DataSet.State in [dsInsert,dsEdit]) then
        begin
          DBD_DDTORIGEM.Text :=
          FormatDateTime('DD/MM/YYYY', DTS_154.DataSet.FieldByName('ddtorigem').asDateTime);
          EDT_HORAS.Text :=
          FormatDateTime('HH:MM', DTS_154.DataSet.FieldByName('ddtorigem').asDateTime);
          DBD_DDTDESTINO.Text :=
          FormatDateTime('DD/MM/YYYY', DTS_154.DataSet.FieldByName('ddtdestino').asDateTime);
          EDT_HORAS_1.Text :=
          FormatDateTime('HH:MM', DTS_154.DataSet.FieldByName('ddtdestino').asDateTime);
        end;
    end;
end;

procedure TDTM_A006ADPT.QRY_152AfterScroll(DataSet: TDataSet);
begin
  with FRM_A006ADPT do
    begin
      BTN_AVANCAR1.Enabled := (DataSet.RecordCount > 0) and (DataSet.RecordCount <> DataSet.RecNo);
      BTN_RETROCEDER1.Enabled := (DataSet.RecordCount > 0) and (DataSet.RecNo <> 1);
    end;

end;

procedure TDTM_A006ADPT.QRY_152AfterRefresh(DataSet: TDataSet);
begin
  QRY_152AfterScroll(DataSet);
end;

procedure TDTM_A006ADPT.QRY_152NNROPROTValidate(Sender: TField);
begin
  if qry_152.State in [dsEdit,dsInsert] then
    begin
      with FRM_A006ADPT do
        begin
//          if Sender.AsInteger <> nProtocolo then
            begin
              if ListProtocolo.IndexOf(Sender.AsString) <> -1 then
                begin
                  MessageDlg('Este protocolo já foi lançado nesta guia!',mtInformation,[mbOk],0);
                  Abort;
                end;
              QRY_CONSUL.Close;
              QRY_CONSUL.ParamByName('nnroprot').asInteger := Sender.AsInteger;
              QRY_CONSUL.Open;
              if QRY_CONSUL.IsEmpty then
                begin
                  MessageDlg('Número de protocolo não encontrado !',mtInformation,[mbOk],0);
                  //Sender.FocusControl;
                  QRY_CONSUL.Close;
                  Abort;
                end
              else
                if QRY_CONSUL.FieldByName('cemigtm').asString = 'N' then
                  begin
                    MessageDlg('Ainda não foi emitida a guia de tramitação pelo sistema para este protocolo !',mtInformation,[mbOk],0);
                    //Sender.FocusControl;
                    QRY_CONSUL.Close;
                    Abort;
                  end
                else
                  if QRY_CONSUL.FieldByName('csituareq').asString = 'CANCELADO' then
                    begin
                      MessageDlg('Este número de protocolo está cancelado !',mtInformation,[mbOk],0);
                      //Sender.FocusControl;
                      QRY_CONSUL.Close;
                      Abort;
                    end
                  else
                    if QRY_CONSUL.FieldByName('ddtprot').AsDateTime >
                       (StrToDateTime(DBD_DDTORIGEM.Text + ' ' + EDT_HORAS.Text)) then
                      begin
                        MessageDlg('Data da criação do protocolo é maior que a data da origem da guia!',mtInformation,[mbOk],0);
                        //Sender.FocusControl;
                        QRY_CONSUL.Close;
                        Abort;
                      end
                    else
                      begin
                        if LKP_ORIGEM.Text = 'PROTOCOLO' then
                          QRY_152.FieldByName('nqtdfolhas').asInteger :=
                          QRY_CONSUL.FieldByName('nqtdfolhas').asInteger;
                        if (QRY_152.State = dsEdit) and
                           (QRY_152.FieldByName('nidcadreq').asInteger <>
                            QRY_CONSUL.FieldByName('nidcadreq').asInteger) then
                          begin
                            ListProtAtua.Add(QRY_152.FieldByName('nidcadreq').asString);
                            ListProtAtua.Add(QRY_CONSUL.FieldByName('nidcadreq').asString);
                            if ListProtocolo.IndexOf(IntToStr(nProtOld)) <> - 1 then
                              ListProtocolo.Delete(ListProtocolo.IndexOf(IntToStr(nProtOld)));
                            ListProtocolo.Add(Sender.asString);
                            nProtOld := 0;
                          end;
                        QRY_152.FieldByName('nidcadreq').asInteger :=
                        QRY_CONSUL.FieldByName('nidcadreq').asInteger;
                        QRY_152.FieldByName('cdescritrq').asString :=
                        QRY_CONSUL.FieldByName('cdescritrq').asString;
                        QRY_CONSUL.Close;
                      end;

            end;
        end;
    end;
end;

procedure TDTM_A006ADPT.QRY_152BeforeDelete(DataSet: TDataSet);
begin
  FRM_A006ADPT.ListProtAtua.Add(DataSet.FieldByName('nidcadreq').asString);
  if FRM_A006ADPT.ListProtocolo.IndexOf(DataSet.FieldByName('nnroprot').asString) <> -1 then
    FRM_A006ADPT.ListProtocolo.Delete(
    FRM_A006ADPT.ListProtocolo.IndexOf(DataSet.FieldByName('nnroprot').asString));
end;

procedure TDTM_A006ADPT.QRY_152BeforePost(DataSet: TDataSet);
begin
  if DataSet.State = dsInsert then
    begin
      FRM_A006ADPT.ListProtocolo.Add(DataSet.FieldByName('nnroprot').asString);
      FRM_A006ADPT.ListProtAtua.Add(DataSet.FieldByName('nidcadreq').asString);
    end;  
end;

procedure TDTM_A006ADPT.QRY_152NNROPROTSetText(Sender: TField;
  const Text: String);
begin
  if Sender.Text <> '' then
    nProtOld := StrToInt(LimpaMask(Sender.Text))
  else
    nProtOld := 0;
  Sender.AsString := Text;
end;

procedure TDTM_A006ADPT.QRY_154AfterScroll(DataSet: TDataSet);
begin
  with FRM_A006ADPT do
    begin
      if not(DataSet.State in [dsInsert,dsEdit]) then
        begin
          if DataSet.FieldByName('cnroguia').asString <> '' then
            begin
              BTN_ALTERAR.Enabled := not(DataSet.FieldByName('cnroguia').asString[1] = 'A') ;
              BTN_EXCLUIR.Enabled := BTN_ALTERAR.Enabled;
            end
          else
            begin
              BTN_ALTERAR.Enabled := true ;
              BTN_EXCLUIR.Enabled := BTN_ALTERAR.Enabled;
            end;
        end;
    end;
end;

end.
