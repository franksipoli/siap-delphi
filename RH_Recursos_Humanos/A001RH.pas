{*******************************************************************************
 *                                                                             *
 *  Cadastro de Servidores                                                     *
 *  Altera informações do Servidor e mostra informações da situação            *
 *  atual do Servidor.                                                         *
 *                                                                             *
 *  Data da Criação : 02/02/2004                                               *
 *  Programador Leandro Ribas                                                  *
 *  Data Finalização : 09/02/2004                                              *
 *                                                                             *
 *  Data da Ultima Atualização :11/02/2004                                     *
 *  Atualizado por: Leandro Ribas                                              *
 *                                                                             *
 *******************************************************************************
}
unit A001RH;

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
  LMDSimplePanel, jpeg, ExtDlgs, Menus ;

type
  TFRM_A001RH = class(TForm)
    Panel2: TPanel;
    Btn_Alterar: TSpeedButton;
    Btn_Cancelar: TSpeedButton;
    Btn_Localizar: TSpeedButton;
    Btn_Imprimir: TSpeedButton;
    BTN_SAIR: TSpeedButton;
    Btn_Avancar: TSpeedButton;
    Btn_Retroceder: TSpeedButton;
    Btn_Excluir: TSpeedButton;
    Btn_Gravar: TSpeedButton;
    BTN_CADDEP: TSpeedButton;
    BTN_FICHAFUN: TSpeedButton;
    IMl_Servidor: TImageList;
    OPD_FotoSer: TOpenPictureDialog;
    LMDGroupBox1: TLMDGroupBox;
    Label5: TLabel;
    Label8: TLabel;
    Label39: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label20: TLabel;
    Label79: TLabel;
    Label9: TLabel;
    Label35: TLabel;
    Label3: TLabel;
    Label81: TLabel;
    Panel1: TPanel;
    STT_Foto: TStaticText;
    DED_NANOCHEG: TDBEdit;
    DBD_DDTNASC: TDBDateEdit;
    DED_UFLOC: TDBEdit;
    DED_CNOMECONJ: TDBEdit;
    DED_CNOMEMAE: TDBEdit;
    DED_CNOMEPAI: TDBEdit;
    DED_IDADE: TDBEdit;
    DBL_NIDTBXCOR: TRxDBLookupCombo;
    DBL_NIDTBXNAC: TRxDBLookupCombo;
    DBL_NIDTBXECI: TRxDBLookupCombo;
    DBC_CDEFICIENT: TRxDBComboBox;
    CBE_CNOMELOC: TComboEdit;
    DBL_NIDTBXGRI: TRxDBLookupCombo;
    DED_CNOMEGRL: TDBEdit;
    IMG_SERVIDOR: TImage;
    PopupMenu: TPopupMenu;
    DeletarFigura: TMenuItem;
    InserirFigura: TMenuItem;
    LMDGroupBox2: TLMDGroupBox;
    PGC_ENDDOC: TPageControlEx;
    TBS_ENDERECO: TTabSheet;
    LMDSimplePanel2: TLMDSimplePanel;
    Label18: TLabel;
    Label23: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    Label1: TLabel;
    Label7: TLabel;
    Label135: TLabel;
    Label136: TLabel;
    DED_CNUMERO: TDBEdit;
    DED_CCOMPLEMEN: TDBEdit;
    DED_CNOMEBAI: TDBEdit;
    DED_CSIGLAUF: TDBEdit;
    CBE_NCEP: TComboEdit;
    DED_CNOMELOC_1: TDBEdit;
    DED_CNOMELOG: TDBEdit;
    DED_CDDD: TDBEdit;
    DED_CTELRES: TDBEdit;
    DED_CTELCELULA: TDBEdit;
    DED_CTELCOM: TDBEdit;
    DED_CEMAIL: TDBEdit;
    TBS_DOCUMENTACAO: TTabSheet;
    LMDSimplePanel6: TLMDSimplePanel;
    Label44: TLabel;
    Label45: TLabel;
    Label46: TLabel;
    Label47: TLabel;
    Label48: TLabel;
    Label51: TLabel;
    Label52: TLabel;
    Label49: TLabel;
    Label50: TLabel;
    Label53: TLabel;
    Label54: TLabel;
    Label55: TLabel;
    Label56: TLabel;
    Label57: TLabel;
    Label58: TLabel;
    Label59: TLabel;
    Label17: TLabel;
    Label19: TLabel;
    DED_CCPFCNPJ: TDBEdit;
    DED_RGIE: TDBEdit;
    DBD_DDTEMIRG: TDBDateEdit;
    DED_NCARTTRAB: TDBEdit;
    DED_CSERIETRAB: TDBEdit;
    DED_NTITELEIT: TDBEdit;
    DED_NZONELEIT: TDBEdit;
    DED_NSECELEIT: TDBEdit;
    DED_NNROCNH: TDBEdit;
    DED_CCATCNH: TDBEdit;
    DED_CVALCNH: TDBDateEdit;
    DED_NNROCSM: TDBEdit;
    DED_CPIS: TDBEdit;
    DBD_DDATAPIS: TDBDateEdit;
    DBL_NIDTBXERG: TRxDBLookupCombo;
    DED_CUFEMIRG: TDBEdit;
    DED_CSIGCONCLA: TDBEdit;
    DED_CNRCONSCLA: TDBEdit;
    Label24: TLabel;
    DED_CSEXO: TDBEdit;
    Label2: TLabel;
    Label22: TLabel;
    DED_NDEPSF: TDBEdit;
    DED_NDEPIR: TDBEdit;
    DBL_CUF: TRxDBLookupCombo;
    Label4: TLabel;
    Label6: TLabel;
    DBD_DEMICATTRB: TDBDateEdit;
    CBE_CCPFCNPJ: TComboEdit;
    Btn_Incluir: TSpeedButton;
    BTN_PGTOEFT: TSpeedButton;
    procedure DED_CNOMELOCButtonClick(Sender: TObject);
    procedure Btn_LocalizarClick(Sender: TObject);
    procedure BTN_SAIRClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure Btn_AvancarClick(Sender: TObject);
    procedure Btn_RetrocederClick(Sender: TObject);
    procedure Btn_ExcluirClick(Sender: TObject);
    procedure Btn_CancelarClick(Sender: TObject);
    procedure Btn_AlterarClick(Sender: TObject);
    procedure Btn_GravarClick(Sender: TObject);
    procedure CBE_CNOMELOCExit(Sender: TObject);
    procedure DBI_FFOTOSERDblClick(Sender: TObject);
    procedure CBE_NCEPExit(Sender: TObject);
    procedure DED_CCPFCNPJExit(Sender: TObject);
    procedure DED_CPISExit(Sender: TObject);
    procedure Btn_ImprimirClick(Sender: TObject);
    procedure DED_CCPFCNPJEnter(Sender: TObject);
    procedure DED_CPISEnter(Sender: TObject);
    procedure CBE_NCEPKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CBE_NCEPChange(Sender: TObject);
    procedure CBE_NCEPButtonClick(Sender: TObject);
    procedure CBE_CNOMELOCButtonClick(Sender: TObject);
    procedure CBE_CNOMELOCChange(Sender: TObject);
    procedure CBE_CNOMELOCKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DED_CTELRESEnter(Sender: TObject);
    procedure DED_CTELRESExit(Sender: TObject);
    procedure DeletarFiguraClick(Sender: TObject);
    procedure PopupMenuPopup(Sender: TObject);
    procedure BTN_CADDEPClick(Sender: TObject);
    procedure DBD_DDTEMIRGExit(Sender: TObject);
    procedure BTN_FICHAFUNClick(Sender: TObject);
    procedure BTN_INFORFINANClick(Sender: TObject);
    procedure DBL_NIDTBXECIChange(Sender: TObject);
    procedure DBD_DDTNASCExit(Sender: TObject);
    procedure CBE_NCEPKeyPress(Sender: TObject; var Key: Char);
    procedure PGC_ENDDOCDrawTab(Control: TCustomTabControl;
      TabIndex: Integer; const Rect: TRect; Active: Boolean);
    procedure FormCreate(Sender: TObject);
    procedure Btn_IncluirClick(Sender: TObject);
    procedure CBE_CCPFCNPJExit(Sender: TObject);
    procedure CBE_CCPFCNPJKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BTN_PGTOEFTClick(Sender: TObject);
  private
    procedure TrataMaskEditTel(State: TDataSetState);
    { Private declarations }
  public
    { Public declarations }

  end;

var
  FRM_A001RH: TFRM_A001RH;
  lAuxDigPIS : Boolean;
  lAuxDigCPF : Boolean;
  lDigEnd : Boolean; //se for igual true indica que o usuário digitou um
                    //número de cep
  lDigLocalidade : Boolean; //se for igual true indica que o usuário digitou um
                            //localidade de nascimento
implementation

uses D001RH, MPLCtrl, Pesquisa, A004, DMCTRL, A006, MPLLib, UVariaveis,
  A004RH, D004RH, CtrlForms, A005RH, A006RH, D005RH, A038RH, D038RH;



{$R *.DFM}

procedure TFRM_A001RH.DED_CNOMELOCButtonClick(Sender: TObject);
begin
 //função para chamar pesquisa que para o campo que está com o foco
 VerTeclas(VK_F2);
end;//TFRM_A001RH.DED_CNOMELOCButtonClick

{------------------------------------------------------------------------------}

procedure TFRM_A001RH.Btn_LocalizarClick(Sender: TObject);
begin
  //chama pesquisa padrão para a tabela de servidores
  MPLCtrl.Pesquisa(DTM_A001RH.QRY_029,true,'','');
end;//TFRM_A001RH.Btn_LocalizarClick

{------------------------------------------------------------------------------}

procedure TFRM_A001RH.BTN_SAIRClick(Sender: TObject);
begin
 close;
end;

{------------------------------------------------------------------------------}

procedure TFRM_A001RH.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  //fecha os datasets do DataModule e libera o form e o DataModule da memoria
  Action:= oControlForms.Saidas(Self,[DTM_A001RH],DTM_A001RH.DTS_029.DataSet);
end;//TFRM_A001RH.FormClose

{------------------------------------------------------------------------------}

procedure TFRM_A001RH.FormShow(Sender: TObject);
begin
  //verifica o acesso do usuário a objetos e campos da aplicação
  if not Acesso(nMatricula,'A001RH',DTM_A001RH) then
    close;

  //muda o estado dos botõe da aplicação
  Botoes(['Btn_Cancelar','Btn_Gravar'],'FRM_A001RH',false);

  //redimensiona o tamanho da lista dropdown dos DBLookups
  if DBL_NIDTBXCOR.LookupSource.DataSet.RecordCount < 8 then
    DBL_NIDTBXCOR.DropDownCount := DBL_NIDTBXCOR.LookupSource.DataSet.RecordCount;
  if DBL_NIDTBXNAC.LookupSource.DataSet.RecordCount < 8 then
    DBL_NIDTBXNAC.DropDownCount := DBL_NIDTBXNAC.LookupSource.DataSet.RecordCount;
  if DBL_NIDTBXECI.LookupSource.DataSet.RecordCount < 8 then
    DBL_NIDTBXECI.DropDownCount := DBL_NIDTBXECI.LookupSource.DataSet.RecordCount;
  if DBL_NIDTBXGRI.LookupSource.DataSet.RecordCount < 8 then
    DBL_NIDTBXGRI.DropDownCount := DBL_NIDTBXGRI.LookupSource.DataSet.RecordCount;
  if DBL_NIDTBXERG.LookupSource.DataSet.RecordCount < 8 then
    DBL_NIDTBXERG.DropDownCount := DBL_NIDTBXERG.LookupSource.DataSet.RecordCount;

  DTM_A001RH.QRY_029AfterScroll(DTM_A001RH.DTS_029.DataSet);

  FRM_A001RH.OnShow := nil;

 {é atribuido ao OnShow do Form o valor nil para que o mesmo seja executado apenas uma vez}
 {pelo fato que se outra aplicação for chamada pela tecla F3, e ao retornar da aplicação que foi chamada pela tecla}
 {o evento OnShow deste form não acontecerá, ou seja não será executado, para permanecer o mesmo status da aplicação}
 {quando o F3 foi chamado}
end;//TFRM_A001RH.FormShow

{------------------------------------------------------------------------------}

procedure TFRM_A001RH.Btn_AvancarClick(Sender: TObject);
begin
 //avanca para o proximo registro da tabela de servidore
 DBGenerica(DTM_A001RH.DTS_029,'Conexao',0,3);

end; //TFRM_A001RH.Btn_AvancarClick

{------------------------------------------------------------------------------}

procedure TFRM_A001RH.Btn_RetrocederClick(Sender: TObject);
begin
  //retrocede um registro da tabela de servidores
  DBGenerica(DTM_A001RH.DTS_029,'Conexao',0,2);

end;//TFRM_A001RH.Btn_RetrocederClick

{------------------------------------------------------------------------------}

procedure TFRM_A001RH.Btn_ExcluirClick(Sender: TObject);
begin
   //exclui registro atual da tabela de servidores
   DBGenerica(DTM_A001RH.DTS_029,'Conexao',5,0);

end;//TFRM_A001RH.Btn_ExcluirClick

{------------------------------------------------------------------------------}

procedure TFRM_A001RH.Btn_CancelarClick(Sender: TObject);
begin
//tratamento de mascaras dos campos de telefone
TrataMaskEditTel(dsBrowse);

//cancela a operação corrente na tabela de pessoas fisicas
DBGenerica(DTM_A001RH.DTS_019,'Conexao',3,0);

//cancela a operação corrente na tabela de cadastro geral
DBGenerica(DTM_A001RH.DTS_016,'Conexao',3,0);

//cancela a operação na tabela de fotos
DBGenerica(DTM_A001RH.DTS_109,'Conexao',3,0,nil,true);

//cancela o operação atual na tabela de servidores
DBGenerica(DTM_A001RH.DTS_029,'Conexao',3,0,nil);

//muda o estado dos botões da aplicação
Botoes(['Btn_Cancelar','Btn_Gravar'],'FRM_A001RH',false);

//forca a verificação do estado do botão de edição
DTM_A001RH.QRY_029AfterScroll(DTM_A001RH.DTS_029.DataSet);

end;//TFRM_A001RH.Btn_CancelarClick

{------------------------------------------------------------------------------}

procedure TFRM_A001RH.Btn_AlterarClick(Sender: TObject);
begin
  //muda o estado dos botões da aplicação
  Botoes(['Btn_Cancelar','Btn_Gravar'],'FRM_A001RH',true);
  //edita registro na tabela de servidores
  DBGenerica(DTM_A001RH.DTS_029,'Conexao',2,0,nil);
  //edita registro na tabela de cadastro geral
  DBGenerica(DTM_A001RH.DTS_016,'Conexao',2,0,nil);
  //edita registro da tabela de pessoas fisicas
  DBGenerica(DTM_A001RH.DTS_019,'Conexao',2,0,nil);

  //tratamento de mascaras dos campos de telefone
  TrataMaskEditTel(dsEdit);

end;//TFRM_A001RH.Btn_AlterarClick

{------------------------------------------------------------------------------}

procedure TFRM_A001RH.Btn_GravarClick(Sender: TObject);
begin

  //força a verificação da data de nascimento
  DBD_DDTNASCExit(Sender);

  //força a verificação do CPF do servidor
  DED_CCPFCNPJEnter(Sender);
  DED_CCPFCNPJExit(Sender);
  //força a verificação do número do PIS do servidor
  DED_CPISEnter(Sender);
  DED_CPISExit(Sender);

  //verifica se as datas dos documentos estão corretas
  DBD_DDTEMIRGExit(DBD_DDTEMIRG);
  DBD_DDTEMIRGExit(DBD_DDATAPIS);
  DBD_DDTEMIRGExit(DED_CVALCNH);

  with DTM_A001RH, DMControle do
    begin
      //se os campos requeridos foram preenchidos pelo usuario
      if LiberadoGravacao(FRM_A001RH,DTS_029) then

        //se o usuário desejar gravar as informações
        if MessageDlg('Deseja Salvar Alterações?',mtConfirmation,[mbYes,mbNo],0) = mrYes then
          begin
            Conexao.StartTransaction;
            try
              //update das informações dos controles Db para o registro da tabela
              //de cadastro de pessoas fisicas
              DTS_019.DataSet.UpdateRecord;

              //se não foi modificado nenhuma informação na tabela de pessoas fisicas
              if not(DTS_019.DataSet.Modified) then
                //cancela operação corrente na tabela de pessoas fisicas
                DBGenerica(DTS_019,'Conexao',3,0);

              //se o endereço foi alterado
              //atribui o novo endereço ao cadastro geral
              if DTS_016.DataSet.FieldByName('nIdCadLog').AsInteger <>
                 DTS_013.DataSet.FieldByName('nIdCadLog').AsInteger then
                DTS_016.DataSet.FieldByName('nIdCadLog').AsInteger :=
                 DTS_013.DataSet.FieldByName('nIdCadLog').AsInteger;

              //update das informações dos controles Db para o registro da tabela
              //de cadastro geral
              DTS_016.DataSet.UpdateRecord;

              //se não foi modificado nenhuma informação na tabela de cadastro geral
              if not(DTS_016.DataSet.Modified) then
                //cancela a operação corrente na tabela de cadastro geral
                DBGenerica(DTS_016,'Conexao',3,0);

              //se houver alguma alteração na foto do servidor
              if QRY_109.UpdatesPending then
                //grava as alterações no banco de dados
                DBGenerica(Dts_109,'Conexao',4,1,NIL,true);

              //grava as informações da tabela de servidores
              DBGenerica(Dts_029,'Conexao',4,1,NIL);

              DTS_019.AutoEdit := false;
              DTS_016.AutoEdit := false;

              //muda o estado dos botões da aplicação
              Botoes(['Btn_Cancelar','Btn_Gravar'],'FRM_A001RH',false);

              Conexao.Commit;
            except
              On E : Exception do
                begin
                  Conexao.Rollback;
                  MessageDlg('Não foi possivel atualizar as informações do servidor!' + #13 +
                  'A operação será desfeita para garantir a integridade das informações!' + #13 +
                  'Erro = ' + E.Message,mtError,[mbOk],0);
                  Btn_CancelarClick(Sender);
                end;
            end;
          end;

    end;
end;//TFRM_A001RH.Btn_GravarClick

{------------------------------------------------------------------------------}

procedure TFRM_A001RH.CBE_CNOMELOCExit(Sender: TObject);
  var
    oDts : TDataSource;
    oQry : TOraQuery;

begin
  //inicializa as variaveis locais
  oDts := nil;
  oQry := nil;

  oDts := DTM_A001RH.DTS_019;
  oQry := DTM_A001RH.QRY_012;

  //verifica se a tabela de pessoa fisica está em edição
  if (oDts.DataSet.State = dsEdit) and (lDigLocalidade) then
    begin
      //se o campo de local de nascimento estiver em branco
      //e atribuida a localidade a ID 0 que indica que a localidade
      //não foi informada
      if (Trim(TComboEdit(Sender).Text) = '') then
        begin
          oDts.DataSet.FieldByName('nidtbxloc').asInteger := 0;
          oQry.ParamByName('nidtbxloc').AsInteger := 0;
          oQry.ExecSQL;
        end
      else
        begin
          with DMControle do
            begin
              //se a pesquisa foi executada pelo usuário então
              //e pego a ID da localidade retornada pela Pesquisa
              //e passada para a pessoa fisica
              if FRM_PESQUISA <> nil then
                begin
                  oDts.DataSet.FieldByName('nidtbxloc').asInteger :=
                  FRM_PESQUISA.PesqRetorno.ValorRetorno;
                  oQry.ParamByName('nidtbxloc').AsInteger :=
                  FRM_PESQUISA.PesqRetorno.ValorRetorno;
                  oQry.ExecSQL;
                end
              else
                begin
                  //consulta a localidade digitada pelo usuario
                  //caso o nome da localidade se repita, então e
                  //executada a pesquisa para que o usuário escolha
                  //de qual estado é a localidade
                  ProcLocalRepit(TComboEdit(Sender),false,false);
                  //pega a ID da localidade que esta na tabela temporia
                  //usada pelo procedimento e atribui ao Servidor
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
      //passa para falso a indicação de que o usuário digitou
      //alguma informação no campo de localidade de nascimento
      lDigLocalidade := false;
    end;

end;//TFRM_A001RH.CBE_CNOMELOCExit

{------------------------------------------------------------------------------}

procedure TFRM_A001RH.DBI_FFOTOSERDblClick(Sender: TObject);
begin
  with DTM_A001RH do
    begin
      //se a tabela de servidores estiver em edição
      if DTS_029.DataSet.State in [dsEdit,dsInsert] then
        begin
          //executa a caixa de dialogo para o usuario escolher a imagem (JPG) que
          //quer gravar no banco
          if OPD_FotoSer.Execute then
            begin
              STT_Foto.Visible := false;
              //se o servidor possue alguma foto
              if not(DTS_109.DataSet.FieldByName('bFoto').isNull) then
                //retira a foto atual
                DBGenerica(DTS_109,'Conexao',5,1);
              //inseri uma nova foto
              DBGenerica(DTS_109,'Conexao',1,0);
              DTS_109.DataSet.FieldByName('nidtagfto').asInteger := 0;
              //atribui ao campo a imagem escolhida
              TBlobField(DTS_109.DataSet.FieldByName('bFoto')).LoadFromFile(OPD_FotoSer.FileName);
              //grava a novo foto
              DBGenerica(Dts_109,'Conexao',4,1,NIL);
              //carrega no image a imagem escolhida pelo usuario
              IMG_SERVIDOR.Picture.LoadFromFile(OPD_FotoSer.FileName);
            end;
        end
      else
        MessageDlg('Para inserir uma imagem o registro tem que estar em edição!',mtInformation,
                    [mbOk],0);
    end;

end;//TFRM_A001RH.DBI_FFOTOSERDblClick

{------------------------------------------------------------------------------}

procedure TFRM_A001RH.CBE_NCEPExit(Sender: TObject);

begin
  //se estiver em edição ou inserção a tabela de servidores
  if DTM_A001RH.DTS_029.DataSet.State in [dsEdit,dsInsert] then
    //se o número do cep do endereço do usuário estiver em branco
    if Trim(LimpaMask(CBE_NCEP.Text))= '' then
      begin
        MessageDlg('Você deve informar o número do Cep para o endereço do servidor',
                  mtInformation,[mbOK],0);
        CBE_NCEP.SetFocus;
        //para a continuação do programa
        Abort;
      end
    else
      //se o usuário digitou um número de cep
      if lDigEnd then
        begin
          //localiza o número digitado pelo usuário.
          lDigEnd := not(LocalizaLogradouro( TComboEdit(Sender), DTM_A001RH.QRY_013 ));
          //passa a ID encontrada do logradouro para a tabela de
          //cadastro geral
          DTM_A001RH.DTS_016.DataSet.FieldByName('nidcadlog').asInteger :=
          DTM_A001RH.DTS_013.DataSet.FieldByName('nidcadlog').asInteger;
        end;

end;//TFRM_A001RH.DBI_FFOTOSERDblClick

{------------------------------------------------------------------------------}

procedure TFRM_A001RH.DED_CCPFCNPJExit(Sender: TObject);

begin
  //se a tabela de servidores estiver em edição ou inserção
  if (DTM_A001RH.DTS_029.DataSet.State in [dsEdit,dsInsert]) then
    begin
      //se o usuário não informou um número de CPF
      if trim(LimpaMask(DED_CCPFCNPJ.Text)) ='' then
        begin
          MessageDlg('Você deve informar um número de CPF!',mtInformation,[mbOk],0);
          PGC_ENDDOC.ActivePageIndex := 1;
          DED_CCPFCNPJ.SetFocus;
          Abort;
        end;
      //valida o número de CPF digitado pelo usuário
      //caso seja invalido informa ao usuario
      if (length(LimpaMask(Trim(DED_CCPFCNPJ.Text))) < 11 ) or (not(ValidaCpf(LimpaMask(Trim(DED_CCPFCNPJ.Text))))) then
        begin
          MessageDlg('Número de CPF invalído, redigite.',mtInformation,[mbOk],0);
          PGC_ENDDOC.ActivePageIndex := 1;
          DED_CCPFCNPJ.SetFocus;
          Abort;
        end;
      //se o usuário digitou algum cpf, verifica se o
      //número de CPF já esta cadastrado caso esteja avisa ao usuario
      if lAuxDigCPF then
        begin
          with DMControle, DTM_A001RH do
            begin
              QryTemp.SQL.Clear;
              QryTemp.SQL.Text :='select * from CadGrl where cPessoaFJ = 1 and cCPFCNPJ = '+QuotedStr(LimpaMask(DED_CCPFCNPJ.Text))+
              ' and nidcadgrl <> ' + DTS_029.DataSet.FieldByName('nidcadgrl').asString;
              QryTemp.Open;
              if not(QryTemp.IsEmpty) then
                begin
                  MessageDlg('Número de CPF já cadastrado.',mtInformation,[mbOk],0);
                  QryTemp.Close;
                  QryTemp.SQL.Clear;
                  DED_CCPFCNPJ.SetFocus;
                  Abort;
                end
              else
                begin
                  lAuxDigCPF := false;
                  CBE_CCPFCNPJ.Text := DED_CCPFCNPJ.Text;
                end;

              QryTemp.Close;
              QryTemp.SQL.Clear;
            end;
        end;

    end;
end;//TFRM_A001RH.DED_CCPFCNPJExit

{------------------------------------------------------------------------------}

procedure TFRM_A001RH.DED_CPISExit(Sender: TObject);

begin
  //se a tabela de servidores estiver em edição
  if DTM_A001RH.DTS_029.DataSet.State in [dsEdit,dsInsert] then
    begin

     //se o usuário não informou nenhum número de pis
      if trim(LimpaMask(DED_CPIS.Text)) ='' then
        begin
          //avisa usuário
          //MessageDlg('Você deve informar um número de PIS!',mtInformation,[mbOk],0);
          //passa o foco para o campo
          //PGC_ENDDOC.ActivePageIndex := 1;
          //DED_CPIS.SetFocus;
          //aborta ação
          exit;
          //Abort;
        end;

      //se o número de PIS não for valido
      if (length(LimpaMask(Trim(DED_CPIS.Text))) < 11 ) or
      (not(ValidaPis(LimpaMask(Trim(DED_CPIS.Text))))) then
        begin
          //avisa ao usuário
          MessageDlg('Número de PIS invalído, redigite.',mtInformation,[mbOk],0);
          //passa o foco para o campo de PIS
          PGC_ENDDOC.ActivePageIndex := 1;
          DED_CPIS.SetFocus;
          //aborta ação
          Abort;
        end;
      //se o usuário digitou um número de PIS
      if lAuxDigPIS then
        begin
          with DMControle, DTM_A001RH do
            begin
              //consulta a base para verificar se o número de PIS já esta cadastrado
              QryTemp.SQL.Clear;
              QryTemp.SQL.Text :='select * from CadFis where cPis = '+QuotedStr(LimpaMask(DED_CPIS.Text)) +
              ' and nidcadgrl <> ' + DTS_029.DataSet.FieldByName('nidcadgrl').asString;
              QryTemp.Open;
              //caso exista um PIS já cadastrado avisa ao usuário
              if not(QryTemp.IsEmpty) then
                begin
                  MessageDlg('Número de PIS já cadastrado.',mtInformation,[mbOk],0);
                  QryTemp.Close;
                  QryTemp.SQL.Clear;
                  DED_CPIS.SetFocus;
                  Abort;
                end
              else
                lAuxDigPIS := false;
              QryTemp.Close;
              QryTemp.SQL.Clear;
            end;
        end;
    end;
end;//TFRM_A001RH.DED_CPISExit

{------------------------------------------------------------------------------}

procedure TFRM_A001RH.Btn_ImprimirClick(Sender: TObject);
begin
  //chama o gerador de relatório para a tabela de servidores
  RelCadastro(DTM_A001RH.QRY_029,'Cadastro Servidor');
end;//TFRM_A001RH.Btn_ImprimirClick

{------------------------------------------------------------------------------}

procedure TFRM_A001RH.DED_CCPFCNPJEnter(Sender: TObject);
begin
  //verifica se o usuário digitou algum número de cpf
  lAuxDigCPF := DTM_A001RH.DTS_029.DataSet.State in [dsInsert,dsEdit];
end;//TFRM_A001RH.DED_CCPFCNPJEnter

{------------------------------------------------------------------------------}

procedure TFRM_A001RH.DED_CPISEnter(Sender: TObject);
begin
  //verifica se o usuário digitou um número de PIS
  lAuxDigPIS := DTM_A001RH.DTS_029.DataSet.State in [dsInsert,dsEdit];
end;//TFRM_A001RH.DED_CPISEnter

{------------------------------------------------------------------------------}

procedure TFRM_A001RH.CBE_NCEPKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  //se o usuário pressionar a tecla ESC retorna para o campo CEP o valor
  //que esta cadastrado na base de dados
  if Key = VK_ESCAPE then
    begin
      CBE_NCEP.Text := DTM_A001RH.QRY_013.FieldByName('nCep').DisplayText;
      lDigEnd :=false;
    end;
end;//TFRM_A001RH.CBE_NCEPKeyDown

{------------------------------------------------------------------------------}

procedure TFRM_A001RH.CBE_NCEPChange(Sender: TObject);
begin
  //indica se o usuário digitou um número de cep
  lDigEnd := (DTM_A001RH.DTS_029.DataSet.State in [dsEdit,dsInsert]);
end;//TFRM_A001RH.CBE_NCEPChange

{------------------------------------------------------------------------------}

procedure TFRM_A001RH.CBE_NCEPButtonClick(Sender: TObject);
begin
 //força a chamada da pesquisa para o campo que está com o foco
 VerTeclas(VK_F2);
end;//TFRM_A001RH.CBE_NCEPButtonClick

{------------------------------------------------------------------------------}

procedure TFRM_A001RH.CBE_CNOMELOCButtonClick(Sender: TObject);
begin
  //força a chamada da pesquisa para o campo que está com o foco
  VerTeclas(VK_F2);
end;

{------------------------------------------------------------------------------}

procedure TFRM_A001RH.CBE_CNOMELOCChange(Sender: TObject);
begin
  //indica se o usuário digitou uma localidade de nascimento
  lDigLocalidade := DTM_A001RH.DTS_029.DataSet.State in [dsEdit,dsInsert] ;
end;//TFRM_A001RH.CBE_CNOMELOCChange

{------------------------------------------------------------------------------}

procedure TFRM_A001RH.CBE_CNOMELOCKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  //se o usuário pressionar a tecla ESC, é retornada a localidade
  //para o campo de Localidade que esta cadastrada na base de dados
  if Key = VK_ESCAPE then
    begin
      CBE_CNOMELOC.Text := DTM_A001RH.DTS_012.DataSet.FieldByName('cNomeLoc').DisplayText;
      lDigLocalidade := false;
    end;

end;//TFRM_A001RH.CBE_CNOMELOCKeyDown

{------------------------------------------------------------------------------}

procedure TFRM_A001RH.DED_CTELRESEnter(Sender: TObject);
begin
  //limpa a mascara do campo quando receber o foco
  if TDBEdit(Sender).DataSource.DataSet.State in [dsInsert,dsEdit] then
    TDBEdit(Sender).Field.EditMask := '';
end;//TFRM_A001RH.DED_CTELRESEnter

{------------------------------------------------------------------------------}

procedure TFRM_A001RH.DED_CTELRESExit(Sender: TObject);
begin
  //retorna para o campo a sua mascara quando perder o foco
  if TDBEdit(Sender).DataSource.DataSet.State in [dsInsert,dsEdit] then
    TDBEdit(Sender).Field.EditMask :='!####-####;0; ';
end;//TFRM_A001RH.DED_CTELRESExit

{------------------------------------------------------------------------------}

procedure TFRM_A001RH.TrataMaskEditTel(State: TDataSetState);
begin
  //limpa a mascara do campo caso esteje com foco no momento
  //da edição
  if State = dsEdit then
    begin
      if DED_CTELRES.Focused then
        begin
          DED_CTELRESEnter(DED_CTELRES);
          DED_CTELRES.SelectAll;
        end
      else
        if DED_CTELCOM.Focused then
          begin
            DED_CTELRESEnter(DED_CTELCOM);
            DED_CTELRES.SelectAll;
          end;
    end
  else
    //retorna a mascara para o campo
    //caso esteje com o foco no momento de visualização
    if State = dsBrowse then
      begin

        if DED_CTELRES.Focused then
          DED_CTELRESExit(DED_CTELRES)
      else
        if DED_CTELCOM.Focused then
          DED_CTELRESExit(DED_CTELCOM);
      end;

end;//TFRM_A001RH.TrataMaskEditTel

{------------------------------------------------------------------------------}

procedure TFRM_A001RH.DeletarFiguraClick(Sender: TObject);
begin
  //deleta a foto do servidor
  DTM_A001RH.DTS_109.DataSet.Delete;
  //limpa o image para retirar a imagem de seu buffer
  IMG_SERVIDOR.Picture := nil;
  //mostra o texto "Foto"
  STT_Foto.Visible := true;
end;//TFRM_A001RH.DeletarFiguraClick

{------------------------------------------------------------------------------}

procedure TFRM_A001RH.PopupMenuPopup(Sender: TObject);
begin
  //se a tabela de servidores estiver em edição
  //habilida a opção de inserir figura
  InserirFigura.Enabled := DTM_A001RH.DTS_029.DataSet.State in [dsEdit,dsInsert];

  //se a tabela de servidores estiver em edição e o campo de
  //foto não for vazio, habilita ao usuario deletar a figura
  DeletarFigura.Enabled := (DTM_A001RH.DTS_029.DataSet.State in [dsEdit,dsInsert]) and
                           (not(DTM_A001RH.QRY_109BFOTO.IsNull));
end;//TFRM_A001RH.PopupMenuPopup

{------------------------------------------------------------------------------}

procedure TFRM_A001RH.BTN_CADDEPClick(Sender: TObject);

begin

  //cria o cadastro de dependentes
  Application.CreateForm(TFRM_A004RH, FRM_A004RH);
  Application.CreateForm(TDTM_A004RH, DTM_A004RH);

  //passa o servidor atual como paremetro para o cadastro de dependentes
  FRM_A004RH.IdPai := DTM_A001RH.DTS_029.DataSet.FieldByName('nidcadgrl').asInteger;
  FRM_A004RH.cNomePai := DTM_A001RH.DTS_016.DataSet.FieldByName('cnomegrl').asString;
  FRM_A004RH.lAplicRH := true; 
  //ativa o form
  oControlForms.AtivaForm('FRM_A004RH',shModal,nil);
end;//TFRM_A001RH.BTN_CADDEPClick

{------------------------------------------------------------------------------}

procedure TFRM_A001RH.DBD_DDTEMIRGExit(Sender: TObject);
begin
  if not(TDBDateEdit(Sender).Field.IsNull) then
    if TDBDateEdit(Sender).Date < DBD_DDTNASC.Date then
      begin
        PGC_ENDDOC.ActivePageIndex := 1;
        TDBDateEdit(Sender).SetFocus;
        MessageDlg('Essa data não pode ser menor que a data de nascimento do servidor',
                    mtInformation,[mbOk],0);
        Abort;
      end;
end;//TFRM_A001RH.DBD_DDTEMIRGExit

{------------------------------------------------------------------------------}

procedure TFRM_A001RH.BTN_FICHAFUNClick(Sender: TObject);
begin
  Application.CreateForm(TDTM_A005RH,DTM_A005RH);
  Application.CreateForm(TFRM_A005RH,FRM_A005RH);
  FRM_A005RH.nIdCadGrl := DTM_A001RH.DTS_029.DataSet.FieldByName('nidcadgrl').asInteger;
  oControlForms.AtivaForm('FRM_A005RH',shModal,nil);
end;//TFRM_A001RH.BTN_FICHAFUNClick

{------------------------------------------------------------------------------}

procedure TFRM_A001RH.BTN_INFORFINANClick(Sender: TObject);
begin
  oControlForms.AtivaForm('FRM_A006RH',shModal,nil);
end;//TFRM_A001RH.BTN_INFORFINANClick

{------------------------------------------------------------------------------}

procedure TFRM_A001RH.DBL_NIDTBXECIChange(Sender: TObject);
begin
  if DBL_NIDTBXECI.Text = 'CASADO' then
    oControlForms.SetCompomentRequerido('FRM_A001RH',DED_CNOMECONJ)
  else
    oControlForms.RemoveCompomentRequerido(DED_CNOMECONJ);
end;//TFRM_A001RH.DBL_NIDTBXECIChange

{------------------------------------------------------------------------------}

procedure TFRM_A001RH.DBD_DDTNASCExit(Sender: TObject);
begin
  if DBD_DDTNASC.Date >= Now then
    begin
      MessageDlg('Data de nascimento dever ser menor que a data atual!',mtInformation,[mbOK],0);
      DBD_DDTNASC.SetFocus;
      Abort;
    end;
end;//TFRM_A001RH.DBD_DDTNASCExit

{------------------------------------------------------------------------------}

procedure TFRM_A001RH.CBE_NCEPKeyPress(Sender: TObject; var Key: Char);
begin
    Key := ValEditNumerico(Key);
end;//TFRM_A001RH.CBE_NCEPKeyPress

{------------------------------------------------------------------------------}

procedure TFRM_A001RH.PGC_ENDDOCDrawTab(Control: TCustomTabControl;
  TabIndex: Integer; const Rect: TRect; Active: Boolean);
begin
  PersonalizaTabs(Control,TabIndex,Rect,Active);
end;//TFRM_A001RH.PGC_ENDDOCDrawTab

{------------------------------------------------------------------------------}

procedure TFRM_A001RH.FormCreate(Sender: TObject);
begin
//habilida o desenho manual das tabs
 PGC_ENDDOC.OwnerDraw := true;
end;//TFRM_A001RH.FormCreate

{------------------------------------------------------------------------------}

procedure TFRM_A001RH.Btn_IncluirClick(Sender: TObject);
begin
  with DTM_A001RH do
    begin
      CBE_NCEP.Text := '';
      CBE_CCPFCNPJ.SetFocus;
      {inclui um novo servidor}
      DBGenerica(DTS_029,'Conexao',1,0);
      DTS_029.DataSet.FieldByName('nidcadser').asInteger := 0;
      Botoes(['Btn_Cancelar','Btn_Sair','Btn_Gravar'],'FRM_A001RH',true);
    end;
end;

procedure TFRM_A001RH.CBE_CCPFCNPJExit(Sender: TObject);
begin
  with DTM_A001RH,DMControle do
    begin

      if LimpaMask(CBE_CCPFCNPJ.Text) = DTS_016.DataSet.FieldByName('ccpfcnpj').asString then
        exit;

      //valida o número de CPF digitado pelo usuário
      //caso seja invalido informa ao usuario
      if (length(LimpaMask(Trim(CBE_CCPFCNPJ.Text))) < 11 ) or (not(ValidaCpf(LimpaMask(Trim(CBE_CCPFCNPJ.Text))))) then
        begin
          MessageDlg('Número de CPF invalído, redigite.',mtInformation,[mbOk],0);
          CBE_CCPFCNPJ.SetFocus;
          Abort;
        end;
      //se o usuário estiver inserindo ou alterando um servidor
      if DTS_029.DataSet.State in [dsInsert,dsEdit] then
        begin
          //se o usuário não digitou um número de CPF
          if LimpaMask(CBE_CCPFCNPJ.Text) = '' then
            begin
              //avisa ao usuário
              MessageDlg('Você deve informar um número de CPF!',mtInformation,[mbOk],0);
              //coloca o focus no campo de CPF
              CBE_CCPFCNPJ.SetFocus;

              abort;
            end;
          //verifica se o CPF ja esta cadastrado como um servidor
          PrepareQryTemp('select nidcadser from cadser, cadgrl where ' +
          'cadser.nidcadgrl = cadgrl.nidcadgrl and cadgrl.ccpfcnpj = ' + QuotedStr(LimpaMask(CBE_CCPFCNPJ.Text)));
          //se encontrou o CPF como um servidor
          if not(QryTemp.IsEmpty) then
            begin
              MessageDlg('Este CPF já é cadastrado como servidor!',mtInformation,[mbOk],0);
              CBE_CCPFCNPJ.SetFocus;
              QryTemp.Close;
              QryTemp.SQL.Clear;
              Exit;
            end;


          //procura o cpf informado pelo usuário na base de dados
          PrepareQryTemp('select nidcadgrl from cadgrl where ccpfcnpj = ' + QuotedStr(LimpaMask(CBE_CCPFCNPJ.Text))+
          ' and nidcadgrl <> ' + IntToStr(DTS_029.DataSet.FieldByName('nidcadgrl').asInteger));

          //se o usuário estiver inserindo um novo servidor
          if DTS_029.DataSet.State = dsInsert then
            begin
              //se encontrou a pessoa no cadastro geral
              if not(QryTemp.IsEmpty) then
                begin
                  //passa a id para o cad. servidor
                  DTS_029.DataSet.FieldByName('nidcadgrl').AsInteger :=
                  QryTemp.FieldByName('nidcadgrl').asInteger;
                  //atualiza a qry de cad. geral
                  QRY_016.ParamByName('nidcadgrl').asInteger :=
                  QryTemp.FieldByName('nidcadgrl').asInteger;
                  QRY_016.ExecSQL;
                  //atualiza o cep na interface
                  CBE_NCEP.Text :=
                  DTS_013.DataSet.FieldByName('nCep').DisplayText;
                  //atualiza a qry de cad. pessoa fisica
                  QRY_019.ParamByName('nidcadgrl').asInteger :=
                  QryTemp.FieldByName('nidcadgrl').asInteger;
                  QRY_019.ExecSQL;
                  QRY_109.ParamByName('nidcadgrl').asInteger :=
                  QryTemp.FieldByName('nidcadgrl').asInteger;
                  QRY_109.ExecSql;
                  //forca a leitura da foto
                  QRY_029AfterScroll(DTM_A001RH.DTS_029.DataSet);
                  //edita registro na tabela de cadastro geral
                  DBGenerica(DTS_016,'Conexao',2,0,nil);
                  //edita registro da tabela de pessoas fisicas
                  DBGenerica(DTS_019,'Conexao',2,0,nil);
                  lDigEnd := false;
                end
              else
                begin
                  MessageDlg('CPF não cadastrado! Pressione F3 para cadastrar!',mtInformation,[mbOk],0);
                  CBE_CCPFCNPJ.SetFocus;
                end;

            end
          else
            begin
              //se encontrou alguma pessoa com o mesmo CPF
              if not(QryTemp.IsEmpty) then
                begin
                  //avisa o usuário
                  MessageDlg('Este número de CPF já esta sendo usado por outra pessoa!',mtInformation,[mbOk],0);
                  //retorna o focus para o campo de CPF
                  CBE_CCPFCNPJ.SetFocus;
                end
              else
                begin
                  //atribui o novo CPF para o servidor
                  DTS_016.DataSet.FieldByName('ccpfcnpj').asString :=
                  LimpaMask(CBE_CCPFCNPJ.Text);
                end;
            end;
          QryTemp.Close;
          QryTemp.SQL.Clear;
        end
      else
        begin
          if not(Dts_029.DataSet.Locate('ccpfcnpj',LimpaMask(CBE_CCPFCNPJ.Text),[])) then
            begin
              MessageDlg('Servidor não localizado!',mtInformation,[mbOk],0);
              CBE_CCPFCNPJ.SetFocus;
            end;
        end;

    end;
end;

procedure TFRM_A001RH.CBE_CCPFCNPJKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_ESCAPE then
    CBE_CCPFCNPJ.Text :=
    DTM_A001RH.DTS_016.DataSet.FieldByName('ccpfcnpj').asString;
end;

procedure TFRM_A001RH.BTN_PGTOEFTClick(Sender: TObject);
begin
  //chama o form de pagamentos efetuados
  Application.CreateForm(TDTM_A038RH,DTM_A038RH);
  Application.CreateForm(TFRM_A038RH,FRM_A038RH);
  FRM_A038RH.nIdServidor :=
  DTM_A001RH.DTS_029.DataSet.FieldByName('nidcadser').asInteger;
  oControlForms.AtivaForm('FRM_A038RH',shModal,nil);
end;

end.




