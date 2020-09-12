{*******************************************************************************
 *                                                                             *
 *  Programador Leandro Ribas                                                  *
 *  09 de junho de 2002, M P Lopes Sistemas de Informação LTDA.                *
 *  Aplicação de Cadastro de Fornecedores para Administração Publica.          *
 *  Objetivo : Cadastrar fornecedores e controlar seus documentos necessarios  *
 *  para participar de licitações.                                             *
 *                                                                "vamo nessa" *
 *******************************************************************************
}
unit A001AD;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  lmdcctrl, lmdctrl, StdCtrls,lmdstdcS, ExtCtrls, Buttons,
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
  LMDMessageHint, RzLstBox, RzChkLst, Gauges, ToolEdit, Mask, DBCtrls,
  RxDBComb, LMDSimplePanel, PageControlEx, Grids, DBGrids, DBCGrids, Db,
  MemDS, Ora, RXDBCtrl, OraError, CtrlForms;


type
  TFRM_A001AD = class(TForm)
    Panel2: TPanel;
    Btn_Incluir: TSpeedButton;
    Btn_Alterar: TSpeedButton;
    Btn_Gravar: TSpeedButton;
    Btn_Imprimir: TSpeedButton;
    BTN_SAIR: TSpeedButton;
    Btn_Avancar: TSpeedButton;
    Btn_Retroceder: TSpeedButton;
    Btn_Cancelar: TSpeedButton;
    Btn_Excluir: TSpeedButton;
    LMDGroupBox2: TLMDGroupBox;
    DED_CNOMEGRL: TDBEdit;
    CBE_CCPFCNPJ: TComboEdit;
    Label1: TLabel;
    Label20: TLabel;
    DCB_CPEESOAFJ: TRxDBComboBox;
    Label2: TLabel;
    LBL_CNOMEFAN: TLabel;
    DED_CNOMEFAN: TDBEdit;
    DED_CRGIE: TDBEdit;
    LBL_CRGIE: TLabel;
    DED_CINSMUNICI: TDBEdit;
    LBL_CINSMUNI: TLabel;
    Label6: TLabel;
    DED_FONEGRL: TDBEdit;
    Label7: TLabel;
    DED_FAXGRL: TDBEdit;
    Label10: TLabel;
    Label24: TLabel;
    CBE_NCEP: TComboEdit;
    DED_CNOMELOG: TDBEdit;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    DED_CNUMERO: TDBEdit;
    DED_CCOMPLEMEN: TDBEdit;
    DED_CNOMEBAI: TDBEdit;
    Label17: TLabel;
    Label8: TLabel;
    DED_CNOMELOC: TDBEdit;
    DED_CSIGLAUF: TDBEdit;
    CBE_CCODCNAE: TComboEdit;
    LBL_CCODCNAE: TLabel;
    DED_CDESCCNAE: TDBEdit;
    IMl_Servidor: TImageList;
    Label32: TLabel;
    DED_CDDD_1: TDBEdit;
    Btn_RelFornec: TSpeedButton;
    Btn_Certificado: TSpeedButton;
    DBD_DDATVALIDAD: TDBDateEdit;
    Label4: TLabel;
    PGC_Fornecedor: TPageControlEx;
    TSH_CONTINFIN: TTabSheet;
    LMDSimplePanel6: TLMDSimplePanel;
    Lbl_res: TLabel;
    Label25: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    Label5: TLabel;
    DED_CTELFAX: TDBEdit;
    DED_CCONTATO: TDBEdit;
    DED_CEMAIL: TDBEdit;
    DED_CDDD: TDBEdit;
    DED_CTELCELULA: TDBEdit;
    DED_CTELCOM: TDBEdit;
    LMDPanelFill1: TLMDPanelFill;
    LMDPanelFill2: TLMDPanelFill;
    LMDPanelFill3: TLMDPanelFill;
    LMDPanelFill4: TLMDPanelFill;
    DED_NTOTEMPREG: TDBEdit;
    DED_NTOTTECNIC: TDBEdit;
    DED_NCAPSOCIAL: TDBEdit;
    DED_NFATUANUAL: TDBEdit;
    LMDPanelFill8: TLMDPanelFill;
    DBM_CATIVIDADE: TDBMemo;
    TSH_BANCOS: TTabSheet;
    LMDSimplePanel2: TLMDSimplePanel;
    Label9: TLabel;
    Label11: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    GRD_TBXBCO: TDBGrid;
    LMDPanelFill5: TLMDPanelFill;
    Btn_Retroceder1: TSpeedButton;
    Btn_Avancar1: TSpeedButton;
    Btn_Cancelar1: TSpeedButton;
    Btn_Excluir1: TSpeedButton;
    Btn_Gravar1: TSpeedButton;
    Btn_Incluir1: TSpeedButton;
    Btn_PrimeiroReg: TSpeedButton;
    Btn_UltimoReg: TSpeedButton;
    Btn_Alterar1: TSpeedButton;
    DED_CDESCBANCO: TDBEdit;
    DED_CAGENCIA: TDBEdit;
    DED_CCONTCORRE: TDBEdit;
    CBE_NCODBANCO: TComboEdit;
    TSH_DOCUMEN: TTabSheet;
    LMDSimplePanel4: TLMDSimplePanel;
    DBG_DOC: TDBGrid;
    LMDPanelFill9: TLMDPanelFill;
    Btn_Retroceder4: TSpeedButton;
    Btn_Avancar4: TSpeedButton;
    Btn_PrimeiroReg3: TSpeedButton;
    Btn_UltimoReg3: TSpeedButton;
    TSH_REFERCLI: TTabSheet;
    LMDSimplePanel3: TLMDSimplePanel;
    Label21: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    GRD_TAGRCL: TDBGrid;
    LMDPanelFill6: TLMDPanelFill;
    Btn_Retroceder2: TSpeedButton;
    Btn_Avancar2: TSpeedButton;
    Btn_Cancelar2: TSpeedButton;
    btn_Excluir2: TSpeedButton;
    Btn_Gravar2: TSpeedButton;
    Btn_Incluir2: TSpeedButton;
    Btn_PrimeiroReg1: TSpeedButton;
    Btn_UltimoReg1: TSpeedButton;
    Btn_Alterar2: TSpeedButton;
    DED_CNOMECLIRE: TDBEdit;
    DED_CCONTCLIRE: TDBEdit;
    DED_CFONECLIRE: TDBEdit;
    DED_CDDD_2: TDBEdit;
    TSH_REFERFOR: TTabSheet;
    LMDSimplePanel1: TLMDSimplePanel;
    Label36: TLabel;
    Label39: TLabel;
    Label40: TLabel;
    Label41: TLabel;
    Label42: TLabel;
    GRD_TAGRFN: TDBGrid;
    LMDPanelFill7: TLMDPanelFill;
    Btn_Retroceder3: TSpeedButton;
    Btn_Avancar3: TSpeedButton;
    Btn_Cancelar3: TSpeedButton;
    Btn_Excluir3: TSpeedButton;
    Btn_Gravar3: TSpeedButton;
    Btn_Incluir3: TSpeedButton;
    Btn_PrimeiroReg2: TSpeedButton;
    Btn_UltimoReg2: TSpeedButton;
    Btn_Alterar3: TSpeedButton;
    DED_CNOMEREFOR: TDBEdit;
    DED_CCONTREFOR: TDBEdit;
    DED_CFONEREFOR: TDBEdit;
    DED_CDDD_3: TDBEdit;
    CBE_CNOMELOC: TComboEdit;
    CBE_CNOMELOC_1: TComboEdit;
    DED_CSIGLAUF_1: TDBEdit;
    Label3: TLabel;
    Label18: TLabel;
    DED_CSIGLAUF_2: TDBEdit;
    Btn_Localizar: TSpeedButton;
    DED_CPESSCERTF: TDBEdit;
    Label19: TLabel;
    DED_CCPFRESP: TDBEdit;
    DED_CNOMERESP: TDBEdit;
    Label22: TLabel;
    Label23: TLabel;
    procedure BTN_SAIRClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure Btn_LocalizarClick(Sender: TObject);
    procedure Btn_AvancarClick(Sender: TObject);
    procedure Btn_RetrocederClick(Sender: TObject);
    procedure Btn_IncluirClick(Sender: TObject);
    procedure Btn_AlterarClick(Sender: TObject);
    procedure Btn_ExcluirClick(Sender: TObject);
    procedure Btn_GravarClick(Sender: TObject);
    procedure Btn_CancelarClick(Sender: TObject);
    procedure Btn_ImprimirClick(Sender: TObject);
    procedure CBE_CCPFCNPJKeyPress(Sender: TObject; var Key: Char);
    procedure CBE_CCPFCNPJExit(Sender: TObject);
    procedure CBE_CCPFCNPJEnter(Sender: TObject);
    procedure CBE_NCEPExit(Sender: TObject);
    procedure CBE_NCEPKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CBE_NCEPButtonClick(Sender: TObject);
    procedure CBE_CCODCNAEExit(Sender: TObject);
    procedure CBE_CCPFCNPJKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DED_FONEGRLExit(Sender: TObject);
    procedure DED_FONEGRLEnter(Sender: TObject);
    procedure CBE_NCEPKeyPress(Sender: TObject; var Key: Char);
    procedure CBE_NCEPChange(Sender: TObject);
    procedure Btn_Incluir1Click(Sender: TObject);
    procedure Btn_Alterar1Click(Sender: TObject);
    procedure Btn_Gravar1Click(Sender: TObject);
    procedure Btn_Cancelar1Click(Sender: TObject);
    procedure Btn_Excluir1Click(Sender: TObject);
    procedure Btn_PrimeiroRegClick(Sender: TObject);
    procedure Btn_Retroceder1Click(Sender: TObject);
    procedure Btn_Avancar1Click(Sender: TObject);
    procedure Btn_UltimoRegClick(Sender: TObject);
    procedure CBE_NCODBANCOExit(Sender: TObject);
    procedure Btn_Incluir2Click(Sender: TObject);
    procedure Btn_Alterar2Click(Sender: TObject);
    procedure Btn_Gravar2Click(Sender: TObject);
    procedure Btn_Cancelar2Click(Sender: TObject);
    procedure Btn_Incluir3Click(Sender: TObject);
    procedure Btn_Alterar3Click(Sender: TObject);
    procedure Btn_Gravar3Click(Sender: TObject);
    procedure Btn_Cancelar3Click(Sender: TObject);
    procedure btn_Excluir2Click(Sender: TObject);
    procedure Btn_PrimeiroReg1Click(Sender: TObject);
    procedure Btn_Retroceder2Click(Sender: TObject);
    procedure Btn_Avancar2Click(Sender: TObject);
    procedure Btn_UltimoReg1Click(Sender: TObject);
    procedure Btn_Excluir3Click(Sender: TObject);
    procedure Btn_PrimeiroReg2Click(Sender: TObject);
    procedure Btn_Retroceder3Click(Sender: TObject);
    procedure Btn_Avancar3Click(Sender: TObject);
    procedure Btn_UltimoReg2Click(Sender: TObject);
    procedure Btn_RelFornecClick(Sender: TObject);
    procedure Btn_CertificadoClick(Sender: TObject);
    procedure DBM_CATIVIDADEKeyPress(Sender: TObject; var Key: Char);
    procedure DBG_DOCCellClick(Column: TColumn);
    procedure DBG_DOCDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBG_DOCKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBG_DOCKeyPress(Sender: TObject; var Key: Char);
    procedure DBG_DOCColEnter(Sender: TObject);
    procedure CBE_CNOMELOCExit(Sender: TObject);
    procedure Btn_PrimeiroReg3Click(Sender: TObject);
    procedure Btn_Retroceder4Click(Sender: TObject);
    procedure Btn_Avancar4Click(Sender: TObject);
    procedure Btn_UltimoReg3Click(Sender: TObject);
    procedure PGC_FornecedorDrawTab(Control: TCustomTabControl;
      TabIndex: Integer; const Rect: TRect; Active: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure DED_CCPFRESPExit(Sender: TObject);
    
  private
    { Private declarations }
  public
    { Public declarations }
    {verifica se o fornecedor existe no cadastro geral}
    function ForncedorExiste(CpfCnpj: String) : String;
    {verifica se a pessoa já e fornecedor ou é servidor}
    function ValidaFornec(Pessoa : String; Id : String): Boolean;
    {tratra a mascara dos campos de telefone}
    procedure TrataMaskEditTel(State : TDataSetState);
    {inseri os documentos do fornecedor conforne o tipo de pessoa}
    procedure InserirDocumentacao;
    {valida o documento corrente do fornecedor}
    function ValidaDocumento(Sender : TObject): boolean;
    {valida toda a documentação do fornecedor}
    procedure ValidaTodosDocumento;
    {valida a gravação de documentos obrigatorios}
    function ValidaGravaDoc:Boolean;
    {procedimento que verifica se existe novos documentos, e inseri na documentação do fornecedor}
    procedure InseriNovosDocumentos(cTipopess : String; lValidar : Boolean = false);

  end;

var
  FRM_A001AD: TFRM_A001AD;
  lDigCepEnd : Boolean = false;{variavel usada quando o usuario modificar o cep}
  cDigID, cMask : String;
implementation

uses MPLCtrl, D001AD, DMCTRL, Pesquisa, A004, A002AD,
     A005AD, D002AD, MPLLib, UVariaveis;

{$R *.DFM}
{------------------------------------------------------------------------------}
procedure TFRM_A001AD.BTN_SAIRClick(Sender: TObject);
begin
  CBE_CCPFCNPJ.OnExit := nil;
  CBE_CCODCNAE.OnExit := nil;
  CBE_NCODBANCO.OnExit := nil;
  CBE_CNOMELOC.OnExit := nil;
  CBE_CNOMELOC_1.OnExit := nil;
 // Application.ProcessMessages;
  Close;
end;//TFRM_A001AD.BTN_SAIRClick

{------------------------------------------------------------------------------}
procedure TFRM_A001AD.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   {tratamento de liberação do Form}
   Action:= oControlForms.Saidas(Self,[DTM_A001AD],DTM_A001AD.DTS_031.DataSet);
end;//TFRM_A001AD.FormClose

{------------------------------------------------------------------------------}
procedure TFRM_A001AD.FormShow(Sender: TObject);
begin
  {verifica o acesso do usuario nesta aplicação}
  Acesso(nMatricula,'A001AD',DTM_A001AD);
  {trata os botões da aplicação, mudando seu estado Enabled}
  Botoes(['Btn_Cancelar','Btn_Gravar',
          'Btn_Incluir1','Btn_Alterar1','Btn_Gravar1','Btn_Cancelar1','Btn_Excluir1',
          'Btn_Incluir2','Btn_Alterar2','Btn_Gravar2','Btn_Cancelar2','Btn_Excluir2',
          'Btn_Incluir3','Btn_Alterar3','Btn_Gravar3','Btn_Cancelar3','Btn_Excluir3'
          ],'FRM_A001AD',False);
  {força a troca de mascara e reposição das tabelas filhas conforme tipo de pessoa}
  DTM_A001AD.QRY_016AfterScroll(DTM_A001AD.DTS_016.DataSet);
  {verifica se existe novos documentos }
  InseriNovosDocumentos(DTM_A001AD.QRY_033.ParamByName('TipoPess').AsString);
  {valida o estado de todos os documentos}
  ValidaTodosDocumento;

  FRM_A001AD.OnShow := nil;
 {é atribuido ao OnShow do Form o valor nil para que o mesmo seja executado apenas uma vez}
 {pelo fato que se outra aplicação for chamada pela tecla F3, e ao retornar da aplicação que foi chamada pela tecla}
 {o evento OnShow deste form não acontecerá, ou seja não será executado, para permanecer o mesmo status da aplicação}
 {quando o F3 foi chamado}
end;//TFRM_A001AD.FormShow

{------------------------------------------------------------------------------}
procedure TFRM_A001AD.Btn_LocalizarClick(Sender: TObject);
begin
 {chama a pesquisa padrão}
 MPLCtrl.Pesquisa(DTM_A001AD.QRY_031,true,'','');
 {valida a documentação do fornecedore}
 ValidaTodosDocumento;
end;//TFRM_A001AD.Btn_LocalizarClick

{------------------------------------------------------------------------------}
procedure TFRM_A001AD.Btn_AvancarClick(Sender: TObject);
begin
 {avança registro}
 DBGenerica(DTM_A001AD.DTS_031,'Conexao',0,3,nil,false);
  {verifica se existe novos documentos requeridos para o tipo do fornecedor}
 InseriNovosDocumentos(DTM_A001AD.QRY_033.ParamByName('TipoPess').AsString);
 {valida a documentação do fornecedor}
 ValidaTodosDocumento;

end;//TFRM_A001AD.Btn_AvancarClick

{------------------------------------------------------------------------------}
procedure TFRM_A001AD.Btn_RetrocederClick(Sender: TObject);
begin
 {volta um registro}
 DBGenerica(DTM_A001AD.DTS_031,'Conexao',0,2,nil,false);
  {verifica se existe novos documentos requeridos para o tipo do fornecedor}
 InseriNovosDocumentos(DTM_A001AD.QRY_033.ParamByName('TipoPess').AsString);
 {valida a documentação do fornecedor}
 ValidaTodosDocumento;

end;//TFRM_A001AD.Btn_RetrocederClick

{------------------------------------------------------------------------------}
procedure TFRM_A001AD.Btn_IncluirClick(Sender: TObject);
begin
  {inclui um novo fornecedor}
  DBGenerica(DTM_A001AD.DTS_031,'Conexao',1,0);
  {trata os botões da aplicação}
  Botoes(['Btn_Cancelar','Btn_Gravar','Btn_Sair','Btn_Incluir1','Btn_Incluir2','Btn_Incluir3',
         'Btn_PrimeiroReg3','Btn_Retroceder4','Btn_Avancar4','Btn_UltimoReg3'],'FRM_A001AD',true);
  {atribui um valor para a chave primaria do fornecedor}
  DTM_A001AD.DTS_031.DataSet.FieldByName('nidcadfor').AsInteger := 0;

  CBE_CCPFCNPJ.SetFocus;
  CBE_CCPFCNPJ.EditMask := '';
  PGC_Fornecedor.ActivePageIndex := 0;
end;//TFRM_A001AD.Btn_IncluirClick

{------------------------------------------------------------------------------}
procedure TFRM_A001AD.Btn_AlterarClick(Sender: TObject);
begin
  if CBE_CCPFCNPJ.EditMask = '' then
    CBE_CCPFCNPJ.EditMask := cMask;
  {trata os botões da aplicação}
  Botoes(['Btn_Cancelar','Btn_Gravar', 'Btn_Sair',
          'Btn_Incluir1','Btn_Alterar1','Btn_Excluir1','Btn_PrimeiroReg','Btn_Retroceder1','Btn_Avancar1','Btn_UltimoReg',
          'Btn_Incluir2','Btn_Alterar2','Btn_Excluir2','Btn_PrimeiroReg1','Btn_Retroceder2','Btn_Avancar2','Btn_UltimoReg1',
          'Btn_Incluir3','Btn_Alterar3','Btn_Excluir3','Btn_PrimeiroReg2','Btn_Retroceder3','Btn_Avancar3','Btn_UltimoReg2',
          'Btn_PrimeiroReg3','Btn_Retroceder4','Btn_Avancar4','Btn_UltimoReg3'],
  'FRM_A001AD',true);
  {atualiza a qry onde estão os documentos novos que devem ser inseridos}
  DTM_A001AD.QRY_033_01.Refresh;
  {verifica se existe novos documentos requeridos para o tipo do fornecedor}
  InseriNovosDocumentos(DTM_A001AD.QRY_033.ParamByName('TipoPess').AsString,true);
  {coloca em estado de alteração o registro corrente}
  DBGenerica(DTM_A001AD.DTS_031,'Conexao',2,0);
  {edita o cadastro geral}
  DBGenerica(DTM_A001AD.DTS_016,'Conexao',2,0);
  //DTM_A001AD.DTS_016.DataSet.Edit;
  {edita tabela pessoa Fisica}
  DBGenerica(DTM_A001AD.DTS_019,'Conexao',2,0);
  //DTM_A001AD.DTS_019.DataSet.Edit;
  {edita tabela de pessoa Juridica}
  DBGenerica(DTM_A001AD.DTS_025,'Conexao',2,0);
  //DTM_A001AD.DTS_025.DataSet.Edit;
  {coloca a tabela de documentação do fornecedor em estado de Auto Edição}
  DTM_A001AD.DTS_034.AutoEdit := true;
  {tratamento das mascaras dos campos que é informado numero de telefone}
  TrataMaskEditTel(dsEdit);
end;//TFRM_A001AD.Btn_AlterarClick

{------------------------------------------------------------------------------}
procedure TFRM_A001AD.Btn_ExcluirClick(Sender: TObject);
begin
  {exclui o registro corrente}
  DBGenerica(DTM_A001AD.DTS_031,'Conexao',5,0,nil,false);
end;//TFRM_A001AD.Btn_ExcluirClick

{------------------------------------------------------------------------------}
procedure TFRM_A001AD.Btn_GravarClick(Sender: TObject);
  var
    EstadoFor : TDataSetState;
    cTabGrav  : String;
begin

  with DTM_A001AD do
    begin
      {verifica se o usuario preencheu todos os campos necessarios}
      if LiberadoGravacao(FRM_A001AD,DTS_031) then
        begin
          //try {inicio}
            {valida o CPF do resposnsavel}
            DED_CCPFRESPExit(Sender);
            {se o usuario informou o nome do responsável mas não informou o CPF }
            if (DED_CNOMERESP.Text <> '') and (trim(LimpaMask(DED_CCPFRESP.Text)) = '') then
              begin
                MessageDlg('Você deve informar o número de CPF do responsável!',mtInformation,[mbOk],0);
                DED_CCPFRESP.SetFocus;
                Exit;
              end;
            {se o usuario informou o CPF do responsável mas não informou o nome }
            if (trim(LimpaMask(DED_CCPFRESP.Text)) <> '') and (trim(DED_CNOMERESP.Text) = '') then
              begin
                MessageDlg('Você deve informar o nome do responsável!',mtInformation,[mbOk],0);
                DED_CNOMERESP.SetFocus;
                Exit;
              end;

            {verifica se o usuario informou algum endereço}
            if DTS_016.DataSet.FieldByName('nidcadlog').IsNull then
              begin
                MessageDlg('Você deve informar um endereço para o Fornecedor!',mtInformation,[mbOk],0);
                CBE_NCEP.SetFocus;
                Exit;
              end;
            {fim verificação}

            {se for uma pessoa juridica, exige o código do CNAE}
            if (DTS_016.DataSet.FieldByName('nidtbxcna').asInteger = 0) and
               (DTS_016.DataSet.FieldByName('cpessoafj').asString = '2') then
              begin
                MessageDlg('Você deve informar um código do CNAE para a pessoa Juridica!',
                           mtInformation,[mbOk],0);
                CBE_CCODCNAE.SetFocus;
                exit;
              end;

            {verifica se o usuario não finalizou alguna operação}
            if DTS_038.DataSet.State in [dsEdit,dsInsert] then
              begin

                MessageDlg('Existe uma operação em aberto no cadastro de Conta Corrente!',
                           mtError,[mbOK],0);
                PGC_Fornecedor.ActivePageIndex := 1;
                CBE_NCODBANCO.SetFocus;
                exit;
              end
            else
              if DTS_036.DataSet.State in [dsInsert,dsEdit] then
                begin
                  MessageDlg('Existe uma operação em aberto em Clientes de referência!',
                           mtError,[mbOK],0);
                  PGC_Fornecedor.ActivePageIndex := 3;
                  DED_CNOMECLIRE.SetFocus;
                  exit;
                end
              else
                if DTS_035.DataSet.State in [dsInsert,dsEdit] then
                begin
                  MessageDlg('Existe uma operação em aberto em Fornecedores de referência!',
                           mtError,[mbOK],0);
                  PGC_Fornecedor.ActivePageIndex := 4;
                  DED_CNOMEREFOR.SetFocus;
                  exit;
                end;

            {fim verificação}

            if MessageDlg('Deseja Salvar Alterações?',mtConfirmation,[mbYes,mbNo],0) = mrYes then
              begin
                {avisa o usuario caso algum documento obrigatório não foi informado}
                if not(ValidaGravaDoc) then
                  exit;

                try
                  {retira o relacionamento Master-Detail das tabelas filhas para
                   que não aconteça o desposicionamento dos registros das tabelas
                   filhas durante a gravação dos dados da tabela Master }
                  QRY_038.MasterSource := nil;
                  QRY_035.DisableControls;
                  QRY_035.MasterSource := nil;
                  QRY_036.DisableControls;
                  QRY_036.MasterSource := nil;

                  {se o dataset estiver em edição ou inserção o procedimento UpdateRecord
                   é executado para atualizar no registro os dados que estão nos componentes
                   data-ware que aind não foram recebidos pelo dataset }
                  if DTS_034.DataSet.State in [dsEdit,dsInsert] then
                    QRY_034.UpdateRecord;

                  //Desabilita os controles visuais ligados a qry
                  QRY_034.DisableControls;
                  {se tag=0 não é permitido inserção na qry_034, esse controle e feito
                  para que o usuário não possa inserir um registro a partir do DBGrid, nas
                  possa editar o registro atraves do DbGrid}
                  QRY_034.Tag := 1;

                  QRY_034.Filtered := false;
                  QRY_034.MasterSource := nil;
                  EstadoFor := DTS_031.DataSet.State;

                  {inicio da transação dos dados}
                  DMControle.Conexao.StartTransaction;

                  try {inicio da tentativa de gravação de todas as tabelas no banco de dados}

                    {verifica se o fornecedor está sendo inserido no cadastro geral ou se ele já existia no cadastro geral}
                    if DTS_016.DataSet.State = dsInsert then
                      begin
                        DTS_016.DataSet.FieldByName('nidcadgrl').AsInteger := 0;
                        DTS_031.DataSet.FieldByName('nidcadgrl').AsInteger := 0;

                        DTS_016.DataSet.FieldByName('nidcadlog').AsInteger :=
                        DTS_013.DataSet.FieldByName('nidcadlog').AsInteger;

                        cTabGrav := 'Cadastro Geral';//alimenta variavel de controle local

                        //grava na tabela de cadastro geral
                        DBGenerica(DTS_016,'Conexao',4,1,nil,false);
                        //pega a nova id gerada para o cadgeral e atribui ao fornecedor
                        PrepareQryTemp('select nidcadgrl from CadGrl where cCpfCnpj = ' + QuotedStr(LimpaMask(CBE_CCPFCNPJ.Text)));
                        DTS_031.DataSet.FieldByName('nidcadgrl').AsInteger :=
                        DMControle.QryTemp.FieldByName('nidcadgrl').AsInteger;

                        DMControle.QryTemp.Close;
                        DMControle.QryTemp.SQL.Clear;
                      end
                    else
                      begin
                         //se pessoa fisica estiver em edição
                        if DTS_019.DataSet.State = dsEdit then
                          begin
                            cTabGrav := 'Pessoa Fisica';
                            //grava dados na tabela de pessoa fisica
                            DBGenerica(DTS_019,'Conexao',4,1,nil,false);
                          end
                        else//pessoa juridica em edição
                          begin
                            cTabGrav := 'Pessoa Juridica';
                            //grava dados na pessoa juridica
                            DBGenerica(DTS_025,'Conexao',4,1,nil,false);
                          end;
                        cTabGrav := 'Cadastro Geral';
                        //grava na tabela de cadastro geral
                        DBGenerica(DTS_016,'Conexao',4,1,nil,false);
                      end;
                    cTabGrav := 'Fornecedores';
                    //grava as informações do Fornecedor
                    DBGenerica(DTS_031,'Conexao',4,1,nil,false);
                    if EstadoFor = dsInsert then
                      begin
                        {grava a chave do pai nas tabelas filhas.
                                 tabela filha       id do Pai}
                        GravaKeyPai(DTS_038,QRY_031.FieldByName('nidcadfor'));
                        GravaKeyPai(DTS_034,QRY_031.FieldByName('nidcadfor'));
                        GravaKeyPai(DTS_035,QRY_031.FieldByName('nidcadfor'));
                        GravaKeyPai(DTS_036,QRY_031.FieldByName('nidcadfor'));
                      end
                    else
                      begin
                        cTabGrav := 'Referência Bancária';
                        //aplica as alterações no banco de dados da tabela de Referência bancária
                        DBGenerica(DTS_038,'Conexao',4,1,nil,true);
                        cTabGrav := 'Documentação do Fornecedor';
                        //aplica as alterações feitas na tabela de documentação no banco de dados
                        DBGenerica(DTS_034,'Conexao',4,1,nil,true);
                        cTabGrav := 'Referência de Fornecedores';
                        //aplica as alterações feitas na tabela de Referencia de Fornecedor no banco de dados
                        DBGenerica(DTS_035,'Conexao',4,1,nil,true);
                        QRY_035.Refresh;
                        cTabGrav := 'Referência de Clientes';
                        //aplica as alterações feitas na tabela de Referencia de Clientes no banco de dados
                        DBGenerica(DTS_036,'Conexao',4,1,nil,true);
                        QRY_036.Refresh;
                        cTabGrav := '';
                      end;
                     DMControle.Conexao.Commit;
                  except
                    {caso ocorra algum erro é avisado ao usuário e desfeitas as alterações
                    aplicadas nesta transação, nas tabelas do bando de dados}
                    on E : Exception do
                      begin
                        MessageDlg('Não foi possivel efetuar a gravação de todos os dados,'+#13+
                                   'por isso está operação será cancelada para manter a integridade'+#13+
                                   'dos seus dados!'+#13+'Erro: '+E.Message+#13+
                                   'Tentativa de gravação na tabela : '+cTabGrav,mtError,[mbOk],0);
                        DMControle.Conexao.RollBack;
                        Btn_CancelarClick(Btn_Cancelar);
                      end;


                  end;
                  {trata os botões da aplicação}
                  Botoes(['Btn_Gravar','Btn_Cancelar',
                          'Btn_Incluir1','Btn_Alterar1','Btn_Gravar1','Btn_Cancelar1','Btn_Excluir1',
                          'Btn_Incluir2','Btn_Alterar2','Btn_Gravar2','Btn_Cancelar2','Btn_Excluir2',
                          'Btn_Incluir3','Btn_Alterar3','Btn_Gravar3','Btn_Cancelar3','Btn_Excluir3'],'FRM_A001AD',false);
                finally
                  {retorna o relacionamento Master-Detail e habilita
                  a atualizaçao dos compomentes visuais}
                  QRY_038.MasterSource := DTS_031;
                  QRY_034.MasterSource := DTS_031;
                  DTS_034.AutoEdit := false;
                  QRY_034.EnableControls;
                  QRY_034.Tag := 0;//impedi que seja inserido registro na query
                  QRY_035.MasterSource := DTS_031;
                  QRY_035.EnableControls;
                  QRY_036.MasterSource := DTS_031;
                  QRY_036.EnableControls;
                end;
              end;

        end;
    end;
end;//TFRM_A001AD.Btn_GravarClick

{------------------------------------------------------------------------------}
procedure TFRM_A001AD.Btn_CancelarClick(Sender: TObject);
begin
  TrataMaskEditTel(dsBrowse);
  with DTM_A001AD do
    begin
      {cancelamento de todos os dataset}
      DBGenerica(DTS_019,'Conexao',3,0);
      //DTS_019.DataSet.Cancel;
      DBGenerica(DTS_025,'Conexao',3,0);
      //DTS_025.DataSet.Cancel;
      DBGenerica(DTS_016,'Conexao',3,0);
      //DTS_016.DataSet.Cancel;
      DBGenerica(DTS_038,'Conexao',3,0,nil,true);
      //QRY_038.CancelUpdates;
      DBGenerica(DTS_034,'Conexao',3,0,nil,true);
      //QRY_034.CancelUpdates;
      {retorna o Master-Detail}
      if QRY_034.MasterSource = nil then
        QRY_034.MasterSource := DTM_A001AD.DTS_031;
      //QRY_016_02.CancelUpdates;
      DBGenerica(DTS_036,'Conexao',3,0,nil,true);
      //QRY_036.CancelUpdates;
      //QRY_016_01.CancelUpdates;
      DBGenerica(DTS_035,'Conexao',3,0,nil,true);
      //QRY_035.CancelUpdates;
      DTS_034.AutoEdit := false;
      {cancela e posiciona a tabela no registro em que estava posicionado}
      DBGenerica(DTS_031,'Conexao',3, 0);
      {trata os botões da aplicação}
      Botoes(['Btn_Gravar','Btn_Cancelar',
              'Btn_Incluir1','Btn_Alterar1','Btn_Gravar1','Btn_Cancelar1','Btn_Excluir1',
              'Btn_Incluir2','Btn_Alterar2','Btn_Gravar2','Btn_Cancelar2','Btn_Excluir2',
              'Btn_Incluir3','Btn_Alterar3','Btn_Gravar3','Btn_Cancelar3','Btn_Excluir3'],'FRM_A001AD',false);
      lDigCepEnd := false;
      DTS_034.DataSet.Refresh;
      {impede a edição do tabela atraves do grid}
      DBG_DOC.Options := DBG_DOC.Options - [dgEditing];
    end;
end;//TFRM_A001AD.Btn_CancelarClick

{------------------------------------------------------------------------------}
procedure TFRM_A001AD.Btn_ImprimirClick(Sender: TObject);
begin
 {função Padrão de Impressão}
 RelCadastro(DTM_A001AD.QRY_031,'Cadastro de Fornecedores');
end;//TFRM_A001AD.Btn_ImprimirClick

{------------------------------------------------------------------------------}
procedure TFRM_A001AD.CBE_CCPFCNPJKeyPress(Sender: TObject; var Key: Char);
begin
  {verifica se o caracter digitado é valido para um campo do tipo numerico}
  Key := ValEditNumerico(Key);
  if (Key in ['0'..'9']) and (DTM_A001AD.DTS_031.DataSet.State = dsBrowse)
     and (CBE_CCPFCNPJ.EditMask <> '') then
    begin
      CBE_CCPFCNPJ.EditMask := '';
      CBE_CCPFCNPJ.Text := '' ;
    end;

end;//TFRM_A001AD.CBE_CCPFCNPJKeyPress(

{------------------------------------------------------------------------------}
procedure TFRM_A001AD.CBE_CCPFCNPJExit(Sender: TObject);
  var
    cCpfCnpj  : String[20];
    cMens     : String;
    cIdCadgrl : String;
    cAux      : String[10];
begin

  cIdCadgrl := '';
  with DTM_A001AD, DMControle do
    begin
      {verifica o estado da tabela de fornecedores}
      if DTS_031.DataSet.State = dsInsert then
        begin
          if trim(CBE_CCPFCNPJ.Text) = '' then
            begin
              MessageDlg('Você deve informar o número de CPF ou CNPJ!',mtInformation,[mbOk],0);
              CBE_CCPFCNPJ.SetFocus;
              exit;
            end;
          if DTS_016.DataSet.FieldByName('cCpfCnpj').AsString = LimpaMask(CBE_CCPFCNPJ.Text) then
            exit;
          cMens := '';
          cCpfCnpj := LimpaMask(CBE_CCPFCNPJ.Text);
          if Length(cCpfCnpj) = 11 then
            begin

              if not(ValidaCpf(cCpfCnpj)) then
                cMens := 'Número de CPF invalido!'
              else
                begin
                  CBE_CCPFCNPJ.EditMask := '999.999.999-99;0;*';
                  cAux := 'Pessoa';
                  //QRY_033.ParamByName('TipoPess').asString := 'F';
                end;

            end
          else
            if Length(cCpfCnpj) = 14 then
              begin
                if not(ValidaCNPJ(cCpfCnpj)) then
                  cMens := 'Número de CNPJ invalido!'
                else
                  begin
                    CBE_CCPFCNPJ.EditMask := '99.999.999/9999-99;0;*';
                    cAux := 'Empresa';
                    //QRY_033.ParamByName('TipoPess').asString := 'J';
                  end;
              end
            else
              cMens := 'Número de CPF ou CNPJ incompleto!';
          if cMens <> '' then
            begin
              MessageDlg(cMens,mtInformation,[mbOk],0);
              CBE_CCPFCNPJ.SetFocus;
              exit;
            end;
          if QRY_016.State = dsInsert then
            begin
              if ((cAux = 'Pessoa') and (DTS_016.DataSet.FieldByName('cPessoaFJ').AsInteger = 2)) then
                begin
                  MessageDlg('Você não pode atribuir um nº de CPF para uma pessoa JURIDICA!',mtInformation,[mbOk],0);
                  CBE_CCPFCNPJ.SetFocus;
                  exit;
                end
              else
                if ((cAux = 'Empresa') and (DTS_016.DataSet.FieldByName('cPessoaFJ').AsInteger = 1)) then
                  begin
                    MessageDlg('Você não pode atribuir um nº de CNPJ para uma pessoa FISICA!',mtInformation,[mbOk],0);
                    CBE_CCPFCNPJ.SetFocus;
                    exit;
                  end;
            end;
          cIdCadgrl := ForncedorExiste(cCpfCnpj);

          if cIdCadgrl <> '' then
            begin
              if QRY_016.State = dsInsert then
                begin
                  if cAux = 'Pessoa' then
                    MessageDlg('Este nº de CNPJ já está cadastrado para outra pessoa!'+#13+'Favor digite outro.',mtInformation,[mbOk],0)
                  else
                    MessageDlg('Este nº de CNPJ já está cadastrado para outro empresa!'+#13#+'Favor digite outro.',mtInformation,[mbOk],0);
                  CBE_CCPFCNPJ.SetFocus;
                  exit;
                end;
              if not(ValidaFornec(cAux,cIdCadgrl)) then
                begin
                  CBE_CCPFCNPJ.SetFocus;
                  exit;
                end;

              DTS_031.DataSet.FieldByName('nidcadgrl').AsInteger :=
              StrToInt(cIdCadgrl);
              QRY_016.ParamByName('nidcadgrl').AsInteger :=
              StrToInt(cIdCadgrl);
              QRY_016.ExecSQL;
              //edita cadgrl
              DBGenerica(DTS_016,'Conexao',2,0);
              //DTS_016.DataSet.Edit;
              if cAux = 'Pessoa' then
                //edita cadfis
                DBGenerica(DTS_019,'Conexao',2,0)
                //DTS_019.DataSet.Edit
              else
                if cAux = 'Empresa' then
                  //edita cadjur
                  DBGenerica(DTS_025,'Conexao',2,0);
                  //DTS_025.DataSet.Edit;
            end
          else
            begin
              if QRY_016.State = dsInsert then
                begin
                  DTS_016.DataSet.FieldByName('cCpfCnpj').AsString := cCpfCnpj;
                  exit;
                end;
              //inseri novo registro na tabela cadgrl
              DBGenerica(DTS_016,'Conexao',1,0);
              //DTS_016.DataSet.Insert;
              DTS_016.DataSet.FieldByName('cCpfCnpj').AsString := cCpfCnpj;
              DTS_016.DataSet.FieldByName('nidtbxcna').AsInteger := 0;
              QRY_039.ParamByName('nidtbxcna').asInteger := 0;
              DTS_039.DataSet.Refresh;
              if cAux = 'Pessoa' then
                begin
                  DTS_016.DataSet.FieldByName('cPessoaFJ').AsInteger := 1;
                  //Inseri um novo registro na tabela pessoa fisica
                  DBGenerica(DTS_019,'Conexao',1,0);
                  //DTS_019.DataSet.Insert;
                  DTS_019.DataSet.FieldByName('nidcadfis').AsInteger := 0;
                  DTS_019.DataSet.FieldByName('nidcadgrl').AsInteger := 0;
                  DTS_019.DataSet.FieldByName('nIdTbxCor').AsInteger := 0;
                  DTS_019.DataSet.FieldByName('nIdTbxloc').AsInteger := 0;
                  DTS_019.DataSet.FieldByName('nIdTbxEci').AsInteger := 0;
                  DTS_019.DataSet.FieldByName('nIdTbxGri').AsInteger := 0;
                  DTS_019.DataSet.FieldByName('nIdTbxNac').AsInteger := 0;
                  DTS_019.DataSet.FieldByName('nIdTbxErg').AsInteger := 0;
                end
              else
                if cAux = 'Empresa' then
                  begin
                    DTS_016.DataSet.FieldByName('cPessoaFJ').AsInteger := 2;
                    //inseri registro cadjur
                    DBGenerica(DTS_025,'Conexao',1,0);
                    //DTS_025.DataSet.Insert;
                    DTS_025.DataSet.FieldByName('nidCadJur').value := 0;
                    DTS_025.DataSet.FieldByName('nidCadGrl').value := 0;
                  end;

            end;// fim else do if cIdCadgrl <> '' then
          //QRY_033.ExecSQL;
          DTM_A001AD.QRY_016AfterScroll(DTS_031.DataSet);
          InserirDocumentacao;
          //CBE_CCPFCNPJ.Text := cCpfCnpj;
          lDigCepEnd := false;

        end//fim if DTS_031.DataSet.State = dsInsert then
      else
        if DTS_031.DataSet.State = dsBrowse then
          begin
            if trim(CBE_CCPFCNPJ.Text) = '' then
              begin
                QRY_016AfterScroll(QRY_016);
                exit;
              end;
            if DTS_016.DataSet.FieldByName('cCpfCnpj').AsString = LimpaMask(CBE_CCPFCNPJ.Text) then
              begin
                if CBE_CCPFCNPJ.EditMask = '' then
                  CBE_CCPFCNPJ.EditMask := cMask;
                exit;
              end;
            PrepareQryTemp('select cadgrl.nidcadgrl from cadgrl,cadfor where cadgrl.nidcadgrl = cadfor.nidcadgrl '+
                           'and cadgrl.ccpfcnpj = '+QuotedStr(LimpaMask(CBE_CCPFCNPJ.text)));
            if QryTemp.RecordCount > 0 then
              QRY_031.Locate('nidcadgrl',QryTemp.FieldByName('nidcadgrl').asInteger,[])
            else
              begin
                MessageDlg('Fornecedor não encontrado!',mtInformation,[mbOk],0);
                CBE_CCPFCNPJ.SetFocus;
              end;
            QryTemp.Close;
            QryTemp.SQL.Clear;
          end;




    end;// final With
end;//TFRM_A001AD.CBE_CCPFCNPJExit

{------------------------------------------------------------------------------}
procedure TFRM_A001AD.CBE_CCPFCNPJEnter(Sender: TObject);
begin
  cDigID := CBE_CCPFCNPJ.text;
  cMask := CBE_CCPFCNPJ.EditMask;
  if DTM_A001AD.DTS_031.State in [dsInsert,dsBrowse] then
    CBE_CCPFCNPJ.EditMask := '';

  CBE_CCPFCNPJ.SelectAll;

end;//TFRM_A001AD.CBE_CCPFCNPJEnter(

{------------------------------------------------------------------------------
verifica se o fornecedor existe no cadastro geral}
function TFRM_A001AD.ForncedorExiste(CpfCnpj: String): String;
begin
  Result := '';
  with DMControle do
    begin
      PrepareQryTemp('select nidcadgrl from CadGrl where cCpfCnpj = '+ Trim(QuotedStr(CpfCnpj)));
      Result := QryTemp.FieldByName('nidcadgrl').AsString;
      QryTemp.close;
      QryTemp.SQL.Clear;
    end;
end;//TFRM_A001AD.ForncedorExiste

{------------------------------------------------------------------------------
verifica se a pessoa já e fornecedor ou é servidor}
function TFRM_A001AD.ValidaFornec(Pessoa: String; Id: String): Boolean;
begin
  Result := true;
  with DMControle do
    begin
      if Pessoa = 'Pessoa' then
        begin
          PrepareQryTemp('select nidcadgrl from CadSer where nidCadGrl = '+ Id);
          if QryTemp.RecordCount <> 0 then
            begin
              MessageDlg('Esta Pessoa já esta cadastrada como Servidor,'+#13+
                         'portanto não pode ser um Fornecedor.',mtInformation,[mbOk],0);
              Result := false;
            end;
        end;
      if Result then
        begin
          PrepareQryTemp('select nidcadgrl from CadFor where nidCadGrl = '+ Id);
          if QryTemp.RecordCount <> 0 then
            begin
              MessageDlg('Esta '+Pessoa+' já está cadastrada como Fornecedor!',mtInformation,[mbOK],0);
              Result := False;
            end;
        end;
      QryTemp.Close;
      QryTemp.SQL.Clear;
    end;

end;//TFRM_A001AD.ValidaFornec

{------------------------------------------------------------------------------}
procedure TFRM_A001AD.CBE_NCEPExit(Sender: TObject);
  var
    nCod : Variant;

begin

  with DTM_A001AD do
    begin
      if not(Sender is TComboEdit) then
        exit;

      if Trim(CBE_NCEP.text) = '' then
        begin
          CBE_NCEP.Text := QRY_013.FieldByName('nCep').DisplayText;
         // lDigCepEnd := false;
          exit;
        end;

      if DTS_031.DataSet.State in [dsInsert,dsEdit] then
        begin
          if lDigCepEnd then
            begin
              if ((FRM_PESQUISA <> nil) or (FRM_A004 <> nil)) then
                begin
                  nCod := CBE_NCEP.Text;
                  QRY_013.ParamByName('nidCadLog').value := nCod;
                  QRY_016.FieldByName('nidCadLog').value := nCod;
                  QRY_013.ExecSQL;
                  CBE_NCEP.Text := QRY_013.FieldByName('nCep').DisplayText;
                  lDigCepEnd := false;
                end
              else
                begin
                  PrepareQryTemp('select'+
                  ' nCep, cnomeloc, ufloc from TbxLoc where nCep = '+LimpaMask(CBE_NCEP.Text));
                  if not(DMControle.QryTemp.IsEmpty) then
                    begin
                      FocoCompo := CBE_NCEP;
                      if MplCtrl.Pesquisa(nil,false,'NIDCADLOG','','tbxloc.cnomeloc = '+DMControle.QryTemp.FieldByName('cnomeloc').asString+
                         ';tbxloc.ufloc = '+DMControle.QryTemp.FieldByName('ufloc').asString+'; cadlog.cnomelog+setfocus;',false).AcaoUsuario = 2 then
                        begin
                          CBE_NCEP.SetFocus;
                          lDigCepEnd := true;
                        end
                      else
                        begin
                          nCod := CBE_NCEP.Text;
                          QRY_013.ParamByName('nidCadLog').value := nCod;
                          QRY_016.FieldByName('nidCadLog').value := nCod;
                          QRY_013.ExecSQL;
                          CBE_NCEP.Text := QRY_013.FieldByName('nCep').DisplayText;
                          lDigCepEnd := false;
                          DED_CNUMERO.SetFocus
                        end;

                    end
                  else
                    begin
                      PrepareQryTemp('select nCep,nidCadlog'+
                      ' from Cadlog where nCep = ' + LimpaMask(CBE_NCEP.Text));

                      if DMControle.QryTemp.IsEmpty then
                        begin
                          MessageDlg('Número de Cep não encontrado!',mtInformation,[mbOk],0);
                          //CBE_NCEP.SetFocus;
                          //CBE_NCEP.SelectAll;
                          CBE_NCEP.SetFocus;
                          CBE_NCEP.SelectAll;
                          lDigCepEnd := true;
                        end
                      else
                        begin
                          //QRY_013.ParamByName('nidCadLog').Value :=
                          QRY_013.ParamByName('nidCadLog').Value :=
                          DMControle.QryTemp.FieldByName('nidCadLog').value;
                          QRY_016.FieldByName('nidCadLog').value :=
                          DMControle.QryTemp.FieldByName('nidCadLog').value;
                          //QRY_013.ExecSQL;
                          QRY_013.ExecSQL;
                          //CBE_NCEP.Text := QRY_013.FieldByName('nCep').DisplayText;
                          CBE_NCEP.Text := QRY_013.FieldByName('nCep').DisplayText;
                          lDigCepEnd := false;
                        end;
                    end;

                  DMControle.QryTemp.Close;
                  DMControle.QryTemp.SQL.Clear;

                end;

            end;
        end;

    end;

end;//TFRM_A001AD.CBE_NCEPExit

{------------------------------------------------------------------------------}
procedure TFRM_A001AD.CBE_NCEPKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 if Key = VK_ESCAPE then
    begin
      (Sender as TComboEdit).Text := DTM_A001AD.DTS_013.DataSet.FieldByName('nCep').DisplayText;
      lDigCepEnd := false;
    end
end;//TFRM_A001AD.CBE_NCEPKeyDown

{------------------------------------------------------------------------------}
procedure TFRM_A001AD.CBE_NCEPButtonClick(Sender: TObject);
begin
  VerTeclas(VK_F2);
end;//TFRM_A001AD.CBE_NCEPButtonClick

{------------------------------------------------------------------------------}
procedure TFRM_A001AD.CBE_CCODCNAEExit(Sender: TObject);
begin
  with DTM_A001AD do
    begin
      if DTS_031.DataSet.State in [dsEdit,dsInsert] then
        begin
          if Trim(LimpaMask(CBE_CCODCNAE.Text)) = '' then
            exit;
          PrepareQryTemp('select nidtbxcna from TbxCna where ccodcnae = '+
                         QuotedStr(Trim(LimpaMask(CBE_CCODCNAE.Text))));
          if DMControle.QryTemp.RecordCount = 0 then
            begin
              MessageDlg('Código do CNAE não encontrado!',mtInformation,[mbOk],0);
              CBE_CCODCNAE.SetFocus;
            end
          else
            begin
              QRY_039.ParamByName('nidtbxcna').AsInteger :=
              DMControle.QryTemp.FieldByName('nidtbxcna').AsInteger;
              DTS_016.DataSet.FieldByName('nidtbxcna').AsInteger :=
              DMControle.QryTemp.FieldByName('nidtbxcna').AsInteger;
              DMControle.QryTemp.Close;
              DMControle.QryTemp.SQL.Clear;
              QRY_039.ExecSQL;
            end;
        end;
    end;

end;//TFRM_A001AD.CBE_CCODCNAEExit

{------------------------------------------------------------------------------}
procedure TFRM_A001AD.CBE_CCPFCNPJKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = VK_ESCAPE then
    if DTM_A001AD.DTS_031.DataSet.State = dsBrowse then
      DTM_A001AD.QRY_016AfterScroll(DTM_A001AD.DTS_016.DataSet);
      {begin
        CBE_CCPFCNPJ.Text := cDigID ; //DTM_A001AD.DTS_016.DataSet.FieldByName('cCpfCnpj').AsString;
        //CBE_CCPFCNPJ.EditMask := cDigID ;
      end
    else}

end;//TFRM_A001AD.CBE_CCPFCNPJKeyDown

{------------------------------------------------------------------------------}
procedure TFRM_A001AD.DED_FONEGRLExit(Sender: TObject);
begin
  if TDBEdit(Sender).DataSource.DataSet.State in [dsInsert,dsEdit] then
    TDBEdit(Sender).Field.EditMask :='!####-####;0; ';

end;//TFRM_A001AD.DED_FONEGRLExit

{------------------------------------------------------------------------------}
procedure TFRM_A001AD.DED_FONEGRLEnter(Sender: TObject);
begin
  if TDBEdit(Sender).DataSource.DataSet.State in [dsInsert,dsEdit] then
    TDBEdit(Sender).Field.EditMask := '';

end;//TFRM_A001AD.DED_FONEGRLEnter

{------------------------------------------------------------------------------
tratra a mascara dos campos de telefone}
procedure TFRM_A001AD.TrataMaskEditTel(State: TDataSetState);
begin
  if State = dsEdit then
    begin
      if DED_FONEGRL.Focused then
        begin
          DED_FONEGRLEnter(DED_FONEGRL);
          DED_FONEGRL.SelectAll;
        end
      else
      if DED_FAXGRL.Focused then
        begin
          DED_FONEGRLEnter(DED_FAXGRL);
          DED_FAXGRL.SelectAll;
        end
      else
      if DED_CTELCOM.Focused then
        begin
          DED_FONEGRLEnter(DED_CTELCOM);
          DED_CTELCOM.SelectAll;
        end
      else
      if DED_CTELFAX.Focused then
        begin
          DED_FONEGRLEnter(DED_CTELFAX);
          DED_CTELFAX.SelectAll;
        end
      else
      if DED_CFONECLIRE.Focused then
        begin
          DED_FONEGRLEnter(DED_CFONECLIRE);
          DED_CFONECLIRE.SelectAll;
        end
      else
      if DED_CFONEREFOR.Focused then
        begin
          DED_FONEGRLEnter(DED_CFONEREFOR);
          DED_CFONEREFOR.SelectAll;
        end;
    end
  else
    if State = dsBrowse then
      begin
        if DED_FONEGRL.Focused then
          DED_FONEGRLExit(DED_FONEGRL)
        else
        if DED_FAXGRL.Focused then
          DED_FONEGRLExit(DED_FAXGRL)
        else
        if DED_CTELCOM.Focused then
          DED_FONEGRLExit(DED_CTELCOM)
        else
        if DED_CTELFAX.Focused then
          DED_FONEGRLExit(DED_CTELFAX)
        else
        if DED_CFONECLIRE.Focused then
          DED_FONEGRLExit(DED_CFONECLIRE)
        else
        if DED_CFONEREFOR.Focused then
          DED_FONEGRLExit(DED_CFONEREFOR);

      end;

end;//TFRM_A001AD.TrataMaskEditTel

{------------------------------------------------------------------------------}
procedure TFRM_A001AD.CBE_NCEPKeyPress(Sender: TObject; var Key: Char);
begin
  Key := ValEditNumerico(Key);
end;//TFRM_A001AD.CBE_NCEPKeyPress

{------------------------------------------------------------------------------}
procedure TFRM_A001AD.CBE_NCEPChange(Sender: TObject);
begin
  lDigCepEnd := DTM_A001AD.DTS_031.DataSet.State in [dsInsert,dsEdit];
end;//TFRM_A001AD.CBE_NCEPChange

{------------------------------------------------------------------------------}
procedure TFRM_A001AD.Btn_Incluir1Click(Sender: TObject);
begin
  // inseri regitro tagbfn
  DBGenerica(DTM_A001AD.DTS_038,'Conexao',1,0);
  //DTM_A001AD.DTS_038.DataSet.Insert;
  Botoes(['Btn_Gravar1','Btn_Cancelar1',
          'Btn_Gravar','Btn_Cancelar',
          'Btn_PrimeiroReg1','Btn_Retroceder2','Btn_Avancar2','Btn_UltimoReg1',
          'Btn_PrimeiroReg2','Btn_Retroceder3','Btn_Avancar3','Btn_UltimoReg2',
          'Btn_PrimeiroReg3','Btn_Retroceder4','Btn_Avancar4','Btn_UltimoReg3'
          ],'FRM_A001AD',true);
  DTM_A001AD.DTS_038.DataSet.FieldByName('nidtagbfn').value := 0;
  CBE_NCODBANCO.SetFocus;
  CBE_NCODBANCO.Text := '';
  GRD_TBXBCO.Enabled := false;
end;//TFRM_A001AD.Btn_Incluir1Click

{------------------------------------------------------------------------------}
procedure TFRM_A001AD.Btn_Alterar1Click(Sender: TObject);
begin
  //edita tabela tagbfn
  DBGenerica(DTM_A001AD.DTS_038,'Conexao',2,0);
  //DTM_A001AD.DTS_038.DataSet.Edit;
  Botoes(['Btn_Gravar1','Btn_Cancelar1',
          'Btn_Gravar','Btn_Cancelar',
          'Btn_PrimeiroReg1','Btn_Retroceder2','Btn_Avancar2','Btn_UltimoReg1',
          'Btn_PrimeiroReg2','Btn_Retroceder3','Btn_Avancar3','Btn_UltimoReg2',
          'Btn_PrimeiroReg3','Btn_Retroceder4','Btn_Avancar4','Btn_UltimoReg3'
          ],'FRM_A001AD',true);
  GRD_TBXBCO.Enabled := false;
end;//TFRM_A001AD.Btn_Alterar1Click

{------------------------------------------------------------------------------}
procedure TFRM_A001AD.Btn_Gravar1Click(Sender: TObject);
begin
  with DTM_A001AD do
    begin
      if DTS_038.DataSet.FieldByName('nidtbxbco').isNull then
        begin
          MessageDlg('Você deve informar um banco!',mtInformation,[mbOk],0);
          CBE_NCODBANCO.SetFocus;
          exit;
        end;
      if DTS_038.DataSet.State = dsInsert then
        DTS_038.DataSet.FieldByName('nidtagbfn').AsInteger := 0;
      //grava os dados na tabela tagbfn
      DBGenerica(DTS_038,'Conexao',4,1,nil,false);
      //DTS_038.DataSet.Post;
      Botoes(['Btn_Incluir1','Btn_Alterar1','Btn_Excluir1','Btn_PrimeiroReg','Btn_Retroceder1','Btn_Avancar1','Btn_UltimoReg',
              'Btn_Gravar','Btn_Cancelar',
              'Btn_Incluir2','Btn_Alterar2','Btn_Excluir2','Btn_PrimeiroReg2','Btn_Retroceder2','Btn_Avancar2','Btn_UltimoReg1',
              'Btn_Incluir3','Btn_Alterar3','Btn_Excluir3','Btn_PrimeiroReg3','Btn_Retroceder3','Btn_Avancar3','Btn_UltimoReg1',
              'Btn_PrimeiroReg3','Btn_Retroceder4','Btn_Avancar4','Btn_UltimoReg3'
              ],'FRM_A001AD',true);
      GRD_TBXBCO.Enabled := true;
      
    end;



end;//TFRM_A001AD.Btn_Gravar1Click

{------------------------------------------------------------------------------}
procedure TFRM_A001AD.Btn_Cancelar1Click(Sender: TObject);
begin
  //cancela operação na tabela tagbfn
  DBGenerica(DTM_A001AD.DTS_038,'Conexao',3,0);
  //DTM_A001AD.DTS_038.DataSet.Cancel;
  Botoes(['Btn_Incluir1','Btn_Alterar1','Btn_Excluir1','Btn_PrimeiroReg','Btn_Retroceder1','Btn_Avancar1','Btn_UltimoReg',
              'Btn_Gravar','Btn_Cancelar',
              'Btn_Incluir2','Btn_Alterar2','Btn_Excluir2','Btn_PrimeiroReg2','Btn_Retroceder2','Btn_Avancar2','Btn_UltimoReg1',
              'Btn_Incluir3','Btn_Alterar3','Btn_Excluir3','Btn_PrimeiroReg3','Btn_Retroceder3','Btn_Avancar3','Btn_UltimoReg1',
              'Btn_PrimeiroReg3','Btn_Retroceder4','Btn_Avancar4','Btn_UltimoReg3'
              ],'FRM_A001AD',true);
  GRD_TBXBCO.Enabled := true;

end;//TFRM_A001AD.Btn_Cancelar1Click

{------------------------------------------------------------------------------}
procedure TFRM_A001AD.Btn_Excluir1Click(Sender: TObject);
begin
  if MessageDlg('Deseja excluir conta bancária do Fornecedor?',mtConfirmation,[mbYes,mbNo],0) = mrYes then
    DBGenerica(DTM_A001AD.DTS_038,'Conexao',5,1);
    //DTM_A001AD.DTS_038.DataSet.Delete;
end;//TFRM_A001AD.Btn_Excluir1Click

{------------------------------------------------------------------------------}
procedure TFRM_A001AD.Btn_PrimeiroRegClick(Sender: TObject);
begin
  //posiciona no primeiro registro
  DBGenerica(DTM_A001AD.DTS_038,'Conexao',0,1);
  //DTM_A001AD.DTS_038.DataSet.First;
end;//TFRM_A001AD.Btn_PrimeiroRegClick

{------------------------------------------------------------------------------}
procedure TFRM_A001AD.Btn_Retroceder1Click(Sender: TObject);
begin
  //volta um registro
  DBGenerica(DTM_A001AD.DTS_038,'Conexao',0,2);
  //DTM_A001AD.DTS_038.DataSet.Prior;
end;//TFRM_A001AD.Btn_Retroceder1Click

{------------------------------------------------------------------------------}
procedure TFRM_A001AD.Btn_Avancar1Click(Sender: TObject);
begin
  //proximo registro
  DBGenerica(DTM_A001AD.DTS_038,'Conexao',0,3);
  //DTM_A001AD.DTS_038.DataSet.Next;
end;//TFRM_A001AD.Btn_Avancar1Click

{------------------------------------------------------------------------------}
procedure TFRM_A001AD.Btn_UltimoRegClick(Sender: TObject);
begin
  //ultimo registro
  DBGenerica(DTM_A001AD.DTS_038,'Conexao',0,4);
  //DTM_A001AD.DTS_038.DataSet.Last;
end;//TFRM_A001AD.Btn_UltimoRegClick

{------------------------------------------------------------------------------}
procedure TFRM_A001AD.CBE_NCODBANCOExit(Sender: TObject);
begin
  with DMControle,DTM_A001AD do
    begin
      if (DTS_038.DataSet.State in [dsInsert, dsEdit])  and
         (trim(CBE_NCODBANCO.Text)<>'') then
        begin
          PrepareQryTemp('select nidtbxbco from TbxBco where nCodBanco = ' + CBE_NCODBANCO.Text);
          if QryTemp.RecordCount = 0 then
            begin
              MessageDlg('Código de Banco não encontrado!',mtInformation,[mbOk],0);
              CBE_NCODBANCO.SetFocus;
            end
          else
            //begin
              //QRY_037.ParamByName('nidtbxbco').asInteger := QryTemp.FieldByName('nidtbxbco').AsInteger;
              DTS_038.DataSet.FieldByName('nidtbxbco').AsInteger := QryTemp.FieldByName('nidtbxbco').AsInteger;
              //QRY_037.ExecSQL;
            //end;

          QryTemp.Close;
          QryTemp.SQL.Clear;
        end;
    end;
end;//TFRM_A001AD.CBE_NCODBANCOExit

{------------------------------------------------------------------------------
inseri os documentos do fornecedor conforne o tipo de pessoa}
procedure TFRM_A001AD.InserirDocumentacao;
begin
  with DTM_A001AD do
    begin

      try
        QRY_034.DisableControls;
        QRY_034.Tag := 1;
        if QRY_034.MasterSource = nil then
          QRY_034.MasterSource := DTS_031;
        QRY_033.DisableControls;
        QRY_033.Filter := 'cutiliza = '+QuotedStr('S');
        QRY_033.Filtered := true;

        //posiciona no primeiro registro
        DBGenerica(DTS_033,'Conexao',0,1);
        
        while not(QRY_033.Eof) do
          begin
            //apenda registro na tabela de documentos do fornecedor
            DBGenerica(DTS_034,'Conexao',1,0);
            //QRY_034.Append;
            QRY_034.FieldByName('nidtagdoc').asInteger := 0;
            QRY_034.FieldByName('nidcadfor').asInteger := 0;
            QRY_034.FieldByName('nidtagigd').asInteger :=
            QRY_033.FieldByName('nidtagigd').asInteger;
            QRY_034.FieldByName('cdispensa').asString := 'N';
            QRY_034.FieldByName('centregue').asString := 'N';
            QRY_034.FieldByName('cvalidade').asString :=
            QRY_033.FieldByName('cvalidade').asString;
            QRY_034.FieldByName('cdispen').asString :=
            QRY_033.FieldByName('cdispen').asString;
            QRY_034.FieldByName('cobriga').asString :=
            QRY_033.FieldByName('cobriga').asString;
            QRY_034.FieldByName('cstatus').asString := 'IRREGULAR';

            //grava os dados na tabela
            DBGenerica(DTS_034,'Conexao',4,1);
            //proximo registro da tabela de documentos
            DBGenerica(DTS_033,'Conexao',0,3);
          end;
        DTS_034.AutoEdit := true;
      finally
        QRY_034.MasterSource := nil;
        QRY_033.Filtered := false;
        QRY_033.Filter := '';
        QRY_034.EnableControls;
        QRY_034.Tag := 0 ;
        QRY_033.EnableControls;
        //posiciona no primeiro registro da tabela de documentos
        DBGenerica(DTS_034,'Conexao',0,1);
      end;

    end;

end;//TFRM_A001AD.InserirDocumentacao

{------------------------------------------------------------------------------
valida o documento corrente do fornecedor}
function TFRM_A001AD.ValidaDocumento(Sender : TObject): boolean;
  var
    cStatus : String[10];
    cObs    : String;
    lDispensa, lEntregue : boolean;
    Estado : TDataSetState;
begin
  Result := true;
  cStatus := 'OK';
  cObs  := 'OK';
  with DTM_A001AD.DTS_034.DataSet do
    begin
      if RecordCount = 0 then
        exit;

      lDispensa := FieldByName('cdispensa').asString = 'S';
      lEntregue := FieldByName('centregue').asString = 'S';



      if (not(lDispensa)) then
        begin
          if (not(lEntregue)) then
            begin
              cStatus := 'IRREGULAR';
              cObs := 'Documento em Falta.';
            end
          else
            if (FieldByName('cvalidade').asString = 'S') and (FieldByName('ddatavalid').isNull) then
              begin
                cStatus := 'IRREGULAR';
                if not(DBG_DOC.SelectedField = FieldByName('ddatavalid')) then
                  FieldByName('ddatavalid').FocusControl;
                cObs := 'Este Documento precisa de uma data de validade.';
              end
            else
              if (not(FieldByName('ddatavalid').isNull)) then
                if FieldByName('ddatavalid').AsDateTime < Date then
                  begin
                    cStatus := 'IRREGULAR';
                    cObs := 'Data inferior a Data Atual.';
                  end;
        end
      else
        if (FieldByName('cobriga').asString = 'S')  then
         if (FieldByName('cdispen').asString = 'N') then
           Result := False;





      if FieldByName('cStatus').asString <> cStatus then
        begin
          Estado := State;
          if not(Estado in [dsEdit,dsInsert]) then
            DBGenerica(DTM_A001AD.DTS_034,'Conexao',2,0,nil,true);//edita registro

          FieldByName('cStatus').asString := cStatus;

          if not(Estado in [dsEdit,dsInsert]) then
            //grava os dados da tabela de documentação do fornecedor
            DBGenerica(DTM_A001AD.DTS_034,'Conexao',4,1,nil,true);
            //DTM_A001AD.QRY_034.ApplyUpdates;
        end;

    end;

end;//TFRM_A001AD.ValidaDocumento

{------------------------------------------------------------------------------
valida a gravação de documentos obrigatorios}
function TFRM_A001AD.ValidaGravaDoc:Boolean;
begin
 Result := true;
  with DTM_A001AD.QRY_034 do
    begin
      try
        if State = dsEdit then
          //grava dados na tabela de documentação do fornecedor
          DBGenerica(DTM_A001AD.DTS_034,'Conexao',4,1);
          //Post;
        DisableControls;
        Tag := 1;
        Filter := 'cDispensa = '+QuotedStr('N')+' and cEntregue = '+QuotedStr('N')+' and cDispen = ' +QuotedStr('N')+
        //Filter := 'cDispensa = '+QuotedStr('N')+' and cDispen = ' +QuotedStr('N')+
                  ' and cObriga = '+QuotedStr('S');
        Filtered := true;
        if RecordCount > 0 then
          Result := MessageDlg('Existem documentos obrigatórios que não foram informados.'+#13+
                     'Gravar mesmo assim?',mtError,[mbYes,mbNo],0) = mrYes;
        Filter := '';
        Filtered := false;
      finally
        EnableControls;
        Tag := 0;
      end;
    end;
end;//TFRM_A001AD.ValidaGravaDoc

{------------------------------------------------------------------------------}
procedure TFRM_A001AD.Btn_Incluir2Click(Sender: TObject);
begin
  DED_CNOMECLIRE.SetFocus;
  //apenda registro na tabela tagrcl
  DBGenerica(DTM_A001AD.DTS_036,'Conexao',1,0);
  //DTM_A001AD.DTS_036.DataSet.Append;
  DTM_A001AD.DTS_036.DataSet.FieldByName('nidtagrcl').asInteger := 0;
  DTM_A001AD.DTS_036.DataSet.FieldByName('nidtbxloc').asInteger := 0;
  Botoes(['Btn_Gravar2','Btn_Cancelar2',
          'Btn_Gravar','Btn_Cancelar',
          'Btn_PrimeiroReg','Btn_Retroceder1','Btn_Avancar1','Btn_UltimoReg',
          'Btn_PrimeiroReg2','Btn_Retroceder3','Btn_Avancar3','Btn_UltimoReg2',
          'Btn_PrimeiroReg3','Btn_Retroceder4','Btn_Avancar4','Btn_UltimoReg3'
            ],'FRM_A001AD',true);
  GRD_TAGRCL.Enabled := false;
end;//TFRM_A001AD.Btn_Incluir2Click

{------------------------------------------------------------------------------}
procedure TFRM_A001AD.Btn_Alterar2Click(Sender: TObject);
begin
  //edita registro tabela tagrcl
  DBGenerica(DTM_A001AD.DTS_036,'Conexao',2,0);
  //DTM_A001AD.DTS_036.DataSet.Edit;
  TrataMaskEditTel(dsEdit);
  Botoes(['Btn_Gravar2','Btn_Cancelar2',
          'Btn_Gravar','Btn_Cancelar',
          'Btn_PrimeiroReg','Btn_Retroceder1','Btn_Avancar1','Btn_UltimoReg',
          'Btn_PrimeiroReg2','Btn_Retroceder3','Btn_Avancar3','Btn_UltimoReg2',
          'Btn_PrimeiroReg3','Btn_Retroceder4','Btn_Avancar4','Btn_UltimoReg3'
            ],'FRM_A001AD',true);
  GRD_TAGRCL.Enabled := false;
end;//TFRM_A001AD.Btn_Alterar2Click

{------------------------------------------------------------------------------}
procedure TFRM_A001AD.Btn_Gravar2Click(Sender: TObject);
begin
  with DTM_A001AD, DMControle do
    begin
      if trim(DED_CNOMECLIRE.text) = '' then
        begin
          MessageDlg('Você deve informar o nome do cliente!',mtInformation,[mbOk],0);
          DED_CNOMECLIRE.SetFocus;
          exit;
        end;
      //grava os dados da tabela tagrcl
      DBGenerica(DTM_A001AD.DTS_036,'Conexao',4,1);
      //DTS_036.DataSet.Post;
      DTS_036.DataSet.FieldByName('cfoneclire').EditMask := '!####-####;0; ';
      Botoes(['Btn_Incluir2','Btn_Alterar2','Btn_Excluir2','Btn_PrimeiroReg1','Btn_Retroceder2','Btn_Avancar2','Btn_UltimoReg1',
              'Btn_Gravar','Btn_Cancelar',
              'Btn_Incluir1','Btn_Alterar1','Btn_Excluir1','Btn_PrimeiroReg','Btn_Retroceder1','Btn_Avancar1','Btn_UltimoReg',
              'Btn_Incluir3','Btn_Alterar3','Btn_Excluir3','Btn_PrimeiroReg3','Btn_Retroceder3','Btn_Avancar3','Btn_UltimoReg1',
              'Btn_PrimeiroReg3','Btn_Retroceder4','Btn_Avancar4','Btn_UltimoReg3'
              ],'FRM_A001AD',true);
      GRD_TAGRCL.Enabled := true;
    end;
end;//TFRM_A001AD.Btn_Gravar2Click

{------------------------------------------------------------------------------}
procedure TFRM_A001AD.Btn_Cancelar2Click(Sender: TObject);
begin
  TrataMaskEditTel(dsBrowse);
  //cancela a operação na tabela tagrcl
  DBGenerica(DTM_A001AD.DTS_036,'Conexao',3,0);
  //DTM_A001AD.DTS_036.DataSet.Cancel;
  Botoes(['Btn_Incluir2','Btn_Alterar2','Btn_Excluir2','Btn_PrimeiroReg1','Btn_Retroceder2','Btn_Avancar2','Btn_UltimoReg2',
          'Btn_Gravar','Btn_Cancelar',
          'Btn_Incluir1','Btn_Alterar1','Btn_Excluir1','Btn_PrimeiroReg','Btn_Retroceder1','Btn_Avancar1','Btn_UltimoReg',
          'Btn_Incluir3','Btn_Alterar3','Btn_Excluir3','Btn_PrimeiroReg1','Btn_Retroceder3','Btn_Avancar3','Btn_UltimoReg1',
          'Btn_PrimeiroReg3','Btn_Retroceder4','Btn_Avancar4','Btn_UltimoReg3'
          ],'FRM_A001AD',true);
  GRD_TAGRCL.Enabled := true;

end;//TFRM_A001AD.Btn_Cancelar2Click

{------------------------------------------------------------------------------}
procedure TFRM_A001AD.Btn_Incluir3Click(Sender: TObject);
begin
  //DTM_A001AD.DTS_035.DataSet.Insert;
  //apenda registro na tabela de tagrfn
  DBGenerica(DTM_A001AD.DTS_035,'Conexao',1,0);
  DED_CNOMEREFOR.SetFocus;
  DTM_A001AD.DTS_035.DataSet.FieldByName('nidtagrfn').asInteger := 0;
  DTM_A001AD.DTS_035.DataSet.FieldByName('nidtbxloc').asInteger := 0;
  Botoes(['Btn_Gravar3','Btn_Cancelar3',
          'Btn_Gravar','Btn_Cancelar',
          'Btn_PrimeiroReg','Btn_Retroceder1','Btn_Avancar1','Btn_UltimoReg',
          'Btn_PrimeiroReg1','Btn_Retroceder2','Btn_Avancar2','Btn_UltimoReg1',
          'Btn_PrimeiroReg3','Btn_Retroceder4','Btn_Avancar4','Btn_UltimoReg3'
            ],'FRM_A001AD',true);
  GRD_TAGRFN.Enabled := false;
end;//TFRM_A001AD.Btn_Incluir3Click

{------------------------------------------------------------------------------}
procedure TFRM_A001AD.Btn_Alterar3Click(Sender: TObject);
begin
  //edit tabela tagrfn
  DBGenerica(DTM_A001AD.DTS_035,'Conexao',2,0);
  TrataMaskEditTel(dsEdit);
  Botoes(['Btn_Gravar3','Btn_Cancelar3',
          'Btn_Gravar','Btn_Cancelar',
          'Btn_PrimeiroReg','Btn_Retroceder1','Btn_Avancar1','Btn_UltimoReg',
          'Btn_PrimeiroReg1','Btn_Retroceder2','Btn_Avancar2','Btn_UltimoReg1',
          'Btn_PrimeiroReg3','Btn_Retroceder4','Btn_Avancar4','Btn_UltimoReg3'
            ],'FRM_A001AD',true);
  GRD_TAGRFN.Enabled := false;
end;//TFRM_A001AD.Btn_Alterar3Click

{------------------------------------------------------------------------------}
procedure TFRM_A001AD.Btn_Gravar3Click(Sender: TObject);
begin
  with DTM_A001AD, DMControle do
    begin
      if trim(DED_CNOMEREFOR.Text) = '' then
        begin
          MessageDlg('Você deve informar o nome do fornecedor de referência!',mtInformation,[mbOk],0);
          DED_CNOMEREFOR.SetFocus;
          exit;
        end;
      //grava os dados na tabela tagrfn
      DBGenerica(DTS_035,'Conexao',4,1);
      //DTS_035.DataSet.Post;
      DTS_035.DataSet.FieldByName('cfonerefor').EditMask := '!####-####;0; ';
      Botoes(['Btn_Incluir3','Btn_Alterar3','Btn_Excluir3','Btn_PrimeiroReg2','Btn_Retroceder3','Btn_Avancar3','Btn_UltimoReg2',
              'Btn_Gravar','Btn_Cancelar',
              'Btn_Incluir1','Btn_Alterar1','Btn_Excluir1','Btn_PrimeiroReg','Btn_Retroceder1','Btn_Avancar1','Btn_UltimoReg',
              'Btn_Incluir2','Btn_Alterar2','Btn_Excluir2','Btn_PrimeiroReg1','Btn_Retroceder2','Btn_Avancar2','Btn_UltimoReg1',
              'Btn_PrimeiroReg3','Btn_Retroceder4','Btn_Avancar4','Btn_UltimoReg3'
             ],'FRM_A001AD',true);
      GRD_TAGRFN.Enabled := true;
      
    end;
end;//TFRM_A001AD.Btn_Gravar3Click

{------------------------------------------------------------------------------}
procedure TFRM_A001AD.Btn_Cancelar3Click(Sender: TObject);
begin
  TrataMaskEditTel(dsBrowse);
  //cancela operação
  DBGenerica(DTM_A001AD.DTS_035,'Conexao',3,0);
  //DTM_A001AD.DTS_035.DataSet.Cancel;
  Botoes(['Btn_Incluir3','Btn_Alterar3','Btn_Excluir3','Btn_PrimeiroReg2','Btn_Retroceder3','Btn_Avancar3','Btn_UltimoReg2',
          'Btn_Gravar','Btn_Cancelar',
          'Btn_Incluir1','Btn_Alterar1','Btn_Excluir1','Btn_PrimeiroReg','Btn_Retroceder1','Btn_Avancar1','Btn_UltimoReg',
          'Btn_Incluir2','Btn_Alterar2','Btn_Excluir2','Btn_PrimeiroReg1','Btn_Retroceder2','Btn_Avancar2','Btn_UltimoReg1',
          'Btn_PrimeiroReg3','Btn_Retroceder4','Btn_Avancar4','Btn_UltimoReg3'
          ],'FRM_A001AD',true);
  GRD_TAGRFN.Enabled := true;
end;//TFRM_A001AD.Btn_Cancelar3Click

{------------------------------------------------------------------------------}
procedure TFRM_A001AD.btn_Excluir2Click(Sender: TObject);
begin
  //deleta o registro da tabela tagrcl
  DBGenerica(DTM_A001AD.DTS_036,'Conexao',5,1);
end;//TFRM_A001AD.btn_Excluir2Click

{------------------------------------------------------------------------------}
procedure TFRM_A001AD.Btn_PrimeiroReg1Click(Sender: TObject);
begin
  //aponta para o primeiro registro da tabela tagrcl
  DBGenerica(DTM_A001AD.DTS_036,'Conexao',0,1);
  //DTM_A001AD.DTS_036.DataSet.First;
end;//TFRM_A001AD.Btn_PrimeiroReg1Click

{------------------------------------------------------------------------------}
procedure TFRM_A001AD.Btn_Retroceder2Click(Sender: TObject);
begin
  //registro anterior
  DBGenerica(DTM_A001AD.DTS_036,'Conexao',0,2);
end;//TFRM_A001AD.Btn_Retroceder2Click

{------------------------------------------------------------------------------}
procedure TFRM_A001AD.Btn_Avancar2Click(Sender: TObject);
begin
  //proximo registro
  DBGenerica(DTM_A001AD.DTS_036,'Conexao',0,3);
end;//TFRM_A001AD.Btn_Avancar2Click

{------------------------------------------------------------------------------}
procedure TFRM_A001AD.Btn_UltimoReg1Click(Sender: TObject);
begin
  //posiciona no ultimo registro
  DBGenerica(DTM_A001AD.DTS_036,'Conexao',0,4);
end;//TFRM_A001AD.Btn_UltimoReg1Click

{------------------------------------------------------------------------------}
procedure TFRM_A001AD.Btn_Excluir3Click(Sender: TObject);
begin
  //deleta registro da tabela tagrfn
  DBGenerica(DTM_A001AD.DTS_035,'Conexao',5,1);
end;//TFRM_A001AD.Btn_Excluir3Click

{------------------------------------------------------------------------------}
procedure TFRM_A001AD.Btn_PrimeiroReg2Click(Sender: TObject);
begin
  //posiciona no primeiro registro da tabela tagrfn
  DBGenerica(DTM_A001AD.DTS_035,'Conexao',0,1);
end;//TFRM_A001AD.Btn_PrimeiroReg2Click(

{------------------------------------------------------------------------------}
procedure TFRM_A001AD.Btn_Retroceder3Click(Sender: TObject);
begin
  //registro anterior
  DBGenerica(DTM_A001AD.DTS_035,'Conexao',0,2);
end;//TFRM_A001AD.Btn_Retroceder3Click(

{------------------------------------------------------------------------------}
procedure TFRM_A001AD.Btn_Avancar3Click(Sender: TObject);
begin
  //proximo registro
  DBGenerica(DTM_A001AD.DTS_035,'Conexao',0,3);
end;//TFRM_A001AD.Btn_Avancar3Click(

{------------------------------------------------------------------------------}
procedure TFRM_A001AD.Btn_UltimoReg2Click(Sender: TObject);
begin
  //aponta para o ultimo registro da tabela tagrfn
  DBGenerica(DTM_A001AD.DTS_035,'Conexao',0,4);
end; //TFRM_A001AD.Btn_UltimoReg2Click

{------------------------------------------------------------------------------}
procedure TFRM_A001AD.Btn_RelFornecClick(Sender: TObject);
begin
  Application.CreateForm(TDTM_A002AD,DTM_A002AD);
  Application.CreateForm(TFRM_A002AD,FRM_A002AD);
  FRM_A002AD.CBE_CCPFCNPJ_3.Text := CBE_CCPFCNPJ.Text;
  FRM_A002AD.CBE_CCPFCNPJ_3Exit(Sender);

  oControlForms.AtivaForm('FRM_A002AD', shModal,NIL);

end;//TFRM_A001AD.Btn_RelFornecClick

{------------------------------------------------------------------------------}
procedure TFRM_A001AD.Btn_CertificadoClick(Sender: TObject);
  var
    oReg : TBookmark;
begin
  with DTM_A001AD do
    begin
      Application.CreateForm(TFRM_A005AD,FRM_A005AD);
      oControlForms.AtivaForm('FRM_A005AD', shModal,NIL);
      QRY_031.DisableControls;
      oReg :=  QRY_031.GetBookmark;
      QRY_031.Refresh;
      QRY_031.GotoBookmark(oReg);
      QRY_031.FreeBookmark(oReg);
      QRY_016AfterScroll(QRY_031);
      QRY_031.EnableControls;
    end;
end;//TFRM_A001AD.Btn_CertificadoClick

{------------------------------------------------------------------------------}
procedure TFRM_A001AD.DBM_CATIVIDADEKeyPress(Sender: TObject;
  var Key: Char);
begin
  Key := UpCase(Key);
  oMetodos.ValidaEntrada(Sender,Key);
end;//TFRM_A001AD.DBM_CATIVIDADEKeyPress

{------------------------------------------------------------------------------
verifica se existe novos documentos, e inseri na documentação do fornecedor}
procedure TFRM_A001AD.InseriNovosDocumentos(cTipopess : String; lValidar : Boolean = false);
begin
  with DTM_A001AD do
    begin
      if (not(DTS_031.DataSet.State in [dsInsert,dsEdit])) and
         (DTS_031.DataSet.RecordCount > 0)then
        if QRY_033_01.RecordCount > 0 then
          begin
            QRY_033_01.Filter := 'ctipopess = '+QuotedStr(cTipopess)+'or ctipopess = '+QuotedStr('A');
            QRY_033_01.Filtered := true;
            if QRY_033_01.RecordCount > 0 then
              begin
                try
                  QRY_034.DisableControls;
                  QRY_034.Tag := 1;
                  //posiciona no primeiro registro
                  DBGenerica(DTM_A001AD.DTS_033_01,'Conexao',0,1);
                  while not(QRY_033_01.Eof) do
                    begin
                      //apenda registro na qry_034
                      DBGenerica(DTS_034,'Conexao',1,0);
                      QRY_034.FieldByName('nidtagdoc').asInteger := 1;
                      QRY_034.FieldByName('nidtagigd').asInteger :=
                      QRY_033_01.FieldByName('nidtagigd').asInteger;
                      QRY_034.FieldByName('nidcadfor').asInteger :=
                      QRY_031.FieldByName('nidcadfor').asInteger;
                      QRY_034.FieldByName('cdispensa').asString := 'N';
                      QRY_034.FieldByName('centregue').asString := 'N';
                      if lValidar then
                        ValidaDocumento(QRY_034);
                      //grava os dados na tabela de documentacao do fornecedor
                      DBGenerica(DTS_034,'Conexao',4,1);
                      //proximo registro da tabela de documentos
                      DBGenerica(DTS_033_01,'Conexao',0,3);
                    end;
                finally
                  QRY_034.EnableControls;
                  QRY_034.Tag := 0 ;
                end;
                //aplica applyupdates na qry_034
                DBGenerica(DTS_034,'Conexao',4,1,nil,true);
                QRY_033_01.Refresh;
                QRY_034.Refresh;
              end;
            QRY_033_01.Filtered := false;
          end;

    end;
end;//TFRM_A001AD.InseriNovosDocumentos

{------------------------------------------------------------------------------}
procedure TFRM_A001AD.DBG_DOCCellClick(Column: TColumn);
begin
  DBG_DOC.Options := DBG_DOC.Options - [dgRowSelect];
  if DTM_A001AD.DTS_031.DataSet.State in [dsInsert,dsEdit] then
    if (Column.Index = 1) or (Column.Index = 2) then
      begin
        DBG_DOC.Options := DBG_DOC.Options - [dgEditing];
        with DBG_DOC.DataSource.DataSet do
          begin
            //edita o dataset
            DBGenerica(DBG_DOC.DataSource,'Conexao',2,0);
            if FieldByName(Column.FieldName).asString = 'S' then
              FieldByName(Column.FieldName).asString := 'N'
            else
              begin
                FieldByName(Column.FieldName).asString := 'S';
                if Column.FieldName = 'CENTREGUE' then
                  FieldByName('CDISPENSA').asString := 'N'
                else
                  if Column.FieldName = 'CDISPENSA' then
                    FieldByName('CENTREGUE').asString := 'N';
              end;
            if not(ValidaDocumento(DTM_A001AD.QRY_031)) then
              begin
                FieldByName('CDISPENSA').asString := 'N';
                MessageDlg('Documento Obrigatório e não pode ser dispensado.',mtInformation,[mbOK],0);
              end;
            //grava os dados no dataset
            DBGenerica(DBG_DOC.DataSource,'Conexao',4,1);
            DBG_DOC.DataSource.AutoEdit := true;
          end;
      end
    else
      DBG_DOC.Options := DBG_DOC.Options + [dgEditing];
end;//TFRM_A001AD.DBG_DOCCellClick

{------------------------------------------------------------------------------}
procedure TFRM_A001AD.DBG_DOCDrawColumnCell(Sender: TObject;
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
   if Column.FieldName = 'DDATAVALID' then
     if Column.Field.AsDateTime  < Date then
       TDBGrid(Sender).Canvas.Font.Color := clRed;
   if Column.FieldName = 'CSTATUS' then
     if (Column.Field.AsString = 'IRREGULAR') or
        (Column.Field.AsString = '') then
       TDBGrid(Sender).Canvas.Font.Color := clRed;
   TDBGrid(Sender).Canvas.FillRect(Rect);
   TDBGrid(Sender).DefaultDrawDataCell(Rect, Column.Field, State);
end;//TFRM_A001AD.DBG_DOCDrawColumnCell

{------------------------------------------------------------------------------}
procedure TFRM_A001AD.DBG_DOCKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  //se o usuario pressionou as teclas Ctrl+Del
  if (Shift = [ssCtrl]) and (Key = 46) Then
    //cancela o pressionamento
    KEY := 0
  else
    //se pressionou a tecla Insert
    if Key = 45 then
      //cancela o pressionamento
      Key := 0
    else
      //se o usuario pressinou Del e o fornecedor estiver em edição ou inserção
      if ((Key = 46) or (Key = 8)) and (DTM_A001AD.DTS_031.State in [dsEdit,dsInsert]) then
        //se for no campo de Data de Validade
        if DBG_DOC.SelectedField.FieldName = 'DDATAVALID' then
          begin
            //se a tabela de documentação não estiver em edição
            if not(DBG_DOC.DataSource.State = dsEdit) then
              //coloca a tabela de documentação em edição
              DBG_DOC.DataSource.Edit;
            //limpa o conteudo do campo de data
            DBG_DOC.SelectedField.Value := null;
          end;


end;//TFRM_A001AD.DBG_DOCKeyDown

{------------------------------------------------------------------------------}
procedure TFRM_A001AD.DBG_DOCKeyPress(Sender: TObject; var Key: Char);
begin
  if ((DBG_DOC.SelectedField.FieldName = 'CENTREGUE') or (DBG_DOC.SelectedField.FieldName = 'CDISPENSA')) then
    begin
      if (Key in ['x','X']) and (DTM_A001AD.DTS_031.DataSet.State in [dsInsert,dsEdit]) then
        DBG_DOCCellClick(DBG_DOC.Columns[DBG_DOC.SelectedIndex]);
    end;
end;//TFRM_A001AD.DBG_DOCKeyPress

{------------------------------------------------------------------------------
valida toda a documentação do fornecedor}
procedure TFRM_A001AD.ValidaTodosDocumento;
begin
  with DTM_A001AD do
    begin
      try
        QRY_034.DisableControls;
        QRY_034.Tag := 1;
        //aponta para o primeiro registro da qry_034
        DBGenerica(DTS_034,'Conexao',0,1);
        while not(QRY_034.Eof) do
          begin
            ValidaDocumento(QRY_034);
            //posiciona no proximo registro da qry_034
            DBGenerica(DTS_034,'Conexao',0,3);
          end;
      finally
        DBGenerica(DTS_034,'Conexao',0,1);
        QRY_034.EnableControls;
        QRY_034.Tag := 0;
      end;
    end;

end;//TFRM_A001AD.ValidaTodosDocumento

{------------------------------------------------------------------------------}
procedure TFRM_A001AD.DBG_DOCColEnter(Sender: TObject);
begin
  if ((DBG_DOC.SelectedField.FieldName = 'CENTREGUE') or (DBG_DOC.SelectedField.FieldName = 'CDISPENSA')) then
    DBG_DOC.Options := DBG_DOC.Options - [dgEditing]
  else
    DBG_DOC.Options := DBG_DOC.Options + [dgEditing]
end;//TFRM_A001AD.DBG_DOCColEnter

{------------------------------------------------------------------------------}
procedure TFRM_A001AD.CBE_CNOMELOCExit(Sender: TObject);
  var
    oDts : TDataSource;
    oQry : TOraQuery;
begin
  oDts := nil;
  oQry := nil;
  if Sender = CBE_CNOMELOC then
    begin
      oDts := DTM_A001AD.DTS_036;
      oQry := DTM_A001AD.QRY_012_01;
    end
  else
    if Sender = CBE_CNOMELOC_1 then
      begin
        oDts := DTM_A001AD.DTS_035;
        oQry := DTM_A001AD.QRY_012;
      end;

  if (oDts.DataSet.State in [dsEdit,dsInsert]) then
    begin
      if (Trim(TComboEdit(Sender).Text) = '') then
        oDts.DataSet.FieldByName('nidtbxloc').asInteger := 0
      else
        begin
          with DMControle do
            begin

              if FRM_PESQUISA <> nil then
                ProcLocalRepit(TComboEdit(Sender),true,false)
              else
                ProcLocalRepit(TComboEdit(Sender),false,false);

              oDts.DataSet.FieldByName('nidtbxloc').asInteger :=
              QryTemp.FieldByName('nidtbxloc').AsInteger;
              oQry.ParamByName('nidtbxloc').AsInteger :=
              QryTemp.FieldByName('nidtbxloc').AsInteger;
              oQry.ExecSQL;
              QryTemp.Close;
              QryTemp.SQL.Clear;
            end;
        end;
    end;
end;//TFRM_A001AD.CBE_CNOMELOCExit

{------------------------------------------------------------------------------}
procedure TFRM_A001AD.Btn_PrimeiroReg3Click(Sender: TObject);
begin
  //posiciona no primeiro registro da documentação
  DBGenerica(DBG_DOC.DataSource,'Conexao',0,1);
  DBG_DOC.Options := DBG_DOC.Options + [dgRowSelect];
end;//TFRM_A001AD.Btn_PrimeiroReg3Click

{------------------------------------------------------------------------------}
procedure TFRM_A001AD.Btn_Retroceder4Click(Sender: TObject);
begin
  //registro anterior
  DBGenerica(DBG_DOC.DataSource,'Conexao',0,2);
  DBG_DOC.Options := DBG_DOC.Options + [dgRowSelect];
end;//TFRM_A001AD.Btn_Retroceder4Click

{------------------------------------------------------------------------------}
procedure TFRM_A001AD.Btn_Avancar4Click(Sender: TObject);
begin
  //proximo registro na tabela de documentação
  DBGenerica(DBG_DOC.DataSource,'Conexao',0,3);
  DBG_DOC.Options := DBG_DOC.Options + [dgRowSelect];
end;// TFRM_A001AD.Btn_Avancar4Click

{------------------------------------------------------------------------------}
procedure TFRM_A001AD.Btn_UltimoReg3Click(Sender: TObject);
begin
  //posiciona no ultimo registro da tabela de documentos
  DBGenerica(DBG_DOC.DataSource,'Conexao',0,4);
  DBG_DOC.Options := DBG_DOC.Options + [dgRowSelect];
end;//TFRM_A001AD.Btn_UltimoReg3Click

{------------------------------------------------------------------------------}

procedure TFRM_A001AD.PGC_FornecedorDrawTab(Control: TCustomTabControl;
  TabIndex: Integer; const Rect: TRect; Active: Boolean);

begin

    PersonalizaTabs(Control,TabIndex,Rect,Active);

end;//TFRM_A001AD.PGC_FornecedorDrawTab

{------------------------------------------------------------------------------}

procedure TFRM_A001AD.FormCreate(Sender: TObject);
begin
 //habilida o desenho manual das tabs
 PGC_Fornecedor.OwnerDraw := true;
end;//TFRM_A001AD.FormCreate

{------------------------------------------------------------------------------}

procedure TFRM_A001AD.DED_CCPFRESPExit(Sender: TObject);
begin
  if trim(LimpaMask(DED_CCPFRESP.Text)) <> '' then
    if not(ValidaCpf(trim(LimpaMask(DED_CCPFRESP.Text)))) then
      begin
        MessageDlg('CPF do responsável invalido!',mtError,[mbOk],0);
        DED_CCPFRESP.SetFocus;
        Abort;
      end;
end;

end.




