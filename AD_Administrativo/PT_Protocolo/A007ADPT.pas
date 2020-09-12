unit A007ADPT;

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
  LMDSimplePanel, jpeg, LMDFill;

type
  TFRM_A007ADPT = class(TForm)
    LMDGroupBox2: TLMDGroupBox;
    LMDPanelFill2: TLMDPanelFill;
    BTN_RETROCEDER1: TSpeedButton;
    BTN_AVANCAR1: TSpeedButton;
    DBG_REQ: TDBGrid;
    Label1: TLabel;
    Label9: TLabel;
    Label2: TLabel;
    BTN_DETTRAMI: TSpeedButton;
    Panel2: TPanel;
    BTN_SAIR: TSpeedButton;
    EDT_CDESCRIREQ: TEdit;
    BTN_EXEC: TSpeedButton;
    EDT_NNROPROT: TMaskEdit;
    EDT_ASSUNTO: TEdit;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    CBE_CNOMEREQ: TComboEdit;
    CBE_CNOMEINTER: TComboEdit;
    BTN_LIMPA: TSpeedButton;
    BTN_REQ: TSpeedButton;
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
    procedure DBG_REQDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure BTN_LIMPAClick(Sender: TObject);
    procedure CBE_CNOMEREQExit(Sender: TObject);
    procedure EDT_CDESCRIREQKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BTN_REQClick(Sender: TObject);
    procedure CBE_CNOMEREQChange(Sender: TObject);
  private
    { Private declarations }
  public
    cSqlEmissao, cSqlWhere, cSqlOrder, cNroCpfCnpj : String;
    lLiberaMem: Boolean;
    { Public declarations }
  end;

var
  FRM_A007ADPT: TFRM_A007ADPT;

implementation

uses TelaPrin, A008ADPT, D007ADPT, CtrlForms, MPLLib, UVariaveis, MPLCtrl,
     D008ADPT, DMCTRL, D002ADPT, A002ADPT, Pesquisa;

{$R *.DFM}

procedure TFRM_A007ADPT.BTN_SAIRClick(Sender: TObject);
begin
   lLiberaMem := true;
   close ;
end;

procedure TFRM_A007ADPT.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  if lLiberaMem then
    begin
      Action := oControlForms.Saidas(Self,[DTM_A007ADPT],nil);
      FRM_A007ADPT := nil;
    end;
end;

procedure TFRM_A007ADPT.BTN_DETTRAMIClick(Sender: TObject);
begin
  Application.CreateForm(TDTM_A008ADPT,DTM_A008ADPT);
  Application.CreateForm(TFRM_A008ADPT,FRM_A008ADPT);
  FRM_A008ADPT.lPesqProt := true;
  oControlForms.AtivaForm('FRM_A008ADPT',shModal,Nil);
end;

procedure TFRM_A007ADPT.BTN_EXECClick(Sender: TObject);
var
  cNroCpf: String;
  cSqlFrom: String;
begin
   cSqlEmissao :=  'select nomreqprot.cnome||decode((select count(*) from tagreq where '+
  'nidcadreq = cadreq.nidcadreq), 1,'+QuotedStr('')+', ' + QuotedStr('e Outros')+') as cnomegrl, ' +
  'nomreqprot.cidreq, nomintprot.cidint as cidreq_inter, nomintprot.cnome, ' +
  'cadreq.nnroprot, cadreq.cemitido, cadreq.nidcadreq, cadreq.cdescrireq, ' +
  'cadreq.ddtprot, cadreq.csituareq, tbxtrq.cdescritrq ';
  cSqlFrom := 'from nomreqprot, nomintprot, cadreq, tbxtrq ';
  cSqlWhere := 'nomreqprot.nnroprot = cadreq.nnroprot and ' +
               'nomintprot.nnroprot = cadreq.nnroprot and ' +
               'cadreq.nidtbxtrq = tbxtrq.nidtbxtrq ';

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
     cSqlWhere := cSqlWhere + ' and nomreqprot.cnome like ' +
     QuotedStr('%' + CBE_CNOMEREQ.Text + '%');
   if CBE_CNOMEINTER.Text <> '' then
     cSqlWhere := cSqlWhere + ' and nomintprot.cnome like ' +
     QuotedStr('%' + CBE_CNOMEINTER.Text + '%');
   //if (LimpaMask(CBE_CCPFCNPJ.Text) = '')  and
   if (LimpaMask(EDT_NNROPROT.Text) = '')  and
      (EDT_ASSUNTO.Text = '') and
      (EDT_CDESCRIREQ.Text = '') and
      (CBE_CNOMEREQ.Text = '') and
      (CBE_CNOMEINTER.Text = '')  then
      exit;

   with DTM_A007ADPT do
     begin
       QRY_A151.Close;
       QRY_A151.SQL.Clear;
       QRY_A151.SQL.Add(cSqlEmissao);
       QRY_A151.SQL.Add(cSqlFrom);
       QRY_A151.AddWhere(cSqlWhere);
       QRY_A151.SQL.Add('order by cadreq.nnroprot desc');
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
     end;
end;

procedure TFRM_A007ADPT.FormShow(Sender: TObject);
begin
  if not Acesso(nMatricula,'A007ADPT',DTM_A007ADPT) then
    close;
  Botoes(['Btn_Cancelar','Btn_Gravar'],'FRM_A007ADPT',false);
  FRM_A007ADPT.OnShow := nil;
 {é atribuido ao OnShow do Form o valor nil para que o mesmo seja executado apenas uma vez}
 {pelo fato que se outra aplicação for chamada pela tecla F3, e ao retornar da aplicação que foi chamada pela tecla}
 {o evento OnShow deste form não acontecerá, ou seja não será executado, para permanecer o mesmo status da aplicação}
 {quando o F3 foi chamado}
  DTM_A007ADPT.QRY_A151.Close;
  DTM_A007ADPT.QRY_A151AfterOpen(DTM_A007ADPT.QRY_A151);

end;

procedure TFRM_A007ADPT.BTN_AVANCAR1Click(Sender: TObject);
begin
 {Avançar registro}
 DBGenerica(DTM_A007ADPT.DTS_A151,'Conexao',0,3,nil,false);
end;

procedure TFRM_A007ADPT.BTN_RETROCEDER1Click(Sender: TObject);
begin
 {Retroceder registro}
 DBGenerica(DTM_A007ADPT.DTS_A151,'Conexao',0,2,nil,false);
end;

procedure TFRM_A007ADPT.EDT_NNROPROTEnter(Sender: TObject);
begin
  if (EDT_NNROPROT.Text <> '') then
    begin
      BTN_LIMPA.Click;
      EDT_NNROPROT.SelectAll;
      //CBE_CCPFCNPJ.EditMask := '';
      //CBE_CCPFCNPJ.Text := '';
    end;
end;

procedure TFRM_A007ADPT.EDT_NNROPROTKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
    BTN_EXECClick(Sender);
end;

procedure TFRM_A007ADPT.EDT_NNROPROTExit(Sender: TObject);
begin
 { if LimpaMask(EDT_NNROPROT.Text) <> '' then
    begin
      PrepareQryTemp('select cadgrl.ccpfcnpj, tagreq.nidcadgrl, tagreq.nidtagreq '+
                     'from cadreq, tagreq, cadgrl '+
                     'where cadgrl.nidcadgrl = tagreq.nidcadgrl and '+
                     'tagreq.nidcadreq = cadreq.nidcadreq and '+
                     'cadreq.nnroprot = '+ IntToStr(StrToInt(LimpaMask(EDT_NNROPROT.Text)))+
                     ' order by tagreq.nidtagreq');
      DMControle.QryTemp.ExecSQL;
      DMControle.QryTemp.First;
      cNroCpfCnpj := DMControle.QryTemp.FieldByName('ccpfcnpj').AsString;
      DMControle.QryTemp.Close;

    end;}
end;

procedure TFRM_A007ADPT.DBG_REQDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
    oMetodos.ColorGrid(Sender,Rect,DataCol,Column,State);
//    if (Column.FieldName = 'CNOMEGRL') or (Column.FieldName = 'CDESCRITRQ') then
//      begin
//        DBG_REQ.Canvas.FillRect(Rect);
//        DBG_REQ.Canvas.TextRect(Rect,Rect.Left+2,Rect.Top+2,UpperCase(Column.Field.AsString));
//      end;
end;

procedure TFRM_A007ADPT.BTN_LIMPAClick(Sender: TObject);
begin
  EDT_NNROPROT.Text := '';
  CBE_CNOMEREQ.Text := '';
  CBE_CNOMEINTER.Text := '';
  EDT_CDESCRIREQ.Text := '';
  EDT_ASSUNTO.Text := '';
  DTM_A007ADPT.QRY_A151.Close;
end;

procedure TFRM_A007ADPT.CBE_CNOMEREQExit(Sender: TObject);
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
          BTN_EXEC.Click;
        end;
    end;

end;

procedure TFRM_A007ADPT.EDT_CDESCRIREQKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key = VK_RETURN then
    BTN_EXEC.Click;
end;

procedure TFRM_A007ADPT.BTN_REQClick(Sender: TObject);
begin
  with DTM_A002ADPT, DTM_A007ADPT do
    begin
      QRY_153_1.Locate('dat_idreq;dat_idinter',
      VarArrayOf([
                 QRY_A151.FieldByName('cidreq').asString,
                 QRY_A151.FieldByName('cidreq_inter').asString]),[]);
      QRY_153_2.Locate('nnroprot',QRY_A151.FieldByName('nnroprot').asInteger,[]);
    end;
  lLiberaMem := false;
  close;  
end;

procedure TFRM_A007ADPT.CBE_CNOMEREQChange(Sender: TObject);
begin
  DTM_A007ADPT.QRY_A151.Close;
end;

end.




