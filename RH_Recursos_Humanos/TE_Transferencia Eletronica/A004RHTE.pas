unit A004RHTE;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  lmdcctrl, lmdctrl, StdCtrls, Mask, ToolEdit, Grids, DBGrids, RXDBCtrl,
  lmdstdcS, ExtCtrls, Buttons, ImgList, ComCtrls, lmdextcS, lmdeditb,
  lmdeditc, LMDEdit, RxLookup, DBCtrls, lmdbredt, RzTreeVw, RzListVw,
  lmdextcA, LMDShadowFill, LMDCustomPanelFill, LMDPanelFill,
  LMDGraphicControl, LMDBaseMeter, LMDCustomProgress, LMDProgress,
  LMDControl, LMDBaseControl, LMDBaseGraphicControl, LMDBaseLabel,
  LMDCustomSimpleLabel, LMDSimpleLabel, LMDCustomControl, LMDCustomPanel,
  LMDCustomBevelPanel, LMDCustomParentPanel, LMDCustomGroupBox, LMDGroupBox,
  Db, DBTables, AppEvnts, ActnList, LMDCustomComponent, LMDApplicationCtrl,
  LMDGlobalHotKey, LMDWndProcComponent, LMDMouseBaseCtrl,
  LMDMousePositioner, lmdformA, LMDCustomHint, LMDHint,
  LMDContainerComponent, LMDBaseDialog, LMDTipDlg, LMDCustomShapeHint,
  LMDMessageHint, RxDBComb, PageControlEx, Ora, MemDS, DBAccess, CurrEdit,
  OraScript, delmenu, DBClient, MConnect, SConnect,
  LMDSimplePanel, jpeg, LMDBaseGraphicButton, LMDCustomSpeedButton,
  LMDSpeedButton, LMDFill, Gauges ;

type
  TFRM_A004RHTE = class(TForm)
    DelSysMenuItems1: TDelSysMenuItems;
    LMDSimplePanel1: TLMDSimplePanel;
    GAU_AEV: TGauge;
    GAU_FPG: TGauge;
    LBL_ORIGEM: TLabel;
    BTN_GERAR: TBitBtn;
    BTN_SAIR: TBitBtn;
    LBL_DATAPGTO: TLabel;
    DTE_PAG: TDateEdit;
    LBL_FPG: TLabel;
    LMDSimplePanel2: TLMDSimplePanel;
    LMDSimplePanel3: TLMDSimplePanel;
    CBB_BANCO: TComboBox;
    Label1: TLabel;
    procedure BTN_SAIRClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure BTN_GERARClick(Sender: TObject);
    procedure CBB_BANCOKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
     nTotAev: Integer;
     nMesRef: Integer;
     nAnoRef: Integer;
     cSqlQry: String;
     procedure GeraArqRemessa(CodBco: Integer; NomeBco: String; BcoRed: String);
  end;

var
  FRM_A004RHTE: TFRM_A004RHTE;

implementation

uses A001RHTE, MPLCtrl, UVariaveis, CtrlForms, DMCTRL, D004RHTE, GeraCnab ;

{$R *.DFM}

procedure TFRM_A004RHTE.BTN_SAIRClick(Sender: TObject);
begin
   close ;
end;

procedure TFRM_A004RHTE.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:= oControlForms.Saidas(Self,[DTM_A004RHTE],DTM_A004RHTE.QRY_062);
end;

procedure TFRM_A004RHTE.FormShow(Sender: TObject);
begin
  //verifica acesso do usuario
  if Acesso(nMatricula,'A004RHTE',DTM_A004RHTE) then
    close;
  cSqlQry := DTM_A004RHTE.QRY_062.SQL.Text;
  FRM_A004RHTE.OnShow := nil;
 {é atribuido ao OnShow do Form o valor nil para que o mesmo seja executado apenas uma vez}
 {pelo fato que se outra aplicação for chamada pela tecla F3, e ao retornar da aplicação que foi chamada pela tecla}
 {o evento OnShow deste form não acontecerá, ou seja não será executado, para permanecer o mesmo status da aplicação}
 {quando o F3 foi chamado}
end;

procedure TFRM_A004RHTE.GeraArqRemessa(CodBco: Integer; NomeBco: String; BcoRed: String);
  var
    ccnpj,cnomeent : string;
    cnomearq : string;
    arq : TextFile;
    ListaArq : TStringList;
    cHeaderArq : String;
    cHeaderLote : String;
    cTrailerLote : String;
    cTrailerArq : String;
    nCodLote : integer;
    nQtdRegArq : integer;
    nSomaLiq : Double;
    cSeg_a : String;
    nBcoPgt : Integer;
    nAgePgt : integer;
    i : Integer;
    HeaderArq: THeaderArq;
    HeaderLote: THeaderLote;
    SegA: TSegA;
    TrailerLote: TTrailerLote;
    TrailerArq: TTrailerArquivo;
begin
  with DTM_A004RHTE do
    begin
      if MessageDlg('Data de pagamento correta! ' + DTE_PAG.Text,mtConfirmation,[mbYes,mbNo],0) = mryes then
        begin
          ListaArq := TStringList.Create;
          BTN_GERAR.Enabled := false;
          BTN_SAIR.Enabled := false;
          GAU_AEV.MaxValue := nTotAev;
          QRY_062.Close;
          QRY_062.SQL.Text := cSqlQry;
          if BcoRed = 'BB' then
            begin
              QRY_062.AddWhere('nagepgt <> 0');
              QRY_062.AddWhere('nctapgt <> 0');
            end;
          QRY_063.ParamByName('ncodbco').asInteger := CodBco;
          QRY_063.ExecSql;
          QRY_063.First;
          DMControle.Conexao.StartTransaction;
          try
            while not(QRY_063.Eof) do
              begin
                QRY_QTDORI.close;
                QRY_QTDORI.ParamByName('nmesref').asInteger := nMesRef;
                QRY_QTDORI.ParamByName('nanoref').asInteger := nAnoRef;
                QRY_QTDORI.ParamByName('ccodori').asString :=
                QRY_063.FieldByName('ccodori').asString;
                QRY_QTDORI.Open;
                if QRY_QTDORI.FieldByName('nqtd').asInteger > 0 then
                  begin
                    QRY_063.Edit;
                    QRY_063.FieldByName('nnroseq').asInteger :=
                    QRY_063.FieldByName('nnroseq').asInteger + 1;
                    QRY_063.Post;
                    cnomearq := QRY_063.FieldByName('cpasta').asString +'\remessa\' +
                      Copy(QRY_063.FieldByName('cdescricao').asString,1,1) +
                      format('%.2d',[nMesRef]) + Copy(IntToStr(nAnoRef),3,2) +
                      format('%.3d',[QRY_063.FieldByName('nnroseq').asInteger]) + '.TXT';

                    AssignFile(arq,cnomearq);
                    Rewrite(arq);
                    ListaArq.Add(cnomearq);


                    //FPM
                    if QRY_063.FieldByName('ccodori').asString = '004' then
                      begin
                        cnomeent := 'INSTITUTO DE PREVIDENCIA DE GUARATUBA';
                        ccnpj := '07046712000190';
                      end
                    else
                      begin
                        cnomeent := DMControle.Qry_P.FieldByName('cnomeraz').asString;
                        ccnpj := DMControle.Qry_P.FieldByName('ccnpj').asString;
                      end;
                    with HeaderArq do
                      begin
                        codbco := QRY_063.FieldByName('ncodbco').DisplayText;
                        loteserv := '0000';
                        regheaderarq := '0';
                        if BcoRed = 'ITAU' then
                          HeaderArq.nversaoarq := '050'
                        else
                          HeaderArq.nversaoarq := '030';
                        tipoinsc := '2';
                        cpfcnpj := ccnpj;
                        //codconvbco := '856807';
                        codconvbco := '865159';
                        agedeb := QRY_063.FieldByName('nagencia').asString;
                        digage := QRY_063.FieldByName('ndigage').asString;
                        conta := QRY_063.FieldByName('nconta').asString;
                        digconta := IntToStr(QRY_063.FieldByName('ndigito').asInteger);
                        dac := IntToStr(QRY_063.FieldByName('ndigito').asInteger);
                        empresa := cnomeent;
                        bco := NomeBco;
                        codrem := '1';
                        datgera := FormatDateTime('ddmmyyyy',Now);
                        hgera := FormatDateTime('hhmmss',Now);
                        densgrav := '0';
                        seqarq := QRY_063.FieldByName('nnroseq').asString;
                      end;
                    cHeaderArq := GeraHeaderArq(HeaderArq,BcoRed);
                    {cHeaderArq := QRY_063.FieldByName('ncodbco').DisplayText +'00000' + Format('%6s',[' '])+
                      '0502' + ccnpj + Format('%20s',[' ']) +
                      Format('%.5d',[QRY_063.FieldByName('nagencia').asInteger]) + ' ' + Format('%.12d',[QRY_063.FieldByName('nconta').asInteger]) +' ' +
                      Format('%.1d',[QRY_063.FieldByName('ndigito').asInteger]) +
                      UpperCase(Copy(cnomeent,1,30)) +
                      'BANCO ITAU' + Format('%30s',[' ']) + '1' + FormatDateTime('ddmmyyy',Now) +
                      FormatDateTime('hhmmss',Now) + Format('%.14d',[0]) + Format('%69s',[' ']);}

                    Writeln(Arq,cHeaderArq);

                    LBL_ORIGEM.Caption := QRY_063.FieldByName('cdescricao').asString;
                    nCodLote := 0;
                    nQtdRegArq := 2;

                    QRY_064.First;
                    while not(QRY_064.Eof) do
                      begin
                        QRY_062.Close;
                        QRY_062.ParamByName('nmesref').asInteger := nmesref;
                        QRY_062.ParamByName('nanoref').asInteger := nanoref;
                        QRY_062.ParamByName('ccodori').asString :=
                        QRY_063.FieldByName('ccodori').asString;
                        QRY_062.ParamByName('nformapgto').asInteger :=
                        QRY_064.FieldByName('ncodnobco').asInteger;
                        QRY_062.Open;

                        if QRY_062.RecordCount > 0 then
                          begin
                            nCodLote := nCodLote + 1;
                            nSomaLiq := 0;
                            with HeaderLote do
                              begin
                                codbco := QRY_063.FieldByName('ncodbco').DisplayText;
                                idlote := IntToStr(nCodLote);
                                regheaderlote := '1';
                                tipooper := 'C';
                                tiposerv := QRY_062.FieldByName('ntipopgto').asString;
                                formpag := QRY_062.FieldByName('nformapgto').asString;
                                if BcoRed = 'ITAU' then
                                  laylote := '031'
                                else
                                  laylote := '020';
                                tipoinsc := '2';
                                cpfcnpj := ccnpj;
                                //codconvbco := '856807';
                                codconvbco := '865159';
                                agedeb := QRY_063.FieldByName('nagencia').asString;
                                digage := QRY_063.FieldByName('ndigage').asString;
                                conta := QRY_063.FieldByName('nconta').asString;
                                digconta := QRY_063.FieldByName('ndigito').asString;
                                dac := QRY_063.FieldByName('ndigito').asString;
                                empresa := cnomeent;
                                enderec := DMControle.Qry_P.FieldByName('cendpref').asString;
                                numero := DMControle.Qry_P.FieldByName('nnumero').asString;
                                compleme := DMControle.Qry_P.FieldByName('ccomplepref').asString;
                                cidade := DMControle.Qry_P.FieldByName('municipio').asString;
                                cep := DMControle.Qry_P.FieldByName('ncep').asString;
                                uf := DMControle.Qry_P.FieldByName('cuf').asString;
                              end;
                            cHeaderLote := GeraHeaderLote(HeaderLote,BcoRed);

                            {cHeaderLote := QRY_063.FieldByName('ncodbco').DisplayText +
                              Format('%.4d',[nCodLote])+'1C'+Format('%.2d',[QRY_062.FieldByName('ntipopgto').asInteger]) +
                              Format('%.2d',[QRY_062.FieldByName('nformapgto').asInteger]) + '031' + ' ' +
                              '2' + ccnpj + Format('%20s',[' ']) +
                              Format('%.5d',[QRY_063.FieldByName('nagencia').asInteger]) + ' ' +
                              Format('%.12d',[QRY_063.FieldByName('nconta').asInteger]) + ' ' +
                              Format('%.1d',[QRY_063.FieldByName('ndigito').asInteger]) +
                              UpperCase(Copy(cnomeent,1,30)) +
                              Format('%40s',[' ']) + Format('%-30s',[UpperCase(DMControle.Qry_P.FieldByName('cendpref').asString)]) +
                              Format('%.5d',[DMControle.Qry_P.FieldByName('nnumero').asInteger]) +
                              Format('%-15s',[UpperCase(DMControle.Qry_P.FieldByName('ccomplepref').asString)]) +
                              Format('%-20s',[UpperCase(DMControle.Qry_P.FieldByName('municipio').asString)]) +
                              Format('%.8d',[DMControle.Qry_P.FieldByName('ncep').asInteger]) +
                              UpperCase(DMControle.Qry_P.FieldByName('cuf').asString) + Format('%18s',[' ']);}
                            Writeln(Arq,cHeaderLote);
                            LBL_FPG.Caption := QRY_064.FieldByName('cdescricao').asString;
                            GAU_FPG.MaxValue := QRY_062.RecordCount;
                            GAU_FPG.Progress := 0;
                            FRM_A004RHTE.Repaint;
                            QRY_062.First;
                            while not(QRY_062.Eof) do
                              begin
                                GAU_AEV.Progress := GAU_AEV.Progress + 1;
                                GAU_FPG.Progress := GAU_FPG.Progress + 1;
                                if GAU_FPG.PercentDone = 86 then
                                  ShowMessage('Aqui');
                                QRY_062.Edit;
                                if QRY_062.FieldByName('ctiporem').asString = 'C' then
                                  QRY_062.FieldByName('ntipomovto').asString :='999'
                                else
                                  begin
                                    QRY_062.FieldByName('ncodlote').AsInteger := nCodLote;
                                    QRY_062.FieldByName('nnroreg').asInteger := QRY_062.RecNo;
                                    QRY_062.FieldByName('ntipomovto').asString := '000';
                                    QRY_062.FieldByName('dprevpagto').AsDateTime := DTE_PAG.Date;
                                  end;
                                //QRY_062.FieldByName('nnroreg').asInteger := QRY_062.RecNo;
                                QRY_062.FieldByName('csituacao').asString := 'AGR';
                                QRY_062.FieldByName('cremessa').asString := Copy(cnomearq,length(cnomearq)-13,12);
                                QRY_062.FieldByName('ddatarem').AsDateTime := Now;
                                QRY_062.FieldByName('chorarem').asString := FormatDateTime('hhmmss',Now);

                                QRY_062.Post;

                                if QRY_062.FieldByName('ctiporem').asString = 'C' then
                                  begin
                                    SegA.codbco := QRY_063.FieldByName('ncodbco').asString;
                                    SegA.idlote := QRY_062.FieldByName('ncodlote').asString;
                                    SegA.tiporeg := '3';
                                    SegA.seqreg := IntToStr(QRY_062.RecNo);
                                    SegA.codseg := 'A';
                                    SegA.tipomov := QRY_062.FieldByName('ntipomovto').asString;
                                    SegA.codbcofavore := '0';
                                    SegA.agebcofavor := '0';
                                    SegA.numcontafavore := '0';
                                    SegA.digverefag := '0';
                                    SegA.nome := ' ';
                                    SegA.seunro := ' ';
                                    SegA.datapgto := '00000000';
                                    SegA.tipomoeda := ' ';
                                    SegA.valor := '0';
                                    SegA.nossonro := QRY_062.FieldByName('cnossonro').asString;
                                    SegA.cpffavore := '00000000000000';

                                  {cSeg_a := Format('%.3d',[QRY_063.FieldByName('ncodbco').asInteger]) +
                                    Format('%.4d',[QRY_062.FieldByName('ncodlote').asInteger]) + '3' +
                                    Format('%.5d',[QRY_062.RecNo]) + 'A' +
                                    Format('%.3d',[QRY_062.FieldByName('ntipomovto').asInteger]) +
                                    Format('%.6d',[0]) + Format('%70s',[' ']) + Format('%.8d',[0]) +
                                    Format('%3s',[' ']) + Format('%.10d',[0]) + Format('%.10d',[0]) + Format('%.10d',[0]) +
                                    Format('%-15s',[QRY_062.FieldByName('cnossonro').asString]) +
                                    Format('%5s',[' ']) + Format('%.10d',[0]) + Format('%.13d',[0]) +
                                    Format('%20s',[' ']) + Format('%.10d',[0]) + Format('%.10d',[0]) +
                                    Format('%23s',[' '])}
                                  end
                                else
                                  begin
                                    if (QRY_062.FieldByName('nbcopgt').asInteger = 0) and
                                       (BcoRed = 'ITAU') then
                                      begin
                                        nBcoPgt := QRY_063.FieldByName('ncodbco').asInteger;
                                        nAgePgt := QRY_063.FieldByName('nagencia').asInteger;
                                      end
                                    else
                                      begin
                                        nBcoPgt := QRY_062.FieldByName('nbcopgt').asInteger;
                                        nAgePgt := QRY_062.FieldByName('nagepgt').asInteger;
                                      end;

                                    SegA.codbco := QRY_063.FieldByName('ncodbco').asString;
                                    SegA.idlote := QRY_062.FieldByName('ncodlote').asString;
                                    SegA.tiporeg := '3';
                                    SegA.seqreg := QRY_062.FieldByName('nnroreg').asString;
                                    SegA.codseg := 'A';
                                    SegA.tipomov := QRY_062.FieldByName('ntipomovto').asString;
                                    SegA.codinst := '0';
                                    SegA.codbcofavore := IntToStr(nBcoPgt);
                                    SegA.agebcofavor := IntToStr(nagepgt);
                                    SegA.digverage := QRY_062.FieldByName('ndigage').asString;
                                    SegA.numcontafavore := QRY_062.FieldByName('nctapgt').asString;
                                    SegA.digverefag := QRY_062.FieldByName('cdigcta').asString;
                                    SegA.digveref := QRY_062.FieldByName('cdigcta').asString;
                                    SegA.nome := QRY_062.FieldByName('cnomfun').asString;
                                    SegA.seunro := QRY_062.FieldByName('cseunro').asString;
                                    SegA.datapgto := FormatDateTime('ddmmyyyy',DTE_PAG.Date);
                                    SegA.valor := FloatToStr(QRY_062.FieldByName('nvlrliq').asFloat);
                                    SegA.nossonro := ' ';
                                    SegA.cpffavore := '00000000000000';
                                    {cSeg_a := Format('%.3d',[QRY_063.FieldByName('ncodbco').asInteger]) +
                                      Format('%.4d',[QRY_062.FieldByName('ncodlote').asInteger]) + '3' +
                                      Format('%.5d',[QRY_062.FieldByName('nnroreg').asInteger]) + 'A' +
                                      Format('%.3d',[QRY_062.FieldByName('ntipomovto').asInteger]) +
                                      Format('%.3d',[0]) + Format('%.3d',[nBcoPgt]) +
                                      '0' + Format('%.4d',[nagepgt]) + ' ' +
                                      Format('%.12d',[QRY_062.FieldByName('nctapgt').asInteger]) + ' ' +
                                      Format('%.1d',[QRY_062.FieldByName('cdigcta').asInteger]) +
                                      Format('%-30s',[QRY_062.FieldByName('cnomfun').asString]) +
                                      Format('%-20s',[QRY_062.FieldByName('cseunro').asString]) +
                                      FormatDateTime('ddmmyyyy',DTE_PAG.Date) + 'REA' +
                                      Format('%.15d',[0]) + FormatFloat('000000000000000', QRY_062.FieldByName('nvlrliq').asFloat * 100) +
                                      Format('%20s',[' ']) + Format('%.10d',[0]) + Format('%.13d',[0]);}
                                    //se for ordem de pagamento então informa o número de cpf
                                    if (QRY_062.FieldByName('nformapgto').asInteger = 10) and
                                       (QRY_062.FieldByName('nnumcic').asString <> '') then
                                      //cSeg_a := cSeg_a + Format('%20s',[' ']) + Format('%.6d',[0]) + QRY_062.FieldByName('nnumcic').DisplayText
                                      SegA.cpffavore := QRY_062.FieldByName('nnumcic').DisplayText
                                    else
                                      SegA.cpffavore := '00000000000000';
                                      //cSeg_a := cSeg_a + Format('%20s',[' ']) + Format('%.10d',[0]) + Format('%.10d',[0]);

                                      //cSeg_a := cSeg_a + Format('%23s',[' ']);

                                      nSomaLiq := nSomaLiq + QRY_062.FieldByName('nvlrliq').AsFloat;

                                  end;
                                cSeg_a := GeraSegA(SegA,BcoRed);
                                Writeln(Arq,cSeg_a);

                                QRY_062.Next;
                              end;

                            TrailerLote.codbco := QRY_063.FieldByName('ncodbco').asString;
                            TrailerLote.idlote := QRY_062.FieldByName('ncodlote').asString;
                            TrailerLote.tiporeg := '5';
                            TrailerLote.qtdereglote := IntToStr(QRY_062.RecordCount + 2);
                            TrailerLote.totalpgto := FloatToStr(nSomaLiq);

                            {cTrailerLote := Format('%.3d',[QRY_063.FieldByName('ncodbco').asInteger]) +
                              Format('%.4d',[QRY_062.FieldByName('ncodlote').asInteger]) + '5' +
                              Format('%9s',[' ']) + Format('%.6d',[QRY_062.RecordCount + 2]) +
                              FormatFloat('000000000000000000',nSomaLiq * 100) +
                              Format('%.10d',[0]) + Format('%.8d',[0]) +
                              Format('%181s',[' ']);}

                            cTrailerLote := GeraTrailerLote(TrailerLote,BcoRed);
                            Writeln(Arq,cTrailerLote);
                            nQtdRegArq := nQtdRegArq + QRY_062.RecordCount + 2;

                          end;
                        QRY_064.Next;
                      end;
                    TrailerArq.codbco := IntToStr(CodBco);
                    TrailerArq.idlote := '9999';
                    TrailerArq.tiporeg := '9';
                    TrailerArq.totlotes := IntToStr(nCodLote);
                    TrailerArq.totreg := IntToStr(nQtdRegArq);
                    cTrailerArq := GeraTrailerArq(TrailerArq,BcoRed);

                    {'34199999' +
                    Format('%9s',[' ']) +
                    Format('%.6d',[nCodLote]) +
                    Format('%.6d',[nQtdRegArq]) +
                    Format('%211s',[' ']);}

                    Writeln(Arq,cTrailerArq);

                    CloseFile(Arq);
                  end;


                QRY_063.Next;

              end;
            DMControle.Conexao.Commit;

            BTN_SAIR.Enabled := true;
          except
            on E: Exception do
            begin
              DMControle.Conexao.Rollback;
              MessageDlg('Não foi possivel atualizar os dados! operação cancelada.' + #13+
                'Erro :' + E.Message,mtError,[mbOk],0);
              for i:=0 to ListaArq.Count - 1 do
                DeleteFile(ListaArq.Strings[i]);
            end;
          end;
        end;
    end;
end;
//end;

procedure TFRM_A004RHTE.BTN_GERARClick(Sender: TObject);
begin
  if CBB_BANCO.Text = 'BANCO ITAU' then
    GeraArqRemessa(341,'BANCO ITAU','ITAU')
  else
    if CBB_BANCO.Text = 'BANCO DO BRASIL' then
      GeraArqRemessa(1,'BANCO DO BRASIL','BB')
    else
      MessageDlg('Selecione um banco!',mtInformation,[mbOk],0);  

end;

procedure TFRM_A004RHTE.CBB_BANCOKeyPress(Sender: TObject; var Key: Char);
begin
  if not(Key in [#13,#9]) then
    Key := #0;
end;

end.



(*

  var
    ccnpj,cnomeent : string;
    cnomearq : string;
    arq : TextFile;
    ListaArq : TStringList;
    cHeaderArq : String;
    cHeaderLote : String;
    cTrailerLote : String;
    cTrailerArq : String;
    nCodLote : integer;
    nQtdRegArq : integer;
    nSomaLiq : Double;
    cSeg_a : String;
    nBcoPgt : Integer;
    nAgePgt : integer;
    i : Integer;
begin

  with DTM_A004RHTE do
    begin
      if MessageDlg('Data de pagamento correta! ' + DTE_PAG.Text,mtConfirmation,[mbYes,mbNo],0) = mryes then
        begin
          ListaArq := TStringList.Create;
          BTN_GERAR.Enabled := false;
          BTN_SAIR.Enabled := false;
          GAU_AEV.MaxValue := nTotAev;
          QRY_063.First;
          DMControle.Conexao.StartTransaction;
          try
            while not(QRY_063.Eof) do
              begin
                QRY_QTDORI.close;
                QRY_QTDORI.ParamByName('nmesref').asInteger := nMesRef;
                QRY_QTDORI.ParamByName('nanoref').asInteger := nAnoRef;
                QRY_QTDORI.ParamByName('ccodori').asString :=
                QRY_063.FieldByName('ccodori').asString;
                QRY_QTDORI.Open;
                if QRY_QTDORI.FieldByName('nqtd').asInteger > 0 then
                  begin
                    QRY_063.Edit;
                    QRY_063.FieldByName('nnroseq').asInteger :=
                    QRY_063.FieldByName('nnroseq').asInteger + 1;
                    QRY_063.Post;
                    cnomearq := QRY_063.FieldByName('cpasta').asString +'\remessa\' +
                      Copy(QRY_063.FieldByName('cdescricao').asString,1,1) +
                      format('%.2d',[nMesRef]) + Copy(IntToStr(nAnoRef),3,2) +
                      format('%.3d',[QRY_063.FieldByName('nnroseq').asInteger]) + '.TXT';

                    AssignFile(arq,cnomearq);
                    Rewrite(arq);
                    ListaArq.Add(cnomearq);
                    if QRY_063.FieldByName('ccodori').asString = '004' then
                      begin
                        cnomeent := 'INSTITUTO DE PREVIDENCIA DE GUARATUBA';
                        ccnpj := '07046712000190';
                      end
                    else
                      begin
                        cnomeent := DMControle.Qry_P.FieldByName('cnomeraz').asString;
                        ccnpj := DMControle.Qry_P.FieldByName('ccnpj').asString;
                      end;
                    cHeaderArq := QRY_063.FieldByName('ncodbco').DisplayText +'00000' + Format('%6s',[' '])+
                      '0502' + ccnpj + Format('%20s',[' ']) +
                      Format('%.5d',[QRY_063.FieldByName('nagencia').asInteger]) + ' ' + Format('%.12d',[QRY_063.FieldByName('nconta').asInteger]) +' ' +
                      Format('%.1d',[QRY_063.FieldByName('ndigito').asInteger]) +
                      UpperCase(Copy(cnomeent,1,30)) +
                      'BANCO ITAU' + Format('%30s',[' ']) + '1' + FormatDateTime('ddmmyyy',Now) +
                      FormatDateTime('hhmmss',Now) + Format('%.14d',[0]) + Format('%69s',[' ']);
                    Writeln(Arq,cHeaderArq);
                    LBL_ORIGEM.Caption := QRY_063.FieldByName('cdescricao').asString;
                    nCodLote := 0;
                    nQtdRegArq := 2;

                    QRY_064.First;
                    while not(QRY_064.Eof) do
                      begin
                        QRY_062.Close;
                        QRY_062.ParamByName('nmesref').asInteger := nmesref;
                        QRY_062.ParamByName('nanoref').asInteger := nanoref;
                        QRY_062.ParamByName('ccodori').asString :=
                        QRY_063.FieldByName('ccodori').asString;
                        QRY_062.ParamByName('nformapgto').asInteger :=
                        QRY_064.FieldByName('ncodnobco').asInteger;
                        QRY_062.Open;

                        if QRY_062.RecordCount > 0 then
                          begin
                            nCodLote := nCodLote + 1;
                            nSomaLiq := 0;
                            cHeaderLote := QRY_063.FieldByName('ncodbco').DisplayText +
                              Format('%.4d',[nCodLote])+'1C'+Format('%.2d',[QRY_062.FieldByName('ntipopgto').asInteger]) +
                              Format('%.2d',[QRY_062.FieldByName('nformapgto').asInteger]) + '031' + ' ' +
                              '2' + ccnpj + Format('%20s',[' ']) +
                              Format('%.5d',[QRY_063.FieldByName('nagencia').asInteger]) + ' ' +
                              Format('%.12d',[QRY_063.FieldByName('nconta').asInteger]) + ' ' +
                              Format('%.1d',[QRY_063.FieldByName('ndigito').asInteger]) +
                              UpperCase(Copy(cnomeent,1,30)) +
                              Format('%40s',[' ']) + Format('%-30s',[UpperCase(DMControle.Qry_P.FieldByName('cendpref').asString)]) +
                              Format('%.5d',[DMControle.Qry_P.FieldByName('nnumero').asInteger]) +
                              Format('%-15s',[UpperCase(DMControle.Qry_P.FieldByName('ccomplepref').asString)]) +
                              Format('%-20s',[UpperCase(DMControle.Qry_P.FieldByName('municipio').asString)]) +
                              Format('%.8d',[DMControle.Qry_P.FieldByName('ncep').asInteger]) +
                              UpperCase(DMControle.Qry_P.FieldByName('cuf').asString) + Format('%18s',[' ']);
                            Writeln(Arq,cHeaderLote);
                            LBL_FPG.Caption := QRY_064.FieldByName('cdescricao').asString;
                            GAU_FPG.MaxValue := QRY_062.RecordCount;
                            GAU_FPG.Progress := 0;
                            FRM_A004RHTE.Repaint;
                            QRY_062.First;
                            while not(QRY_062.Eof) do
                              begin
                                GAU_AEV.Progress := GAU_AEV.Progress + 1;
                                GAU_FPG.Progress := GAU_FPG.Progress + 1;

                                QRY_062.Edit;
                                if QRY_062.FieldByName('ctiporem').asString = 'C' then
                                  QRY_062.FieldByName('ntipomovto').asString :='999'
                                else
                                  begin
                                    QRY_062.FieldByName('ncodlote').AsInteger := nCodLote;
                                    QRY_062.FieldByName('nnroreg').asInteger := QRY_062.RecNo;
                                    QRY_062.FieldByName('ntipomovto').asString := '000';
                                    QRY_062.FieldByName('dprevpagto').AsDateTime := DTE_PAG.Date;
                                  end;
                                //QRY_062.FieldByName('nnroreg').asInteger := QRY_062.RecNo;
                                QRY_062.FieldByName('csituacao').asString := 'AGR';
                                QRY_062.FieldByName('cremessa').asString := Copy(cnomearq,length(cnomearq)-13,12);
                                QRY_062.FieldByName('ddatarem').AsDateTime := Now;
                                QRY_062.FieldByName('chorarem').asString := FormatDateTime('hhmmss',Now);

                                QRY_062.Post;

                                if QRY_062.FieldByName('ctiporem').asString = 'C' then
                                  cSeg_a := Format('%.3d',[QRY_063.FieldByName('ncodbco').asInteger]) +
                                    Format('%.4d',[QRY_062.FieldByName('ncodlote').asInteger]) + '3' +
                                    Format('%.5d',[QRY_062.RecNo]) + 'A' +
                                    Format('%.3d',[QRY_062.FieldByName('ntipomovto').asInteger]) +
                                    Format('%.6d',[0]) + Format('%70s',[' ']) + Format('%.8d',[0]) +
                                    Format('%3s',[' ']) + Format('%.10d',[0]) + Format('%.10d',[0]) + Format('%.10d',[0]) +
                                    Format('%-15s',[QRY_062.FieldByName('cnossonro').asString]) +
                                    Format('%5s',[' ']) + Format('%.10d',[0]) + Format('%.13d',[0]) +
                                    Format('%20s',[' ']) + Format('%.10d',[0]) + Format('%.10d',[0]) +
                                    Format('%23s',[' '])
                                else
                                  begin
                                    if QRY_062.FieldByName('nbcopgt').asInteger = 0 then
                                      begin
                                        nBcoPgt := QRY_063.FieldByName('ncodbco').asInteger;
                                        nAgePgt := QRY_063.FieldByName('nagencia').asInteger;
                                      end
                                    else
                                      begin
                                        nBcoPgt := QRY_062.FieldByName('nbcopgt').asInteger;
                                        nAgePgt := QRY_062.FieldByName('nagepgt').asInteger;
                                      end;

                                    cSeg_a := Format('%.3d',[QRY_063.FieldByName('ncodbco').asInteger]) +
                                      Format('%.4d',[QRY_062.FieldByName('ncodlote').asInteger]) + '3' +
                                      Format('%.5d',[QRY_062.FieldByName('nnroreg').asInteger]) + 'A' +
                                      Format('%.3d',[QRY_062.FieldByName('ntipomovto').asInteger]) +
                                      Format('%.3d',[0]) + Format('%.3d',[nBcoPgt]) +
                                      '0' + Format('%.4d',[nagepgt]) + ' ' +
                                      Format('%.12d',[QRY_062.FieldByName('nctapgt').asInteger]) + ' ' +
                                      Format('%.1d',[QRY_062.FieldByName('cdigcta').asInteger]) +
                                      Format('%-30s',[QRY_062.FieldByName('cnomfun').asString]) +
                                      Format('%-20s',[QRY_062.FieldByName('cseunro').asString]) +
                                      FormatDateTime('ddmmyyyy',DTE_PAG.Date) + 'REA' +
                                      Format('%.15d',[0]) + FormatFloat('000000000000000', QRY_062.FieldByName('nvlrliq').asFloat * 100) +
                                      Format('%20s',[' ']) + Format('%.10d',[0]) + Format('%.13d',[0]);
                                    //se for ordem de pagamento então informa o número de cpf
                                    if (QRY_062.FieldByName('nformapgto').asInteger = 10) and
                                       (QRY_062.FieldByName('nnumcic').asString <> '') then
                                      cSeg_a := cSeg_a + Format('%20s',[' ']) + Format('%.6d',[0]) + QRY_062.FieldByName('nnumcic').DisplayText
                                    else
                                      cSeg_a := cSeg_a + Format('%20s',[' ']) + Format('%.10d',[0]) + Format('%.10d',[0]);

                                      cSeg_a := cSeg_a + Format('%23s',[' ']);

                                      nSomaLiq := nSomaLiq + QRY_062.FieldByName('nvlrliq').AsFloat;

                                  end;

                                Writeln(Arq,cSeg_a);

                                QRY_062.Next;
                              end;

                            cTrailerLote := Format('%.3d',[QRY_063.FieldByName('ncodbco').asInteger]) +
                              Format('%.4d',[QRY_062.FieldByName('ncodlote').asInteger]) + '5' +
                              Format('%9s',[' ']) + Format('%.6d',[QRY_062.RecordCount + 2]) +
                              FormatFloat('000000000000000000',nSomaLiq * 100) +
                              Format('%.10d',[0]) + Format('%.8d',[0]) +
                              Format('%181s',[' ']);
                            Writeln(Arq,cTrailerLote);
                            nQtdRegArq := nQtdRegArq + QRY_062.RecordCount + 2;

                          end;
                        QRY_064.Next;
                      end;
                    cTrailerArq := '34199999' + Format('%9s',[' ']) +
                      Format('%.6d',[nCodLote]) + Format('%.6d',[nQtdRegArq]) +
                      Format('%211s',[' ']);
                    Writeln(Arq,cTrailerArq);

                    CloseFile(Arq);
                  end;


                QRY_063.Next;

              end;
            DMControle.Conexao.Commit;

            BTN_SAIR.Enabled := true;
          except
            on E: Exception do
            begin
              DMControle.Conexao.Rollback;
              MessageDlg('Não foi possivel atualizar os dados! operação cancelada.' + #13+
                'Erro :' + E.Message,mtError,[mbOk],0);
              for i:=0 to ListaArq.Count - 1 do
                DeleteFile(ListaArq.Strings[i]);
            end;
          end;
        end;
    end;
  end;




*)
