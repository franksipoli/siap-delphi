{*******************************************************************************
 *                                                                             *
 *  Cadastro de Grupo Familiar                                                 *
 *  Altera, inclui informações dos dependentes do servidor passado como        *
 *  parametro.                                                                 *
 *                                                                             *
 *  Data da Criação : 05/02/2004                                               *
 *  Programador Leandro Ribas                                                  *
 *  Data Finalização : 06/02/2004                                              *
 *                                                                             *
 *  Data da Ultima Atualização :08/03/2004                                     *
 *  Atualizado por: Leandro Ribas                                              *
 *                                                                "vamo nessa" *
 *******************************************************************************
}

unit A004RH;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  RxLookup, StdCtrls, RxDBComb, Grids, DBGrids, DBCtrls, Mask, ToolEdit,
  RXDBCtrl, LMDCustomControl, LMDCustomPanel, LMDCustomBevelPanel,
  LMDCustomParentPanel, LMDCustomPanelFill, LMDPanelFill, Buttons, ExtCtrls,
  LMDCustomGroupBox, LMDGroupBox, DB, MemDS, DBAccess, Ora;

type
  TFRM_A004RH = class(TForm)
    Panel2: TPanel;
    Btn_Incluir: TSpeedButton;
    Btn_Alterar: TSpeedButton;
    Btn_Gravar: TSpeedButton;
    Btn_Excluir: TSpeedButton;
    BTN_SAIR: TSpeedButton;
    Btn_Avancar: TSpeedButton;
    Btn_Retroceder: TSpeedButton;
    Btn_Cancelar: TSpeedButton;
    Btn_Imprimir: TSpeedButton;
    GRB_DEPEN: TLMDGroupBox;
    Label21: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label33: TLabel;
    Label34: TLabel;
    DBD_DDTNASCDEP: TDBDateEdit;
    DED_CLC_IDADE: TDBEdit;
    LMDPanelFill49: TLMDPanelFill;
    GRD_DEPENDENTE: TDBGrid;
    LMDPanelFill6: TLMDPanelFill;
    LMDPanelFill28: TLMDPanelFill;
    DED_CNOMEGRL: TDBEdit;
    DBL_NIDTBXGRP: TRxDBLookupCombo;
    DBL_NIDTBXDSF: TRxDBLookupCombo;
    DBL_NIDTBXDIR: TRxDBLookupCombo;
    DBText1: TDBText;
    DBText2: TDBText;
    CBE_CCPFCNPJ: TComboEdit;
    Label1: TLabel;
    BTN_ENDERC: TSpeedButton;
    DED_CSEXO: TDBEdit;
    Label2: TLabel;
    Label3: TLabel;
    QRY_GRPFAMILIAR: TOraQuery;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BTN_SAIRClick(Sender: TObject);
    procedure Btn_AvancarClick(Sender: TObject);
    procedure Btn_RetrocederClick(Sender: TObject);
    procedure Btn_IncluirClick(Sender: TObject);
    procedure Btn_AlterarClick(Sender: TObject);
    procedure Btn_GravarClick(Sender: TObject);
    procedure Btn_CancelarClick(Sender: TObject);
    procedure Btn_ExcluirClick(Sender: TObject);
    procedure Btn_ImprimirClick(Sender: TObject);
    procedure DBD_DDTNASCDEPExit(Sender: TObject);
    procedure DBL_NIDTBXDSFKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBL_NIDTBXDIRKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CBE_CCPFCNPJExit(Sender: TObject);
    procedure CBE_CCPFCNPJButtonClick(Sender: TObject);
    procedure BTN_ENDERCClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DBL_NIDTBXGRPChange(Sender: TObject);
  private

    { Private declarations }

  public
    { Public declarations }

    IdPai : integer;//id do pai/mae
    cNomePai : string; //nome do pai/mae do dependente
    lAplicRH : boolean;

    procedure AlteraStatusBotao;

    procedure IniciaLkpSf;

    procedure IniciaLkpIR;

  end;

var
  FRM_A004RH: TFRM_A004RH;

implementation

uses D004RH, MPLCtrl, UVariaveis, DMCTRL, MPLLib, CtrlForms, D013, A013;

{$R *.DFM}

procedure TFRM_A004RH.FormShow(Sender: TObject);
begin
  //verifica o acesso do usuário aos objetos e campo da aplicação
  if not Acesso(nMatricula,'A004RH',DTM_A004RH) then
    close;

  Caption := Caption + ' - ' + cNomePai;

  //muda o estado dos botões
  Botoes(['Btn_Cancelar','Btn_Gravar'],'FRM_A004RH',false);

  //passa o código do servidor a qual os dependentes pertence
  DTM_A004RH.QRY_030.ParamByName('nidcadpai').AsInteger := IdPai;

  //traz as informações do servidor passado como parametro
  DTM_A004RH.QRY_030.ExecSQL;


  DBL_NIDTBXDIR.Enabled := lAplicRH;
  DBL_NIDTBXGRP.Enabled := lAplicRH;

  FRM_A004RH.OnShow := nil;

 {é atribuido ao OnShow do Form o valor nil para que o mesmo seja executado apenas uma vez}
 {pelo fato que se outra aplicação for chamada pela tecla F3, e ao retornar da aplicação que foi chamada pela tecla}
 {o evento OnShow deste form não acontecerá, ou seja não será executado, para permanecer o mesmo status da aplicação}
 {quando o F3 foi chamado}
end;//TFRM_A004RH.FormShow

{------------------------------------------------------------------------------}

procedure TFRM_A004RH.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  //fecha os Datasets do DataModule e libera o form da memoria
  Action:= oControlForms.Saidas(Self,[DTM_A004RH],DTM_A004RH.DTS_030.DataSet);
end;//TFRM_A004RH.FormClose

{------------------------------------------------------------------------------}

procedure TFRM_A004RH.BTN_SAIRClick(Sender: TObject);
begin
  //fecha o form
  close;
end;//TFRM_A004RH.BTN_SAIRClick

{------------------------------------------------------------------------------}

procedure TFRM_A004RH.Btn_AvancarClick(Sender: TObject);
begin
   //proximo registro na tabela de dependentes
   DBGenerica(DTM_A004RH.DTS_030,'Conexao',0,3,GRD_DEPENDENTE,false);
end;//TFRM_A004RH.Btn_AvancarClick

{------------------------------------------------------------------------------}

procedure TFRM_A004RH.Btn_RetrocederClick(Sender: TObject);
begin
  //retrocede um registro na tabela de dependentes
  DBGenerica(DTM_A004RH.DTS_030,'Conexao',0,2,GRD_DEPENDENTE,false);
end;//TFRM_A004RH.Btn_RetrocederClick

{------------------------------------------------------------------------------}

procedure TFRM_A004RH.Btn_IncluirClick(Sender: TObject);
begin
  //inseri um novo registro na tabela de dependente
  DBGenerica(DTM_A004RH.DTS_030,'Conexao',1,0,GRD_DEPENDENTE,false);

  //passa valor para chave primaria da tabela de dependentes
  //o vaor definitivo sera gerado pela sequencia do banco
  DTM_A004RH.DTS_030.DataSet.FieldByName('nidtagdep').AsInteger := 0;
  DTM_A004RH.DTS_030.DataSet.FieldByName('nidcadpai').AsInteger := IdPai;
  //muda o estado dos botões da aplicação
  Botoes(['Btn_Cancelar','Btn_Sair','Btn_Gravar'],'FRM_A004RH',true);

  //campo CPF recebe foco
  DBL_NIDTBXGRP.SetFocus;

  IniciaLkpIR;
  IniciaLkpSf;
end;//TFRM_A004RH.Btn_IncluirClick

{------------------------------------------------------------------------------}

procedure TFRM_A004RH.Btn_AlterarClick(Sender: TObject);
begin
  //coloca em estado de edição o registro atual do dependente
  DBGenerica(DTM_A004RH.DTS_030,'Conexao',2,0,GRD_DEPENDENTE,false);
  //coloca em estado de edição o registro do cadastro geral
  DBGenerica(DTM_A004RH.DTS_016,'Conexao',2,0,nil,false);
  //coloca em estado de edição o registro pessoa fisica
  DBGenerica(DTM_A004RH.DTS_019,'Conexao',2,0,nil,false);

  //muda o estado dos botões da aplicação
  Botoes(['Btn_Cancelar','Btn_Gravar','Btn_Sair'],'Frm_A004RH',true);
end;//TFRM_A004RH.Btn_AlterarClick

{------------------------------------------------------------------------------}

procedure TFRM_A004RH.Btn_GravarClick(Sender: TObject);
var
  lInclusao : Boolean;
begin

  //verifica se a data de nascimento do dependente está correta
  DBD_DDTNASCDEPExit(Sender);

  lInclusao := false;

  with DTM_A004RH do
    begin
      //verifica se todos os campos requeridos foram preenchidos pelo usuário
      if LiberadoGravacao(FRM_A004RH,DTS_030) then
        begin
          if Dts_030.DataSet.State = dsEdit then
            CBE_CCPFCNPJ.Text := DTS_016.DataSet.FieldByName('ccpfcnpj').asString;
          if MessageDlg('Deseja Salvar Alterações?',mtConfirmation,[mbYes,mbNo],0) = mrYes then
            begin
              DMControle.Conexao.StartTransaction;
              try
                QRY_019.FieldByName('csexo').asString :=
                DED_CSEXO.Text;
                if Dts_030.DataSet.State = dsInsert then
                  begin
                    //se o usuario não informou o CPF do dependente
                    if LimpaMask(CBE_CCPFCNPJ.Text) = '' then
                      begin
                        //consulta se o dependente existe
                        PrepareQryTemp('select cadgrl.nidcadgrl from cadgrl,cadfis where cadfis.nidcadgrl = cadgrl.nidcadgrl and cadgrl.cnomegrl = ' +
                                       QuotedStr(DED_CNOMEGRL.Text) +
                                       ' and cadfis.ddtnasc = ' + QuotedStr(FormatDatePesquisa(DBD_DDTNASCDEP.Date)));
                        //se o dependente existe
                        if not(DMControle.QryTemp.IsEmpty) then
                          begin
                            //cancela a operação na tabela de pessoa fisica
                            DBGenerica(DTS_019,'Conexao',3, 0,nil,false);
                            //cancela a operação na tabela de cadastro geral
                            DBGenerica(DTS_016,'Conexao',3, 0,nil,false);

                            DTS_030.DataSet.FieldByName('nidcadgrl').asInteger :=
                            DMControle.QryTemp.FieldByName('nidcadgrl').asInteger;
                            QRY_016.ParamByName('nidcadgrl').asInteger :=
                            DMControle.QryTemp.FieldByName('nidcadgrl').asInteger;
                            QRY_016.ExecSQL;
                          end;
                        DMControle.QryTemp.Close;
                        DMControle.QryTemp.SQL.Clear;
                      end;
                    if DTS_016.DataSet.State = dsInsert then
                      begin
                        lInclusao := true;
                        DMControle.QryTemp.SQL.Add('select cadgrl.nidcadgrl from cadgrl,cadfis where cadfis.nidcadgrl = cadgrl.nidcadgrl and cadgrl.cnomegrl = ' +
                                       QuotedStr(DED_CNOMEGRL.Text) +
                                       ' and cadfis.ddtnasc = ' + QuotedStr(FormatDatePesquisa(DBD_DDTNASCDEP.Date)));
                        //grava cad. geral
                        DBGenerica(Dts_016,'Conexao',4,1,GRD_DEPENDENTE,false);
                        //grava pessoa fisica
                        //DBGenerica(Dts_019,'Conexao',4,1,GRD_DEPENDENTE,false);
                        DMControle.QryTemp.Open;
                        //atribui a id do cad. geral para o dependente
                        DTS_030.DataSet.FieldByName('nidcadgrl').AsInteger :=
                        DMControle.QryTemp.FieldByName('nidcadgrl').asInteger;

                        DMControle.QryTemp.Close;
                        DMControle.QryTemp.SQL.Clear;

                      end
                    else
                      if DTS_016.DataSet.State = dsEdit then
                        begin
                          //grava pessoa fisica
                          DBGenerica(Dts_019,'Conexao',4,1,GRD_DEPENDENTE,false);
                          //grava cad. geral
                          DBGenerica(Dts_016,'Conexao',4,1,GRD_DEPENDENTE,false);
                        end;


                  end;

                if (not(lInclusao)) and (DTS_030.DataSet.State = dsInsert) then
                  begin
                    PrepareQryTemp('select nidtagdep from tagdep where nidcadpai = ' + IntToStr(IdPai) +
                                   ' and nidcadgrl = ' + Dts_030.DataSet.FieldByName('nidcadgrl').asString);
                    if not(DMControle.QryTemp.IsEmpty) then
                      begin
                        MessageDlg('Esta pessoa já está cadastrada como dependente!',mtError,[mbOk],0);
                        DMControle.Conexao.Rollback;
                        exit;
                      end;
                  end;

                DBGenerica(Dts_030,'Conexao',4,1,GRD_DEPENDENTE,false);

                //atualiza a ligação parentesca
                
                QRY_GRPFAMILIAR.ParamByName('IDPESSOA').value := IdPai;
                QRY_GRPFAMILIAR.ExecSQL;

                DTS_019.AutoEdit := false;
                DTS_016.AutoEdit := false;

                //muda o estado dos botões da aplicação
                Botoes(['Btn_Gravar','Btn_Cancelar'],'FRM_A004RH',false);

                //soma quantos dependentes para imposto de renda o servidor possue
                QRY_DEPIMPRENDA.ExecSQL;

                //soma quantos dependentes para salário familia o servidor possue
                QRY_DEPSALFAM.ExecSQL;

                DMControle.Conexao.Commit;
              except
                DMControle.Conexao.Rollback;
              end;
            end;


        end;
    end;
end;//TFRM_A004RH.Btn_GravarClick

{------------------------------------------------------------------------------}

procedure TFRM_A004RH.Btn_CancelarClick(Sender: TObject);
begin

   //muda o estado dos botões da aplicação
   Botoes(['Btn_Cancelar', 'Btn_Gravar'],'FRM_A004RH',false);
   //cancela as alterações no registro de pessoa fisica
   DBGenerica(DTM_A004RH.DTS_019,'Conexao',3, 0,nil,false);
   //cancela a operação no registro de cadastro geral
   DBGenerica(DTM_A004RH.DTS_016,'Conexao',3, 0,nil,false);
   //cancela as alterãções no registro atual do dependente
   DBGenerica(DTM_A004RH.DTS_030,'Conexao',3, 0,GRD_DEPENDENTE,false);

   CBE_CCPFCNPJ.Text := DTM_A004RH.DTS_016.DataSet.FieldByName('ccpfcnpj').asString;

   //DTM_A004RH.QRY_016.ExecSql;

end;//TFRM_A004RH.Btn_CancelarClick

{------------------------------------------------------------------------------}

procedure TFRM_A004RH.Btn_ExcluirClick(Sender: TObject);
begin

  if MessageDlg('Deseja deletar o parente?',mtConfirmation,[mbYes,mbNo],0) = mrYes then
    begin

      //exclui registro atual do dependente
      DBGenerica(DTM_A004RH.DTS_030,'Conexao',5,1,GRD_DEPENDENTE,false);

      //atualiza a ligação parentesca
      QRY_GRPFAMILIAR.ParamByName('IDPESSOA').value := IdPai;
      QRY_GRPFAMILIAR.ExecSQL;

      //soma quantos dependentes para imposto de renda o servidor possue
      DTM_A004RH.QRY_DEPIMPRENDA.ExecSQL;

      //soma quantos dependentes para salário familia o servidor possue
      DTM_A004RH.QRY_DEPSALFAM.ExecSQL;


    end;

end;//TFRM_A004RH.Btn_ExcluirClick

{------------------------------------------------------------------------------}

procedure TFRM_A004RH.Btn_ImprimirClick(Sender: TObject);
begin

  //chama gerador de relatório para tabela de dependentes
  RelCadastro(DTM_A004RH.QRY_030,'Dependentes');

end;//TFRM_A004RH.Btn_ImprimirClick

{------------------------------------------------------------------------------}

procedure TFRM_A004RH.DBD_DDTNASCDEPExit(Sender: TObject);
begin

  //se a data de nacimento do dependente é maior de a data atual
  if DBD_DDTNASCDEP.Date > Now then
    begin
      //avisa ao usuário
      MessageDlg('A data de nascimento não pode ser maior que a data atual!',mtInformation,[mbOk],0);

      //volta o foco para o data de nascimento do dependente
      DBD_DDTNASCDEP.SetFocus;

      //não continua o programa
      Abort;

    end
  else
    if DTM_A004RH.DTS_030.DataSet.State in [dsEdit,dsInsert] then
      begin
        DTM_A004RH.DTS_030.DataSet.UpdateRecord;
        DTM_A004RH.QRY_030CalcFields(nil);
      end;




end;//TFRM_A004RH.DBD_DDTNASCDEPExit

{------------------------------------------------------------------------------}

procedure TFRM_A004RH.DBL_NIDTBXDSFKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  //se a tabela de dependente não estiver em inserção ou alteração
  if DTM_A004RH.DTS_030.DataSet.State in [dsEdit,dsInsert] then
    //se o usuário pressiou BACKSPACE ou DELETE  no campo de
    //dependentes para salário familia
    if (Key = VK_DELETE) or (Key = VK_BACK) then
      //retira a referencia do dependente para salario familia
      DTM_A004RH.DTS_030.DataSet.FieldByName('nidtbxdsf').value := null;

end;//TFRM_A004RH.DBL_NIDTBXDSFKeyDown

{------------------------------------------------------------------------------}


procedure TFRM_A004RH.DBL_NIDTBXDIRKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin

  //se a tabela de dependente não estiver em inserção ou alteração
  if DTM_A004RH.DTS_030.DataSet.State in [dsEdit,dsInsert] then
    //se o usuário pressiou BACKSPACE ou DELETE  no campo de
    //dependentes para imposto de renda
    if (Key = VK_DELETE) or (Key = VK_BACK) then
      //retira a referencia do dependente para imposto de renda
      DTM_A004RH.DTS_030.DataSet.FieldByName('nidtbxdir').value := null;

end;//TFRM_A004RH.DBL_NIDTBXDIRKeyDown

{------------------------------------------------------------------------------}

procedure TFRM_A004RH.CBE_CCPFCNPJExit(Sender: TObject);
  var
    cAux : String;
    lCondicao : boolean;
begin
  with DTM_A004RH do
    begin
      if DTS_030.DataSet.State in [dsInsert,dsEdit] then
        begin
          cAux := LimpaMask(CBE_CCPFCNPJ.Text);
          if (DTS_016.DataSet.FieldByName('ccpfcnpj').asString = '') and
             (DTS_030.DataSet.State = dsInsert)  then
            lCondicao := true
          else
            lCondicao := cAux <> DTS_016.DataSet.FieldByName('ccpfcnpj').asString;

          if lCondicao then
            begin
              if cAux <> '' then
                begin
                  if length(cAux) <> 11 then
                    begin
                      MessageDlg('Número de CPF incompleto!',mtInformation,[mbok],0);
                      CBE_CCPFCNPJ.SetFocus;
                      exit;
                    end;
                  if not(ValidaCPF(cAux)) then
                    begin
                      MessageDlg('Número de CPF invalido!',mtInformation,[mbok],0);
                      CBE_CCPFCNPJ.SetFocus;
                      exit;
                    end;
                  PrepareQryTemp('select nidcadgrl from cadgrl where ccpfcnpj = ' + cAux);
                  if not(DMControle.QryTemp.IsEmpty) then
                    begin
                      if DTS_030.DataSet.State = dsInsert then
                        begin
                          DTS_030.DataSet.FieldByName('nidcadgrl').asInteger :=
                          DMControle.QryTemp.FieldByName('nidcadgrl').asInteger;
                          QRY_016.ParamByName('nidcadgrl').asInteger :=
                          DMControle.QryTemp.FieldByName('nidcadgrl').asInteger;
                          QRY_016.ExecSql;
                          DTS_030.DataSet.FieldByName('ddtnasc').value :=
                          DTS_019.DataSet.FieldByName('ddtnasc').value;
                          //coloca em estado de edição o registro do cadastro geral
                          DBGenerica(DTS_016,'Conexao',2,0,nil,false);
                          //coloca em estado de edição o registro pessoa fisica
                          DBGenerica(DTS_019,'Conexao',2,0,nil,false);
                        end
                      else
                        begin
                          MessageDlg('Este número de CPF já esta sendo usado!',mtError,[mbOk],0);
                          CBE_CCPFCNPJ.SetFocus;
                        end;
                    end
                  else
                    begin
                      if DTS_030.DataSet.State = dsInsert then
                        begin
                          //inseri um novo registro na tabela de cadastro geral
                          DBGenerica(DTS_016,'Conexao',1,0,GRD_DEPENDENTE,false);
                          DTS_016.DataSet.FieldByName('nidcadgrl').asInteger := 0;
                          DTS_016.DataSet.FieldByName('cpessoafj').asInteger := 1;
                          DTS_016.DataSet.FieldByName('ccpfcnpj').asString := cAux;
                          //inseri um novo registro na tabela de pessoa fisica
                          DBGenerica(DTS_019,'Conexao',1,0,GRD_DEPENDENTE,false);
                          DTS_019.DataSet.FieldByName('nidcadfis').asInteger := 0;
                        end
                      else
                        DTS_016.DataSet.FieldByName('ccpfcnpj').asString := cAux;
                    end;
                  DMControle.QRYTemp.Close;
                  DMControle.QRYTemp.SQL.Clear;
                end
              else//igual a branco
                if DTS_030.DataSet.State = dsInsert then
                  begin
                    //inseri um novo registro na tabela de cadastro geral
                    DBGenerica(DTS_016,'Conexao',1,0,GRD_DEPENDENTE,false);
                    DTS_016.DataSet.FieldByName('nidcadgrl').asInteger := 0;
                    DTS_016.DataSet.FieldByName('cpessoafj').asInteger := 1;
                    //inseri um novo registro na tabela de pessoa fisica
                    DBGenerica(DTS_019,'Conexao',1,0,GRD_DEPENDENTE,false);
                    DTS_019.DataSet.FieldByName('nidcadfis').asInteger := 0;
                  end
                else
                  CBE_CCPFCNPJ.Text := DTS_016.DataSet.FieldByName('ccpfcnpj').asString;



            end;
        end;
    end;


end;

{------------------------------------------------------------------------------}

procedure TFRM_A004RH.CBE_CCPFCNPJButtonClick(Sender: TObject);
begin
VerTeclas(VK_F2);
end;

{------------------------------------------------------------------------------}

procedure TFRM_A004RH.BTN_ENDERCClick(Sender: TObject);
begin
//cria o cadastro de endereços
  Application.CreateForm(TFRM_A013, FRM_A013);
  Application.CreateForm(TDTM_A013, DTM_A013);

  //passa o servidor atual como paremetro
  FRM_A013.IdCadGrl := DTM_A004RH.DTS_030.DataSet.FieldByName('nidcadgrl').asInteger;
  FRM_A013.cNome := DTM_A004RH.DTS_030.DataSet.FieldByName('cnomegrl').asString;

  //ativa o form
  oControlForms.AtivaForm('FRM_A013',shModal,nil);

end;

{------------------------------------------------------------------------------}

procedure TFRM_A004RH.AlteraStatusBotao;
begin
  Btn_Alterar.Enabled := false;
  BTN_ENDERC.Enabled := false;
  Btn_Excluir.Enabled := false;
  Btn_Imprimir.Enabled := false;
  Btn_Avancar.Enabled := false;
  Btn_Retroceder.Enabled := false;
end;

procedure TFRM_A004RH.FormCreate(Sender: TObject);
begin
  lAplicRH := false;
end;

procedure TFRM_A004RH.IniciaLkpSf;
begin
  with DTM_A004RH do
    begin
      if QRY_028.Locate('nidtbxdsf',0,[]) then
        DBL_NIDTBXDSF.KeyValue :=
        QRY_028.FieldByName('nidtaggsf').Value;
    end;
end;

procedure TFRM_A004RH.IniciaLkpIR;
begin
  with DTM_A004RH do
    begin
      if QRY_027.Locate('nidtbxdir',0,[]) then
        DBL_NIDTBXDIR .KeyValue :=
        QRY_027.FieldByName('nidtaggir').Value;
    end;
end;


procedure TFRM_A004RH.DBL_NIDTBXGRPChange(Sender: TObject);
begin
  if DTM_A004RH.QRY_030.State in [dsInsert,dsEdit] then
    begin
      IniciaLkpIR;
      IniciaLkpSf;
    end;
end;

end.
