//INICIO 22/06/2004

unit A001RHTE;

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
  LMDSimplePanel, jpeg, LMDBaseGraphicButton, LMDCustomSpeedButton,
  LMDSpeedButton, LMDFill, ppCtrls, ppPrnabl, ppClass, ppBands, ppCache,
  ppComm, ppRelatv, ppProd, ppReport, ppVar ;

type
  
  TFRM_A001RHTE = class(TForm)
    LMDGroupBox2: TLMDGroupBox;
    DBG_DISP: TDBGrid;
    DBG_SELEC: TDBGrid;
    BTN_IMPORTAR2: TSpeedButton;
    BTN_EXCLUIR1: TSpeedButton;
    BTN_ADITEM: TSpeedButton;
    BTN_ADDTODOS: TSpeedButton;
    BTN_RENITEM: TSpeedButton;
    BTN_RENTODOS: TSpeedButton;
    LMDPanelFill1: TLMDPanelFill;
    LMDPanelFill2: TLMDPanelFill;
    GRB_DET: TLMDGroupBox;
    LMDFill1: TLMDFill;
    DED_DAT_NQTDBBB: TDBEdit;
    DED_DAT_NTOTBBB: TDBEdit;
    BTN_BBB: TSpeedButton;
    DED_DAT_NQTDBLQ: TDBEdit;
    DED_DAT_NTOTBLQ: TDBEdit;
    BTN_BLQ: TSpeedButton;
    DED_DAT_NQTDAEV: TDBEdit;
    DED_DAT_NTOTAEV: TDBEdit;
    BTN_AEV: TSpeedButton;
    DED_DAT_NQTDAGR: TDBEdit;
    DED_DAT_NTOTAGR: TDBEdit;
    BTN_AGR: TSpeedButton;
    LMDFill5: TLMDFill;
    DED_DAT_NQTDPAG: TDBEdit;
    DED_DAT_NTOTPAG: TDBEdit;
    BTN_PAG: TSpeedButton;
    LMDFill6: TLMDFill;
    DED_DAT_NQTDPEF: TDBEdit;
    DED_DAT_NTOTPEF: TDBEdit;
    BTN_PEF: TSpeedButton;
    LMDFill7: TLMDFill;
    DED_DAT_NQTDPCC: TDBEdit;
    DED_DAT_NTOTPCC: TDBEdit;
    BTN_PCC: TSpeedButton;
    LMDFill8: TLMDFill;
    DED_DAT_NQTDERR: TDBEdit;
    DED_DAT_NTOTERR: TDBEdit;
    BTN_ERR: TSpeedButton;
    LMDFill2: TLMDFill;
    LMDFill3: TLMDFill;
    LMDFill4: TLMDFill;
    LMDSimplePanel1: TLMDSimplePanel;
    Label1: TLabel;
    CMB_OPCAO: TComboBox;
    Label2: TLabel;
    DLC_REF: TRxDBLookupCombo;
    Panel2: TPanel;
    BTN_SAIR: TSpeedButton;
    BTN_CNA: TSpeedButton;
    BTN_RET: TSpeedButton;
    BTN_PRIMEIROREG: TSpeedButton;
    Btn_Retroceder1: TSpeedButton;
    Btn_UltimoReg: TSpeedButton;
    Btn_Avancar1: TSpeedButton;
    Btn_UltimoReg1: TSpeedButton;
    Btn_Avancar2: TSpeedButton;
    Btn_Retroceder2: TSpeedButton;
    Btn_PrimeiroReg1: TSpeedButton;
    BTN_TRF: TSpeedButton;
    Pnl_Aviso: TPanel;
    BTN_DETFUN: TSpeedButton;
    BTN_DEFFUN2: TSpeedButton;
    Report: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    LBL_COPETEN: TppLabel;
    ppDBText1: TppDBText;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppShape1: TppShape;
    ppLabel4: TppLabel;
    ppShape2: TppShape;
    ppShape3: TppShape;
    ppLabel8: TppLabel;
    ppShape4: TppShape;
    ppLabel10: TppLabel;
    ppShape5: TppShape;
    ppLabel12: TppLabel;
    ppShape6: TppShape;
    ppLabel13: TppLabel;
    ppShape7: TppShape;
    ppLabel15: TppLabel;
    OrigemRec: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBCalc1: TppDBCalc;
    ppDBCalc2: TppDBCalc;
    ppShape8: TppShape;
    ppShape9: TppShape;
    ppShape10: TppShape;
    ppLabel5: TppLabel;
    ppSummaryBand1: TppSummaryBand;
    ppShape11: TppShape;
    ppShape12: TppShape;
    ppShape13: TppShape;
    ppDBCalc3: TppDBCalc;
    ppDBCalc4: TppDBCalc;
    ppLabel9: TppLabel;
    ppShape14: TppShape;
    ppImage1: TppImage;
    ppLabel11: TppLabel;
    ppLabel14: TppLabel;
    ppLabel16: TppLabel;
    BTN_IMPRIMIR: TSpeedButton;
    ppLine2: TppLine;
    ppLine4: TppLine;
    ppSystemVariable1: TppSystemVariable;
    BTN_HIST: TSpeedButton;
    ppDBText6: TppDBText;
    procedure BTN_SAIRClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BTN_IMPORTAR2Click(Sender: TObject);
    procedure BTN_BBBClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DLC_REFCloseUp(Sender: TObject);
    procedure DLC_REFChange(Sender: TObject);
    procedure CMB_OPCAOKeyPress(Sender: TObject; var Key: Char);
    procedure CMB_OPCAOKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CMB_OPCAOKeyUp(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CMB_OPCAOChange(Sender: TObject);
    procedure BTN_EXCLUIR1Click(Sender: TObject);
    procedure BTN_ADITEMClick(Sender: TObject);
    procedure BTN_ADDTODOSClick(Sender: TObject);
    procedure BTN_RENITEMClick(Sender: TObject);
    procedure BTN_RENTODOSClick(Sender: TObject);
    procedure BTN_PRIMEIROREGClick(Sender: TObject);
    procedure Btn_Retroceder1Click(Sender: TObject);
    procedure Btn_Avancar1Click(Sender: TObject);
    procedure Btn_UltimoRegClick(Sender: TObject);
    procedure Btn_PrimeiroReg1Click(Sender: TObject);
    procedure Btn_Retroceder2Click(Sender: TObject);
    procedure Btn_Avancar2Click(Sender: TObject);
    procedure Btn_UltimoReg1Click(Sender: TObject);
    procedure DBG_DISPMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure DBG_SELECMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure BTN_CNAClick(Sender: TObject);
    procedure BTN_DETFUNClick(Sender: TObject);
    procedure BTN_DEFFUN2Click(Sender: TObject);
    procedure BTN_RETClick(Sender: TObject);
    procedure BTN_IMPRIMIRClick(Sender: TObject);
    procedure BTN_TRFClick(Sender: TObject);
    procedure BTN_HISTClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    cSituacao : string;
    cTipoRem : String;
    cTipoMovto : String;
    //atualiza as qrys do datamodule
    procedure AtualizaQrys;
  end;

var
  FRM_A001RHTE: TFRM_A001RHTE;

implementation

uses A002RHTE, A003RHTE, UVariaveis, MPLCtrl, CtrlForms, D001RHTE, DateUtil,
  D003RHTE, DMCTRL, A004RHTE, D004RHTE, D005RHTE, A005RHTE, A009RHTE ;

{$R *.DFM}

procedure TFRM_A001RHTE.BTN_SAIRClick(Sender: TObject);
begin
   close ;
end;

procedure TFRM_A001RHTE.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  //libera aplicação da memoria
  Action:= oControlForms.Saidas(Self,[DTM_A001RHTE],DTM_A001RHTE.QRY_062);
end;

procedure TFRM_A001RHTE.BTN_IMPORTAR2Click(Sender: TObject);
begin
   //chama form de importação
   oControlForms.AtivaForm('FRM_A002RHTE',shModal,nil,false);
   //refresh na tabela de remessa
   DTM_A001RHTE.QRY_062.Refresh;
    //se existir registro na tabela de remessa
   if not(DTM_A001RHTE.QRY_062.FieldByName('dat_id').isNull) then
    //atualiza dblookup de competencia
    DLC_REF.KeyValue :=
    DTM_A001RHTE.QRY_062.FieldByName('dat_id').asInteger;
   //atualiza as qrys
   AtualizaQrys;
   //atualiza as qrys dos selecionados e disponiveis
   CMB_OPCAOChange(CMB_OPCAO);
end;

procedure TFRM_A001RHTE.BTN_BBBClick(Sender: TObject);
begin
   //cria o form de detalhe
   Application.CreateForm(TDTM_A003RHTE,DTM_A003RHTE);
   Application.CreateForm(TFRM_A003RHTE,FRM_A003RHTE);

   with TSpeedButton(Sender) do
     begin
       //se for não enviados
       if Name = 'BTN_BBB' then
         FRM_A003RHTE.cTipoDetalhe := ''
       else
         //copia o codigo de estado da remessa
         FRM_A003RHTE.cTipoDetalhe := Copy(Name,5,3);
     end;
   FRM_A003RHTE.nMesRef := DTM_A001RHTE.QRY_062.FieldByName('nmesref').asInteger;
   FRM_A003RHTE.nAnoRef := DTM_A001RHTE.QRY_062.FieldByName('nAnoRef').asInteger;
   //chama form de detalhe
   oControlForms.AtivaForm('FRM_A003RHTE',shModal,nil,false);

end;

procedure TFRM_A001RHTE.FormShow(Sender: TObject);
begin
  //verifica o acesso do usuario na aplicação
  if Acesso(nMatricula,'A001RHTE',DTM_A001RHTE) then
    close;

  //se existir registro na tabela de remessa
  if not(DTM_A001RHTE.QRY_062.FieldByName('dat_id').isNull) then
    //atualiza o dblookup de competencia
    DLC_REF.KeyValue :=
    DTM_A001RHTE.QRY_062.FieldByName('dat_id').asInteger;
  //atualiza as querys para a competencia corrente
  AtualizaQrys;

  CMB_OPCAO.ItemIndex := 0;
  //atualiza as qrys selecionados e disponiveis, para a compentencia corrente
  CMB_OPCAOChange(CMB_OPCAO);

  FRM_A001RHTE.OnShow := nil;
 {é atribuido ao OnShow do Form o valor nil para que o mesmo seja executado apenas uma vez}
 {pelo fato que se outra aplicação for chamada pela tecla F3, e ao retornar da aplicação que foi chamada pela tecla}
 {o evento OnShow deste form não acontecerá, ou seja não será executado, para permanecer o mesmo status da aplicação}
 {quando o F3 foi chamado}
end;

procedure TFRM_A001RHTE.AtualizaQrys;
  var
    i : integer;
begin

  for i := 0 to DTM_A001RHTE.ComponentCount -1 do
    if DTM_A001RHTE.Components[i] is TOraQuery then
      //se for a qry de remessa, ou de funcionarios selecionados, ou de
      //funcionários disponiveis
      if (TOraQuery(DTM_A001RHTE.Components[i]).Name = 'QRY_062') or
         (TOraQuery(DTM_A001RHTE.Components[i]).Name = 'QRY_062_17') or
         (TOraQuery(DTM_A001RHTE.Components[i]).Name = 'QRY_062_18') then
      //retorna para o inicio do loop
        continue
      else
        begin
          //passa para o parametro da qry o mes de competencia corrente
          TOraQuery(DTM_A001RHTE.Components[i]).ParamByName('nmesref').asInteger :=
          DTM_A001RHTE.QRY_062.FieldByName('nmesref').asInteger;
          //passa para o parametro da qry o ano de compentecia corrente
          TOraQuery(DTM_A001RHTE.Components[i]).ParamByName('nanoref').asInteger :=
          DTM_A001RHTE.QRY_062.FieldByName('nanoref').asInteger;
          //executa a qry, para buscar informações com os novos parametros
          TOraQuery(DTM_A001RHTE.Components[i]).ExecSql;
        end;
end;

procedure TFRM_A001RHTE.DLC_REFCloseUp(Sender: TObject);
begin
  //atualiza as qrys de totais para a competencia escolhida
  AtualizaQrys;
  //atualiza as qrys de funcionarios selecionados e funcionarios diponiveis
  //para a nova compentencia e ação corrente
  CMB_OPCAOChange(CMB_OPCAO);
end;

procedure TFRM_A001RHTE.DLC_REFChange(Sender: TObject);
begin
  //atualiza o caption do grupo para a competencia escolhida
  GRB_DET.Caption := '  ' + DLC_REF.Text + '  -  Informações Estatísticas  ';
end;

procedure TFRM_A001RHTE.CMB_OPCAOKeyPress(Sender: TObject; var Key: Char);
begin
 //se o que o usuario digitou estiver entre
 //os caracteres
 if key in ['a'..'z','A'..'Z',#8] then
   //cancela o pressionamento
   Key  := #0;
end;

procedure TFRM_A001RHTE.CMB_OPCAOKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

  if (Key = VK_DELETE) or
     (Key = VK_DOWN) or
     (Key = VK_UP) then
    Key := 0;
end;

procedure TFRM_A001RHTE.CMB_OPCAOKeyUp(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = VK_DELETE) or
     (Key = VK_DOWN) or
     (Key = VK_UP) then
    Key := 0;
end;

procedure TFRM_A001RHTE.CMB_OPCAOChange(Sender: TObject);
begin
  with DTM_A001RHTE do
    begin
      case CMB_OPCAO.ItemIndex of
        0 :begin//Seleciona Ação
             //fecha as qrys, selecionado e disponiveis
             QRY_062_17.Active := false;
             QRY_062_17AfterRefresh(QRY_062_17);
             QRY_062_18.Active := false;
             QRY_062_18AfterRefresh(QRY_062_18);
             //desabilida botões
             BTN_IMPORTAR2.Enabled := false;
             BTN_EXCLUIR1.Enabled := false;
             BTN_ADITEM.Enabled := false;
             BTN_ADDTODOS.Enabled := false;
             BTN_RENITEM.Enabled := false;
             BTN_RENTODOS.Enabled := false;
           end;
         1 :begin//Efetuar Pagamentos
              //seleciona os funcionarios da competencia corrente
              //que estejam com a situação em branco ou corrigido
              QRY_062_17.Close;
              QRY_062_17.SQL.Clear;
              QRY_062_17.SQL.Add('select cadrem.nidcadrem, cadrem.cseunro,');
              QRY_062_17.SQL.Add('cadrem.ncodfun,cadrem.cnomfun,cadrem.nnumcic,cadrem.nbcopgt,');
              QRY_062_17.SQL.Add('cadrem.nagepgt,cadrem.nctapgt||'+QuotedStr('-')+'||cadrem.cdigcta as dat_nctapgt,');
              QRY_062_17.SQL.Add('cadrem.csituacao,cadrem.csitanter,cadrem.ctranter,cadrem.ctiporem,cadrem.ntipomovto,');
              QRY_062_17.SQL.Add('cadrem.nvlrliq,tbxori.cdescricao, cadrem.cctlori from ');
              QRY_062_17.SQL.Add('cadrem,tbxori ');
              QRY_062_17.SQL.Add('where cadrem.nmesref = :nmesref and cadrem.nanoref = :nanoref and ');
              QRY_062_17.SQL.Add('cadrem.ccodori = tbxori.ccodori and cadrem.ctiporem = ' + QuotedStr('P') + ' and ');
              QRY_062_17.SQL.Add('(cadrem.csituacao is null or csituacao = ' + QuotedStr('COK') + ')');
              QRY_062_17.SQL.Add('order by cadrem.cnomfun, cadrem.cseunro');

              //seleciona os funcionarios da competencia corrente que estejam
              //em estado de "a enviar"
              QRY_062_18.Close;
              QRY_062_18.SQL.Clear;
              QRY_062_18.SQL.Add('select cadrem.nidcadrem, cadrem.cseunro,');
              QRY_062_18.SQL.Add('cadrem.ncodfun,cadrem.cnomfun,cadrem.nnumcic,cadrem.nbcopgt,');
              QRY_062_18.SQL.Add('cadrem.nagepgt,cadrem.nctapgt||'+QuotedStr('-')+'||cadrem.cdigcta as dat_nctapgt,');
              QRY_062_18.SQL.Add('cadrem.csituacao,cadrem.csitanter,cadrem.ctranter,cadrem.ctiporem,cadrem.ntipomovto,');
              QRY_062_18.SQL.Add('cadrem.nvlrliq,tbxori.cdescricao, cadrem.cctlori from ');
              QRY_062_18.SQL.Add('cadrem,tbxori ');
              QRY_062_18.SQL.Add('where cadrem.nmesref = :nmesref and cadrem.nanoref = :nanoref and ');
              QRY_062_18.SQL.Add('cadrem.ccodori = tbxori.ccodori and cadrem.ctiporem = ' + QuotedStr('P') + ' and ');
              QRY_062_18.SQL.Add('csituacao = ' + QuotedStr('AEV'));
              QRY_062_18.SQL.Add('order by cadrem.cnomfun, cadrem.cseunro');

              //situacao que deve ser usada caso
              //o funcionario seja colocado
              //na lista de selecionados
              cSituacao  := 'AEV';
              cTipoRem   := 'P';
              cTipoMovto := '0';
              //habilida importação
              BTN_IMPORTAR2.Enabled := true;
              //e exclução
              BTN_EXCLUIR1.Enabled := true;

            end;
          2 :begin//Bloquear pagamentos
              //seleciona os funcionarios da competencia corrente
              //que estejam em situação em branco
              QRY_062_17.Close;
              QRY_062_17.SQL.Clear;
              QRY_062_17.SQL.Add('select cadrem.nidcadrem, cadrem.cseunro,');
              QRY_062_17.SQL.Add('cadrem.ncodfun,cadrem.cnomfun,cadrem.nnumcic,cadrem.nbcopgt,');
              QRY_062_17.SQL.Add('cadrem.nagepgt,cadrem.nctapgt||'+QuotedStr('-')+'||cadrem.cdigcta as dat_nctapgt,');
              QRY_062_17.SQL.Add('cadrem.csituacao,cadrem.csitanter,cadrem.ctranter,cadrem.ctiporem,cadrem.ntipomovto,');
              QRY_062_17.SQL.Add('cadrem.nvlrliq,tbxori.cdescricao, cadrem.cctlori from ');
              QRY_062_17.SQL.Add('cadrem,tbxori ');
              QRY_062_17.SQL.Add('where cadrem.nmesref = :nmesref and cadrem.nanoref = :nanoref and ');
              QRY_062_17.SQL.Add('cadrem.ccodori = tbxori.ccodori and cadrem.ctiporem = ' + QuotedStr('P') + ' and ');
              QRY_062_17.SQL.Add('cadrem.csituacao is null ');
              QRY_062_17.SQL.Add('order by cadrem.cnomfun, cadrem.cseunro');

              //seleciona os funcionarios da competencia corrente
              //que estão em situcação de bloqueados
              QRY_062_18.Close;
              QRY_062_18.SQL.Clear;
              QRY_062_18.SQL.Add('select cadrem.nidcadrem, cadrem.cseunro,');
              QRY_062_18.SQL.Add('cadrem.ncodfun,cadrem.cnomfun,cadrem.nnumcic,cadrem.nbcopgt,');
              QRY_062_18.SQL.Add('cadrem.nagepgt,cadrem.nctapgt||'+QuotedStr('-')+'||cadrem.cdigcta as dat_nctapgt,');
              QRY_062_18.SQL.Add('cadrem.csituacao,cadrem.csitanter,cadrem.ctranter,cadrem.ctiporem,cadrem.ntipomovto,');
              QRY_062_18.SQL.Add('cadrem.nvlrliq,tbxori.cdescricao, cadrem.cctlori from ');
              QRY_062_18.SQL.Add('cadrem,tbxori ');
              QRY_062_18.SQL.Add('where cadrem.nmesref = :nmesref and cadrem.nanoref = :nanoref and ');
              QRY_062_18.SQL.Add('cadrem.ccodori = tbxori.ccodori and cadrem.ctiporem = ' + QuotedStr('P') + ' and ');
              QRY_062_18.SQL.Add('csituacao = ' + QuotedStr('BLQ'));
              QRY_062_18.SQL.Add('order by cadrem.cnomfun, cadrem.cseunro');

              //estado que o funcionario deve ficar caso seja passado
              //da lista disponiveis para selecionado
              cSituacao  := 'BLQ';
              cTipoRem   := 'P';
              cTipoMovto := '0';
              //desabilita importação
              BTN_IMPORTAR2.Enabled := false;
              //desabilida exclução
              BTN_EXCLUIR1.Enabled := false;
            end;
          3 :begin//Cancelar Pagamentos Agendados
              //seleciona os funcionarios da competencia corrente que
              //estão em situação de "pagemento agendado"
              QRY_062_17.Close;
              QRY_062_17.SQL.Clear;
              QRY_062_17.SQL.Add('select cadrem.nidcadrem, cadrem.cseunro,');
              QRY_062_17.SQL.Add('cadrem.ncodfun,cadrem.cnomfun,cadrem.nnumcic,cadrem.nbcopgt,');
              QRY_062_17.SQL.Add('cadrem.nagepgt,cadrem.nctapgt||'+QuotedStr('-')+'||cadrem.cdigcta as dat_nctapgt,');
              QRY_062_17.SQL.Add('cadrem.csituacao,cadrem.csitanter,cadrem.ctranter,cadrem.ctiporem,cadrem.ntipomovto,');
              QRY_062_17.SQL.Add('cadrem.nvlrliq,tbxori.cdescricao, cadrem.cctlori from ');
              QRY_062_17.SQL.Add('cadrem,tbxori ');
              QRY_062_17.SQL.Add('where cadrem.nmesref = :nmesref and cadrem.nanoref = :nanoref and ');
              QRY_062_17.SQL.Add('cadrem.ccodori = tbxori.ccodori and cadrem.ctiporem = ' + QuotedStr('P') + ' and ');
              QRY_062_17.SQL.Add('csituacao = ' + QuotedStr('PAG'));
              QRY_062_17.SQL.Add('order by cadrem.cnomfun, cadrem.cseunro');

              //seleciona os funcionarios da competencia corrente
              //que estão em situação de "a enviar"
              QRY_062_18.Close;
              QRY_062_18.SQL.Clear;
              QRY_062_18.SQL.Add('select cadrem.nidcadrem, cadrem.cseunro,');
              QRY_062_18.SQL.Add('cadrem.ncodfun,cadrem.cnomfun,cadrem.nnumcic,cadrem.nbcopgt,');
              QRY_062_18.SQL.Add('cadrem.nagepgt,cadrem.nctapgt||'+QuotedStr('-')+'||cadrem.cdigcta as dat_nctapgt,');
              QRY_062_18.SQL.Add('cadrem.csituacao,cadrem.csitanter,cadrem.ctranter,cadrem.ctiporem,cadrem.ntipomovto,');
              QRY_062_18.SQL.Add('cadrem.nvlrliq,tbxori.cdescricao, cadrem.cctlori from ');
              QRY_062_18.SQL.Add('cadrem,tbxori ');
              QRY_062_18.SQL.Add('where cadrem.nmesref = :nmesref and cadrem.nanoref = :nanoref and ');
              QRY_062_18.SQL.Add('cadrem.ccodori = tbxori.ccodori and cadrem.ctiporem = ' + QuotedStr('C') + ' and ');
              QRY_062_18.SQL.Add('csituacao = ' + QuotedStr('AEV'));
              QRY_062_18.SQL.Add('order by cadrem.cnomfun, cadrem.cseunro');

              //estado que o funcionario deve ficar caso
              //seja passado da lista de disponiveis para
              //lista de selecionados
              cSituacao  := 'AEV';
              cTipoRem   := 'C';
              cTipoMovto := '999';
              //desabilida importação
              BTN_IMPORTAR2.Enabled := false;
              //desabilida exclusão
              BTN_EXCLUIR1.Enabled := false;
            end;
          4 :begin//Liberar Pagamentos Cancelados
              //seleciona os funcionarios da compentecia corrente
              //que estão em situação de "pagamento cancelado"
              QRY_062_17.Close;
              QRY_062_17.SQL.Clear;
              QRY_062_17.SQL.Add('select cadrem.nidcadrem, cadrem.cseunro,');
              QRY_062_17.SQL.Add('cadrem.ncodfun,cadrem.cnomfun,cadrem.nnumcic,cadrem.nbcopgt,');
              QRY_062_17.SQL.Add('cadrem.nagepgt,cadrem.nctapgt||'+QuotedStr('-')+'||cadrem.cdigcta as dat_nctapgt,');
              QRY_062_17.SQL.Add('cadrem.csituacao,cadrem.csitanter,cadrem.ctranter,cadrem.ctiporem,cadrem.ntipomovto,');
              QRY_062_17.SQL.Add('cadrem.nvlrliq,tbxori.cdescricao, cadrem.cctlori from ');
              QRY_062_17.SQL.Add('cadrem,tbxori ');
              QRY_062_17.SQL.Add('where cadrem.nmesref = :nmesref and cadrem.nanoref = :nanoref and ');
              QRY_062_17.SQL.Add('cadrem.ccodori = tbxori.ccodori and cadrem.ctiporem = ' + QuotedStr('C') + ' and ');
              QRY_062_17.SQL.Add('csituacao = ' + QuotedStr('PCC'));
              QRY_062_17.SQL.Add('order by cadrem.cnomfun, cadrem.cseunro');


              //seleciona os funcionarios da competencia corrente
              //que estão em situação de "OK"
              QRY_062_18.Close;
              QRY_062_18.SQL.Clear;
              QRY_062_18.SQL.Add('select cadrem.nidcadrem, cadrem.cseunro,');
              QRY_062_18.SQL.Add('cadrem.ncodfun,cadrem.cnomfun,cadrem.nnumcic,cadrem.nbcopgt,');
              QRY_062_18.SQL.Add('cadrem.nagepgt,cadrem.nctapgt||'+QuotedStr('-')+'||cadrem.cdigcta as dat_nctapgt,');
              QRY_062_18.SQL.Add('cadrem.csituacao,cadrem.csitanter,cadrem.ctranter,cadrem.ctiporem,cadrem.ntipomovto,');
              QRY_062_18.SQL.Add('cadrem.nvlrliq,tbxori.cdescricao, cadrem.cctlori from ');
              QRY_062_18.SQL.Add('cadrem,tbxori ');
              QRY_062_18.SQL.Add('where cadrem.nmesref = :nmesref and cadrem.nanoref = :nanoref and ');
              QRY_062_18.SQL.Add('cadrem.ccodori = tbxori.ccodori and cadrem.ctiporem = ' + QuotedStr('P') + ' and ');
              QRY_062_18.SQL.Add('csituacao = ' + QuotedStr('COK'));
              QRY_062_18.SQL.Add('order by cadrem.cnomfun, cadrem.cseunro');

              //estado que o funcionario deve ficar
              //caso seja passado da lista de disponiveis para a lista
              //de selecionados
              cSituacao  := 'COK';
              cTipoRem   := 'P';
              cTipoMovto := '0';
              //desabilida importação
              BTN_IMPORTAR2.Enabled := false;
              //desabilida exclusão
              BTN_EXCLUIR1.Enabled := false;
            end;
      end;
      if Cmb_OPCAO.ItemIndex <> 0 then
        begin
          //passa para o parametro o mes corrente(escolhido)
          QRY_062_17.ParamByName('nmesref').asInteger := QRY_062.FieldByName('nmesref').asInteger;
          //passa para o parametro o ano corrente(escolhido)
          QRY_062_17.ParamByName('nanoref').asInteger := QRY_062.FieldByName('nanoref').asInteger;
          QRY_062_18.ParamByName('nmesref').asInteger := QRY_062.FieldByName('nmesref').asInteger;
          QRY_062_18.ParamByName('nanoref').asInteger := QRY_062.FieldByName('nanoref').asInteger;
          //abre as qrys com as informações dos parametros informados
          QRY_062_17.Open;
          QRY_062_18.Open;
        end;
    end;


end;

procedure TFRM_A001RHTE.BTN_EXCLUIR1Click(Sender: TObject);
begin
  with DTM_A001RHTE do
    begin
      DMControle.Conexao.StartTransaction;
      try
        //delete os registros que o usuario escolheu na lista
        DBG_DISP.SelectedRows.Delete;
        //efetua a atualização no banco de dados
        DMControle.Conexao.Commit;
        //atualiza as qrys
        AtualizaQrys;
        //atualiza as qrys, selecionados e disponiveis
        CMB_OPCAOChange(CMB_OPCAO);
      except
        //se houver erro
        on E: Exception do
          begin
            //desfaz as atualização no banco de dados
            DMControle.Conexao.Rollback;
            //avisa ao usuario sobre o erro
            MessageDlg('Não foi possivel deletar os registros!' + #13 +
              'Erro :' + E.Message,mtError,[mbOk],0);
            //atualiza as qrys
            AtualizaQrys;
            //atualiza as qrys
            CMB_OPCAOChange(CMB_OPCAO);
          end;

      end;
    end;
end;

procedure TFRM_A001RHTE.BTN_ADITEMClick(Sender: TObject);
  var
    cSitAnter : String;
    cTranter : String;
begin
  with DTM_A001RHTE do
    begin
      DMControle.Conexao.StartTransaction;
      //mostra mensagem usuario
      Pnl_Aviso.Visible := true;
      //redesenha o form
      FRM_A001RHTE.Repaint;
      //desabilida a atualização visual do controle
      QRY_062_17.DisableControls;
      try
        QRY_062_17.First;

        try
          //loop nos funcionarios disponiveis
          while not(QRY_062_17.Eof) do
            begin
              //se o registro estiver selecionado no grid
              if DBG_DISP.SelectedRows.CurrentRowSelected then
                begin
                  //desmarca o registro no grid
                  DBG_DISP.SelectedRows.CurrentRowSelected := false;
                  //pega a situação atual
                  cSitAnter := QRY_062_17.FieldByName('csituacao').asString;
                  cTranter :=  QRY_062_17.FieldByName('ctiporem').asString;
                  //edit funcionarios disponiveis
                  QRY_062_17.Edit;
                  //DBGenerica(DTS_062_17,'Conexao',2,0);
                  QRY_062_17.FieldByName('csitanter').asString := cSitAnter;
                  QRY_062_17.FieldByName('ctranter').asString := cTranter;
                  QRY_062_17.FieldByName('csituacao').asString := cSituacao;
                  QRY_062_17.FieldByName('ctiporem').asString := cTipoRem;
                  QRY_062_17.FieldByName('ntipomovto').asString := cTipoMovto;
                  //grava as informações
                  QRY_062_17.Post;
                  //DBGenerica(DTS_062_17,'Conexao',4,1,nil,false);
                end;
              //proximo funcionario
              QRY_062_17.Next;
            end;
          //efetua a atualização das informações no banco de dados
          DMControle.Conexao.Commit;
          AtualizaQrys;
          CMB_OPCAOChange(CMB_OPCAO);
          //esconde mensgem
          Pnl_Aviso.Visible := false;
        except
          //se houver erro
          on E: Exception do
            begin
              //esconde mensagem
              Pnl_Aviso.Visible := false;
              //desfaz as alterações no banco
              DMControle.Conexao.Rollback;
              //avisa ao usuario sobre o erro
              MessageDlg('Não foi possivel atualizar os dados! operação cancelada.' + #13+
                'Erro :' + E.Message,mtError,[mbOk],0);
              AtualizaQrys;
              CMB_OPCAOChange(CMB_OPCAO);
            end;

        end;
      finally
        //habilida as atualizações dos compomentes visuais
        QRY_062_17.EnableControls;
      end;
    end;
end;

procedure TFRM_A001RHTE.BTN_ADDTODOSClick(Sender: TObject);
  var
    cSitAnter : String;
    cTranter : String;

begin
  with DTM_A001RHTE do
    begin
      DMControle.Conexao.StartTransaction;
      Pnl_Aviso.Visible := true;
      FRM_A001RHTE.Repaint;
      QRY_062_17.DisableControls;
      try
        try
          QRY_062_17.First;
          while not(QRY_062_17.Eof) do
            begin
              DBG_DISP.SelectedRows.CurrentRowSelected := false;
              cSitAnter := QRY_062_17.FieldByName('csituacao').asString;
              cTranter :=  QRY_062_17.FieldByName('ctiporem').asString;
              //DBGenerica(DTS_062_17,'Conexao',2,0);
              QRY_062_17.Edit;
              QRY_062_17.FieldByName('csitanter').asString := cSitAnter;
              QRY_062_17.FieldByName('ctranter').asString := cTranter;
              QRY_062_17.FieldByName('csituacao').asString := cSituacao;
              QRY_062_17.FieldByName('ctiporem').asString := cTipoRem;
              QRY_062_17.FieldByName('ntipomovto').asString := cTipoMovto;
              QRY_062_17.Post;
              //DBGenerica(DTS_062_17,'Conexao',4,1,nil,false);
              QRY_062_17.Next;
            end;
          DMControle.Conexao.Commit;
          AtualizaQrys;
          CMB_OPCAOChange(CMB_OPCAO);
          Pnl_Aviso.Visible := false;
        except
          on E: Exception do
            begin
              DMControle.Conexao.Rollback;
              Pnl_Aviso.Visible := false;
              MessageDlg('Não foi possivel atualizar os dados! operação cancelada.' + #13+
                'Erro :' + E.Message,mtError,[mbOk],0);
              AtualizaQrys;
              CMB_OPCAOChange(CMB_OPCAO);
            end;
        end;
      finally
        QRY_062_17.EnableControls;
      end;
    end;
end;

procedure TFRM_A001RHTE.BTN_RENITEMClick(Sender: TObject);
  var
    cSitAnter : String;
    cTranter : String;
begin
  with DTM_A001RHTE do
    begin
      DMControle.Conexao.StartTransaction;
      Pnl_Aviso.Visible := true;
      FRM_A001RHTE.Repaint;
      QRY_062_18.DisableControls;
      try
        try
          QRY_062_18.First;
          while not(QRY_062_18.Eof) do
            begin
              if DBG_SELEC.SelectedRows.CurrentRowSelected then
                begin
                  DBG_SELEC.SelectedRows.CurrentRowSelected := false;
                  if QRY_062_18.FieldByName('csituacao').asString = 'COK' then
                    begin
                      cSitAnter := 'PCC';
                      cTranter := 'C';
                    end
                  else
                    begin
                      cSitAnter := QRY_062_18.FieldByName('csitanter').asString;
                      cTranter := QRY_062_18.FieldByName('ctranter').asString;
                    end;

                  //DBGenerica(DTS_062_18,'Conexao',2,0);
                  QRY_062_18.Edit;
                  QRY_062_18.FieldByName('csitanter').asString := '';
                  QRY_062_18.FieldByName('ctranter').asString := '';
                  QRY_062_18.FieldByName('csituacao').asString := cSitAnter;
                  QRY_062_18.FieldByName('ctiporem').asString := cTranter;
                  QRY_062_18.FieldByName('ntipomovto').asString := cTipoMovto;
                  QRY_062_18.Post;
                  //DBGenerica(DTS_062_18,'Conexao',4,1,nil,false);

                end;
              QRY_062_18.Next;
            end;
          DMControle.Conexao.Commit;
          AtualizaQrys;
          CMB_OPCAOChange(CMB_OPCAO);
          Pnl_Aviso.Visible := false;
        except
          on E: Exception do
            begin
              DMControle.Conexao.Rollback;
              Pnl_Aviso.Visible := false;
              MessageDlg('Não foi possivel atualizar os dados! operação cancelada.' + #13+
                'Erro :' + E.Message,mtError,[mbOk],0);
              AtualizaQrys;
              CMB_OPCAOChange(CMB_OPCAO);
            end;
        end;
      finally
        QRY_062_18.EnableControls;
      end;
    end;
end;

procedure TFRM_A001RHTE.BTN_RENTODOSClick(Sender: TObject);
  var
    cSitAnter : String;
    cTranter : String;
begin
  with DTM_A001RHTE do
    begin
      DMControle.Conexao.StartTransaction;
      Pnl_Aviso.Visible := true;
      FRM_A001RHTE.Repaint;
      QRY_062_18.DisableControls;
      try
        try
          QRY_062_18.First;
          while not(QRY_062_18.Eof) do
            begin
              DBG_SELEC.SelectedRows.CurrentRowSelected := false;
              if QRY_062_18.FieldByName('csituacao').asString = 'COK' then
                begin
                  cSitAnter := 'PCC';
                  cTranter := 'C';
                end
              else
                begin
                  cSitAnter := QRY_062_18.FieldByName('csitanter').asString;
                  cTranter := QRY_062_18.FieldByName('ctranter').asString;
                end;

              //DBGenerica(DTS_062_18,'Conexao',2,0);
              QRY_062_18.Edit;
              QRY_062_18.FieldByName('csitanter').asString := '';
              QRY_062_18.FieldByName('ctranter').asString := '';
              QRY_062_18.FieldByName('csituacao').asString := cSitAnter;
              QRY_062_18.FieldByName('ctiporem').asString := cTranter;
              QRY_062_18.FieldByName('ntipomovto').asString := cTipoMovto;
              QRY_062_18.Post;
              //DBGenerica(DTS_062_18,'Conexao',4,1,nil,false);
              if QRY_062_18.isEmpty then
                break;

              QRY_062_18.Next;
            end;
          DMControle.Conexao.Commit;
          AtualizaQrys;
          CMB_OPCAOChange(CMB_OPCAO);
          Pnl_Aviso.Visible := false;
        except
          on E: Exception do
            begin
              DMControle.Conexao.Rollback;
              Pnl_Aviso.Visible := false;
              MessageDlg('Não foi possivel atualizar os dados! operação cancelada.' + #13+
                'Erro :' + E.Message,mtError,[mbOk],0);
              AtualizaQrys;
              CMB_OPCAOChange(CMB_OPCAO);
            end;
        end;
      finally
        QRY_062_18.EnableControls;
      end;
    end;
end;

procedure TFRM_A001RHTE.BTN_PRIMEIROREGClick(Sender: TObject);
begin
  DBG_DISP.DataSource.DataSet.First;
end;

procedure TFRM_A001RHTE.Btn_Retroceder1Click(Sender: TObject);
begin
  DBG_DISP.DataSource.DataSet.Prior;
end;

procedure TFRM_A001RHTE.Btn_Avancar1Click(Sender: TObject);
begin
  DBG_DISP.DataSource.DataSet.Next;
end;

procedure TFRM_A001RHTE.Btn_UltimoRegClick(Sender: TObject);
begin
  DBG_DISP.DataSource.DataSet.Last;
end;

procedure TFRM_A001RHTE.Btn_PrimeiroReg1Click(Sender: TObject);
begin
  DBG_SELEC.DataSource.DataSet.First;
end;

procedure TFRM_A001RHTE.Btn_Retroceder2Click(Sender: TObject);
begin
  DBG_SELEC.DataSource.DataSet.Prior;
end;

procedure TFRM_A001RHTE.Btn_Avancar2Click(Sender: TObject);
begin
  DBG_SELEC.DataSource.DataSet.Next;
end;

procedure TFRM_A001RHTE.Btn_UltimoReg1Click(Sender: TObject);
begin
  DBG_SELEC.DataSource.DataSet.Last;
end;

procedure TFRM_A001RHTE.DBG_DISPMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  //chama pesquisa de grid
  if Button = mbRight then
    ChamaPesqGrid(DTM_A001RHTE.QRY_062_17,nil,'cnomfun','Nome do Funcionário');
end;

procedure TFRM_A001RHTE.DBG_SELECMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  //se clicou com o botao direito
  if Button = mbRight then
    //chama pesquida de grid
    ChamaPesqGrid(DTM_A001RHTE.QRY_062_18,nil,'cnomfun','Nome do Funcionário');
end;

procedure TFRM_A001RHTE.BTN_CNAClick(Sender: TObject);
begin
  //cria geração de arquivo cnab
  Application.CreateForm(TDTM_A004RHTE,DTM_A004RHTE);
  Application.CreateForm(TFRM_A004RHTE,FRM_A004RHTE);
  //pega o mes de referencia
  FRM_A004RHTE.nMesRef := DTM_A001RHTE.QRY_062.FieldByName('nmesref').asInteger;
  //pega o ano de referencia
  FRM_A004RHTE.nAnoRef := DTM_A001RHTE.QRY_062.FieldByName('nAnoRef').asInteger;
  //pega a quantidade de funcionarios em situacao "a enviar"
  FRM_A004RHTE.nTotAev := StrToInt(DED_DAT_NQTDAEV.text);

  //chama geração arquivo cnab
  oControlForms.AtivaForm('FRM_A004RHTE',shModal,nil,false);

  AtualizaQrys;
  CMB_OPCAOChange(CMB_OPCAO);
end;

procedure TFRM_A001RHTE.BTN_DETFUNClick(Sender: TObject);
begin
  //cria detalhamento do funcionario
  Application.CreateForm(TDTM_A005RHTE,DTM_A005RHTE);
  Application.CreateForm(TFRM_A005RHTE,FRM_A005RHTE);
  //passa a id do funcionario
  FRM_A005RHTE.nIdCadrem :=  DBG_DISP.DataSource.DataSet.FieldByName('nidcadrem').asInteger;
  //chama detalhamento do usuario
  oControlForms.AtivaForm('FRM_A005RHTE',shModal,nil,false);
end;

procedure TFRM_A001RHTE.BTN_DEFFUN2Click(Sender: TObject);
begin
  //cria detalhamento do usuario
  Application.CreateForm(TDTM_A005RHTE,DTM_A005RHTE);
  Application.CreateForm(TFRM_A005RHTE,FRM_A005RHTE);
  //passa a id do funcionario
  FRM_A005RHTE.nIdCadrem :=  DBG_SELEC.DataSource.DataSet.FieldByName('nidcadrem').asInteger;
  //chama detalhamento do funcionario
  oControlForms.AtivaForm('FRM_A005RHTE',shModal,nil,false);

end;

procedure TFRM_A001RHTE.BTN_RETClick(Sender: TObject);
begin
  //chama validação do arquivo de retorno
  oControlForms.AtivaForm('FRM_A006RHTE',shModal,nil,false);
  AtualizaQrys;
  CMB_OPCAOChange(CMB_OPCAO);
end;

procedure TFRM_A001RHTE.BTN_IMPRIMIRClick(Sender: TObject);
begin
  LBL_COPETEN.Caption := 'FOLHA DE PAGAMENTO DE '  + UpperCase(DLC_REF.Text);
  //chama transferencia de arquivo para o banco
  oControlForms.AtivaForm('FRM_A009RHTE',shModal,nil,false);
end;

procedure TFRM_A001RHTE.BTN_TRFClick(Sender: TObject);
begin
  //chama transferencia de arquivo para o banco
  oControlForms.AtivaForm('FRM_A007RHTE',shModal,nil,false);
end;

procedure TFRM_A001RHTE.BTN_HISTClick(Sender: TObject);
begin
 //chama form historico de pagamento do servidor
   oControlForms.AtivaForm('FRM_A008RHTE',shModal,nil,false);
end;

end.




