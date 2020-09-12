unit Inicia;

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
  wwdbedit, OraScript, delmenu, DBClient, MConnect, SConnect, OraSmart,
  Enter, VirtualTable, LMDCustomGlyphLabel,  LMDGlyphLabel,
  LMDShapeHint, LMDCustomButtonGroup, LMDCustomRadioGroup, LMDRadioGroup,
  LMDSimplePanel;


type
  TFrm_Inicia = class(TForm)
    Panel2: TPanel;
    SpeedButton4: TSpeedButton;
    SpeedButton3: TSpeedButton;
    BTN_SAIR: TSpeedButton;
    SpeedButton1: TSpeedButton;
    BTN_: TSpeedButton;
    LMDGroupBox1: TLMDGroupBox;
    BTN_EXECUTA: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton9: TSpeedButton;
    DelSysMenuItems1: TDelSysMenuItems;
    SpeedButton10: TSpeedButton;
    SpeedButton11: TSpeedButton;
    SpeedButton12: TSpeedButton;
    SpeedButton13: TSpeedButton;
    SpeedButton14: TSpeedButton;
    SpeedButton15: TSpeedButton;
    MREnter1: TMREnter;
    OraScript1: TOraScript;
    DTS_TEMP: TDataSource;
    TempTabelas: TVirtualTable;
    DTS_TABTEMP: TDataSource;
    OraSession1: TOraSession;
    ConnectDialog1: TConnectDialog;
    Timer1: TTimer;
    Pnl_Tabelas: TLMDPanelFill;
    LMDShapeHint1: TLMDShapeHint;
    Rgp_Selecao: TLMDRadioGroup;
    LMDSimplePanel1: TLMDSimplePanel;
    DBGrid1: TDBGrid;
    SpeedButton5: TSpeedButton;
    SpeedButton6: TSpeedButton;
    QRY_TABELAS: TOraQuery;
    QRY_TABELASNCODTABELA: TIntegerField;
    QRY_TABELASCNOMETBL: TStringField;
    QRY_TABELASCDESCRTBL: TStringField;
    QRY_TABELAStag: TStringField;
    TempTabelascodigo: TIntegerField;
    TempTabelasnome: TStringField;
    TempTabelasdescricao: TStringField;
    TempTabelastag: TStringField;
    OraSQL1: TOraSQL;
    dts_teste: TDataSource;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure BTN_SAIRClick(Sender: TObject);
    procedure Rgp_SelecaoClick(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure BTN_EXECUTAClick(Sender: TObject);
  private
    function RemoveAcento(Str:String): String;
    function MontaTabela(lLog : Boolean = false ):String;
    function PassaUsuario:boolean;
    function StrZero( const iValue : Integer; const Width : Integer) : String;
    function SegHora(Seg : Integer): String;
    function HoraSeg(Hora : String): Integer;
     { Private declarations }
  public
    { Public declarations }
    lAbort : Boolean;
  end;

var
  Frm_Inicia: TFrm_Inicia;
  nHoraGer, nTotger, nTotLin, nColAnt, nTamAnt,nRegCorrente : integer;
  cNomeTabLayout, ScriptSql, cNomeArquivo : String;
  lCancelar, lTabela, lImporta, lTerminou, lSobrepoe, lAdiciona,
  lCancel : Boolean;
  pPonteiroJanela : Pointer;

implementation

{$IFDEF SOZINHO}
   uses ProgLog;
{$ELSE}
  uses ProgLog, TelaPrin;
{$ENDIF}

{$R *.DFM}

function TFrm_Inicia.RemoveAcento(Str:String): String;
  Const
    cAcento = 'àâêôûãõáéíóúçüÀÂÊÔÛÃÕÁÉÍÓÚÇÜ';
    sAcento = 'aaeouaoaeioucuAAEOUAOAEIOUCU';
  Var
    x : Integer;
begin
  For x := 1 to Length(Str) do
    if Pos(Str[x],cAcento)<>0 Then
      Str[x] := sAcento[Pos(Str[x],cAcento)];
  Result := Str;
end;

procedure TFrm_Inicia.FormCreate(Sender: TObject);
begin
  try
    OraSession1.Connected := true;
    QRY_TABELAS.Close;
    QRY_TABELAS.Open;
    Rgp_Selecao.ItemIndex := -1;
    BTN_EXECUTA.Enabled := false;
  except
    Timer1.Enabled := True;
  end;
end;

procedure TFrm_Inicia.Timer1Timer(Sender: TObject);
begin
  if not OraSession1.Connected then
    begin
      ShowMessage('Banco não Conectado..!!  Sistema ABORTADO!!');
      close;
    end;
end;

procedure TFrm_Inicia.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  {$IFDEF SOZINHO}
   //
  {$ELSE}
    Frm_TelaPrin.Frm_Display.RemoveForm(FRM_INICIA,false);
    Frm_TelaPrin.Pnl_Menu.Enabled := true;
    Frm_TelaPrin.Lbl_TituloAplicacao.Caption := cNomeAplica;
  {$ENDIF}
  OraSession1.Connected := false;
  Action := caFree;
end;

procedure TFrm_Inicia.BTN_SAIRClick(Sender: TObject);
begin
  Close;
end;

procedure TFrm_Inicia.Rgp_SelecaoClick(Sender: TObject);
begin
  if Rgp_Selecao.ItemIndex = 0 then
    MontaTabela(true)
  else MontaTabela;
end;

function TFrm_Inicia.MontaTabela(lLog : Boolean = false ):String;
begin
  TempTabelas.Close;
  TempTabelas.Clear;
  TempTabelas.Open;
  QRY_TABELAS.ExecSQL;
  DTS_TABTEMP.DataSet.Open;
  DTS_TEMP.DataSet.Open;
  DTS_TEMP.DataSet.First;
  with DTS_TEMP.DataSet do
    while not Eof do
      begin
        DTS_TABTEMP.DataSet.Insert;
        DTS_TABTEMP.DataSet.FieldByName('nome').Value := FieldValues['cnometbl'];
        DTS_TABTEMP.DataSet.FieldByName('descricao').Value := FieldValues['cdescrtbl'];
        DTS_TABTEMP.DataSet.FieldByName('codigo').Value := FieldValues['ncodtabela'];
        if lLog then
           DTS_TABTEMP.DataSet.FieldByName('tag').Value := 'ü';
        DTS_TABTEMP.DataSet.Post;
        Next;
      end;
    DTS_TEMP.DataSet.First;
    DTS_TABTEMP.DataSet.First;
    BTN_EXECUTA.Enabled := true;
end;


procedure TFrm_Inicia.DBGrid1CellClick(Column: TColumn);
begin
  if Column.Field.FullName = 'tag' then
    begin
      DBGrid1.Options := DBGrid1.Options -[dgEditing];
      if not (DTS_TABTEMP.DataSet.State in [dsedit,dsinsert]) then
        DTS_TABTEMP.DataSet.Edit;
      if DTS_TABTEMP.DataSet.FieldByName('tag').Value = 'ü' then
         DTS_TABTEMP.DataSet.FieldByName('tag').Value := ''
      else DTS_TABTEMP.DataSet.FieldByName('tag').Value := 'ü';
      DTS_TABTEMP.DataSet.Post;
    end
  else DBGrid1.Options := DBGrid1.Options +[dgEditing];
end;

procedure TFrm_Inicia.BTN_EXECUTAClick(Sender: TObject);
var cSql, cSqlVerifica, cLcto, cCampoTab, cVlrCpo, cNid : string;
    oTabela : TOraQuery;
    nVezes, nX : integer;
    lVerifica : Boolean;
begin
  oTabela := TOraQuery.Create(nil);
  oTabela.Session := OraSession1;
  DTS_TABTEMP.DataSet.DisableControls;
  DTS_TABTEMP.DataSet.First;
  PassaUsuario;
  nHoraGer := HoraSeg(TimeToStr(Now));
  nTotger := 0;
  lCancelar := False;
  while not DTS_TABTEMP.DataSet.Eof do
    begin
      if DTS_TABTEMP.DataSet.FieldByName('Tag').Value = 'ü' then
        nTotger := nTotger + 1;
      DTS_TABTEMP.DataSet.Next;
    end;
  DTS_TABTEMP.DataSet.First;
  Application.CreateForm(TFRM_ProgLog,FRM_ProgLog);
  FRM_ProgLog.Visible := True;
  FRM_ProgLog.Show;
  FRM_ProgLog.Refresh;
  FRM_ProgLog.Lbl_Tit.Caption := 'Inicializando LOG...!!';
  FRM_ProgLog.Gag_Ger.MaxValue := nTotger;
  FRM_ProgLog.Gag_Ger.Progress:= FRM_ProgLog.Gag_Ger.Progress + 1;
  FRM_ProgLog.Gag_Ger.Refresh;

  FRM_ProgLog.Lbl_DecGer.Caption:= SegHora((HoraSeg(TimeToStr(Now)) - nHoraGer));
  FRM_ProgLog.Lbl_EstGer.Caption:= SegHora((HoraSeg(TimeToStr(Now)) - nHoraGer) *
                            Variant(nTotGer / FRM_ProgLog.Gag_Ger.Progress ));
  FRM_ProgLog.Refresh;
  while not DTS_TABTEMP.DataSet.eof do
    begin
       if DTS_TABTEMP.DataSet.FieldValues['tag'] = 'ü' then
         begin
           lVerifica := true;
           oTabela.Close;
           oTabela.SQL.Clear;
           cSql := 'select * from '+ Trim(DTS_TABTEMP.DataSet.FieldValues['nome']);
           cSqlVerifica := 'select * from TBLATL where CNOMETAB = '+  QuotedStr(Trim(DTS_TABTEMP.DataSet.FieldValues['nome']))+' and TABORIGEM = '+QuotedStr('L');
           oTabela.SQL.Add(cSqlVerifica);
           oTabela.ExecSQL;
           if not oTabela.IsEmpty then
               begin
                 MessageDlg('LOG da Tabela '+Trim(DTS_TABTEMP.DataSet.FieldValues['nome'])+
                 ' Inicializado em '+DateToStr(oTabela.FieldByName('DDATAATUL').AsDateTime),mtInformation,[mbOk],0);
                 lVerifica := false;
               end;
           oTabela.Close;
           oTabela.SQL.Clear;
           oTabela.SQL.Add(cSql);
           oTabela.ExecSQL;
           if (not oTabela.IsEmpty) and lVerifica then
              begin
                oTabela.First;
                nVezes := oTabela.Fields.Count;
                OraSession1.StartTransaction;
                try
                  begin
                    FRM_ProgLog.Gag_Tab.MaxValue := oTabela.RecordCount;
                    FRM_ProgLog.Gag_Tab.Progress:= FRM_ProgLog.Gag_Tab.Progress + 1;
                    FRM_ProgLog.Gag_Tab.Refresh;
                    while not oTabela.Eof do
                       begin
                         for nX := 0 to nVezes -1 do
                            begin
                              cCampoTab := '';
                              cVlrCpo := '';
                              cNid := IntToStr(oTabela.FieldByName('NID'+Trim(DTS_TABTEMP.DataSet.FieldValues['nome'])).Value);
                              if oTabela.Fields.Fields[nX].DataType = ftString then
                                begin
                                  cVlrCpo := oTabela.FieldByName(oTabela.Fields.Fields[nX].FieldName).AsString;
                                  cCampoTab := oTabela.Fields.Fields[nX].FieldName;
                                end;
                              if oTabela.Fields.Fields[nX].DataType = ftInteger then
                                begin
                                  cVlrCpo := oTabela.FieldByName(oTabela.Fields.Fields[nX].FieldName).AsString;
                                  cCampoTab := oTabela.Fields.Fields[nX].FieldName;
                                end;
                              if oTabela.Fields.Fields[nX].DataType = ftDate then
                                begin
                                  cVlrCpo := DateToStr(oTabela.FieldByName(oTabela.Fields.Fields[nX].FieldName).AsDateTime);
                                  cCampoTab := oTabela.Fields.Fields[nX].FieldName;
                                end;
                              if oTabela.Fields.Fields[nX].DataType = ftFloat then
                                begin
                                  cVlrCpo := FloatToStr(oTabela.FieldByName(oTabela.Fields.Fields[nX].FieldName).AsFloat);
                                  cCampoTab := oTabela.Fields.Fields[nX].FieldName;
                                end;
                              if cCampoTab <> '' then
                                 begin
                                    cLcto :='begin lancalog('+QuotedStr(Trim(DTS_TABTEMP.DataSet.FieldValues['nome']))+','+
                                             QuotedStr(cCampoTab)+','+
                                             QuotedStr(cVlrCpo)+','+
                                             QuotedStr(cVlrCpo)+','+
                                             QuotedStr(DateTimeToStr(Date))+','+
                                             QuotedStr(cNid)+','+
                                             QuotedStr('I')+' ); end;';
                                    try
                                      OraSQL1.SQL.Add(cLcto);
                                      OraSQL1.Execute;
                                      OraSQL1.SQL.Clear;
                                    except
                                      MessageDlg('Nao Consegui Incluir LOG.'+#10#13+
                                                'Informe ao Administrador!!',mtInformation,[mbOk],0);
                                    end;
                                    FRM_ProgLog.Gag_Tab.Progress:= FRM_ProgLog.Gag_Tab.Progress + 1;
                                    FRM_ProgLog.Gag_Tab.Refresh;
                                    FRM_ProgLog.Refresh;
                                 end;
                            end;
                         oTabela.Next;
                       end;
                    oTabela.Close;
                    oTabela.SQL.Clear;
                    cSqlVerifica := 'insert into TBLATL (NIDTBLATL, CNOMETAB, DDATAATUL, TABORIGEM) values (0, '+
                                 QuotedStr(Trim(DTS_TABTEMP.DataSet.FieldValues['nome']))+', SysDate, '+QuotedStr('L')+')';
                    oTabela.SQL.Add(cSqlVerifica);
                    oTabela.ExecSQL;
                    OraSession1.Commit;
                  end;
                except
                  begin
                    OraSession1.Rollback;
                    ShowMessage('Erro ao Inicializar LOG.!');
                    exit;
                  end;
                end;
                Application.ProcessMessages;
                if lCancelar then
                  begin
                    exit;
                  end;
              end;
           FRM_ProgLog.Gag_Ger.Progress:= FRM_ProgLog.Gag_Ger.Progress + 1;
           FRM_ProgLog.Gag_Ger.Refresh;
           FRM_ProgLog.Lbl_DecGer.Caption:= SegHora((HoraSeg(TimeToStr(Now)) - nHoraGer));
           FRM_ProgLog.Lbl_EstGer.Caption:= SegHora((HoraSeg(TimeToStr(Now)) - nHoraGer) *
                            Variant(nTotGer  / FRM_ProgLog.Gag_Ger.Progress ));
           FRM_ProgLog.Refresh;
         end;
       DTS_TABTEMP.DataSet.Next;
    end;
  FRM_ProgLog.Lbl_Tit.Caption := 'Terminado...!!';
  FRM_ProgLog.Btn_CanGer.Caption := 'Fechar';
  FRM_ProgLog.Refresh;
  FRM_ProgLog.Gag_Ger.Refresh;
  FRM_ProgLog.Gag_Tab.Refresh;
end;

//16/10/2003
function TFrm_Inicia.PassaUsuario:boolean;
var  oPassaSql : TOraSql;
     oPassaParam : TOraParam;
     cSql : string;
begin
   oPassaParam := TOraParam.Create(nil);
   oPassaParam.Name := 'UsaAplic';
   oPassaParam.Value := 'Desenvolvimento;IniLog:';
   oPassaSql := TOraSql.Create(nil);
   oPassaSql.Session := OraSession1;
   oPassaSql.Params.AddParam(oPassaParam);
   cSql := 'begin  dbms_application_info.set_module(:UsaAplic ,to_char(sysdate,''dd-mm-yyyy hh:mi'')); end;';
   oPassaSql.SQL.Add(cSql);
   try
     oPassaSql.Execute;
     result := true;
   except
     MessageDlg('Nao Consegui Alterar dados na Tabela.'+#10#13+
                'Informe ao Administrador!!',mtInformation,[mbOk],0);
     result := false;
   end;
end;

//UDF by Leandro Ribas (Desenvolvimento)
{Função que retorna o total de segundos,  horas  passado como parametro}
function TFrm_Inicia.HoraSeg(Hora : String): Integer;
var
  nHora, nMinuto , nSeg : Integer;
begin
 nHora := ((StrToInt(Copy(Hora,1,2)))*3600);
 nMinuto := ((StrToInt(Copy(Hora,4,2)))*60);
 nSeg := (StrToInt(Copy(Hora,7,2)));

 result := nHora+nMinuto+nSeg;

end;

//UDF by Leandro Ribas (Desenvolvimento)
{Função que retorna o total de horas que tem os segundos passado como parametro}
function TFrm_Inicia.SegHora(Seg : Integer): String;
 var
   nHora, nMinuto, nSeg : Integer;
begin

 nHora := Seg div 3600;
 nMinuto := (Seg -(nHora * 3600))div 60;
 nSeg := Seg - (nHora * 3600)- (nMinuto * 60);

 result := StrZero(nHora,2) +':'+ StrZero(nMinuto,2) +':'+ StrZero(nSeg,2);

end;

//UDF (User Define Function) by Frank Sipoli
//Esta function foi criada para colocar zeros à esquerda
//muito similar para os programadores do xbase
function TFrm_Inicia.StrZero( const iValue : Integer; const Width : Integer) : String;
var
  I : Integer;
  sValue, sValue2 : String;
begin
  sValue := Trim(IntToStr(iValue));
  sValue2:= '';
  for I := 0 to (Width-Length(sValue))-1 do
    System.Insert('0', sValue2, I);

  Result := Trim(sValue2)+sValue;
end;


end.




