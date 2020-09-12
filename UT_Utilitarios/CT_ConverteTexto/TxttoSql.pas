unit TxttoSql;

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
  LMDShapeHint, MPLLib;


type
  TFrm_TxttoSql = class(TForm)
    Panel2: TPanel;
    BTN_IMPORTA: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton3: TSpeedButton;
    BTN_SAIR: TSpeedButton;
    SpeedButton1: TSpeedButton;
    BTN_: TSpeedButton;
    LMDGroupBox1: TLMDGroupBox;
    BTN_LAYOUT: TSpeedButton;
    BTN_DADOS: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton9: TSpeedButton;
    DelSysMenuItems1: TDelSysMenuItems;
    SpeedButton10: TSpeedButton;
    SpeedButton11: TSpeedButton;
    SpeedButton12: TSpeedButton;
    SpeedButton13: TSpeedButton;
    SpeedButton14: TSpeedButton;
    SpeedButton15: TSpeedButton;
    Label1: TLabel;
    FEDT_ARQUIVO: TFilenameEdit;
    Label6: TLabel;
    EDT_TABELADESTINO: TEdit;
    Label3: TLabel;
    EDT_LINHAINICIO: TEdit;
    MREnter1: TMREnter;
    OraScript1: TOraScript;
    TabDestino: TOraTable;
    Label5: TLabel;
    FEDT_ARQLAY: TFilenameEdit;
    DBGrid1: TDBGrid;
    DataSource1: TDataSource;
    TabTemp: TTable;
    TempDados: TVirtualTable;
    DataSource2: TDataSource;
    DBGrid2: TDBGrid;
    OraSession1: TOraSession;
    ConnectDialog1: TConnectDialog;
    Timer1: TTimer;
    Pnl_Pesq: TLMDPanelFill;
    LMDPanelFill1: TLMDPanelFill;
    LMDShapeHint1: TLMDShapeHint;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BTN_SAIRClick(Sender: TObject);
    procedure FEDT_ARQLAYExit(Sender: TObject);
    procedure BTN_LAYOUTClick(Sender: TObject);
    procedure BTN_DADOSClick(Sender: TObject);
    procedure FEDT_ARQUIVOAfterDialog(Sender: TObject; var Name: String;
      var Action: Boolean);
    procedure FEDT_ARQUIVOExit(Sender: TObject);
    procedure BTN_IMPORTAClick(Sender: TObject);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure EDT_TABELADESTINOExit(Sender: TObject);
    procedure FEDT_ARQLAYEnter(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure DBGrid1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBGrid1MouseMove(Sender: TObject; Shift: TShiftState; X,
      Y: Integer);
  private
    function RemoveAcento(Str: String): String;
    function LimpaMask(cMascarado: String): String;
    { Private declarations }
  public
    { Public declarations }
    lAbort : Boolean;
    Function TrataDados(Conteudo : String) : String;
    Function MostraTab(cNomeArq : String):Boolean;
    Function Criatabela(Tabela: String; Dir : String):Boolean;
    Procedure ImportaDados(cNomeArq : String);
    procedure MontaSql;
    function Compara:Boolean;
    Function iif(Condicao: Boolean; RetornaTrue, RetornaFalse: Variant): Variant;
    procedure AposDialogo(Sender : TObject);
  end;

var
  Frm_TxttoSql: TFrm_TxttoSql;
  nHoraGer, nTotger, nTotLin, nColAnt, nTamAnt,nRegCorrente : integer;
  cNomeTabLayout, ScriptSql, cNomeArquivo : String;
  lCancelar, lTabela, lImporta, lTerminou, lSobrepoe, lAdiciona,
  lCancel : Boolean;
  pPonteiroJanela : Pointer;

implementation


{$IFDEF SOZINHO}
   uses MsgAlerta, ProgTxt;
{$ELSE}
   uses MsgAlerta, ProgTxt, TelaPrin;
{$ENDIF}


{$R *.DFM}

function TFrm_TxttoSql.RemoveAcento(Str:String): String;
  Const
    cAcento = '‡‚ÍÙ˚„ı·ÈÌÛ˙Á¸¿¬ ‘€√’¡…Õ”⁄«‹';
    sAcento = 'aaeouaoaeioucuAAEOUAOAEIOUCU';
  Var
    x : Integer;
begin

  For x := 1 to Length(Str) do
    if Pos(Str[x],cAcento)<>0 Then
      Str[x] := sAcento[Pos(Str[x],cAcento)];
  Result := Str;
end;

procedure TFrm_TxttoSql.FormCreate(Sender: TObject);
begin
  try
    OraSession1.Connected := true;
  except
    Timer1.Enabled := True;
  end;
end;

procedure TFrm_TxttoSql.Timer1Timer(Sender: TObject);
begin
  if not OraSession1.Connected then
    begin
      ShowMessage('Banco n„o Conectado..!!  Sistema ABORTADO!!');
      close;
    end;
end;

procedure TFrm_TxttoSql.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  {$IFDEF SOZINHO}
   //
  {$ELSE}
    Frm_TelaPrin.Frm_Display.RemoveForm(FRM_TXTTOSQL,false);
    Frm_TelaPrin.Pnl_Menu.Enabled := true;
    Frm_TelaPrin.Lbl_TituloAplicacao.Caption := cNomeAplica;
  {$ENDIF}
  OraSession1.Connected := false;
  Action := caFree;
end;

procedure TFrm_TxttoSql.BTN_SAIRClick(Sender: TObject);
begin
  Close;

end;

procedure TFrm_TxttoSql.MontaSql;
var  cTipoCampo : string;
     nTam : integer;
     oCampo : TFieldType;
     lTemCampo : Boolean;
begin

  OraScript1.SQL.Clear;
  ScriptSql := 'CREATE TABLE '+EDT_TABELADESTINO.Text+' ( ';
  DataSource1.DataSet.DisableControls;
  lTemCampo := false;
  With DataSource1.DataSet do
  begin
    First;
    While not Eof do
      begin
        if FieldByName('Tag').Value = 'Sim' then
          begin
            if lTemCampo then
              ScriptSql := ScriptSql + ', ';
            lTemCampo := true;
            ScriptSql := ScriptSql + FieldByName('Nome').AsString+' ';
            if FieldByName('Tipo').AsString = 'C' then
              begin
                cTipoCampo := 'VARCHAR2';
                oCampo := ftString;
              end;
            if FieldByName('Tipo').AsString = 'N' then
              begin
                cTipoCampo := 'NUMBER';
                oCampo := ftInteger;
              end;
            if FieldByName('Tipo').AsString = 'D' then
              begin
                cTipoCampo := 'DATE';
                oCampo := ftDateTime;
              end;
            if FieldByName('Tipo').AsString = 'L' then
              begin
                cTipoCampo := 'NUMBER';
                oCampo := ftInteger;
              end;
            ScriptSql := ScriptSql + cTipoCampo+' ';
            nTam := FieldByName('Tam').Value;
            if FieldByName('Tipo').AsString = 'N' then
              begin
                TempDados.FieldDefs.Add(FieldByName('Nome').AsString,Ocampo);
                if FieldByName('Dec').AsInteger > 0 then
                  ScriptSql := ScriptSql + '('+IntToStr(nTam)+','+
                               IntToStr(FieldByName('Dec').AsInteger)+')'
                else
                  if (FieldByName('Tipo').AsString <> 'D') then
                      ScriptSql := ScriptSql + '('+IntToStr(nTam)+')';
              end
            else
              if (FieldByName('Tipo').AsString <> 'D') then
                begin
                  ScriptSql := ScriptSql + '('+IntToStr(nTam)+')';
                  TempDados.FieldDefs.Add(FieldByName('Nome').AsString,Ocampo,nTam)
                end
              else TempDados.FieldDefs.Add(FieldByName('Nome').AsString,Ocampo);
          end;
        Next;
      end;
    ScriptSql := ScriptSql + ')';

  end;
  DataSource1.DataSet.EnableControls;
end;

Function TFrm_TxttoSql.MostraTab(cNomeArq : String):Boolean;
var cRegistro : String;
    nReg, nCampos, nLin : Integer;
    oGridMostra : TDBGrid;
    vDados : Variant;
    Arq : TextFile;
    dCampoData : TDate;
begin
   lCancelar := false;
   lImporta := true;
   nTotLin := 0;
   AssignFile(Arq,cNomeArq);
   Reset(Arq);
   while not eof(arq) do
     begin
       nTotLin := nTotLin + 1;
       Readln(Arq);
     end;
   Reset(Arq);
   for nLin := 1 to StrtoInt(EDT_LINHAINICIO.Text) - 1 do
     Readln(Arq);
   nReg := 0;
   TabTemp.DisableControls;
   TempDados.Open;

   nHoraGer := HoraSeg(TimeToStr(Now));
   Application.CreateForm(TFRM_ProgTxt,FRM_ProgTxt);
   FRM_ProgTxt.Visible := True;
   FRM_ProgTxt.Show;
   FRM_ProgTxt.Refresh;
   nTotGer := nTotLin;
   FRM_ProgTxt.Lbl_Tit.Caption := 'Consultando Dados...!!';
   FRM_ProgTxt.Gag_Ger.MaxValue := nTotger;
   FRM_ProgTxt.Gag_Ger.Progress:= FRM_ProgTxt.Gag_Ger.Progress + 1;
   FRM_ProgTxt.Gag_Ger.Refresh;

   FRM_ProgTxt.Lbl_DecGer.Caption:= SegHora((HoraSeg(TimeToStr(Now)) - nHoraGer));
   FRM_ProgTxt.Lbl_EstGer.Caption:= SegHora((HoraSeg(TimeToStr(Now)) - nHoraGer) *
                        Variant(nTotGer / FRM_ProgTxt.Gag_Ger.Progress ));
   FRM_ProgTxt.Refresh;
   while not eof(arq) do
     begin
       nReg := nReg +1;
       Readln(Arq,cRegistro);
       try
         begin
           TempDados.Append;
           TabTemp.First;
           nCampos := 0;
           while nCampos <= (TempDados.Fields.Count -1) do
             begin
               if TabTemp.Locate('Nome',TempDados.Fields.Fields[nCampos].FieldName,[]) then
                 begin
                   if Trim(Copy(cRegistro,TabTemp.FieldByName('Col').AsInteger,
                                     TabTemp.FieldByName('Tam').AsInteger)) <> '' then
                     begin
                       vDados := TrataDados(Copy(cRegistro,TabTemp.FieldByName('Col').AsInteger,
                                                TabTemp.FieldByName('Tam').AsInteger));
                       if TabTemp.FieldByName('Masc').AsString = 'S' then
                         vDados := LimpaMask(String(vDados));

                       if Length(String(vDados)) > 120 then
                         begin
                           ShowMessage('O campo cdesccnae tem que ser maior que 120');
                           Abort;
                         end;
                       if TabTemp.FieldByName('Tipo').AsString = 'D' then
                         begin
                           dCampoData := StrtoDate(Strzero(StrtoInt(Copy(vDados,7,2)),2)+'/'+Copy(vDados,5,2)+'/'+Copy(vDados,1,4));
                           TempDados.Fields.Fields[nCampos].Value := dCampoData;
                         end
                       else TempDados.Fields.Fields[nCampos].Value := vDados;
                     end;
                 end;
               nCampos := nCampos + 1;
               TabTemp.Next;
             end;
         end;
       except
         begin
           ShowMessage('Erro ao gravar tabela destino!!');
           lImporta := false;
           Result := false;
           exit;
         end;
       end;
       FRM_ProgTxt.Gag_Ger.Progress:= FRM_ProgTxt.Gag_Ger.Progress + 1;
       FRM_ProgTxt.Gag_Ger.Refresh;
       FRM_ProgTxt.Lbl_DecGer.Caption:= SegHora((HoraSeg(TimeToStr(Now)) - nHoraGer));
       FRM_ProgTxt.Lbl_EstGer.Caption:= SegHora((HoraSeg(TimeToStr(Now)) - nHoraGer) *
                            Variant(nTotGer  / FRM_ProgTxt.Gag_Ger.Progress ));
       FRM_ProgTxt.Refresh;
       if nReg >= 50 then
         begin
           nReg := 0;
           Application.ProcessMessages;
           if lCancelar then
             begin
               lImporta := false;
               break;
             end;
         end;
     end;
   Reset(Arq);
   TempDados.First;
   TabTemp.EnableControls;
   TabTemp.First;
   if lImporta then
     Result := true
   else Result := false;
end;

Function TFrm_TxttoSql.Criatabela(Tabela: String; Dir : String):Boolean;
var Table: TTable;
begin
Table := tTable.Create(nil);
  With Table do
  Try
    DatabaseName := Dir;
    FieldDefs.Clear;
    TableType := ttDefault;
    TableName := Tabela;
    With FieldDefs do
    begin
      Add('Nome',ftString,20,false);
      Add('Tipo',ftString,1,false);
      Add('Tam',ftInteger);
      Add('Dec',ftInteger);
      Add('Masc',ftString,1,false);
      Add('Col',ftInteger);
      Add('Tag',ftString,3,false);
      Add('Pesq',ftString,3,false);
    end{with FieldDefs};
    CreateTable;
  Except
    Table.Free;
  End;
end;

procedure TFrm_TxttoSql.FEDT_ARQUIVOAfterDialog(Sender: TObject;
  var Name: String; var Action: Boolean);
begin
  FEDT_ARQUIVO.FileName := Name;
  FEDT_ARQUIVOExit(Sender);
end;

procedure TFrm_TxttoSql.FEDT_ARQUIVOExit(Sender: TObject);
begin
  EDT_LINHAINICIO.SetFocus;
end;

procedure TFrm_TxttoSql.EDT_TABELADESTINOExit(Sender: TObject);
begin
  FEDT_ARQLAY.SetFocus;
end;

procedure TFrm_TxttoSql.FEDT_ARQLAYEnter(Sender: TObject);
begin
   TabTemp.DatabaseName := '';
   TabTemp.TableName := '';
   TabTemp.Close;
   FEDT_ARQLAY.InitialDir := ExtractFileDir(FEDT_ARQUIVO.FileName);
   cNomeTabLayout := Copy(ExtractFileName(FEDT_ARQUIVO.FileName),1,
                     Pos('.',ExtractFileName(FEDT_ARQUIVO.FileName)))+'db';
   if FileSearch(cNomeTabLayout,ExtractFileDir(FEDT_ARQUIVO.FileName)) <> cNomeTabLayout then
      Criatabela(cNomeTabLayout,ExtractFileDir(FEDT_ARQUIVO.FileName));
   FEDT_ARQLAY.Dialog.Execute;
   cNomeArquivo := FEDT_ARQLAY.Dialog.Files.Text;
   AposDialogo(Sender);
end;

procedure TFrm_TxttoSql.AposDialogo(Sender : TObject);
begin
  FEDT_ARQLAY.FileName := cNomeArquivo;
  BTN_DADOS.Enabled := true;
  FEDT_ARQLAYExit(Sender);
end;

procedure TFrm_TxttoSql.FEDT_ARQLAYExit(Sender: TObject);
begin
   if (FEDT_ARQUIVO.FileName = '') or (EDT_TABELADESTINO.Text = '')
      or (EDT_LINHAINICIO.Text = '') or (FEDT_ARQLAY.FileName = '') then
      begin
        MessageDlg('Favor Completar informaÁıes !!',mtInformation,[mbOk],0);
        FEDT_ARQUIVO.SetFocus;
      end
   else
     begin
       BTN_LAYOUT.Enabled := true;
       BTN_LAYOUTClick(Sender);
     end;
end;

procedure TFrm_TxttoSql.BTN_LAYOUTClick(Sender: TObject);
var nVezes : integer;
begin
  BTN_IMPORTA.Enabled := false;
  TempDados.Open;
  TempDados.Edit;
  TempDados.DeleteFields;
  TempDados.Close;
  TabTemp.DatabaseName := ExtractFileDir(FEDT_ARQLAY.FileName);
  TabTemp.TableName := ExtractFileName(Trim(FEDT_ARQLAY.FileName));
  TabTemp.Open;
  for nVezes := 0 to TabTemp.FieldCount -1 do
    DBGrid1.Columns[nVezes].FieldName := TabTemp.FieldDefs[nVezes].Name;
  DBGrid1.Enabled := true;
  DBGrid1.SetFocus;
end;

procedure TFrm_TxttoSql.BTN_DADOSClick(Sender: TObject);
var  cCabec : string;
     nCont, nCampo : integer;
     lCriar : Boolean;
     vCampo : String;
begin
  lImporta := false;
  lTabela := false;
  DBGrid1.SelectedRows.Clear;
  TempDados.Open;
  TempDados.Edit;
  TempDados.DeleteFields;
  TempDados.Close;
  MontaSql;
  if not MostraTab(FEDT_ARQUIVO.FileName) then
    begin
      lImporta := false;
      FRM_ProgTxt.Btn_CanGer.Caption := 'Abortar';
      FRM_ProgTxt.Refresh;
    end
  else
    begin
      BTN_IMPORTA.Enabled := true;
      FRM_ProgTxt.Btn_CanGer.Caption := 'Pronto';
      FRM_ProgTxt.Refresh;
    end;
end;

procedure TFrm_TxttoSql.BTN_IMPORTAClick(Sender: TObject);
begin
  TabDestino.TableName := Trim(EDT_TABELADESTINO.Text);
  TabDestino.Close;
  TabDestino.SQL.Clear;
  ImportaDados(FEDT_ARQUIVO.FileName);
  if lTerminou then
    FRM_ProgTxt.Btn_CanGer.Caption := 'Fechar'
  else
    if lCancelar then
      begin
        FRM_ProgTxt.Btn_CanGer.Caption := 'Abortar';
        FRM_ProgTxt.Refresh;
      end
    else
      begin
        ShowMessage('Ocorreram erros... Verifique!!!');
        FRM_ProgTxt.Btn_CanGer.Caption := 'Abortar';
        FRM_ProgTxt.Refresh;
      end;
end;

procedure TFrm_TxttoSql.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  KEY := UpCase(key);
end;

Procedure TFrm_TxttoSql.ImportaDados(cNomeArq : String);
var cRegistro, cText : String;
    nReg, nCampos, nLin : Integer;
    oGridMostra : TDBGrid;
    vDados : Variant;
    Arq : TextFile;
    lCriar, lCriarMesmo, lMesmoRegistro : Boolean ;
    dCampoData : TDate;
begin
   lCancelar := false;
   AssignFile(Arq,cNomeArq);
   Reset(Arq);
   for nLin := 1 to StrtoInt(EDT_LINHAINICIO.Text) - 1 do
     Readln(Arq);
   nReg := 0;
   nTotLin := nTotLin - (StrtoInt(EDT_LINHAINICIO.Text)-1);
   lCriar := false;
   lAbort := false;
   lTerminou := false;
   lCriarMesmo := false;
   try
     begin
       TabDestino.Active := True;
       lTabela := True;
     end;
   except
//     On E:Exception do
//       E.Create('Tabela N„o existe!!');
//      MessageDlg('H· algum problema com a Tabela. Verifique!! ' +
//      E.Message, mtError, [mbok],0);
   end;
   if lTabela then
     if not Compara then
        if MessageDlg('Estrutura da tabela est· diferente da existente no Banco..'+#13+#10+
                      'Se continuar ir· perder os dados que est· no Banco. Continua..??',mtConfirmation,[mbYes,mbNo],0) = mrNo then
          begin
           lTerminou := false;
           exit;
          end
        else lCriarMesmo := true;
   if lTabela then
     if not lCriarMesmo then
       begin
         Application.CreateForm(TFrm_MsgAlerta,Frm_MsgAlerta);
         Frm_MsgAlerta.ShowModal;
       end
     else lSobrepoe := true;
     if lSobrepoe then
        begin
          TabDestino.Active := false;
          OraScript1.SQL.Clear;
          OraScript1.SQL.Add('DROP TABLE '+EDT_TABELADESTINO.Text);
          OraScript1.Execute;
          lCriar := true;
        end;
   if (not lCriar) and (not lAbort) then
      lCriar := true;
   if lCriar then
      begin
        OraScript1.SQL.Clear;
        OraScript1.SQL.Add(ScriptSql);
        OraScript1.Execute;
        TabDestino.Active := true;
      end;
   if lAbort or lCancel then
     begin
       lTerminou := false;
       exit;
     end
   else
     begin
       TabTemp.DisableControls;
       nHoraGer := HoraSeg(TimeToStr(Now));
       Application.CreateForm(TFRM_ProgTxt,FRM_ProgTxt);
       FRM_ProgTxt.Visible := True;
       FRM_ProgTxt.Show;
       FRM_ProgTxt.Refresh;
       nTotGer := nTotLin;
       FRM_ProgTxt.Lbl_Tit.Caption := 'Importando Dados...!!';
       FRM_ProgTxt.Gag_Ger.MaxValue := nTotger;
       FRM_ProgTxt.Gag_Ger.Progress:= FRM_ProgTxt.Gag_Ger.Progress + 1;
       FRM_ProgTxt.Gag_Ger.Refresh;

       FRM_ProgTxt.Lbl_DecGer.Caption:= SegHora((HoraSeg(TimeToStr(Now)) - nHoraGer));
       FRM_ProgTxt.Lbl_EstGer.Caption:= SegHora((HoraSeg(TimeToStr(Now)) - nHoraGer) *
                            Variant(nTotGer / FRM_ProgTxt.Gag_Ger.Progress ));
       FRM_ProgTxt.Refresh;

       while not eof(arq) do
         begin
           Readln(Arq,cRegistro);
           nReg := nReg + 1;
           lMesmoRegistro := false;
           OraSession1.StartTransaction;
           try
             begin
               TabTemp.First;
               nCampos := 0;
               while nCampos <=  (TabDestino.Fields.Count - 1) do
                 begin
                   if TabTemp.Locate('Nome',TabDestino.Fields.Fields[nCampos].FieldName,[]) then
                     begin
                       if Copy(cRegistro,TabTemp.FieldByName('Col').AsInteger,
                                         TabTemp.FieldByName('Tam').AsInteger) <> '' then
                         begin
                           vDados := TrataDados(Copy(cRegistro,TabTemp.FieldByName('Col').AsInteger,
                                                    TabTemp.FieldByName('Tam').AsInteger));
                           if TabTemp.FieldByName('Masc').AsString = 'S' then
                             vDados := LimpaMask(String(vDados));
                           if TabTemp.FieldByName('Tipo').AsString = 'D' then
                             begin
                               dCampoData := StrtoDate(Strzero(StrtoInt(Copy(vDados,7,2)),2)+'/'+Copy(vDados,5,2)+'/'+Copy(vDados,1,4));
                               if TabTemp.FieldByName('Pesq').AsString = 'Sim' then
                                 begin
                                   if TabDestino.Locate(TabTemp.FieldByName('Nome').AsString,
                                      dCampoData,[]) then
                                      lMesmoRegistro := true;
                                 end;
                               if not lMesmoRegistro then
                                 begin
                                   TabDestino.Append;
                                   lMesmoRegistro := true;
                                 end
                               else TabDestino.Edit;
                               TabDestino.Fields.Fields[nCampos].Value := dCampoData;
                             end
                           else
                             begin
                               if TabTemp.FieldByName('Pesq').AsString = 'Sim' then
                                 begin
                                   if TabDestino.Locate(TabTemp.FieldByName('Nome').AsString,
                                      vDados,[]) then
                                      lMesmoRegistro := true;
                                 end;
                               if not lMesmoRegistro then
                                 begin
                                   TabDestino.Append;
                                   lMesmoRegistro := true;
                                 end
                               else TabDestino.Edit;
                               if vDados = '' then
                                 TabDestino.Fields.Fields[nCampos].Value := null
                               else TabDestino.Fields.Fields[nCampos].Value := vDados;
                             end;
                         end;
                     end;
                   nCampos := nCampos + 1;
                   TabTemp.Next;
                 end;
               OraSession1.Commit;
               FRM_ProgTxt.Gag_Ger.Progress:= FRM_ProgTxt.Gag_Ger.Progress + 1;
               FRM_ProgTxt.Gag_Ger.Refresh;

               FRM_ProgTxt.Lbl_DecGer.Caption:= SegHora((HoraSeg(TimeToStr(Now)) - nHoraGer));
               FRM_ProgTxt.Lbl_EstGer.Caption:= SegHora((HoraSeg(TimeToStr(Now)) - nHoraGer) *
                                    Variant(nTotGer  / FRM_ProgTxt.Gag_Ger.Progress ));
               FRM_ProgTxt.Refresh;
             end;
           except
             begin
               OraSession1.Rollback;
               ShowMessage('Erro ao gravar tabela destino!!');
               lTerminou := false;
               exit;
             end;
           end;
           Application.ProcessMessages;
           if lCancelar then
             begin
               lTerminou := false;
               exit;
             end;
         end;
       Reset(Arq);
       TabDestino.First;
       TabTemp.EnableControls;
       TabTemp.First;
       lTerminou := true;
       lSobrepoe := false;
       lAdiciona := false;
     end;
end;

function TFrm_TxttoSql.Compara:Boolean;
var nCampos, nCpoOrigem, nCpoDestino : integer;
begin
  result := true;
  for nCampos := 0 to TempDados.Fields.Count -1 do
    Inc(nCpoOrigem,1);
  for nCampos := 0 to TabDestino.Fields.Count -1 do
    if TabDestino.Fields.Fields[nCampos].FieldName <> 'ROWID' then
      Inc(nCpoDestino,1);
  for nCampos := 0 to TempDados.Fields.Count -1 do
    if TabDestino.FindField(TempDados.FieldDefs[nCampos].Name) = nil then
      begin
        break;
        result := false;
      end;
  if nCpoOrigem > nCpoDestino then
    result := false;
end;

procedure TFrm_TxttoSql.DBGrid1CellClick(Column: TColumn);
var oPesq : TBookmark;
begin
  if Column.Field.FullName = 'Masc' then
    begin
      BTN_IMPORTA.Enabled := false;
      TempDados.Open;
      TempDados.Edit;
      TempDados.DeleteFields;
      TempDados.Close;
      if not (DataSource1.DataSet.State in [dsedit,dsinsert]) then
        DataSource1.DataSet.Edit;
      if DataSource1.DataSet.FieldByName('Masc').Value = 'S' then
         DataSource1.DataSet.FieldByName('Masc').Value := ''
      else DataSource1.DataSet.FieldByName('Masc').Value := 'S';
      DataSource1.DataSet.Post;

    end;

  if Column.Field.FullName = 'Tag' then
    begin
      BTN_IMPORTA.Enabled := false;
      TempDados.Open;
      TempDados.Edit;
      TempDados.DeleteFields;
      TempDados.Close;
      if not (DataSource1.DataSet.State in [dsedit,dsinsert]) then
        DataSource1.DataSet.Edit;
      if DataSource1.DataSet.FieldByName('Tag').Value = 'Sim' then
         DataSource1.DataSet.FieldByName('Tag').Value := ''
      else DataSource1.DataSet.FieldByName('Tag').Value := 'Sim';
      DataSource1.DataSet.Post;
    end;

  if Column.Field.FullName = 'Pesq' then
    begin
      BTN_IMPORTA.Enabled := false;
      TempDados.Open;
      TempDados.Edit;
      TempDados.DeleteFields;
      TempDados.Close;
      if not (DataSource1.DataSet.State in [dsedit,dsinsert]) then
        DataSource1.DataSet.Edit;
      oPesq := DataSource1.DataSet.GetBookmark;
      DataSource1.DataSet.DisableControls;
      if DataSource1.DataSet.FieldByName('Pesq').Value = Null then
        begin
          DataSource1.DataSet.First;
          while not DataSource1.DataSet.Eof do
            Begin
              DataSource1.DataSet.Edit;
              DataSource1.DataSet.FieldByName('Pesq').AsString := '';
              DataSource1.DataSet.Next;
            end;
          DataSource1.DataSet.GotoBookmark(oPesq);
          DataSource1.DataSet.Edit;
          DataSource1.DataSet.FieldByName('Pesq').AsString := 'Sim';
        end
      else
        begin
          DataSource1.DataSet.Edit;
          DataSource1.DataSet.FieldByName('Pesq').Value := Null;
        end;
      DataSource1.DataSet.Post;
      DataSource1.DataSet.EnableControls;
      DataSource1.DataSet.GotoBookmark(oPesq);
    end;

end;

procedure TFrm_TxttoSql.DBGrid1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var oPontoBreak :  TBookMark;
    vValor : Variant;
begin
  if Key = VK_DOWN then
    begin
      vValor := (DataSource1.DataSet.FieldByName('Tam').Value +
                 DataSource1.DataSet.FieldByName('Col').Value);
      if vValor > 0 then
        begin
          DataSource1.DataSet.DisableControls;
          DataSource1.DataSet.Next;
          if not DataSource1.DataSet.Eof then
            begin
              DataSource1.DataSet.Edit;
              DataSource1.DataSet.FieldByName('Col').Value := vValor;
              oPontoBreak := DataSource1.DataSet.GetBookmark;
              DataSource1.DataSet.Post;
              DataSource1.DataSet.GotoBookmark(oPontoBreak);
              DataSource1.DataSet.Prior;
            end;
          DataSource1.DataSet.EnableControls;
        end;
    end;
end;

Function TFrm_TxttoSql.iif(Condicao: Boolean; RetornaTrue, RetornaFalse: Variant): Variant;
Begin
   If Condicao Then
      Result := RetornaTrue
   Else
      Result := RetornaFalse;
End;

procedure TFrm_TxttoSql.DBGrid1MouseMove(Sender: TObject;
  Shift: TShiftState; X, Y: Integer);
begin
  if DBGrid1.MouseCoord(x,y).X = 1 then
    DBGrid1.Hint := 'Informe o NOME do Campo!';
  if DBGrid1.MouseCoord(x,y).X = 2 then
    DBGrid1.Hint := 'Informe o TIPO do Campo (C,N,D,M)!';
  if DBGrid1.MouseCoord(x,y).X = 3 then
    DBGrid1.Hint := 'Informe o TAManho do Campo!';
  if DBGrid1.MouseCoord(x,y).X = 4 then
    DBGrid1.Hint := 'Informe se existe DECimal no TAManho do Campo!';
  if DBGrid1.MouseCoord(x,y).X = 5 then
    DBGrid1.Hint := 'Informe a PosiÁ„o da COLUNA Inicial do Campo!';
  if DBGrid1.MouseCoord(x,y).X = 6 then
    DBGrid1.Hint := 'Informe se vai Importar o Campo!';
  if DBGrid1.MouseCoord(x,y).X = 7 then
    DBGrid1.Hint := 'Informe se vai Pesquisar a ExistÍncia do Registro para Inclus„o ou N„o!';
end;
function TFrm_TxttoSql.LimpaMask(cMascarado : String) : String;
  var iPos : Integer;
const
  aMask : Array[0..4] of String = ('-','.','/',',','_');
begin
  for iPos := low(aMask) to High(aMask) do
    while Pos(aMask[iPos], cMascarado) > 0 do
      System.Delete( cMascarado, Pos(aMask[iPos], cMascarado), 1);

  result := cMascarado;
end;

function TFrm_TxttoSql.TrataDados(Conteudo: String): String;
begin
  Result := Trim(Conteudo);
  Result := RemoveAcento(Result);
  Result := UpperCase(Result);
end;

end.




