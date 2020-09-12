unit A002RHCP;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, Grids, DBGrids, QuickRpt, Qrctrls, QRExport, Gauges,
  Buttons, LMDCustomControl, LMDCustomPanel, LMDCustomBevelPanel,
  LMDCustomParentPanel, LMDCustomGroupBox, LMDGroupBox, Mask, DateUtil, DB,
  DBAccess, Ora, VirtualTable, ppBands, ppCtrls, ppPrnabl, ppClass,
  ppCache, ppComm, ppRelatv, ppProd, ppReport, ppStrtch, ppSubRpt;

type
  TFRM_A002RHCP = class(TForm)
    LMDGroupBox2: TLMDGroupBox;
    CHK_TODSERVID: TCheckBox;
    CHK_ESCINTERVALO: TCheckBox;
    LMDGroupBox1: TLMDGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    LMDGroupBox3: TLMDGroupBox;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    CBB_MESINI: TComboBox;
    CBB_MESFIN: TComboBox;
    CBB_ANO: TComboBox;
    MDT_MATINICIAL: TMaskEdit;
    MDT_MATFINAL: TMaskEdit;
    Btn_Fechar: TBitBtn;
    Btn_Ok: TBitBtn;
    CartaoPonto: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppShape37: TppShape;
    ppShape56: TppShape;
    ppLabel41: TppLabel;
    ppShape1: TppShape;
    ppShape2: TppShape;
    ppShape15: TppShape;
    ppShape16: TppShape;
    ppShape17: TppShape;
    ppLabel2: TppLabel;
    ppShape18: TppShape;
    ppLabel13: TppLabel;
    ppShape19: TppShape;
    ppShape20: TppShape;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppShape21: TppShape;
    ppLabel17: TppLabel;
    ppShape22: TppShape;
    ppLabel18: TppLabel;
    ppShape23: TppShape;
    ppLabel19: TppLabel;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    ppShape3: TppShape;
    ppLabel11: TppLabel;
    ppShape4: TppShape;
    ppLabel14: TppLabel;
    ppShape5: TppShape;
    ppLabel16: TppLabel;
    ppShape6: TppShape;
    ppShape7: TppShape;
    ppShape8: TppShape;
    ppShape11: TppShape;
    ppLabel15: TppLabel;
    ppLabel21: TppLabel;
    ppShape13: TppShape;
    ppShape14: TppShape;
    ppShape24: TppShape;
    ppShape25: TppShape;
    ppLabel22: TppLabel;
    ppLabel23: TppLabel;
    ppShape26: TppShape;
    ppShape27: TppShape;
    ppShape28: TppShape;
    ppShape29: TppShape;
    ppShape30: TppShape;
    ppShape31: TppShape;
    ppShape32: TppShape;
    ppShape33: TppShape;
    ppShape34: TppShape;
    ppShape35: TppShape;
    ppLabel24: TppLabel;
    ppLabel25: TppLabel;
    ppLabel26: TppLabel;
    ppLabel27: TppLabel;
    ppLabel28: TppLabel;
    ppLabel29: TppLabel;
    ppLabel30: TppLabel;
    ppLabel31: TppLabel;
    ppLabel32: TppLabel;
    ppLabel33: TppLabel;
    ppShape46: TppShape;
    ppLabel20: TppLabel;
    ppShape9: TppShape;
    ppShape12: TppShape;
    ppShape47: TppShape;
    ppShape48: TppShape;
    ppLabel8: TppLabel;
    ppDBText1: TppDBText;
    ppShape38: TppShape;
    ppLabel35: TppLabel;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppShape10: TppShape;
    ppLabel12: TppLabel;
    ppShape39: TppShape;
    ppShape40: TppShape;
    ppLabel36: TppLabel;
    ppShape41: TppShape;
    ppDBText4: TppDBText;
    DBT_ENDDPREF: TppDBText;
    DBT_CNPJPREF: TppDBText;
    ppColumnHeaderBand1: TppColumnHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppShape60: TppShape;
    ppShape61: TppShape;
    ppShape62: TppShape;
    ppShape63: TppShape;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppDBText9: TppDBText;
    ppShape36: TppShape;
    Lbl_Dia: TppLabel;
    ppColumnFooterBand1: TppColumnFooterBand;
    ppFooterBand1: TppFooterBand;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppLabel5: TppLabel;
    ppDBText5: TppDBText;
    ppDBText10: TppDBText;
    ppDBText12: TppDBText;
    ppDBText13: TppDBText;
    ppDBText14: TppDBText;
    ppDBText15: TppDBText;
    ppDBText16: TppDBText;
    ppDBText17: TppDBText;
    procedure FormCreate(Sender: TObject);
    procedure CHK_TODSERVIDClick(Sender: TObject);
    procedure CHK_ESCINTERVALOClick(Sender: TObject);
    procedure MDT_MATINICIALClick(Sender: TObject);
    procedure CBB_MESINIKeyPress(Sender: TObject; var Key: Char);
    procedure CBB_MESFINKeyPress(Sender: TObject; var Key: Char);
    procedure CBB_ANOKeyPress(Sender: TObject; var Key: Char);
    procedure Btn_OkClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Btn_FecharClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure MDT_MATINICIALExit(Sender: TObject);
    procedure Lbl_DiaGetText(Sender: TObject; var Text: String);
    procedure ppDBText2GetText(Sender: TObject; var Text: String);
    procedure ppDBText3GetText(Sender: TObject; var Text: String);
    procedure CBB_ANOEnter(Sender: TObject);
    procedure CBB_ANOChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    function TrataDtFimMes(Data: TDate): Boolean;
    procedure TrataQry;
  end;

var
  FRM_A002RHCP: TFRM_A002RHCP;
const
  Mes : array [1..12] of String[9] = ('Janeiro','Fevereiro',
  'Março','Abril','Maio','Junho','Julho','Agosto','Setembro','Outubro','Novembro','Dezembro');
implementation

uses D002RHCP, MPLCtrl, DMCTRL, MPLLib, UVariaveis;

{$R *.DFM}

function TFRM_A002RHCP.TrataDtFimMes(Data: TDate): Boolean;
  var
    wDia,wMes,wAno : Word;
  procedure InsertTabVirt(nVezes: Integer);
   var
    nCont : Integer;
    oReg : TBookmark;
  begin
     Result := true;
     with DTM_A002RHCP do
       begin
         oReg:= TabelaVirtual.GetBookmark;
         for nCont := 1 to nVezes do
           begin
             TabelaVirtual.Insert;
             TabelaVirtual.Post;
           end;
         TabelaVirtual.GotoBookmark(oReg);
         TabelaVirtual.FreeBookmark(oReg);
       end;
  end;

begin
  Result := false;
  DecodeDate(Data,wAno,wMes,wDia);
  if wMes = 2 then
    begin
      if wDia in [28,29] then
        if ExtractDay(IncDay(Data,1)) = 1 then
          if not(DTM_A002RHCP.TabelaVirtual.Eof) then
            InsertTabVirt(32 - wDia)

    end
  else
    if wDia in [30,31] then
      if ExtractDay(IncDay(Data,1)) = 1 then
        if not(DTM_A002RHCP.TabelaVirtual.Eof) then
          InsertTabVirt(32 - wDia);

end;


procedure TFRM_A002RHCP.FormCreate(Sender: TObject);
begin
//  height := 267;
end;

procedure TFRM_A002RHCP.CHK_TODSERVIDClick(Sender: TObject);
begin
   // if CHK_TODSERVID.Checked then
  CHK_ESCINTERVALO.Checked := not(CHK_TODSERVID.Checked);
  CHK_ESCINTERVALOClick(CHK_ESCINTERVALO);
end;

procedure TFRM_A002RHCP.CHK_ESCINTERVALOClick(Sender: TObject);
begin
  CBB_MESFIN.Enabled := false;
  CBB_MESINI.Enabled := false;
  CBB_MESFIN.Text := '';
  CBB_MESINI.Text := '';
  CBB_ANO.Text := '';
  CBB_ANO.Items.Clear;
  CHK_TODSERVID.Checked := not(CHK_ESCINTERVALO.Checked);
  if CHK_ESCINTERVALO.Checked then
    begin
      MDT_MATINICIAL.EditMask := '!99999999;1;_';
      MDT_MATFINAL.EditMask := '!99999999;1;_';
      MDT_MATFINAL.ReadOnly := false;
      MDT_MATINICIAL.ReadOnly := false;
      MDT_MATFINAL.TabStop:= true;
      MDT_MATINICIAL.TabStop:= true;
      MDT_MATINICIAL.SetFocus;
      DTM_A002RHCP.QRY_005.SQL[1] := 'where nMatricula Between :nMatIni and :nMatFim';
    end
  else
   begin
     MDT_MATINICIAL.EditMask := '';
     MDT_MATFINAL.EditMask := '';
     MDT_MATFINAL.ReadOnly := true;
     MDT_MATINICIAL.ReadOnly := true;
     MDT_MATFINAL.TabStop:= false;
     MDT_MATINICIAL.TabStop:= false;
     CHK_TODSERVID.SetFocus;
     DTM_A002RHCP.QRY_005.SQL[1] := ' ';
     DTM_A002RHCP.QRY_005.ExecSQL;
   end;




end;

procedure TFRM_A002RHCP.MDT_MATINICIALClick(Sender: TObject);
begin
  if not(CHK_ESCINTERVALO.Checked) then
    begin
      CHK_ESCINTERVALO.Checked:= true;
      CHK_ESCINTERVALOClick(MDT_MATINICIAL);
    end;
end;

procedure TFRM_A002RHCP.CBB_MESINIKeyPress(Sender: TObject; var Key: Char);
begin
  Key := #0;
end;

procedure TFRM_A002RHCP.CBB_MESFINKeyPress(Sender: TObject; var Key: Char);
begin
  Key := #0;
end;

procedure TFRM_A002RHCP.CBB_ANOKeyPress(Sender: TObject; var Key: Char);
begin
  Key := #0;
end;

procedure TFRM_A002RHCP.Btn_OkClick(Sender: TObject);
  var
    nDia, nData, nVez, nItDias, nMat, nHorario : Integer;
    dDataPrim, dDataProx : TDate;
    oReg : TBookmark;
    cFuncao, cNomeSrv, cCrtps : String;
begin
  if Trim(CBB_MESFIN.Text) <> '' then
    if MonthFromName(CBB_MESFIN.Text,8) <
       MonthFromName(CBB_MESINI.Text,8) then
      begin
        MessageDlg('O mês final escolhido é menor que o mês inicial.'+#13+
                   'Favor escolher o mês final maoir que o mês inicial.'+#13+
                   'Exemplo : Mês Inicial = Janeiro'+#13+
                   '                Mês Final   = Fevereiro. ' ,mtWarning,[mbok],0);
        CBB_MESFIN.SetFocus;
        exit;
      end;

  if CHK_ESCINTERVALO.Checked then
    if (Trim(MDT_MATFINAL.Text) = '') or
       (Trim(MDT_MATINICIAL.Text)='') then
      begin
        MessageDlg('Favor informar o intervalo de matriculas!',mtWarning,[mbok],0);
        exit;
      end;
  if (Trim(CBB_ANO.Text) = '') then
    begin
      MessageDlg('Favor informar o ano desejado!',mtWarning,[mbOk],0);
      CBB_ANO.SetFocus;
      exit;
    end;
  if (Trim(CBB_MESINI.Text)='') then
    begin
      MessageDlg('Favor informar o mês inicial desejado!',mtWarning,[mbOk],0);
      CBB_MESINI.SetFocus;
      exit;
    end;
 TrataQry;
  with DTM_A002RHCP do
    begin
      TabelaVirtual.Clear;
      nDia := 0;
      //pocisiona no primeiro registro do dataset RelCartPonto
      DBGenerica(Dts_RelCartPonto,'Conexao',0,1);
      while not(QRY_RelCartPonto.Eof)do
        begin
         // nDia := nDia +1;
          TabelaVirtual.Append;

          TabelaVirtual.FieldByName('nMatricula').Value :=
          QRY_RelCartPonto.FieldByName('nMatricula').value;
          TabelaVirtual.FieldByName('dDataPto').AsDateTime :=
          QRY_RelCartPonto.FieldByName('dDataPto').AsDateTime;
          TabelaVirtual.FieldByName('cNomeSrv').AsString :=
          QRY_RelCartPonto.FieldByName('cNomeSrv').AsString;
          TabelaVirtual.FieldByName('cDescCargo').AsString :=
          QRY_RelCartPonto.FieldByName('cDescCargo').AsString;
          TabelaVirtual.FieldByName('nCRTPS/nSERIE').AsString :=
          IntToStr(QRY_RelCartPonto.FieldByName('nCRTPS').AsInteger)+' / '+
          IntToStr(QRY_RelCartPonto.FieldByName('nSERIE').AsInteger);
          TabelaVirtual.FieldByName('nIdCadHor').AsInteger :=
          QRY_RelCartPonto.FieldByName('nIdCadHor').AsInteger;
          repeat
            if StrToTime(QRY_RelCartPonto.FieldByName('cHora').AsString) < StrToTime('13:00') then
              begin
                if (QRY_RelCartPonto.FieldByName('cMovimen').AsString = '010') or
                   (QRY_RelCartPonto.FieldByName('cMovimen').AsString = '110') then
                  begin
                    if Trim(TabelaVirtual.FieldByName('cHoraEntManha').AsString) = '' then
                      TabelaVirtual.FieldByName('cHoraEntManha').AsString :=
                      QRY_RelCartPonto.FieldByName('cHora').AsString;
                  end
                else
                  if Trim(TabelaVirtual.FieldByName('cHoraSaiManha').AsString) = '' then
                    TabelaVirtual.FieldByName('cHoraSaiManha').AsString :=
                    QRY_RelCartPonto.FieldByName('cHora').AsString;
              end
            else
              if StrToTime(QRY_RelCartPonto.FieldByName('cHora').AsString) >= StrToTime('13:00') then
                if (QRY_RelCartPonto.FieldByName('cMovimen').AsString = '010') or
                   (QRY_RelCartPonto.FieldByName('cMovimen').AsString = '110') then
                  begin
                    if Trim(TabelaVirtual.FieldByName('cHoraEntraTarde').AsString) = '' then
                      TabelaVirtual.FieldByName('cHoraEntraTarde').AsString :=
                      QRY_RelCartPonto.FieldByName('cHora').AsString;
                  end
                else
                  if Trim(TabelaVirtual.FieldByName('cHoraSaiTarde').AsString) = '' then
                    TabelaVirtual.FieldByName('cHoraSaiTarde').AsString :=
                    QRY_RelCartPonto.FieldByName('cHora').AsString;
            //proximo registro
            DBGenerica(Dts_RelCartPonto,'Conexao',0,3);
          until (QRY_RelCartPonto.FieldByName('dDataPto').AsDateTime <> TabelaVirtual.FieldByName('dDataPto').AsDateTime)
                or (QRY_RelCartPonto.Eof);
          TabelaVirtual.Post;

        end;{while not(QRY_RelCartPonto.Eof) do}

         TabelaVirtual.First;
         repeat
           nMat := TabelaVirtual.FieldByName('nMatricula').AsInteger;
           cNomeSrv := TabelaVirtual.FieldByName('cNomeSrv').AsString;
           cFuncao := TabelaVirtual.FieldByName('cDescCargo').AsString;
           cCrtps := TabelaVirtual.FieldByName('nCRTPS/nSERIE').AsString;
           nHorario := TabelaVirtual.FieldByName('nIdCadHor').AsInteger;
           if ExtractDay(TabelaVirtual.FieldByName('dDataPto').AsDateTime) > 1 then
             begin
               nDia := ExtractDay(TabelaVirtual.FieldByName('dDataPto').AsDateTime);
               dDataPrim := TabelaVirtual.FieldByName('dDataPto').AsDateTime;
               oReg := TabelaVirtual.GetBookmark;
               for nVez := 1 to nDia-1 do
                 begin
                   TabelaVirtual.Insert;
                   TabelaVirtual.FieldByName('nMatricula').Value := nMat;
                   TabelaVirtual.FieldByName('cNomeSrv').AsString := cNomeSrv;
                   TabelaVirtual.FieldByName('cDescCargo').AsString := cFuncao;
                   TabelaVirtual.FieldByName('nCRTPS/nSERIE').AsString := cCrtps;
                   TabelaVirtual.FieldByName('nIdCadHor').AsInteger := nHorario;
                   TabelaVirtual.FieldByName('dDataPto').AsDateTime := dDataPrim -1;

                   if (DiaSemana(TabelaVirtual.FieldByName('dDataPto').AsDateTime) = 'Domingo') or
                      (DiaSemana(TabelaVirtual.FieldByName('dDataPto').AsDateTime) = 'Sábado') then
                        TabelaVirtual.FieldByName('cHoraEntManha').AsString :=
                        DiaSemana(TabelaVirtual.FieldByName('dDataPto').AsDateTime);

                   TabelaVirtual.Post;
                   dDataPrim :=TabelaVirtual.FieldByName('dDataPto').AsDateTime;
                 end;
               TabelaVirtual.GotoBookmark(oReg);
             end;


           while not(TabelaVirtual.Eof) do
             begin
               dDataPrim := TabelaVirtual.FieldByName('dDataPto').AsDateTime;
               TabelaVirtual.Next;

               if TabelaVirtual.FieldByName('nMatricula').AsInteger <> nMat then
                 begin
                   if not(TrataDtFimMes(dDataPrim)) then
                     begin
                       nDia := 31 -ExtractDay(dDataPrim);
                       for nVez := 1 to nDia do
                         begin
                           TabelaVirtual.Insert;
                           TabelaVirtual.FieldByName('nMatricula').Value := nMat;
                           TabelaVirtual.FieldByName('cNomeSrv').AsString := cNomeSrv;
                           TabelaVirtual.FieldByName('cDescCargo').AsString := cFuncao;
                           TabelaVirtual.FieldByName('nCRTPS/nSERIE').AsString := cCrtps;
                           TabelaVirtual.FieldByName('nIdCadHor').AsInteger := nHorario;
                           TabelaVirtual.FieldByName('dDataPto').AsDateTime := IncDay(dDataPrim,1);
                           if (DiaSemana(TabelaVirtual.FieldByName('dDataPto').AsDateTime) = 'Domingo') or
                              (DiaSemana(TabelaVirtual.FieldByName('dDataPto').AsDateTime) = 'Sábado') then
                             TabelaVirtual.FieldByName('cHoraEntManha').AsString :=
                             DiaSemana(TabelaVirtual.FieldByName('dDataPto').AsDateTime);
                           TabelaVirtual.Post;
                           dDataPrim := TabelaVirtual.FieldByName('dDataPto').AsDateTime;
                           TabelaVirtual.Next;
                           if TrataDtFimMes(dDataPrim) then
                             break;
                         end;
                     end;

                   // TabVirtInsert(32 - ExtractDay(dDataPrim),nMat);
                    break;
                 end;

               TrataDtFimMes(dDataPrim);
               dDataProx := TabelaVirtual.FieldByName('dDataPto').AsDateTime;
               if (DaysBetween(dDataPrim,dDataProx)-1)>1 then // função DaysBetween retorna o numero de dias q tem uma data
                 begin                                        // contando tambem o dia das datas passadas como parametro,
                   oReg := TabelaVirtual.GetBookmark;         // por exemplo entre a data de hoje a de amanha ele retorna dois dias por isso uso -1
                   //TabVirtInsert((DaysBetween(dDataPrim,dDataProx)-2)); // neste caso uso -2 para retornar apenas os dias de intevalo entre as duas datas
                   for nVez:= 1 to (DaysBetween(dDataPrim,dDataProx)-2) do
                     begin
                       TabelaVirtual.Insert;
                       TabelaVirtual.FieldByName('dDataPto').AsDateTime := IncDay(dDataPrim,1);
                       TabelaVirtual.FieldByName('nMatricula').Value := nMat;
                       TabelaVirtual.FieldByName('cNomeSrv').AsString := cNomeSrv;
                       TabelaVirtual.FieldByName('cDescCargo').AsString := cFuncao;
                       TabelaVirtual.FieldByName('nCRTPS/nSERIE').AsString := cCrtps;
                       TabelaVirtual.FieldByName('nIdCadHor').AsInteger := nHorario;
                       if (DiaSemana(TabelaVirtual.FieldByName('dDataPto').AsDateTime) = 'Domingo') or
                          (DiaSemana(TabelaVirtual.FieldByName('dDataPto').AsDateTime) = 'Sábado') then
                         TabelaVirtual.FieldByName('cHoraEntManha').AsString :=
                         DiaSemana(TabelaVirtual.FieldByName('dDataPto').AsDateTime);
                       TabelaVirtual.Post;
                       dDataPrim := TabelaVirtual.FieldByName('dDataPto').AsDateTime;
                       TabelaVirtual.Next;
                       TrataDtFimMes(dDataPrim);
                     end;
                   TabelaVirtual.GotoBookmark(oReg);
                 end;
             end;
         until TabelaVirtual.Eof;

           TabelaVirtual.Last;
           dDataPrim := TabelaVirtual.FieldByName('dDataPto').AsDateTime;
           nDia := 32 -ExtractDay(dDataPrim);
           for nVez := 1 to nDia do
             begin
               TabelaVirtual.Append;
               TabelaVirtual.FieldByName('nMatricula').Value := nMat;
               TabelaVirtual.FieldByName('dDataPto').AsDateTime := IncDay(dDataPrim,1);
               TabelaVirtual.FieldByName('cNomeSrv').AsString := cNomeSrv;
               TabelaVirtual.FieldByName('cDescCargo').AsString := cFuncao;
               TabelaVirtual.FieldByName('nCRTPS/nSERIE').AsString := cCrtps;
               TabelaVirtual.FieldByName('nIdCadHor').AsInteger := nHorario;
               if ExtractDay(IncDay(dDataPrim,1)) <> 1 then
                 if (DiaSemana(TabelaVirtual.FieldByName('dDataPto').AsDateTime) = 'Domingo') or
                    (DiaSemana(TabelaVirtual.FieldByName('dDataPto').AsDateTime) = 'Sábado') then
                   TabelaVirtual.FieldByName('cHoraEntManha').AsString :=
                   DiaSemana(TabelaVirtual.FieldByName('dDataPto').AsDateTime);
               TabelaVirtual.Post;
               dDataPrim := TabelaVirtual.FieldByName('dDataPto').AsDateTime;
               TabelaVirtual.Next;
             end;

      TabelaVirtual.FreeBookmark(oReg);

      Imprimir(CartaoPonto,TOraQuery(Dts_TabVirtual.DataSet),Nil);

    end;//final with DTM_A002RHCP do
end;
procedure TFRM_A002RHCP.FormShow(Sender: TObject);
begin
  Acesso(nMatricula,'A002RHCP',DTM_A002RHCP);
end;

procedure TFRM_A002RHCP.TrataQry;
begin
  with DTM_A002RHCP.QRY_RelCartPonto do
    begin
      close;
      SQL.Clear;
      SQL.Add('select CadCpt.*, CadSev.cNomeSrv, CadSev.nCRTPS, CadSev.nSerie,');
      SQL.Add('CadCag.cDescCargo, CadSev.nIdCadHor');
      SQL.Add('from CadCpt, CadSev, CadCag');
      SQL.Add('where CadSev.nMatricula = CadCpt.nMatricula and');
      SQL.Add('CadCag.nidCadCag = CadSev.nidCadCag and ');
      if CHK_ESCINTERVALO.Checked then
        begin
          SQL.Add('CadCpt.nMatricula between :nMat and :nMat2 and');
          ParamByName('nMat').AsInteger := StrToInt(MDT_MATINICIAL.Text);
          ParamByName('nMat2').AsInteger := StrToInt(MDT_MATFINAL.Text);
        end;


      SQL.Add('Extract( month from CadCpt.dDataPto) Between :nData1 and :nData2');
      ParamByName('nData1').AsInteger := MonthFromName(CBB_MESINI.Text,8);
      if Trim(CBB_MESFIN.Text) = '' then
        ParamByName('nData2').AsInteger := MonthFromName(CBB_MESFIN.Items.Strings[CBB_MESFIN.Items.Count - 1],8)
      else
        ParamByName('nData2').AsInteger := MonthFromName(CBB_MESFIN.Text,8);

      SQL.Add('and extract(year from dDataPto) = '+CBB_ANO.Text);
      SQL.Add('order by CadCpt.nMatricula,CadCpt.dDataPto,CadCpt.cHora');
      Open;
    end;
end;

procedure TFRM_A002RHCP.Btn_FecharClick(Sender: TObject);
begin
  close;
end;

procedure TFRM_A002RHCP.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin

  Action := oControlForms.Saidas(Sender,[DTM_A002RHCP],DTM_A002RHCP.QRY_005);
end;

procedure TFRM_A002RHCP.MDT_MATINICIALExit(Sender: TObject);
begin
  if Trim(TMaskEdit(Sender).Text) <> '' then
    TMaskEdit(Sender).Text := StrZero(StrToInt(Trim(TMaskEdit(Sender).Text)),8);
end;

procedure TFRM_A002RHCP.Lbl_DiaGetText(Sender: TObject; var Text: String);
begin


 if Lbl_Dia.Caption = '' then
  Lbl_Dia.Caption := '0';

 if Lbl_Dia.Caption = '31' then
   begin
    Lbl_Dia.Caption := '';
    exit;
   end;
 Lbl_Dia.Caption := IntToStr(StrToInt(Lbl_Dia.Caption)+1);
end;

procedure TFRM_A002RHCP.ppDBText2GetText(Sender: TObject;
  var Text: String);

begin
  if Text<> '' then
    if ExtractMonth(StrToDate(Text)) in [1..12] then
      Text := Mes[ExtractMonth(StrToDate(Text))];
end;
procedure TFRM_A002RHCP.ppDBText3GetText(Sender: TObject;
  var Text: String);
begin
  if Text <> '' then
    Text := IntToStr(ExtractYear(StrToDate(Text)));
end;



procedure TFRM_A002RHCP.CBB_ANOEnter(Sender: TObject);
begin
  if CHK_ESCINTERVALO.Checked then
    begin
      if Trim(MDT_MATINICIAL.Text) = '' then
        begin
          MessageDlg('Matricula inicial deve der um valor!',mtInformation,[mbOk],0);
          MDT_MATINICIAL.SetFocus;
          exit;
        end
      else
        if Trim(MDT_MATFINAL.Text) = '' then
          begin
            MessageDlg('Matricula final deve der um valor!',mtInformation,[mbOk],0);
            MDT_MATFINAL.SetFocus;
            exit;
          end;

      with DTM_A002RHCP.QRY_005 do
        begin
          ParamByName('nMatIni').AsInteger := StrToInt(MDT_MATINICIAL.Text);
          ParamByName('nMatFim').AsInteger := StrToInt(MDT_MATFINAL.Text);
          ExecSQL;
        end;
    end;
end;

procedure TFRM_A002RHCP.CBB_ANOChange(Sender: TObject);
begin
  with DTM_A002RHCP.QRY_005 do
    begin
      CBB_MESFIN.Text := '';
      CBB_MESFIN.Items.Clear;
      CBB_MESINI.Text := '';
      CBB_MESINI.Items.Clear;
      Filter := 'DAT_Ano = '+CBB_ANO.Text;
      Filtered := true;
      //pocisiona no primeiro registro
      DBGenerica(DTM_A002RHCP.DTS_005,'Conexao',0,1);

      while not(Eof) do
        begin
          if CBB_MESINI.Items.IndexOf(Mes[FieldByName('DAT_Mes').AsInteger]) = -1 then
            CBB_MESINI.Items.Add(Mes[FieldByName('DAT_Mes').AsInteger]);
          //proximo registro
          DBGenerica(DTM_A002RHCP.DTS_005,'Conexao',0,3);
        end;
      CBB_MESFIN.Items := CBB_MESINI.Items;
      CBB_MESFIN.Enabled := true;
      CBB_MESINI.Enabled := true;
      Filtered := false;
    end;
end;

end.
