unit A002AD;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ppComm, ppRelatv, ppProd, ppClass, ppReport, ppBands, ppCache, ppCtrls,
  ppPrnabl, ppStrtch, ppSubRpt, Db, Ora, ppDB, ppDBPipe, MemDS, DBAccess,
  myChkBox, ppRegion, StdCtrls, DBCtrls, Mask, ToolEdit, LMDCustomControl,
  LMDCustomPanel, LMDCustomBevelPanel, LMDCustomParentPanel,
  LMDCustomGroupBox, LMDGroupBox, Grids, DBGrids, ExtCtrls, Buttons,
  LMDCustomButtonGroup, LMDCustomRadioGroup, LMDRadioGroup,
  LMDCustomPanelFill, LMDPanelFill;

type
  TFRM_A002AD = class(TForm)
    CBE_CCPFCNPJ_3: TComboEdit;
    DED_CNOMEGRL: TDBEdit;
    Label1: TLabel;
    Label2: TLabel;
    GRD_FORNEC_1: TDBGrid;
    LMDGroupBox2: TLMDGroupBox;
    RBT_TODOS: TRadioButton;
    RBT_SELET: TRadioButton;
    Panel14: TPanel;
    Panel1: TPanel;
    Panel2: TPanel;
    CHK_VENCIDA: TCheckBox;
    CHK_DATAS: TCheckBox;
    BTN_VOLTAR: TBitBtn;
    RGR_Doc: TLMDRadioGroup;
    Label3: TLabel;
    QRY_031_01: TOraQuery;
    DTS_031_01: TOraDataSource;
    LMDPanelFill5: TLMDPanelFill;
    Btn_Retroceder1: TSpeedButton;
    Btn_Avancar1: TSpeedButton;
    Btn_Excluir1: TSpeedButton;
    QRY_031_01NIDCADGRL: TFloatField;
    QRY_031_01CNOMEGRL: TStringField;
    QRY_031_01CCPFCNPJ: TStringField;
    QRY_031_01CPESSOAFJ: TFloatField;
    ReportFornec: TppReport;
    ppHeaderBand1: TppHeaderBand;
    Db_Razao: TppDBText;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppDetailBand1: TppDetailBand;
    ppShape8: TppShape;
    Lbl_CCPFCNPJ: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    rDT_CCPFCNPJ: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    Documentacao: TppSubReport;
    ppChildReport1: TppChildReport;
    ppTitleBand1: TppTitleBand;
    ppDetailBand2: TppDetailBand;
    ppShape2: TppShape;
    ppDBText5: TppDBText;
    ppLine4: TppLine;
    ppLine5: TppLine;
    ppLine6: TppLine;
    ppLine7: TppLine;
    myDBCheckBox2: TmyDBCheckBox;
    ppDBText7: TppDBText;
    ppLine8: TppLine;
    ppDBText6: TppDBText;
    myDBCheckBox3: TmyDBCheckBox;
    Chk_cFalta: TmyCheckBox;
    ppDBText9: TppDBText;
    ppLine2: TppLine;
    ppLine1: TppLine;
    ppLine16: TppLine;
    ppSummaryBand1: TppSummaryBand;
    ppLine9: TppLine;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppShape1: TppShape;
    ppDBText4: TppDBText;
    lbl_cFalta: TppLabel;
    lbl_cvigencia: TppLabel;
    lbl_cdispen: TppLabel;
    lbl_cstatus: TppLabel;
    lbl_centregue: TppLabel;
    ppLabel6: TppLabel;
    ppLine10: TppLine;
    ppLine11: TppLine;
    ppLine12: TppLine;
    ppLine13: TppLine;
    ppLine14: TppLine;
    ppLine15: TppLine;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppLabel5: TppLabel;
    ppLabel11: TppLabel;
    ppDBText1: TppDBText;
    ppDBText8: TppDBText;
    ppFooterBand1: TppFooterBand;
    ppGroup2: TppGroup;
    ppGroupHeaderBand2: TppGroupHeaderBand;
    ppGroupFooterBand2: TppGroupFooterBand;
    MDT_DATINI: TDateEdit;
    MDT_DATFIM: TDateEdit;
    ppLabel8: TppLabel;
    RGR_CERTIF: TLMDRadioGroup;
    MDT_DTDVALIDAD: TDateEdit;
    Panel3: TPanel;
    QRY_031_01DDTVALIDAD: TDateTimeField;
    BTN_GERADOC: TSpeedButton;
    DBT_DDTVALIDAD: TppDBText;
    CBB_CAMPOS: TComboBox;
    EDT_LOCALIZA: TEdit;
    RBT_FILTRO: TRadioButton;
    procedure ppShape2Print(Sender: TObject);
    procedure Lbl_CCPFCNPJPrint(Sender: TObject);
    procedure Chk_cFaltaPrint(Sender: TObject);
    procedure lbl_cFaltaPrint(Sender: TObject);
    procedure BTN_IMPRIMIRClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure CHK_VENCIDAClick(Sender: TObject);
    procedure MED_DATINIChange(Sender: TObject);
    procedure CHK_DATASClick(Sender: TObject);
    procedure CBE_CCPFCNPJ_3Exit(Sender: TObject);
    procedure Btn_Retroceder1Click(Sender: TObject);
    procedure Btn_Avancar1Click(Sender: TObject);
    procedure Btn_Excluir1Click(Sender: TObject);
    procedure DTS_031_01DataChange(Sender: TObject; Field: TField);
    procedure QRY_031_01CCPFCNPJGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure RBT_SELETClick(Sender: TObject);
    procedure BTN_VOLTARClick(Sender: TObject);
    procedure ppGroupHeaderBand1AfterPrint(Sender: TObject);
    procedure CBE_CCPFCNPJ_3ButtonClick(Sender: TObject);
    procedure DBT_DDTVALIDADPrint(Sender: TObject);
    procedure QRY_031_01AfterOpen(DataSet: TDataSet);
    procedure QRY_031_01AfterClose(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure RGR_CERTIFClick(Sender: TObject);
    procedure MDT_DTDVALIDADChange(Sender: TObject);
    procedure ppDBText8GetText(Sender: TObject; var Text: String);
    procedure RBT_FILTROClick(Sender: TObject);
    procedure RBT_TODOSClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    cSql34, cSql3401, cSql31 : String;
    ListaFornec : TStringList;
    nPagina : Integer;
  end;

var
  FRM_A002AD: TFRM_A002AD;

implementation

uses DMCTRL, MPLCtrl, D002AD, MPLLib, UVariaveis;

{$R *.DFM}

procedure TFRM_A002AD.ppShape2Print(Sender: TObject);
begin
if Odd(DTM_A002AD.QRY_034.RecNo) then
     ppShape2.Brush.Color := $00EEEEEE
   else
     ppShape2.Brush.Color := clWhite;
end;

procedure TFRM_A002AD.Lbl_CCPFCNPJPrint(Sender: TObject);
begin
  if DTM_A002AD.QRY_031.FieldByName('cpessoafj').AsInteger = 1 then
    begin
      Lbl_CCPFCNPJ.Caption := 'CPF';
      rDT_CCPFCNPJ.DisplayFormat := '999.999.999-99;0;';
    end
  else
    begin
      Lbl_CCPFCNPJ.Caption := 'CNPJ';
      rDT_CCPFCNPJ.DisplayFormat := '99.999.999/9999-99;0;'
    end;

end;

procedure TFRM_A002AD.Chk_cFaltaPrint(Sender: TObject);
begin
 Chk_cFalta.Checked := ((DTM_A002AD.QRY_034.FieldByName('centregue').asString = 'N') and
                       (DTM_A002AD.QRY_034.FieldByName('cdispensa').AsString = 'N'));
end;

procedure TFRM_A002AD.lbl_cFaltaPrint(Sender: TObject);
  var
    lAux : boolean;
begin
   if (DTM_A002AD.QRY_034.RecNo = 1) then
     begin
       nPagina := ReportFornec.AbsolutePage;
       lAux := true;
     end
   else
     if (nPagina <> ReportFornec.AbsolutePage) then
       lAux := true
     else
       lAux := false;
     //if nPagina <> ReportFornec.AbsolutePage then
      // begin
      // end;
   if Sender is TppLabel then
     TppLabel(Sender).Visible := lAux
   else
     TppLine(Sender).Visible := lAux;
end;

procedure TFRM_A002AD.BTN_IMPRIMIRClick(Sender: TObject);
 var
   cSql : String;
begin
  
  with DTM_A002AD do
    begin
      QRY_034.SQL.Text := cSql34;
      QRY_031.SQL.Text := cSql31;
      cSql := '';

      if RBT_SELET.Checked then
        cSql := 'and cadgrl.nidcadgrl in ('+ListaFornec.CommaText+')'
      else
        if RBT_FILTRO.Checked then
          begin
            if CBB_CAMPOS.Text = 'Localidade' then
              cSql := 'and tbxloc.cnomeloc = ' +  QuotedStr(EDT_LOCALIZA.Text);
          end;


      if RGR_CERTIF.ItemIndex = 1 then
        cSql := cSql + ' and cadfor.ddtvalidad < '+QuotedStr(FormatDatePesquisa(Now))
      else
        if RGR_CERTIF.ItemIndex = 2 then
          cSql := cSql + ' and cadfor.ddtvalidad = ' + QuotedStr(FormatDatePesquisa(StrToDate(MDT_DTDVALIDAD.Text)));

      QRY_031.SQL.Add(cSql);

      cSql := '';

      if CHK_VENCIDA.Checked then
        cSql := ' and tagdoc.ddatavalid < ' + QuotedStr(FormatDatePesquisa(Now))
      else
        if CHK_DATAS.Checked then
          cSql := ' and tagdoc.ddatavalid between '+QuotedStr(FormatDatePesquisa(StrToDateTime(MDT_DATINI.text))) +
                  ' and ' + QuotedStr(FormatDatePesquisa(StrToDate(MDT_DATFIM.Text)))
        else
          if RGR_Doc.ItemIndex = 2 then
            cSql := ' and tagdoc.cstatus = ' + QuotedStr('IRREGULAR')
          else
            if RGR_Doc.ItemIndex = 1 then
              cSql :=' and tagdoc.cstatus = ' + QuotedStr('OK');
      cSql := cSql + 'order by cadgdc.nidcadgdc, tagigd.nidtagigd';

      QRY_034.SQL.Add(cSql);

      QRY_031.Open;
      QRY_034.Open;

      Imprimir(ReportFornec,QRY_031,nil);

      QRY_034.Close;
      QRY_031.Close;
    end;

end;

procedure TFRM_A002AD.FormShow(Sender: TObject);
begin
  Acesso(nMatricula,'A002AD',DTM_A002AD);
  FRM_A002AD.OnShow := nil;
 {é atribuido ao OnShow do Form o valor nil para que o mesmo seja executado apenas uma vez}
 {pelo fato que se outra aplicação for chamada pela tecla F3, e ao retornar da aplicação que foi chamada pela tecla}
 {o evento OnShow deste form não acontecerá, ou seja não será executado, para permanecer o mesmo status da aplicação}
 {quando o F3 foi chamado}

end;

procedure TFRM_A002AD.CHK_VENCIDAClick(Sender: TObject);
begin
  if CHK_VENCIDA.Checked then
    begin
      RGR_Doc.ItemIndex := 2;
      if CHK_DATAS.Checked then
       CHK_DATAS.Checked := false;
    end;

end;

procedure TFRM_A002AD.MED_DATINIChange(Sender: TObject);
begin
  CHK_DATAS.Checked := true;
end;

procedure TFRM_A002AD.CHK_DATASClick(Sender: TObject);
begin
  if (CHK_DATAS.Checked) and (CHK_VENCIDA.Checked) then
    CHK_VENCIDA.Checked := false;
end;

procedure TFRM_A002AD.CBE_CCPFCNPJ_3Exit(Sender: TObject);
  Label Fornec;
begin
  if trim(CBE_CCPFCNPJ_3.Text) = '' then
    exit;
  PrepareQryTemp('select cadgrl.nidcadgrl from cadfor, cadgrl where cadgrl.nidcadgrl = cadfor.nidcadgrl and cadgrl.ccpfcnpj = ' +
                 QuotedStr(LimpaMask(CBE_CCPFCNPJ_3.Text)));
  if DMControle.QryTemp.RecordCount = 0 then
    begin
      MessageDlg('Fornecedor não encontrado!',mtInformation,[mbOk],0);
      CBE_CCPFCNPJ_3.SetFocus;
    end
  else
    begin
      if not(QRY_031_01.Active) then
        goto Fornec;
      if not(QRY_031_01.Locate('nidcadgrl',DMControle.QryTemp.FieldByName('nidcadgrl').AsString,[])) then
        begin
          QRY_031_01.SQL.Text := cSql3401;

          Fornec:
            ListaFornec.Add(DMControle.QryTemp.FieldByName('nidcadgrl').AsString);


          QRY_031_01.SQL.Add('('+ListaFornec.CommaText+')');
          QRY_031_01.ExecSQL;
        end;
    end;

 DMControle.QryTemp.Close;
 DMControle.QryTemp.SQL.Clear;
end;

procedure TFRM_A002AD.Btn_Retroceder1Click(Sender: TObject);
begin
  if DTS_031_01.DataSet.Active then
    DTS_031_01.DataSet.Prior;
end;

procedure TFRM_A002AD.Btn_Avancar1Click(Sender: TObject);
begin
  if DTS_031_01.DataSet.Active then
    DTS_031_01.DataSet.Next;
end;

procedure TFRM_A002AD.Btn_Excluir1Click(Sender: TObject);
begin
 with QRY_031_01 do
   begin
     if Active then
       begin
         if RecordCount = 1 then
           begin
             close;
             SQL.Text := cSql3401;
             ListaFornec.Clear;
             CBE_CCPFCNPJ_3.Text := '';
           end
         else
           begin
             ListaFornec.Delete(ListaFornec.IndexOf(FieldByName('nidcadgrl').asString));
             SQL.Text := cSql3401 + '(' + ListaFornec.CommaText + ')';
             ExecSQL;
           end;
       end;
   end;
end;

procedure TFRM_A002AD.DTS_031_01DataChange(Sender: TObject; Field: TField);
begin
  CBE_CCPFCNPJ_3.Text := QRY_031_01.FieldByName('ccpfcnpj').DisplayText;
end;

procedure TFRM_A002AD.QRY_031_01CCPFCNPJGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  if QRY_031_01.FieldByName('cpessoafj').asInteger = 1 then
    Text := FormatMaskText('999.999.999-99;0;*',Sender.AsString)
  else
    Text := FormatMaskText('99.999.999/9999-99;0;*',Sender.AsString);
    
end;

procedure TFRM_A002AD.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   Action:= oControlForms.Saidas(Self,[DTM_A002AD],DTM_A002AD.DTS_031.DataSet);
end;

procedure TFRM_A002AD.RBT_SELETClick(Sender: TObject);
begin
  if QRY_031_01.RecordCount = 0 then
    RBT_TODOS.Checked := true;
  RBT_FILTROClick(Sender);  
end;

procedure TFRM_A002AD.BTN_VOLTARClick(Sender: TObject);
begin
  close;
end;

procedure TFRM_A002AD.ppGroupHeaderBand1AfterPrint(Sender: TObject);
begin
  nPagina := ReportFornec.AbsolutePage;
end;

procedure TFRM_A002AD.CBE_CCPFCNPJ_3ButtonClick(Sender: TObject);
begin
  VerTeclas(VK_F2);
end;

procedure TFRM_A002AD.DBT_DDTVALIDADPrint(Sender: TObject);
begin
  if DBT_DDTVALIDAD.Text <> '' then
    if StrToDate(DBT_DDTVALIDAD.Text) < Now then
      DBT_DDTVALIDAD.Font.Color := clRed
    else
      DBT_DDTVALIDAD.Font.Color := clBlack
end;

procedure TFRM_A002AD.QRY_031_01AfterOpen(DataSet: TDataSet);
begin
  RBT_SELET.Checked := true;
end;

procedure TFRM_A002AD.QRY_031_01AfterClose(DataSet: TDataSet);
begin
   RBT_TODOS.Checked := true;
end;

procedure TFRM_A002AD.FormCreate(Sender: TObject);
begin
  cSql34 := DTM_A002AD.QRY_034.SQL.Text;
  cSql3401 := QRY_031_01.SQL.Text;
  cSql31 := DTM_A002AD.QRY_031.SQL.Text;
  ListaFornec := TStringList.Create;
end;

procedure TFRM_A002AD.RGR_CERTIFClick(Sender: TObject);
begin
  if RGR_CERTIF.ItemIndex = 2 then
    MDT_DTDVALIDAD.SetFocus;
end;

procedure TFRM_A002AD.MDT_DTDVALIDADChange(Sender: TObject);
begin
  RGR_CERTIF.ItemIndex := 2;
end;

procedure TFRM_A002AD.ppDBText8GetText(Sender: TObject; var Text: String);
begin

  if Length(Trim(Text)) <= 4 then
    Text := '';
end;

procedure TFRM_A002AD.RBT_FILTROClick(Sender: TObject);
begin
  CBB_CAMPOS.Enabled := RBT_FILTRO.Checked;
  EDT_LOCALIZA.Enabled := RBT_FILTRO.Checked;
end;

procedure TFRM_A002AD.RBT_TODOSClick(Sender: TObject);
begin
  RBT_FILTROClick(Sender);
end;

end.
