unit D014RH;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, Ora, MemDS, DBAccess, DateUtil;

type
  TDTM_A014RH = class(TDataModule)
    QRY_119: TOraQuery;
    QRY_119CDESCRIVTG: TStringField;
    QRY_119NPERCVGC: TFloatField;
    QRY_119DAT_DIAS: TFloatField;
    QRY_119DAT_VALOR: TFloatField;
    QRY_119NVALORSLR: TFloatField;
    DTS_119: TOraDataSource;
    QRY_098: TOraQuery;
    DTS_098: TOraDataSource;
    QRY_119NIDTBXVTG: TFloatField;
    QRY_119DDATAINI: TDateTimeField;
    QRY_119DDATAFIM: TDateTimeField;
    QRY_119NIDTAGFFU: TFloatField;
    QRY_119NIDTAGVGC: TFloatField;
    procedure QRY_119AfterScroll(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DTM_A014RH: TDTM_A014RH;

implementation

uses A014RH, DMCTRL;

{$R *.DFM}

procedure TDTM_A014RH.QRY_119AfterScroll(DataSet: TDataSet);
  var
    mes, ano, anofim, mesfim : word;
    lStatusBtn : Boolean;
begin
  with FRM_A014RH,DMControle do
    begin
      if DataSet.State = dsInsert then
        begin
          DBL_NIDTBXVTG.Enabled := true;
          DED_NPERCVGC.Enabled := true;
          exit;
        end;
      if DataSet.RecordCount = 0 then
        begin
          BTN_ALTERAR.Enabled := false;
          BTN_EXCLUIR.Enabled := false;
          exit;
        end;
      lStatusBtn := true;
      mes := ExtractMonth(DataSet.FieldByName('ddataini').asDateTime);
      ano := ExtractYear(DataSet.FieldByName('ddataini').asDateTime);
      mesfim := ExtractMonth(DataSet.FieldByName('ddatafim').asDateTime);
      anofim := ExtractYear(DataSet.FieldByName('ddatafim').asDateTime);

      if ano < QRY_P.FieldByName('nanopgto').asInteger then
        BTN_EXCLUIR.Enabled := false
      else
        if (ano = QRY_P.FieldByName('nanopgto').asInteger) and
           (mes < QRY_P.FieldByName('nmespgto').asInteger ) then
          BTN_EXCLUIR.Enabled := false
        else
          BTN_EXCLUIR.Enabled := true;



      DBL_NIDTBXVTG.Enabled := BTN_EXCLUIR.Enabled;
      DED_NPERCVGC.Enabled := BTN_EXCLUIR.Enabled;
    end;
end;




{procedure TDTM_A014RH.QRY_119AfterScroll(DataSet: TDataSet);
  var
    mes, ano, anofim, mesfim : word;
    lStatusBtn : Boolean;
begin
  with FRM_A014RH,DMControle do
    begin
      if DataSet.RecordCount = 0 then
        begin
          BTN_ALTERAR.Enabled := false;
          BTN_EXCLUIR.Enabled := false;
          exit;
        end;
      lStatusBtn := true;
      mes := ExtractMonth(DataSet.FieldByName('ddataini').asDateTime);
      ano := ExtractYear(DataSet.FieldByName('ddataini').asDateTime);
      mesfim := ExtractMonth(DataSet.FieldByName('ddatafim').asDateTime);
      anofim := ExtractYear(DataSet.FieldByName('ddatafim').asDateTime);

      if ano < Qry_P.FieldByName('nanopgto').AsInteger then
        begin
          if DataSet.FieldByName('ddatafim').isNull then
            begin
              BTN_ALTERAR.Enabled := true;
              BTN_EXCLUIR.Enabled := false;
            end
          else
          if anofim < Qry_P.FieldByName('nanopgto').AsInteger then
            begin
              BTN_ALTERAR.Enabled := false;
              BTN_EXCLUIR.Enabled := false;
            end
          else
            if anofim > Qry_P.FieldByName('nanopgto').AsInteger then
              begin
                BTN_ALTERAR.Enabled := true;
                BTN_EXCLUIR.Enabled := false;
              end
            else
              if mesfim < Qry_P.FieldByName('nmespgto').AsInteger then
                begin
                  BTN_ALTERAR.Enabled := false;
                  BTN_EXCLUIR.Enabled := false;
                end
              else
                begin
                  BTN_ALTERAR.Enabled := true;
                  BTN_EXCLUIR.Enabled := true;
                end;

        end
      else
        if ano = Qry_P.FieldByName('nanopgto').AsInteger then
          begin
            if mes < Qry_P.FieldByName('nmespgto').AsInteger then
              begin
                 BTN_ALTERAR.Enabled := true;
                 BTN_EXCLUIR.Enabled := false;
              end
            else
              begin
                BTN_ALTERAR.Enabled := true;
                BTN_EXCLUIR.Enabled := true;
              end;
          end
        else
          begin
            BTN_ALTERAR.Enabled := true;
            BTN_EXCLUIR.Enabled := true;
          end;



      DBL_NIDTBXVTG.Enabled := BTN_EXCLUIR.Enabled;
      DED_NPERCVGC.Enabled := BTN_EXCLUIR.Enabled;
    end;
end;}



end.
