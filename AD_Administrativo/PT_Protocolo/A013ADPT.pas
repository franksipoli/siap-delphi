unit A013ADPT;

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
  LMDSimplePanel, jpeg, LMDFill, DBCGrids, DateUtil, ppCache, ppDB,
  ppDBPipe, ppComm, ppRelatv, ppProd, ppClass, ppReport, ppBands, ppCtrls,
  ppPrnabl, ppVar, LMDButtonControl, LMDCustomCheckBox, LMDCheckBox, TypInfo,
  ppViewr;

type
  TFRM_A013ADPT = class(TForm)
    LMDGroupBox2: TLMDGroupBox;
    LMDPanelFill2: TLMDPanelFill;
    BTN_RETROCEDER1: TSpeedButton;
    BTN_AVANCAR1: TSpeedButton;
    BTN_DETTRAMI: TSpeedButton;
    Panel2: TPanel;
    BTN_SAIR: TSpeedButton;
    EDT_CDESCRIREQ: TEdit;
    BTN_EXEC: TSpeedButton;
    EDT_NNROPROT: TMaskEdit;
    EDT_ASSUNTO: TEdit;
    CBE_CNOMEREQ: TComboEdit;
    CBE_CNOMEINTER: TComboEdit;
    BTN_LIMPA: TSpeedButton;
    BTN_REQ: TSpeedButton;
    EDT_FIM: TDateEdit;
    EDT_INICIO: TDateEdit;
    Panel1: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    Panel6: TPanel;
    Panel7: TPanel;
    Label2: TLabel;
    CBE_DESTINO: TComboEdit;
    CBE_ORIGEM: TComboEdit;
    Panel8: TPanel;
    Panel9: TPanel;
    DBCtrlGrid: TDBCtrlGrid;
    Shape1: TShape;
    DBT_NNROPROT: TDBText;
    Shape2: TShape;
    Shape3: TShape;
    DBT_CDESCRITRQ: TDBText;
    DBT_CNOMEREQ: TDBText;
    DBT_CNOMEINT: TDBText;
    DBT_CSITUAREQ: TDBText;
    HeaderControl1: THeaderControl;
    BTN_IMPRIMIR: TSpeedButton;
    QRY_A151: TOraQuery;
    DTS_A151: TOraDataSource;
    Shape4: TShape;
    DBT_LUGAR: TDBText;
    DBT_DDTDESTINO: TDBText;
    DBT_DDTPROT: TDBText;
    Shape5: TShape;
    lbl_reg: TLabel;
    Label3: TLabel;
    LBL_RECNO: TLabel;
    RPT_PROTOC: TppReport;
    DBP_A151: TppDBPipeline;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppDBText9: TppDBText;
    ppDBText10: TppDBText;
    ppDBText11: TppDBText;
    ppShape1: TppShape;
    ppShape2: TppShape;
    ppShape3: TppShape;
    ppShape4: TppShape;
    ppShape5: TppShape;
    QRY_163: TOraQuery;
    DBP_ParamSis: TppDBPipeline;
    ppShape6: TppShape;
    ppLabel8: TppLabel;
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
    SHP_Linha: TppShape;
    CHB_FILTRO: TLMDCheckBox;
    BTN_ULTIMO3: TSpeedButton;
    BTN_PRIMEIRO3: TSpeedButton;
    QRY_A151CNOMEGRL: TStringField;
    QRY_A151CIDTBXURQ: TStringField;
    QRY_A151CIDREQ_INTER: TStringField;
    QRY_A151CNOME: TStringField;
    QRY_A151NNROPROT: TFloatField;
    QRY_A151CEMITIDO: TStringField;
    QRY_A151NIDCADREQ: TFloatField;
    QRY_A151CDESCRIREQ: TStringField;
    QRY_A151DDTPROT: TDateTimeField;
    QRY_A151CSITUAREQ: TStringField;
    QRY_A151CDESCRITRQ: TStringField;
    QRY_A151CDESCRIULC: TStringField;
    QRY_A151DDTDESTINO: TDateTimeField;
    QRY_A151CIDTBXULC: TStringField;
    QRY_A151DDTORIGEM: TDateTimeField;
    QRY_A151IND: TStringField;
    QRY_163_1: TOraQuery;
    QRY_163_1CIDTBXULC: TStringField;
    QRY_163_1CDESCRIULC: TStringField;
    QRY_A151LKP_ORIGEM: TStringField;
    procedure BTN_SAIRClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BTN_DETTRAMIClick(Sender: TObject);
    procedure BTN_EXECClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BTN_AVANCAR1Click(Sender: TObject);
    procedure BTN_RETROCEDER1Click(Sender: TObject);
    procedure EDT_NNROPROTEnter(Sender: TObject);
    procedure EDT_NNROPROTKeyPress(Sender: TObject; var Key: Char);
    procedure EDT_NNROPROTExit(Sender: TObject);
    procedure BTN_LIMPAClick(Sender: TObject);
    procedure CBE_CNOMEREQExit(Sender: TObject);
    procedure EDT_CDESCRIREQKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BTN_REQClick(Sender: TObject);
    procedure CBE_CNOMEREQChange(Sender: TObject);
    procedure CBE_CNOMEREQButtonClick(Sender: TObject);
    procedure QRY_A151AfterOpen(DataSet: TDataSet);
    procedure QRY_A151BeforeClose(DataSet: TDataSet);
    procedure QRY_A151AfterScroll(DataSet: TDataSet);
    procedure EDT_NNROPROTChange(Sender: TObject);
    procedure BTN_IMPRIMIRClick(Sender: TObject);
    procedure CBE_ORIGEMExit(Sender: TObject);
    procedure CBE_DESTINOExit(Sender: TObject);
    procedure SHP_LinhaPrint(Sender: TObject);
    procedure CHB_FILTROClick(Sender: TObject);
    procedure QRY_A151AfterClose(DataSet: TDataSet);
    procedure RPT_PROTOCPreviewFormCreate(Sender: TObject);
    procedure BTN_PRIMEIRO3Click(Sender: TObject);
    procedure BTN_ULTIMO3Click(Sender: TObject);
    procedure CBE_ORIGEMKeyPress(Sender: TObject; var Key: Char);
    procedure CBE_DESTINOKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    cSqlEmissao, cSqlWhere, cSqlOrder, cNroCpfCnpj : String;
    lLiberaMem: Boolean;
    cOrigem,cDestino : String;
    { Public declarations }
  end;

var
  FRM_A013ADPT: TFRM_A013ADPT;

implementation

uses TelaPrin, A008ADPT, CtrlForms, MPLLib, UVariaveis, MPLCtrl,
     D008ADPT, DMCTRL, D002ADPT, A002ADPT, Pesquisa;

{$R *.DFM}

procedure TFRM_A013ADPT.BTN_SAIRClick(Sender: TObject);
begin
   lLiberaMem := true;
   close ;
end;

procedure TFRM_A013ADPT.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if lLiberaMem then
    begin
      Action := oControlForms.Saidas(Self,[nil],nil);
      FRM_A013ADPT := nil;
    end;
end;

procedure TFRM_A013ADPT.BTN_DETTRAMIClick(Sender: TObject);
begin
  Application.CreateForm(TDTM_A008ADPT,DTM_A008ADPT);
  Application.CreateForm(TFRM_A008ADPT,FRM_A008ADPT);
  DTM_A008ADPT.DTS_CABECLH.DataSet := QRY_A151;
  oControlForms.AtivaForm('FRM_A008ADPT',shModal,Nil);
end;

procedure TFRM_A013ADPT.BTN_EXECClick(Sender: TObject);
var
  cNroCpf: String;
  cSqlFrom: String;
begin
  QRY_A151.Filtered := false;
  QRY_A151.Filter := '';
  cSqlEmissao :=
  'select '+
  'InitCap(tbxurq.cnome)||decode((select count(*) from tagreq where nidcadreq = cadreq.nidcadreq), 1,'+QuotedStr('') + ','+QuotedStr(' e Outros')+') as cnomegrl,' +
  'tbxurq.cidtbxurq,'+
  'interprot.cidtbxurq as cidreq_inter,'+
  'InitCap(interprot.cnome) as cnome,'+
  'cadreq.nnroprot,'+
  'cadreq.cemitido,'+
  'cadreq.nidcadreq,'+
  'cadreq.cdescrireq,'+
  'cadreq.ddtprot,'+
  'InitCap(cadreq.csituareq) as csituareq,'+
  'InitCap(tbxtrq.cdescritrq) as cdescritrq, ' +
  'InitCap(tbxulc.cdescriulc) as cdescriulc,' +
  'tbxgtm.cidtbxulc,' +
  'tbxgtm.ddtdestino,' +
  'tbxgtm.ddtorigem,' +
  'decode(tbxulc.cdescriulc,'+QuotedStr(CBE_DESTINO.Text)+','+QuotedStr('A')+','+ QuotedStr('B') +') as ind';
  cSqlFrom := ' from tbxurq, tbxurq interprot, cadreq, tbxtrq, tbxulc, tbxgtm, tagreq, tagitr ';
  cSqlWhere := 'tagreq.nidcadreq = cadreq.nidcadreq and ' +
               'tagreq.cprincipal = '+QuotedStr('S')+' and ' + 
               'tagitr.nidcadreq = cadreq.nidcadreq and ' +
               'tagitr.cprincipal = '+ QuotedStr('S') +' and ' +
               'tbxurq.cidtbxurq = tagreq.cidtbxurq and ' +
               'interprot.cidtbxurq = tagitr.cidtbxurq and ' +
               'cadreq.nidtbxtrq = tbxtrq.nidtbxtrq and ' +
               'tbxgtm.nidtbxgtm(+) = cadreq.nidtbxgtm and ' +
               'tbxulc.cidtbxulc(+) = tbxgtm.ciddestino ' ;

{  cSqlEmissao :=
      'select InitCap(reqproto.cnome)||decode((select count(*) from tagreq where nidcadreq = '+
      'cadreq.nidcadreq), 1, '+QuotedStr('')+', '+QuotedStr(' e Outros')+') as cnomegrl, '+
      'decode(length(reqproto.cpfcnpjreq),11,'
      +QuotedStr('Nº CPF ')+'||substr(reqproto.cpfcnpjreq,1,3)||'+QuotedStr('.')+'||'+
      'substr(reqproto.cpfcnpjreq,4,3)||'+QuotedStr('.')+'||'+
      'substr(reqproto.cpfcnpjreq,7,3)||'+QuotedStr('-')+'||'+
      'substr(reqproto.cpfcnpjreq,10,2),'
      +QuotedStr('Nº CNPJ ')+'||substr(reqproto.cpfcnpjreq,1,2)||'+QuotedStr('.')+'||'+
      'substr(reqproto.cpfcnpjreq,3,3)||'+QuotedStr('.')+'||'+
      'substr(reqproto.cpfcnpjreq,6,3)||'+QuotedStr('/')+'||'+
      'substr(reqproto.cpfcnpjreq,9,4)||'+QuotedStr('-')+'||'+
      'substr(reqproto.cpfcnpjreq,13,2)) as ccpfcnpj,'+
      'decode(length(reqproto.cpfcnpjreq),11,'
      +QuotedStr('Nº R.G. ')+'||reqproto.crgie, '
      +QuotedStr('Nº I.E. ')+'||reqproto.crgie) as crgie,'+
      'reqproto.cpfcnpjreq as ccpfcnpjparam,'+
      'reqproto.cidreq,'+
      'interproto.cidreq as cidreq_inter,'+
      'interproto.cnome,'+
      'cadreq.nnroprot,'+
      'cadreq.cemitido,'+
      'cadreq.nidcadreq,'+
      'cadreq.cdescrireq,'+
      'cadreq.ddtprot,'+
      'cadreq.csituareq,'+
      'tbxtrq.cdescritrq';

  cSqlFrom := 'from reqproto,reqproto interproto,tagreq,cadreq,tbxtrq,tagitr';
  cSqlWhere :=
    'reqproto.cidreq = tagreq.cidreq and '+
    'tagreq.nidcadreq = cadreq.nidcadreq and ' +
    'interproto.cidreq = tagitr.cidreq and ' +
    'tagitr.nidcadreq = cadreq.nidcadreq and ' +
    'cadreq.nidtbxtrq = tbxtrq.nidtbxtrq ';}

  if LimpaMask(EDT_NNROPROT.Text) <> '' then
//    begin
       //cSqlFrom := 'from reqproto,reqproto interproto,idreq,idinter,cadreq, tbxtrq';
       cSqlWhere := cSqlWhere +  ' and cadreq.nnroprot = :nnroprot ';
//    end;


{  cSqlWhere := 'cadgrl.nidcadgrl = tagreq.nidcadgrl and ' +
                'tagreq.nidcadreq = cadreq.nidcadreq and ' +
                'cadreq.nidtbxtrq = tbxtrq.nidtbxtrq  ';
}
//   if LimpaMask(CBE_CCPFCNPJ.Text) <> '' then
//     begin
//       cSqlWhere := cSqlWhere + ' and cadgrl.ccpfcnpj = :ccpfcnpj ';
//       if LimpaMask(EDT_NNROPROT.Text) <> ''  then
//          cSqlWhere := cSqlWhere + ' and ';
//     end;

   if LimpaMask(EDT_NNROPROT.Text) <> ''  then
      begin
        //if LimpaMask(CBE_CCPFCNPJ.Text) = ''  then
        //   cSqlWhere := cSqlWhere + ' and cadgrl.ccpfcnpj = :ccpfcnpj and ';

      end;
   if EDT_ASSUNTO.Text <> '' then
     cSqlWhere := cSqlWhere + ' and tbxtrq.cdescritrq like ' +
     QuotedStr('%' + EDT_ASSUNTO.Text + '%');
   if EDT_CDESCRIREQ.Text <> '' then
     cSqlWhere := cSqlWhere + ' and cadreq.cdescrireq like ' +
     QuotedStr('%' + EDT_CDESCRIREQ.Text + '%');
   if CBE_CNOMEREQ.Text <> '' then
     cSqlWhere := cSqlWhere + ' and tbxurq.cnome like ' +
     QuotedStr('%' + CBE_CNOMEREQ.Text + '%');
   if CBE_CNOMEINTER.Text <> '' then
     cSqlWhere := cSqlWhere + ' and interprot.cnome like ' +
     QuotedStr('%' + CBE_CNOMEINTER.Text + '%');
   if (CBE_ORIGEM.Text <> '') or (CBE_DESTINO.Text <> '') then
     begin
       cSqlFrom := cSqlFrom + ' ,tbxgtm destat, taggtm itemdestat';
       if CBE_ORIGEM.Text <> '' then
         begin
           cSqlWhere := cSqlWhere + ' and destat.cidtbxulc = ' + QuotedStr(cOrigem);
         end;
       if CBE_DESTINO.Text <> '' then
         begin
           cSqlWhere := cSqlWhere + ' and destat.ciddestino = ' + QuotedStr(cDestino);
         end;
       cSqlWhere := cSqlWhere +
                    ' and itemdestat.nidtbxgtm = destat.nidtbxgtm and ' +
                    'cadreq.nidcadreq = itemdestat.nidcadreq';
     end;
   if (LimpaMask(EDT_INICIO.Text) <> '') or
      (LimpaMask(EDT_FIM.Text) <> '') then
     begin
       if (LimpaMask(EDT_INICIO.Text) <> '') then
         if (CBE_ORIGEM.Text = '') and (CBE_DESTINO.Text = '') then
             cSqlWhere := cSqlWhere + ' and cadreq.ddtprot >= ' + QuotedStr(EDT_INICIO.Text)
         else
           cSqlWhere := cSqlWhere + ' and destat.ddtdestino >= ' + QuotedStr(EDT_INICIO.Text);

       if (LimpaMask(EDT_FIM.Text) <> '') then
         if (CBE_ORIGEM.Text = '') and (CBE_DESTINO.Text = '') then
           cSqlWhere := cSqlWhere + ' and cadreq.ddtprot <= ' + QuotedStr(DateTimeToStr(IncDay(StrToDate(EDT_FIM.Text),1)))
         else
           cSqlWhere := cSqlWhere + ' and destat.ddtdestino <= ' + QuotedStr(DateTimeToStr(IncDay(StrToDate(EDT_FIM.Text),1)));
     end;

   //if (LimpaMask(CBE_CCPFCNPJ.Text) = '')  and
   if (LimpaMask(EDT_NNROPROT.Text) = '')  and
      (EDT_ASSUNTO.Text = '') and
      (EDT_CDESCRIREQ.Text = '') and
      (CBE_CNOMEREQ.Text = '') and
      (CBE_CNOMEINTER.Text = '') and
      (CBE_ORIGEM.Text = '') and
      (CBE_DESTINO.Text = '') and
      (LimpaMask(EDT_INICIO.Text) = '') and
      (LimpaMask(EDT_FIM.Text) = '') then
      exit;

//   with DTM_A013ADPT do
//     begin
       QRY_A151.Close;
       QRY_A151.SQL.Clear;
       QRY_A151.SQL.Add(cSqlEmissao);
       QRY_A151.SQL.Add(cSqlFrom);
       QRY_A151.AddWhere(cSqlWhere);
       if (CBE_ORIGEM.Text = '') and (CBE_DESTINO.Text <> '') then
         QRY_A151.SQL.Add('order by ind, cadreq.ddtprot desc')
       else
         QRY_A151.SQL.Add('order by cadreq.ddtprot desc');
      // if LimpaMask(CBE_CCPFCNPJ.Text) <> '' then
      //     QRY_A151.ParamByName('ccpfcnpj').AsString :=
      //     LimpaMask(CBE_CCPFCNPJ.Text);
       if (LimpaMask(EDT_NNROPROT.Text) <> '') then
         begin
          // if LimpaMask(CBE_CCPFCNPJ.Text) = '' then
          //    QRY_A151.ParamByName('ccpfcnpj').AsString := cNroCpfCnpj;
           QRY_A151.ParamByName('nnroprot').AsInteger :=
           StrToInt(LimpaMask(EDT_NNROPROT.Text));
         end;
       QRY_A151.Open;
       QRY_A151.FindField('NNROPROT').Alignment := taCenter;
       TFloatField(QRY_A151.FindField('NNROPROT')).DisplayFormat := '000000/00';
//     end;
end;

procedure TFRM_A013ADPT.FormShow(Sender: TObject);
begin
  if not Acesso(nMatricula,'A013ADPT',nil) then
    close;
  Botoes(['Btn_Cancelar','Btn_Gravar'],'FRM_A013ADPT',false);

  QRY_163.Open;
  BTN_EXEC.Enabled := false;
  BTN_LIMPA.Enabled := false;
  QRY_A151AfterOpen(QRY_A151);
  FRM_A013ADPT.OnShow := nil;
 {é atribuido ao OnShow do Form o valor nil para que o mesmo seja executado apenas uma vez}
 {pelo fato que se outra aplicação for chamada pela tecla F3, e ao retornar da aplicação que foi chamada pela tecla}
 {o evento OnShow deste form não acontecerá, ou seja não será executado, para permanecer o mesmo status da aplicação}
 {quando o F3 foi chamado}
  QRY_A151.Close;
  //QRY_A151AfterOpen(DTM_A013ADPT.QRY_A151);

end;

procedure TFRM_A013ADPT.BTN_AVANCAR1Click(Sender: TObject);
begin
 {Avançar registro}
 DBGenerica(DTS_A151,'Conexao',0,3,nil,false);
end;

procedure TFRM_A013ADPT.BTN_RETROCEDER1Click(Sender: TObject);
begin
 {Retroceder registro}
 DBGenerica(DTS_A151,'Conexao',0,2,nil,false);
end;

procedure TFRM_A013ADPT.EDT_NNROPROTEnter(Sender: TObject);
begin
  EDT_NNROPROT.SelectAll;
end;

procedure TFRM_A013ADPT.EDT_NNROPROTKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
    BTN_EXECClick(Sender);
end;

procedure TFRM_A013ADPT.EDT_NNROPROTExit(Sender: TObject);
begin
  if EDT_NNROPROT.Text <> '' then
    EDT_NNROPROT.Text := Format('%.8d',[StrToInt(EDT_NNROPROT.Text)]);
end;
    
procedure TFRM_A013ADPT.BTN_LIMPAClick(Sender: TObject);
begin
  EDT_NNROPROT.Text := '';
  CBE_CNOMEREQ.Text := '';
  CBE_CNOMEINTER.Text := '';
  EDT_CDESCRIREQ.Text := '';
  EDT_ASSUNTO.Text := '';
  CBE_ORIGEM.Text := '';
  CBE_DESTINO.Text := '';
  EDT_INICIO.Text := '';
  EDT_FIM.Text := '';
  QRY_A151.Close;
end;

procedure TFRM_A013ADPT.CBE_CNOMEREQExit(Sender: TObject);
begin
  with DMControle do
    begin
      if FRM_PESQUISA <> Nil then
        begin
          PrepareQryTemp('select cnome from reqproto where cidreq = ' +
          QuotedStr(TComboEdit(Sender).Text));
          TComboEdit(Sender).Text := QryTemp.FieldByName('cnome').asString;
          QryTemp.SQL.Clear;
          QryTemp.Close;
        end;
    end;

end;

procedure TFRM_A013ADPT.EDT_CDESCRIREQKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key = VK_RETURN then
    BTN_EXEC.Click;
end;

procedure TFRM_A013ADPT.BTN_REQClick(Sender: TObject);
begin
  if FRM_A002ADPT = nil then
    begin
      Application.CreateForm(TDTM_A002ADPT,DTM_A002ADPT);
      Application.CreateForm(TFRM_A002ADPT,FRM_A002ADPT);
      with FRM_A002ADPT do
        begin
          HabPesquisa := false;
          cIdRequerenteLocate := QRY_A151.FieldByName('cidtbxurq').asString;
          cIdInterLocate := QRY_A151.FieldByName('cidreq_inter').asString;
          nNroProtLocate := QRY_A151.FieldByName('nnroprot').asInteger;
        end;

      oControlForms.AtivaForm('FRM_A002ADPT',shModal,Nil);
    end
  else
    begin

      with DTM_A002ADPT do
        begin
          QRY_153_1.Locate('cidtbxurq;dat_idinter',
          VarArrayOf([
                     QRY_A151.FieldByName('cidtbxurq').asString,
                     QRY_A151.FieldByName('cidreq_inter').asString]),[]);
          QRY_153_2.Locate('nnroprot',QRY_A151.FieldByName('nnroprot').asInteger,[]);
        end;

      lLiberaMem := false;
      close;

    end;

end;

procedure TFRM_A013ADPT.CBE_CNOMEREQChange(Sender: TObject);
begin
  QRY_A151.Close;
  BTN_EXEC.Enabled := not (
  (CBE_CNOMEREQ.Text = '')   and
  (CBE_CNOMEINTER.Text = '') and
  (EDT_CDESCRIREQ.Text = '') and
  (EDT_ASSUNTO.Text = '')    and
  (CBE_ORIGEM.Text = '')     and
  (CBE_DESTINO.Text = '')    and
  (LimpaMask(EDT_INICIO.Text) = '')     and
  (LimpaMask(EDT_FIM.Text) = '')        and
  (EDT_NNROPROT.Text = ''));

  BTN_LIMPA.Enabled := BTN_EXEC.Enabled;

end;

procedure TFRM_A013ADPT.CBE_CNOMEREQButtonClick(Sender: TObject);
begin
  VerTeclas(VK_F2);
end;

procedure TFRM_A013ADPT.QRY_A151AfterOpen(DataSet: TDataSet);
begin
  CHB_FILTRO.Enabled := CBE_DESTINO.Text <> '' ;
  BTN_REQ.Enabled := (QRY_A151.RecordCount > 0) and (VerificaAcessoBotao('A002ADPT','BTN_REQ'));
  BTN_DETTRAMI.Enabled := QRY_A151.RecordCount > 0;
  BTN_IMPRIMIR.Enabled := BTN_DETTRAMI.Enabled;
  lbl_reg.Enabled := BTN_DETTRAMI.Enabled;
  LBL_RECNO.Enabled := BTN_DETTRAMI.Enabled;
  QRY_A151AfterScroll(DataSet);
end;

procedure TFRM_A013ADPT.QRY_A151BeforeClose(DataSet: TDataSet);
begin
  if CBE_DESTINO.Text = ''  then
    CHB_FILTRO.Caption := 'Filtrar Destino...';
  CHB_FILTRO.Checked := false;
  CHB_FILTRO.Enabled := false;
  lbl_reg.Enabled := false;
  LBL_RECNO.Enabled := false;
  LBL_RECNO.Caption := '0 / 0';
end;

procedure TFRM_A013ADPT.QRY_A151AfterScroll(DataSet: TDataSet);
begin
  LBL_RECNO.Caption := IntToStr(DataSet.RecNo) + ' / ' + IntToStr(DataSet.RecordCount);
  BTN_AVANCAR1.Enabled := (DataSet.RecordCount > 0) and (DataSet.RecordCount <> DataSet.RecNo);
  BTN_RETROCEDER1.Enabled := (DataSet.RecordCount > 0) and (DataSet.RecNo <> 1);
  BTN_PRIMEIRO3.Enabled := BTN_RETROCEDER1.Enabled;
  BTN_ULTIMO3.Enabled := BTN_AVANCAR1.Enabled;
end;

procedure TFRM_A013ADPT.EDT_NNROPROTChange(Sender: TObject);
begin
  CBE_CNOMEREQ.Text := '';
  CBE_CNOMEINTER.Text := '';
  EDT_CDESCRIREQ.Text := '';
  EDT_ASSUNTO.Text := '';
  CBE_ORIGEM.Text := '';
  CBE_DESTINO.Text := '';
  EDT_INICIO.Text := '';
  EDT_FIM.Text := '';
  CBE_CNOMEREQChange(Sender);
end;

procedure TFRM_A013ADPT.BTN_IMPRIMIRClick(Sender: TObject);
begin
  RPT_PROTOC.Print;
end;

procedure TFRM_A013ADPT.CBE_ORIGEMExit(Sender: TObject);
begin
  if FRM_PESQUISA <> nil then
    begin
      cOrigem := CBE_ORIGEM.Text;
      QRY_163.ParamByName('cidtbxulc').asString := cOrigem;
      QRY_163.ExecSQL;
      CBE_ORIGEM.Text := UpperCase(QRY_163.FieldByName('cdescriulc').asString);
    end;
end;

procedure TFRM_A013ADPT.CBE_DESTINOExit(Sender: TObject);
begin
  if FRM_PESQUISA <> nil then
    begin
      cDestino := CBE_DESTINO.Text;
      QRY_163.ParamByName('cidtbxulc').asString := cDestino;
      QRY_163.ExecSQL;
      CBE_DESTINO.Text := UpperCase(QRY_163.FieldByName('cdescriulc').asString);
      CHB_FILTRO.Caption := 'Filtrar Destino ' + QRY_163.FieldByName('cdescriulc').asString;
    end;

end;

procedure TFRM_A013ADPT.SHP_LinhaPrint(Sender: TObject);
begin
  if Odd(QRY_A151.RecNo) then
    SHP_Linha.Brush.Color := $00F8F8F8
  else
    SHP_Linha.Brush.Color := clWhite;
end;

procedure TFRM_A013ADPT.CHB_FILTROClick(Sender: TObject);
begin
  if CHB_FILTRO.Checked then
    begin
      QRY_163.ParamByName('cidtbxulc').asString := cDestino;
      QRY_163.ExecSQL;
      QRY_A151.Filter := 'cdescriulc = ' + QuotedStr(QRY_163.FieldByName('cdescriulc').asString);
      QRY_A151.Filtered := true;
    end
  else
    QRY_A151.Filtered := false;
  LBL_RECNO.Caption := IntToStr(QRY_A151.RecNo) + '/' + IntToStr(QRY_A151.RecordCount);
end;
procedure TFRM_A013ADPT.QRY_A151AfterClose(DataSet: TDataSet);
begin
  BTN_REQ.Enabled := (QRY_A151.RecordCount > 0) and (VerificaAcessoBotao('A002ADPT','BTN_REQ'));
  BTN_DETTRAMI.Enabled := QRY_A151.RecordCount > 0;
  BTN_IMPRIMIR.Enabled := BTN_DETTRAMI.Enabled;
  QRY_A151AfterScroll(DataSet);
end;

procedure TFRM_A013ADPT.RPT_PROTOCPreviewFormCreate(Sender: TObject);
begin
  RPT_PROTOC.PreviewForm.WindowState:= wsMaximized;
  TppViewer(RPT_PROTOC.PreviewForm.Viewer).ZoomSetting:= zsPageWidth;
end;

procedure TFRM_A013ADPT.BTN_PRIMEIRO3Click(Sender: TObject);
begin
  QRY_A151.First;
end;

procedure TFRM_A013ADPT.BTN_ULTIMO3Click(Sender: TObject);
begin
  QRY_A151.Last;
end;

procedure TFRM_A013ADPT.CBE_ORIGEMKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key <> #13) or (Key <> #9) then
    Key := #0;
end;

procedure TFRM_A013ADPT.CBE_DESTINOKeyPress(Sender: TObject;
  var Key: Char);
begin
  if (Key <> #13) or (Key <> #9) then
    Key := #0;
end;

end.




