unit A003ADPT;

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
  LMDSimplePanel, jpeg, LMDFill, ppCtrls, ppPrnabl, ppClass, ppBands,
  ppCache, ppComm, ppRelatv, ppProd, ppReport, ppDB, ppDBPipe, ppStrtch,
  ppRichTx, ppVar, ppModule, daDatMod, ppViewr, VirtualTable ;

type
  TFRM_A003ADPT = class(TForm)
    Panel2: TPanel;
    BTN_IMPRIMIR: TSpeedButton;
    BTN_SAIR: TSpeedButton;
    LMDGroupBox1: TLMDGroupBox;
    Label24: TLabel;
    CB_SELECIONA: TComboBox;
    Label2: TLabel;
    DBG_REQ: TDBGrid;
    LMDPanelFill1: TLMDPanelFill;
    BTN_RETROCEDER1: TSpeedButton;
    BTN_AVANCAR1: TSpeedButton;
    BTN_TODOS: TSpeedButton;
    BTN_NENHUM: TSpeedButton;
    BTN_EXEC: TSpeedButton;
    ImageList1: TImageList;
    DBP_Params: TppDBPipeline;
    DB_DadosReq: TppDBPipeline;
    ppEmiteReq: TppReport;
    ppHeaderBand1: TppHeaderBand;
    IMG_LOGO: TppImage;
    ppDBText1: TppDBText;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppDetailBand1: TppDetailBand;
    RT_TEXTO: TppRichText;
    ppFooterBand1: TppFooterBand;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    LDB_ASSINA: TppDBText;
    ppDBText5: TppDBText;
    QRY_A151: TOraQuery;
    DTS_A151: TOraDataSource;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    SHP_CANCELADO: TppShape;
    DBL_CANCELADO: TppDBText;
    RT_TEXTOINTER: TppRichText;
    QRY_A151CNOMEGRL: TStringField;
    QRY_A151CCPFCNPJ: TStringField;
    QRY_A151CRGIE: TStringField;
    QRY_A151CTIPO: TStringField;
    QRY_A151NIDCADGRL: TStringField;
    QRY_A151NNROPROT: TFloatField;
    QRY_A151CEMITIDO: TStringField;
    QRY_A151NIDCADREQ: TFloatField;
    QRY_A151CDESCRIREQ: TStringField;
    QRY_A151DDTPROT: TDateTimeField;
    QRY_A151CSITUAREQ: TStringField;
    QRY_A151CDESCRITRQ: TStringField;
    QRY_A151CABREVTPL: TStringField;
    QRY_A151CNOMELOG: TStringField;
    QRY_A151CNOMEBAI: TStringField;
    QRY_A151CNOMELOC: TStringField;
    QRY_A151UFLOC: TStringField;
    QRY_A151CNUMERO: TStringField;
    Label1: TLabel;
    QRY_A151NOMEINT: TStringField;
    EDT_CNOME: TComboEdit;
    EDT_CNOMEINT: TComboEdit;
    QRY_A151NQTDFOLHAS: TFloatField;
    QRY_A151DAT_LUGAR: TStringField;
    ppLabel9: TppLabel;
    ppDBText6: TppDBText;
    procedure BTN_SAIRClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure BTN_EXECClick(Sender: TObject);
    procedure DBG_REQDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBG_REQCellClick(Column: TColumn);
    procedure BTN_TODOSClick(Sender: TObject);
    procedure BTN_NENHUMClick(Sender: TObject);
    procedure BTN_RETROCEDER1Click(Sender: TObject);
    procedure BTN_AVANCAR1Click(Sender: TObject);
    procedure BTN_IMPRIMIRClick(Sender: TObject);
    procedure ppEmiteReqPreviewFormCreate(Sender: TObject);
    procedure ppEmiteReqPageRequest(Sender, aPageRequest: TObject);
    procedure ppDBText5GetText(Sender: TObject; var Text: String);
    procedure CB_SELECIONAChange(Sender: TObject);
    procedure QRY_A151AfterOpen(DataSet: TDataSet);
    procedure QRY_A151AfterClose(DataSet: TDataSet);
    procedure QRY_A151AfterScroll(DataSet: TDataSet);
    procedure DBL_CANCELADOGetText(Sender: TObject; var Text: String);
    procedure ppDetailBand1BeforePrint(Sender: TObject);
    procedure EDT_CNOMEButtonClick(Sender: TObject);
    procedure EDT_CNOMEKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    procedure EmiteSimNao(cEmite: String);
    procedure GravaEmissao;
    { Private declarations }
  public
    cSqlEmissao, cSqlWhere, cSqlOrder : String;
    lImprimiu : Boolean;
    nBtnImprimir : Integer;
    { Public declarations }
  end;

var
  FRM_A003ADPT: TFRM_A003ADPT;

implementation

uses TelaPrin, D003ADPT, CtrlForms, UVariaveis, MPLCtrl, MPLLib, DMCTRL ;

{$R *.DFM}

procedure TFRM_A003ADPT.BTN_SAIRClick(Sender: TObject);
begin
   close ;
end;

procedure TFRM_A003ADPT.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:= oControlForms.Saidas(Self,[DTM_A003ADPT],nil);
  FRM_A003ADPT := nil ;
end;

procedure TFRM_A003ADPT.FormShow(Sender: TObject);
begin
  if not Acesso(nMatricula,'A003ADPT',DTM_A003ADPT) then
    close;
  Botoes(['Btn_Cancelar','Btn_Gravar'],'FRM_A003ADPT',false);
  FRM_A003ADPT.OnShow := nil;
 {é atribuido ao OnShow do Form o valor nil para que o mesmo seja executado apenas uma vez}
 {pelo fato que se outra aplicação for chamada pela tecla F3, e ao retornar da aplicação que foi chamada pela tecla}
 {o evento OnShow deste form não acontecerá, ou seja não será executado, para permanecer o mesmo status da aplicação}
 {quando o F3 foi chamado}
  cSqlEmissao := QRY_A151.SQL.Text;
  QRY_A151.Close;
  CB_SELECIONA.ItemIndex := 0;
  DBG_REQ.ReadOnly := true;
  lImprimiu := False;
  if EDT_CNOME.Text <> '' then
    begin
     BTN_EXECClick(Sender);
    end;
  QRY_A151AfterOpen(QRY_A151);
end;

procedure TFRM_A003ADPT.BTN_EXECClick(Sender: TObject);
begin

   QRY_A151.Close;

   cSqlWhere := cSqlEmissao;


   if EDT_CNOME.Text <> '' then
     cSqlWhere := cSqlWhere + ' and tbxurq.cnome like :cnome ';

   if EDT_CNOMEINT.Text <> '' then
     cSqlWhere := cSqlWhere + ' and interprot.cnome like :cnomeint ';

   if CB_SELECIONA.ItemIndex = 2 then
      cSqlWhere := cSqlWhere + ' and cadreq.cemitido is not null '
   else cSqlWhere := cSqlWhere + ' and cadreq.cemitido = :cemitido ';

   QRY_A151.SQL.Clear;
   cSqlWhere := cSqlWhere + ' order by cadreq.nnroprot';
   QRY_A151.SQL.Add(cSqlWhere);


   if EDT_CNOME.Text <> '' then
     QRY_A151.ParamByName('cnome').AsString :=
     '%'+EDT_CNOME.Text+'%';

   if EDT_CNOMEINT.Text <> '' then
     QRY_A151.ParamByName('cnomeint').AsString :=
     '%'+EDT_CNOMEINT.Text+'%';

   if CB_SELECIONA.ItemIndex < 2 then
     begin
       if CB_SELECIONA.ItemIndex = 0 then
         QRY_A151.ParamByName('cemitido').AsString := 'N';
       if CB_SELECIONA.ItemIndex = 1 then
         QRY_A151.ParamByName('cemitido').AsString := 'S';
     end;

   QRY_A151.Open;
   QRY_A151.FindField('NNROPROT').Alignment := taCenter;
   TFloatField(QRY_A151.FindField('NNROPROT')).DisplayFormat := '000000/00';

   if QRY_A151.RecordCount <= 0 then
     DBG_REQ.ReadOnly := true
   else DBG_REQ.ReadOnly := false;
   DBG_REQ.Repaint;

end;

procedure TFRM_A003ADPT.DBG_REQDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  if not DBG_REQ.ReadOnly then
    begin
      oMetodos.ColorGrid(Sender,Rect,DataCol,Column,State);
      if (Column.FieldName = 'CEMITIDO') then
        begin
          //desenha a opção de check na celula do campo do dbgrid
          DBG_REQ.Canvas.FillRect(Rect);
          ImageList1.Draw(DBG_REQ.Canvas, Rect.Left + 1, Rect.Top + 1, 0);
          if Column.Field.AsString = 'X' then
            ImageList1.Draw(DBG_REQ.Canvas, Rect.Left + 1, Rect.Top + 1, 2);
        end;
      if (Column.FieldName = 'CNOMEGRL') or (Column.FieldName = 'CDESCRITRQ') or
         (Column.FieldName = 'NOMEINT') then
        begin
          DBG_REQ.Canvas.FillRect(Rect);
          DBG_REQ.Canvas.TextRect(Rect,Rect.Left+2,Rect.Top+2,UpperCase(Column.Field.AsString));
        end;
    end;
end;

procedure TFRM_A003ADPT.DBG_REQCellClick(Column: TColumn);
begin
  if not DBG_REQ.ReadOnly then
    begin
      if Column.FieldName = 'CEMITIDO' then
        begin
          QRY_A151.Edit;
          if Column.Field.AsString <> 'X' then
            begin
              QRY_A151.FieldByName('CEMITIDO').AsString := 'X';
              nBtnImprimir := nBtnImprimir + 1;
            end
          else
            begin
              QRY_A151.FieldByName('CEMITIDO').AsString := 'N';
              nBtnImprimir := nBtnImprimir - 1;
            end;
          QRY_A151.Post;
          BTN_IMPRIMIR.Enabled := nBtnImprimir > 0;
        end;
    end;
end;

Procedure TFRM_A003ADPT.EmiteSimNao(cEmite : String);
begin
  with QRY_A151 do
    begin
      First;
      nBtnImprimir := 0;
      while not Eof do
        begin
          Edit;
          FieldByName('CEMITIDO').AsString := cEmite;
          Post;
          if cEmite = 'X' then
            nBtnImprimir := nBtnImprimir + 1;
          Next;
        end;
      BTN_IMPRIMIR.Enabled := nBtnImprimir > 0;
    end;
end;

procedure TFRM_A003ADPT.BTN_TODOSClick(Sender: TObject);
begin
  EmiteSimNao('X');
end;

procedure TFRM_A003ADPT.BTN_NENHUMClick(Sender: TObject);
begin
  EmiteSimNao('N');
end;

procedure TFRM_A003ADPT.BTN_RETROCEDER1Click(Sender: TObject);
begin
 {Retroceder registro}
 DBGenerica(DTS_A151,'Conexao',0,2,nil,false);
end;

procedure TFRM_A003ADPT.BTN_AVANCAR1Click(Sender: TObject);
begin
 {Avançar registro}
 DBGenerica(DTS_A151,'Conexao',0,3,nil,false);
end;

procedure TFRM_A003ADPT.BTN_IMPRIMIRClick(Sender: TObject);
begin
  with QRY_A151 do
    begin
      DisableControls;
      Filter := 'CEMITIDO = '+QuotedStr('X');
      Filtered := true;
      if RecordCount > 0 then
        begin
          IMG_LOGO.Picture.LoadFromFile('logo.bmp');
          ppEmiteReq.Print;
        end;
      if lImprimiu then
        GravaEmissao;
      lImprimiu := false;
      Filtered := false;
      EnableControls;
    end;
end;

procedure TFRM_A003ADPT.ppEmiteReqPreviewFormCreate(Sender: TObject);
begin
   ppEmiteReq.PreviewForm.WindowState:= wsMaximized;
   TppViewer(ppEmiteReq.PreviewForm.Viewer).ZoomSetting:= zsPageWidth;
end;

procedure TFRM_A003ADPT.GravaEmissao;
begin
   DMControle.Conexao.StartTransaction;
   try
     with QRY_A151 do
       begin
         Filtered := false;
         Filter := '';
         First;
         nBtnImprimir := 0;
         while not Eof do
           begin
             if FieldByName('CEMITIDO').AsString = 'X' then
               begin
                 Edit;
                 FieldByName('CEMITIDO').AsString := 'S';
                 Post;
               end;
             Next;
           end;
         BTN_IMPRIMIR.Enabled := False;
       end;
     QRY_A151.ApplyUpdates;
     DMControle.Conexao.Commit;
   except
     On E: Exception do
        begin
          DMControle.Conexao.Rollback;
          MessageDlg('Não foi possível atualizar os dados.'+#10#13+
          'Processamento Cancelado.???' + #13 +
          E.Message,mtInformation,[mbOk],0);
        end;
   end;
end;

procedure TFRM_A003ADPT.ppEmiteReqPageRequest(Sender,
  aPageRequest: TObject);
begin
  if ppEmiteReq.DeviceType = 'Printer' then
    lImprimiu := True;
end;

procedure TFRM_A003ADPT.ppDBText5GetText(Sender: TObject;
  var Text: String);
begin
   Text := Format('%'+IntToStr(Length(Text)*3)+'.4s', ['   ']);
end;

procedure TFRM_A003ADPT.CB_SELECIONAChange(Sender: TObject);
begin
  if QRY_A151.RecordCount > 0 then
     QRY_A151.Close;
end;

procedure TFRM_A003ADPT.QRY_A151AfterOpen(DataSet: TDataSet);
begin
  BTN_NENHUM.Enabled := DataSet.RecordCount > 0;
  BTN_TODOS.Enabled := BTN_NENHUM.Enabled;
  QRY_A151AfterScroll(DataSet);
  nBtnImprimir := 0;
  BTN_IMPRIMIR.Enabled := false;
end;

procedure TFRM_A003ADPT.QRY_A151AfterClose(DataSet: TDataSet);
begin
  QRY_A151AfterOpen(DataSet);
end;

procedure TFRM_A003ADPT.QRY_A151AfterScroll(DataSet: TDataSet);
begin
  if (not(DataSet.ControlsDisabled)) and
     (not(DataSet.State in [dsInsert,dsEdit])) then
    begin
      BTN_AVANCAR1.Enabled := (DataSet.RecordCount > 0) and (DataSet.RecordCount <> DataSet.RecNo);
      BTN_RETROCEDER1.Enabled := (DataSet.RecordCount > 0) and (DataSet.RecNo <> 1);
      DBG_REQ.Repaint;
    end;  
end;

procedure TFRM_A003ADPT.DBL_CANCELADOGetText(Sender: TObject;
  var Text: String);
begin
  if Text = 'CANCELADO' then
    begin
      SHP_CANCELADO.Visible := true;
      DBL_CANCELADO.Visible := true;
    end
  else
    begin
      SHP_CANCELADO.Visible := false;
      DBL_CANCELADO.Visible := false;
    end;
end;

procedure TFRM_A003ADPT.ppDetailBand1BeforePrint(Sender: TObject);
begin
  if QRY_A151.FieldByName('ctipo').asString <> '' then
    begin
      RT_TEXTOINTER.Visible := true;
      RT_TEXTO.Visible := false;
    end
  else
    begin
      RT_TEXTOINTER.Visible := false;
      RT_TEXTO.Visible := true;
    end;
end;

procedure TFRM_A003ADPT.EDT_CNOMEButtonClick(Sender: TObject);
begin
  VerTeclas(VK_F2);
end;

procedure TFRM_A003ADPT.EDT_CNOMEKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_RETURN then
    BTN_EXEC.Click;
end;

end.


