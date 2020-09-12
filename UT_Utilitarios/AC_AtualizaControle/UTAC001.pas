unit UTAC001;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Mask, ToolEdit, Grids, DBGrids, Buttons, ImgList, ComCtrls, ExtCtrls,
  Ora, MemDS, DBAccess, delmenu, DBClient, MConnect, SConnect, Db, DBCtrls,
  Enter,
  LMDPanelFill, LMDGroupBox, LMDCustomComponent, LMDCustomHint,
  LMDCustomShapeHint, LMDShapeHint, LMDCustomPanelFill, LMDCustomControl,
  LMDCustomPanel, LMDCustomBevelPanel, LMDCustomParentPanel,
  LMDCustomGroupBox, OraScript;



type
  TFRM_UTAC001 = class(TForm)
    Panel2: TPanel;
    BTN_ATUALIZA: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton3: TSpeedButton;
    BTN_SAIR: TSpeedButton;
    LMDGroupBox1: TLMDGroupBox;
    SpeedButton9: TSpeedButton;
    DelSysMenuItems1: TDelSysMenuItems;
    MREnter1: TMREnter;
    CONEXAO_DESEN: TOraSession;
    TIMER: TTimer;
    Pnl_Principal: TLMDPanelFill;
    LMDPanelFill1: TLMDPanelFill;
    LMDShapeHint1: TLMDShapeHint;
    btn_triggers: TSpeedButton;
    SpeedButton6: TSpeedButton;
    LST_VIEW1: TListView;
    LST_VIEW2: TListView;
    CONEXAO_PROD: TOraSession;
    QRY_P: TOraQuery;
    QRY_T: TOraQuery;
    QRY_PCPATHIMG: TStringField;
    QRY_PNSENHAVZ: TIntegerField;
    QRY_PCPATHBASE: TStringField;
    QRY_PCPATHIND: TStringField;
    QRY_PCNOMERAZ: TStringField;
    QRY_PCPATHLOGO: TStringField;
    QRY_PCSENHAORA: TStringField;
    QRY_PCUSERORA: TStringField;
    QRY_PCSERVORA: TStringField;
    QRY_PCTITLOGIN: TStringField;
    QRY_PCCARACINVA: TStringField;
    QRY_PCBAIRROPREF: TStringField;
    QRY_PNCEP: TFloatField;
    QRY_PCCOMPLEPREF: TStringField;
    QRY_PCCNPJ: TStringField;
    QRY_PCFONEPREF: TStringField;
    QRY_PCCONTATOPREF: TStringField;
    QRY_PCPONTOREM: TStringField;
    QRY_PCENDPREF: TStringField;
    QRY_PMUNICIPIO: TStringField;
    QRY_PCXPOSTAL: TStringField;
    QRY_PNNUMERO: TFloatField;
    QRY_PCUF: TStringField;
    QRY_PCLISTATAB: TStringField;
    DIAL_PROD: TConnectDialog;
    DIAL_DESEN: TConnectDialog;
    QRY_TAB1: TOraQuery;
    QRY_TAB2: TOraQuery;
    QRY_TEMP: TOraQuery;
    QRY_A: TOraQuery;
    script_delete: TOraScript;
    QRY_D: TOraQuery;
    QRY_O: TOraQuery;
    OraScript: TOraScript;
    pnl_mens: TPanel;
    qry_tabprod: TOraQuery;
    qry_sequence: TOraQuery;
    qry_columns: TOraQuery;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BTN_SAIRClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure TIMERTimer(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BTN_ATUALIZAClick(Sender: TObject);
    procedure btn_triggersClick(Sender: TObject);
  private
    { Private declarations }
  public
    procedure MontaLista;
    procedure AtualizaBD;
    procedure MontaSql(Qry_Monta : TOraQuery; cNomeTab : String);
    procedure LimpaRef(oTabQuery : TOraQuery; cNomeTab : String; nSeq : Integer; cIdTab : String);
    procedure LogErro(cTabela : String; nId : Integer; Msg : String);
    procedure CriaTrigger(Tabela: String);
    function CriaStrLancaLog(Tipo, Campo, Tabela,
      TipoParam: String): String;
    { Public declarations }
  end;

var
  Lista : TStringList;
  cFile : TextFile;
  FRM_UTAC001: TFRM_UTAC001;
  function RemoveAcento(Str: String): String;
  function LimpaMask(cMascarado: String): String;

implementation


{$IFDEF SOZINHO}
   uses MPLLIB;
{$ELSE}
   uses MPLLIB, TelaPrin;
{$ENDIF}


{$R *.DFM}


function TFRM_UTAC001.CriaStrLancaLog(Tipo, Campo,
  Tabela, TipoParam: String): String;
begin
  if (Tipo = 'NUMBER')  or (Tipo = 'INT') or
     (Tipo = 'INTEGER') or (Tipo = 'NUMERIC') or
     (Tipo = 'REAL') then
    Result := 'lancalog('+QuotedStr(Tabela)+','+QuotedStr(Campo)+','+
    'to_char(:OLD.'+Campo+'),to_char(:'+TipoParam+'.'+Campo+'),CDATA,CREGISTRO,CTIPO);'
  else
    if Tipo = 'DATE' then
      Result := 'lancalog('+QuotedStr(Tabela)+','+QuotedStr(Campo)+','+
       'to_char(:OLD.'+Campo+','+QuotedStr('dd-mm-yyyy')+
       '),to_char(:'+TipoParam+'.'+Campo+','+QuotedStr('dd-mm-yyyy')+
       '),CDATA,CREGISTRO,CTIPO);'
    else
      Result := 'lancalog('+QuotedStr(Tabela)+','+QuotedStr(Campo)+','+
       ':OLD.'+Campo+',:'+TipoParam+'.'+Campo+',CDATA,CREGISTRO,CTIPO);'
end;



procedure TFRM_UTAC001.CriaTrigger(Tabela: String);
begin
  with OraScript.SQL do
    begin
      Tabela := UpperCase(Tabela);
      Clear;
      //verifica se existe uma sequencia criada para tabela
      qry_sequence.Close;
      qry_sequence.ParamByName('sequence').asString :='SEQ_'+Tabela;
      qry_sequence.Open;
      //se n„o existe
      if qry_sequence.IsEmpty then
        begin
          //cria a sequencia da tabela
          Add('CREATE SEQUENCE SEQ_'+Tabela);
          Add('START WITH 1');
          Add('MAXVALUE 999999999999999999999999999');
          Add('MINVALUE 0');
          Add('NOCYCLE');
          Add('NOCACHE');
          Add('NOORDER;');
          OraScript.Execute;
          Clear;
        end;
      //cria trigger para ativaÁ„o de sequencia
      Add('CREATE OR REPLACE TRIGGER TRG_'+Tabela+' BEFORE INSERT ON ' + Tabela);
      Add('REFERENCING OLD AS OLD NEW AS NEW FOR EACH ROW');
      Add('begin');
      Add('   select seq_'+LowerCase(Tabela)+'.nextval into:new.nid'+LowerCase(Tabela)+' from dual;');
      if (Tabela = 'CADFIS') or (Tabela = 'CADJUR') then
        Add('   select seq_cadgrl.currval into:new.nidcadgrl from dual;');
      Add('end;');
      OraScript.Execute;

      qry_columns.Close;
      qry_columns.ParamByName('cnometbl').asString := Tabela;
      qry_columns.Open;
      //cria a trigger de log de deleÁ„o
      Clear;
      Add('CREATE OR REPLACE TRIGGER TRG_'+Tabela+'_D BEFORE DELETE');
      Add('ON '+Tabela);
      Add('FOR EACH ROW');
      Add('declare');
      Add('  CTIPO varchar2(1);');
      Add('  CDATA varchar2(20);');
      Add('  CREGISTRO varchar(10);');
      Add('begin');
      Add('  CTIPO := '+QuotedStr('D')+';');
      Add('  CDATA := to_char(sysdate,'+QuotedStr('dd-mm-yyyy hh:mi:ss')+');');
      Add('  CREGISTRO := TO_CHAR(:OLD.NID'+Tabela+');');
      qry_columns.First;
      while not(qry_columns.Eof) do
        begin
          if qry_columns.FieldByName('column_name').asString <> 'NID'+Tabela then
            Add('  '+CriaStrLancaLog(qry_columns.FieldByName('data_type').asString,
              qry_columns.FieldByName('column_name').asString,Tabela,'OLD'));
          qry_columns.Next;
        end;
      Add('end;');
      OraScript.Execute;
      //fim da criacao da trigger da deleÁ„o

      //cria trigger de update,insert para log
      Clear;
      Add('CREATE OR REPLACE TRIGGER TRG_'+Tabela+'_IU AFTER INSERT OR UPDATE');
      Add('ON ' + Tabela);
      Add('FOR EACH ROW');
      Add('declare');
      Add('  CTIPO varchar2(1);');
      Add('  CDATA varchar2(20);');
      Add('  CREGISTRO varchar(10);');
      Add('begin');
      Add('  if INSERTING then');
      Add('     CTIPO := '+QuotedStr('I')+';');
      Add('  else');
      Add('     CTIPO := '+QuotedStr('U')+';');
      Add('  end if;');
      Add('  CDATA := to_char(sysdate,'+QuotedStr('dd-mm-yyyy hh:mi:ss')+');');
      Add('  CREGISTRO := TO_CHAR(:NEW.NID'+Tabela+');');
      qry_columns.First;
      while not(qry_columns.Eof) do
        begin
          if qry_columns.FieldByName('column_name').asString <>'NID'+Tabela then
            Add('  '+CriaStrLancaLog(qry_columns.FieldByName('data_type').asString,
              qry_columns.FieldByName('column_name').asString,Tabela,'NEW'));
          qry_columns.Next;
        end;
      Add('end;');
      OraScript.Execute;
      //fim da criaÁ„o da trigger de update/insert para log
    end;//with OraScript

end;


function LimpaMask(cMascarado : String) : String;
  var iPos : Integer;
const
  aMask : Array[0..4] of String = ('-','.','/',',','_');
begin
  for iPos := low(aMask) to High(aMask) do
    while Pos(aMask[iPos], cMascarado) > 0 do
      System.Delete( cMascarado, Pos(aMask[iPos], cMascarado), 1);

  result := cMascarado;
end;


function RemoveAcento(Str:String): String;
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

procedure TFRM_UTAC001.FormCreate(Sender: TObject);
var cUser, cAplic : String;
begin
  try
    begin
      CONEXAO_DESEN.Connected := true;
      CONEXAO_PROD.Connected := true;
      cUser := CONEXAO_DESEN.Username;
      cAplic := Application.ExeName;
      PassaUsuaAplicBanco(CONEXAO_PROD,cUser,cAplic);
    end;
  except
    TIMER.Enabled := True;
  end;
end;

procedure TFRM_UTAC001.TIMERTimer(Sender: TObject);
begin
  if not CONEXAO_DESEN.Connected then
    begin
      ShowMessage('Banco Desenvolvimento n„o Conectado..!!  Sistema ABORTADO!!');
      close;
    end;
  if not CONEXAO_PROD.Connected then
    begin
      ShowMessage('Banco ProduÁ„o n„o Conectado..!!  Sistema ABORTADO!!');
      close;
    end;
end;

procedure TFRM_UTAC001.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   QRY_P.Close;
   QRY_T.Close;
   QRY_A.Close;
   QRY_D.Close;
   QRY_O.Close;
  {$IFDEF SOZINHO}
   //
  {$ELSE}
    Frm_TelaPrin.Frm_Display.RemoveForm(FRM_TXTTOSQL,false);
    Frm_TelaPrin.Pnl_Menu.Enabled := true;
    Frm_TelaPrin.Lbl_TituloAplicacao.Caption := cNomeAplica;
  {$ENDIF}
  CONEXAO_DESEN.Connected := false;
  CONEXAO_PROD.Connected := false;
  Action := caFree;
end;

procedure TFRM_UTAC001.BTN_SAIRClick(Sender: TObject);
begin
  Close;
end;

procedure TFRM_UTAC001.MontaLista;
var x : integer;
begin
   LST_VIEW1.Items.Clear;
   LST_VIEW2.Items.Clear;
   Lista := TStringList.Create;
   Lista.CommaText := QRY_P.FieldByName('CLISTATAB').AsString;
   for x := 0 to Lista.Count -1 do
     begin
       QRY_T.Locate('CNOMETBL',Lista.Strings[x],[]);
       LST_VIEW1.Items.Add.Caption := QRY_T.FieldByName('CDESCRTBL').AsString;
     end;
end;


procedure TFRM_UTAC001.FormShow(Sender: TObject);
begin
  QRY_P.Open;
  QRY_T.Open;
  QRY_A.Open;
  QRY_D.Open;
  QRY_O.Open;
  MontaLista;
end;

procedure TFRM_UTAC001.AtualizaBD;
var y : integer;
    ncpo : integer;

begin
  for y := 0 to Lista.Count -1 do
    begin
      QRY_TAB1.Close;
      QRY_TAB2.Close;
      QRY_TAB1.SQL.Clear;
      QRY_TAB2.SQL.Clear;
      QRY_TAB2.SQLDelete.Clear;
      QRY_TAB2.SQLInsert.Clear;
      QRY_TAB2.SQLUpdate.Clear;
      QRY_TAB1.SQL.Add('select * from '+Lista.Strings[y]+' order by NID'+Lista.Strings[y]);
      QRY_TAB2.SQL.Add('select * from '+Lista.Strings[y]);
      LST_VIEW1.Items[y].SubItems.Add('Atualizando');
      LST_VIEW1.Refresh;
      QRY_TAB1.Open;
      QRY_TAB2.Open;
      MontaSql(QRY_TAB2,Lista.Strings[y]);
      try
        CONEXAO_PROD.StartTransaction;
        QRY_TAB1.First;
        While not QRY_TAB1.Eof do
          begin

            if Lista.Strings[y] = 'TBL_ET' then
               begin
                 if not (QRY_TAB2.Locate('NIDTBL_T;NIDTBL_D', VarArrayOf([
                    QRY_TAB1.FieldByName('NIDTBL_T').AsInteger,
                    QRY_TAB1.FieldByName('NIDTBL_D').AsInteger]),[])) then
                    QRY_TAB2.Insert;
               end
            else

            if Lista.Strings[y] = 'TBL_AO' then
               begin
                 if not (QRY_TAB2.Locate('NIDTBL_A;NIDTBL_O', VarArrayOf([
                    QRY_TAB1.FieldByName('NIDTBL_A').AsInteger,
                    QRY_TAB1.FieldByName('NIDTBL_O').AsInteger]),[])) then
                    QRY_TAB2.Insert;
               end
            else

            if QRY_TAB2.Locate('NID'+Lista.Strings[y],
               QRY_TAB1.FieldByName('NID'+Lista.Strings[y]).AsInteger,[]) then
               QRY_TAB2.Edit
            else QRY_TAB2.Insert;

            if QRY_TAB2.State in [dsInsert,dsEdit] then
              begin
                for ncpo := 0 to QRY_TAB1.Fields.Count -1 do
                    QRY_TAB2.Fields.Fields[ncpo].Value :=
                    QRY_TAB1.Fields.Fields[ncpo].Value;
                QRY_TAB2.Post;
              end;

            QRY_TAB1.Next;

          end;
        CONEXAO_PROD.Commit;
      LST_VIEW1.Items[y].SubItems[0]:= 'ConcluÌdo';
      LST_VIEW1.Refresh;
      except
        On E: Exception do
          begin
            CONEXAO_PROD.Rollback;
            MessageDlg('Erro CrÌtico. A AplicaÁ„o ser· finalizada'+#13+
            'Erro:' + E.Message,mtInformation,[mbOk],0);
            QRY_TAB1.Close;
            QRY_TAB2.Close;
            FRM_UTAC001.Close;
          end;
      end;
    end;
  if MessageDlg('O Sistema atualizou as Tabelas de Controle com sucesso!!'+#10+#13+
                'O Sistema precisa limpar referÍncias antigas, Prossegue?',mtConfirmation,[mbYes,mbNo],0) = mrYes then
     begin
       LST_VIEW2.Items.Clear;
       AssignFile(cFile,ExtractFilePath(Application.EXEName)+'LogErro.txt');
       LimpaRef(QRY_A,'TBL_A',0,'NIDTBL_A');
       LimpaRef(QRY_T,'TBL_T',1,'NIDTBL_T');
       LimpaRef(QRY_D,'TBL_D',2,'NIDTBL_D');
       LimpaRef(QRY_O,'TBL_O',3,'NIDTBL_O');
       if FileExists(ExtractFilePath(Application.EXEName)+'LogErro.txt') then
         CloseFile(cFile);
     end;
end;

procedure TFRM_UTAC001.MontaSql(Qry_Monta : TOraQuery; cNomeTab : String);
var oLista : TStringList;
    x, xtot : integer;
    cDelete, cWhere, cUpdate, cCpoUpdt, cInsert, cCpoIns1, cCpoIns2, cValues : string;
begin
   Qry_Monta.Close;
   Qry_Monta.SQLDelete.Clear;
   Qry_Monta.SQLInsert.Clear;
   Qry_Monta.SQLUpdate.Clear;
   oLista := TStringList.Create;
   Qry_Monta.GetFieldNames(oLista);
   cWhere := ' WHERE NID'+cNomeTab+' = :NID'+cNomeTab;
   cDelete := 'DELETE '+cNomeTab+cWhere;
   cUpdate := 'UPDATE ' +cNomeTab+' SET ';
   cInsert := 'INSERT INTO ' +cNomeTab+' (';
   cValues := ') VALUES (';
   cCpoUpdt := '';
   cCpoIns1 := '';
   cCpoIns2 := '';
   xtot := oLista.Count-1;
   for x := 0 to oLista.Count -1 do
     begin
       cCpoUpdt := cCpoUpdt + oLista.Strings[x]+ ' = :'+oLista.Strings[x];
       cCpoIns1 := cCpoIns1 + oLista.Strings[x];
       cCpoIns2 := cCpoIns2 + ':'+oLista.Strings[x];
       if (x < xtot) then
         begin
           cCpoUpdt := cCpoUpdt + ', ';
           cCpoIns1 := cCpoIns1 + ', ';
           cCpoIns2 := cCpoIns2 + ', ';
         end;
     end;
   cUpdate := cUpdate + cCpoUpdt + cWhere;
   cInsert := cInsert + cCpoIns1 + cValues + cCpoIns2 + ')';
   Qry_Monta.SQLDelete.Add(cDelete);
   Qry_Monta.SQLInsert.Add(cInsert);
   Qry_Monta.SQLUpdate.Add(cUpdate);
   Qry_Monta.Open;
end;

procedure TFRM_UTAC001.LimpaRef(oTabQuery : TOraQuery; cNomeTab : String; nSeq : Integer; cIdTab : String);
begin
  if QRY_T.Locate('CNOMETBL',cNomeTab,[]) then
    begin
      LST_VIEW2.Items.Add.Caption := QRY_T.FieldByName('CDESCRTBL').AsString;
      LST_VIEW2.Items[nSeq].SubItems.Add('Limpando!');
      Application.ProcessMessages;
      QRY_TEMP.Close;
      QRY_TEMP.SQL.Clear;
      QRY_TEMP.SQL.Add('select * from '+cNomeTab);
      QRY_TEMP.Open;
      MontaSql(QRY_TEMP,cNomeTab);
      QRY_TEMP.First;
      while not QRY_TEMP.Eof do
        begin
          if not oTabQuery.Locate(cIdTab,QRY_TEMP.FieldByName(cIdTab).Value,[]) then
            try
              if cNomeTab = 'TBL_T' then
                begin
                  script_delete.SQL.Clear;
                  script_delete.SQL.Add('delete from TBL_AT where nidtbl_t = '+
                  QRY_TEMP.FieldByName(cIdTab).AsString + ';');
                  script_delete.Execute;
                end;
              if cNomeTab = 'TBL_D' then
                begin
                  script_delete.SQL.Clear;
                  script_delete.SQL.Add('delete from TBL_UD where nidtbl_d = '+
                  QRY_TEMP.FieldByName(cIdTab).AsString + ';');
                  script_delete.SQL.Add('delete from TBL_ET where nidtbl_d = '+
                  QRY_TEMP.FieldByName(cIdTab).AsString + ';');
                  script_delete.Execute;
                end;
              if cNomeTab = 'TBL_O' then
                begin
                  script_delete.SQL.Clear;
                  script_delete.SQL.Add('delete from TBL_AO where nidtbl_o = '+
                  QRY_TEMP.FieldByName(cIdTab).AsString + ';');
                  script_delete.Execute;
                end;
              QRY_TEMP.Delete;
            except
              On E:Exception do
                LogErro(cNomeTab,QRY_TEMP.FieldByName(cIdTab).AsInteger,E.Message);
            end;
          QRY_TEMP.Next;
          if QRY_TEMP.Eof then
            LST_VIEW2.Items[nSeq].SubItems[0]:= 'Finalizado';
        end;
    end;
end;

procedure TFRM_UTAC001.LogErro(cTabela : String; nId : Integer; Msg : String);
begin
   try
     if FileExists(ExtractFilePath(Application.EXEName)+'LogErro.txt') then
       begin
         Writeln(cFile,Msg+' Erro na '+cTabela+' Registro '+IntToStr(nId));
       end
     else
       begin
         Rewrite(cFile,ExtractFilePath(Application.EXEName)+'LogErro.txt');
         Writeln(cFile,'Inicio de Arquivo ');
         Writeln(cFile,Msg+' Erro na '+cTabela+' Registro '+IntToStr(nId));
       end;
   Except
     CloseFile(cFile);
   end;
end;


procedure TFRM_UTAC001.BTN_ATUALIZAClick(Sender: TObject);
begin
  AtualizaBD;
end;

procedure TFRM_UTAC001.btn_triggersClick(Sender: TObject);
begin
  if MessageDlg('Deseja atualizar as triggers da area de produÁ„o?',mtConfirmation,[mbYes,mbNo],0) = mrYes then
    begin
      try
        try
          pnl_mens.Visible := true;
          Application.ProcessMessages;
          qry_tabprod.Open;
          qry_tabprod.First;
          while not(qry_tabprod.Eof) do
            begin
              CriaTrigger(qry_tabprod.FieldByName('tabela').asString);
              qry_tabprod.Next;
            end;
          pnl_mens.Visible := false;
          Application.ProcessMessages;
          MessageDlg('AtualizaÁ„o executada com sucesso!',mtInformation,[mbOK],0);
        except
          On E:Exception do
            MessageDlg('Erro na atualizaÁ„o!'+#13+
            'Erro: ' + E.Message,mtError,[mbOK],0);
        end;
      finally
        pnl_mens.Visible := false;
        qry_tabprod.Close;
      end;
    end;
end;

end.



