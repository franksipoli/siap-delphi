{*******************************************************************************
 *                                                                             *
 *  Cadastro Geral de Pessoas                                                  *
 *  Cadastro base de informa��es sobre pessoas juridicas e fisicas             *
 *  Data da Cria��o : 09/02/2004                                               *
 *  Programador Leandro Ribas                                                  *
 *  Data Finaliza��o : 11/02/2004                                              *
 *                                                                             *
 *  Data da Ultima Atualiza��o :10/03/2004                                     *
 *  Atualizado por: Leandro Ribas                                              *
 *                                                                             *
 *******************************************************************************
}


unit A006;

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
  LMDSimplePanel ;

type
  TFRM_A006 = class(TForm)
    Panel2: TPanel;
    Btn_Incluir: TSpeedButton;
    Btn_Alterar: TSpeedButton;
    Btn_Cancelar: TSpeedButton;
    Btn_Localizar: TSpeedButton;
    Btn_Imprimir: TSpeedButton;
    BTN_SAIR: TSpeedButton;
    Btn_Avancar: TSpeedButton;
    Btn_Retroceder: TSpeedButton;
    Btn_Excluir: TSpeedButton;
    Btn_Gravar: TSpeedButton;
    LMDGroupBox2: TLMDGroupBox;
    Label4: TLabel;
    Label20: TLabel;
    Lbl_CpfCnpj: TLabel;
    Lbl_RgIE: TLabel;
    LBL_UF: TLabel;
    LBL_CNOMEEMIRG: TLabel;
    LBL_DDTEMIRG: TLabel;
    LBL_DDTNASC: TLabel;
    LBL_CNOMEMAE: TLabel;
    LBL_CSEXO: TLabel;
    DED_CNOMEGRL: TDBEdit;
    DED_CRGIE: TDBEdit;
    DBL_NIDTBXERG: TRxDBLookupCombo;
    DBD_DDTEMIRG: TDBDateEdit;
    DBD_DDTNASC: TDBDateEdit;
    DED_CNOMEMAE: TDBEdit;
    LMDGroupBox3: TLMDGroupBox;
    Lbl_res: TLabel;
    Label16: TLabel;
    Label25: TLabel;
    Label2: TLabel;
    DED_CTELRES: TDBEdit;
    DED_CCONTATO: TDBEdit;
    DED_CEMAIL: TDBEdit;
    DED_CDDD: TDBEdit;
    LMDGroupBox4: TLMDGroupBox;
    Label10: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label17: TLabel;
    Label24: TLabel;
    Label5: TLabel;
    Label32: TLabel;
    DED_CNUMERO: TDBEdit;
    DED_CCOMPLEMEN: TDBEdit;
    DED_CNOMEBAI: TDBEdit;
    DED_CSIGLAUF: TDBEdit;
    CBE_NCEP: TComboEdit;
    DED_CNOMELOC: TDBEdit;
    DED_CNOMEPAIS: TDBEdit;
    LMDGroupBox1: TLMDGroupBox;
    Label18: TLabel;
    Label23: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    DED_CNUMEROEC: TDBEdit;
    DED_COMPLEEC: TDBEdit;
    DED_CNOMEBAI_1: TDBEdit;
    DED_CSIGLAUF_1: TDBEdit;
    CBE_NCEP_1: TComboEdit;
    DED_CNOMELOC_1: TDBEdit;
    DED_CNOMEPAIS_1: TDBEdit;
    DED_CNOMELOG: TDBEdit;
    DED_CNOMELOG_1: TDBEdit;
    DBC_CSEXO: TRxDBComboBox;
    DBC_CUFEMIRG: TRxDBComboBox;
    DED_CTELCELULA: TDBEdit;
    DED_CTELCOM: TDBEdit;
    Label1: TLabel;
    Label6: TLabel;
    BTN_TIRAEC: TSpeedButton;
    DED_CPESSOAFJ: TDBEdit;
    CBE_CCPFCNPJ: TComboEdit;
    procedure BTN_SAIRClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure Btn_LocalizarClick(Sender: TObject);
    procedure Btn_AvancarClick(Sender: TObject);
    procedure Btn_RetrocederClick(Sender: TObject);
    procedure Btn_IncluirClick(Sender: TObject);
    procedure Btn_AlterarClick(Sender: TObject);
    procedure Btn_GravarClick(Sender: TObject);
    procedure Btn_CancelarClick(Sender: TObject);
    procedure Btn_ExcluirClick(Sender: TObject);
    procedure Btn_ImprimirClick(Sender: TObject);
    procedure CBE_NCEPExit(Sender: TObject);
    procedure CBE_NCEP_1ButtonClick(Sender: TObject);
    procedure CBE_NCEPButtonClick(Sender: TObject);
    procedure DED_CNUMEROKeyPress(Sender: TObject; var Key: Char);
    procedure DED_CCPFCNPJExit(Sender: TObject);
    procedure DBD_DDTNASCExit(Sender: TObject);
    procedure DED_CTELRESEnter(Sender: TObject);
    procedure DED_CTELRESExit(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure CBE_NCEPChange(Sender: TObject);
    procedure CBE_NCEPKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CBE_NCEP_1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CBE_NCEPKeyPress(Sender: TObject; var Key: Char);
    procedure DED_CNOMELOGEnter(Sender: TObject);
    procedure BTN_TIRAECClick(Sender: TObject);
    procedure DED_CPESSOAFJChange(Sender: TObject);
    procedure CBE_CCPFCNPJEnter(Sender: TObject);
    procedure CBE_CCPFCNPJKeyPress(Sender: TObject; var Key: Char);
    procedure CBE_CCPFCNPJKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DED_CNOMEGRLExit(Sender: TObject);
    procedure CBE_NCEP_1Exit(Sender: TObject);
    procedure DED_CRGIEChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }

  end;

var
  FRM_A006: TFRM_A006;
  lDigCepEnd : boolean = false;
implementation

uses MPLCtrl, Pesquisa, D006, A004, DMCTRL, MPLLib, UVariaveis, TELAPRIN;

{$R *.DFM}

procedure TFRM_A006.BTN_SAIRClick(Sender: TObject);
begin
   //desativa os eventos de saidas dos coomponente
   CBE_CCPFCNPJ.OnExit := nil;
   CBE_NCEP.OnExit := nil;
   CBE_NCEP_1.OnExit := nil;
   //fecha o form
   close ;
end;//TFRM_A006.BTN_SAIRClick

{------------------------------------------------------------------------------}

procedure TFRM_A006.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 //fecha os datasets da aplica��o e libera o form da memoria
 Action:= oControlForms.Saidas(Self,[DTM_A006],DTM_A006.DTS_016.DataSet);
end;//TFRM_A006.FormClose

{------------------------------------------------------------------------------}

procedure TFRM_A006.FormShow(Sender: TObject);
begin
  //verifica o acesso do usu�rio a objetos e campos da aplica��o
  if not(Acesso(nMatricula,'A006',DTM_A006)) then
    close;
  //muda o estados dos bot�es da aplica��o
  Botoes(['Btn_Cancelar','Btn_Gravar','BTN_TIRAEC'],'FRM_A006',false);

  FRM_A006.OnShow := nil;
 {� atribuido ao OnShow do Form o valor nil para que o mesmo seja executado apenas uma vez}
 {pelo fato que se outra aplica��o for chamada pela tecla F3, e ao retornar da aplica��o que foi chamada pela tecla}
 {o evento OnShow deste form n�o acontecer�, ou seja n�o ser� executado, para permanecer o mesmo status da aplica��o}
 {quando o F3 foi chamado}
end;//TFRM_A006.FormShow

{------------------------------------------------------------------------------}

procedure TFRM_A006.Btn_LocalizarClick(Sender: TObject);
begin
  //chama pesquisa padr�o na tabela cadastro geral
  MPLCtrl.Pesquisa(DTM_A006.QRY_016,true,'','');
end;//TFRM_A006.Btn_LocalizarClick

{------------------------------------------------------------------------------}

procedure TFRM_A006.Btn_AvancarClick(Sender: TObject);
begin
  //id := DTM_A006.QRY_016.FieldByName('nidcadgrl').AsInteger + 1;
  //DTM_A006.QRY_016.ParamByName('nidcadgrl').asInteger := id;
  //DTM_A006.QRY_016.ExecSQL;
  //proximo registro na tabela de cadastro geral
  DBGenerica(DTM_A006.DTS_016,'Conexao',0,3);
end;//TFRM_A006.Btn_AvancarClick

{------------------------------------------------------------------------------}

procedure TFRM_A006.Btn_RetrocederClick(Sender: TObject);
begin
//  id := DTM_A006.QRY_016.FieldByName('nidcadgrl').AsInteger - 1;
//  DTM_A006.QRY_016.ParamByName('nidcadgrl').asInteger := id;
//  DTM_A006.QRY_016.ExecSQL;
  //registro anterior na tabela de cadastro geral
  DBGenerica(DTM_A006.DTS_016,'Conexao',0,2);
end;//TFRM_A006.Btn_RetrocederClick

{------------------------------------------------------------------------------}

procedure TFRM_A006.Btn_IncluirClick(Sender: TObject);
begin
  //muda o estados dos bot�es da aplica��o
  Botoes(['Btn_Cancelar','Btn_Gravar'],'FRM_A006',true);
  //desabilida os componentes referente a pessoa fisica
  LBL_CNOMEEMIRG.Enabled := false;
  DBL_NIDTBXERG.Enabled  := false;
  LBL_UF.Enabled         := false;
  DBC_CUFEMIRG.Enabled   := false;
  LBL_DDTEMIRG.Enabled   := false;
  DBD_DDTEMIRG.Enabled   := false;
  LBL_DDTNASC.Enabled    := false;
  DBD_DDTNASC.Enabled    := false;
  LBL_CSEXO.Enabled      := false;
  DBC_cSexo.Enabled      := false;
  LBL_CNOMEMAE.Enabled   := false;
  DED_CNOMEMAE.Enabled   := false;

  //se o campo CPF/CNPJ estiver com foco
  //limpa a mascara de edi��o
  //se n�o manda o foco para o campo
  if CBE_CCPFCNPJ.Focused then
    CBE_CCPFCNPJEnter(CBE_CCPFCNPJ)
  else
    CBE_CCPFCNPJ.SetFocus;

  //limpa os campos de CEP
  CBE_NCEP.Text := '';
  CBE_NCEP_1.Text := '';

  //inclui mais campos requeridos para inclus�o de novo registro
  //oControlForms.SetCompomentRequerido('FRM_A006',DED_CRGIE);
  //oControlForms.SetCompomentRequerido('FRM_A006',DBC_CUFEMIRG);
  //oControlForms.SetCompomentRequerido('FRM_A006',DBL_NIDTBXERG);
  //oControlForms.SetCompomentRequerido('FRM_A006',DBD_DDTEMIRG);



  with DTM_A006 do
    begin
      //inclui registro no dataset da cadgrl(cadastro geral)
      DBGenerica(DTS_016,'Conexao',1,0,nil);
      //inclui registro no datset da tageec(endere�o de correspodencia)
      DBGenerica(DTS_018,'Conexao',1,0,nil);
    end;
end;//TFRM_A006.Btn_IncluirClick

{------------------------------------------------------------------------------}

procedure TFRM_A006.Btn_AlterarClick(Sender: TObject);
begin
  //coloca os bot�es em estado de alter��o de registro
  Botoes(['Btn_Cancelar','Btn_Gravar'],'FRM_A006',true);

  //remove os compomentes requeridos para inclus�o de registro
  oControlForms.RemoveCompomentRequerido(DBD_DDTEMIRG);
  oControlForms.RemoveCompomentRequerido(DBL_NIDTBXERG);
  oControlForms.RemoveCompomentRequerido(DBC_CUFEMIRG);
  oControlForms.RemoveCompomentRequerido(DED_CRGIE);

  with DTM_A006 do
    begin
       //se endere�o de correspondencia for vazio
      if DTS_018.DataSet.FieldByName('nidTagEec').IsNull then
        begin
          //edita registro no dataset da cadgrl(cadastro geral)
          DBGenerica(DTS_016,'Conexao',2,0,nil);
          //inclui registro no dataset da tageec(endere�o de correspondencia)
          DBGenerica(DTS_018,'Conexao',1,0,nil);
          //passa valor para id do endere�o de correspondencia
          DTS_018.DataSet.FieldByName('nidTagEec').AsInteger := 0;
        end
      else
        begin
          //edita registro do dataset da cadgrl(cadastro geral)
          DBGenerica(DTS_016,'Conexao',2,0,nil);
          //edita registro da tabela de endre�o de correspondencia
          DTS_018.DataSet.Edit;
        end;
      //se pessoa fisica
      if DED_CPESSOAFJ.Text = 'FISICA' then
        //edita registro do dataset da cadfis(pessoa fisica)
        DBGenerica(DTS_019,'Conexao',2,0)
      else
        //pessoa juridica
        //edita registro do dataset da cadjur(pessoa juridica)
        DBGenerica(DTS_025,'Conexao',2,0);

    end;
end;//TFRM_A006.Btn_AlterarClick

{------------------------------------------------------------------------------}

procedure TFRM_A006.Btn_GravarClick(Sender: TObject);
  var
    lAux : boolean;
begin

 //for�a a verfica��o do CPF/CNPJ digitado
 DED_CCPFCNPJExit(CBE_CCPFCNPJ);

 //se o usu�rio n�o informou um n�mero de CEP
 if Trim(LimpaMask(CBE_NCEP.Text)) = '' then
   begin
     //avisa ao usu�rio
     MessageDlg('Voc� deve informar um n�mero de Cep para o endere�o do Contribuinte!',
                mtInformation,[mbOK],0);
     //retorna o foco para o campo de CEP
     CBE_NCEP.SetFocus;
     //sai da rotina
     Exit;
   end;
 //se o usu�rio n�o informou nenhum endere�o
 if ((DTM_A006.DTS_013.DataSet.IsEmpty) or (DTM_A006.DTS_013.DataSet.FieldByName('nidcadlog').AsInteger = 0))
    and (LimpaMask(CBE_CCPFCNPJ.text) <> '') then
   begin
     //avisa ao usu�rio
     MessageDlg('Voc� deve informar um Logradouro para o endere�o da Pessoa!',
                mtInformation,[mbOK],0);
     //retorna o foco para o campo de CEP
     CBE_NCEP.SetFocus;
     //sai da rotina
     Exit;
   end;

 if (DTM_A006.DTS_013.DataSet.FieldByName('nidcadlog').AsInteger <> 0) and
    (Trim(DED_CNUMERO.Text) = '') then
   begin
     MessageDlg('Voc� deve informar o n�mero do endere�o!',mtInformation,[mbOk],0);
     DED_CNUMERO.SetFocus;
     Exit;
   end;


 //se o usu�rio infornou um n�mero e complemento e
 //se n�o informou um endere�o ou um n�mero de CEP
 if (Trim(DED_CNUMEROEC.Text) <> '') and (Trim(DED_COMPLEEC.Text) <> '') and
    ((Trim(LimpaMask(CBE_NCEP_1.Text)) = '') or (DTM_A006.QRY_013_01.IsEmpty)) then
   begin
     //avisa ao usu�rio
     MessageDlg('Voc� deve informar um endere�o de correspond�ncia!',
                mtInformation,[mbOK],0);
      //retorna o foco ao campo de CEP do endere�o de correspondecia
     CBE_NCEP_1.SetFocus;
     //sai da rotina
     Exit;
   end
 else
   //se o usuario informou um endere�o de correspondencia e n�o
   //informou o n�mero do endere�o
   if (Trim(LimpaMask(CBE_NCEP_1.Text)) <> '0') and (Trim(LimpaMask(CBE_NCEP_1.Text)) <> '') then
    if (Trim(DED_CNUMEROEC.Text) = '') then
      begin
        //avisa ao usu�rio
        MessageDlg('Voc� deve informar um n�mero do endere�o de correspond�ncia!',
                mtInformation,[mbOK],0);
        //retorna o foco ao campo de n�mero de endere�o
        DED_CNUMEROEC.SetFocus;
        //sai da rotina
        Exit;
      end;

 //se o RG/IE estiver em branco
{ if DED_CRGIE.Text = '' then
   begin

     //se for pessoa juridica
     if (DTM_A006.DTS_016.DataSet.FieldByName('cpessoafj').AsInteger = 2) or
        (DTM_A006.DTS_016.DataSet.State = dsInsert) then
       //forca o preenchimento do campo
       lAux := true
     else
       //verifica se o RG j� era preenchido, for�a o preenchimento do campo RG/IE
       lAux := (DED_CRGIE.Field.OldValue <> Null) ;

     //se o campo RG/IE deve ser preenchido
     if lAux then
       begin
         //avisa ao usuario
         MessageDlg('Voc� deve informar um n�mero de RG/Inscri��o Estadual',mtInformation,[mbOk],0);
         //retorna o foco ao campo de RG/IE
         DED_CRGIE.SetFocus;
         //sai da rotina
         exit;
       end
     else
       begin
         //retira o org�o emissor informado pelo usuario
         DTM_A006.DTS_019.DataSet.FieldByName('nidtbxerg').asInteger := 0;
         //retira a data
         DTM_A006.DTS_019.DataSet.FieldByName('ddtemirg').value := null;
         //retira uf do RG
         DTM_A006.DTS_019.DataSet.FieldByName('cufemirg').asString := '';
       end;
   end
 else
   begin
     //se o usuario n�o informou a UF do RG e o campo estiver habilidado
     if (DBC_CUFEMIRG.Text = '') and (DBC_CUFEMIRG.Enabled) then
       begin
         //avisa ao usu�rio
         MessageDlg('Voc� deve informar de que UF � o RG',mtInformation,[mbOk],0);
         //retorna o foco ao campo
         DBC_CUFEMIRG.SetFocus;
         //sai da rotina
         exit;
       end;
     //se o org�o emissor estiver como "N�O INFORMADO" e for pessoa fisica
     if (DTM_A006.DTS_019.DataSet.FieldByName('nidtbxerg').AsInteger = 0) and
        (DTM_A006.DTS_016.DataSet.FieldByName('cpessoafj').AsInteger = 1) then
       begin
         //avisa ao usuario
         MessageDlg('Voc� deve informar o Org�o Emissor!',mtInformation,[mbOk],0);
         //retorna o foco ao campo
         DBL_NIDTBXERG.SetFocus;
         //sai da rotina
         exit;
       end;
     //se a data de emiss�o do RG estiver vazia e o campo estiver habilidado
     if ((DBD_DDTEMIRG.Date = null) or (DBD_DDTEMIRG.Date = 0)) and (DBD_DDTEMIRG.Enabled) then
       begin
         //avisa ao usuario
         MessageDlg('Voc� deve informar a data de emiss�o do RG!',mtInformation,[mbOk],0);
         //retorna o foco ao campo
         DBD_DDTEMIRG.SetFocus;
         //sai da rotina
         exit;
       end;
   end;}


 with DTM_A006 do
   begin
     //verifica se o usu�rio preencheu todos os campos requeridos
     if LiberadoGravacao(FRM_A006,DTS_016) then
       begin
         //se o usuario deseja gravar as informa��es
         if MessageDlg('Deseja Salvar Altera��es?',mtConfirmation,[mbYes,mbNo],0) = mrYes then
           begin
             //indica que o usuario respondeu sim
             lResp := true;

             //passa para o registro do dataset as informa��es
             //que est�o nos componentes data-ware
             if DTS_019.DataSet.State in [dsEdit,dsInsert] then
               DTS_019.DataSet.UpdateRecord
             else
               if DTS_025.DataSet.State in [dsEdit,dsInsert] then
                 DTS_025.DataSet.UpdateRecord;


             //se estiver inserindo registro no cadastro geral
             if DTS_016.DataSet.State = dsInsert then
               begin
                 //passa ID temporaria para pessoa
                 DTS_016.DataSet.FieldByName('nidCadGrl').AsInteger := 0;
                 //indica que o CNAE n�o foi informado
                 DTS_016.DataSet.FieldByName('nidtbxcna').AsInteger := 0;
                 //passa ID temporaria para o endere�o de correspondencia
                 DTS_018.DataSet.FieldByName('nidTagEec').AsInteger := 0;

                 //se foi inserido uma pessoa fisica
                 if DTS_019.DataSet.State = dsInsert then
                   begin
                     with DTS_019.DataSet do
                       begin
                         //atribui ID temporaria para campo
                         //estrangeiro
                         if FieldByName('nidTbxErg').isNull then
                            FieldByName('nidTbxErg').AsInteger := 0;
                         FieldByName('nIdTbxCor').value := 0;
                         FieldByName('nIdTbxloc').value := 0;
                         FieldByName('nIdTbxEci').value := 0;
                         FieldByName('nIdTbxGri').value := 0;
                         FieldByName('nIdTbxNac').value := 0;
                         FieldByName('nidCadFis').AsInteger := 0;
                         FieldByName('nidCadGrl').AsInteger := 0;
                       end;
                   end
                 else
                   //se foi inserido pessoa juridica
                   if DTS_025.DataSet.State = dsInsert then
                     begin
                        //passa ID temporaria para campos estrangeiros
                        DTS_025.DataSet.FieldByName('nidCadJur').value := 0;
                        DTS_025.DataSet.FieldByName('nidCadGrl').value := 0;
                     end;
               end;

             try
               //passa para o dataset(endereco de correspondencia) as
               //informa��es que est�o nos componentes data-ware
               DTS_018.DataSet.UpdateRecord;
               //desabilida a atualiza��o visual dos componentes data-ware que
               //est�o ligados a tabela de endere�o de correspondencia
               DTS_018.DataSet.DisableControls;
               //desabilida a atualiza��o visual dos componentes data-ware que
               //est�o ligados a tabela de logradouros
               DTS_013_01.DataSet.DisableControls;
               //passa para o dataset(cadastro geral) as
               //informa��es que est�o nos componentes data-ware
               DTS_016.DataSet.UpdateRecord;
               //passa para o cadastro geral a ID do logradouro
               //informado pelo usu�rio
               DTS_016.DataSet.FieldByName('nidCadLog').AsInteger :=
               DTS_013.DataSet.FieldByName('nidCadlog').AsInteger;

               //se o usu�rio n�o infornou um endere�o de correspondecia
               if Trim(LimpaMask(CBE_NCEP_1.Text))= '' then
                 //cancela a opera��o no dataset da tageec
                 DBGenerica(DTS_018,'Conexao',3,0)
               else
                 //se o estado do endere�o de correspondencia
                 //n�o for apenas de visualiz�o
                 if DTS_018.DataSet.State <> dsBrowse then
                   begin
                     //passa a ID do logradouro escolhido para a tabela de
                     //endere�o de correspondencia
                     DTS_018.DataSet.FieldByName('nidCadlog').AsInteger :=
                     DTS_013_01.DataSet.FieldByName('nidCadLog').AsInteger;
                   end;

               //inicia tansa��o
               DMControle.Conexao.StartTransaction;
               try
                 //se pessoa fisica estiver em edi��o
                 if DTS_019.DataSet.State = dsEdit then
                   //grava dados no dataset da cadfis
                   DBGenerica(DTS_019,'Conexao',4,1)
                 else
                   //se pessoa juridica estiver em edi��o
                   if DTS_025.DataSet.State = dsEdit then
                     //grava dados no dataset da cadjur
                     DBGenerica(DTS_025,'Conexao',4,1);

                 //tira a liga��o com a tabela master
                 QRY_018.MasterSource := nil;

                 //grava dados no dataset da cadgrl(cadastro geral)
                 DBGenerica(DTS_016,'Conexao',4,1,nil);

                 if lResp then
                   begin
                     //se o usuario n�o alterou ou inseriu um endere�o de correspondencia
                     if (DTS_018.DataSet.State = dsEdit) and (not(DTS_018.DataSet.Modified)) then
                       //cancela a opera��o corrente no dataset tageec
                       DBGenerica(DTS_018,'Conexao',3,0)
                     else
                       begin
                         //se inseriu um endere�o de correspondencia
                         if DTS_018.DataSet.State = dsInsert then
                           //pega a id do cadastro geral
                           DTS_018.DataSet.FieldByName('nidCadGrl').AsInteger :=
                           DTS_016.DataSet.FieldByName('nidCadGrl').AsInteger;
                         //grava os dados do dataset da tageec
                         DBGenerica(DTS_018,'Conexao',4,1,nil,true);
                       end;
                     //muda o estado dos bot�es da aplica��o
                     Botoes(['Btn_Gravar','Btn_Cancelar','BTN_TIRAEC'],'FRM_A006',false);

                   end;
                 //grava todos os dados alterados, e finaliza a transa��o
                 DMControle.Conexao.Commit;
               except
                 //se aconteceu algum erro
                 on E : Exception do
                   begin
                     //avisa ao usu�rio
                     MessageDlg('N�o foi possivel efetuar a grava��o de todos os dados,'+#13+
                                'por isso est� opera��o ser� cancelada para manter a integridade'+#13+
                                'dos seus dados!'+#13+'Erro: '+E.Message,mtError,[mbOk],0);
                     //cancela todas as altera��es dessa transa��o
                     //na base de dados
                     DMControle.Conexao.RollBack;
                     //cancela os datasets
                     Btn_CancelarClick(Btn_Cancelar);
                     //busca os dados da base
                     DTS_016.DataSet.Refresh;
                     //aponta para o registro que estava
                     //anteriormente
                     DTS_016.DataSet.GotoBookmark(oLocal);
                   end;
               end;// fim try except
             finally
               //retorna a tabela master
               QRY_018.MasterSource := DTS_016;
               //habilida a atualiza��o visual dos componentes
               DTS_018.DataSet.EnableControls;
               //busca os dados da base
               DTS_018.DataSet.Refresh;
               //habilida a atualiza��o visual dos componentes
               DTS_013_01.DataSet.EnableControls;
             end;// fim try finally
           end;// fim o if MessageDlg('Deseja Salvar Altera��es?',mtConfirmation,[mbYes,mbNo],0) = mrYes then
       end;
   end;
end;//TFRM_A006.Btn_GravarClick

{------------------------------------------------------------------------------}

procedure TFRM_A006.Btn_CancelarClick(Sender: TObject);
begin
  with DTM_A006 do
    begin
      //se pessoa fisica estiver em edi��o ou inser��o
      if DTS_019.DataSet.State in [dsInsert,dsedit] then
        //cancela a opera��o corrente do dataset da cadfis(pessoa fisica)
        DBGenerica(DTS_019,'Conexao',3,0)
      else
        //se pessoa juridica estiver em edi��o ou inser��o
        if DTS_025.DataSet.State in [dsInsert,dsedit] then
          //cancela a opera��o do dataset da cadjur(pessoa juridica)
          DBGenerica(DTS_025,'Conexao',3,0);

      //cancela as altera��es no dataset da tageec(endere�o de correspondencia)
      DBGenerica(DTS_018,'Conexao',3,0,nil,true);

      //cancela a opera��o corrente do dataset da cadgrl(cadastro geral)
      DBGenerica(DTS_016,'Conexao',3, 0, nil);

      //pega o n�mero de cpf que esta cadastrado na base de dados
      CBE_CCPFCNPJ.Text := DTS_016.DataSet.FieldByName('ccpfcnpj').DisplayText;

      //atualiza o dataset de logradouro de correspondencia
      Dts_013_01.DataSet.Refresh;
      //atualiza o dataset de endere�os de correspondencia
      Dts_018.DataSet.Refresh;

      //muda o estado dos bot�es da aplica��o
      Botoes(['Btn_Cancelar','Btn_Gravar','BTN_TIRAEC'],'FRM_A006',false);

    end;
end;//TFRM_A006.Btn_CancelarClick

{------------------------------------------------------------------------------}

procedure TFRM_A006.Btn_ExcluirClick(Sender: TObject);
begin
   //exclui registro do dataset da cadgrl(cadastro geral)
   DBGenerica(DTM_A006.DTS_016,'Conexao',5,0);
end;//TFRM_A006.Btn_ExcluirClick

{------------------------------------------------------------------------------}

procedure TFRM_A006.Btn_ImprimirClick(Sender: TObject);
begin
  //chama o gerador de relat�rio para o cadastro Geral
  RelCadastro(DTM_A006.QRY_016,'Cadastro Geral');

end;//TFRM_A006.Btn_ImprimirClick

{------------------------------------------------------------------------------}

procedure TFRM_A006.CBE_NCEPExit(Sender: TObject);
begin
  //se cadastro geral estiver em edi��o ou inser��o
  if DTM_A006.DTS_016.DataSet.State in [dsEdit,dsInsert] then
    //se o usuario digitou um CEP de endere�o
    if lDigCepEnd then
      begin
        //localiza o logradouro informado pelo usu�rio
        lDigCepEnd := not(LocalizaLogradouro( TComboEdit(Sender), DTM_A006.QRY_013 ));
        //passa a ID do logradouro para o cadastro geral
        DTM_A006.DTS_016.DataSet.FieldByName('nidcadlog').asInteger :=
        DTM_A006.DTS_013.DataSet.FieldByName('nidcadlog').asInteger;
      end;
end;//TFRM_A006.CBE_NCEPExit

{------------------------------------------------------------------------------}

procedure TFRM_A006.CBE_NCEP_1ButtonClick(Sender: TObject);
begin
 //for�a a chamada da pesquisa para o campo que contem o foco
 VerTeclas(VK_F2);
end;//TFRM_A006.CBE_NCEP_1ButtonClick

{------------------------------------------------------------------------------}

procedure TFRM_A006.CBE_NCEPButtonClick(Sender: TObject);
begin
  //for�a a chamada da pesquisa para o campo que contem o foco
  VerTeclas(VK_F2);
end;//TFRM_A006.CBE_NCEPButtonClick

{------------------------------------------------------------------------------}

procedure TFRM_A006.DED_CNUMEROKeyPress(Sender: TObject; var Key: Char);
begin
  //valida a digita��o do usu�rio
  Key := ValEditNumerico(Key);
end;//TFRM_A006.DED_CNUMEROKeyPress

{------------------------------------------------------------------------------}

procedure TFRM_A006.DED_CCPFCNPJExit(Sender: TObject);
  var
    cResultado, cPessoaFJ, cTipoCod, cCodGrl, cAux : string;

begin
  //se o cadastro de pessoas estiver em edi��o ou inser��o
  if DTM_A006.DTS_016.DataSet.State = dsInsert then
    begin

      //valida o c�digo que o usu�rio digitou
      cResultado := ValidaCPFCNPJ(CBE_CCPFCNPJ.Text);

      //se pessoa Fisica
      if cResultado = 'F' then
        cTipoCod := 'CPF'
      else
        //se pessoa Juridica
        if cResultado = 'J' then
          cTipoCod := 'CNPJ'
        else
          begin
            //mostra a mensagem retornada pela fun��o de
            //valida��o do CPF/CNPJ
            MessageDlg(cResultado,mtInformation,[mbOk],0);
            CBE_CCPFCNPJ.SetFocus;
            Abort;
          end;
       //se o usu�rio n�o digitou CPF/CNPJ diferente do atual
       if DTM_A006.DTS_016.DataSet.FieldByName('ccpfcnpj').asString = LimpaMask(CBE_CCPFCNPJ.Text) then
         begin
           //atualiza a informa��o do campo
           DTM_A006.QRY_016AfterScroll(DTM_A006.DTS_016.DataSet);
           //adiciona mascara ao campo de CPF/CNPJ
           cPessoaFJ := DTM_A006.DTS_016.DataSet.FieldByName('cpessoafj').asString;
           DTM_A006.QRY_016CPESSOAFJGetText(
           DTM_A006.DTS_016.DataSet.FieldByName('cpessoafj') ,
           cPessoaFJ, true);
           exit;
         end;


      //tenta localizar o n�mero de CPF/CNPJ
      //na base de dados
      cCodGrl := LocalizaCPFCNPJ(CBE_CCPFCNPJ.Text);
      //se encontrou algum registro
      if cCodGrl <> '' then
        //se � diferente da pessoa atual
        if cCodGrl <> DTM_A006.QRY_016.FieldByName('nidcadgrl').asString then
          begin
            //avisa o usu�rio que o CPF/CNPJ j� esta sendo usado
            MessageDlg('N�mero de '+cTipoCod+' j� cadastrado.',mtInformation,[mbOk],0);
            CBE_CCPFCNPJ.SetFocus;
            Abort;
          end;

      //adiciona o c�digo CPF/CNPJ para o cadastro geral
      DTM_A006.DTS_016.DataSet.FieldByName('ccpfcnpj').asString := LimpaMask(CBE_CCPFCNPJ.Text);
      //se pessoa fisica
      if cResultado = 'F' then
        begin
          //c�digo pessoa fisica
          DTM_A006.QRY_016.FieldByName('cpessoafj').asInteger := 1;
          //se pessoa juridica estiver em edi��o
          if DTM_A006.DTS_025.State = dsInsert then
            DTM_A006.DTS_025.DataSet.Cancel;
          //se pessoa fisica n�o estiver em inser��o
          if not(DTM_A006.DTS_019.State = dsInsert) then
          //inclui um novo registro na tabela de pessoas fisicas
          DBGenerica(DTM_A006.DTS_019,'Conexao',1,0,nil);
        end
      else
        begin
          //c�digo pessoa Juridica
          DTM_A006.QRY_016.FieldByName('cpessoafj').asInteger := 2;
          //se pessoa fisica estiver em inser��o
          if DTM_A006.DTS_019.State = dsInsert then
            //cancela a inser��o na tabela de pessoas fisicas
            DTM_A006.DTS_019.DataSet.Cancel;
          //se pessoa juridica n�o estiver em inser��o
          if not(DTM_A006.DTS_025.State = dsInsert) then
            //inclui novo registro na tabela de pessoas juridicas
            DBGenerica(DTM_A006.DTS_025,'Conexao',1,0,nil);
        end;


    end
  else
    // se o registro estiver em edi��o
    if DTM_A006.DTS_016.DataSet.State = dsEdit then
      begin
         //se o numero de CPF/CNPJ estiver em branco
        if CBE_CCPFCNPJ.Text = '' then
          begin
            //pega o CPF/CNPJ que estiver cadastrado na base de dados
            DTM_A006.QRY_016AfterScroll(DTM_A006.QRY_016);
            //coloca a mascara no campo CPF/CNPJ
            cPessoaFJ := DTM_A006.DTS_016.DataSet.FieldByName('cpessoafj').asString;
            DTM_A006.QRY_016CPESSOAFJGetText(
            DTM_A006.DTS_016.DataSet.FieldByName('cpessoafj') ,
            cPessoaFJ, true);
          end
        else
          //se o usuario informou um numero de CPF/CNPJ
          if CBE_CCPFCNPJ.Text <> DTM_A006.DTS_016.DataSet.FieldByName('ccpfcnpj').asString then
            begin
              //valida o CPF/CNPJ
              cResultado := ValidaCPFCNPJ(CBE_CCPFCNPJ.Text);
              //se o CPF/CNPJ informado n�o for pessoa fisica nen juridica
              //mostra mensagem de n�mero invalido
              if (cResultado <> 'F') and (cResultado <> 'J') then
                begin
                  //avisa ao usuario
                  MessageDlg(cResultado,mtError,[mbOk],0);
                  //retorna o foco ao campo
                  CBE_CCPFCNPJ.SetFocus;
                  //para a continua��o do programa
                  Abort;
                end;

              //se pessoa fisica
              if cResultado = 'F' then
                cTipoCod := 'CPF'
              else
                cTipoCod := 'CNPJ';

              //se o registro for de pessoa juridica e o usuario informou um n�mero CPF
              if (DTM_A006.DTS_016.DataSet.FieldByName('cpessoafj').AsInteger = 2) and (cResultado = 'F') then
                begin
                  //avisa ao usuario
                  MessageDlg('Voc� n�o pode informar um n�mero de CPF para uma pessoa JURIDICA!',mtError,[mbOk],0);
                  //retorna o foco ao campo
                  CBE_CCPFCNPJ.SetFocus;
                  //para a continua��o do programa
                  Abort;
                end;

              //se o registro for de pessoa fisica e o usuario informou um n�mero de CNPJ
              if (DTM_A006.DTS_016.DataSet.FieldByName('cpessoafj').AsInteger = 1) and (cResultado = 'J') then
                begin
                  //avisa ao usuario
                  MessageDlg('Voc� n�o pode informar um n�mero de CNPJ para uma pessoa FISICA!',mtError,[mbOk],0);
                  //retorna o foco ao campo
                  CBE_CCPFCNPJ.SetFocus;
                  //para a continua��o do programa
                  Abort;
                end;
              //procura pelo CPF/CNPJ na base
              cCodGrl := LocalizaCPFCNPJ(CBE_CCPFCNPJ.Text);
              //se encontrou e o n�mero encontrado for diferente da atual pessoa
              if (cCodGrl <> '') and
                 (cCodGrl <> DTM_A006.DTS_016.DataSet.FieldByName('ccpfcnpj').asString) then
                begin
                  //avisa ao usuario
                  MessageDlg('N�mero de ' + cTipoCod + ' j� cadastrado!',mtError,[mbok],0);
                  //retorna o foco ao campo
                  CBE_CCPFCNPJ.SetFocus;
                  //para a continua��o do programa
                  Abort;
                end
              else
                begin
                  //passa o n�mero de CPF/CNPJ para o campo da tabela
                  DTM_A006.DTS_016.DataSet.FieldByName('ccpfcnpj').asString := CBE_CCPFCNPJ.Text ;
                  //coloca mascara no campo
                  cPessoaFJ := DTM_A006.DTS_016.DataSet.FieldByName('cpessoafj').asString;
                  DTM_A006.QRY_016CPESSOAFJGetText(
                  DTM_A006.DTS_016.DataSet.FieldByName('cpessoafj') ,
                  cPessoaFJ, true);
                end;

            end
          else
            begin
              //preenche o campo CPF/CNPJ com o n�mero que esta na base de dados
              DTM_A006.QRY_016AfterScroll(DTM_A006.QRY_016);
              //coloca mascara no campo
              cPessoaFJ := DTM_A006.DTS_016.DataSet.FieldByName('cpessoafj').asString;
              DTM_A006.QRY_016CPESSOAFJGetText(
              DTM_A006.DTS_016.DataSet.FieldByName('cpessoafj') ,
              cPessoaFJ, true);
            end;
      end
    else
      //se o cadastro de pessoas estiver apenas em modo de visualiza��o
      if DTM_A006.DTS_016.DataSet.State = dsBrowse then
        //se o campo estiver em branco
        //preenche com o dados da base de dados
        if Trim(CBE_CCPFCNPJ.Text) = '' then
          begin
            DTM_A006.QRY_016AfterScroll(DTM_A006.QRY_016);
            cPessoaFJ := DTM_A006.DTS_016.DataSet.FieldByName('cpessoafj').asString;
            DTM_A006.QRY_016CPESSOAFJGetText(
            DTM_A006.DTS_016.DataSet.FieldByName('cpessoafj') ,
            cPessoaFJ, true);
          end
        else
          //tenta localizar o CPF/CNPJ digitado pelo usu�rio
          //se n�o encontrou
          if not(DTM_A006.DTS_016.DataSet.Locate('ccpfcnpj',LimpaMask(CBE_CCPFCNPJ.Text),[])) then
            begin
              //avisa ao usuario
              MessageDlg('Pessoa n�o encontrada!',mtInformation,[mbOk],0);
              CBE_CCPFCNPJ.SetFocus;
            end;

end;//TFRM_A006.DED_CCPFCNPJExit

{------------------------------------------------------------------------------}

procedure TFRM_A006.DBD_DDTNASCExit(Sender: TObject);
begin
  //se o usuario informou uma data de nascimento
  if (DBD_DDTNASC.Date <> 0 ) and (DBD_DDTEMIRG.Date <> 0 ) then
    //se a data de emiss�o do RG for menor que a data de nascimento
    if (DBD_DDTEMIRG.Date <= DBD_DDTNASC.Date) then
      begin
        //avisa ao usu�rio
        MessageDlg('Data de emiss�o do RG tem que ser maior que a data de nascimento!',
                   mtInformation,[mbOk],0);
        //retorna foco ao campo de data de emiss�o do RG
        DBD_DDTEMIRG.SetFocus;
      end;
end;//TFRM_A006.DBD_DDTNASCExit

{------------------------------------------------------------------------------}

procedure TFRM_A006.DED_CTELRESEnter(Sender: TObject);
begin
  //se cadastro geral estiver em edi��o ou inser��o
  if DTM_A006.DTS_016.DataSet.State in [dsInsert,dsEdit] then
    //limpa a mascara do campo
    DTM_A006.DTS_016.DataSet.FieldByName(TDBEdit(Sender).DataField).EditMask := '';
end;//TFRM_A006.DED_CTELRESEnter

{------------------------------------------------------------------------------}

procedure TFRM_A006.DED_CTELRESExit(Sender: TObject);
begin
  //se cadastro geral estiver em edi��o ou inser��o
  if DTM_A006.DTS_016.DataSet.State in [dsInsert,dsEdit] then
    //retorna mascara para o campo
    DTM_A006.DTS_016.DataSet.FieldByName(TDBEdit(Sender).DataField).EditMask :='!####-####;0; ';
end;//TFRM_A006.DED_CTELRESExit

{------------------------------------------------------------------------------}

procedure TFRM_A006.FormDestroy(Sender: TObject);
begin
  //for�a o foco para o proximo componente
  FRM_TELAPRI.Perform(WM_NEXTDLGCTL,0,0);

  FRM_A006 := nil;
end;//TFRM_A006.FormDestroy

{------------------------------------------------------------------------------}

procedure TFRM_A006.CBE_NCEPChange(Sender: TObject);
begin
  lDigCepEnd := DTM_A006.DTS_016.DataSet.State in [dsInsert,dsEdit];
end;//TFRM_A006.CBE_NCEPChange

{------------------------------------------------------------------------------}

procedure TFRM_A006.CBE_NCEPKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  //se o usuario pressionar ESC
  if Key = VK_ESCAPE then
    begin
      //busca os dados que est�o no dataset
      CBE_NCEP.Text := DTM_A006.QRY_013.FieldByName('nCep').DisplayText;
      lDigCepEnd := false;
    end

end;//TFRM_A006.CBE_NCEPKeyDown

{------------------------------------------------------------------------------}

procedure TFRM_A006.CBE_NCEP_1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  //se o usuario pressionar ESC
  if Key = VK_ESCAPE then
    begin
      //busca os dados que est�o no dataset
      CBE_NCEP_1.Text := DTM_A006.QRY_013_01.FieldByName('nCep').DisplayText;
      lDigCepEnd := false;
    end;
end;//TFRM_A006.CBE_NCEP_1KeyDown

{------------------------------------------------------------------------------}

procedure TFRM_A006.CBE_NCEPKeyPress(Sender: TObject; var Key: Char);
begin
  Key := ValEditNumerico(Key);
end;//TFRM_A006.CBE_NCEPKeyPress

{------------------------------------------------------------------------------}

procedure TFRM_A006.DED_CNOMELOGEnter(Sender: TObject);
begin
  DED_CNUMERO.SetFocus;
end;//TFRM_A006.DED_CNOMELOGEnter

{------------------------------------------------------------------------------}

procedure TFRM_A006.BTN_TIRAECClick(Sender: TObject);
begin
  if MessageDlg('Deseja retirar o endere�o de correspond�ncia do Contribuinde?',
                mtConfirmation,[mbYes,mbNo],0) = mrYes then
    begin
      //limpa o n�mero de CEP do endere�o de correspondencia
      CBE_NCEP_1.Text := '';
      with DTM_A006 do
        begin
          //cancela opera��o corrente no dataset da tageec
          DBGenerica(DTS_018,'Conexao',3,0);

          if not(DTS_018.DataSet.IsEmpty) then
            //deleta o registro do dataset da tageec
            DBGenerica(DTS_018,'Conexao',5,1);

          //inseri registro no dataset da tageec
          DBGenerica(DTS_018,'Conexao',1,0);
          DTS_018.DataSet.FieldByName('nidTagEec').AsInteger := 0;
        end;
    end;
end;//TFRM_A006.BTN_TIRAECClick

{------------------------------------------------------------------------------}

procedure TFRM_A006.DED_CPESSOAFJChange(Sender: TObject);
begin
  //habilida os componentes para status de pessoa fisica
  if UpperCase(DED_CPESSOAFJ.Text) = 'FISICA' then
    begin
      Lbl_CpfCnpj.Caption :='  N� do CPF';
      Lbl_RgIE.Caption := '  N� do RG';
      LBL_CNOMEEMIRG.Enabled :=  DTM_A006.DTS_016.DataSet.State = dsEdit;
      DBL_NIDTBXERG.Enabled  := LBL_CNOMEEMIRG.Enabled;
      LBL_UF.Enabled         := LBL_CNOMEEMIRG.Enabled;
      DBC_CUFEMIRG.Enabled   := LBL_CNOMEEMIRG.Enabled;
      LBL_DDTEMIRG.Enabled   := LBL_CNOMEEMIRG.Enabled;
      DBD_DDTEMIRG.Enabled   := LBL_CNOMEEMIRG.Enabled;

      LBL_DDTNASC.Enabled    := true;
      DBD_DDTNASC.Enabled    := true;
      LBL_CSEXO.Enabled      := true;
      DBC_cSexo.Enabled      := true;
      LBL_CNOMEMAE.Enabled   := true;
      DED_CNOMEMAE.Enabled   := true;

    end
  else
    if UpperCase(DED_CPESSOAFJ.Text) = 'JURIDICA' then
      begin
        //habilida/desabilida componentes para status de
        //pessoa juridica
        Lbl_CpfCnpj.Caption :='  N� do CNPJ';
        Lbl_RgIE.Caption := '  N� da Inscri��o Estadual';
        LBL_CNOMEEMIRG.Enabled := false;
        DBL_NIDTBXERG.Enabled  := false;
        LBL_UF.Enabled         := false;
        DBC_CUFEMIRG.Enabled   := false;
        LBL_DDTEMIRG.Enabled   := false;
        DBD_DDTEMIRG.Enabled   := false;
        LBL_DDTNASC.Enabled    := false;
        DBD_DDTNASC.Enabled    := false;
        LBL_CSEXO.Enabled      := false;
        DBC_cSexo.Enabled      := false;
        LBL_CNOMEMAE.Enabled   := false;
        DED_CNOMEMAE.Enabled   := false;

      end;
end;//TFRM_A006.DED_CPESSOAFJChange

{------------------------------------------------------------------------------}

procedure TFRM_A006.CBE_CCPFCNPJEnter(Sender: TObject);
begin
    //retira a mascara do campo para
    //o usuario digitar o c�digo que deseja
    CBE_CCPFCNPJ.EditMask := '';

  //seleciona todo o conteudo que ficou no campo sem mascara
  CBE_CCPFCNPJ.SelectAll;
end;//TFRM_A006.CBE_CCPFCNPJEnter

{------------------------------------------------------------------------------}

procedure TFRM_A006.CBE_CCPFCNPJKeyPress(Sender: TObject; var Key: Char);
begin
  {verifica se o caracter digitado � valido para um campo do tipo numerico}
  Key := ValEditNumerico(Key);
  //se usuario digitou numero e o campo
  //estiver sem mascara
  if (Key in ['0'..'9']) //and (DTM_A006.DTS_016.DataSet.State = dsBrowse)
     and (CBE_CCPFCNPJ.EditMask <> '') then
    begin
      //limpa mascara do CPF/CNPJ
      CBE_CCPFCNPJ.EditMask := '';
      //limpa o texto do campo CPF/CNPJ
      CBE_CCPFCNPJ.Text := '' ;
    end;


end;//TFRM_A006.CBE_CCPFCNPJKeyPress

{------------------------------------------------------------------------------}

procedure TFRM_A006.CBE_CCPFCNPJKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
  var
    cPessoaFJ : String;
begin
  //se o usuario pressiou a tecla ESC no campo de CPF/CNPJ
  if key = VK_ESCAPE then
    //se o cadastro estiver em modo de visualiza��o
    //if DTM_A006.DTS_016.DataSet.State in [dsInsert,dsBrowse] then
      begin
        //preenche o campo com dados da base de dados
        DTM_A006.QRY_016AfterScroll(DTM_A006.DTS_016.DataSet);
        cPessoaFJ := DTM_A006.DTS_016.DataSet.FieldByName('cpessoafj').asString;
        DTM_A006.QRY_016CPESSOAFJGetText(
        DTM_A006.DTS_016.DataSet.FieldByName('cpessoafj') ,
        cPessoaFJ, true);
      end;

end;//TFRM_A006.CBE_CCPFCNPJKeyDown

{------------------------------------------------------------------------------}

procedure TFRM_A006.DED_CNOMEGRLExit(Sender: TObject);
begin
  with DTM_A006 do
    begin
      //se o cadatro geral estiver em inser��o e for uma pessoa fisica
      if (DTS_016.DataSet.State = dsInsert) and (DTS_016.DataSet.FieldByName('cpessoafj').asInteger = 1) then
        //copia o primeiro nome da pessoa para o campo de contato
        if Pos(' ',DED_CNOMEGRL.Text) <> 0 then
          DTS_016.DataSet.FieldByName('cContato').value :=
          Copy(DED_CNOMEGRL.Text,1,Pos(' ',DED_CNOMEGRL.Text)-1)
        else
          DTS_016.DataSet.FieldByName('cContato').value := DED_CNOMEGRL.Text;
    end;
end;//TFRM_A006.DED_CNOMEGRLExit

{------------------------------------------------------------------------------}

procedure TFRM_A006.CBE_NCEP_1Exit(Sender: TObject);
begin
  //se cadastro geral estiver em edi��o ou inser��o
  if DTM_A006.DTS_016.DataSet.State in [dsEdit,dsInsert] then
    //se o usu�rio digitou algum CEP para o endere�o de correspondecia
    if lDigCepEnd then
      begin
        //tenta localizar o logradouro
        lDigCepEnd := not(LocalizaLogradouro( TComboEdit(Sender), DTM_A006.QRY_013_01 ));
        //passa a ID encontrada do logradouro para a tabela de
        //endere�os de correpondencia
        DTM_A006.DTS_018.DataSet.FieldByName('nidcadlog').asInteger :=
        DTM_A006.DTS_013_01.DataSet.FieldByName('nidcadlog').asInteger;
      end;

end;//TFRM_A006.CBE_NCEP_1Exit

{------------------------------------------------------------------------------}

procedure TFRM_A006.DED_CRGIEChange(Sender: TObject);
begin
  //se o RG n�o estiver em branco e for pessoa fisica, ent�o habilida os campos
  //sen�o desabilida
  DBC_CUFEMIRG.Enabled := (DED_CRGIE.Text <> '') and (DTM_A006.DTS_016.DataSet.FieldByName('cpessoafj').AsInteger = 1);
  LBL_CNOMEEMIRG.Enabled := DBC_CUFEMIRG.Enabled;
  DBL_NIDTBXERG.Enabled  := DBC_CUFEMIRG.Enabled;
  LBL_UF.Enabled         := DBC_CUFEMIRG.Enabled;
  LBL_DDTEMIRG.Enabled   := DBC_CUFEMIRG.Enabled;
  DBD_DDTEMIRG.Enabled   := DBC_CUFEMIRG.Enabled;
end;//TFRM_A006.DED_CRGIEChange

{------------------------------------------------------------------------------}

end.
