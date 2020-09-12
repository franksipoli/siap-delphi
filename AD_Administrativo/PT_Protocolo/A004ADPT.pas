unit A004ADPT;

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
  TFRM_A004ADPT = class(TForm)
    Panel2: TPanel;
    BTN_IMPRIMIR: TSpeedButton;
    BTN_SAIR: TSpeedButton;
    LMDGroupBox1: TLMDGroupBox;
    Label24: TLabel;
    CBB_SELECIONA: TComboBox;
    DBG_REQ: TDBGrid;
    LMDPanelFill1: TLMDPanelFill;
    BTN_RETROCEDER1: TSpeedButton;
    BTN_AVANCAR1: TSpeedButton;
    BTN_TODOS: TSpeedButton;
    BTN_NENHUM: TSpeedButton;
    BTN_EXEC: TSpeedButton;
    ImageList: TImageList;
    PNL_MENS: TPanel;
    Label2: TLabel;
    EDT_CNOME: TComboEdit;
    QRY_151: TOraQuery;
    QRY_151NIDCADREQ: TFloatField;
    QRY_151CDESCRIREQ: TStringField;
    QRY_151NNROPROT: TFloatField;
    QRY_151DDTPROT: TDateTimeField;
    QRY_151CEMITIDO: TStringField;
    QRY_151CEMIGTM: TStringField;
    QRY_151CEMIETQ: TStringField;
    QRY_151NQTDFOLHAS: TFloatField;
    QRY_151CSITUAREQ: TStringField;
    QRY_151NIDTBXTRQ: TFloatField;
    QRY_151CDESCRITRQ: TStringField;
    QRY_151DAT_CIMPRIMIR: TStringField;
    DTS_151: TOraDataSource;
    QRY_151NIDTBXGTM: TFloatField;
    QRY_151CIDTBXULC: TStringField;
    QRY_151CNOME: TStringField;
    procedure BTN_SAIRClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBG_REQDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure BTN_EXECClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DBG_REQCellClick(Column: TColumn);
    procedure BTN_TODOSClick(Sender: TObject);
    procedure CBB_SELECIONAChange(Sender: TObject);
    procedure BTN_AVANCAR1Click(Sender: TObject);
    procedure BTN_RETROCEDER1Click(Sender: TObject);
    procedure BTN_IMPRIMIRClick(Sender: TObject);
    procedure EDT_CNOMEKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure QRY_151AfterClose(DataSet: TDataSet);
    procedure QRY_151AfterScroll(DataSet: TDataSet);
    procedure QRY_151AfterOpen(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
    nCountImpri: Integer;
    cCpfCnpj: String;
  end;

var
  FRM_A004ADPT: TFRM_A004ADPT;

implementation

uses TelaPrin, UVariaveis, MPLCtrl, MPLLib ;

{$R *.DFM}

procedure TFRM_A004ADPT.BTN_SAIRClick(Sender: TObject);
begin
   close ;
end;

procedure TFRM_A004ADPT.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 Action:= oControlForms.Saidas(Self,[nil],nil);
end;

procedure TFRM_A004ADPT.DBG_REQDrawColumnCell(Sender: TObject;
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

procedure TFRM_A004ADPT.BTN_EXECClick(Sender: TObject);
  var
    cSelect: String;
    cWhere: String;
begin
//  with DTM_A004ADPT do
//    begin
      QRY_151.Close;
      QRY_151.SQL.Clear;
      if (CBB_SELECIONA.Text = '') then
        exit;

      cSelect := 'select cadreq.*, tbxtrq.cdescritrq, tbxurq.cnome, ' + QuotedStr('N') + ' as Dat_cImprimir ' +
                 'from tbxtrq,cadreq,tbxurq, tagreq';
      cWhere := 'where tbxtrq.nidtbxtrq = cadreq.nidtbxtrq and ' +
                'tagreq.nidcadreq = cadreq.nidcadreq and ' +
                'tagreq.cprincipal = ' + QuotedStr('S') + ' and ' +
                'tbxurq.cidtbxurq = tagreq.cidtbxurq';




{      if CBE_CCPFCNPJ.Text <> '' then
        begin
          cSelect := cSelect + ' tagreq';
          cWhere := cWhere + ' cadgrl.ccpfcnpj = :ccpfcnpj and '+
          'tagreq.nidcadgrl = cadgrl.nidcadgrl and '+
          'cadreq.nidcadreq = tagreq.nidcadreq';
          if CBB_SELECIONA.Text = 'EMISSAO' then
            cWhere := cWhere + ' and cadreq.cemietq = ' + QuotedStr('N');
          if CBB_SELECIONA.Text = 'REEMISSAO' then
            cWhere := cWhere + ' and cadreq.cemietq = ' + QuotedStr('S');
          QRY_151.SQL.Add(cSelect);
          QRY_151.SQL.Add(cWhere);
          QRY_151.ParamByName('ccpfcnpj').asString := CBE_CCPFCNPJ.Text;
        end
      else
        begin}
{          cSelect := cSelect + ' idreq';
          cWhere := cWhere + ' idreq.nnroprot = cadreq.nnroprot and ' +
                    ' cadgrl.nidcadgrl = idreq.nidcadgrl ';}

      if EDT_CNOME.Text <> '' then
        cWhere := cWhere + ' and tbxurq.cnome like :cnomereq ';
//      if EDT_CNOMEINT.Text <> '' then
//        cWhere := cWhere + ' and interproto.cnome like :cnomeinter ';

      if CBB_SELECIONA.Text <> 'TODOS' then
        if CBB_SELECIONA.Text = 'EMISSAO' then
          cWhere := cWhere + ' and cadreq.cemietq = ' + QuotedStr('N')
        else
          cWhere := cWhere + ' and cadreq.cemietq = ' + QuotedStr('S');

      QRY_151.SQL.Add(cSelect);
      QRY_151.SQL.Add(cWhere);
       // end;
      QRY_151.SQL.Add('order by cadreq.nnroprot desc');
      if EDT_CNOME.Text <> '' then
        QRY_151.ParamByName('cnomereq').asString := '%' + EDT_CNOME.Text + '%';
//      if EDT_CNOMEINT.Text <> '' then
//        QRY_151.ParamByName('cnomeinter').asString := '%' + EDT_CNOMEINT.Text + '%';
      QRY_151.Open;
    //end;
end;

procedure TFRM_A004ADPT.FormShow(Sender: TObject);
begin
  if not Acesso(nMatricula,'A004ADPT',nil) then
    close;
  QRY_151AfterOpen(QRY_151);
  //BTN_EXEC.Enabled := false;
  BTN_IMPRIMIR.Enabled := false;
  nCountImpri := 0;
  if EDT_CNOME.Text <> '' then
    BTN_EXEC.Click;
  FRM_A004ADPT.OnShow := nil;
 {é atribuido ao OnShow do Form o valor nil para que o mesmo seja executado apenas uma vez}
 {pelo fato que se outra aplicação for chamada pela tecla F3, e ao retornar da aplicação que foi chamada pela tecla}
 {o evento OnShow deste form não acontecerá, ou seja não será executado, para permanecer o mesmo status da aplicação}
 {quando o F3 foi chamado}

end;

procedure TFRM_A004ADPT.DBG_REQCellClick(Column: TColumn);
begin
//  with DTM_A004ADPT do
//    begin
      if (Column.FieldName = 'DAT_CIMPRIMIR') and
         (QRY_151.RecordCount > 0) then
        begin
          QRY_151.Edit;
          if QRY_151.FieldByName('DAT_CIMPRIMIR').asString = 'N' then
            begin
              QRY_151.FieldByName('DAT_CIMPRIMIR').asString := 'S';
              nCountImpri := nCountImpri + 1;
            end
          else
            begin
              QRY_151.FieldByName('DAT_CIMPRIMIR').asString := 'N';
              nCountImpri := nCountImpri - 1;
            end;
          QRY_151.Post;

          BTN_IMPRIMIR.Enabled := nCountImpri > 0;

        end;
//    end;
end;

procedure TFRM_A004ADPT.BTN_TODOSClick(Sender: TObject);
begin
//  with DTM_A004ADPT do
//    begin
      QRY_151.DisableControls;
      QRY_151.First;
      nCountImpri := 0;
      try
        while not(QRY_151.Eof) do
          begin
            QRY_151.Edit;
            if Sender = BTN_TODOS then
              begin
                QRY_151.FieldByName('DAT_CIMPRIMIR').asString := 'S';
                nCountImpri := nCountImpri + 1;
              end
            else
              QRY_151.FieldByName('DAT_CIMPRIMIR').asString := 'N';

            QRY_151.Post;
            QRY_151.Next;
          end;
        QRY_151.First;
      finally
        QRY_151.EnableControls;
        BTN_IMPRIMIR.Enabled := nCountImpri > 0;
      end;
    //end;
end;

procedure TFRM_A004ADPT.CBB_SELECIONAChange(Sender: TObject);
begin
  DBG_REQ.DataSource.DataSet.Close;
end;

procedure TFRM_A004ADPT.BTN_AVANCAR1Click(Sender: TObject);
begin
  QRY_151.Next;
end;

procedure TFRM_A004ADPT.BTN_RETROCEDER1Click(Sender: TObject);
begin
  QRY_151.Prior;
end;

procedure TFRM_A004ADPT.BTN_IMPRIMIRClick(Sender: TObject);
 var
  F : TextFile;
  pEnter, pStx : PChar;
  vez : integer;
  cHora, cData, cProt : String;
begin
    if MessageDlg('Deseja imprimir as etiquetas selecionadas ?',mtConfirmation,[mbYes,mbNo],0) = mrNo then
      exit;
    pEnter := CHR(13)+CHR(10);
    pStx := CHR(2);
//    with DTM_A004ADPT do
//      begin
        PNL_MENS.Visible := true;
        Application.ProcessMessages;
        QRY_151.DisableControls;
        QRY_151.First;
        AssignFile(F,'LPT1');
        Rewrite(F);
        try
          while not(QRY_151.Eof) do
            begin
              if QRY_151.FieldByName('dat_cimprimir').asString = 'S' then
                begin
                  QRY_151.Edit;
                  QRY_151.FieldByName('cemietq').asString := 'S';
                  QRY_151.Post;
                  cHora :=  FormatDateTime('HH:MM "hs"',QRY_151.FieldByName('ddtprot').asDateTime);
                  cData := FormatDateTime('DD/MM/YYYY',QRY_151.FieldByName('ddtprot').asDateTime);
                  cProt := QRY_151.FieldByName('nnroprot').DisplayText;
                  Writeln(F,pStx+'m'+pEnter);
                  Writeln(F,pStx+'L'+pEnter);
                  Writeln(F,'D11'+pEnter);
                  Writeln(F,'171100000300255HORA'+pEnter);
                  Writeln(F,'171100000300375'+cHora+pEnter);
                  Writeln(F,'171100000900255DATA'+pEnter);
                  Writeln(F,'171100000900375'+cData+pEnter);
                  Writeln(F,'171100001500055PROTOCOLO No'+pEnter);
                  Writeln(F,'171100001500375'+cProt+pEnter);
                  Writeln(F,'Q0001'+pEnter);                  // Qtdade de Etiquetas
                  //Writeln(F,pStx+'J'+pEnter);               //Pausa na impressao de etiqueta
                  Writeln(F,'E'+pEnter);   // Fim da formatação e Imprime
                  Writeln(F,pStx+'Q'+pEnter);
                end;
              QRY_151.Next;
            end;

        finally
          CloseFile(F);
          QRY_151.ApplyUpdates;
          QRY_151.Refresh;
          QRY_151.EnableControls;
          PNL_MENS.Visible := false;
          Application.ProcessMessages;
        end;
      //end;

end;

procedure TFRM_A004ADPT.EDT_CNOMEKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_RETURN then
    BTN_EXEC.Click;
end;

procedure TFRM_A004ADPT.QRY_151AfterClose(DataSet: TDataSet);
begin
 QRY_151AfterOpen(DataSet);
 nCountImpri := 0;
end;

procedure TFRM_A004ADPT.QRY_151AfterScroll(DataSet: TDataSet);
begin 
  BTN_AVANCAR1.Enabled := (DataSet.RecordCount > 0) and (DataSet.RecordCount <> DataSet.RecNo);
  BTN_RETROCEDER1.Enabled := (DataSet.RecordCount > 0) and (DataSet.RecNo <> 1);
  if not(DataSet.ControlsDisabled) then
    DBG_REQ.Repaint;

end;

procedure TFRM_A004ADPT.QRY_151AfterOpen(DataSet: TDataSet);
begin
  BTN_NENHUM.Enabled := DataSet.RecordCount > 0;
  BTN_TODOS.Enabled := BTN_NENHUM.Enabled;
  nCountImpri := 0;
  BTN_IMPRIMIR.Enabled := false;
  QRY_151AfterScroll(DataSet);
end;

end.




