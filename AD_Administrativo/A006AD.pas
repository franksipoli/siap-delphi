unit A006AD;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Ora, MemDS, DBAccess, Db, ppVar, ppCtrls, ppBands, ppClass, ppPrnabl,
  ppDB, ppCache, ppDBPipe, ppComm, ppRelatv, ppProd, ppReport, Grids,
  DBGrids, DBTables, StdCtrls, VirtualTable, Mask, ToolEdit, DateUtil,
  LMDCustomControl, LMDCustomPanel, LMDCustomBevelPanel,
  LMDCustomParentPanel, LMDCustomGroupBox, LMDGroupBox, ExtCtrls, ppStrtch,
  ppSubRpt, Buttons, LMDCustomPanelFill, LMDPanelFill, DBCtrls, ComCtrls;

type
  TFRM_A006AD = class(TForm)
    LMDGroupBox3: TLMDGroupBox;
    DDT_INICIO: TDateEdit;
    DDT_FIM: TDateEdit;
    LMDGroupBox1: TLMDGroupBox;
    DBG_GTM: TDBGrid;
    DBG_REQ: TDBGrid;
    PNL_MSG: TPanel;
    BTN_PESQFLX: TBitBtn;
    BTN_IMPFLX: TBitBtn;
    Label1: TLabel;
    ppReport1: TppReport;
    ppHeaderBand1: TppHeaderBand;
    Shp_Titul: TppShape;
    Db_Razao: TppDBText;
    Lbl_Pag: TppLabel;
    Var_NumPag: TppSystemVariable;
    Lbl_Aplic: TppLabel;
    Lbl_Data: TppLabel;
    ppSystemVariable2: TppSystemVariable;
    Lbl_Hora: TppLabel;
    ppSystemVariable3: TppSystemVariable;
    Lbl_RelTiul: TppLabel;
    Lbl_TitOpc: TppLabel;
    ppDetailBand1: TppDetailBand;
    ppShape1: TppShape;
    ppDBText1: TppDBText;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppLabel6: TppLabel;
    ppSubReport1: TppSubReport;
    ppChildReport1: TppChildReport;
    ppTitleBand1: TppTitleBand;
    ppDetailBand2: TppDetailBand;
    SHP_LINE: TppShape;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppSummaryBand2: TppSummaryBand;
    ppDBCalc1: TppDBCalc;
    ppLabel3: TppLabel;
    ppFooterBand1: TppFooterBand;
    ppSummaryBand1: TppSummaryBand;
    ppDBCalc2: TppDBCalc;
    ppLabel4: TppLabel;
    LMDPanelFill2: TLMDPanelFill;
    BTN_RETROCEDER1: TSpeedButton;
    BTN_AVANCAR1: TSpeedButton;
    LMDPanelFill1: TLMDPanelFill;
    BTN_RETROCEDER2: TSpeedButton;
    BTN_AVANCAR2: TSpeedButton;
    LST_DATA: TListView;
    procedure SHP_LINEPrint(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DDT_INICIOChange(Sender: TObject);
    procedure DDT_FIMKeyPress(Sender: TObject; var Key: Char);
    procedure BTN_AVANCAR1Click(Sender: TObject);
    procedure BTN_RETROCEDER1Click(Sender: TObject);
    procedure BTN_AVANCAR2Click(Sender: TObject);
    procedure BTN_RETROCEDER2Click(Sender: TObject);
    procedure DBG_REQDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure ppReport1PreviewFormCreate(Sender: TObject);
    procedure LST_DATACompare(Sender: TObject; Item1, Item2: TListItem;
      Data: Integer; var Compare: Integer);
    procedure DBG_REQKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
    ListDatas : TStringList;
    procedure Filtra(DataSet : TDataSet);
  end;

var
  FRM_A006AD: TFRM_A006AD;

implementation

uses D006AD, UVariaveis, MPLCtrl, MPLLib;

{$R *.DFM}

procedure TFRM_A006AD.SHP_LINEPrint(Sender: TObject);
begin
  if odd(ppDetailBand2.Count) then
    begin
      SHP_LINE.Brush.Color := clWhite;

    end
  else
    begin
      SHP_LINE.Brush.Color := $00F4F4F4;

    end;
end;

procedure TFRM_A006AD.Button2Click(Sender: TObject);
  var
    i : integer;
    valor : double;
begin
  with DTM_A006AD do
    begin
      if DDT_INICIO.Date < Date then
        begin
          MessageDlg('Data inicial não pode ser menor que a data atual !', mtInformation,[mbOk],0);
          DDT_INICIO.SetFocus;
          exit;
        end;
      if LimpaMask(DDT_INICIO.Text) = '' then
        begin
          MessageDlg('Data inicial em branco !', mtInformation,[mbOk],0);
          DDT_INICIO.SetFocus;
          exit;
        end;
      if LimpaMask(DDT_FIM.Text) = '' then
        begin
          MessageDlg('Data final em branco !', mtInformation,[mbOk],0);
          DDT_FIM.SetFocus;
          exit;
        end;
      if DDT_FIM.Date < DDT_INICIO.Date then
        begin
          MessageDlg('Data Final não pode ser menor que a Data Inicial!',mtInformation,[mbOk],0);
          DDT_FIM.SetFocus;
          exit;
        end;
      PNL_MSG.Visible := true;
      Application.ProcessMessages;
      VTB_DIAS.AfterScroll := nil;
      VTB_GERAL.Filtered := false;
      VTB_GERAL.Filter := '';
      VTB_DIAS.Clear;
      VTB_GERAL.Clear;
      VTB_GERAL.DisableControls;
      //VTB_DIAS.AfterScroll := nil;
      VTB_DIAS.DisableControls;
      QRY_PRECEBIM.Close;
      QRY_PRECEBIM.ParamByName('dataini').AsDateTime :=
      DDT_INICIO.Date;
      QRY_PRECEBIM.ParamByName('datafim').AsDateTime :=
      DDT_FIM.Date;
      QRY_PRECEBIM.Open;
      QRY_PRECEBIM.First;
      ListDatas.Clear;
      LST_DATA.Items.Clear;
      while not(QRY_PRECEBIM.Eof) do
        begin
          VTB_GERAL.Append;
          VTB_GERAL.FieldByName('ddatavenci').AsDateTime :=
          QRY_PRECEBIM.FieldByName('ddatavenci').AsDateTime;
          ListDatas.Add(FormatDateTime('dd/mm/yyyy',VTB_GERAL.FieldByName('ddatavenci').AsDateTime));
          VTB_GERAL.FieldByName('cdescricao').asString :=
          QRY_PRECEBIM.FieldByName('cdescricao').asString;
          VTB_GERAL.FieldByName('valor').value :=
          QRY_PRECEBIM.FieldByName('valor').value;
          VTB_GERAL.Post;
          QRY_PRECEBIM.Next;
        end;

      if (StrToDate('09/05/2005') >= DDT_INICIO.Date) and
         (StrToDate('09/05/2005') <= DDT_FIM.Date) then
        begin
          //if ListDatas.IndexOf('09/05/2005') = -1 then
          ListDatas.Add('09/05/2005');
          QRY_IPTU.SQL.Clear;
          QRY_IPTU.SQL.Add('select sum(nvlr4p) as valor from pimovel');
          QRY_IPTU.SQL.Add('where csequencia is not null and nqtdparcel >= 4 and');
          QRY_IPTU.SQL.Add('cstatus <> '  + QuotedStr('PT') + ' and ');
          QRY_IPTU.SQL.Add(' cstatus not like ' + QuotedStr('%4%'));
          QRY_IPTU.Open;
          VTB_GERAL.Append;
          VTB_GERAL.FieldByName('ddatavenci').AsDateTime := StrToDate('09/05/2005');
          VTB_GERAL.FieldByName('cdescricao').asString := 'IPTU 4° PARCELA';
          VTB_GERAL.FieldByName('valor').value :=
          QRY_IPTU.FieldByName('valor').value;
          VTB_GERAL.Post;
        end;
      if (StrToDate('07/06/2005') >= DDT_INICIO.Date) and
         (StrToDate('07/06/2005') <= DDT_FIM.Date) then
        begin
          //if ListDatas.IndexOf('07/06/2005') = -1 then
          ListDatas.Add('07/06/2005');
          QRY_IPTU.SQL.Clear;
          QRY_IPTU.SQL.Add('select sum(nvlr5p) as valor from pimovel');
          QRY_IPTU.SQL.Add('where csequencia is not null and nqtdparcel >= 5 and');
          QRY_IPTU.SQL.Add('cstatus <> '  + QuotedStr('PT') + ' and ');
          QRY_IPTU.SQL.Add(' cstatus not like ' + QuotedStr('%5%'));
          QRY_IPTU.Open;
          VTB_GERAL.Append;
          VTB_GERAL.FieldByName('ddatavenci').AsDateTime := StrToDate('07/06/2005');
          VTB_GERAL.FieldByName('cdescricao').asString := 'IPTU 5° PARCELA';
          VTB_GERAL.FieldByName('valor').value :=
          QRY_IPTU.FieldByName('valor').value;
          VTB_GERAL.Post;
        end;
      if (StrToDate('07/07/2005') >= DDT_INICIO.Date) and
         (StrToDate('07/07/2005') <= DDT_FIM.Date) then
        begin
          //if ListDatas.IndexOf('07/07/2005') = -1 then
          ListDatas.Add('07/07/2005');
          QRY_IPTU.SQL.Clear;
          QRY_IPTU.SQL.Add('select sum(nvlr6p) as valor from pimovel');
          QRY_IPTU.SQL.Add('where csequencia is not null and nqtdparcel >= 6 and');
          QRY_IPTU.SQL.Add('cstatus <> '  + QuotedStr('PT') + ' and ');
          QRY_IPTU.SQL.Add(' cstatus not like ' + QuotedStr('%6%'));
          QRY_IPTU.Open;
          VTB_GERAL.Append;
          VTB_GERAL.FieldByName('ddatavenci').AsDateTime := StrToDate('07/07/2005');
          VTB_GERAL.FieldByName('cdescricao').asString := 'IPTU 6° PARCELA';
          VTB_GERAL.FieldByName('valor').value :=
          QRY_IPTU.FieldByName('valor').value;
          VTB_GERAL.Post;
        end;
      VTB_GERAL.First;
      for i := 0 to ListDatas.Count - 1 do
        LST_DATA.Items.Add.Caption := ListDatas.Strings[i];
      LST_DATA.AlphaSort;
      for i := 0 to LST_DATA.Items.Count - 1 do
        begin
          VTB_GERAL.Filter := 'ddatavenci = ' +
          QuotedStr(LST_DATA.Items[i].Caption);
          VTB_GERAL.Filtered := true;
          valor := 0;
          while not(VTB_GERAL.Eof) do
            begin
              if not(VTB_GERAL.FieldByName('valor').isNull) then
                valor := valor + VTB_GERAL.FieldByName('valor').value;
              VTB_GERAL.Next;
            end;
          VTB_DIAS.Append;
          VTB_DIAS.FieldByName('ddatavenci').AsDateTime :=
          StrToDate(LST_DATA.Items[i].Caption);
          VTB_DIAS.FieldByName('valor').Value := valor;
          VTB_DIAS.Post;
        end;
      VTB_DIAS.First;
      VTB_DIAS.AfterScroll := Filtra;
      VTB_DIAS.AfterScroll(VTB_DIAS);
      //VTB_GERAL.AfterScroll := VTB_GERALAfterScroll;
     // VTB_GERAL.AfterScroll(VTB_GERAL);
      VTB_DIAS.EnableControls;
      VTB_GERAL.EnableControls;
      BTN_IMPFLX.Enabled := VTB_DIAS.RecordCount > 0;
      PNL_MSG.Visible := false;
      Application.ProcessMessages;
    end;
end;

procedure TFRM_A006AD.FormCreate(Sender: TObject);
begin
  ListDatas := TStringList.Create;
  ListDatas.Sorted := true;
  ListDatas.Duplicates := dupIgnore;
end;

procedure TFRM_A006AD.Filtra(DataSet: TDataSet);
begin
  with DTM_A006AD do
    begin
//      VTB_GERAL.Filtered := false;
      VTB_GERAL.Filter :=
      'ddatavenci = ' + QuotedStr(DateToStr(DataSet.FieldByName('ddatavenci').AsDateTime));
     // if not(VTB_GERAL.Filtered) then
       VTB_GERAL.Filtered := true;
//       BTN_AVANCAR1.Enabled := (VTB_DIAS.RecordCount > 0) and (VTB_DIAS.RecordCount <> DataSet.RecNo);
//       BTN_RETROCEDER1.Enabled := (VTB_DIAS.RecordCount > 0) and (VTB_DIAS.RecNo <> 1);
      if not(DataSet.ControlsDisabled) then
        DBG_REQ.Repaint;
    end;
end;

procedure TFRM_A006AD.FormShow(Sender: TObject);
begin
  if not Acesso(nMatricula,'A006AD',DTM_A006AD) then
    close;
  DDT_INICIO.Date := Now;
  BTN_IMPFLX.Enabled := FALSE;
//  DTM_A006AD.VTB_GERALAfterScroll(DTM_A006AD.VTB_GERAL);
//  BTN_AVANCAR1.Enabled := false;
//  BTN_RETROCEDER1.Enabled := false;
  FRM_A006AD.OnShow := nil;
 {é atribuido ao OnShow do Form o valor nil para que o mesmo seja executado apenas uma vez}
 {pelo fato que se outra aplicação for chamada pela tecla F3, e ao retornar da aplicação que foi chamada pela tecla}
 {o evento OnShow deste form não acontecerá, ou seja não será executado, para permanecer o mesmo status da aplicação}
 {quando o F3 foi chamado}
end;

procedure TFRM_A006AD.Button1Click(Sender: TObject);
begin
//  DTM_A006AD.DTS_DIAS.DataSet.DisableControls;
//  DTM_A006AD.DTS_GERAL.DataSet.DisableControls;
  Lbl_TitOpc.Caption :=
  'Fluxo de Caixa do Periodo ' + DDT_INICIO.Text + ' - ' + DDT_FIM.Text;
  ppReport1.Print;
//  DTM_A006AD.DTS_DIAS.DataSet.EnableControls;
//  DTM_A006AD.DTS_GERAL.DataSet.EnableControls;
end;

procedure TFRM_A006AD.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   Action:= oControlForms.Saidas(Self,[DTM_A006AD],nil);
end;

procedure TFRM_A006AD.DDT_INICIOChange(Sender: TObject);
begin
  DTM_A006AD.VTB_GERAL.Clear;
  DTM_A006AD.VTB_DIAS.Clear;
  DTM_A006AD.VTB_DIAS.AfterScroll := nil;
  BTN_IMPFLX.Enabled := FALSE;
end;

procedure TFRM_A006AD.DDT_FIMKeyPress(Sender: TObject; var Key: Char);
begin
//  if Key = #13 then
//    BTN_PESQFLX.Click;
end;

procedure TFRM_A006AD.BTN_AVANCAR1Click(Sender: TObject);
begin
  DTM_A006AD.DTS_DIAS.DataSet.Next;
end;

procedure TFRM_A006AD.BTN_RETROCEDER1Click(Sender: TObject);
begin
  DTM_A006AD.DTS_DIAS.DataSet.Prior;
end;

procedure TFRM_A006AD.BTN_AVANCAR2Click(Sender: TObject);
begin
  DTM_A006AD.DTS_GERAL.DataSet.Next;
end;

procedure TFRM_A006AD.BTN_RETROCEDER2Click(Sender: TObject);
begin
  DTM_A006AD.DTS_GERAL.DataSet.Prior;
end;

procedure TFRM_A006AD.DBG_REQDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
  var
    nRow : Integer;
begin
   nRow := Rect.Top div (Rect.Bottom - Rect.Top);
   if nRow > 16 then
     nRow := nRow +1;
   if Odd(nRow) then
     TDBGrid(Sender).Canvas.Brush.color := $00E9E9D1
   else
     TDBGrid(Sender).Canvas.Brush.color := $00EFFAFA;
   if  (State <> []) then
     begin
       TDBGrid(Sender).Canvas.Font.Color := clwhite;
       TDBGrid(Sender).Canvas.Brush.color := $00C08000;
     end;
   if TDBGrid(Sender).SelectedRows.CurrentRowSelected then
     begin
       TDBGrid(Sender).Canvas.Brush.color := clNavy;
       TDBGrid(Sender).Canvas.Font.Color := clWhite;
     end;

   TDBGrid(Sender).Canvas.FillRect(Rect);
   TDBGrid(Sender).DefaultDrawDataCell(Rect, Column.Field, State);
end;


procedure TFRM_A006AD.ppReport1PreviewFormCreate(Sender: TObject);
begin
   //mostra a tela de preview maximizada
  TppReport(Sender).PreviewForm.WindowState:= wsMaximized;

end;

procedure TFRM_A006AD.LST_DATACompare(Sender: TObject; Item1,
  Item2: TListItem; Data: Integer; var Compare: Integer);
begin
  if StrToDate(Item1.Caption) > StrToDate(Item2.Caption) then
    Compare := 1
  else
    Compare := -1;
end;

procedure TFRM_A006AD.DBG_REQKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (ssCtrl in Shift) then
    if Key = VK_DELETE then
      Key := 0;
end;

end.
