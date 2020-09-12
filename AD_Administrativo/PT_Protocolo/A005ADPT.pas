unit A005ADPT;

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
  LMDSimplePanel, jpeg, LMDFill, ppDB, ppDBPipe, ppBands, ppCache, ppClass,
  ppComm, ppRelatv, ppProd, ppReport, ppCtrls, ppPrnabl, ppVar, ppStrtch,
  ppSubRpt, RxGIF, ppViewr ;

type
  TFRM_A005ADPT = class(TForm)
    Panel2: TPanel;
    BTN_IMPRIMIR: TSpeedButton;
    BTN_SAIR: TSpeedButton;
    LMDGroupBox1: TLMDGroupBox;
    Label24: TLabel;
    DBG_REQ: TDBGrid;
    LMDPanelFill1: TLMDPanelFill;
    BTN_RETROCEDER1: TSpeedButton;
    BTN_AVANCAR1: TSpeedButton;
    BTN_MARCTODO: TSpeedButton;
    BTN_DESMARCA: TSpeedButton;
    ImageList: TImageList;
    BTN_EXEC: TSpeedButton;
    DBL_LOCAL: TRxDBLookupCombo;
    RPT_GTM: TppReport;
    DPP_DESTINO: TppDBPipeline;
    DPP_PROT: TppDBPipeline;
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
    ppLine15: TppLine;
    ppLine17: TppLine;
    ppSummaryBand1: TppSummaryBand;
    ppShape11: TppShape;
    ppLine8: TppLine;
    ppShape12: TppShape;
    ppLine9: TppLine;
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
    ppLine4: TppLine;
    ppLine5: TppLine;
    ppLine16: TppLine;
    ppLine18: TppLine;
    ppImage1: TppImage;
    ppDBText1: TppDBText;
    ppImage3: TppImage;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLine1: TppLine;
    ppLine2: TppLine;
    ppLabel4: TppLabel;
    ppShape3: TppShape;
    ppLine3: TppLine;
    ppLabel5: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppShape6: TppShape;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppLabel10: TppLabel;
    IMG_VIA: TppImage;
    ppLine10: TppLine;
    ppLine11: TppLine;
    ppLine12: TppLine;
    ppLine13: TppLine;
    ppLine14: TppLine;
    ppLine19: TppLine;
    ppFooterBand1: TppFooterBand;
    procedure BTN_SAIRClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure BTN_EXECClick(Sender: TObject);
    procedure DBG_REQDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBG_REQCellClick(Column: TColumn);
    procedure IMG_VIAPrint(Sender: TObject);
    procedure ppSummaryBand1BeforeGenerate(Sender: TObject);
    procedure DBT_ASSUNTOGetText(Sender: TObject; var Text: String);
    procedure BTN_IMPRIMIRClick(Sender: TObject);
    procedure RPT_GTMPreviewFormCreate(Sender: TObject);
    procedure BTN_MARCTODOClick(Sender: TObject);
    procedure BTN_AVANCAR1Click(Sender: TObject);
    procedure BTN_RETROCEDER1Click(Sender: TObject);
    procedure DBL_LOCALChange(Sender: TObject);
    procedure CBE_CCPFCNPJButtonClick(Sender: TObject);
    procedure DBT_PROTPrint(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    nCountImpri : Integer;
    procedure FiltraReque(DataSet: TDataSet);
    procedure FiltraRequeTmp(DataSet: TDataSet);
  end;

var
  FRM_A005ADPT: TFRM_A005ADPT;

implementation

uses UVariaveis, MPLCtrl, D005ADPT, DMCTRL;



{$R *.DFM}

procedure TFRM_A005ADPT.BTN_SAIRClick(Sender: TObject);
begin
   close ;
end;

procedure TFRM_A005ADPT.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 Action:= oControlForms.Saidas(Self,[DTM_A005ADPT],nil);
end;

procedure TFRM_A005ADPT.FormShow(Sender: TObject);
begin
  if not Acesso(nMatricula,'A005ADPT',DTM_A005ADPT) then
    close;
  DTM_A005ADPT.QRY_151AfterOpen(DTM_A005ADPT.QRY_151);
  BTN_EXEC.Enabled := false;
  BTN_IMPRIMIR.Enabled := false;
  nCountImpri := 0;
  FRM_A005ADPT.OnShow := nil;
 {é atribuido ao OnShow do Form o valor nil para que o mesmo seja executado apenas uma vez}
 {pelo fato que se outra aplicação for chamada pela tecla F3, e ao retornar da aplicação que foi chamada pela tecla}
 {o evento OnShow deste form não acontecerá, ou seja não será executado, para permanecer o mesmo status da aplicação}
 {quando o F3 foi chamado}

end;

procedure TFRM_A005ADPT.BTN_EXECClick(Sender: TObject);
  var
    cAux : String;
begin
  with DTM_A005ADPT do
    begin
      if DBL_LOCAL.Text = '' then
        begin
          MessageDlg('Você deve informar o local de destino',mtInformation,[mbOk],0);
          DBL_LOCAL.SetFocus;
          exit;
        end;
      QRY_151.Close;
      QRY_151.SQL.Clear;
      QRY_151.SQL.Add('select cadreq.*, locais.lugar as dat_lugar, tbxtrq.cdescritrq, ' + QuotedStr('N') + ' as dat_cimprimir');
      QRY_151.SQL.Add('from cadreq, locais, tbxtrq');
      cAux := '';
      {if Trim(CBE_CCPFCNPJ.Text) <> '' then
        begin
          QRY_151.SQL.Add(',tagreq');
          cAux :=' and tagreq.nidcadgrl = ' + QRY_016.FieldByName('nidcadgrl').asString +
          ' and tagreq.nidcadreq = cadreq.nidcadreq';
        end;}
      QRY_151.SQL.Add('where cadreq.cemigtm = ' + QuotedStr('N') + ' and');
      QRY_151.SQL.Add('locais.id = cadreq.ciddestino and');
      QRY_151.SQL.Add('tbxtrq.nidtbxtrq = cadreq.nidtbxtrq' + cAux);
      if (DBL_LOCAL.Text <> ' TODOS') then
        begin
          QRY_151.SQL.Add('and locais.lugar = ' + QuotedStr(DBL_LOCAL.Text));
        end;
      QRY_151.SQL.Add('order by locais.lugar, cadreq.nnroprot');
      QRY_151.Open;
      if QRY_151.RecordCount = 0 then
        MessageDlg('Nenhuma guia a ser impressa na condição informada !',mtInformation,[mbOk],0);
    end;
end;

procedure TFRM_A005ADPT.DBG_REQDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  oMetodos.ColorGrid(Sender,Rect,DataCol,Column,State);
  if Column.FieldName = 'DAT_CIMPRIMIR' then
    begin
      ImageList.Draw(DBG_REQ.Canvas,Rect.left + 1, Rect.top + 1, 0);
      if Column.Field.AsString = 'S' then
        ImageList.Draw(DBG_REQ.Canvas,Rect.left + 1, Rect.top + 1, 1);
    end;
end;

procedure TFRM_A005ADPT.DBG_REQCellClick(Column: TColumn);
begin
  with DTM_A005ADPT do
    begin
      if (Column.FieldName = 'DAT_CIMPRIMIR') and
         (QRY_151.RecordCount > 0) then
        begin
          QRY_151.Edit;
          if QRY_151.FieldByName('dat_cimprimir').asString = 'N' then
            begin
              QRY_151.FieldByName('dat_cimprimir').asString := 'S';
              nCountImpri := nCountImpri + 1;
            end
          else
            begin
              QRY_151.FieldByName('dat_cimprimir').asString := 'N';
              nCountImpri := nCountImpri - 1;
            end;
          QRY_151.Post;

          BTN_IMPRIMIR.Enabled := nCountImpri > 0;

        end;
    end;
end;

procedure TFRM_A005ADPT.IMG_VIAPrint(Sender: TObject);
begin
  if Odd(ppDetailBand1.Count) then
    IMG_VIA.Picture.LoadFromFile(cPathImg + '2via.jpg')
  else
    IMG_VIA.Picture.LoadFromFile(cPathImg + '3via.jpg');


end;

procedure TFRM_A005ADPT.ppSummaryBand1BeforeGenerate(Sender: TObject);
  var
    i : integer;
begin
  for i := 1 to 6 - ppDetailBand2.Count  do
    begin
      DBT_ASSUNTO.Tag := 1;
      ppDetailBand2.Generate;
      DBT_ASSUNTO.Tag := 0;
    end;

  ppSummaryBand1.CalcPrintPosition;
end;
procedure TFRM_A005ADPT.DBT_ASSUNTOGetText(Sender: TObject;
  var Text: String);
begin
  if DBT_ASSUNTO.Tag = 1 then
    Text := '';
end;

procedure TFRM_A005ADPT.FiltraReque(DataSet: TDataSet);
begin
  with DTM_A005ADPT do
    begin
      QRY_151.Filter :=
      'dat_cimprimir = ' + QuotedStr('S') +
      ' and ciddestino = ' + QuotedStr(DataSet.FieldByName('ciddestino').asString);
      QRY_151.Filtered := true;
    end;
end;

procedure TFRM_A005ADPT.BTN_IMPRIMIRClick(Sender: TObject);
  var
    nRegs, nCount, nContr: Integer;

begin
  with DTM_A005ADPT do
    begin
      QRY_151.DisableControls;
      QRY_151.Filter := 'dat_cimprimir = ' + QuotedStr('S');
      QRY_151.Filtered := true;
      nRegs := QRY_151.RecordCount;
      QRY_151.Filtered := false;
      QRY_151.EnableControls;
      if nRegs = 0 then
        begin
          MessageDlg('Você deve indicar as guias a serem impressas !', mtInformation,[mbOk],0);
          exit;
        end;

      QRY_153.AfterScroll := FiltraReque;
      FiltraReque(QRY_153);

      QRY_153.First;
      VTB_PROTOCOLO.Clear;
      VTB_DESTINO.Clear;

      while not(QRY_153.Eof) do
        begin
          if QRY_151.RecordCount > 0 then
            begin
              nCount:= 0;
              nContr := 1;

              while not(QRY_151.Eof) do
                begin
                  nCount := nCount + 1;
                  if nCount > 6 then
                    begin
                      nCount := 1;
                      nContr := nContr + 1;
                    end;

                  with VTB_PROTOCOLO do
                    begin
                      Append;
                      FieldByName('nidcadreq').asInteger :=
                      QRY_151.FieldByName('nidcadreq').asInteger;
                      FieldByName('cdescrireq').asString :=
                      QRY_151.FieldByName('cdescrireq').asString;
                      FieldByName('nnroprot').asInteger :=
                      QRY_151.FieldByName('nnroprot').asInteger;
                      FieldByName('ddtprot').asDateTime :=
                      QRY_151.FieldByName('ddtprot').AsDateTime;
                      FieldByName('ciddestino').asString :=
                      QRY_151.FieldByName('ciddestino').asString;
                      FieldByName('nidtbxtrq').asInteger :=
                      QRY_151.FieldByName('nidtbxtrq').asInteger;
                      FieldByName('cemitido').asString :=
                      QRY_151.FieldByName('cemitido').asString;
                      FieldByName('cemigtm').asString :=
                      QRY_151.FieldByName('cemigtm').asString;
                      FieldByName('cemietq').asString :=
                      QRY_151.FieldByName('cemietq').asString;
                      FieldByName('cdescritrq').asString :=
                      QRY_151.FieldByName('cdescritrq').asString;
                      FieldByName('dat_lugar').asString :=
                      QRY_151.FieldByName('dat_lugar').asString;
                      FieldByName('dat_cimprimir').asString :=
                      QRY_151.FieldByName('dat_cimprimir').asString;
                      FieldByName('nqtdfolhas').asInteger :=
                      QRY_151.FieldByName('nqtdfolhas').asInteger;
                      FieldByName('grupo').asString :=
                      QRY_151.FieldByName('dat_lugar').asString +
                      IntToStr(nContr);
                      Post;
                      if not(VTB_DESTINO.Locate('GRUPO',FieldByName('grupo').asString,[])) then
                        begin
                          VTB_DESTINO.Append;
                          VTB_DESTINO.FieldByName('dat_lugar').asString :=
                          FieldByName('dat_lugar').asString;
                          VTB_DESTINO.FieldByName('grupo').asString :=
                          FieldByName('grupo').asString;
                          VTB_DESTINO.Post;
                        end;
                    end;
                  QRY_151.Next;
                end;

            end;
          QRY_153.Next;
        end;
      VTB_DESTINO.AfterScroll := FiltraRequeTmp;
      QRY_153.AfterScroll := nil;
      QRY_151.Filtered := false;
      //ppReport1.Print;
      RPT_GTM.Print;
      VTB_DESTINO.AfterScroll := nil;
      VTB_PROTOCOLO.Filtered := false;
      //QRY_151.DisableControls;
      //Imprimir(RPT_GTM,QRY_153,nil);
      if QRY_151.Tag = 1 then
        begin
          QRY_151.ApplyUpdates;
          QRY_151.Tag := 0;
        end;
      //QRY_151.EnableControls;
    end;
end;

procedure TFRM_A005ADPT.RPT_GTMPreviewFormCreate(Sender: TObject);
begin
  RPT_GTM.PreviewForm.WindowState:= wsMaximized;
  TppViewer(RPT_GTM.PreviewForm.Viewer).ZoomSetting:= zsPageWidth;
end;

procedure TFRM_A005ADPT.BTN_MARCTODOClick(Sender: TObject);
begin
  with DTM_A005ADPT do
    begin
      QRY_151.DisableControls;
      QRY_151.First;
      nCountImpri := 0;
      try
        while not(QRY_151.Eof) do
          begin
            QRY_151.Edit;
            if Sender = BTN_MARCTODO then
              begin
                QRY_151.FieldByName('dat_cimprimir').asString := 'S';
                nCountImpri := nCountImpri + 1;
              end
            else
              QRY_151.FieldByName('dat_cimprimir').asString := 'N';

            QRY_151.Post;
            QRY_151.Next;
          end;
        QRY_151.First;
      finally
        QRY_151.EnableControls;
        BTN_IMPRIMIR.Enabled := nCountImpri > 0;
      end;
    end;
end;

procedure TFRM_A005ADPT.BTN_AVANCAR1Click(Sender: TObject);
begin
 DTM_A005ADPT.QRY_151.Next;
end;

procedure TFRM_A005ADPT.BTN_RETROCEDER1Click(Sender: TObject);
begin
 DTM_A005ADPT.QRY_151.Prior;
end;

procedure TFRM_A005ADPT.DBL_LOCALChange(Sender: TObject);
begin
  DBG_REQ.DataSource.DataSet.Close;
  BTN_EXEC.Enabled := DBL_LOCAL.GetTextLen > 0;
end;

procedure TFRM_A005ADPT.CBE_CCPFCNPJButtonClick(Sender: TObject);
begin
  VerTeclas(VK_F2);
end;

procedure TFRM_A005ADPT.DBT_PROTPrint(Sender: TObject);
begin
  if RPT_GTM.DeviceType = 'Printer' then
    begin
      with DTM_A005ADPT do
        begin
          QRY_151.Locate('nidcadreq',VTB_PROTOCOLO.FieldByName('nidcadreq').asInteger,[]);
          QRY_151.Tag := 1;
          QRY_151.Edit;
          QRY_151.FieldByName('cemigtm').asString := 'S';
          QRY_151.Post;
        end;
    end;
end;

procedure TFRM_A005ADPT.FiltraRequeTmp(DataSet: TDataSet);
begin
  with DTM_A005ADPT do
    begin
      VTB_PROTOCOLO.Active := false;
      VTB_PROTOCOLO.Filter :=
      ' grupo = ' + QuotedStr(DataSet.FieldByName('grupo').asString);
      VTB_PROTOCOLO.Filtered := true;
      VTB_PROTOCOLO.Active := true;
    end;
end;

end.




