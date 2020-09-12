unit A006ADPT;

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
  LMDSimplePanel, jpeg, LMDFill ;

type
  TFRM_A006ADPT = class(TForm)
    LMDGroupBox2: TLMDGroupBox;
    LMDPanelFill2: TLMDPanelFill;
    BTN_RETROCEDER1: TSpeedButton;
    BTN_AVANCAR1: TSpeedButton;
    DBG_GTM: TDBGrid;
    Panel2: TPanel;
    BTN_ALTERAR: TSpeedButton;
    BTN_CANCELAR: TSpeedButton;
    BTN_PESQUISAR: TSpeedButton;
    BTN_SAIR: TSpeedButton;
    BTN_AVANCAR: TSpeedButton;
    BTN_RETROCEDER: TSpeedButton;
    BTN_EXCLUIR: TSpeedButton;
    BTN_GRAVAR: TSpeedButton;
    BTN_INCLUIR: TSpeedButton;
    Label1: TLabel;
    Label2: TLabel;
    LKP_ORIGEM: TRxDBLookupCombo;
    LKP_DESTINO: TRxDBLookupCombo;
    LMDFill2: TLMDFill;
    LMDFill3: TLMDFill;
    Btn_Excluir1: TSpeedButton;
    EDT_HORAS: TMaskEdit;
    EDT_HORAS_1: TMaskEdit;
    BTN_CADDPTO: TSpeedButton;
    BTN_CADDPTO2: TSpeedButton;
    LMDFill1: TLMDFill;
    DED_CNROGUIA: TDBEdit;
    QRY_ATUADESTPROT: TOraQuery;
    DBD_DDTORIGEM: TDateEdit;
    DBD_DDTDESTINO: TDateEdit;
    LBL_AVISOGUIA: TLabel;
    procedure BTN_SAIRClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BTN_PESQUISARClick(Sender: TObject);
    procedure BTN_AVANCARClick(Sender: TObject);
    procedure BTN_RETROCEDERClick(Sender: TObject);
    procedure BTN_INCLUIRClick(Sender: TObject);
    procedure BTN_ALTERARClick(Sender: TObject);
    procedure BTN_GRAVARClick(Sender: TObject);
    procedure BTN_CANCELARClick(Sender: TObject);
    procedure BTN_EXCLUIRClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DBG_GTMColExit(Sender: TObject);
    procedure DBG_GTMColEnter(Sender: TObject);
    procedure Btn_Excluir1Click(Sender: TObject);
    procedure DBG_GTMKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BTN_RETROCEDER1Click(Sender: TObject);
    procedure BTN_AVANCAR1Click(Sender: TObject);
    procedure DBG_GTMMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure BTN_CADDPTOClick(Sender: TObject);
    procedure BTN_CADDPTO2Click(Sender: TObject);
    procedure LKP_ORIGEMChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure DED_CNROGUIAExit(Sender: TObject);
    procedure DED_CNROGUIAChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    nProtocolo: Integer;
    ListProtocolo, ListProtAtua : TStringList;
    cNroGuia : String;
    lAtuaProtGuia : Boolean;
    lIncluir : Boolean;
    procedure AtualizaListPtl;
    procedure DisEnaInterface(Status : Boolean);
  end;

var
  FRM_A006ADPT: TFRM_A006ADPT;

implementation

uses UVariaveis, MPLCtrl, D006ADPT, DMCTRL, CtrlForms;



{$R *.DFM}

procedure TFRM_A006ADPT.BTN_SAIRClick(Sender: TObject);
begin
   close ;
end;

procedure TFRM_A006ADPT.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 Action:= oControlForms.Saidas(Self,[DTM_A006ADPT],DTM_A006ADPT.DTS_154.DataSet);
end;

procedure TFRM_A006ADPT.BTN_PESQUISARClick(Sender: TObject);
begin
  Pesquisa(DTM_A006ADPT.Qry_154,true,'','');
end;

procedure TFRM_A006ADPT.BTN_AVANCARClick(Sender: TObject);
begin
   DBGenerica(DTM_A006ADPT.DTS_154,'Conexao',0,3,Nil,false);
end;

procedure TFRM_A006ADPT.BTN_RETROCEDERClick(Sender: TObject);
begin
 DBGenerica(DTM_A006ADPT.DTS_154,'Conexao',0,2,Nil,false);
end;

procedure TFRM_A006ADPT.BTN_INCLUIRClick(Sender: TObject);
begin
  DBGenerica(DTM_A006ADPT.DTS_154,'Conexao',1,0,Nil,false);
  Botoes(['Btn_Cancelar','Btn_Sair','Btn_Gravar','Btn_Excluir1','BTN_CADDPTO','BTN_CADDPTO2'],'FRM_A006ADPT',true);
  ListProtocolo.Clear;
  EDT_HORAS.Text := '';
  EDT_HORAS_1.Text := '';
  DBD_DDTORIGEM.Text := '';
  DBD_DDTDESTINO.Text := '';
  DTM_A006ADPT.DTS_152.AutoEdit := true;
  DBG_GTM.Options := DBG_GTM.Options + [dgEditing]; 
  DED_CNROGUIA.SetFocus;
end;

procedure TFRM_A006ADPT.BTN_ALTERARClick(Sender: TObject);
begin
  LKP_ORIGEMChange(Sender);
  Botoes(['Btn_Cancelar','Btn_Gravar','Btn_Sair','Btn_Excluir1','BTN_CADDPTO','BTN_CADDPTO2'],'FRM_A006ADPT',true);
  DBGenerica(DTM_A006ADPT.DTS_154,'Conexao',2,0,Nil,false);
  DTM_A006ADPT.DTS_152.AutoEdit := true;
  DBG_GTM.Options := DBG_GTM.Options + [dgEditing];
  LKP_ORIGEMChange(Sender);
  AtualizaListPtl;
  cNroGuia := DED_CNROGUIA.Text;
end;

procedure TFRM_A006ADPT.BTN_GRAVARClick(Sender: TObject);
  var
   nprot : Integer;
   cGuia : String;
begin
  if LiberadoGravacao(FRM_A006ADPT,DTM_A006ADPT.DTS_154) then
    begin
      if Trim(DED_CNROGUIA.Text) = ''then
        begin
          MessageDlg('Informar o número da Guia',mtInformation,[mbOk],0);
          DED_CNROGUIA.SetFocus;
          Abort;
        end;
      if StrToDateTime(DBD_DDTORIGEM.EditText + ' ' + EDT_HORAS.Text) > Now then
        begin
          MessageDlg('Data/horario da origem não pode ser maior que Data/Hora atual!',mtInformation,[mbOk],0);
          DBD_DDTORIGEM.SetFocus;
          Abort;
        end;
      if StrToDateTime(DBD_DDTDESTINO.EditText + ' ' + EDT_HORAS_1.Text) > Now then
        begin
          MessageDlg('Data/horario do destino não pode ser maior que Data/Hora atual!',mtInformation,[mbOk],0);
          DBD_DDTDESTINO.SetFocus;
          Abort;
        end;
      if StrToDateTime(DBD_DDTDESTINO.EditText + ' ' + EDT_HORAS_1.Text) =
         StrToDateTime(DBD_DDTORIGEM.EditText + ' ' + EDT_HORAS.Text) then
        begin
          MessageDlg('Data/horario de destino não pode ser IGUAL a data/horario de origem!',mtInformation,[mbOk],0);
          DBD_DDTDESTINO.SetFocus;
          Abort;
        end;

      if StrToDateTime(DBD_DDTDESTINO.EditText + ' ' + EDT_HORAS_1.Text) <
         StrToDateTime(DBD_DDTORIGEM.EditText + ' ' + EDT_HORAS.Text) then
        begin
          MessageDlg('Data/horario de destino não pode ser menor que a data/horario de origem!',mtInformation,[mbOk],0);
          DBD_DDTDESTINO.SetFocus;
          Abort;
        end;

      if (DTM_A006ADPT.QRY_154.State = dsInsert) or
         ((DTM_A006ADPT.QRY_154.State = dsEdit) and (cNroGuia <> DED_CNROGUIA.Text)) then
        begin
          PrepareQryTemp('select nidtbxgtm from tbxgtm where cnroguia = ' + QuotedStr(Trim(DED_CNROGUIA.Text)));
          if not(DMControle.QryTemp.IsEmpty) then
            begin
              MessageDlg('Número de guia já cadastrado!',mtInformation,[mbOk],0);
              DMControle.QryTemp.Close;
              DMControle.QryTemp.SQL.Clear;
              DED_CNROGUIA.SetFocus;
              Abort;
            end;
        end;

      if MessageDlg('Deseja salvar as alterações?',mtConfirmation,[mbYes,mbNo],0) = mrYes then
        begin
          with DTM_A006ADPT, DMControle do
            begin
              if QRY_152.State = dsInsert then
                begin
                  QRY_152.UpdateRecord;
                  if QRY_152.FieldByName('nnroprot').isNull then
                    QRY_152.Cancel
                  else
                    begin
                      QRY_152NNROPROTValidate(QRY_152.FieldByName('nnroprot'));
//                      DBG_GTM.OnColExit(Sender);
                      QRY_152.Post;
                    end;
                end
              else
                if QRY_152.State = dsEdit then
                  begin
                    QRY_152.UpdateRecord;
                    QRY_152.Post;
                  end;
              if QRY_152.RecordCount = 0 then
                begin
                  MessageDlg('Você deve informar um número de protocolo!',mtInformation,[mbOk],0);
                  QRY_152.FieldByName('nnroprot').FocusControl;
                  Abort;
                end;
              QRY_152.DisableControls;
              QRY_152.MasterSource := nil;
              try
                Conexao.StartTransaction;
                try
                  QRY_154.UpdateRecord;
                  QRY_154.FieldByName('ddtorigem').asDateTime :=
                  StrToDateTime(DBD_DDTORIGEM.EditText + ' ' + EDT_HORAS.Text);
                  lAtuaProtGuia :=
                  FormatDateTime('dd/mm/yyyy hh:mm',
                  QRY_154.FieldByName('ddtdestino').asDateTime) <>
                  (DBD_DDTDESTINO.EditText + ' ' + EDT_HORAS_1.Text);

                  QRY_154.FieldByName('ddtdestino').asDateTime :=
                  StrToDateTime(DBD_DDTDESTINO.EditText + ' ' + EDT_HORAS_1.Text);
                  QRY_154.FieldByName('crecebido').asString := 'S';
                  cGuia := QRY_154.FieldByName('cnroguia').asString;
                  DBGenerica(DTS_154,'Conexao',4,1,Nil,false);
                  QRY_154.Locate('cnroguia',cGuia,[]);
                  if not(QRY_152.IsEmpty) then
                    GravaKeyPai(DTS_152,QRY_154.FieldByName('nidtbxgtm'))
                  else
                    QRY_152.ApplyUpdates;
                  if lAtuaProtGuia then
                    begin
                      QRY_152.First;
                      while not(QRY_152.Eof) do
                        begin
                          QRY_ATUADESTPROT.ParamByName('idprot').asInteger :=
                          QRY_152.FieldByName('nidcadreq').asInteger;
                          QRY_ATUADESTPROT.ExecSQL;
                          if ListProtAtua.IndexOf(QRY_152.FieldByName('nidcadreq').asString)<> -1 then
                            ListProtAtua.Delete(ListProtAtua.IndexOf(QRY_152.FieldByName('nidcadreq').asString));
                          QRY_152.Next;
                        end;
                    end;
                  if ListProtAtua.Count > 0 then
                    begin
                      for nprot := 0 to ListProtAtua.Count - 1 do
                        if ListProtAtua.Strings[nprot] <> '' then
                          begin
                            QRY_ATUADESTPROT.ParamByName('idprot').asInteger :=
                            StrToInt(ListProtAtua.Strings[nprot]);
                            QRY_ATUADESTPROT.ExecSQL;
                          end;
                      ListProtAtua.Clear;
                    end;
                  Conexao.Commit;
                  DisEnaInterface(true);
                  Botoes(['Btn_Gravar','Btn_Cancelar','Btn_Excluir1','BTN_CADDPTO','BTN_CADDPTO2'],'FRM_A006ADPT',false);
                  DTS_152.AutoEdit := false;
                  DBG_GTM.Options := DBG_GTM.Options - [dgEditing];
                  DTM_A006ADPT.QRY_154AfterScroll(DTM_A006ADPT.QRY_154);
                except
                  On E: Exception do
                    begin
                      Conexao.Rollback;
                      MessageDlg('Não foi possivel executar a operação !' + #13 +
                                 'Erro: ' + E.Message, mtError,[mbOk],0);
                      BTN_CANCELARClick(Sender);
                    end;
                end;
              finally
                QRY_152.MasterSource := DTS_154;
                QRY_152.EnableControls;
              end;
            end;

        end;
    end;
end;

procedure TFRM_A006ADPT.BTN_CANCELARClick(Sender: TObject);
begin
   DBGenerica(DTM_A006ADPT.DTS_154,'Conexao',3, 0,Nil,false);
   DTM_A006ADPT.QRY_152.Cancel;
   DTM_A006ADPT.QRY_152.CancelUpdates;
   DTM_A006ADPT.DTS_152.AutoEdit := false;
   DBG_GTM.Options := DBG_GTM.Options - [dgEditing];
   LBL_AVISOGUIA.Visible := false;
   DisEnaInterface(true);
   Botoes(['Btn_Cancelar', 'Btn_Gravar','Btn_Excluir1','BTN_CADDPTO','BTN_CADDPTO2'],'FRM_A006ADPT',false);
   DTM_A006ADPT.QRY_154AfterScroll(DTM_A006ADPT.QRY_154);
end;

procedure TFRM_A006ADPT.BTN_EXCLUIRClick(Sender: TObject);
 var
   i : integer;
   ListaProt : TStringList;

begin
 if MessageDlg('Deseja realmente deletar a guia de tramitação ?',mtConfirmation,[mbYes,mbNo],0) = mrYes then
   begin
     with DTM_A006ADPT,DMControle do
       begin
         Conexao.StartTransaction;
         try
           ListaProt := TStringList.Create;
           try
             QRY_152.First;
             PrepareQryTemp('update cadreq set nidtbxgtm = null where nidcadreq = :nidcadreq ');
             while not(QRY_152.Eof) do
               begin
                 ListaProt.Add(QRY_152.FieldByName('nidcadreq').asString);
                 QryTemp.ParamByName('nidcadreq').asInteger :=
                 QRY_152.FieldByName('nidcadreq').asInteger;
                 QryTemp.ExecSQL;
                 QRY_152.Delete;
               end;
             QRY_152.ApplyUpdates;
             DBGenerica(DTS_154,'Conexao',5,1,Nil,false);
             for i:=0 to ListaProt.Count -1 do
               begin
                 QRY_ATUADESTPROT.ParamByName('idprot').asInteger :=
                 StrToInt(ListaProt.Strings[i]);
                 QRY_ATUADESTPROT.ExecSQL;
               end;
             Conexao.Commit;
           except
             on E: Exception do
               begin
                 Conexao.Rollback;
                 MessageDlg('Erro na executação, operação cancelada!' + #13 +
                   'Erro : ' + E.Message,mtError,[mbOk],0);
               end;
           end;
         finally
           ListaProt.Free;
           QryTemp.Close;
           QryTemp.SQL.Clear;
         end;
       end;
   end;
end;

procedure TFRM_A006ADPT.FormShow(Sender: TObject);
begin
 if not Acesso(nMatricula,'A006ADPT',DTM_A006ADPT) then
    close;
  Botoes(['Btn_Cancelar','Btn_Gravar','Btn_Excluir1','BTN_CADDPTO','BTN_CADDPTO2'],'FRM_A006ADPT',false);
  DTM_A006ADPT.QRY_152AfterScroll(DTM_A006ADPT.QRY_152);
  DTM_A006ADPT.QRY_154.FieldByName('cnroguia').ValidChars := ['A','a','1','2','3','4','5','6','7','8','9','0'];
  DTM_A006ADPT.QRY_154AfterScroll(DTM_A006ADPT.QRY_154);
  if lIncluir then
    BTN_INCLUIR.Click;
  FRM_A006ADPT.OnShow := nil;
 {é atribuido ao OnShow do Form o valor nil para que o mesmo seja executado apenas uma vez}
 {pelo fato que se outra aplicação for chamada pela tecla F3, e ao retornar da aplicação que foi chamada pela tecla}
 {o evento OnShow deste form não acontecerá, ou seja não será executado, para permanecer o mesmo status da aplicação}
 {quando o F3 foi chamado}

end;

procedure TFRM_A006ADPT.DBG_GTMColExit(Sender: TObject);
begin



{  with DBG_GTM, DTM_A006ADPT do
    begin
      if (SelectedField.FieldName = 'NNROPROT') and
         (DTS_152.DataSet.State in [dsInsert, dsEdit]) then
        if SelectedField.AsInteger <> nProtocolo then
          begin
            QRY_CONSUL.Close;
            QRY_CONSUL.ParamByName('nnroprot').asInteger := SelectedField.AsInteger;
            QRY_CONSUL.Open;
            if QRY_CONSUL.IsEmpty then
              begin
                MessageDlg('Número de protocolo não encontrado !',mtInformation,[mbOk],0);
                SelectedField.FocusControl;
                QRY_CONSUL.Close;
                Abort;
              end
            else
              if QRY_CONSUL.FieldByName('csituareq').asString = 'CANCELADO' then
                begin
                  MessageDlg('Este número de protocolo está cancelado !',mtInformation,[mbOk],0);
                  SelectedField.FocusControl;
                  QRY_CONSUL.Close;
                  Abort;
                end
              else
                if QRY_CONSUL.FieldByName('ddtprot').AsDateTime >
                   DBD_DDTORIGEM.Date then
                  begin
                    MessageDlg('Data da criação do protocolo é maior que a data da origem da guia!',mtInformation,[mbOk],0);
                    SelectedField.FocusControl;
                    QRY_CONSUL.Close;
                    Abort;
                  end
                else
                  begin
                    if LKP_ORIGEM.Text = 'PROTOCOLO' then
                      QRY_152.FieldByName('nqtdfolhas').asInteger :=
                      QRY_CONSUL.FieldByName('nqtdfolhas').asInteger;
                    QRY_152.FieldByName('nidcadreq').asInteger :=
                    QRY_CONSUL.FieldByName('nidcadreq').asInteger;
                    QRY_152.FieldByName('dat_nomereq').asString :=
                    QRY_CONSUL.FieldByName('cnome').asString;
                    QRY_152.FieldByName('dat_nomeint').asString :=
                    QRY_CONSUL.FieldByName('nomeint').asString;
                    QRY_152.FieldByName('cdescritrq').asString :=
                    QRY_CONSUL.FieldByName('cdescritrq').asString;
                    QRY_CONSUL.Close;
                  end;

          end;
    end;}
end;

procedure TFRM_A006ADPT.DBG_GTMColEnter(Sender: TObject);
begin
  with DBG_GTM do
    begin
      if SelectedField.FieldName = 'NNROPROT' then
        nProtocolo := SelectedField.AsInteger
      else
        nProtocolo := -1;
    end;
end;

procedure TFRM_A006ADPT.Btn_Excluir1Click(Sender: TObject);
begin
  if not(DTM_A006ADPT.QRY_152.IsEmpty) then
    if MessageDlg('Deseja retirar o protocolo desta guia?',mtConfirmation,[mbYes,mbNo],0) = mrYes then
      if DTM_A006ADPT.QRY_152.RecordCount > 0 then
        DTM_A006ADPT.QRY_152.Delete;

end;

procedure TFRM_A006ADPT.DBG_GTMKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  //se o usuario pressionou as teclas Ctrl+Del
  if (Shift = [ssCtrl]) and (Key = 46) Then
    //cancela o pressionamento
    KEY := 0
  else
    //se pressionou a tecla Insert
    if Key = 45 then
      //cancela o pressionamento
      Key := 0;
{    else
      if Key = VK_TAB then
        begin
            if (DBG_GTM.SelectedField.FieldName = 'NNROPROT') and
               (not(DBG_GTM.Columns[2].ReadOnly)) then
              DTM_A006ADPT.QRY_152.FieldByName('nqtdfolhas').FocusControl;

        end;}

end;

procedure TFRM_A006ADPT.BTN_RETROCEDER1Click(Sender: TObject);
begin
  DTM_A006ADPT.DTS_152.DataSet.Prior;
end;

procedure TFRM_A006ADPT.BTN_AVANCAR1Click(Sender: TObject);
begin
  DTM_A006ADPT.DTS_152.DataSet.Next;
end;

procedure TFRM_A006ADPT.DBG_GTMMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
    //se o usuario clicou com o botão direito do mouse
    //chama a pesquisa de grid
    if Button = mbRight then
      ChamaPesqGrid(DTM_A006ADPT.QRY_152,nil,'nnroprot','Protocolo');
end;


procedure TFRM_A006ADPT.BTN_CADDPTOClick(Sender: TObject);
begin
  oControlForms.AtivaForm('FRM_A017RH',shModal,nil);
  LKP_ORIGEM.LookupSource.DataSet.Refresh;
end;

procedure TFRM_A006ADPT.BTN_CADDPTO2Click(Sender: TObject);
begin
  oControlForms.AtivaForm('FRM_A017RH',shModal,nil);
  LKP_DESTINO.LookupSource.DataSet.Refresh;
end;

procedure TFRM_A006ADPT.LKP_ORIGEMChange(Sender: TObject);
begin
// DBG_GTM.Columns[2].ReadOnly := LKP_ORIGEM.Text = 'PROTOCOLO';
// DBG_GTM.Refresh;
end;

procedure TFRM_A006ADPT.FormCreate(Sender: TObject);
begin
  ListProtocolo := TStringList.Create;
  ListProtAtua  := TStringList.Create;
  ListProtAtua.Sorted := true;
  ListProtAtua.Duplicates := dupIgnore;
  lIncluir := false;
end;

procedure TFRM_A006ADPT.FormDestroy(Sender: TObject);
begin
 ListProtocolo.Free;
 ListProtAtua.Free;
end;

procedure TFRM_A006ADPT.AtualizaListPtl;
  var
    oReg: TBookMark;
begin
  with DTM_A006ADPT.QRY_152 do
    begin
      try
        ListProtocolo.Clear;
        oReg := GetBookMark;
        DisableControls;
        First;
        while not(eof) do
          begin
            ListProtocolo.Add(FieldByName('nnroprot').asString);
            Next;
          end;
        GotoBookMark(oReg);
      finally
        EnableControls;
      end;
    end;
end;

procedure TFRM_A006ADPT.DED_CNROGUIAExit(Sender: TObject);
begin
  with DTM_A006ADPT do
    begin
      if QRY_154.State = dsInsert then
        begin
          if (Pos('A',Trim(DED_CNROGUIA.Text)) <> 0) and (Pos('A',Trim(DED_CNROGUIA.Text)) <> 1) then
            begin
              MessageDlg('Número de guia invalido!',mtError,[mbOk],0);
              Abort;
            end;
          QRY_CONSULGTREB.ParamByName('cnroguia').asString :=
          UpperCase(Trim(DED_CNROGUIA.Text));
          QRY_CONSULGTREB.ExecSQL;
          if not(QRY_CONSULGTREB.IsEmpty) then
            if QRY_CONSULGTREB.FieldByName('crecebido').asString = 'S' then
              begin
                Beep;
                DED_CNROGUIA.SetFocus;
                DED_CNROGUIA.SelStart := 0;
                DED_CNROGUIA.SelLength := Length(Trim(DED_CNROGUIA.Text));
                LBL_AVISOGUIA.Visible := true;
              end
            else
              begin
                BTN_CANCELAR.Click;
                QRY_154.Locate('cnroguia',QRY_CONSULGTREB.ParamByName('cnroguia').asString,[]);
                BTN_ALTERAR.Click;
                DBD_DDTDESTINO.SetFocus;
                DisEnaInterface(false);
              end;
        end;

    end;
end;

procedure TFRM_A006ADPT.DED_CNROGUIAChange(Sender: TObject);
begin
  LBL_AVISOGUIA.Visible := false;
end;

procedure TFRM_A006ADPT.DisEnaInterface(Status: Boolean);
begin
  DED_CNROGUIA.Enabled := Status;
  LKP_ORIGEM.Enabled := Status;
  DBD_DDTORIGEM.Enabled := Status;
  EDT_HORAS.Enabled := Status;
  LKP_DESTINO.Enabled := Status;
  DBG_GTM.Enabled := Status;
  BTN_EXCLUIR1.Enabled := Status;
  BTN_CADDPTO.Enabled := Status;
  BTN_CADDPTO2.Enabled := Status;  
end;

end.




