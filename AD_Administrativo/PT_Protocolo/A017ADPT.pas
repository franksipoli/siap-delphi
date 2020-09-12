{*******************************************************************************
 *                                                                             *
 *  Programador Leandro Ribas                                                  *
 *  21 de Abril de 2005, M P Lopes Sistemas de Informação LTDA.                *
 *  Alteração Guia de Tramitação                                               *
 *  Finalizado em 23/04/2005                                                   *
 *                                                                             *
 *                                                                "vamo nessa" *
 *******************************************************************************
}


unit A017ADPT;

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
  LMDSimplePanel, jpeg, LMDFill, ppDB, ppDBPipe, ppBands, ppVar, ppCtrls,
  ppReport, ppStrtch, ppSubRpt, RxGIF, ppPrnabl, ppClass, ppCache, ppComm,
  ppRelatv, ppProd, ppViewr ;

type
  TFRM_A017ADPT = class(TForm)
    LMDGroupBox2: TLMDGroupBox;
    LMDPanelFill2: TLMDPanelFill;
    BTN_RETROCEDER1: TSpeedButton;
    BTN_AVANCAR1: TSpeedButton;
    DBG_GTM: TDBGrid;
    Panel2: TPanel;
    BTN_ALTERAR: TSpeedButton;
    BTN_CANCELAR: TSpeedButton;
    BTN_SAIR: TSpeedButton;
    BTN_EXCLUIR: TSpeedButton;
    BTN_GRAVAR: TSpeedButton;
    Label1: TLabel;
    Label2: TLabel;
    LKP_DESTINO: TRxDBLookupCombo;
    LMDFill2: TLMDFill;
    LMDFill3: TLMDFill;
    Btn_Excluir1: TSpeedButton;
    EDT_HORAS: TMaskEdit;
    BTN_CADDPTO2: TSpeedButton;
    LMDFill1: TLMDFill;
    QRY_ATUADESTPROT: TOraQuery;
    DBD_DDTORIGEM: TDateEdit;
    LBL_AVISOGUIA: TLabel;
    DED_CORIGEM: TDBEdit;
    EDT_CNROGUIA: TEdit;
    BTN_IMPRIMIR: TSpeedButton;
    RPT_GTM: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppImage2: TppImage;
    ppShape5: TppShape;
    ppShape4: TppShape;
    ppShape2: TppShape;
    ppSubReport1: TppSubReport;
    ppChildReport1: TppChildReport;
    ppTitleBand1: TppTitleBand;
    ppDetailBand2: TppDetailBand;
    ppShape7: TppShape;
    ppShape1: TppShape;
    DBT_ASSUNTO: TppDBText;
    ppShape8: TppShape;
    DBT_PROT: TppDBText;
    ppLine6: TppLine;
    ppLine7: TppLine;
    DBT_FOLHAS: TppDBText;
    ppSummaryBand1: TppSummaryBand;
    ppShape11: TppShape;
    ppLine8: TppLine;
    ppShape12: TppShape;
    ppLine9: TppLine;
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
    ppLine4: TppLine;
    ppLine5: TppLine;
    ppImage1: TppImage;
    ppDBText1: TppDBText;
    IMG_LOGO: TppImage;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLine1: TppLine;
    ppLine2: TppLine;
    ppLabel4: TppLabel;
    ppShape3: TppShape;
    ppLine3: TppLine;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppShape6: TppShape;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    IMG_VIA: TppImage;
    ppLine11: TppLine;
    ppLabel13: TppLabel;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppFooterBand1: TppFooterBand;
    DPP_DESTINO: TppDBPipeline;
    DPP_PROT: TppDBPipeline;
    DBP_DESTINOS: TppDBPipeline;
    DBP_DESTINOSppField1: TppField;
    DBP_DESTINOSppField2: TppField;
    DBP_ORIGENS: TppDBPipeline;
    ppDBText4: TppDBText;
    DBP_P: TppDBPipeline;
    ppDBText5: TppDBText;
    procedure BTN_SAIRClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BTN_ALTERARClick(Sender: TObject);
    procedure BTN_GRAVARClick(Sender: TObject);
    procedure BTN_CANCELARClick(Sender: TObject);
    procedure BTN_EXCLUIRClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
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
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure EDT_CNROGUIAChange(Sender: TObject);
    procedure EDT_CNROGUIAExit(Sender: TObject);
    procedure RPT_GTMPreviewFormCreate(Sender: TObject);
    procedure RPT_GTMPrintingComplete(Sender: TObject);
    procedure IMG_VIAPrint(Sender: TObject);
    procedure ppSummaryBand1BeforeGenerate(Sender: TObject);
    procedure DBT_ASSUNTOGetText(Sender: TObject; var Text: String);
    procedure BTN_IMPRIMIRClick(Sender: TObject);
    procedure ppLine11Print(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    nProtocolo: Integer;
    //listas que armazenam os protocolos da guia
    //e os que devem ser atualizados os status
    ListProtocolo, ListProtAtua : TStringList;
    //numero da gt
    cNroGuia : String;
    //indica se todos os protocolos da guia deve ser atualizado
    lAtuaProtGuia : Boolean;
    //atualiza a lista de protocolos da guia
    procedure AtualizaListPtl;
    //altera os status dos componentes
    procedure DisEnaInterface(Status : Boolean);
    //habilida/desabilida botões de alteração, deleção, impressao
    procedure EnaDisAlter(Status : Boolean);
  end;

var
  FRM_A017ADPT: TFRM_A017ADPT;

implementation

uses UVariaveis, MPLCtrl,DMCTRL, CtrlForms, D017ADPT;



{$R *.DFM}
{------------------------------------------------------------------------------}
procedure TFRM_A017ADPT.BTN_SAIRClick(Sender: TObject);
begin
   close ;
end;
{------------------------------------------------------------------------------}
procedure TFRM_A017ADPT.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 //fecha a aplicação e retira da memoria
 Action:= oControlForms.Saidas(Self,[DTM_a017adpt],DTM_A017ADPT.DTS_154.DataSet);
end;
{------------------------------------------------------------------------------}
procedure TFRM_A017ADPT.BTN_ALTERARClick(Sender: TObject);
begin
  //habilida os botões para gravar/cancelar
  Botoes(['Btn_Cancelar','Btn_Gravar','Btn_Sair','Btn_Excluir1','BTN_CADDPTO2'],'FRM_A017ADPT',true);
  //modo de alteração na gt
  DBGenerica(DTM_A017ADPT.DTS_154,'Conexao',2,0,Nil,false);
  //habilida a autoedição para os protocolos do grid
  DTM_A017ADPT.DTS_152.AutoEdit := true;
  //habilida edição no grid
  DBG_GTM.Options := DBG_GTM.Options + [dgEditing];
  //atualiza a lista de protocolos
  AtualizaListPtl;
  //não permite o usuario digitar um número de gt
  EDT_CNROGUIA.Enabled := False;
end;
{------------------------------------------------------------------------------}
procedure TFRM_A017ADPT.BTN_GRAVARClick(Sender: TObject);
  var
   nprot : Integer;
   cGuia : String;
begin
  //verifica se as informações necessarias foram informadas
  if LiberadoGravacao(FRM_A017ADPT,DTM_A017ADPT.DTS_154) then
    begin
      //pergunta se o usuario deseja salvar
      if MessageDlg('Deseja salvar as alterações?',mtConfirmation,[mbYes,mbNo],0) = mrYes then
        begin
          with DTM_A017ADPT, DMControle do
            begin
              //se existir um protocolo em inserção
              if QRY_152.State = dsInsert then
                begin
                  //pega as informações dos componentes visuais
                  //e passa para os campos das tabelas
                  QRY_152.UpdateRecord;
                  //se o usuario não informou o numero de protocolo
                  if QRY_152.FieldByName('nnroprot').isNull then
                    //cancela a inserção
                    QRY_152.Cancel
                  else
                    begin
                      //força a validação do número protocolo
                      QRY_152NNROPROTValidate(QRY_152.FieldByName('nnroprot'));
//                      DBG_GTM.OnColExit(Sender);
                      //grava o protocolo para a gt
                      QRY_152.Post;
                    end;
                end
              else
                //se estiver em edição o protocolo
                if QRY_152.State = dsEdit then
                  begin
                    //pega as informações que estão nos componentes
                    //passa as informações para os campos
                    QRY_152.UpdateRecord;
                    //grava o protocolo para a gt
                    QRY_152.Post;
                  end;
              //se o usuario não informou nenhum protocolo
              if QRY_152.RecordCount = 0 then
                begin
                  //avisa ao usuário
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
                  lAtuaProtGuia := (QRY_154.Modified) or (QRY_152.UpdatesPending);
                  if lAtuaProtGuia then
                    begin
                      QRY_154.FieldByName('ddtorigem').asDateTime := Now;
                      QRY_154.FieldByName('ddtdestino').asDateTime :=
                      QRY_154.FieldByName('ddtorigem').asDateTime;
                      QRY_152.First;
                    end;
                  cGuia := QRY_154.FieldByName('cnroguia').asString;
                  DBGenerica(DTS_154,'Conexao',4,1,Nil,false);
                  QRY_154.Locate('cnroguia',cGuia,[]);
                  QRY_152.ApplyUpdates;
                  if lAtuaProtGuia then
                    begin
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
                  Botoes(['Btn_Gravar','Btn_Cancelar','Btn_Excluir1','BTN_CADDPTO','BTN_CADDPTO2'],'FRM_A017ADPT',false);
                  DTS_152.AutoEdit := false;
                  DBG_GTM.Options := DBG_GTM.Options - [dgEditing];
                  EDT_CNROGUIA.Enabled := true;
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

procedure TFRM_A017ADPT.BTN_CANCELARClick(Sender: TObject);
begin
   DBGenerica(DTM_A017ADPT.DTS_154,'Conexao',3, 0,Nil,false);
   DTM_A017ADPT.QRY_152.Cancel;
   DTM_A017ADPT.QRY_152.CancelUpdates;
   DTM_A017ADPT.DTS_152.AutoEdit := false;
   DBG_GTM.Options := DBG_GTM.Options - [dgEditing];
   LBL_AVISOGUIA.Visible := false;
   Botoes(['Btn_Cancelar', 'Btn_Gravar','Btn_Excluir1','BTN_CADDPTO2'],'FRM_A017ADPT',false);
   EDT_CNROGUIA.Enabled := true;
end;

procedure TFRM_A017ADPT.BTN_EXCLUIRClick(Sender: TObject);
 var
   i : integer;
   ListaProt : TStringList;

begin
 if MessageDlg('Deseja realmente deletar a guia de tramitação ?',mtConfirmation,[mbYes,mbNo],0) = mrYes then
   begin
     with DTM_A017ADPT,DMControle do
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
             EDT_CNROGUIA.Text := '';
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

procedure TFRM_A017ADPT.FormShow(Sender: TObject);
begin
 if not Acesso(nMatricula,'A017ADPT',DTM_A017ADPT) then
    close;
  Botoes(['Btn_Imprimir','Btn_Excluir','BTN_ALTERAR','Btn_Cancelar','Btn_Gravar','Btn_Excluir1','BTN_CADDPTO','BTN_CADDPTO2'],'FRM_A017ADPT',false);
  DTM_A017ADPT.QRY_152AfterScroll(DTM_A017ADPT.QRY_152);
  DTM_A017ADPT.QRY_154.FieldByName('cnroguia').ValidChars := ['A','a','1','2','3','4','5','6','7','8','9','0'];
  FRM_A017ADPT.OnShow := nil;
 {é atribuido ao OnShow do Form o valor nil para que o mesmo seja executado apenas uma vez}
 {pelo fato que se outra aplicação for chamada pela tecla F3, e ao retornar da aplicação que foi chamada pela tecla}
 {o evento OnShow deste form não acontecerá, ou seja não será executado, para permanecer o mesmo status da aplicação}
 {quando o F3 foi chamado}

end;

procedure TFRM_A017ADPT.DBG_GTMColEnter(Sender: TObject);
begin
  with DBG_GTM do
    begin
      if SelectedField.FieldName = 'NNROPROT' then
        nProtocolo := SelectedField.AsInteger
      else
        nProtocolo := -1;
    end;
end;

procedure TFRM_A017ADPT.Btn_Excluir1Click(Sender: TObject);
begin
  if not(DTM_A017ADPT.QRY_152.IsEmpty) then
    if MessageDlg('Deseja retirar o protocolo desta guia?',mtConfirmation,[mbYes,mbNo],0) = mrYes then
      if DTM_A017ADPT.QRY_152.RecordCount > 0 then
        DTM_A017ADPT.QRY_152.Delete;

end;

procedure TFRM_A017ADPT.DBG_GTMKeyDown(Sender: TObject; var Key: Word;
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

end;

procedure TFRM_A017ADPT.BTN_RETROCEDER1Click(Sender: TObject);
begin
  DTM_A017ADPT.DTS_152.DataSet.Prior;
end;

procedure TFRM_A017ADPT.BTN_AVANCAR1Click(Sender: TObject);
begin
  DTM_A017ADPT.DTS_152.DataSet.Next;
end;

procedure TFRM_A017ADPT.DBG_GTMMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
    //se o usuario clicou com o botão direito do mouse
    //chama a pesquisa de grid
    if Button = mbRight then
      ChamaPesqGrid(DTM_A017ADPT.QRY_152,nil,'nnroprot','Protocolo');
end;


procedure TFRM_A017ADPT.BTN_CADDPTOClick(Sender: TObject);
begin
  oControlForms.AtivaForm('FRM_A017RH',shModal,nil);
//  LKP_ORIGEM.LookupSource.DataSet.Refresh;
end;

procedure TFRM_A017ADPT.BTN_CADDPTO2Click(Sender: TObject);
begin
  oControlForms.AtivaForm('FRM_A017RH',shModal,nil);
  LKP_DESTINO.LookupSource.DataSet.Refresh;
end;

procedure TFRM_A017ADPT.FormCreate(Sender: TObject);
begin
  ListProtocolo := TStringList.Create;
  ListProtAtua  := TStringList.Create;
  ListProtAtua.Sorted := true;
  ListProtAtua.Duplicates := dupIgnore;
end;

procedure TFRM_A017ADPT.FormDestroy(Sender: TObject);
begin
 ListProtocolo.Free;
 ListProtAtua.Free;
end;

procedure TFRM_A017ADPT.AtualizaListPtl;
  var
    oReg: TBookMark;
begin
  with DTM_A017ADPT.QRY_152 do
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

procedure TFRM_A017ADPT.DisEnaInterface(Status: Boolean);
begin
//  DED_CNROGUIA.Enabled := Status;
//  LKP_ORIGEM.Enabled := Status;
  DBD_DDTORIGEM.Enabled := Status;
  EDT_HORAS.Enabled := Status;
  LKP_DESTINO.Enabled := Status;
  DBG_GTM.Enabled := Status;
  BTN_EXCLUIR1.Enabled := Status;
  BTN_CADDPTO2.Enabled := Status;
end;

procedure TFRM_A017ADPT.EDT_CNROGUIAChange(Sender: TObject);
begin
  LBL_AVISOGUIA.Visible := false;
  BTN_ALTERAR.Enabled := false;
  DTM_A017ADPT.QRY_154.Close;
  DTM_A017ADPT.QRY_152.Close;
end;

procedure TFRM_A017ADPT.EDT_CNROGUIAExit(Sender: TObject);
begin
  with DTM_A017ADPT do
    begin
      if (Pos('A',Trim(EDT_CNROGUIA.Text)) <> 0) and (Pos('A',Trim(EDT_CNROGUIA.Text)) <> 1) then
        begin
          MessageDlg('Número de guia invalido!',mtError,[mbOk],0);
          Abort;
        end;
      QRY_154.ParamByName('cnroguia').asString :=
      UpperCase(Trim(EDT_CNROGUIA.Text));
      QRY_154.Close;
      QRY_154.Open;
      if not(QRY_154.IsEmpty) then
        begin
          DBG_GTM.Columns[2].ReadOnly := DED_CORIGEM.Text = 'PROTOCOLO';
          LKP_DESTINO.Enabled := DED_CORIGEM.Text <> 'PROTOCOLO';
          QRY_152.Close;
          QRY_152.Open;
          if QRY_154.FieldByName('crecebido').asString = 'S' then
            begin
              LBL_AVISOGUIA.Visible := true;
              Beep;
              EDT_CNROGUIA.SetFocus;
              EDT_CNROGUIA.SelectAll;
              EnaDisAlter(false);
              BTN_IMPRIMIR.Enabled := true;
            end
          else
            EnaDisAlter(true);

        end
      else
        begin
          EnaDisAlter(false);
          MessageDlg('Guia de tramitação não encontrada!',mtError,[mbOk],0);
          EDT_CNROGUIA.SetFocus;
          EDT_CNROGUIA.SelectAll;
        end;
    end;

end;

procedure TFRM_A017ADPT.EnaDisAlter(Status: Boolean);
begin
  BTN_ALTERAR.Enabled  := Status;
  BTN_EXCLUIR.Enabled  := Status;
  BTN_IMPRIMIR.Enabled := Status;
end;

procedure TFRM_A017ADPT.RPT_GTMPreviewFormCreate(Sender: TObject);
begin
  //mostra a tela de preview maximizada
  RPT_GTM.PreviewForm.WindowState:= wsMaximized;
  //altera o zoom do relatorio
  TppViewer(RPT_GTM.PreviewForm.Viewer).ZoomSetting:= zsPageWidth;
end;

procedure TFRM_A017ADPT.RPT_GTMPrintingComplete(Sender: TObject);
begin
  //fecha o form de preview
  RPT_GTM.PreviewForm.Close;
end;

procedure TFRM_A017ADPT.IMG_VIAPrint(Sender: TObject);
begin
  if not(LKP_DESTINO.Enabled) then
    begin
      //se for a primeira guia de tramitação
      if Odd(ppDetailBand1.Count) then
        //carrega a imagem que indica que a guia e do destino
        IMG_VIA.Picture.LoadFromFile(cPathImg + '2via.jpg')
      else
        //carrega a imagem que indica que a guia e do protocolo
        IMG_VIA.Picture.LoadFromFile(cPathImg + '3via.jpg');
    end
  else
    begin
      IMG_VIA.Picture.LoadFromFile(cPathImg + IntToStr(ppDetailBand1.BandsPerRecordCount) + 'via.jpg');
    end;
end;

procedure TFRM_A017ADPT.ppSummaryBand1BeforeGenerate(Sender: TObject);
  var
    i : integer;
begin
  //antes de imprimir a banda de Sumario
  //faz um for para a quantidade de protocolos
  //impressos no detalhe
  //caso a quantidade seja menor que 6 força
  //a geração das linha restantes até completar 6 linhas
  for i := 1 to 6 - ppDetailBand2.Count  do
    begin
      //controle para o componente não imprimir o seu conteudo
      DBT_ASSUNTO.Tag := 1;
      //gera uma banda de detalhe
      ppDetailBand2.Generate;
      DBT_ASSUNTO.Tag := 0;
    end;
  //força o reposicionamento da banda de sumario
  ppSummaryBand1.CalcPrintPosition;
end;
procedure TFRM_A017ADPT.DBT_ASSUNTOGetText(Sender: TObject;
  var Text: String);
begin
  //se a tag = 1
  if DBT_ASSUNTO.Tag = 1 then
    //não imprime o seu conteudo
    Text := '';
end;

procedure TFRM_A017ADPT.BTN_IMPRIMIRClick(Sender: TObject);
begin
  if not(LKP_DESTINO.Enabled)  then
    ppDetailBand1.BandsPerRecord := 2
  else
    ppDetailBand1.BandsPerRecord := 3;
  IMG_LOGO.Picture.LoadFromFile('logo.bmp');
  RPT_GTM.Print;
end;

procedure TFRM_A017ADPT.ppLine11Print(Sender: TObject);
begin
  //imprime a linha do meio do relatorio
  //uma vez sim e outra não
  //isso foi feito pelo fato de que quando
  //o relatorio tenta imprimir a segunda fez a linha
  //o gerador fica perdido
  ppLine11.Visible := Odd(ppDetailBand1.Count);
end;

end.




