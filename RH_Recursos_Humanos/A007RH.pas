{*******************************************************************************
 *                                                                             *
 *  Historico de Movimentação Funcional de uma Ficha Funcional                 *
 *                                                                             *
 *  Data da Criação : 30/09/2004                                               *
 *  Programador Leandro Ribas                                                  *
 *  Data Finalização : 14/09/2004                                              *
 *                                                                             *
 *  Data da Ultima Atualização :00/00/0000                                     *
 *  Atualizado por:                                                            *
 *  Motivo :                                                                   *
 *******************************************************************************
}




unit A007RH;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, RxLookup, LMDCustomControl, LMDCustomPanel,
  LMDCustomBevelPanel, LMDCustomParentPanel, LMDCustomGroupBox, LMDGroupBox,
  Buttons, ExtCtrls, LMDFormDisplay, ComCtrls, PageControlEx, ToolEdit,
  RXDBCtrl, Mask, DBCtrls, db;

type
  TFRM_A007RH = class(TForm)
    LMDGroupBox3: TLMDGroupBox;
    Label2: TLabel;
    DBL_NIDTBXTPM: TRxDBLookupCombo;
    Panel2: TPanel;
    Btn_Incluir: TSpeedButton;
    Btn_Alterar: TSpeedButton;
    Btn_Gravar: TSpeedButton;
    Btn_Localizar: TSpeedButton;
    Btn_Excluir: TSpeedButton;
    BTN_SAIR: TSpeedButton;
    Btn_Avancar: TSpeedButton;
    Btn_Retroceder: TSpeedButton;
    Btn_Cancelar: TSpeedButton;
    Btn_Imprimir: TSpeedButton;
    LMDGroupBox1: TLMDGroupBox;
    DBL_NIDTBXGMV: TRxDBLookupCombo;
    Label3: TLabel;
    PGC_MOV: TPageControlEx;
    TabSheet1: TTabSheet;
    LMDGroupBox2: TLMDGroupBox;
    TabSheet2: TTabSheet;
    LMDGroupBox4: TLMDGroupBox;
    DED_DDTEFEITOS: TDBEdit;
    LBL_EFEIATOS: TLabel;
    LMDGroupBox5: TLMDGroupBox;
    LBL_EFEITRVG: TLabel;
    DBL_NIDTBXTPM_1: TRxDBLookupCombo;
    LBL_TPMOVTO: TLabel;
    CBE_CNROATO_1: TComboEdit;
    TabSheet3: TTabSheet;
    TabSheet4: TTabSheet;
    TabSheet5: TTabSheet;
    TabSheet6: TTabSheet;
    TabSheet7: TTabSheet;
    TabSheet8: TTabSheet;
    TabSheet9: TTabSheet;
    TabSheet10: TTabSheet;
    TabSheet11: TTabSheet;
    TabSheet12: TTabSheet;
    TabSheet13: TTabSheet;
    TabSheet14: TTabSheet;
    TabSheet15: TTabSheet;
    TabSheet16: TTabSheet;
    TabSheet17: TTabSheet;
    TabSheet18: TTabSheet;
    TabSheet19: TTabSheet;
    TabSheet20: TTabSheet;
    DBL_NIDTBXTCR: TRxDBLookupCombo;
    Label5: TLabel;
    DBL_NIDCADCRG: TRxDBLookupCombo;
    Label9: TLabel;
    DED_CDESCRIGRO: TDBEdit;
    DED_CDESCRISGO: TDBEdit;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    DED_NVALORSLR: TDBEdit;
    Label13: TLabel;
    Label14: TLabel;
    DBL_NIDTAGSLR_1: TRxDBLookupCombo;
    Label23: TLabel;
    DBL_NIDTAGSLR: TRxDBLookupCombo;
    Label24: TLabel;
    DBL_NIDTBXTCR_1: TRxDBLookupCombo;
    Label15: TLabel;
    DBL_NIDCADCRG_1: TRxDBLookupCombo;
    Label16: TLabel;
    DED_CDESCRIGRO_1: TDBEdit;
    DED_CDESCRISGO_1: TDBEdit;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    DED_NVALORSLR_1: TDBEdit;
    Label20: TLabel;
    DBL_NIDTAGSLR_3: TRxDBLookupCombo;
    Label22: TLabel;
    DBL_NIDTAGSLR_2: TRxDBLookupCombo;
    Label25: TLabel;
    DBD_DDATAFIM: TDBDateEdit;
    DBL_NIDTBXAGI: TRxDBLookupCombo;
    Label21: TLabel;
    Label26: TLabel;
    LMDGroupBox6: TLMDGroupBox;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    DBL_NIDTBXTCR_2: TRxDBLookupCombo;
    DBL_NIDCADCRG_3: TRxDBLookupCombo;
    DED_CDESCRIGRO_2: TDBEdit;
    DED_CDESCRISGO_2: TDBEdit;
    LMDGroupBox7: TLMDGroupBox;
    Label32: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    Label35: TLabel;
    DBL_NIDTBXTCR_3: TRxDBLookupCombo;
    DBL_NIDCADCRG_4: TRxDBLookupCombo;
    DED_CDESCRIGRO_3: TDBEdit;
    DED_CDESCRISGO_3: TDBEdit;
    LMDGroupBox9: TLMDGroupBox;
    Label42: TLabel;
    Label43: TLabel;
    Label44: TLabel;
    Label45: TLabel;
    DBL_NIDTBXTCR_5: TRxDBLookupCombo;
    DBL_NIDCADCRG_6: TRxDBLookupCombo;
    DED_CDESCRIGRO_5: TDBEdit;
    DED_CDESCRISGO_5: TDBEdit;
    LMDGroupBox10: TLMDGroupBox;
    Label47: TLabel;
    DBD_DDATAFIM_1: TDBDateEdit;
    LMDGroupBox11: TLMDGroupBox;
    Label49: TLabel;
    Label52: TLabel;
    DBL_NIDTBXTBI: TRxDBLookupCombo;
    Label54: TLabel;
    LMDGroupBox12: TLMDGroupBox;
    Label55: TLabel;
    Label60: TLabel;
    Label61: TLabel;
    DED_CNOMEGRL: TDBEdit;
    Label62: TLabel;
    Label63: TLabel;
    Label64: TLabel;
    DED_NVALORSLR_2: TDBEdit;
    DBL_NIDTAGSLR_5: TRxDBLookupCombo;
    DBL_NIDTAGSLR_4: TRxDBLookupCombo;
    Label65: TLabel;
    DED_NBSPENSAO: TDBEdit;
    Label68: TLabel;
    DBL_NIDTBXGRP: TRxDBLookupCombo;
    Label69: TLabel;
    DED_NPERBENEFI: TDBEdit;
    Label70: TLabel;
    LMDGroupBox13: TLMDGroupBox;
    Label71: TLabel;
    Label72: TLabel;
    Label73: TLabel;
    Label74: TLabel;
    Label75: TLabel;
    Label77: TLabel;
    Label78: TLabel;
    Label79: TLabel;
    Label80: TLabel;
    DBL_NIDTBXTCR_7: TRxDBLookupCombo;
    DBL_NIDCADCRG_8: TRxDBLookupCombo;
    DED_CDESCRIGRO_7: TDBEdit;
    DED_CDESCRISGO_7: TDBEdit;
    DED_CORGAOORI: TDBEdit;
    DED_NVALORSLR_3: TDBEdit;
    DBL_NIDTAGSLR_7: TRxDBLookupCombo;
    DBL_NIDTAGSLR_6: TRxDBLookupCombo;
    LMDGroupBox14: TLMDGroupBox;
    Label76: TLabel;
    Label81: TLabel;
    Label82: TLabel;
    Label83: TLabel;
    Label85: TLabel;
    DBL_NIDTBXTCR_8: TRxDBLookupCombo;
    DBL_NIDCADCRG_9: TRxDBLookupCombo;
    DED_CDESCRIGRO_8: TDBEdit;
    DED_CDESCRISGO_8: TDBEdit;
    DED_CORGAOORI_1: TDBEdit;
    LMDGroupBox15: TLMDGroupBox;
    Label91: TLabel;
    DBD_DDATAFIM_2: TDBDateEdit;
    LMDGroupBox16: TLMDGroupBox;
    Label86: TLabel;
    DBD_DDATAFIM_3: TDBDateEdit;
    LMDGroupBox17: TLMDGroupBox;
    Label87: TLabel;
    DBM_CMOTIVO: TDBMemo;
    LMDGroupBox18: TLMDGroupBox;
    Label88: TLabel;
    DBM_CMOTIVO_1: TDBMemo;
    Label89: TLabel;
    DBD_DDATAFIM_4: TDBDateEdit;
    LMDGroupBox19: TLMDGroupBox;
    Label92: TLabel;
    LMDGroupBox20: TLMDGroupBox;
    Label90: TLabel;
    DBL_NIDTBXORG: TRxDBLookupCombo;
    DBL_NIDTAGODP: TRxDBLookupCombo;
    Label93: TLabel;
    Label94: TLabel;
    Label95: TLabel;
    DBL_NIDTAGDST: TRxDBLookupCombo;
    DBL_NIDTBXLTB: TRxDBLookupCombo;
    DBE_CDESCRIVTG: TDBEdit;
    DED_NPERVANTAG: TDBEdit;
    DED_NVALORSLR_4: TDBEdit;
    Label96: TLabel;
    Label97: TLabel;
    LMDGroupBox21: TLMDGroupBox;
    Label98: TLabel;
    Label99: TLabel;
    Label100: TLabel;
    Label101: TLabel;
    Label102: TLabel;
    DED_CDESCRIGRO_9: TDBEdit;
    DED_CDESCRISGO_9: TDBEdit;
    DBM_CMOTIVO_2: TDBMemo;
    DED_CDESCRITCR: TDBEdit;
    DED_CDESCRICRG_1: TDBEdit;
    LMDGroupBox22: TLMDGroupBox;
    Label103: TLabel;
    DBD_DDTAQSINI: TDBDateEdit;
    Label104: TLabel;
    DBD_DDTAQSFIM: TDBDateEdit;
    Label105: TLabel;
    DBD_DDATAINI: TDBDateEdit;
    Label106: TLabel;
    DBD_DDATAFIM_5: TDBDateEdit;
    DED_CLC_DIASFER: TDBEdit;
    Label107: TLabel;
    LMDGroupBox23: TLMDGroupBox;
    Label108: TLabel;
    Label109: TLabel;
    Label110: TLabel;
    Label111: TLabel;
    DED_CDESCRIGRO_10: TDBEdit;
    DED_CDESCRISGO_10: TDBEdit;
    DED_CDESCRITCR_1: TDBEdit;
    DED_CDESCRICRG_3: TDBEdit;
    Label112: TLabel;
    Label113: TLabel;
    Label114: TLabel;
    DED_NVALORSLR_5: TDBEdit;
    DBL_NIDTAGSLR_9: TRxDBLookupCombo;
    DBL_NIDTAGSLR_8: TRxDBLookupCombo;
    Label115: TLabel;
    CBE_CNROATO: TComboEdit;
    DED_DDTEFEITOS_1: TDBEdit;
    DED_CULTIMOCRG: TDBEdit;
    DBL_NIDTBXSLR: TRxDBLookupCombo;
    DBL_NIDTBXSLR_1: TRxDBLookupCombo;
    LMDGroupBox8: TLMDGroupBox;
    Label37: TLabel;
    Label38: TLabel;
    Label39: TLabel;
    Label40: TLabel;
    DBL_NIDTBXTCR_4: TRxDBLookupCombo;
    DBL_NIDCADCRG_5: TRxDBLookupCombo;
    DED_CDESCRIGRO_4: TDBEdit;
    DED_CDESCRISGO_4: TDBEdit;
    DBL_NIDTBXSLR_4: TRxDBLookupCombo;
    DBL_NIDTBXSLR_2: TRxDBLookupCombo;
    DED_DDTOBITO: TDBEdit;
    DBL_NIDTBXSLR_3: TRxDBLookupCombo;
    DBT_CDESCRITAT: TDBText;
    DBT_CDESCRITAT_1: TDBText;
    CBE_CNROEDITAL: TComboEdit;
    CBE_CCPFCNPJ: TComboEdit;
    DED_CULTCRGAPS: TDBEdit;
    DED_NMATRICULA: TDBEdit;
    Label1: TLabel;
    DED_NMATRICULA_1: TDBEdit;
    Label4: TLabel;
    DED_NANOPGTO: TDBEdit;
    Label6: TLabel;
    CBE_CNROEDITAL1: TComboEdit;
    Label7: TLabel;
    Label8: TLabel;
    DED_NPERBENEFI1: TDBEdit;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Btn_LocalizarClick(Sender: TObject);
    procedure Btn_AvancarClick(Sender: TObject);
    procedure Btn_RetrocederClick(Sender: TObject);
    procedure Btn_IncluirClick(Sender: TObject);
    procedure Btn_AlterarClick(Sender: TObject);
    procedure Btn_GravarClick(Sender: TObject);
    procedure Btn_CancelarClick(Sender: TObject);
    procedure Btn_ExcluirClick(Sender: TObject);
    procedure BTN_SAIRClick(Sender: TObject);
    procedure DBL_NIDTBXTPMChange(Sender: TObject);
    procedure DBL_NIDTBXGMVChange(Sender: TObject);
    procedure CBE_CNROATOExit(Sender: TObject);
    procedure CBE_CNROATOChange(Sender: TObject);
    procedure CBE_CNROATOButtonClick(Sender: TObject);
    procedure CBE_CNROATO_1Exit(Sender: TObject);
    procedure DBL_NIDTBXSLRChange(Sender: TObject);
    procedure DBL_NIDTAGSLR_1Change(Sender: TObject);
    procedure CBE_CNROEDITALChange(Sender: TObject);
    procedure CBE_CNROEDITALExit(Sender: TObject);
    procedure DBL_NIDTBXTCRChange(Sender: TObject);
    procedure DBL_NIDCADCRGChange(Sender: TObject);
    procedure DBL_NIDTBXTCR_1Change(Sender: TObject);
    procedure DBL_NIDTAGSLRChange(Sender: TObject);
    procedure TabSheet1Show(Sender: TObject);
    procedure TabSheet2Show(Sender: TObject);
    procedure DBL_NIDTBXSLR_1Change(Sender: TObject);
    procedure DBL_NIDTAGSLR_2Change(Sender: TObject);
    procedure DBL_NIDTAGSLR_3Change(Sender: TObject);
    procedure DBL_NIDTBXTCR_2Change(Sender: TObject);
    procedure TabSheet3Show(Sender: TObject);
    procedure TabSheet4Show(Sender: TObject);
    procedure DBL_NIDTBXTCR_3Change(Sender: TObject);
    procedure DBL_NIDTBXTCR_4Change(Sender: TObject);
    procedure TabSheet5Show(Sender: TObject);
    procedure DBL_NIDTBXTCR_5Change(Sender: TObject);
    procedure TabSheet6Show(Sender: TObject);
    procedure DBL_NIDTBXSLR_2Change(Sender: TObject);
    procedure DBL_NIDTAGSLR_4Change(Sender: TObject);
    procedure TabSheet8Show(Sender: TObject);
    procedure TabSheet7Show(Sender: TObject);
    procedure DBL_NIDTAGSLR_5Change(Sender: TObject);
    procedure CBE_CCPFCNPJExit(Sender: TObject);
    procedure DBL_NIDTBXTCR_7Change(Sender: TObject);
    procedure DBL_NIDTBXSLR_3Change(Sender: TObject);
    procedure DBL_NIDTAGSLR_6Change(Sender: TObject);
    procedure DBL_NIDTAGSLR_7Change(Sender: TObject);
    procedure TabSheet9Show(Sender: TObject);
    procedure TabSheet10Show(Sender: TObject);
    procedure DBL_NIDTBXTCR_8Change(Sender: TObject);
    procedure TabSheet11Show(Sender: TObject);
    procedure TabSheet12Show(Sender: TObject);
    procedure TabSheet13Show(Sender: TObject);
    procedure TabSheet14Show(Sender: TObject);
    procedure TabSheet15Show(Sender: TObject);
    procedure DED_NPERVANTAGExit(Sender: TObject);
    procedure TabSheet16Show(Sender: TObject);
    procedure TabSheet17Show(Sender: TObject);
    procedure DBL_NIDTBXORGChange(Sender: TObject);
    procedure DBL_NIDTAGODPChange(Sender: TObject);
    procedure TabSheet18Show(Sender: TObject);
    procedure DBL_NIDTBXSLR_4Change(Sender: TObject);
    procedure DBL_NIDTAGSLR_8Change(Sender: TObject);
    procedure DBL_NIDTAGSLR_9Change(Sender: TObject);
    procedure TabSheet19Show(Sender: TObject);
    procedure TabSheet20Show(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DBL_NIDTBXTBIChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    //id da ficha fucional
    nIdFichaFun : Integer;
    //matricula da ficha
    nMatriculaFicha : Integer;
    //indica em qual movimento deve ser posicionado o movimento
    nIdMov : Integer;
    //salario indicado na ficha funcional passada como parametro
    nBaseCalculo : Double;
     //indica se o usuario digitou algum nº de ato concessao/revogacao
    lDigAto : boolean;
    //indica se o usuario digitou algum número de edital
    lDigEdital : boolean;
    //variaveis para controles dos lookups das tabsheets
    LkpCargo,LkpTabSlr,LkpClasseSlr,LkpNivSlr : TRxDBLookupCombo;

    //usada na alteração do tipo de cargo de algum movimento
    //parametro : dbLookup que contem os cargos
    procedure AlteraTipoCargo(Sender : TRxDBLookupCombo);

    //usada na alteração do cargo de algum movimento
    //parametro : qualquer objeto
    procedure AlteraCargo(Sender : TObject);

   //usada na alteração da Tabela salarial
   //remonta a consulta para buscar os niveis da tabela salarial
   //ou os niveis de uma classe salarial caso exista
   //parametro : 1º dbLookup da Classe Salarial, 2º dbLookup dos Niveis Salariais
    procedure AlteraTabSalarial(LookupClasse, LookupNiveis: TRxDBLookupCombo);

    //usada na alteração da classe salarial
    //parametro : dbLookup que contem os niveis salariais
    procedure AlteraClasseSal(Sender : TRxDBLookupCombo);

    //usada na alteração de nivel salarial
    //atribui ao campo de valor salarial do movimento
    // o valor correspondente ao nivel
    //parametro : qualquer objeto
    procedure AlteraNivel(Sender: TObject);

    //esconde as tabsheets
    procedure EscondeTabs;
    //Limpa conteudo de alguns campos da tabela cadmov
    //para que possa ser feita alteração do movimento
    procedure AlteraMovto;
    //verifica se o movimento pode ser alterado, ou excluido
    procedure VerAlteraMov;
    //atualiza dbLookup de Cargo e Nivel Salarial
    procedure AtualizaLookup;
  end;

var
  FRM_A007RH: TFRM_A007RH;

implementation

uses D007RH, UVariaveis, MPLCtrl, CtrlForms, DMCTRL, A008RH, D008RH, MPLLib,
  Pesquisa;

{$R *.DFM}

procedure TFRM_A007RH.FormShow(Sender: TObject);
begin
  //verifica o acesso do usuario na aplicação
  if not Acesso(nMatricula,'A007RH',DTM_A007RH) then
    close;
  //muda o status dos botões
  Botoes(['Btn_Cancelar','Btn_Gravar'],'FRM_A007RH',false);
  //esconde as tabsheets
  EscondeTabs;

  //indica se o usuario digitou algum nº de ato
  lDigAto := false;

  {**teste**}
  //nIdFichaFun := 6;

  //passa para a qry de movimentos a id da ficha funcional
  DTM_A007RH.QRY_099.ParamByName('nidtagffu').asInteger :=
  nIdFichaFun;
  DTM_A007RH.QRY_099.ExecSQL;
  if nIdMov <> 0 then
    DTM_A007RH.QRY_099.Locate('nidcadmov',nIdMov,[]);

  //passa para a qry a id da ficha funcional
  //para selecionar o cargo
  DTM_A007RH.QRY_073_1.ParamByName('nidtagffu').asInteger :=
  nIdFichaFun;
  DTM_A007RH.QRY_073_1.ExecSQL;

  //chama procedimento para ativar a tab do movimento
  DBL_NIDTBXTPMChange(Sender);

  //altera a tabela salarial para o movimento
  AlteraTabSalarial(LkpClasseSlr,LkpNivSlr);

  //verifica se o movimento pode ser deletado ou alterado
  VerAlteraMov;

  FRM_A007RH.OnShow := nil;
 {é atribuido ao OnShow do Form o valor nil para que o mesmo seja executado apenas uma vez}
 {pelo fato que se outra aplicação for chamada pela tecla F3, e ao retornar da aplicação que foi chamada pela tecla}
 {o evento OnShow deste form não acontecerá, ou seja não será executado, para permanecer o mesmo status da aplicação}
 {quando o F3 foi chamado}

end;

procedure TFRM_A007RH.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  //rotina para fechamento do form
  Action:= oControlForms.Saidas(Self,[DTM_A007RH],DTM_A007RH.DTS_099.DataSet);
end;

procedure TFRM_A007RH.Btn_LocalizarClick(Sender: TObject);
begin
  //chama pesquisa padrao
  MplCtrl.Pesquisa(DTM_A007RH.Qry_099,true,'','nidtagffu = '+IntToStr(nIdFichaFun));
  //chama procedimento para ativar a tab do movimento
  DBL_NIDTBXTPMChange(Sender);
end;

procedure TFRM_A007RH.Btn_AvancarClick(Sender: TObject);
begin
  //avanca para o proximo movimento
  DBGenerica(DTM_A007RH.Dts_099,'Conexao',0,3,NIL,false);
  //seleciona a tab correta do movimento
  DBL_NIDTBXTPMChange(Sender);
  //altera a tabela salarial para o movimento
  AlteraTabSalarial(LkpClasseSlr,LkpNivSlr);
  //verifica se o movimento pode ser deletado ou alterado
  VerAlteraMov;
  //se o movimento possui cargo
  if (DTM_A007RH.Dts_099.DataSet.FieldByName('nidcadcrg').value <> null) and
     (LkpCargo <> nil) then
    //posiciona o dbLookup no cargo correto
    LkpCargo.KeyValue :=
    DTM_A007RH.Dts_099.DataSet.FieldByName('nidcadcrg').value;
  //se o movimento possui departamento/setor
  if DTM_A007RH.Dts_099.DataSet.FieldByName('nidtagdst').value <> null then
    //posiciona o dbLookup no departamento correto
    DBL_NIDTAGDST.KeyValue := DTM_A007RH.Dts_099.DataSet.FieldByName('nidtagdst').value;

  //se houver uma revogação atualiza o lookup de mov. de revogação
  if DTM_A007RH.Dts_099.DataSet.FieldByName('nidtpmrvg').value <> null then
    DBL_NIDTBXTPM_1.KeyValue := DTM_A007RH.Dts_099.DataSet.FieldByName('nidtpmrvg').value;

    //se houver uma revogação atualiza o lookup de mov. de revogação
  if DTM_A007RH.Dts_099.DataSet.FieldByName('nidtpmrvg').value <> null then
    DBL_NIDTBXTPM_1.KeyValue := DTM_A007RH.Dts_099.DataSet.FieldByName('nidtpmrvg').value;


end;

procedure TFRM_A007RH.Btn_RetrocederClick(Sender: TObject);
begin
  //retrocede para o registro anterior
  DBGenerica(DTM_A007RH.Dts_099,'Conexao',0,2,NIL,false);
  //seleciona a tabsheet do movimentno
  DBL_NIDTBXTPMChange(Sender);
  //altera a tabela salarial para o movimento atual
  AlteraTabSalarial(LkpClasseSlr,LkpNivSlr);
  //verifica se o movimento pode ser deletado ou alterado
  VerAlteraMov;
  //posiciona lookups no item correto
  AtualizaLookup;

end;

procedure TFRM_A007RH.Btn_IncluirClick(Sender: TObject);
begin
  //inclui um novo movimento
  DBGenerica(DTM_A007RH.Dts_099,'Conexao',1,0,nil,false);
  //atribui valor da id do movimento
  DTM_A007RH.DTS_099.DataSet.FieldByName('nidcadmov').AsInteger:=0;
  //atribui ao movimento a ficha funcional
  DTM_A007RH.DTS_099.DataSet.FieldByName('nidtagffu').AsInteger:= nIdFichaFun;
  //muda o status dos botões
  Botoes(['Btn_Cancelar','Btn_Sair','Btn_Gravar'],'FRM_A007RH',true);
  //seleciona a tabsheet para o movimento
  DBL_NIDTBXTPMChange(Sender);
  CBE_CNROATO.Text := '';
  CBE_CNROEDITAL.Text := '';
  CBE_CNROEDITAL1.Text := '';
end;

procedure TFRM_A007RH.Btn_AlterarClick(Sender: TObject);
begin
  //muda o status dos botões
  Botoes(['Btn_Cancelar','Btn_Gravar','Btn_Sair'],'FRM_A007RH',true);
  //coloca em estado de alteração o movimento corrente
  DBGenerica(DTM_A007RH.Dts_099,'Conexao',2,0,nil,false);
  //se for a tabsheet de nomeacao e a matricula estiver em branco
  if (PGC_MOV.ActivePageIndex = 0) and (DED_NMATRICULA.Text = '') then
    //atribui a matricula da ficha na nomeação do funcionario
    DED_NMATRICULA.Text := IntToStr(nMatriculaFicha);

end;

procedure TFRM_A007RH.Btn_GravarClick(Sender: TObject);
begin
  //verifica se todos os campos obrigatorios estão preenchidos
  if LiberadoGravacao(FRM_A007RH,DTM_A007RH.DTS_099) then
    begin
      //se o movimento necessida nº de ato
      if (DTM_A007RH.Dts_096.DataSet.FieldByName('cato').asString = 'S') then
        //se o usuário não informou um número de ato
        if (Trim(CBE_CNROATO.Text) = '') then
          begin
            //avisa ao usuário
            MessageDlg('Você deve informar um número de ato!',mtInformation,[mbOk],0);
            //retorna o foco ao número do ato
            CBE_CNROATO.SetFocus;
            //sai da rotina
            exit;
          end
        else
          //verifica o número de ato informado pelo usuário
          CBE_CNROATOExit(Sender);
      //se for a tabsheet de vantagens
      if PGC_MOV.ActivePageIndex = 15 then
        begin
           //atualiza o conteudo dos controles no registro
           DTM_A007RH.Dts_099.DataSet.UpdateRecord;
           //verifica o percentual informado pelo usuário
           DED_NPERVANTAGExit(Sender);
        end;

      //se for a tabsheet de nomeacao
      if PGC_MOV.ActivePageIndex = 0 then
        CBE_CNROEDITALExit(CBE_CNROEDITAL)
      else
      //se for a tabsheet de contração
      if PGC_MOV.ActivePageIndex = 0 then
        CBE_CNROEDITALExit(CBE_CNROEDITAL1);

      //grava o movimento
      DBGenerica(DTM_A007RH.Dts_099,'Conexao',4,0,NIL,false);
      //posiciona lookups no item correto
      AtualizaLookup;
      //se o usuário gravou as informações
      if lResp then
        //muda o status dos botões
        Botoes(['Btn_Gravar','Btn_Cancelar'],'FRM_A007RH',false);

    end;
end;

procedure TFRM_A007RH.Btn_CancelarClick(Sender: TObject);
begin
  with DTM_A007RH do
    begin
      //cancela a a operação no movimento atual
      DBGenerica(Dts_099,'Conexao',3, 0,nil,false);
      //muda o status dos botões
      Botoes(['Btn_Cancelar', 'Btn_Gravar'],'FRM_A007RH',false);
      //verifica se o movimento pode ser deletado ou alterado
      VerAlteraMov;
      //seleciona a tabsheet para o movimento corrente
      DBL_NIDTBXTPMChange(Sender);
      //altera a tabela salarial para o movimento atual
      AlteraTabSalarial(LkpClasseSlr,LkpNivSlr);
      //posiciona lookups no item correto
      AtualizaLookup;
    end;
end;

procedure TFRM_A007RH.Btn_ExcluirClick(Sender: TObject);
begin
  with DTM_A007RH do
    begin
      //exclui movimento atual
      DBGenerica(Dts_099,'Conexao',5,0,NIL,false);
      //seleciona a tabsheet do movimento
      DBL_NIDTBXTPMChange(Sender);
      //altera tabela salarial
      AlteraTabSalarial(LkpClasseSlr,LkpNivSlr);
      //posiciona lookups no item correto
      AtualizaLookup;
      //verifica se o movimento pode ser deletado ou alterado
      VerAlteraMov;
    end;
end;

procedure TFRM_A007RH.BTN_SAIRClick(Sender: TObject);
begin
  close;
end;

procedure TFRM_A007RH.DBL_NIDTBXTPMChange(Sender: TObject);
begin
  with DTM_A007RH do
    begin
      //se existir alguma tabsheet ativa
      if PGC_MOV.ActivePage <> nil then
        //esconde tabsheet ativa
        PGC_MOV.ActivePage.TabVisible := false;
      //se houver algum tipo de movimento
      if DBL_NIDTBXTPM.KeyValue <> null then
        begin
          //se o movimento não necessita de nº ato
          //desabilida os controles de entrada de dados
          //sobre o ato
          CBE_CNROATO.Enabled := DTS_096.DataSet.FieldByName('cato').asString = 'S';
          DED_DDTEFEITOS.Enabled := CBE_CNROATO.Enabled;
          CBE_CNROATO_1.Enabled := CBE_CNROATO.Enabled;
          DED_DDTEFEITOS_1.Enabled := CBE_CNROATO.Enabled;
          DBL_NIDTBXTPM_1.Enabled := CBE_CNROATO.Enabled;
          DBT_CDESCRITAT.Enabled := CBE_CNROATO.Enabled;
          DBT_CDESCRITAT_1.Enabled := CBE_CNROATO.Enabled;
          LBL_EFEITRVG.Enabled := CBE_CNROATO.Enabled;
          LBL_EFEIATOS.Enabled := CBE_CNROATO.Enabled;
          LBL_TPMOVTO.Enabled := CBE_CNROATO.Enabled;

          //se o movimento estiver em inserção ou alteração
          if DTS_099.DataSet.State in [dsEdit,dsInsert] then
            begin
              //limpa conteudo de campos do movimento
              AlteraMovto;
              //se o movimento não necessida de ato
              if not(CBE_CNROATO.Enabled) then
               begin
                 //seleciona registro "0" do cad. de atos
                 QRY_069.ParamByName('nidcadato').asInteger := 0;
                 //retira a id do ato, do movimento atual
                 QRY_099.FieldByName('nidcadato').value := null;
                 //seleciona ato
                 QRY_069.ExecSQL;
               end;
            end;
          //ativa a tabsheet correspondente ao movimento
          PGC_MOV.ActivePageIndex := DTS_096.DataSet.FieldByName('nnrotab').asInteger;
          //mostra a tabsheet
          PGC_MOV.ActivePage.TabVisible := true;
          //se for tabsheet de vantagens
          if PGC_MOV.ActivePageIndex = 15 then
            begin
              //pega id do tipo de movimento
              QRY_098.ParamByName('nidtbxtpm').Value :=
              DBL_NIDTBXTPM.KeyValue;
              //seleciona a vantagem atrelada ao tipo de movimento
              QRY_098.ExecSQL;
            end;
        end;
    end;
end;

procedure TFRM_A007RH.DBL_NIDTBXGMVChange(Sender: TObject);
begin
  //seleciona item
  DBL_NIDTBXTPM.KeyValue := 0;
  //seleciona a tabsheet do movimento corrente
  DBL_NIDTBXTPMChange(Sender);
end;

procedure TFRM_A007RH.CBE_CNROATOExit(Sender: TObject);
begin
  with DMControle, DTM_A007RH do
    begin
      //se o tabela de movimento estiver em edição ou inserção e o
      //usuario digitou
      if (DTS_099.DataSet.State in [dsInsert,dsEdit]) and
         (lDigAto) then
        begin
          //se a pesquisa foi executada
          if FRM_PESQUISA <> nil then
            begin
              //atribui o ato ao movimento
              DTS_099.DataSet.FieldByName('nidcadato').asInteger :=
              FRM_PESQUISA.PesqRetorno.ValorRetorno;
              //atualiza a interface do usuario
              QRY_069.ParamByName('nidcadato').asInteger :=
              FRM_PESQUISA.PesqRetorno.ValorRetorno;
              QRY_069.ExecSQL;
              CBE_CNROATO.Text := DTS_069.DataSet.FieldByName('cnroato').DisplayText;
              lDigAto := false;
              exit;
            end;
          //se o usuario não informou o número de ato
          if Trim(CBE_CNROATO.Text) = '' then
            begin
              //atualiza a interface do usuario
              QRY_069.ParamByName('nidcadato').asInteger := 0;
              QRY_099.FieldByName('nidcadato').value := null;
              QRY_069.ExecSQL;
              //sai da rotina
              exit;
            end;
          //pesquisa na tabela de atos o número digitado
          PrepareQryTemp('select nidcadato from cadato where cnroato = ' + QuotedStr(CBE_CNROATO.Text));
          //não encontrou nenhum ato com o número digitado
          if QryTemp.IsEmpty then
            begin
              //avisa ao usuário
              MessageDlg('Número de ato não cadastrado!',mtInformation,[mbOk],0);
              //volta o focus para digitação do outro número de ato
              CBE_CNROATO.SetFocus;
              //limpa consulta temporaria
              QryTemp.Close;
              QryTemp.SQL.Clear;
              //para a execução
              Abort;
            end
          else
            begin
              if QryTemp.RecordCount = 1 then
                begin
                  //atribui o ato ao movimento
                  DTS_099.DataSet.FieldByName('nidcadato').asInteger :=
                  QryTemp.FieldByName('nidcadato').asInteger;
                  //atualiza a interface do usuario
                  QRY_069.ParamByName('nidcadato').asInteger :=
                  QryTemp.FieldByName('nidcadato').asInteger;
                  QRY_069.ExecSQL;
                  //limpa consulta temporaria
                  QryTemp.Close;
                  QryTemp.SQL.Clear;
                  lDigAto := false;
                end
              else
                begin
                  FocoCompo := CBE_CNROATO;
                  CBE_CNROATO.SetFocus;
                  if MplCtrl.Pesquisa(nil,false,'NIDCADATO','','CADATO.CNROATO = "'+CBE_CNROATO.Text+'";EXEC',true).AcaoUsuario = 2 then
                    begin
                      CBE_CNROATO.SetFocus;
                      Abort;
                    end
                  else
                    begin
                      //atribui o ato ao movimento
                      DTS_099.DataSet.FieldByName('nidcadato').asInteger :=
                      StrToInt(CBE_CNROATO.Text);
                      //atualiza a interface do usuario
                      QRY_069.ParamByName('nidcadato').asInteger :=
                      StrToInt(CBE_CNROATO.Text);
                      QRY_069.ExecSQL;
                      CBE_CNROATO.Text := DTS_069.DataSet.FieldByName('cnroato').DisplayText;
                      lDigAto := false;
                    end;
                end;
            end;
        end;

    end;
end;

procedure TFRM_A007RH.CBE_CNROATOChange(Sender: TObject);
begin
  with DTM_A007RH do
    begin
      lDigAto := (DTS_099.DataSet.State in [dsInsert,dsEdit]);
      //se estiver em edição ou inserção de um movimento
      //e o compomente que esta executando o evento for
      //o CBE_CNROATO_1
      if (DTS_099.DataSet.State in [dsInsert,dsEdit]) and
         (Sender = CBE_CNROATO_1) then
        //se o usuario apagou o numero do ato de revogacão
        if CBE_CNROATO_1.GetTextLen = 0 then
          begin
            //retira o ato de revogação da qry
            QRY_069_1.ParamByName('nidatorvg').value := null;
            QRY_069_1.ExecSQL;
            DTS_099.DataSet.FieldByName('nidatorvg').Value := null;
            DBL_NIDTBXTPM_1.KeyValue := 0;
            DTS_099.DataSet.FieldByName('nidtpmrvg').Value := null;
          end;
    end;

end;

procedure TFRM_A007RH.CBE_CNROATOButtonClick(Sender: TObject);
begin
 VerTeclas(VK_F2);
end;

procedure TFRM_A007RH.CBE_CNROATO_1Exit(Sender: TObject);
begin
  with DMControle, DTM_A007RH do
    begin
      //se o usuario não informou o número de ato
      if Trim(CBE_CNROATO_1.Text) = '' then
        //sai da rotina
        exit;
      //se o tabela de movimento estiver em edição ou inserção e o
      //usuario digitou algum numero de ato
      if (DTS_099.DataSet.State in [dsInsert,dsEdit]) and
         (lDigAto) then
        begin
          //se a pesquisa foi executada
          if FRM_PESQUISA <> nil then
            begin
              //atribui o ato ao movimento
              DTS_099.DataSet.FieldByName('nidatorvg').asInteger :=
              FRM_PESQUISA.PesqRetorno.ValorRetorno;
              //atualiza a interface do usuario
              QRY_069_1.ParamByName('nidatorvg').asInteger :=
              FRM_PESQUISA.PesqRetorno.ValorRetorno;
              QRY_069_1.ExecSQL;
              CBE_CNROATO_1.Text := DTS_069_1.DataSet.FieldByName('cnroato').DisplayText;
              lDigAto := false;
              //se o movimento escolhido possui movimento de revogação
              if DTS_096.DataSet.FieldByName('nidtpmrvg').value <> null then
                begin
                  //seleciona no combo o movimento de revogação
                  DBL_NIDTBXTPM_1.KeyValue :=
                  DTS_096.DataSet.FieldByName('nidtpmrvg').value;
                  DTS_099.DataSet.FieldByName('nidtpmrvg').value :=
                  DTS_096.DataSet.FieldByName('nidtpmrvg').value;
                end
              else
                begin
                  //seleciona item em branco
                  DBL_NIDTBXTPM_1.KeyValue := 0;
                  //retira do movimento o ato de revogação
                  DTS_099.DataSet.FieldByName('nidtpmrvg').value := null;
                end;
              exit;
            end;
          //pesquisa na tabela de atos o número digitado
          PrepareQryTemp('select nidcadato from cadato where cnroato = ' + QuotedStr(CBE_CNROATO_1.Text));
          //não encontrou nenhum ato com o número digitado
          if QryTemp.IsEmpty then
            begin
              //avisa ao usuário
              MessageDlg('Número de ato não cadastrado!',mtInformation,[mbOk],0);
              //volta o focus para digitação do outro número de ato
              CBE_CNROATO_1.SetFocus;
            end
          else
            begin
              if QryTemp.RecordCount = 1 then
                begin
                  //atribui o ato ao movimento
                  DTS_099.DataSet.FieldByName('nidatorvg').asInteger :=
                  QryTemp.FieldByName('nidcadato').asInteger;
                  //atualiza a interface do usuario
                  QRY_069_1.ParamByName('nidatorvg').asInteger :=
                  QryTemp.FieldByName('nidcadato').asInteger;
                  QRY_069_1.ExecSQL;
                  lDigAto := false;
                end
              else
                begin
                  FocoCompo := CBE_CNROATO_1;
                  if MplCtrl.Pesquisa(nil,false,'NIDCADATO','','CADATO.CNROATO = "'+CBE_CNROATO_1.Text+'";EXEC',true).AcaoUsuario = 2 then
                    begin
                      CBE_CNROATO_1.SetFocus;
                      Abort;
                    end
                  else
                    begin
                      //atribui o ato ao movimento
                      DTS_099.DataSet.FieldByName('nidatorvg').asInteger :=
                      StrToInt(CBE_CNROATO_1.Text);
                      //atualiza a interface do usuario
                      QRY_069_1.ParamByName('nidatorvg').asInteger :=
                      StrToInt(CBE_CNROATO_1.Text);
                      QRY_069_1.ExecSQL;
                      CBE_CNROATO_1.Text := DTS_069_1.DataSet.FieldByName('cnroato').DisplayText;
                      lDigAto := false;
                    end;
                end;

              //se o movimento escolhido possui movimento de revogação
              if DTS_096.DataSet.FieldByName('nidtpmrvg').value <> null then
                begin
                  //seleciona no combo o movimento de revogação
                  DBL_NIDTBXTPM_1.KeyValue :=
                  DTS_096.DataSet.FieldByName('nidtpmrvg').value;
                  DTS_099.DataSet.FieldByName('nidtpmrvg').value :=
                  DTS_096.DataSet.FieldByName('nidtpmrvg').value;
                end
              else
                begin
                  //seleciona item em branco
                  DBL_NIDTBXTPM_1.KeyValue := 0;
                  //retira do movimento o ato de revogação
                  DTS_099.DataSet.FieldByName('nidtpmrvg').value := null;
                end;
            end;
          //limpa a consulta temporaria
          QryTemp.Close;
          QryTemp.SQL.Clear;
        end;

    end;

end;

procedure TFRM_A007RH.DBL_NIDTBXSLRChange(Sender: TObject);
begin
  AlteraTabSalarial(DBL_NIDTAGSLR,DBL_NIDTAGSLR_1);
end;

procedure TFRM_A007RH.DBL_NIDTAGSLR_1Change(Sender: TObject);
begin
  AlteraNivel(Sender);
end;

procedure TFRM_A007RH.CBE_CNROEDITALChange(Sender: TObject);
begin
  lDigEdital := (DTM_A007RH.DTS_099.DataSet.State in [dsEdit,dsInsert]);
end;

procedure TFRM_A007RH.CBE_CNROEDITALExit(Sender: TObject);
 var
   lAborta : Boolean;
begin
  with DTM_A007RH, DMControle do
    begin

      if TComboEdit(Sender).Text = '' then
        exit;
      lAborta := false;
      //se o movimento estiver em edição ou inserção e
      //o usuário digitou algum número de edital
      if (DTS_099.DataSet.State in [dsEdit,dsInsert]) and
         (lDigEdital) then
        begin
          //busca o número do edital informado
          PrepareQryTemp('select nidtbxedi from tbxedi where cnroedital = ' + QuotedStr(TComboEdit(Sender).Text));
          //se não encontrou
          if QryTemp.IsEmpty then
            begin
              //avisa ao usuário
              MessageDlg('Número de edital não cadastrado!',mtInformation,[mbOk],0);
              //retorno o focus para o campo de edital
              TComboEdit(Sender).SetFocus;
              lAborta := true;
            end
          else
            begin
              //atribui ao movimento a id do edital
              DTS_099.DataSet.FieldByName('nidtbxedi').asInteger :=
              QryTemp.FieldByName('nidtbxedi').asInteger;
              //atribui ao parametro da qry de edital
              //a id do edital encontrado
              QRY_083.ParamByName('nidtbxedi').asInteger :=
              QryTemp.FieldByName('nidtbxedi').asInteger;
              //atualiza a qry de edital
              QRY_083.ExecSQL;
            end;
          //limpa consulta temporaria
          QryTemp.Close;
          QryTemp.SQL.Clear;
          if lAborta then
            abort;
        end;
    end;
end;

procedure TFRM_A007RH.DBL_NIDTBXTCRChange(Sender: TObject);
begin
  AlteraTipoCargo(DBL_NIDCADCRG);
end;

procedure TFRM_A007RH.DBL_NIDCADCRGChange(Sender: TObject);
begin
  AlteraCargo(Sender);
end;

procedure TFRM_A007RH.AlteraTipoCargo(Sender: TRxDBLookupCombo);
begin
  with DTM_A007RH do
    begin
      //se o movimento estiver em edição ou inserção
      if (DTS_099.DataSet.State in [dsEdit,dsInsert]) then
        begin
          if (DBL_NIDTBXTCR.Text = 'EFETIVO') or (DBL_NIDTBXTCR.Text = 'CELETISTA') then
            oControlForms.SetCompomentRequerido('FRM_A007RH',CBE_CNROEDITAL)
          else
            oControlForms.RemoveCompomentRequerido(CBE_CNROEDITAL);

          //seleciona item em branco
          Sender.KeyValue := 0;
          //retira o cargo atual do movimento
          DTS_099.DataSet.FieldByName('nidcadcrg').Value := null;
          //retira o grupo ocupacional
          DTS_099.DataSet.FieldByName('nidtbxgro').Value := null;
          //retira o subgrupo ocupacional
          DTS_099.DataSet.FieldByName('nidtbxsgo').Value := null;
          //passa parametro para a qry de grupo ocupacional
          QRY_086.ParamByName('nidtbxgro').value := null;
          //atualiza a qry
          QRY_086.ExecSQL;
          //passa parametro para a qry de subgrupo ocupacional
          QRY_091.ParamByName('nidtbxsgo').Value := null;
          //atualiza a qry
          QRY_091.ExecSQL;
        end;
    end;
end;

procedure TFRM_A007RH.DBL_NIDTBXTCR_1Change(Sender: TObject);
begin
  AlteraTipoCargo(DBL_NIDCADCRG_1);
end;

procedure TFRM_A007RH.AlteraCargo(Sender: TObject);
begin
  with DTM_A007RH do
    begin
      //se o movimento estiver em edição ou inserção
      if (DTS_099.DataSet.State in [dsEdit,dsInsert]) then
        begin
          //atribui ao movimento o grupo ocupacional
          //para atualização de interface
          DTS_099.DataSet.FieldByName('nidtbxgro').Value :=
          //atribui ao movimento o subgrupo ocupacional
          //para atualização de interface
          DTS_073.DataSet.FieldByName('nidtbxgro').Value;
          DTS_099.DataSet.FieldByName('nidtbxsgo').Value :=
          DTS_073.DataSet.FieldByName('nidtbxsgo').Value;
          //atualiza a qry de grupo o ocupacional
          QRY_086.ParamByName('nidtbxgro').value :=
          DTS_073.DataSet.FieldByName('nidtbxgro').Value;
          QRY_086.ExecSQL;
          //atualiza a qry de subgrupo ocupacional
          QRY_091.ParamByName('nidtbxsgo').Value :=
          DTS_073.DataSet.FieldByName('nidtbxsgo').Value;
          QRY_091.ExecSQL;
        end;
    end;
end;

procedure TFRM_A007RH.AlteraClasseSal(Sender: TRxDBLookupCombo);
begin
  with DTM_A007RH do
    begin
      //se o movimento estiver em edição ou inserção
      //e o parametro for valido
      if (DTS_099.DataSet.State in [dsEdit,dsInsert]) and
         (Sender <> nil)then
        begin
          //seleciona item em branco no dbLookup
          Sender.KeyValue := 0;
          //retira o valor salarial do movimento
          DTS_099.DataSet.FieldByName('nvalorslr').value := null;
        end;
    end;
end;

procedure TFRM_A007RH.AlteraTabSalarial(LookupClasse, LookupNiveis: TRxDBLookupCombo);
begin
  with DTM_A007RH do
    begin
      //se não houver um dbLookup de classe salarial
      if LookupClasse = nil then
        //sai da rotina
        exit;
      //se o movimento estiver em edição ou inserção
      if (DTS_099.DataSet.State in [dsEdit,dsInsert]) then
        //seleciona item em branco no dbLookup de classe salarial
        LookupClasse.KeyValue := 0;
      //se a tabela salarial não possuir classe
      if QRY_080.FieldByName('cclasse').value = null then
        begin
          //seleciona os niveis com não possue classe
          QRY_080_1.SQL.Clear;
          QRY_080_1.SQL.Add('select nnivel, nidtagslr, nvalorslr from');
          QRY_080_1.SQL.Add('tagslr where nidtbxslr = :nidtbxslr');
          QRY_080_1.SQL.Add('and cclasse is null');
          QRY_080_1.ParamByName('nidtbxslr').asInteger :=
          QRY_092.FieldByName('nidtbxslr').asInteger;
          QRY_080_1.ExecSQL;
        end
      else
        begin
          //seleciona os niveis de uma classe
          QRY_080_1.SQL.Clear;
          QRY_080_1.SQL.Add('select nnivel, nidtagslr, nvalorslr from');
          QRY_080_1.SQL.Add('tagslr where nidtbxslr = :nidtbxslr');
          QRY_080_1.SQL.Add('and cclasse = :cclasse');
          QRY_080_1.ParamByName('nidtbxslr').asInteger :=
          QRY_092.FieldByName('nidtbxslr').asInteger;
          QRY_080_1.ParamByName('cclasse').asString :=
          QRY_080.FieldByName('cclasse').asString;
          QRY_080_1.ExecSQL;
        end;
      //chama rotina para alterar classe salarial  
      AlteraClasseSal(LookupNiveis);
    end;

end;

procedure TFRM_A007RH.DBL_NIDTAGSLRChange(Sender: TObject);
begin
  AlteraClasseSal(DBL_NIDTAGSLR_1);
end;

procedure TFRM_A007RH.AlteraNivel(Sender: TObject);
begin
  with DTM_A007RH do
    begin
      //se o movimento estiver em inserção ou edição
      if DTS_099.DataSet.State in [dsEdit,dsInsert] then
        //atribui o valor do salario para o movimento
        DTS_099.DataSet.FieldByName('nvalorslr').value :=
        DTS_080_1.DataSet.FieldByName('nvalorslr').value;
    end;

end;

procedure TFRM_A007RH.TabSheet1Show(Sender: TObject);
begin
  LkpCargo := DBL_NIDCADCRG;
  LkpClasseSlr := DBL_NIDTAGSLR;
  LkpNivSlr := DBL_NIDTAGSLR_1;
  LkpTabSlr := DBL_NIDTBXSLR;
end;

procedure TFRM_A007RH.TabSheet2Show(Sender: TObject);
begin
  LkpCargo := DBL_NIDCADCRG_1;
  LkpClasseSlr := DBL_NIDTAGSLR_2;
  LkpNivSlr := DBL_NIDTAGSLR_3;
  LkpTabSlr := DBL_NIDTBXSLR_1;
  if DTM_A007RH.DTS_099.DataSet.State in [dsInsert,dsEdit] then
    begin
      if TTabSheet(Sender).Caption = 'Nomeação' then
        CBE_CNROEDITAL.Text := '';
      if TTabSheet(Sender).Caption = 'Contratação' then
        CBE_CNROEDITAL1.Text := '';
    end;
end;

procedure TFRM_A007RH.DBL_NIDTBXSLR_1Change(Sender: TObject);
begin
    AlteraTabSalarial(DBL_NIDTAGSLR_2,DBL_NIDTAGSLR_3);
end;

procedure TFRM_A007RH.DBL_NIDTAGSLR_2Change(Sender: TObject);
begin
  AlteraClasseSal(DBL_NIDTAGSLR_3);
end;

procedure TFRM_A007RH.DBL_NIDTAGSLR_3Change(Sender: TObject);
begin
 AlteraNivel(Sender);
end;

procedure TFRM_A007RH.DBL_NIDTBXTCR_2Change(Sender: TObject);
begin
 AlteraTipoCargo(DBL_NIDCADCRG_3);
end;

procedure TFRM_A007RH.TabSheet3Show(Sender: TObject);
begin
  LkpCargo := DBL_NIDCADCRG_3;
  LkpClasseSlr := NIL;
  LkpNivSlr := NIL;
  LkpTabSlr := NIL;
end;

procedure TFRM_A007RH.TabSheet4Show(Sender: TObject);
begin
  LkpCargo := DBL_NIDCADCRG_4;
  LkpClasseSlr := NIL;
  LkpNivSlr := NIL;
  LkpTabSlr := NIL;
end;

procedure TFRM_A007RH.DBL_NIDTBXTCR_3Change(Sender: TObject);
begin
  AlteraTipoCargo(DBL_NIDCADCRG_4);
end;

procedure TFRM_A007RH.DBL_NIDTBXTCR_4Change(Sender: TObject);
begin
   AlteraTipoCargo(DBL_NIDCADCRG_5);
end;

procedure TFRM_A007RH.TabSheet5Show(Sender: TObject);
begin
  LkpCargo := DBL_NIDCADCRG_5;
  LkpClasseSlr := NIL;
  LkpNivSlr := NIL;
  LkpTabSlr := NIL;
end;

procedure TFRM_A007RH.DBL_NIDTBXTCR_5Change(Sender: TObject);
begin
   AlteraTipoCargo(DBL_NIDCADCRG_6);
end;

procedure TFRM_A007RH.TabSheet6Show(Sender: TObject);
begin
  LkpCargo := DBL_NIDCADCRG_6;
  LkpClasseSlr := NIL;
  LkpNivSlr := NIL;
  LkpTabSlr := NIL;
end;

procedure TFRM_A007RH.EscondeTabs;
  var
    i : Integer;
begin
  for i := 0 to PGC_MOV.PageCount - 1 do
    PGC_MOV.Pages[i].TabVisible := false;
end;

procedure TFRM_A007RH.DBL_NIDTBXSLR_2Change(Sender: TObject);
begin
  AlteraTabSalarial(DBL_NIDTAGSLR_4,DBL_NIDTAGSLR_5);
end;

procedure TFRM_A007RH.DBL_NIDTAGSLR_4Change(Sender: TObject);
begin
  AlteraClasseSal(DBL_NIDTAGSLR_5);
end;

procedure TFRM_A007RH.TabSheet8Show(Sender: TObject);
begin
  LkpCargo := NIL;
  LkpClasseSlr := DBL_NIDTAGSLR_4;
  LkpNivSlr := DBL_NIDTAGSLR_5;
  LkpTabSlr := DBL_NIDTBXSLR_2;
end;

procedure TFRM_A007RH.TabSheet7Show(Sender: TObject);
begin
  LkpCargo := NIL;
  LkpClasseSlr := NIL;
  LkpNivSlr := NIL;
  LkpTabSlr := NIL;
end;

procedure TFRM_A007RH.DBL_NIDTAGSLR_5Change(Sender: TObject);
begin
   AlteraNivel(Sender);
end;

procedure TFRM_A007RH.CBE_CCPFCNPJExit(Sender: TObject);
begin
  with DTM_A007RH do
    begin
      //se o movimento estiver em edição ou inserção
      if DTS_099.DataSet.State in [dsInsert,dsEdit] then
        begin
          //se o usuário não informou nenhum cpf
          if LimpaMask(CBE_CCPFCNPJ.Text) = '' then
            //sai da rotina
            exit;
          //se o cpf digitado for invalido
          if not(ValidaCpf(LimpaMask(CBE_CCPFCNPJ.Text))) then
            begin
              //avisa ao usuário
              MessageDlg('Número de CPF invalido!',mtInformation,[mbOk],0);
              //retorna o focus para o campo cpf
              CBE_CCPFCNPJ.SetFocus;
              //sai da rotina
              exit;
            end;
          //atualiza qry com o cpf informado
          QRY_103.ParamByName('ccpfcnpj').asString :=
          LimpaMask(CBE_CCPFCNPJ.Text);
          QRY_103.ExecSQL;
          //se encontrou o cpf informado
          if QRY_103.IsEmpty then
            begin
              //cria a aplicação de obto
              Application.CreateForm(TDTM_A008RH,DTM_A008RH);
              Application.CreateForm(TFRM_A008RH,FRM_A008RH);
              //passa o cpf como parametro
              FRM_A008RH.cCpfCnpj := CBE_CCPFCNPJ.Text;
              //ativa a aplicaçãp de obito
              oControlForms.AtivaForm('FRM_A008RH',shModal,NIL,false,nil);
              QRY_103.ExecSQL;
            end;
          //pega a id do obito
          QRY_103_1.ParamByName('nidtagobt').asInteger :=
          QRY_103.FieldByName('nidtagobt').asInteger;
          //passa id do obto para o movimento
          QRY_099.FieldByName('nidtagobt').asInteger :=
          QRY_103.FieldByName('nidtagobt').asInteger;
          //atualiza a qry de obitos
          QRY_103_1.ExecSQL;
        end;
    end;
end;

procedure TFRM_A007RH.DBL_NIDTBXTCR_7Change(Sender: TObject);
begin
  AlteraTipoCargo(DBL_NIDCADCRG_8);
end;

procedure TFRM_A007RH.DBL_NIDTBXSLR_3Change(Sender: TObject);
begin
  AlteraTabSalarial(DBL_NIDTAGSLR_6,DBL_NIDTAGSLR_7);
end;

procedure TFRM_A007RH.DBL_NIDTAGSLR_6Change(Sender: TObject);
begin
  AlteraClasseSal(DBL_NIDTAGSLR_7);
end;

procedure TFRM_A007RH.DBL_NIDTAGSLR_7Change(Sender: TObject);
begin
 AlteraNivel(Sender);
end;

procedure TFRM_A007RH.TabSheet9Show(Sender: TObject);
begin
  LkpCargo := NIL;
  LkpClasseSlr := NIL;
  LkpNivSlr := NIL;
  LkpTabSlr := NIL;
end;

procedure TFRM_A007RH.TabSheet10Show(Sender: TObject);
begin
  LkpCargo := DBL_NIDCADCRG_8;
  LkpClasseSlr := DBL_NIDTAGSLR_6;
  LkpNivSlr := DBL_NIDTAGSLR_7;
  LkpTabSlr := DBL_NIDTBXSLR_3;
end;

procedure TFRM_A007RH.DBL_NIDTBXTCR_8Change(Sender: TObject);
begin
  AlteraTipoCargo(DBL_NIDCADCRG_9);
end;

procedure TFRM_A007RH.TabSheet11Show(Sender: TObject);
begin
  LkpCargo := DBL_NIDCADCRG_9;
  LkpClasseSlr := NIL;
  LkpNivSlr := NIL;
  LkpTabSlr := NIL;
end;

procedure TFRM_A007RH.TabSheet12Show(Sender: TObject);
begin
  LkpCargo := NIL;
  LkpClasseSlr := NIL;
  LkpNivSlr := NIL;
  LkpTabSlr := NIL;
end;

procedure TFRM_A007RH.TabSheet13Show(Sender: TObject);
begin
  LkpCargo := NIL;
  LkpClasseSlr := NIL;
  LkpNivSlr := NIL;
  LkpTabSlr := NIL;
end;

procedure TFRM_A007RH.TabSheet14Show(Sender: TObject);
begin
  LkpCargo := NIL;
  LkpClasseSlr := NIL;
  LkpNivSlr := NIL;
  LkpTabSlr := NIL;
end;

procedure TFRM_A007RH.TabSheet15Show(Sender: TObject);
begin
  LkpCargo := NIL;
  LkpClasseSlr := NIL;
  LkpNivSlr := NIL;
  LkpTabSlr := NIL;
end;

procedure TFRM_A007RH.DED_NPERVANTAGExit(Sender: TObject);
begin
  with DTM_A007RH do
    begin
      //se o movimento estiver em edição ou inserção
      if DTS_099.DataSet.State in [dsInsert,dsEdit] then
        begin
          //se a vantagem informada estiver fora da faixa
          if (DTS_099.DataSet.FieldByName('npervantag').value < DTS_098.DataSet.FieldByName('nperinic').value) or
             (DTS_099.DataSet.FieldByName('npervantag').value > DTS_098.DataSet.FieldByName('nperfim').value) then
            begin
              //avisa ao usuário
              MessageDlg('Percentual fora da faixa do percentual da vantagem!',mtInformation,[mbOk],0);
              //retorna o focus para o campo de % vantagem
              DED_NPERVANTAG.SetFocus;
              Abort;
            end;

        end;
    end;
end;

procedure TFRM_A007RH.TabSheet16Show(Sender: TObject);
begin
  LkpCargo := NIL;
  LkpClasseSlr := NIL;
  LkpNivSlr := NIL;
  LkpTabSlr := NIL;
end;

procedure TFRM_A007RH.TabSheet17Show(Sender: TObject);
begin
  LkpCargo := NIL;
  LkpClasseSlr := NIL;
  LkpNivSlr := NIL;
  LkpTabSlr := NIL;
end;

procedure TFRM_A007RH.DBL_NIDTBXORGChange(Sender: TObject);
begin
  DBL_NIDTAGODP.KeyValue := 0;
end;

procedure TFRM_A007RH.DBL_NIDTAGODPChange(Sender: TObject);
begin
  DBL_NIDTAGDST.KeyValue := 0;
end;

procedure TFRM_A007RH.TabSheet18Show(Sender: TObject);
begin
  LkpCargo := NIL;
  LkpClasseSlr := NIL;
  LkpNivSlr := NIL;
  LkpTabSlr := NIL;
end;

procedure TFRM_A007RH.DBL_NIDTBXSLR_4Change(Sender: TObject);
begin
  AlteraTabSalarial(DBL_NIDTAGSLR_8,DBL_NIDTAGSLR_9);
end;

procedure TFRM_A007RH.DBL_NIDTAGSLR_8Change(Sender: TObject);
begin
  AlteraClasseSal(DBL_NIDTAGSLR_9);
end;

procedure TFRM_A007RH.DBL_NIDTAGSLR_9Change(Sender: TObject);
begin
 AlteraNivel(Sender);
end;

procedure TFRM_A007RH.TabSheet19Show(Sender: TObject);
begin
  LkpCargo := NIL;
  LkpClasseSlr := NIL;
  LkpNivSlr := NIL;
  LkpTabSlr := NIL;
end;

procedure TFRM_A007RH.TabSheet20Show(Sender: TObject);
begin
  LkpCargo := NIL;
  LkpClasseSlr := DBL_NIDTAGSLR_8;
  LkpNivSlr := DBL_NIDTAGSLR_9;
  LkpTabSlr := DBL_NIDTBXSLR_4;
end;

procedure TFRM_A007RH.AlteraMovto;
begin
  //limpa campos da tabela de movimento
   with DTM_A007RH.DTS_099.DataSet do
     begin
       FieldByName('nmatricula').value := null;
       FieldByName('nvalorslr').value := null;
       FieldByName('ddatafim').value := null;
       FieldByName('nperbenefi').value := null;
       FieldByName('corgaoori').value := null;
       FieldByName('cmotivo').value := null;
       FieldByName('npervantag').value := null;
       FieldByName('ddtaqsini').value := null;
       FieldByName('ddtaqsfim').value := null;
       FieldByName('nidcadcrg').value := null;
       FieldByName('nidtbxedi').value := null;
       FieldByName('nidtbxagi').value := null;
       FieldByName('nidtbxtbi').value := null;
       FieldByName('nidtbxgrp').value := null;
       FieldByName('nidtbxltb').value := null;
       FieldByName('nidtagslr').value := null;
       //FieldByName('nidtbxtpm').value := null;
       FieldByName('nidtagobt').value := null;
       FieldByName('nidtagdst').value := null;
       FieldByName('nidtagodp').value := null;
       FieldByName('ddataini').value := null;
       //FieldByName('nidtbxgmv').value := null;
       FieldByName('nidtbxtcr').value := null;
       FieldByName('nidtbxgro').value := null;
       FieldByName('nidtbxsgo').value := null;
       FieldByName('nidtbxslr').value := null;
       FieldByName('nnivel').value := null;
       FieldByName('cclasse').value := null;
       FieldByName('nidtbxorg').value := null;
       FieldByName('nidtbxdpt').value := null;
       FieldByName('nidtbxset').value := null;
       FieldByName('cultcrgaps').value := null;
     end;
end;

procedure TFRM_A007RH.VerAlteraMov;
begin
  //se o movimento possuir id de envio para o TCE
  //desabilita os botões de alteracao e inclusao
  Btn_Alterar.Enabled :=
  (DTM_A007RH.DTS_099.DataSet.FieldByName('cEnviadoTC').asString = 'N') or
  (DTM_A007RH.DTS_099.DataSet.FieldByName('cEnviadRvg').asString = 'N');

  Btn_Excluir.Enabled := not(DTM_A007RH.DTS_099.DataSet.FieldByName('cEnviadoTC').asString = 'S');
end;

procedure TFRM_A007RH.AtualizaLookup;
begin
  with DTM_A007RH do
    begin
      //se o movimento possue cargo
      if (Dts_099.DataSet.FieldByName('nidcadcrg').value <> null) and
         (LkpCargo <> nil)  then
        //posiciona o lookup no cargo correto
        LkpCargo.KeyValue := Dts_099.DataSet.FieldByName('nidcadcrg').value;
      //se o movimento possue tabela salarial
      if (Dts_099.DataSet.FieldByName('nidtagslr').value <> null) and (LkpNivSlr <> nil) then
        //posiciona o lookup no nivel salarial correto
        LkpNivSlr.KeyValue := Dts_099.DataSet.FieldByName('nidtagslr').value;
      //se o movimento possui departamento/setor
      if DTM_A007RH.Dts_099.DataSet.FieldByName('nidtagdst').value <> null then
        //posiciona o dbLookup no departamento correto
        DBL_NIDTAGDST.KeyValue := Dts_099.DataSet.FieldByName('nidtagdst').value;
      //se houver uma revogação atualiza o lookup de mov. de revogação
      if DTM_A007RH.Dts_099.DataSet.FieldByName('nidtpmrvg').value <> null then
        DBL_NIDTBXTPM_1.KeyValue := DTM_A007RH.Dts_099.DataSet.FieldByName('nidtpmrvg').value;

    end;
end;

procedure TFRM_A007RH.FormCreate(Sender: TObject);
begin
  nIdMov := 0;
end;

procedure TFRM_A007RH.DBL_NIDTBXTBIChange(Sender: TObject);
begin
  if DTM_A007RH.DTS_094.DataSet.FieldByName('CPERCAPO').AsString = 'S' then
     DED_NPERBENEFI1.Enabled := true
  else DED_NPERBENEFI1.Enabled := false;

end;

end.
