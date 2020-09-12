unit A002RHTC;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  lmdcctrl, lmdctrl, StdCtrls,lmdstdcS, ExtCtrls, Buttons, DBAccess,Db,
  ImgList, ComCtrls, lmdextcS, lmdeditb,lmdeditc, LMDEdit, lmdbredt,
  lmdextcA, LMDShadowFill, LMDCustomPanelFill, LMDPanelFill,
  LMDGraphicControl, LMDBaseMeter, LMDCustomProgress, LMDProgress,
  LMDControl, LMDBaseControl, LMDBaseGraphicControl, LMDBaseLabel,
  LMDCustomSimpleLabel, LMDSimpleLabel, LMDCustomControl, LMDCustomPanel,
  LMDCustomBevelPanel, LMDCustomParentPanel, LMDCustomGroupBox, LMDGroupBox,
  AppEvnts, ActnList, LMDCustomComponent, LMDApplicationCtrl,
  LMDGlobalHotKey, LMDWndProcComponent, LMDMouseBaseCtrl,
  LMDMousePositioner, lmdformA, LMDCustomHint, LMDHint,
  LMDContainerComponent, LMDBaseDialog, LMDTipDlg, LMDCustomShapeHint,
  LMDMessageHint, RzLstBox, RzChkLst, Gauges, Mask, ToolEdit, LMDFill,
  RxLookup, Grids, DBGrids, LMDSimplePanel, OraScript, Ora;


type
  TFRM_A002RHTC = class(TForm)
    LMDGroupBox3: TLMDGroupBox;
    ImageList1: TImageList;
    lsv_tabelas: TListView;
    LMDGroupBox2: TLMDGroupBox;
    DBGrid1: TDBGrid;
    Panel2: TPanel;
    BTN_IMPORTATCE: TSpeedButton;
    BTN_SAIR: TSpeedButton;
    BTN_CANCELAR: TSpeedButton;
    LMDSimplePanel1: TLMDSimplePanel;
    GAU_TCE: TGauge;
    SCP_Script: TOraScript;
    SCP_Update: TOraScript;
    procedure BTN_SAIRClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure BTN_IMPORTATCEClick(Sender: TObject);
    procedure BTN_CANCELARClick(Sender: TObject);
  private
    function FormaData(oCampoData: TField): String;
    procedure GeraTce(cTipoStatus: String);
    procedure GravaAlocaMensal;
    procedure GravaAposen(cTipoPessoa: String);
    procedure GravaAtoMvtPessoal;
    procedure GravaAtosCrg;
    procedure GravaCargo;
    procedure GravaClasseCargo;
    procedure GravaEndereco;
    procedure GravaHistAtosCrg;
    procedure GravaLotacao;
    procedure GravaPensao;
    procedure GravaPessoa;
    procedure GravaVlrsMensais;
    procedure Dados;
    procedure MontaLista;
    function ListaTabelas: TStringList;
    procedure InsereSituacao(cSitua : String; noItem : Integer);
    function ParaTudo: Boolean;
    procedure LimpaSituacao;
    procedure PegaId;
    procedure IniciaGaug;
    procedure AlimentaGaug;
    procedure LimpaGaug;
    function FormataDecimal(nValor : Double; nTam : Integer; nPosi : Integer):String;
    procedure GravaAtoRvgMvtPessoal;
    procedure GravaOrigemPensao;
    procedure ZeraBase;
    function ConverteValor(cVlrAnt: String): Double;
    procedure RefreshQuery;    { Private declarations }
  public
    lCancelaTce, lCancelou : Boolean;
    nCadTce : Integer;
    cTipoFicha : String;

    { Public declarations }
  end;

var
  FRM_A002RHTC: TFRM_A002RHTC;

implementation

uses MPLCtrl, UVariaveis, DMCTRL, D001RHTC, MPLLib, A001RHTC;

{$R *.DFM}

procedure TFRM_A002RHTC.BTN_SAIRClick(Sender: TObject);
begin
  Close;
end;

procedure TFRM_A002RHTC.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  DTM_A001RHTC.QRY_DADOS.Close;
  DTM_A001RHTC.QRY_DADOS.Clear;
  Action := oControlForms.Saidas(Self,[NIL],NIL);
end;

procedure TFRM_A002RHTC.FormShow(Sender: TObject);
begin
  if not Acesso(nMatricula,'A002RHTC',NIL) then
    close;
  Botoes(['BTN_CANCELAR'],'',False);
  FRM_A002RHTC.OnShow := nil;
 {é atribuido ao OnShow do Form o valor nil para que o mesmo seja executado apenas uma vez}
 {pelo fato que se outra aplicação for chamada pela tecla F3, e ao retornar da aplicação que foi chamada pela tecla}
 {o evento OnShow deste form não acontecerá, ou seja não será executado, para permanecer o mesmo status da aplicação}
 {quando o F3 foi chamado}
  Dados;
  MontaLista;
  lCancelaTce := false;
end;

procedure TFRM_A002RHTC.BTN_IMPORTATCEClick(Sender: TObject);
begin
  lCancelou := false;
  ZeraBase;
  IniciaGaug;
  DMControle.Conexao.StartTransaction;
  try
    PegaId;
    GeraTce('A');
    if ParaTudo then
      exit;
    GeraTce('I');
    if ParaTudo then
      exit;
    GeraTce('P');
    if ParaTudo then
      exit;
    GravaCargo;
    if ParaTudo then
      exit;
    GravaAtosCrg;
    if ParaTudo then
      exit;
    DMControle.Conexao.Commit;
    MessageDlg('Processamento Concluido com Sucesso!',mtInformation,[mbOk],0);
  except
    On E: Exception do
      begin
        DMControle.Conexao.Rollback;
        MessageDlg('Não foi possível atualizar os dados.'+#10#13+
        'Processamento Cancelado.???' + #13 +
        E.Message,mtInformation,[mbOk],0);
      end;
  end;
  LimpaSituacao;
  Dados;
  LimpaGaug;
end;

procedure TFRM_A002RHTC.GeraTce(cTipoStatus : String);
begin
   cTipoFicha := cTipoStatus;
   with DTM_A001RHTC do
     begin
       QRY_TCE.Close;
       QRY_TCE.ParamByName('nmespgto').AsInteger :=
       QRY_TBL_P.FieldByName('nMesPgto').AsInteger;
       QRY_TCE.ParamByName('nanopgto').AsInteger :=
       QRY_TBL_P.FieldByName('nAnoPgto').AsInteger;
       QRY_TCE.ParamByName('cParam').AsString := cTipoStatus;
       QRY_TCE.Open;
       QRY_TCE.First;
       while (not QRY_TCE.Eof) do
         begin
           if QRY_TCE.FieldByName('cEnviarTc').AsString = 'S' then
              GravaPessoa;
           if cTipoStatus <> 'A' then
              GravaAposen(cTipoStatus);
           if cTipoStatus = 'P' then
              GravaPensao;
           if QRY_TCE.FieldByName('cEndTc').AsString = 'S' then
             if QRY_TBXTCT.FieldByName('nCodTce').AsString = '3' then
                GravaEndereco;
           if cTipoStatus = 'A' then
             GravaLotacao;
           GravaAlocaMensal;
//  Nao leva pensionista
           if cTipoStatus = 'A' then
             begin
               GravaAtoMvtPessoal;
               GravaAtoRvgMvtPessoal;
             end;
           if ParaTudo then
             exit;
           QRY_TCE.Next;
           AlimentaGaug;
         end;
     end;
end;


procedure TFRM_A002RHTC.GravaPessoa;
begin
  InsereSituacao('Importando...',0);
  with DTM_A001RHTC do
    begin
      if QRY_AMPPESSOAPUBLICA.Locate('nPmNoTce;cCpfCnpj;nMesPgto;nAnoPgto',
         VarArrayOf([QRY_TBXENT.FieldByName('nCodTce').AsString,
                     QRY_TCE.FieldByName('cCpfCnpj').AsString,
                     QRY_TBL_P.FieldByName('nMesPgto').AsString,
                     QRY_TBL_P.FieldByName('nAnoPgto').AsString]),[]) then
         begin
           QRY_AMPPESSOAPUBLICA.Edit;
         end
      else
         begin
           QRY_AMPPESSOAPUBLICA.Insert;
           QRY_AMPPESSOAPUBLICA.FieldByName('nPmNoTce').AsString :=
           QRY_TBXENT.FieldByName('nCodTce').AsString;
           QRY_AMPPESSOAPUBLICA.FieldByName('cCpfCnpj').AsString :=
           QRY_TCE.FieldByName('cCpfCnpj').AsString;
           QRY_AMPPESSOAPUBLICA.FieldByName('nMesPgto').AsString :=
           QRY_TBL_P.FieldByName('nMesPgto').AsString;
           QRY_AMPPESSOAPUBLICA.FieldByName('nAnoPgto').AsString :=
           QRY_TBL_P.FieldByName('nAnoPgto').AsString;
         end;
      QRY_AMPPESSOAPUBLICA.FieldByName('dDtNasc').AsString :=
      FormaData(QRY_TCE.FieldByName('dDtNasc'));
      QRY_AMPPESSOAPUBLICA.FieldByName('cNomeGrl').AsString :=
      QRY_TCE.FieldByName('cNomeGrl').AsString;
      QRY_AMPPESSOAPUBLICA.FieldByName('cSexo').AsString :=
      QRY_TCE.FieldByName('cSexo').AsString;
      QRY_AMPPESSOAPUBLICA.FieldByName('cRgIe').AsString := '';
//      LimpaMask(QRY_TCE.FieldByName('cRgIe').AsString);
      QRY_AMPPESSOAPUBLICA.FieldByName('cUfEmiRg').AsString := '';
//      QRY_TCE.FieldByName('cUfEmiRg').AsString;
      QRY_AMPPESSOAPUBLICA.FieldByName('cPis').AsString := '';
//      QRY_TCE.FieldByName('cPis').AsString;
      QRY_AMPPESSOAPUBLICA.FieldByName('nCartTrab').AsString := '';
//      QRY_TCE.FieldByName('nCartTrab').AsString;
      QRY_AMPPESSOAPUBLICA.FieldByName('cSerieTrab').AsString := '';
//      QRY_TCE.FieldByName('cSerieTrab').AsString;
      QRY_AMPPESSOAPUBLICA.FieldByName('cNinforma1').AsString := ' ';
      QRY_AMPPESSOAPUBLICA.FieldByName('cNinforma2').AsString := ' ';
      QRY_AMPPESSOAPUBLICA.FieldByName('nIdCadTce').AsInteger := nCadTce;
      QRY_AMPPESSOAPUBLICA.Post;
      QRY_TCE.Edit;
      QRY_TCE.FieldByName('cEnviarTc').AsString := 'N';
    end;
  InsereSituacao('Importado...',0);
end;


procedure TFRM_A002RHTC.GravaEndereco;
begin
  InsereSituacao('Importando...',6);
  with DTM_A001RHTC do
    begin
      if QRY_AMPENDERECO.Locate('nPmNoTce;cCpfCnpj;nMesPgto;nAnoPgto',
         VarArrayOf([QRY_TBXENT.FieldByName('nCodTce').AsString,
                     QRY_TCE.FieldByName('cCpfCnpj').AsString,
                     QRY_TBL_P.FieldByName('nMesPgto').AsString,
                     QRY_TBL_P.FieldByName('nAnoPgto').AsString]),[]) then
         begin
           QRY_AMPENDERECO.Edit;
         end
      else
         begin
           QRY_AMPENDERECO.Insert;
           QRY_AMPENDERECO.FieldByName('nPmNoTce').AsString :=
           QRY_TBXENT.FieldByName('nCodTce').AsString;
           QRY_AMPENDERECO.FieldByName('cCpfCnpj').AsString :=
           QRY_TCE.FieldByName('cCpfCnpj').AsString;
           QRY_AMPENDERECO.FieldByName('nMesPgto').AsString :=
           QRY_TBL_P.FieldByName('nMesPgto').AsString;
           QRY_AMPENDERECO.FieldByName('nAnoPgto').AsString :=
           QRY_TBL_P.FieldByName('nAnoPgto').AsString;
         end;
      QRY_AMPENDERECO.FieldByName('dDtNasc').AsString :=
      FormaData(QRY_TCE.FieldByName('dDtNasc'));
      QRY_AMPENDERECO.FieldByName('cNomeLoc').AsString :=
      QRY_END.FieldByName('cNomeLoc').AsString;
      QRY_AMPENDERECO.FieldByName('cNomeLog').AsString :=
      QRY_END.FieldByName('cNomeLog').AsString;
      QRY_AMPENDERECO.FieldByName('cNumero').AsString :=
      QRY_TCE.FieldByName('cNumero').AsString;
      QRY_AMPENDERECO.FieldByName('cComplemen').AsString := '';
//      QRY_TCE.FieldByName('cComplemen').AsString;
      QRY_AMPENDERECO.FieldByName('cNomeBai').AsString := '';
//      QRY_END.FieldByName('cNomeBai').AsString;
      QRY_AMPENDERECO.FieldByName('cSiglaUf').AsString :=
      QRY_END.FieldByName('cSiglaUf').AsString;
      QRY_AMPENDERECO.FieldByName('nCep').AsString :=
      QRY_END.FieldByName('nCep').AsString;
      QRY_AMPENDERECO.FieldByName('cDdd').AsString := '';
//      QRY_END.FieldByName('cDdd').AsString;
      QRY_AMPENDERECO.FieldByName('cTelRes').AsString := '';
//      QRY_TCE.FieldByName('cTelRes').AsString;
      QRY_AMPENDERECO.FieldByName('cTelCelula').AsString := '';
//      QRY_TCE.FieldByName('cTelCelula').AsString;
      QRY_AMPENDERECO.FieldByName('cTelFax').AsString := '';
//      QRY_TCE.FieldByName('cTelFax').AsString;
      QRY_AMPENDERECO.FieldByName('cEmail').AsString := '';
//      QRY_TCE.FieldByName('cEmail').AsString;
      QRY_AMPENDERECO.FieldByName('nIdCadTce').AsInteger := nCadTce;
      QRY_AMPENDERECO.Post;
      QRY_TCE.Edit;
      QRY_TCE.FieldByName('cEndTc').AsString := 'N';
    end;
  InsereSituacao('Importado...',6);
end;

procedure TFRM_A002RHTC.GravaAposen(cTipoPessoa : String);
var nNidCad : Integer;
    cCpfCad, cDataNCad, cCrgCad, cSalCad, cCodTrib, cDataEfeitos : String;
begin
  InsereSituacao('Importando...',1);
  with DTM_A001RHTC do
    begin
      if cTipoPessoa = 'P' then
        begin
           GravaOrigemPensao;
           //nNidCad := QRY_CADSER_ORI.FieldByName('nidcadser').AsInteger;
           nNidCad := QRY_TAGOBT.FieldByName('nidtagobt').AsInteger;
           cCpfCad := QRY_CADSER_ORI.FieldByName('cCpfCnpj').AsString;
           cDataNCad :=  FormaData(QRY_CADSER_ORI.FieldByName('dDtNasc'));
           cCrgCad := QRY_TAGOBT.FieldByName('cUltimoCrg').AsString;
//           cSalCad := QRY_TAGSLR.FieldByName('nIdTagSlr').AsString;
           cSalCad := '';
           cDataEfeitos := FormaData(QRY_TAGOBT.FieldByName('DDTOBITO'));
           cCodTrib := '99';
        end;


      if cTipoPessoa = 'I' then
        begin
           nNidCad := QRY_TCE.FieldByName('nidtagffu').AsInteger;
           cCpfCad := QRY_TCE.FieldByName('cCpfCnpj').AsString;
           cDataNCad :=  FormaData(QRY_TCE.FieldByName('dDtNasc'));
           cCrgCad := QRY_CADCRG.FieldByName('cDescriCrg').AsString;
//           cSalCad := QRY_TAGSLR.FieldByName('nIdTagSlr').AsString;
           cSalCad := '';
           cDataEfeitos := FormaData(QRY_TCE.FieldByName('dDtAdmissa'));
           cCodTrib := QRY_TBXTBI_1.FieldByName('nCodTce').AsString;
        end;


      if QRY_AMPAPOSENTADORIA.Locate('nPmNoTce;cCpfCnpj;dDtNasc;nCodTce;cNroAposen;nMesPgto;nAnoPgto',
         VarArrayOf([QRY_TBXENT.FieldByName('nCodTce').AsString,
                     cCpfCad,
                     cDataNCad,
                     cCodTrib, // Mudança campo novo LAYOUT
                     IntToStr(nNidCad),
                     QRY_TBL_P.FieldByName('nMesPgto').AsString,
                     QRY_TBL_P.FieldByName('nAnoPgto').AsString]),[]) then
         begin
           QRY_AMPAPOSENTADORIA.Edit;
         end
      else
         begin
           QRY_AMPAPOSENTADORIA.Insert;
           QRY_AMPAPOSENTADORIA.FieldByName('nPmNoTce').AsString :=
           QRY_TBXENT.FieldByName('nCodTce').AsString;
           QRY_AMPAPOSENTADORIA.FieldByName('nMesPgto').AsString :=
           QRY_TBL_P.FieldByName('nMesPgto').AsString;
           QRY_AMPAPOSENTADORIA.FieldByName('nAnoPgto').AsString :=
           QRY_TBL_P.FieldByName('nAnoPgto').AsString;
         end;
      QRY_AMPAPOSENTADORIA.FieldByName('cCpfCnpj').AsString := cCpfCad;
      QRY_AMPAPOSENTADORIA.FieldByName('dDtNasc').AsString := cDataNCad;
      QRY_AMPAPOSENTADORIA.FieldByName('nCodTce').AsString := cCodTrib;
      QRY_AMPAPOSENTADORIA.FieldByName('cNroAposen').AsString := IntToStr(nNidCad);
      // Campo novo no LAYOUT novo para Cod Beneficio = 1,2,3 ou 4.
      if QRY_TBXTBI_1.FieldByName('nCodTce').AsInteger in [1,2,3,4] then
         QRY_AMPAPOSENTADORIA.FieldByName('nPercent').AsString :=
         FormataDecimal(QRY_TBXTBI_1.FieldByName('nPerBenefi').Value,5,4)
      else QRY_AMPAPOSENTADORIA.FieldByName('nPercent').AsString := '';

      QRY_AMPAPOSENTADORIA.FieldByName('cDescrCrg').AsString := cCrgCad;
      QRY_AMPAPOSENTADORIA.FieldByName('nPmNoTce2').AsString :=
      QRY_TBXENT.FieldByName('nCodTce').AsString;
      QRY_AMPAPOSENTADORIA.FieldByName('dDtEfeitos').AsString := cDataEfeitos;
      // Campo novo no LAYOUT novo, para informar o Término de uma aposentadoria ou licença
      QRY_AMPAPOSENTADORIA.FieldByName('dDtFim').AsString := '';
      QRY_AMPAPOSENTADORIA.FieldByName('nIdCadTce').AsInteger := nCadTce;
      QRY_AMPAPOSENTADORIA.Post;

//          QRY_AMPAPOSENTADORIA.FieldByName('nIdTagSlr').AsString := cSalCad;

    end;
  InsereSituacao('Importado...',1);
end;

procedure TFRM_A002RHTC.GravaOrigemPensao;
begin
  InsereSituacao('Importando...',0);
  with DTM_A001RHTC do
    begin
      if QRY_CADSER_ORI.RecordCount > 0 then
        begin
          if QRY_AMPPESSOAPUBLICA.Locate('nPmNoTce;cCpfCnpj;nMesPgto;nAnoPgto',
             VarArrayOf([QRY_TBXENT.FieldByName('nCodTce').AsString,
                         QRY_CADSER_ORI.FieldByName('cCpfCnpj').AsString,
                         QRY_TBL_P.FieldByName('nMesPgto').AsString,
                         QRY_TBL_P.FieldByName('nAnoPgto').AsString]),[]) then
             begin
               QRY_AMPPESSOAPUBLICA.Edit;
             end
          else
             begin
               QRY_AMPPESSOAPUBLICA.Insert;
               QRY_AMPPESSOAPUBLICA.FieldByName('nPmNoTce').AsString :=
               QRY_TBXENT.FieldByName('nCodTce').AsString;
               QRY_AMPPESSOAPUBLICA.FieldByName('cCpfCnpj').AsString :=
               QRY_CADSER_ORI.FieldByName('cCpfCnpj').AsString;
               QRY_AMPPESSOAPUBLICA.FieldByName('nMesPgto').AsString :=
               QRY_TBL_P.FieldByName('nMesPgto').AsString;
               QRY_AMPPESSOAPUBLICA.FieldByName('nAnoPgto').AsString :=
               QRY_TBL_P.FieldByName('nAnoPgto').AsString;
             end;
          QRY_AMPPESSOAPUBLICA.FieldByName('dDtNasc').AsString :=
          FormaData(QRY_CADSER_ORI.FieldByName('dDtNasc'));
          QRY_AMPPESSOAPUBLICA.FieldByName('cNomeGrl').AsString :=
          QRY_CADSER_ORI.FieldByName('cNomeGrl').AsString;
          QRY_AMPPESSOAPUBLICA.FieldByName('cSexo').AsString :=
          QRY_CADSER_ORI.FieldByName('cSexo').AsString;
          QRY_AMPPESSOAPUBLICA.FieldByName('cRgIe').AsString := '';
          QRY_AMPPESSOAPUBLICA.FieldByName('cUfEmiRg').AsString := '';
          QRY_AMPPESSOAPUBLICA.FieldByName('cPis').AsString := '';
          QRY_AMPPESSOAPUBLICA.FieldByName('nCartTrab').AsString := '';
          QRY_AMPPESSOAPUBLICA.FieldByName('cSerieTrab').AsString := '';
          QRY_AMPPESSOAPUBLICA.FieldByName('cNinforma1').AsString := ' ';
          QRY_AMPPESSOAPUBLICA.FieldByName('cNinforma2').AsString := ' ';
          QRY_AMPPESSOAPUBLICA.FieldByName('nIdCadTce').AsInteger := nCadTce;
          QRY_AMPPESSOAPUBLICA.Post;
        end;
    end;
  InsereSituacao('Importado...',0);
end;

procedure TFRM_A002RHTC.GravaPensao;
begin
  InsereSituacao('Importando...',2);
  with DTM_A001RHTC do
    begin
      if QRY_AMPPENSAO.Locate('nPmNoTce;cCpfCnpj;dDtNasc;nCodTce2;nIdTagFfu;nMesPgto;nAnoPgto',
         VarArrayOf([QRY_TBXENT.FieldByName('nCodTce').AsString,
                     QRY_TCE.FieldByName('cCpfCnpj').AsString,
                     FormaData(QRY_TCE.FieldByName('dDtNasc')),
                     QRY_TBXTBI_1.FieldByName('nCodTce').AsString,
                     QRY_TCE.FieldByName('nIdTagFfu').AsString,
                     QRY_TBL_P.FieldByName('nMesPgto').AsString,
                     QRY_TBL_P.FieldByName('nAnoPgto').AsString]),[]) then
         begin
           QRY_AMPPENSAO.Edit;
         end
      else
         begin
           QRY_AMPPENSAO.Insert;
           QRY_AMPPENSAO.FieldByName('nPmNoTce').AsString :=
           QRY_TBXENT.FieldByName('nCodTce').AsString;
           QRY_AMPPENSAO.FieldByName('cCpfCnpj').AsString :=
           QRY_TCE.FieldByName('cCpfCnpj').AsString;
           QRY_AMPPENSAO.FieldByName('dDtNasc').AsString :=
           FormaData(QRY_TCE.FieldByName('dDtNasc'));
           // Campo Novo LAYOUT novo Cod do Tipo de Beneficio 50, 51, 52;
//           if (not QRY_TBXTBI_1.FieldByName('nCodTce').IsNull) then
//             QRY_AMPPENSAO.FieldByName('nCodTce2').AsString :=
//             QRY_TBXTBI_1.FieldByName('nCodTce').AsString
//           else QRY_AMPPENSAO.FieldByName('nCodTce2').AsString := '';
           QRY_AMPPENSAO.FieldByName('nCodTce2').AsString := '50';
           QRY_AMPPENSAO.FieldByName('nIdTagFfu').AsString :=
           QRY_TCE.FieldByName('nIdTagFfu').AsString;
           QRY_AMPPENSAO.FieldByName('nMesPgto').AsString :=
           QRY_TBL_P.FieldByName('nMesPgto').AsString;
           QRY_AMPPENSAO.FieldByName('nAnoPgto').AsString :=
           QRY_TBL_P.FieldByName('nAnoPgto').AsString;
         end;
      QRY_AMPPENSAO.FieldByName('nCodTce').AsString :=
      QRY_TBXGRP.FieldByName('nCodTce').AsString;
      QRY_AMPPENSAO.FieldByName('cCpfCnpj2').AsString :=
      QRY_CADSER_ORI.FieldByName('cCpfCnpj').AsString;
      QRY_AMPPENSAO.FieldByName('dDtNasc2').AsString :=
      FormaData(QRY_CADSER_ORI.FieldByName('dDtNasc'));
      // Campo Novo LAYOUT novo Cod do Tipo de Beneficio do Servidor;
//      if (not QRY_TAGOBT.FieldByName('nidtbxtbi').IsNull) then
//        QRY_AMPPENSAO.FieldByName('nCodTce3').AsString :=
//        QRY_TAGOBT.FieldByName('lkp_nCodTce').AsString
//      else QRY_AMPPENSAO.FieldByName('nCodTce3').AsString := '99';
      QRY_AMPPENSAO.FieldByName('nCodTce3').AsString := '99';
      QRY_AMPPENSAO.FieldByName('cNroAposen').AsString :=
      QRY_TAGOBT.FieldByName('nidtagobt').AsString;
//      QRY_CADSER_ORI.FieldByName('cNroAposen').AsString;
//      QRY_AMPPENSAO.FieldByName('dDtaObito').AsString :=
//      FormaData(QRY_TAGOBT.FieldByName('dDtObito'));
      if (not QRY_TCE.FieldByName('nPerSlr').IsNull) then
        QRY_AMPPENSAO.FieldByName('nPerBenefi').AsString :=
        FormataDecimal(QRY_TCE.FieldByName('nPerSlr').Value,5,4)
      else QRY_AMPPENSAO.FieldByName('nPerBenefi').AsString := '';
      QRY_AMPPENSAO.FieldByName('dDtEfeitos').AsString :=
      FormaData(QRY_TCE.FieldByName('dDtAdmissa'));
      // Campo Novo LAYOUT novo Data do Termino da Pensao;
      QRY_AMPPENSAO.FieldByName('dDtFim').AsString := '';
      QRY_AMPPENSAO.FieldByName('nIdCadTce').AsInteger := nCadTce;

      QRY_AMPPENSAO.Post;
    end;
  InsereSituacao('Importado...',2);
end;


procedure TFRM_A002RHTC.GravaLotacao;
var nReg : integer;
    cLota1, cLota2, cFGV, cDescLota : String;
begin
   InsereSituacao('Importando...',3);
   with DTM_A001RHTC do
//     for nReg := 0 to 2 do
     for nReg := 0 to 1 do
       begin
         if nReg = 0 then
           begin
             cLota1 := QRY_ORGDPT.FieldByName('nidtagodp').AsString+
             QRY_ORGDPT.FieldByName('nidtbxorg').AsString;
             cLota2 := QRY_TBXENT.FieldByName('nCodTce').AsString;
             cFGV := QRY_ORGDPT.FieldByName('nCodTce').AsString;
             cDescLota := QRY_ORGDPT.FieldByName('cDescriOrg').AsString;
           end;
         if nReg = 1 then
           begin
             cLota1 := QRY_DTPSET.FieldByName('nidtagodp').AsString+
             QRY_DTPSET.FieldByName('nidtbxdpt').AsString;
             cLota2 := QRY_ORGDPT.FieldByName('nidtagodp').AsString+
             QRY_DTPSET.FieldByName('nidtbxorg').AsString;
             cFGV := QRY_DTPSET.FieldByName('nCodTce').AsString;
             cDescLota := QRY_DTPSET.FieldByName('cDescriDpt').AsString;
           end;

//         if nReg = 2 then
//           begin
//             cLota1 := QRY_DTPSET.FieldByName('nidtbxset').AsString;
//             cLota2 := QRY_DTPSET.FieldByName('nidtbxdpt').AsString;
//             cFGV := QRY_SETFGV.FieldByName('nCodTce').AsString;
//             cDescLota := QRY_DTPSET.FieldByName('cDescriSet').AsString;
//           end;

         if QRY_AMPLOTACAO.Locate('nPmNoTce;nIdLotacao;nIdLotaRec;nMesPgto;nAnoPgto',
            VarArrayOf([QRY_TBXENT.FieldByName('nCodTce').AsString,
                        cLota1, cLota2,
                        QRY_TBL_P.FieldByName('nMesPgto').AsString,
                        QRY_TBL_P.FieldByName('nAnoPgto').AsString]),[]) then
            begin
              QRY_AMPLOTACAO.Edit;
            end
         else
            begin
               QRY_AMPLOTACAO.Insert;
               QRY_AMPLOTACAO.FieldByName('nPmNoTce').AsString :=
               QRY_TBXENT.FieldByName('nCodTce').AsString;
               QRY_AMPLOTACAO.FieldByName('nIdLotacao').AsString := cLota1;
               QRY_AMPLOTACAO.FieldByName('nIdLotaRec').AsString := cLota2;
               QRY_AMPLOTACAO.FieldByName('nMesPgto').AsString :=
               QRY_TBL_P.FieldByName('nMesPgto').AsString;
               QRY_AMPLOTACAO.FieldByName('nAnoPgto').AsString :=
               QRY_TBL_P.FieldByName('nAnoPgto').AsString;
            end;
         QRY_AMPLOTACAO.FieldByName('nFuncaoGv').AsString := cFGV;
         QRY_AMPLOTACAO.FieldByName('cDescrLota').AsString := cDescLota;
         QRY_AMPLOTACAO.FieldByName('nIdCadTce').AsInteger := nCadTce;
         QRY_AMPLOTACAO.Post;
       end;
   InsereSituacao('Importado...',3);
end;

procedure TFRM_A002RHTC.GravaCargo;
begin
  with DTM_A001RHTC do
   begin
     InsereSituacao('Importando...',4);
     QRY_CARGOS.First;
     while not QRY_CARGOS.Eof do
       begin
         if QRY_AMPCARGO.Locate('nPmNoTce;nIdCadCrg;nMesPgto;nAnoPgto',
            VarArrayOf([QRY_TBXENT.FieldByName('nCodTce').AsString,
                        QRY_CARGOS.FieldByName('nIdCadCrg').AsString,
                        QRY_TBL_P.FieldByName('nMesPgto').AsString,
                        QRY_TBL_P.FieldByName('nAnoPgto').AsString]),[]) then
            begin
              QRY_AMPCARGO.Edit;
            end
         else
            begin
              QRY_AMPCARGO.Insert;
              QRY_AMPCARGO.FieldByName('nPmNoTce').AsString :=
              QRY_TBXENT.FieldByName('nCodTce').AsString;
              QRY_AMPCARGO.FieldByName('nIdCadCrg').AsString :=
              QRY_CARGOS.FieldByName('nIdCadCrg').AsString;
              QRY_AMPCARGO.FieldByName('nMesPgto').AsString :=
              QRY_TBL_P.FieldByName('nMesPgto').AsString;
              QRY_AMPCARGO.FieldByName('nAnoPgto').AsString :=
              QRY_TBL_P.FieldByName('nAnoPgto').AsString;
            end;
         QRY_AMPCARGO.FieldByName('nCodTce').AsString :=
         QRY_CARGOS.FieldByName('nCodTce').AsString;
         QRY_AMPCARGO.FieldByName('cDescriCrg').AsString :=
         QRY_CARGOS.FieldByName('CDESCRICRG').AsString;
         QRY_AMPCARGO.FieldByName('nTotVagas').AsString := '';
//         QRY_CARGOS.FieldByName('nTotVagas').AsString;
//         if (not QRY_CARGOS.FieldByName('Vagas').IsNull) and
///            (not QRY_CARGOS.FieldByName('nTotVagas').IsNull) then
           QRY_AMPCARGO.FieldByName('nVagasDis').AsString := '';
//           InttoStr(QRY_CARGOS.FieldByName('nTotVagas').Value -
//           QRY_CARGOS.FieldByName('Vagas').Value)
//         else if(QRY_CARGOS.FieldByName('Vagas').IsNull) and
//            (not QRY_CARGOS.FieldByName('nTotVagas').IsNull) then
//           QRY_AMPCARGO.FieldByName('nVagasDis').AsString := '';
//           QRY_CARGOS.FieldByName('nTotVagas').AsString
//         else QRY_AMPCARGO.FieldByName('nVagasDis').AsString := '';
         QRY_AMPCARGO.FieldByName('nCodTce2').AsString :=
         QRY_CARGOS.FieldByName('nCodTce2').AsString;
         QRY_AMPCARGO.FieldByName('nIdCadTce').AsInteger := nCadTce;
         QRY_AMPCARGO.Post;
         GravaClasseCargo;
         QRY_CARGOS.Next;
         AlimentaGaug;
       end;
     InsereSituacao('Importado...',4);
   end;
end;

procedure TFRM_A002RHTC.GravaClasseCargo;
var lSoUmaClasse : Boolean;
begin
  with DTM_A001RHTC do
   begin
     if QRY_CLACRG.RecordCount > 0 then
       begin
         InsereSituacao('Importando...',5);
         QRY_CLACRG.First;
//         lSoUmaClasse := false;
         while (not QRY_CLACRG.Eof) do
           begin
//             if QRY_CARGOS.FieldByName('nCodTce').AsInteger in [2,3,4,7] then
//                if QRY_TCE.Locate('nidtagslr',
//                   QRY_CLACRG.FieldByName('nIdTagSlr').AsInteger,[]) then
//                   lSoUmaClasse := true
//                else break;
             if QRY_AMPCLASSECARGO.Locate('nPmNoTce;nIdCadCrg;nIdTagSlr;nMesPgto;nAnoPgto',
                VarArrayOf([QRY_TBXENT.FieldByName('nCodTce').AsString,
                            QRY_CARGOS.FieldByName('nIdCadCrg').AsString,
                            QRY_CLACRG.FieldByName('nIdTagSlr').AsString,
                            QRY_TBL_P.FieldByName('nMesPgto').AsString,
                            QRY_TBL_P.FieldByName('nAnoPgto').AsString]),[]) then
                begin
                  QRY_AMPCLASSECARGO.Edit;
                end
             else
                begin
                  QRY_AMPCLASSECARGO.Insert;
                  QRY_AMPCLASSECARGO.FieldByName('nPmNoTce').AsString :=
                  QRY_TBXENT.FieldByName('nCodTce').AsString;
                  QRY_AMPCLASSECARGO.FieldByName('nIdCadCrg').AsString :=
                  QRY_CARGOS.FieldByName('nIdCadCrg').AsString;
                  QRY_AMPCLASSECARGO.FieldByName('nIdTagSlr').AsString :=
                  QRY_CLACRG.FieldByName('nIdTagSlr').AsString;
                  QRY_AMPCLASSECARGO.FieldByName('nMesPgto').AsString :=
                  QRY_TBL_P.FieldByName('nMesPgto').AsString;
                  QRY_AMPCLASSECARGO.FieldByName('nAnoPgto').AsString :=
                  QRY_TBL_P.FieldByName('nAnoPgto').AsString;
                end;
             QRY_AMPCLASSECARGO.FieldByName('nValorSlr').AsString :=
             FormataDecimal(QRY_CLACRG.FieldByName('nValorSlr').Value,6,5);
             QRY_AMPCLASSECARGO.FieldByName('nIdCadTce').AsInteger := nCadTce;
             QRY_AMPCLASSECARGO.Post;
//             if lSoUmaClasse then
//               Break;
             QRY_CLACRG.Next;
           end;
         InsereSituacao('Importado...',5);
       end;
   end;
end;

procedure TFRM_A002RHTC.GravaAtoMvtPessoal;
var cCodCargo : String;
begin
  with DTM_A001RHTC do
   begin
     if (QRY_CADMOV.RecordCount > 0) then
       begin
         QRY_CADMOV.First;
         while (not QRY_CADMOV.Eof) do
           begin
             if QRY_CADMOV.FieldByName('cEnviadoTc').AsString = 'N' then
               begin
                 InsereSituacao('Importando...',10);
                 if QRY_AMPATOMVTPESSOAL.Locate('nPmNoTce;nIdTbxTat;cNroAto;nMesPgto;nAnoPgto',
                    VarArrayOf([QRY_TBXENT.FieldByName('nCodTce').AsString,
                                QRY_CADATO.FieldByName('nCodTce').AsString,
                                QRY_CADATO.FieldByName('cNroAto').AsString,
                                FormaData(QRY_CADATO.FieldByName('dDtCriacao')),
                                QRY_TBL_P.FieldByName('nMesPgto').AsString,
                                QRY_TBL_P.FieldByName('nAnoPgto').AsString]),[]) then
                    begin
                      QRY_AMPATOMVTPESSOAL.Edit;
                    end
                 else
                    begin
                      QRY_AMPATOMVTPESSOAL.Insert;
                      QRY_AMPATOMVTPESSOAL.FieldByName('nPmNoTce').AsString :=
                      QRY_TBXENT.FieldByName('nCodTce').AsString;
                      QRY_AMPATOMVTPESSOAL.FieldByName('nIdTbxTat').AsString :=
                      QRY_CADATO.FieldByName('nCodTce').AsString;
                      QRY_AMPATOMVTPESSOAL.FieldByName('cNroAto').AsString :=
                      QRY_CADATO.FieldByName('cNroAto').AsString;
                      QRY_AMPATOMVTPESSOAL.FieldByName('nMesPgto').AsString :=
                      QRY_TBL_P.FieldByName('nMesPgto').AsString;
                      QRY_AMPATOMVTPESSOAL.FieldByName('nAnoPgto').AsString :=
                      QRY_TBL_P.FieldByName('nAnoPgto').AsString;
                    end;
                 QRY_AMPATOMVTPESSOAL.FieldByName('dDtPublica').AsString :=
                 FormaData(QRY_CADATO.FieldByName('dDtPublic'));
                 QRY_AMPATOMVTPESSOAL.FieldByName('dDtCriacao').AsString :=
                 FormaData(QRY_CADATO.FieldByName('dDtCriacao'));
                 QRY_AMPATOMVTPESSOAL.FieldByName('nIdTbxVpb').AsString :=
                 QRY_CADATO.FieldByName('nIdTbxVpb').AsString;
                 QRY_AMPATOMVTPESSOAL.FieldByName('cNomeArq').AsString :=
                 QRY_CADATO.FieldByName('cNomeArq').AsString;
                 QRY_AMPATOMVTPESSOAL.FieldByName('nIdCadTce').AsInteger := nCadTce;
                 QRY_AMPATOMVTPESSOAL.Post;
                 InsereSituacao('Importando...',09);
                 if QRY_AMPVEICULOPUBLICACAO.Locate('nPmNoTce;nIdTbxVpb;nMesPgto;nAnoPgto',
                        VarArrayOf([QRY_TBXENT.FieldByName('nCodTce').AsString,
                                    QRY_CADATO.FieldByName('nIdTbxVpb').AsString,
                                    QRY_TBL_P.FieldByName('nMesPgto').AsString,
                                    QRY_TBL_P.FieldByName('nAnoPgto').AsString]),[]) then
                    begin
                      QRY_AMPVEICULOPUBLICACAO.Edit;
                    end
                 else
                    begin
                      QRY_AMPVEICULOPUBLICACAO.Insert;
                      QRY_AMPVEICULOPUBLICACAO.FieldByName('nPmNoTce').AsString :=
                      QRY_TBXENT.FieldByName('nCodTce').AsString;
                      QRY_AMPVEICULOPUBLICACAO.FieldByName('nIdTbxVpb').AsString :=
                      QRY_TBXVPB.FieldByName('nIdTbxVpb').AsString;
                      QRY_AMPVEICULOPUBLICACAO.FieldByName('nMesPgto').AsString :=
                      QRY_TBL_P.FieldByName('nMesPgto').AsString;
                      QRY_AMPVEICULOPUBLICACAO.FieldByName('nAnoPgto').AsString :=
                      QRY_TBL_P.FieldByName('nAnoPgto').AsString;
                    end;
                 QRY_AMPVEICULOPUBLICACAO.FieldByName('cDescriVpb').AsString :=
                 QRY_TBXVPB.FieldByName('cDescriVpb').AsString;
                 QRY_AMPVEICULOPUBLICACAO.FieldByName('nIdCadTce').AsInteger := nCadTce;
                 QRY_AMPVEICULOPUBLICACAO.Post;
                 InsereSituacao('Importado...',09);
                 InsereSituacao('Importando...',11);
                 if QRY_TBXEDI.RecordCount > 0 then
                   begin
                     if QRY_AMPEDITAL.Locate('nPmNoTce;cNroEdital;nMesPgto;nAnoPgto',
                            VarArrayOf([QRY_TBXENT.FieldByName('nCodTce').AsString,
                                        QRY_TBXEDI.FieldByName('nCodTce').AsString,
                                        QRY_TBXEDI.FieldByName('cNroEdital').AsString,
                                        QRY_TBXEDI.FieldByName('dDtEdital').AsString,
                                        QRY_TBL_P.FieldByName('nMesPgto').AsString,
                                        QRY_TBL_P.FieldByName('nAnoPgto').AsString]),[]) then
                        begin
                          QRY_AMPEDITAL.Edit;
                        end
                     else
                        begin
                          QRY_AMPEDITAL.Insert;
                          QRY_AMPEDITAL.FieldByName('nPmNoTce').AsString :=
                          QRY_TBXENT.FieldByName('nCodTce').AsString;
                          QRY_AMPEDITAL.FieldByName('nCodTce').AsString :=
                          QRY_TBXEDI.FieldByName('nCodTce').AsString;
                          QRY_AMPEDITAL.FieldByName('dDtEdital').AsString:=
                          FormaData(QRY_TBXEDI.FieldByName('dDtEdital'));
                          QRY_AMPEDITAL.FieldByName('cNroEdital').AsString :=
                          QRY_TBXEDI.FieldByName('cNroEdital').AsString;
                          QRY_AMPEDITAL.FieldByName('nMesPgto').AsString :=
                          QRY_TBL_P.FieldByName('nMesPgto').AsString;
                          QRY_AMPEDITAL.FieldByName('nAnoPgto').AsString :=
                          QRY_TBL_P.FieldByName('nAnoPgto').AsString;
                        end;
                     QRY_AMPEDITAL.FieldByName('dDtPublica').AsString :=
                     FormaData(QRY_TBXEDI.FieldByName('dDtPublica'));
                     QRY_AMPEDITAL.FieldByName('cDescriEdi').AsString :=
                     QRY_TBXEDI.FieldByName('cDescriEdi').DisplayText;
                     QRY_AMPEDITAL.FieldByName('nIdTbxVpb').AsString :=
                     QRY_TBXEDI.FieldByName('nIdTbxVpb').AsString;
                     QRY_AMPEDITAL.FieldByName('cNomeArq').AsString := '';
                     QRY_AMPEDITAL.FieldByName('nIdCadTce').AsInteger := nCadTce;
                     QRY_AMPEDITAL.Post;
                   end;
                 InsereSituacao('Importado...',11);
                 // Para não levar Movimentação funcional de Cargos POLITICOS
                 if QRY_TBXTCT.FieldByName('nCodTce').AsInteger <> 3 then
                   begin
                     if (cTipoFicha = 'I') then cCodCargo := 'INATIVO';
                     if (cTipoFicha = 'P') then cCodCargo := 'PENSIONIST';

                     if (cTipoFicha = 'I') or (cTipoFicha = 'P') then
                       begin
                         if (cTipoFicha = 'I') then
                           cCodCargo := 'INATIVO'
                         else cCodCargo := 'PENSIONIST';
                       end
                     else cCodCargo := QRY_CADMOV.FieldByName('nIdCadCrg').AsString;
                     InsereSituacao('Importando...',12);
                     if QRY_AMPMOVIMENTACAO.Locate('nPmNoTce;cCpfCnpj;dDtNasc;cNroAto;nMesPgto;nAnoPgto',
                            VarArrayOf([QRY_TBXENT.FieldByName('nCodTce').AsString,
                                        QRY_TCE.FieldByName('cCpfCnpj').AsString,
                                        FormaData(QRY_TCE.FieldByName('dDtNasc')),
                                        QRY_CADATO.FieldByName('cNroAto').AsString,
                                        QRY_TBL_P.FieldByName('nMesPgto').AsString,
                                        QRY_TBL_P.FieldByName('nAnoPgto').AsString]),[]) then
                        begin
                          QRY_AMPMOVIMENTACAO.Edit;
                        end
                     else
                        begin
                          QRY_AMPMOVIMENTACAO.Insert;
                          QRY_AMPMOVIMENTACAO.FieldByName('nPmNoTce').AsString :=
                          QRY_TBXENT.FieldByName('nCodTce').AsString;
                          QRY_AMPMOVIMENTACAO.FieldByName('cCpfCnpj').AsString :=
                          QRY_TCE.FieldByName('cCpfCnpj').AsString;
                          QRY_AMPMOVIMENTACAO.FieldByName('dDtNasc').AsString :=
                          FormaData(QRY_TCE.FieldByName('dDtNasc'));
                          QRY_AMPMOVIMENTACAO.FieldByName('cNroAto').AsString := '';
                          QRY_CADATO.FieldByName('cNroAto').AsString;
                        end;
                     QRY_AMPMOVIMENTACAO.FieldByName('nIdCadCrg').AsString := cCodCargo;
                     QRY_AMPMOVIMENTACAO.FieldByName('nCodTce').AsString :=
                     QRY_TBXTCT.FieldByName('nCodTce').AsString;
                     QRY_AMPMOVIMENTACAO.FieldByName('nCodTce2').AsString := '';
                     QRY_CADATO.FieldByName('nCodTce').AsString;
//                     QRY_AMPMOVIMENTACAO.FieldByName('dDtPublica').AsString := '';
//                     FormaData(QRY_CADATO.FieldByName('dDtPublic'));
                     QRY_AMPMOVIMENTACAO.FieldByName('nCodTce3').AsString :=
                     QRY_TBXMVP.FieldByName('nCodTce').AsString;
                     QRY_AMPMOVIMENTACAO.FieldByName('nIdTbxEdi').AsString := '';
                     QRY_TBXEDI.FieldByName('nIdTbxEdi').AsString;
                     QRY_AMPMOVIMENTACAO.FieldByName('nCodTce4').AsString := '';
                     QRY_TBXEDI.FieldByName('nCodTce').AsString;
                     QRY_AMPMOVIMENTACAO.FieldByName('dDataIni').AsString :=
                     FormaData(QRY_CADATO.FieldByName('dDtEfeitos'));
                     QRY_AMPMOVIMENTACAO.FieldByName('cCampo1').AsString := '';
                     QRY_AMPMOVIMENTACAO.FieldByName('cCampo2').AsString := '';
                     if QRY_TBXEDI.FieldByName('nCodTce').AsInteger = 2 then
                       QRY_AMPMOVIMENTACAO.FieldByName('dDataFim').AsString :=
                       FormaData(QRY_CADMOV.FieldByName('dDataFim'))
                     else QRY_AMPMOVIMENTACAO.FieldByName('dDataFim').AsString := '';
                     QRY_AMPMOVIMENTACAO.FieldByName('nCodTce5').AsString :=
                     QRY_TBXAGI.FieldByName('nCodTce').AsString;
                     QRY_AMPMOVIMENTACAO.FieldByName('cCampo3').AsString := '';
                     QRY_AMPMOVIMENTACAO.FieldByName('nMesPgto').AsString :=
                     QRY_TBL_P.FieldByName('nMesPgto').AsString;
                     QRY_AMPMOVIMENTACAO.FieldByName('nAnoPgto').AsString :=
                     QRY_TBL_P.FieldByName('nAnoPgto').AsString;
                     QRY_AMPMOVIMENTACAO.FieldByName('nIdCadTce').AsInteger := nCadTce;
                     // Campos Novos do novo LAYOUT
                     // nTemAto -> Indica a presença de do
                     QRY_AMPMOVIMENTACAO.FieldByName('nTemAto').AsString := '';
                     // dDtCriacao -> Data do Ato
                     QRY_AMPMOVIMENTACAO.FieldByName('dDtCriacao').AsString :=
                     FormaData(QRY_CADATO.FieldByName('dDtCriacao'));
                     // dDtEdital -> Data que foi criado o Edital
                     QRY_AMPMOVIMENTACAO.FieldByName('dDtEdital').AsString :=
                     FormaData(QRY_TBXEDI.FieldByName('dDtEdital'));
                     QRY_AMPMOVIMENTACAO.Post;
                     InsereSituacao('Importado...',12);
                   end;
    //             GravaAlocaMensal;
                 QRY_CADMOV.Edit;
                 QRY_CADMOV.FieldByName('cEnviadoTc').AsString := 'S';
                 QRY_CADMOV.FieldByName('nMesPgto').AsInteger :=
                 QRY_TBL_P.FieldByName('nMesPgto').AsInteger;
                 QRY_CADMOV.FieldByName('nAnoPgto').AsInteger :=
                 QRY_TBL_P.FieldByName('nAnoPgto').AsInteger;
                 QRY_CADATO.Edit;
                 QRY_CADATO.FieldByName('cEnviadoTc').AsString := 'S';
                 QRY_CADATO.Post;
                 InsereSituacao('Importado...',10);
               end;
//             GravaAlocaMensal;
             QRY_CADMOV.Next;
           end;
       end;
   end;
end;

procedure TFRM_A002RHTC.GravaAtoRvgMvtPessoal;
var cCodCargo : String;
begin
  with DTM_A001RHTC do
   begin
     if (QRY_CADMOV2.RecordCount > 0) then
       begin
         InsereSituacao('Importando...',10);
         QRY_CADMOV2.First;
         while (not QRY_CADMOV.Eof) do
           begin
             if QRY_AMPATOMVTPESSOAL.Locate('nPmNoTce;nIdTbxTat;cNroAto;nMesPgto;nAnoPgto',
                VarArrayOf([QRY_TBXENT.FieldByName('nCodTce').AsString,
                            QRY_CADATO2.FieldByName('nIdTbxTat').AsString,
                            QRY_CADATO2.FieldByName('cNroAto').AsString,
                            QRY_TBL_P.FieldByName('nMesPgto').AsString,
                            QRY_TBL_P.FieldByName('nAnoPgto').AsString]),[]) then
                begin
                  QRY_AMPATOMVTPESSOAL.Edit;
                end
             else
                begin
                  QRY_AMPATOMVTPESSOAL.Insert;
                  QRY_AMPATOMVTPESSOAL.FieldByName('nPmNoTce').AsString :=
                  QRY_TBXENT.FieldByName('nCodTce').AsString;
                  QRY_AMPATOMVTPESSOAL.FieldByName('nIdTbxTat').AsString :=
                  QRY_CADATO2.FieldByName('nCodTce').AsString;
                  QRY_AMPATOMVTPESSOAL.FieldByName('cNroAto').AsString :=
                  QRY_CADATO2.FieldByName('cNroAto').AsString;
                  QRY_AMPATOMVTPESSOAL.FieldByName('nMesPgto').AsString :=
                  QRY_TBL_P.FieldByName('nMesPgto').AsString;
                  QRY_AMPATOMVTPESSOAL.FieldByName('nAnoPgto').AsString :=
                  QRY_TBL_P.FieldByName('nAnoPgto').AsString;
                end;
             QRY_AMPATOMVTPESSOAL.FieldByName('dDtPublica').AsString :=
             FormaData(QRY_CADATO2.FieldByName('dDtPublic'));
             QRY_AMPATOMVTPESSOAL.FieldByName('dDtCriacao').AsString :=
             FormaData(QRY_CADATO.FieldByName('dDtCriacao'));
             QRY_AMPATOMVTPESSOAL.FieldByName('nIdTbxVpb').AsString :=
             QRY_CADATO2.FieldByName('nIdTbxVpb').AsString;
             QRY_AMPATOMVTPESSOAL.FieldByName('cNomeArq').AsString :=
             QRY_CADATO.FieldByName('cNomeArq').AsString;
             QRY_AMPATOMVTPESSOAL.FieldByName('nIdCadTce').AsInteger := nCadTce;
             QRY_AMPATOMVTPESSOAL.Post;
             InsereSituacao('Importando...',09);
             if QRY_AMPVEICULOPUBLICACAO.Locate('nPmNoTce;nIdTbxVpb;nMesPgto;nAnoPgto',
                    VarArrayOf([QRY_TBXENT.FieldByName('nCodTce').AsString,
                                QRY_CADATO2.FieldByName('nIdTbxVpb').AsString,
                                QRY_TBL_P.FieldByName('nMesPgto').AsString,
                                QRY_TBL_P.FieldByName('nAnoPgto').AsString]),[]) then
                begin
                  QRY_AMPVEICULOPUBLICACAO.Edit;
                end
             else
                begin
                  QRY_AMPVEICULOPUBLICACAO.Insert;
                  QRY_AMPVEICULOPUBLICACAO.FieldByName('nPmNoTce').AsString :=
                  QRY_TBXENT.FieldByName('nCodTce').AsString;
                  QRY_AMPVEICULOPUBLICACAO.FieldByName('nIdTbxVpb').AsString :=
                  QRY_TBXVPB2.FieldByName('nIdTbxVpb').AsString;
                  QRY_AMPVEICULOPUBLICACAO.FieldByName('nMesPgto').AsString :=
                  QRY_TBL_P.FieldByName('nMesPgto').AsString;
                  QRY_AMPVEICULOPUBLICACAO.FieldByName('nAnoPgto').AsString :=
                  QRY_TBL_P.FieldByName('nAnoPgto').AsString;
                end;
             QRY_AMPVEICULOPUBLICACAO.FieldByName('cDescriVpb').AsString :=
             QRY_TBXVPB2.FieldByName('cDescriVpb').AsString;
             QRY_AMPVEICULOPUBLICACAO.FieldByName('nIdCadTce').AsInteger := nCadTce;
             QRY_AMPVEICULOPUBLICACAO.Post;
             InsereSituacao('Importado...',09);
             InsereSituacao('Importando...',11);
             if QRY_TBXEDI2.RecordCount > 0 then
               begin
                 if QRY_AMPEDITAL.Locate('nPmNoTce;cNroEdital;nMesPgto;nAnoPgto',
                        VarArrayOf([QRY_TBXENT.FieldByName('nCodTce').AsString,
                                    QRY_TBXEDI2.FieldByName('nCodTce').AsString,
                                    QRY_TBXEDI2.FieldByName('cNroEdital').AsString,
                                    QRY_TBXEDI2.FieldByName('dDtEdital').AsString,
                                    QRY_TBL_P.FieldByName('nMesPgto').AsString,
                                    QRY_TBL_P.FieldByName('nAnoPgto').AsString]),[]) then
                    begin
                      QRY_AMPEDITAL.Edit;
                    end
                 else
                    begin
                      QRY_AMPEDITAL.Insert;
                      QRY_AMPEDITAL.FieldByName('nPmNoTce').AsString :=
                      QRY_TBXENT.FieldByName('nCodTce').AsString;
                      QRY_AMPEDITAL.FieldByName('nCodTce').AsString :=
                      QRY_TBXEDI2.FieldByName('nCodTce').AsString;
                      QRY_AMPEDITAL.FieldByName('dDtEdital').AsString:=
                      FormaData(QRY_TBXEDI2.FieldByName('dDtEdital'));
                      QRY_AMPEDITAL.FieldByName('cNroEdital').AsString :=
                      QRY_TBXEDI2.FieldByName('cNroEdital').AsString;
                      QRY_AMPEDITAL.FieldByName('nMesPgto').AsString :=
                      QRY_TBL_P.FieldByName('nMesPgto').AsString;
                      QRY_AMPEDITAL.FieldByName('nAnoPgto').AsString :=
                      QRY_TBL_P.FieldByName('nAnoPgto').AsString;
                    end;
                 QRY_AMPEDITAL.FieldByName('dDtPublica').AsString :=
                 FormaData(QRY_TBXEDI2.FieldByName('dDtPublica'));
                 QRY_AMPEDITAL.FieldByName('cDescriEdi').AsString :=
                 QRY_TBXEDI2.FieldByName('cDescriEdi').AsString;
                 QRY_AMPEDITAL.FieldByName('nIdTbxVpb').AsString :=
                 QRY_TBXEDI2.FieldByName('nIdTbxVpb').AsString;
                 QRY_AMPEDITAL.FieldByName('cNomeArq').AsString := '';
                 QRY_AMPEDITAL.FieldByName('nIdCadTce').AsInteger := nCadTce;
                 QRY_AMPEDITAL.Post;
                 InsereSituacao('Importado...',11);
               end;
             // Para não levar Movimentação funcional de Cargos POLITICOS
             if StrToInt(QRY_TBXTCT2.FieldByName('nCodTce').AsString) <> 3 then
               begin
                 if (cTipoFicha = 'I') then cCodCargo := 'INATIVO';
                 if (cTipoFicha = 'P') then cCodCargo := 'PENSIONIST';

                 if (cTipoFicha = 'I') or (cTipoFicha = 'P') then
                   begin
                     if (cTipoFicha = 'I') then
                       cCodCargo := 'INATIVO'
                     else cCodCargo := 'PENSIONIST';
                   end
                 else cCodCargo := QRY_CADMOV2.FieldByName('nIdCadCrg').AsString;
                 InsereSituacao('Importando...',12);
                 if QRY_AMPMOVIMENTACAO.Locate('nPmNoTce;cCpfCnpj;dDtNasc;cNroAto;nMesPgto;nAnoPgto',
                        VarArrayOf([QRY_TBXENT.FieldByName('nCodTce').AsString,
                                    QRY_TCE.FieldByName('cCpfCnpj').AsString,
                                    FormaData(QRY_TCE.FieldByName('dDtNasc')),
                                    QRY_CADATO2.FieldByName('cNroAto').AsString,
                                    QRY_TBL_P.FieldByName('nMesPgto').AsString,
                                    QRY_TBL_P.FieldByName('nAnoPgto').AsString]),[]) then
                    begin
                      QRY_AMPMOVIMENTACAO.Edit;
                    end
                 else
                    begin
                      QRY_AMPMOVIMENTACAO.Insert;
                      QRY_AMPMOVIMENTACAO.FieldByName('nPmNoTce').AsString :=
                      QRY_TBXENT.FieldByName('nCodTce').AsString;
                      QRY_AMPMOVIMENTACAO.FieldByName('cCpfCnpj').AsString :=
                      QRY_TCE.FieldByName('cCpfCnpj').AsString;
                      QRY_AMPMOVIMENTACAO.FieldByName('dDtNasc').AsString :=
                      FormaData(QRY_TCE.FieldByName('dDtNasc'));
                      QRY_AMPMOVIMENTACAO.FieldByName('cNroAto').AsString :=
                      QRY_CADATO.FieldByName('cNroAto').AsString;
                    end;
                 QRY_AMPMOVIMENTACAO.FieldByName('nIdCadCrg').AsString := cCodCargo;
                 QRY_AMPMOVIMENTACAO.FieldByName('nCodTce').AsString :=
                 QRY_TBXTCT2.FieldByName('nCodTce').AsString;
                 QRY_AMPMOVIMENTACAO.FieldByName('nCodTce2').AsString :=
                 QRY_CADATO.FieldByName('nCodTce').AsString;
                 QRY_AMPMOVIMENTACAO.FieldByName('dDtPublica').AsString :=
                 FormaData(QRY_CADATO.FieldByName('dDtPublic'));
                 QRY_AMPMOVIMENTACAO.FieldByName('nCodTce3').AsString :=
                 QRY_TBXMVP2.FieldByName('nCodTce').AsString;
                 QRY_AMPMOVIMENTACAO.FieldByName('nIdTbxEdi').AsString :=
                 QRY_TBXEDI.FieldByName('nIdTbxEdi').AsString;
                 QRY_AMPMOVIMENTACAO.FieldByName('nCodTce4').AsString :=
                 QRY_TBXEDI.FieldByName('nCodTce').AsString;
                 QRY_AMPMOVIMENTACAO.FieldByName('dDataIni').AsString :=
                 FormaData(QRY_CADATO2.FieldByName('dDtEfeitos'));
                 QRY_AMPMOVIMENTACAO.FieldByName('cCampo1').AsString := '';
                 QRY_AMPMOVIMENTACAO.FieldByName('cCampo2').AsString := '';
                 if QRY_TBXEDI.FieldByName('nCodTce').AsInteger = 2 then
                   QRY_AMPMOVIMENTACAO.FieldByName('dDataFim').AsString :=
                   FormaData(QRY_CADMOV.FieldByName('dDataFim'))
                 else QRY_AMPMOVIMENTACAO.FieldByName('dDataFim').AsString := '';
                 QRY_AMPMOVIMENTACAO.FieldByName('nCodTce5').AsString :=
                 QRY_TBXAGI2.FieldByName('nCodTce').AsString;
                 QRY_AMPMOVIMENTACAO.FieldByName('cCampo3').AsString := '';
                 QRY_AMPMOVIMENTACAO.FieldByName('nMesPgto').AsString :=
                 QRY_TBL_P.FieldByName('nMesPgto').AsString;
                 QRY_AMPMOVIMENTACAO.FieldByName('nAnoPgto').AsString :=
                 QRY_TBL_P.FieldByName('nAnoPgto').AsString;
                 QRY_AMPMOVIMENTACAO.FieldByName('nIdCadTce').AsInteger := nCadTce;
                 // Campos Novos do novo LAYOUT
                 // nTemAto -> Indica a presença de do
                 QRY_AMPMOVIMENTACAO.FieldByName('nTemAto').AsString := '';
                 // dDtCriacao -> Data do Ato
                 QRY_AMPMOVIMENTACAO.FieldByName('dDtCriacao').AsString :=
                 FormaData(QRY_CADATO2.FieldByName('dDtCriacao'));
                 // dDtEdital -> Data que foi criado o Edital
                 QRY_AMPMOVIMENTACAO.FieldByName('dDtEdital').AsString :=
                 FormaData(QRY_TBXEDI2.FieldByName('dDtEdital'));
                 QRY_AMPMOVIMENTACAO.Post;
                 InsereSituacao('Importado...',12);
               end;
             QRY_CADMOV2.Edit;
             QRY_CADMOV2.FieldByName('cEnviadRvg').AsString := 'S';
             QRY_CADMOV2.FieldByName('nMesPgto').AsInteger :=
             QRY_TBL_P.FieldByName('nMesPgto').AsInteger;
             QRY_CADMOV2.FieldByName('nAnoPgto').AsInteger :=
             QRY_TBL_P.FieldByName('nAnoPgto').AsInteger;
             QRY_CADATO2.Edit;
             QRY_CADATO2.FieldByName('cEnviadoTc').AsString := 'S';
             QRY_CADATO2.Post;
             QRY_CADMOV2.Next;
           end;
         InsereSituacao('Importado...',10);
       end;
   end;
end;



procedure TFRM_A002RHTC.GravaAlocaMensal;
begin
  with DTM_A001RHTC do
   begin
     if (QRY_TAGPAG.RecordCount > 0) then
       begin
         InsereSituacao('Importando...',7);
         if QRY_AMPALOCACAOMENSAL.Locate('nPmNoTce;cCpfCnpj;dDtNasc;'+
            'nIdTbxSet;nIdCadCrg;nIdTagSlr;nIdTagFfu;nMesPgto;nAnoPgto',
            VarArrayOf([QRY_TBXENT.FieldByName('nCodTce').AsString,
                        QRY_TCE.FieldByName('cCpfCnpj').AsString,
                        FormaData(QRY_TCE.FieldByName('dDtNasc')),
                        QRY_DTPSET.FieldByName('nIdTagOdp').AsString+
                        QRY_DTPSET.FieldByName('nIdTbxDpt').AsString,
                        QRY_CADCRG.FieldByName('nIdCadCrg').AsString,
                        QRY_TCE.FieldByName('nIdTagSlr').AsString,
                        QRY_TCE.FieldByName('nIdTagFfu').AsString,
                        QRY_TBL_P.FieldByName('nMesPgto').AsString,
                        QRY_TBL_P.FieldByName('nAnoPgto').AsString]),[]) then
            begin
              QRY_AMPALOCACAOMENSAL.Edit;
            end
         else
            begin
              QRY_AMPALOCACAOMENSAL.Insert;
              QRY_AMPALOCACAOMENSAL.FieldByName('nPmNoTce').AsString :=
              QRY_TBXENT.FieldByName('nCodTce').AsString;
              QRY_AMPALOCACAOMENSAL.FieldByName('cCpfCnpj').AsString :=
              QRY_TCE.FieldByName('cCpfCnpj').AsString;
              QRY_AMPALOCACAOMENSAL.FieldByName('dDtNasc').AsString :=
              FormaData(QRY_TCE.FieldByName('dDtNasc'));
              if (cTipoFicha = 'I') or (cTipoFicha = 'P') then
                QRY_AMPALOCACAOMENSAL.FieldByName('nIdTbxSet').AsString :=
                QRY_TBXENT.FieldByName('nCodTce').AsString
              else
                QRY_AMPALOCACAOMENSAL.FieldByName('nIdTbxSet').AsString :=
                QRY_DTPSET.FieldByName('nidtagodp').AsString+
                QRY_DTPSET.FieldByName('nidtbxdpt').AsString;
              //if (cTipoFicha = 'I') or (cTipoFicha = 'P') then
              //  QRY_AMPALOCACAOMENSAL.FieldByName('nIdTagFfu').AsString :=
              //  QRY_TCE.FieldByName('cNroAposen').AsString
             // else
                QRY_AMPALOCACAOMENSAL.FieldByName('nIdTagFfu').AsString :=
                QRY_TCE.FieldByName('nIdTagFfu').AsString;
              if (cTipoFicha = 'I') or (cTipoFicha = 'P') then
                begin
                  if cTipoFicha = 'I' then
                    QRY_AMPALOCACAOMENSAL.FieldByName('nIdCadCrg').AsString :=
                    'INATIVO';
                  if cTipoFicha = 'P' then
                    QRY_AMPALOCACAOMENSAL.FieldByName('nIdCadCrg').AsString :=
                    'PENSIONIST';
                  QRY_AMPALOCACAOMENSAL.FieldByName('nIdTagSlr').AsString :=
                  '----------';
                end
              else
                begin
                  QRY_AMPALOCACAOMENSAL.FieldByName('nIdCadCrg').AsString :=
                  QRY_CADCRG.FieldByName('nIdCadCrg').AsString;
                  QRY_AMPALOCACAOMENSAL.FieldByName('nIdTagSlr').AsString :=
                  QRY_TCE.FieldByName('nIdTagSlr').AsString;
                end;
              QRY_AMPALOCACAOMENSAL.FieldByName('nMesPgto').AsString :=
              QRY_TBL_P.FieldByName('nMesPgto').AsString;
              QRY_AMPALOCACAOMENSAL.FieldByName('nAnoPgto').AsString :=
              QRY_TBL_P.FieldByName('nAnoPgto').AsString;
            end;
         QRY_AMPALOCACAOMENSAL.FieldByName('nCodTce').AsString :=
         StrZero(QRY_CADCRG.FieldByName('nCodTce3').AsInteger,3);
         QRY_AMPALOCACAOMENSAL.FieldByName('cFundef').AsString :=
         QRY_TBXORI.FieldByName('cFundef').AsString;
// Regime Previdenciario
         QRY_AMPALOCACAOMENSAL.FieldByName('nCodTce3').AsString :=
         QRY_CADCRG.FieldByName('nCodTce4').AsString;
// Percentual Proprio
         if QRY_CADCRG.FieldByName('nCodTce4').Value = 2 then
           begin
             QRY_AMPALOCACAOMENSAL.FieldByName('nPerPatron').AsString :=
             FormataDecimal(QRY_CADCRG.FieldByName('nPerPatron').Value,4,3);
             QRY_AMPALOCACAOMENSAL.FieldByName('nPerProp').AsString :=
             FormataDecimal(10,4,3);
           end;
         QRY_AMPALOCACAOMENSAL.FieldByName('nCodTce2').AsString :=
         QRY_TAGMVF.FieldByName('nCodTce').AsString;
         if QRY_TAGMVF.FieldByName('nCodTce').AsInteger in [4,5,6,7] then
           QRY_AMPALOCACAOMENSAL.FieldByName('cOrgaoOri').AsString := 'NAO INFORMADO';
//           QRY_CADMOV.FieldByName('cOrgaoOri').AsString;
         QRY_AMPALOCACAOMENSAL.FieldByName('nIdCadTce').AsInteger := nCadTce;
         QRY_AMPALOCACAOMENSAL.Post;
         InsereSituacao('Importado...',7);
         GravaVlrsMensais;
       end;
   end;
end;

procedure TFRM_A002RHTC.GravaVlrsMensais;
var cUnLotacao, cCodCargo, cClasse : String;
    nValorAnt : Double;
begin
  with DTM_A001RHTC do
   begin
     InsereSituacao('Importando...',8);
     QRY_TAGPAG.First;
     while (not QRY_TAGPAG.Eof) do
       begin
//         if QRY_CADEVE.FieldByName('nCodTce').AsString <> '' then
           begin
             if (cTipoFicha = 'I') or (cTipoFicha = 'P') then
               begin
                 cUnLotacao := QRY_TBXENT.FieldByName('nCodTce').AsString;
                 cClasse := '----------';
                 if (cTipoFicha = 'I') then
                   cCodCargo := 'INATIVO'
                 else cCodCargo := 'PENSIONIST';
               end
             else
               begin
                 cCodCargo := QRY_CADCRG.FieldByName('nIdCadCrg').AsString;
                 cClasse := QRY_TCE.FieldByName('nIdTagSlr').AsString;
                 cUnLotacao :=  QRY_DTPSET.FieldByName('nIdTagOdp').AsString+
                                QRY_DTPSET.FieldByName('nIdTbxDpt').AsString;
               end;
             if QRY_AMPVALORESMENSAIS.Locate('nPmNoTce;cCpfCnpj;dDtNasc;'+
                'nIdTbxSet;nIdCadCrg;nIdTagSlr;nIdTagFfu;nMesPgto;nAnoPgto;nCodTce',
                VarArrayOf([QRY_TBXENT.FieldByName('nCodTce').AsString,
                            QRY_TCE.FieldByName('cCpfCnpj').AsString,
                            FormaData(QRY_TCE.FieldByName('dDtNasc')),
                            cUnLotacao,
                            cCodCargo,
                            cClasse,
                            QRY_TCE.FieldByName('nIdTagFfu').AsString,
                            QRY_TBL_P.FieldByName('nMesPgto').AsString,
                            QRY_TBL_P.FieldByName('nAnoPgto').AsString,
                            QRY_TAGPAG.FieldByName('nCodTce').AsString]),[]) then
                begin
                  QRY_AMPVALORESMENSAIS.Edit;
                end
             else
                begin
                  QRY_AMPVALORESMENSAIS.Insert;
                  QRY_AMPVALORESMENSAIS.FieldByName('nPmNoTce').AsString :=
                  QRY_TBXENT.FieldByName('nCodTce').AsString;
                  QRY_AMPVALORESMENSAIS.FieldByName('cCpfCnpj').AsString :=
                  QRY_TCE.FieldByName('cCpfCnpj').AsString;
                  QRY_AMPVALORESMENSAIS.FieldByName('dDtNasc').AsString :=
                  FormaData(QRY_TCE.FieldByName('dDtNasc'));
                  QRY_AMPVALORESMENSAIS.FieldByName('nIdTbxSet').AsString := cUnLotacao;
                  QRY_AMPVALORESMENSAIS.FieldByName('nIdCadCrg').AsString := cCodCargo;
                  QRY_AMPVALORESMENSAIS.FieldByName('nIdTagSlr').AsString := cClasse;
//                  if (cTipoFicha = 'I') or (cTipoFicha = 'P') then
//                    QRY_AMPVALORESMENSAIS.FieldByName('nIdTagFfu').AsString :=
//                    QRY_TCE.FieldByName('cNroAposen').AsString
//                  else QRY_AMPVALORESMENSAIS.FieldByName('nIdTagFfu').AsString :=
                  QRY_AMPVALORESMENSAIS.FieldByName('nIdTagFfu').AsString :=
                  QRY_TCE.FieldByName('nIdTagFfu').AsString;
                  QRY_AMPVALORESMENSAIS.FieldByName('nCodTce').AsString :=
                  QRY_TAGPAG.FieldByName('nCodTce').AsString;
                  QRY_AMPVALORESMENSAIS.FieldByName('nMesPgto').AsString :=
                  QRY_TBL_P.FieldByName('nMesPgto').AsString;
                  QRY_AMPVALORESMENSAIS.FieldByName('nAnoPgto').AsString :=
                  QRY_TBL_P.FieldByName('nAnoPgto').AsString;
                end;
             nValorAnt := ConverteValor(QRY_AMPVALORESMENSAIS.FieldByName('nValorEve').AsString);
             nValorAnt := nValorAnt + QRY_TAGPAG.FieldByName('nValorPag').Value;
             QRY_AMPVALORESMENSAIS.FieldByName('nValorEve').AsString :=
             FormataDecimal(nValorAnt,7,6);
             QRY_AMPVALORESMENSAIS.FieldByName('nIdCadTce').AsInteger := nCadTce;
             QRY_AMPVALORESMENSAIS.Post;
           end;
         QRY_TAGPAG.Next;
       end;
     InsereSituacao('Importado...',8);
   end;
end;

procedure TFRM_A002RHTC.GravaAtosCrg;
begin
  with DTM_A001RHTC do
   begin
     if QRY_CADATO_CRG.RecordCount > 0 then
       begin
         InsereSituacao('Importando...',13);
         QRY_CADATO_CRG.First;
         while not QRY_CADATO_CRG.Eof do
           begin
             if QRY_AMPATOSCARGOS.Locate('nPmNoTce;nCodTce;cNroAto;dDtPublica',
                VarArrayOf([QRY_TBXENT.FieldByName('nCodTce').AsString,
                            QRY_CADATO_CRG.FieldByName('nCodTce').AsString,
                            QRY_CADATO_CRG.FieldByName('cNroAto').AsString,
                            FormaData(QRY_CADATO_CRG.FieldByName('dDtCriacao')),
                            QRY_TBL_P.FieldByName('nMesPgto').AsString,
                            QRY_TBL_P.FieldByName('nAnoPgto').AsString]),[]) then

                begin
                  QRY_AMPATOSCARGOS.Edit;
                end
             else
                begin
                  QRY_AMPATOSCARGOS.FieldByName('nPmNoTce').AsString :=
                  QRY_TBXENT.FieldByName('nCodTce').AsString;
                  QRY_AMPATOSCARGOS.FieldByName('nCodTce').AsString :=
                  QRY_CADATO_CRG.FieldByName('nCodTce').AsString;
                  QRY_AMPATOSCARGOS.FieldByName('cNroAto').AsString :=
                  QRY_CADATO_CRG.FieldByName('cNroAto').AsString;
                  QRY_AMPATOSCARGOS.FieldByName('dDtCriacao').AsString :=
                  FormaData(QRY_CADATO_CRG.FieldByName('dDtCriacao'));
                end;
             QRY_AMPATOSCARGOS.FieldByName('dDtPublica').AsString :=
             FormaData(QRY_CADATO_CRG.FieldByName('dDtPublica'));
             QRY_AMPATOSCARGOS.FieldByName('nIdTbxVpb').AsString :=
             QRY_CADATO_CRG.FieldByName('nIdTbxVpb').AsString;
             QRY_AMPATOSCARGOS.FieldByName('cNomeArq').AsString :=
             QRY_CADATO_CRG.FieldByName('cNomeArq').AsString;
             QRY_AMPATOSCARGOS.FieldByName('nIdCadTce').AsInteger := nCadTce;
             QRY_AMPATOSCARGOS.Post;
             GravaHistAtosCrg;
             QRY_CADATO_CRG.Next;
             AlimentaGaug;
           end;
         InsereSituacao('Importado...',13);
       end;
   end;
end;

procedure TFRM_A002RHTC.GravaHistAtosCrg;
begin
  with DTM_A001RHTC do
   begin
     if QRY_CADMOV_CRG.RecordCount > 0 then
       begin
         InsereSituacao('Importando...',14);
         QRY_CADMOV_CRG.First;
         while not QRY_CADMOV_CRG.Eof do
           begin
             if QRY_AMPHISTORICOATOSCARGO.Locate('nPmNoTce;cNroAto;nCodTce;'+
                'nCodTce2;nIdCadCrg;nMesPgto;nAnoPgto',
                VarArrayOf([QRY_TBXENT.FieldByName('nCodTce').AsString,
                            QRY_CADATO_CRG.FieldByName('cNroAto').AsString,
                            QRY_CADATO_CRG.FieldByName('dDtCriacao').AsString,
                            QRY_CADMOV_CRG.FieldByName('nCodTce').AsString,
                            QRY_CADMOV_CRG.FieldByName('nCodTce2').AsString,
                            QRY_CADMOV_CRG.FieldByName('nIdCadCrg').AsString,
                            QRY_CADMOV_CRG.FieldByName('nCodTce3').AsString,
                            QRY_TBL_P.FieldByName('nMesPgto').AsString,
                            QRY_TBL_P.FieldByName('nAnoPgto').AsString]),[]) then
                begin
                  QRY_AMPHISTORICOATOSCARGO.Edit;
                end
             else
                begin
                  QRY_AMPHISTORICOATOSCARGO.FieldByName('nPmNoTce').AsString :=
                  QRY_TBXENT.FieldByName('nCodTce').AsString;
                  QRY_AMPHISTORICOATOSCARGO.FieldByName('dDtCriacao').AsString :=
                  FormaData(QRY_CADATO_CRG.FieldByName('dDtCriacao'));
                  QRY_AMPHISTORICOATOSCARGO.FieldByName('nCodTce').AsString :=
                  QRY_CADMOV_CRG.FieldByName('nCodTce').AsString;
                  QRY_AMPHISTORICOATOSCARGO.FieldByName('cNroAto').AsString :=
                  QRY_CADATO_CRG.FieldByName('cNroAto').AsString;
                  QRY_AMPHISTORICOATOSCARGO.FieldByName('nCodTce2').AsString :=
                  QRY_CADMOV_CRG.FieldByName('nCodTce2').AsString;
                  QRY_AMPHISTORICOATOSCARGO.FieldByName('nIdCadCrg').AsString :=
                  QRY_CADMOV_CRG.FieldByName('nIdCadCrg').AsString;
                  QRY_AMPHISTORICOATOSCARGO.FieldByName('nCodTce3').AsString :=
                  QRY_CADMOV_CRG.FieldByName('nCodTce3').AsString;
                  QRY_AMPHISTORICOATOSCARGO.FieldByName('nMesPgto').AsString :=
                  QRY_TBL_P.FieldByName('nMesPgto').AsString;
                  QRY_AMPHISTORICOATOSCARGO.FieldByName('nAnoPgto').AsString :=
                  QRY_TBL_P.FieldByName('nAnoPgto').AsString;
                end;
             QRY_AMPHISTORICOATOSCARGO.FieldByName('nTotVagas').AsString :=  '';
             QRY_CADMOV_CRG.FieldByName('nTotVagas').AsString;
             QRY_AMPHISTORICOATOSCARGO.FieldByName('cCampo1').AsString := '';
             QRY_AMPHISTORICOATOSCARGO.FieldByName('nIdCadTce').AsInteger := nCadTce;
             QRY_CADMOV_CRG.Next;
           end;
         InsereSituacao('Importado...',14);
       end;
   end;
end;

function TFRM_A002RHTC.FormaData(oCampoData : TField):String;
begin
  result := FormatDateTime('YYYY-MM-DD',oCampoData.AsDateTime);
end;

procedure TFRM_A002RHTC.Dados;
begin
  PrepareQryTemp('select distinct  nmespgto, nanopgto,'+
                 ' nmespgto||nanopgto as dat_chave, '+
                 QuotedStr('Importado')+' as dados '+
                 'from ampCargo where npmnotce = '+QuotedStr(
                 DTM_A001RHTC.QRY_TBXENT.FieldByName('nCodTce').AsString));
  DMControle.QryTemp.First;
  DTM_A001RHTC.QRY_DADOS.Close;
  DTM_A001RHTC.QRY_DADOS.Clear;
  DTM_A001RHTC.QRY_DADOS.Open;
  while not DMControle.QryTemp.Eof do
    begin
      DTM_A001RHTC.QRY_DADOS.Insert;
      DTM_A001RHTC.QRY_DADOS.FieldByName('DAT_CHAVE').AsString :=
      UpperCase(LongMonthNames[DMControle.QryTemp.FieldByName('NMESPGTO').AsInteger])+'/'+
      DMControle.QryTemp.FieldByName('NANOPGTO').AsString;
      DTM_A001RHTC.QRY_DADOS.FieldByName('DADOS').AsString :=
      DMControle.QryTemp.FieldByName('DADOS').AsString;
      DTM_A001RHTC.QRY_DADOS.Post;
      DMControle.QryTemp.Next;
    end;
  if not DMControle.QryTemp.Locate('DAT_CHAVE',
     (DMControle.Qry_P.FieldByName('NMESPGTO').AsString +
      DMControle.Qry_P.FieldByName('NANOPGTO').AsString),[]) then
      begin
        DTM_A001RHTC.QRY_DADOS.Insert;
        DTM_A001RHTC.QRY_DADOS.FieldByName('DAT_CHAVE').AsString :=
        UpperCase(LongMonthNames[DMControle.Qry_P.FieldByName('NMESPGTO').AsInteger])+'/'+
        DMControle.Qry_P.FieldByName('NANOPGTO').AsString;
        DTM_A001RHTC.QRY_DADOS.FieldByName('DADOS').AsString :=
        'Não Importado';
        DTM_A001RHTC.QRY_DADOS.Post;
      end;
  DMControle.QryTemp.Close;
end;


procedure TFRM_A002RHTC.MontaLista;
  var
    ListaTab : TStringList;
    procedure AlimentaView(Situacao: String);
      var
        i : integer;
        item : TListItem;
    begin
      for i:= 0 to ListaTab.Count - 1 do
        begin
          item := lsv_tabelas.Items.Add;
          item.Caption := ListaTab.Strings[i];
        end;
    end;
begin
  ListaTab := TStringList.Create;

  Application.ProcessMessages;
  ListaTab := ListaTabelas;
  AlimentaView('Importando');
  ListaTab.Clear;

end;


function TFRM_A002RHTC.ListaTabelas: TStringList;
var nNumRow : Integer;
begin
  Result := TStringList.Create;
    begin
      for nNumRow := 0 to FRM_A001RHTC.SG_TABELAS.RowCount -1 do
        begin
          Result.Add(FRM_A001RHTC.SG_TABELAS.Cells[0,nNumRow]);
        end;
    end;
end;

procedure TFRM_A002RHTC.InsereSituacao(cSitua : String; noItem : Integer);
begin
  if lsv_tabelas.Items[noItem].SubItems.Count <> 0 then
    lsv_tabelas.Items[noItem].SubItems.Strings[0] := cSitua
  else lsv_tabelas.Items[noItem].SubItems.Add(cSitua);
  Application.ProcessMessages;
end;

procedure TFRM_A002RHTC.LimpaSituacao;
var nQtSitua : Integer;
begin
  for nQtSitua := lsv_tabelas.Items.count -1 downto 0 do
    begin
      if lsv_tabelas.Items[nQtSitua].SubItems.Count <> 0 then
         lsv_tabelas.Items[nQtSitua].SubItems.Strings[0] := '';
      Application.ProcessMessages;
    end;
end;


procedure TFRM_A002RHTC.BTN_CANCELARClick(Sender: TObject);
begin
  lCancelaTce := true;
end;

function TFRM_A002RHTC.ParaTudo:Boolean;
begin
  Result := false;
  Application.ProcessMessages;
  if lCancelaTce then
    begin
      MessageDlg('Processamento Cancelado!!',mtInformation,[mbOk],0);
      DMControle.Conexao.Rollback;
      LimpaSituacao;
      LimpaGaug;
      DTM_A001RHTC.RefreshTabelas;
      lCancelaTce := false;
      lCancelou := true;
      Result := true;
    end;
  if lCancelou then
      Result := true;
end;

procedure TFRM_A002RHTC.PegaId;
begin
  PrepareQryTemp('select nidcadtce, cmespgto, canopgto, nidtbxent from CADTCE where '+
  'CADTCE.CMESPGTO = '+DTM_A001RHTC.QRY_TBL_P.FieldByName('NMESPGTO').AsString+
  ' and CADTCE.CANOPGTO = '+DTM_A001RHTC.QRY_TBL_P.FieldByName('NANOPGTO').AsString+
  ' and CADTCE.NIDTBXENT = '+DTM_A001RHTC.QRY_TBXENT.FieldByName('NIDTBXENT').AsString);
  if (not DMControle.QryTemp.Locate('cmespgto;canopgto;nidtbxent',VarArrayOf([DTM_A001RHTC.QRY_TBL_P.FieldByName('NMESPGTO').AsString,
     DTM_A001RHTC.QRY_TBL_P.FieldByName('NANOPGTO').AsString,
     DTM_A001RHTC.QRY_TBXENT.FieldByName('NIDTBXENT').AsInteger]),[])) then
    begin
      DTM_A001RHTC.QRY_CADTCE.Insert;
      DTM_A001RHTC.QRY_CADTCE.FieldByName('NIDCADTCE').AsInteger := 0;
      DTM_A001RHTC.QRY_CADTCE.FieldByName('CMESPGTO').AsString :=
      DTM_A001RHTC.QRY_TBL_P.FieldByName('NMESPGTO').AsString;
      DTM_A001RHTC.QRY_CADTCE.FieldByName('CANOPGTO').AsString :=
      DTM_A001RHTC.QRY_TBL_P.FieldByName('NANOPGTO').AsString;
      DTM_A001RHTC.QRY_CADTCE.FieldByName('CUSUARIO').AsString :=
      cNomeUsuario;
      DTM_A001RHTC.QRY_CADTCE.FieldByName('NIDTBXENT').AsInteger :=
      DTM_A001RHTC.QRY_TBXENT.FieldByName('NIDTBXENT').AsInteger;
      DTM_A001RHTC.QRY_CADTCE.Post;
      DMControle.QryTemp.ExecSQL;
      nCadTce := DMControle.QryTemp.FieldByName('NIDCADTCE').AsInteger;
    end
  else
    begin
      nCadTce := DMControle.QryTemp.FieldByName('NIDCADTCE').AsInteger;
      SCP_Update.SQL.Clear;
      SCP_Update.SQL.Add('update cadtce set CUSUARIO = '+QuotedStr(cNomeUsuario)+
                         ' where cmespgto = '+DTM_A001RHTC.QRY_TBL_P.FieldByName('nMesPgto').AsString+
                         ' and canopgto = '+DTM_A001RHTC.QRY_TBL_P.FieldByName('nAnoPgto').AsString+
                         ' and nidtbxent = '+DTM_A001RHTC.QRY_TBXENT.FieldByName('NIDTBXENT').AsString);
      SCP_Update.Execute;
    end;
  DMControle.QryTemp.Close;
end;

procedure TFRM_A002RHTC.IniciaGaug;

begin
with DTM_A001RHTC do
  begin
    QRY_TCE.Close;
    QRY_TCE.ParamByName('nmespgto').AsInteger :=
    QRY_TBL_P.FieldByName('nMesPgto').AsInteger;
    QRY_TCE.ParamByName('nanopgto').AsInteger :=
    QRY_TBL_P.FieldByName('nAnoPgto').AsInteger;
    QRY_TCE.ParamByName('cParam').AsString := 'A';
    QRY_TCE.Open;
    GAU_TCE.MaxValue := DTM_A001RHTC.QRY_TCE.RecordCount ;
    QRY_TCE.Close;
    QRY_TCE.ParamByName('nmespgto').AsInteger :=
    QRY_TBL_P.FieldByName('nMesPgto').AsInteger;
    QRY_TCE.ParamByName('nanopgto').AsInteger :=
    QRY_TBL_P.FieldByName('nAnoPgto').AsInteger;
    QRY_TCE.ParamByName('cParam').AsString := 'I';
    QRY_TCE.Open;
    GAU_TCE.MaxValue := GAU_TCE.MaxValue + DTM_A001RHTC.QRY_TCE.RecordCount ;
    QRY_TCE.Close;
    QRY_TCE.ParamByName('nmespgto').AsInteger :=
    QRY_TBL_P.FieldByName('nMesPgto').AsInteger;
    QRY_TCE.ParamByName('nanopgto').AsInteger :=
    QRY_TBL_P.FieldByName('nAnoPgto').AsInteger;
    QRY_TCE.ParamByName('cParam').AsString := 'P';
    QRY_TCE.Open;
    GAU_TCE.MaxValue := GAU_TCE.MaxValue + DTM_A001RHTC.QRY_TCE.RecordCount +
                        DTM_A001RHTC.QRY_CARGOS.RecordCount +
                        DTM_A001RHTC.QRY_CADATO.RecordCount;
    GAU_TCE.Progress := 0;
  end;
end;

procedure TFRM_A002RHTC.AlimentaGaug;
begin
   GAU_TCE.Progress := GAU_TCE.Progress + 1;
end;

procedure TFRM_A002RHTC.LimpaGaug;
begin
   GAU_TCE.Progress := 0;
   GAU_TCE.MaxValue := 0;
end;


function TFRM_A002RHTC.FormataDecimal(nValor : Double; nTam : Integer; nPosi : Integer):String;
var cvar : string;
begin
  cvar := Format('%f', [nValor]);
  cvar := strtran(cvar,',','');
  cvar := strzero(strtoint(cvar),nTam);
  Insert('.',cvar,nPosi);
  Result := cvar;
end;

procedure TFRM_A002RHTC.ZeraBase;
begin
    SCP_Script.MacroByName('mes').Value :=
    DTM_A001RHTC.QRY_TBL_P.FieldByName('nMesPgto').AsString;
    SCP_Script.MacroByName('ano').Value :=
    DTM_A001RHTC.QRY_TBL_P.FieldByName('nAnoPgto').AsString;
    SCP_Script.MacroByName('entidade').Value :=
    DTM_A001RHTC.QRY_TBXENT.FieldByName('nidtbxent').Value;
    SCP_Script.MacroByName('ncodtce').Value :=
    DTM_A001RHTC.QRY_TBXENT.FieldByName('ncodtce').AsString;
    PassaUsuaAplicBanco(DMControle.Conexao,cNomeUsuario,cNomeAplicacao);
    SCP_Script.Execute;
    RefreshQuery;
end;

function TFRM_A002RHTC.ConverteValor(cVlrAnt : String):Double;
var nPosi : Integer;
begin
  if cVlrAnt <> '' then
    begin
      nPosi := Pos('.',cVlrAnt);
      Delete(cVlrAnt,nPosi,1);
      Insert(',',cVlrAnt,nPosi);
      Result := StrToFloat(cVlrAnt);
    end
  else Result := 0;
end;


procedure TFRM_A002RHTC.RefreshQuery;
var nTab : integer;
begin
    for nTab:=0 to DTM_A001RHTC.ComponentCount-1 do
      begin
        if (DTM_A001RHTC.Components[nTab] is TOraQuery)  and
           (Copy(DTM_A001RHTC.Components[nTab].Name,1,7) = 'QRY_AMP') then
          with TOraQuery(DTM_A001RHTC.Components[nTab])do
            begin
               Close;
               Open;
            end;
      end;
end;


end.







