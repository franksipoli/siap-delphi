
unit A005UTCO;

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
  LMDMessageHint, RzLstBox, RzChkLst, Gauges, RxLookup, Mask, DBCtrls,
  RzTreeVw, Grids, DBGrids, RxDBComb, PageControlEx, Db, ToolEdit ;


type
  TFRM_A005UTCO = class(TForm)
    Panel2: TPanel;
    Btn_Incluir: TSpeedButton;
    Btn_Alterar: TSpeedButton;
    Btn_Gravar: TSpeedButton;
    Btn_Localizar: TSpeedButton;
    Btn_Imprimir: TSpeedButton;
    BTN_SAIR: TSpeedButton;
    Btn_Avancar: TSpeedButton;
    Btn_Retroceder: TSpeedButton;
    Btn_Cancelar: TSpeedButton;
    Btn_Excluir: TSpeedButton;
    LMDGroupBox1: TLMDGroupBox;
    DED_CNOMETBL: TDBEdit;
    DED_CDESCRTBL: TDBEdit;
    LKP_CNOMEFORM: TRxDBLookupCombo;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    PageControlEx1: TPageControlEx;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    GroupBox: TLMDGroupBox;
    TRV_PESQUISA: TRzCheckTree;
    DBM_CSEQBROWSE: TDBMemo;
    LMDGroupBox3: TLMDGroupBox;
    GRD_CAMPOS: TDBGrid;
    LMDPanelFill2: TLMDPanelFill;
    Btn_Retroceder1: TSpeedButton;
    Btn_Avancar1: TSpeedButton;
    BTN_ADICIONA: TSpeedButton;
    BTN_EXCLUIR2: TSpeedButton;
    LMDPanelFill1: TLMDPanelFill;
    LMDPanelFill3: TLMDPanelFill;
    CBE_NIDTBL_T: TComboEdit;
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
    procedure Btn_Avancar1Click(Sender: TObject);
    procedure Btn_Retroceder1Click(Sender: TObject);
    procedure BTN_ADICIONAClick(Sender: TObject);
    procedure BTN_EXCLUIR2Click(Sender: TObject);
    procedure CBE_NIDTBL_TButtonClick(Sender: TObject);
    procedure CBE_NIDTBL_TExit(Sender: TObject);
    procedure CBE_NIDTBL_TEnter(Sender: TObject);
    procedure PageControlEx1Change(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure TRV_PESQUISAStateChange(Sender: TObject; Node: TTreeNode;
      NewState: TRzCheckState);
    procedure DBM_CSEQBROWSEKeyPress(Sender: TObject; var Key: Char);
    procedure DED_CNOMETBLExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
     cIdTabela : String;

     {mantem uma lista com o código do campo referente ao item do treeview}
     cListaCampos : TStringList;

     //montra o treeview com os campos proprios e
     //estrangeiros da tabela corrente
     procedure MontaTreeView;

     //adiciona no treeview o item que é uma chave estrageira da tabela corrente
     //e adiciona tambem os campos pertencentes a tabela estrangeira
     procedure AddItemEstrangeiro(nCodTabela : Integer; ItemTrv : TTreeNode);

     //verifica se o campo já esta incluido no comando de pesquisa
     function CampoIncluidoPesquisa(nCodCampo : Integer; cCamposPesquisa : String): String;

     //adiciona o campo que se refere ao item do treeview
     // na string de comando da pesquisa
     procedure AddCampoPesquisa(Node : TTreeNode);

     //adiciona campo que não é estrangeiro no ComandoPesq , na Posição passada
     //como parametro, caso o valor da posição seja -1 o campo e adicionado ao
     //final do comando de pesquisa
     function AddCampoProprio(Campo : String; ComandoPesq : String; Posicao : Integer) : String;

     //adiciona o campo estrangeiro ao comando de pesquisa na posição passada como parametro
     //se a posição for -1 o campo e adicionado ao final do comando de pesquisa
     function AddCampoEstrangeiro(Campo : String; CampoPai : String; ComandoPesq : String;
                                  Posicao : Integer; Node : TTreeNode = nil) : String;

     //remove campo pesquisa que se refere ao item do treeview
     procedure RemoveCampoPesq(Node : TTreeNode);

     //remove um campo que não tem tabela estrangeira do comando da pesquisa
     function RemoveCampoSimpPesq(Campo,ComandoPesp : String) : String;

     //remove campo estrangeiro do comando da pesquisa
     function RemoveCampoEstragPesq(Campo, ComandoPesq : String) : String;

  end;

var
  FRM_A005UTCO: TFRM_A005UTCO;

implementation

uses MPLCtrl, Login, TelaPrin, D005UTCO, A008UTCO, UVariaveis, CtrlForms,
  DMCTRL;

{$R *.DFM}

{------------------------------------------------------------------------------}
procedure TFRM_A005UTCO.BTN_SAIRClick(Sender: TObject);
begin
  //limpa o evento onExit
  DED_CNOMETBL.OnExit := nil;
  Close;
end;//TFRM_A005UTCO.BTN_SAIRClick(Sender: TObject);

{------------------------------------------------------------------------------}

procedure TFRM_A005UTCO.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   //finaliza o form, e libera da memoria
   Action:= oControlForms.Saidas(Sender,[DTM_A005UTCO],DTM_A005UTCO.DTS_043.DataSet);

end;//TFRM_A005UTCO.FormClose(Sender: TObject; var Action: TCloseAction);

{------------------------------------------------------------------------------}

procedure TFRM_A005UTCO.FormShow(Sender: TObject);
begin
  //verifica o acesso do usuario aos objetos e campos da aplicação
  Acesso(nMatricula,'A005UTCO',DTM_A005UTCO);
  //muda o estado dos botões da aplicação
  Botoes(['Btn_Cancelar','Btn_Gravar','Btn_Relaciona','Btn_Incluir1',
                    'BTN_ADICIONA','BTN_EXCLUIR2'],'FRM_A005UTCO',false);
  //atribui ao evento AfterScroll a tarefa de remomtar o treeview com
  //os campos da tabela corrente a cada registro navegado
  DTM_A005UTCO.QRY_043.AfterScroll := DTM_A005UTCO.QRY_043AfterScroll;
  //monta o treeview com os campos da tabela corrente
  MontaTreeView;
  //limpa o onShow do form
  FRM_A005UTCO.OnShow := nil;

 {é atribuido ao OnShow do Form o valor nil para que o mesmo seja executado apenas uma vez}
 {pelo fato que se outra aplicação for chamada pela tecla F3, e ao retornar da aplicação que foi chamada pela tecla}
 {o evento OnShow deste form não acontecerá, ou seja não será executado, para permanecer o mesmo status da aplicação}
 {quando o F3 foi chamado}
end;//TFRM_A005UTCO.FormShow(Sender: TObject);

{------------------------------------------------------------------------------}

procedure TFRM_A005UTCO.Btn_LocalizarClick(Sender: TObject);
begin
 //chama pesquisa padrao
 Pesquisa(DTM_A005UTCO.QRY_043,true,'','');
end;//TFRM_A005UTCO.Btn_LocalizarClick(Sender: TObject);

{------------------------------------------------------------------------------}

procedure TFRM_A005UTCO.Btn_AvancarClick(Sender: TObject);
begin
 //avança registro na tabela de tabelas
 DBGenerica(DTM_A005UTCO.DTS_043,'Conexao',0,3);
end;//TFRM_A005UTCO.Btn_AvancarClick(Sender: TObject);

{------------------------------------------------------------------------------}

procedure TFRM_A005UTCO.Btn_RetrocederClick(Sender: TObject);
begin
 //retrocede um registro na tabela de tabelas
 DBGenerica(DTM_A005UTCO.DTS_043,'Conexao',0,2);
end;//TFRM_A005UTCO.Btn_RetrocederClick(Sender: TObject);

{------------------------------------------------------------------------------}

procedure TFRM_A005UTCO.Btn_IncluirClick(Sender: TObject);
begin
  //inseri registro na tabela de tabelas
  DBGenerica(DTM_A005UTCO.DTS_043,'Conexao',1,0);

  //muda o estados dos botões da aplicação
  Botoes(['Btn_Cancelar','Btn_Gravar','Btn_Sair',
         'BTN_ADICIONA','BTN_EXCLUIR2'],'FRM_A005UTCO',true);
end;//TFRM_A005UTCO.Btn_IncluirClick(Sender: TObject);

{------------------------------------------------------------------------------}

procedure TFRM_A005UTCO.Btn_AlterarClick(Sender: TObject);
begin
  //muda o estados dos botões da aplicação
  Botoes(['Btn_Cancelar','Btn_Gravar', 'Btn_Sair',
          'BTN_ADICIONA','BTN_EXCLUIR2', 'Btn_Retroceder1','Btn_Avancar1'],'FRM_A005UTCO',true);
  //edita registro da tabela de tabelas
  DBGenerica(DTM_A005UTCO.DTS_043,'Conexao',2,0);

end;//TFRM_A005UTCO.Btn_AlterarClick(Sender: TObject);

{------------------------------------------------------------------------------}

procedure TFRM_A005UTCO.Btn_ExcluirClick(Sender: TObject);
begin
  //exclui registro da tabela de tabelas
  DBGenerica(DTM_A005UTCO.DTS_043,'Conexao',5,0);
end;//TFRM_A005UTCO.Btn_ExcluirClick(Sender: TObject);

{------------------------------------------------------------------------------}

procedure TFRM_A005UTCO.Btn_GravarClick(Sender: TObject);
begin

  with DTM_A005UTCO do
    begin
      //se o usuario preencheu todos os campos obrigatorios
      if LiberadoGravacao(FRM_A005UTCO,DTS_043) then
        begin
          //se o usuário deseja salvar as alterações
          if MessageDlg('Deseja Salvar Alterações?',mtConfirmation,[mbYes,mbNo],0) = mrYes then
            begin
              //abre transação no banco de dados
              DMControle.Conexao.StartTransaction;
              try
                //se estiver em inserção pega o ultimo numero gerado para
                // a id da tabela, e gera a proxima id
                //e grava a nova ID na tabela de estrutura de tabela
                if DTS_043.DataSet.State = dsInsert then
                  begin
                    //pega a ultima id gerada
                    PrepareQryTemp('select max(nidtbl_t) as ID from tbl_t');
                    DTS_043.DataSet.FieldByName('nidtbl_t').asInteger :=
                    DMControle.QryTemp.FieldByName('id').asInteger + 1;
                    DMControle.QryTemp.Close;
                    DMControle.QryTemp.SQL.Clear;
                    //desabilida a atualização dos controles visuais
                    DTS_047.DataSet.DisableControls;
                    try

                      //retira o master da tabela de estrutura de tabelas
                      QRY_047.MasterSource := nil;
                      //grava as informações da tabela de tabelas
                      DBGenerica(DTS_043,'Conexao',4,1);
                      //atribui aos campos da tabela a id da tabela pai
                      GravaKeyPai(DTS_047,DTS_043.DataSet.FieldByName('nidtbl_t'));

                    finally
                      //retorna o master da tabela de estrutura da tabela
                      //para mostrar apenas os campos da tabela corrente
                      QRY_047.MasterSource := DTS_043;
                      //abilida a atualização dos controles
                      DTS_047.DataSet.EnableControls;
                    end;
                  end
                else
                  begin
                    //se existir alguma alteração para enviar para o
                    //banco de dados
                    if QRY_047.UpdatesPending then
                      //aplica as alterações da tabela de estrutura de tabela
                      //na base de dados
                      DBGenerica(DTS_047,'Conexao',4,1,nil,true);

                    //grava os dados da tabela de tabelas
                    DBGenerica(DTS_043,'Conexao',4,1);
                  end;

                //realmente grava as informações no banco de dados
                DMControle.Conexao.Commit;
                DMControle.Qry_T.Refresh;
                if lResp then
                  //muda o estado dos botões da aplicação
                  Botoes(['Btn_Cancelar','Btn_Gravar','Btn_Relaciona','Btn_Incluir1',
                          'BTN_ADICIONA','BTN_EXCLUIR2'],'FRM_A005UTCO',false);
              except
                //caso aconteça algum erro
                on E : Exception do
                  begin
                    //desfaz as alterações no banco de dados
                    DMControle.Conexao.Rollback;
                    //avisa o usuário
                    MessageDlg('Não foi possivel atualizar os dados!'+ #13 +
                               'O operação inteira será cancelada!' + #13 +
                               'Erro :' + E.Message,mtError,[mbOk],0);
                    //cancela as alterações nos datasets
                    Btn_CancelarClick(Sender);
                  end;
              end;//try except
            end;//if MessageDlg('D...
        end;//if LiberadoGravacao(FRM_A005UTCO,DTS_043) then
    end;//with DTM_A005UTCO do

end;//TFRM_A005UTCO.Btn_GravarClick(Sender: TObject);

{------------------------------------------------------------------------------}

procedure TFRM_A005UTCO.Btn_CancelarClick(Sender: TObject);
  var
    Estado : TDataSetState;
begin
 //cancela as alterações que foram feitas na tabela de estrutura de tabela
 if DTM_A005UTCO.QRY_047.UpdatesPending then
   DBGenerica(DTM_A005UTCO.DTS_047,'Conexao',3,0,nil,true);
 //guarda o estado da tabela de tabela
 Estado := DTM_A005UTCO.DTS_043.DataSet.State;
 //cancela a operação da tabela de tabelas
 DBGenerica(DTM_A005UTCO.DTS_043,'Conexao',3,0);

 //se a tabela estivesse em edição
 //chama a montagem do treeview,
 //quando não for edição a montagem e feita pelo
 //evento AfterScroll da tabela
 if Estado = dsEdit then
   MontaTreeView;

 //muda o estado dos botões da aplicação
 Botoes(['Btn_Cancelar','Btn_Gravar','Btn_Relaciona','Btn_Incluir1',
         'BTN_ADICIONA','BTN_EXCLUIR2'],'FRM_A005UTCO',false);


end;//TFRM_A005UTCO.Btn_CancelarClick(Sender: TObject);

{------------------------------------------------------------------------------}

procedure TFRM_A005UTCO.Btn_ImprimirClick(Sender: TObject);
begin
 //chama o gerador de relatório
 RelCadastro(DTM_A005UTCO.QRY_047_01,'Cadastro de Tabelas');
end;//TFRM_A005UTCO.Btn_ImprimirClick(Sender: TObject);

{------------------------------------------------------------------------------}

procedure TFRM_A005UTCO.Btn_Avancar1Click(Sender: TObject);
begin
   //avança um registro na tabela de estrutura de tabela
   DBGenerica(DTM_A005UTCO.DTS_047,'Conexao',0,3);
end;//TFRM_A005UTCO.Btn_Avancar1Click(Sender: TObject);

{------------------------------------------------------------------------------}

procedure TFRM_A005UTCO.Btn_Retroceder1Click(Sender: TObject);
begin
  //retrocede um registro na tabela de estrutura de tabela
  DBGenerica(DTM_A005UTCO.DTS_047,'Conexao',0,2);
end;//TFRM_A005UTCO.Btn_Retroceder1Click(Sender: TObject);

{------------------------------------------------------------------------------}

procedure TFRM_A005UTCO.BTN_ADICIONAClick(Sender: TObject);
begin
  //chama aplicação para escolher quais campos compoe a estrutura da tabela
  oControlForms.AtivaForm('FRM_A009UTCO',shModal,nil);
end;//TFRM_A005UTCO.BTN_ADICIONAClick(Sender: TObject);

{------------------------------------------------------------------------------}

procedure TFRM_A005UTCO.BTN_EXCLUIR2Click(Sender: TObject);
  var
    nAux : integer;
begin
  nAux := cListaCampos.IndexOf(DTM_A005UTCO.DTS_047.DataSet.FieldByName('nidtbl_d').asString);
  if nAux  <> -1 then
    //RemoveCampoPesq(TTreeNode(cListaCampos.Objects[nAux]));
   TRV_PESQUISA.ItemState[TTreeNode(cListaCampos.Objects[nAux]).AbsoluteIndex] := csUnChecked;
  //retira o campo da estrutura da tabela
  DBGenerica(DTM_A005UTCO.DTS_047,'Conexao',5,1);
end;//TFRM_A005UTCO.BTN_EXCLUIR2Click(Sender: TObject);

{------------------------------------------------------------------------------}

procedure TFRM_A005UTCO.CBE_NIDTBL_TButtonClick(Sender: TObject);
begin
  //simula o a chamada do tecla F2 para o metoso VerTeclas
  //para chamar a pesquisa
  VerTeclas(VK_F2);
end;//procedure TFRM_A005UTCO.CBE_NIDTBL_TButtonClick(Sender: TObject);

{------------------------------------------------------------------------------}

procedure TFRM_A005UTCO.CBE_NIDTBL_TExit(Sender: TObject);
begin
  //se a tabela de tabela não estiver em edição ou inserção
  if not(DTM_A005UTCO.DTS_043.DataSet.State in [dsInsert,dsEdit]) then
    //se a id for diferente a mesma que a do registro corrente
    if cIdTabela <> CBE_NIDTBL_T.Text then
      //se não encontro o código da tabela
      if not(DTM_A005UTCO.DTS_043.DataSet.Locate('nidtbl_t',StrToInt(CBE_NIDTBL_T.Text),[])) then
        begin
          //informa ao usuario
          MessageDlg('Tabela não encontrada!',mtInformation,[mbOk],0);
          //volta o codigo antes da digitação
          CBE_NIDTBL_T.Text :=
          DTM_A005UTCO.DTS_043.DataSet.FieldByName('nidtbl_t').asString;
          //retorna o foco
          CBE_NIDTBL_T.SetFocus;
        end;
end;//TFRM_A005UTCO.CBE_NIDTBL_TExit(Sender: TObject);

{------------------------------------------------------------------------------}

procedure TFRM_A005UTCO.CBE_NIDTBL_TEnter(Sender: TObject);
begin
  //pega o numero da Id que esta no momento
  cIdTabela := CBE_NIDTBL_T.Text;
end;//TFRM_A005UTCO.CBE_NIDTBL_TEnter(Sender: TObject);

{------------------------------------------------------------------------------}

procedure TFRM_A005UTCO.PageControlEx1Change(Sender: TObject);
begin
  //se for a tabsheet da Montagem da Pesquisa e a tabela estiver
  //em edição ou inserção então monta o treeview com os campos
  //da tabela corrente
  if (PageControlEx1.ActivePageIndex = 1) and
     (DTM_A005UTCO.DTS_043.DataSet.State in [dsInsert,dsEdit]) then
     MontaTreeView;

end;//TFRM_A005UTCO.PageControlEx1Change(Sender: TObject);

{------------------------------------------------------------------------------}

procedure TFRM_A005UTCO.MontaTreeView;
  var
    oPont : TBookmark;
    ItemTrv : TTreeNode;
begin
  with DTM_A005UTCO.DTS_047.DataSet do
    begin
      try
        //retira a tarefa de verificar o estado
        //de cada item do treeview
        TRV_PESQUISA.OnStateChange := nil;
        //retira os item do treeview
        TRV_PESQUISA.Items.Clear;
        //disabilida as atualização dos controles
        DisableControls;
        //pega o ponteiro do registro atual da tabela
        oPont := GetBookmark;
        //primeiro registro da tabela de estrutura de
        //tabelas
        First;
        //limpa lista interna de campos
        cListaCampos.Clear;
        //enquanto não for final de tabela
        while not(Eof) do
         begin
           //se for chave estrangeira
           if not(FieldByName('ncodtabela').IsNull) and
             (FieldByName('ncodtabela').asInteger <> FieldByName('nidtbl_t').asInteger ) then
             begin
               //localiza  a tabela pai do campo estrangeiro
               DMControle.Qry_T.Locate('nidtbl_t',FieldByName('ncodtabela').asInteger,[]);
               //cria um item para a tabela do treeview
               ItemTrv := TRV_PESQUISA.Items.Add(nil,DMControle.Qry_T.FieldByName('cdescrtbl').asString);
               //adiciona uma referencia do item do treeview, para armazenar qual
               //qual campo se refere o item
               cListaCampos.AddObject(FieldByName('nidtbl_d').asString,
                                      ItemTrv);
               //adiciona o a tabela pai do campo estrangeiro no
               //treeview
               AddItemEstrangeiro(FieldByName('ncodtabela').asInteger,ItemTrv);
             end
           else//se não for chave estrangeira
             //se o campo contiver titulo
             if FieldByName('ctitulo').asString <> '' then
               begin
                 //adiciona o campo no treeview
                 TRV_PESQUISA.Items.Add(nil,FieldByName('ctitulo').asString + ' - ' +
                                        FieldByName('nidtbl_d').asString);
                 //adiciona uma referencia do item do treeview na lista para
                 //armazenar qual campo se refere ao item do treeview
                 cListaCampos.AddObject(FieldByName('nidtbl_d').asString,
                                        TRV_PESQUISA.Items[ TRV_PESQUISA.Items.Count - 1 ]);
                 //se o campo já esta no comando da pesquisa, então
                 //deixa o check do item em estado verdadeiro
                 if CampoIncluidoPesquisa(FieldByName('nidtbl_d').asInteger,
                   DTM_A005UTCO.QRY_043.FieldByName('cseqbrowse').asString)<>'' then
                   TRV_PESQUISA.ItemState[ TRV_PESQUISA.Items.Count - 1 ] := csChecked;
               end;
           //proximo registro da tabela de estrutura de tabelas
           Next;
         end;

      finally
        //adiciona ao evento a verificação
        //de mudança de estado dos checks dos items do treeview
        TRV_PESQUISA.OnStateChange := TRV_PESQUISAStateChange;
        //posiciona no registro a qual oPont faz referencia
        GotoBookmark(oPont);
        //abilida a atualização dos controles
        EnableControls;
        //retira a referencia de oPont da memoria
        FreeBookmark(oPont);

      end;
    end;
end;//TFRM_A005UTCO.MontaTreeView;

{------------------------------------------------------------------------------}

procedure TFRM_A005UTCO.AddItemEstrangeiro(nCodTabela : Integer; ItemTrv : TTreeNode);
var
  ItemEstrag : TTreeNode;
  oPonto : TBookmark;
begin
  with DMControle do
    begin
      try
        //seleciona apenas os campo
        //da tabela passada como parametro
        Qry_ET.Filtered := false;
        Qry_ET.Filter := 'nidtbl_t = ' + IntToStr(nCodTabela);
        Qry_ET.Filtered := true;
        Qry_ET.First;

        //enquando não for final de tabela
        while not(Qry_ET.Eof) do
          begin
            //localiza na tabela de dicionario o campo da tabela
            if Qry_D.Locate('nidtbl_d',Qry_ET.FieldByName('nidtbl_d').asInteger,[]) then
              begin
                //se o campo for estrangeiro
                if (not(Qry_D.FieldByName('ncodtabela').isNull)) and
                   (Qry_D.FieldByName('ncodtabela').asInteger <> nCodTabela) then
                  begin
                    //localiza o pai do campo estrangeiro
                    Qry_T.Locate('nidtbl_t',Qry_D.FieldByName('ncodtabela').asInteger,[]);
                    //adiciona um item no treeview em relação a tabela
                    ItemEstrag := TRV_PESQUISA.Items.AddChild(ItemTrv,Qry_T.FieldByName('cdescrtbl').asString);

                    //adiciona uma referencia do item do treeview na lista para
                    //armazenar qual campo se refere ao item do treeview
                    cListaCampos.AddObject(Qry_D.FieldByName('nidtbl_d').asString,
                                        ItemEstrag);
                    //pega uma referencia do registro atual
                    oPonto := Qry_ET.GetBookmark;
                    //adiciona este campo estrangeiro no treeview
                    AddItemEstrangeiro(Qry_D.FieldByName('ncodtabela').asInteger,ItemEstrag);

                    //retorna a tabela de estrutura de tabela
                    //ao seu estado anterior
                    Qry_ET.Filtered := false;
                    Qry_ET.Filter := 'nidtbl_t = ' + IntToStr(nCodTabela);
                    Qry_ET.Filtered := true;
                    Qry_ET.GotoBookmark(oPonto);
                    Qry_ET.FreeBookmark(oPonto);
                  end
                else//se não for estrangeiro
                  if Qry_D.FieldByName('ctitulo').asString <> '' then
                    begin
                      //adiciona o campo no treeview
                      TRV_PESQUISA.Items.AddChild(ItemTrv,Qry_D.FieldByName('ctitulo').asString + ' - ' +
                                                  Qry_D.FieldByName('nidtbl_d').asString);
                      //adiciona uma referencia do item do treeview na lista para
                      //armazenar qual campo se refere ao item do treeview
                      cListaCampos.AddObject(Qry_D.FieldByName('nidtbl_d').asString,
                                        TRV_PESQUISA.Items[ TRV_PESQUISA.Items.Count - 1 ]);
                      //verifica se o campo esta incluida no comando da pesquisa
                      if CampoIncluidoPesquisa(Qry_D.FieldByName('nidtbl_d').asInteger,
                        DTM_A005UTCO.QRY_043.FieldByName('cseqbrowse').asString)<>'' then
                        TRV_PESQUISA.ItemState[ TRV_PESQUISA.Items.Count - 1 ] := csChecked;
                    end;
              end;
            //proximo registro da estrutura da tabela
            Qry_ET.Next;
          end;
      finally
        //retira o filtro da tabela de estrutura de tabela
        Qry_ET.Filtered := false;
        Qry_ET.Filter := '';
      end;

    end;
end;//TFRM_A005UTCO.AddItemEstrangeiro(nCodTabela : Integer; ItemTrv : TTreeNode);

{------------------------------------------------------------------------------}

function TFRM_A005UTCO.CampoIncluidoPesquisa(nCodCampo: Integer; cCamposPesquisa : String): String;
  var
    nPosicao,nPosCaracAnt, nPosProxCarac : Integer;
    //cCamposPesquisa : String;
    cCampo, cCampoPes : String;
begin
  //inicia variavel de retorno
  Result := '';
  //pega o comando da pesquisa
  //cCamposPesquisa := DTM_A005UTCO.QRY_043.FieldByName('cseqbrowse').asString;
  //transforma o codigo em string
  cCampo := IntToStr(nCodCampo);
  //pega suposta posição do campo dentro da pesquisa
  nPosicao:= Pos(cCampo, cCamposPesquisa);

  if nPosicao <> 0 then
    begin
      //loop na string de comando da pesquisa
      while Length(cCamposPesquisa) > 0 do
        begin
          //pega suposta posição do campo dentro da pesquisa
          nPosicao:= Pos(cCampo, cCamposPesquisa);
          //se não encontrou o campo no comando da pesquisa
          if nPosicao = 0 then
            //para o loop
            break;
          //se for campo de ligação de tabela estrangeira
          if (cCamposPesquisa[nPosicao + length(cCampo)]=':') then
            begin
              //se possui caracter especial
              if (cCamposPesquisa[nPosicao + length(cCampo)+1]='/') then
                //retira o campo da string da pesquisa
                Delete(cCamposPesquisa,1,PosProxCarac(cCamposPesquisa,nPosicao))
              else
                //retira o campo da string da pesquisa
                Delete(cCamposPesquisa,1,PosProxCarac(cCamposPesquisa,nPosicao)-1);
            end
          else
            //verifica se depois do campo ainda existe algum numero
            if (cCamposPesquisa[nPosicao + Length(cCampo)] in ['0'..'9']) then
              //se existe retira o campo da string de campos
              Delete(cCamposPesquisa,1,PosProxCarac(cCamposPesquisa,nPosicao))
            else
              //verifica se antes do campo existe numero
              if (cCamposPesquisa[nPosicao - 1 ] in ['0'..'9']) then
                begin
                  //se o numero for = 0 ,exemplo '001'
                  if cCamposPesquisa[nPosicao - 1 ] = '0' then
                    begin
                       nPosCaracAnt := PosCaracAnterior(cCamposPesquisa,nPosicao)+1;
                       nPosProxCarac := PosProxCarac(cCamposPesquisa,nPosicao)-1;
                       //copia o campo do comando da pesquisa
                       cCampoPes := Copy(cCamposPesquisa,nPosCaracAnt,(nPosProxCarac-nPosCaracAnt) + 1);
                      //transforma o campo em inteiro, e verifica se é igual
                      //ao campo informado
                      if StrToInt(cCampoPes) = nCodCampo then
                          begin
                            //campo encontrado
                            //copia o campo da pesquisa para o result com os seus caracteres de comando
                            //exemplo ",9,"
                            Result := cCamposPesquisa[nPosCaracAnt-1]+cCampoPes+cCamposPesquisa[nPosProxCarac+1];
                            //para o loop
                            break;
                          end
                        else
                          //retira o campo da string da pesquisa
                          Delete(cCamposPesquisa,1,PosProxCarac(cCamposPesquisa,nPosicao));
                    end
                  else
                    //retira o campo da string da pesquisa
                    Delete(cCamposPesquisa,1,PosProxCarac(cCamposPesquisa,nPosicao));
                end
              else
                begin
                  //copia o campo da pesquisa para o result com os seus caracteres de comando
                  //exemplo ",9,"
                  if nPosicao > 1 then
                    nPosicao := nPosicao -1;
                  Result := Copy(cCamposPesquisa,nPosicao,(PosProxCarac(cCamposPesquisa,nPosicao+1)-(nPosicao))+1);
                  Break;
                end;

        end;//fim do while na lista de campos
    end
  else
    //campo não existe o campo no comando da pesquisa
    Result := '';

end;//TFRM_A005UTCO.CampoIncluidoPesquisa(cCodCampo: String): boolean;

{------------------------------------------------------------------------------}

procedure TFRM_A005UTCO.FormCreate(Sender: TObject);
begin
  cListaCampos := TStringList.Create;
  DTM_A005UTCO.QRY_043.AfterScroll := nil;
end;//TFRM_A005UTCO.FormCreate(Sender: TObject);

{------------------------------------------------------------------------------}

procedure TFRM_A005UTCO.TRV_PESQUISAStateChange(Sender: TObject;
  Node: TTreeNode; NewState: TRzCheckState);

begin
    //se a tabela de tabela estiver em edição ou inserção
    if DTM_A005UTCO.DTS_043.DataSet.State in [dsInsert, dsEdit] then
      //remove campo do comando da pesquisa
      if (NewState = csUnChecked) then
        RemoveCampoPesq(Node)
      else
        if NewState = csChecked then
          //adiciona campo no comando da pesquisa
          AddCampoPesquisa(Node);


end;//TFRM_A005UTCO.TRV_PESQUISAStateChange(Sender: TObject;
   //Node: TTreeNode; NewState: TRzCheckState);

{------------------------------------------------------------------------------}

function TFRM_A005UTCO.AddCampoProprio(Campo, ComandoPesq: String;
  Posicao: Integer): String;
  var
    i : integer;
begin
  //se o parametro campo estiver vazio, ou o campo
  //já existir na tabela
  if (Campo = '') or (Pos(Campo,ComandoPesq) <> 0) then
    begin
      Result := '';
      exit;
    end;

  //atribiu ',' ao final do codigo do campo
  Campo := Campo + ',';

  //se o comando de pesquisa estiver vazio
  if ComandoPesq = '' then
    ComandoPesq := Campo + ';'
  else
    //se o paremetro posição = -1 então
    //adiciona o código do campo na penultima
    //posição da pesquisa
    if Posicao = -1 then
      Insert(Campo,ComandoPesq,Length(ComandoPesq)-1)
    else
      //se a posição for = 0 então o código do campo
      //é adicionado no inicio do comando da pesquisa
      if Posicao = 0 then
        Insert(Campo,ComandoPesq,1)
      else
        //se a posição escolhida pelo usuario for no
        //';' adiciona na posição antes do caracter ';'
        if ComandoPesq[Posicao] = ';' then
          Insert(Campo,ComandoPesq,Length(ComandoPesq))
        else
          //se a posição escolhida pelo usuario não for
          //',' então o campo é adicionado no proximo
          //caracter ','
          if ComandoPesq[Posicao] <> ',' then
            begin
              for i := Posicao to length(ComandoPesq) do
                if ComandoPesq[i] = ',' then
                  begin
                    Insert(Campo,ComandoPesq,i + 1);
                    Break;
                  end;
            end
          else
            //inseri na posição escolhida pelo usuario
            Insert(Campo,ComandoPesq,Posicao + 1);

  Result := ComandoPesq;


end;//TFRM_A005UTCO.AddCampoProprio(Campo, ComandoPesq: String;
    //Posicao: Integer): String;

{------------------------------------------------------------------------------}

procedure TFRM_A005UTCO.AddCampoPesquisa(Node: TTreeNode);
  var
    cCodCampo, cCodCampoPai : String;
    nAux, nPosMemo : Integer;
begin
  //se o item do treview contiver filhos
  if Node.HasChildren then
    exit;

  nPosMemo := DBM_CSEQBROWSE.SelStart;

  //se o campo não for estrangeiro
  if Node.Parent = nil then
    begin
      //localiza o código do campo
      nAux := cListaCampos.IndexOfObject(Node);
      cCodCampo := cListaCampos.Strings[nAux];
      DTM_A005UTCO.DTS_043.DataSet.FieldByName('cseqbrowse').asString :=
      AddCampoProprio(cCodCampo,
                      DTM_A005UTCO.DTS_043.DataSet.FieldByName('cseqbrowse').asString,
                      DBM_CSEQBROWSE.SelStart);

    end
  else
    begin
      nAux := cListaCampos.IndexOfObject(Node.Parent);
      cCodCampoPai := cListaCampos.Strings[nAux];
      nAux := cListaCampos.IndexOfObject(Node);
      cCodCampo:= cListaCampos.Strings[nAux];
      DTM_A005UTCO.DTS_043.DataSet.FieldByName('cseqbrowse').asString :=
      AddCampoEstrangeiro(cCodCampo,cCodCampoPai,
      DTM_A005UTCO.DTS_043.DataSet.FieldByName('cseqbrowse').asString,
      DBM_CSEQBROWSE.SelStart, Node.Parent);
    end;
  DBM_CSEQBROWSE.SelStart := nPosMemo;
end;//TFRM_A005UTCO.AddCampoPesquisa(Node: TTreeNode);

{------------------------------------------------------------------------------}

procedure TFRM_A005UTCO.DBM_CSEQBROWSEKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = ' ' then
    Key := #0;
end;//TFRM_A005UTCO.DBM_CSEQBROWSEKeyPress(Sender: TObject;
    //var Key: Char);

{------------------------------------------------------------------------------}

function TFRM_A005UTCO.AddCampoEstrangeiro(Campo, CampoPai,
  ComandoPesq: String; Posicao: Integer; Node : TTreeNode = nil): String;

var
  nAux, i, nPos, nPosCaracter, nPosProxCaracter, nPosCaracAnt, nPosParent : Integer;
  cCamposChaves, cAux : String;
  lContemParent, lLigacaoPai : Boolean;

begin
  //se o campo ou o campo chave da tabela estiver em branco
  if (Campo = '') or (CampoPai = '') then
    //sai da rotina
    exit;
  //variavel de resultado = comando da pesquisa
  Result := ComandoPesq;
  //inicializa variavel
  nPosCaracter := 0;
  //pega a posição do campo dentro do comando da pesquisa,
  //caso exista
  nPosCaracter := Pos(Campo,ComandoPesq);

  //se o campo existir dentro do comando da pesquisa
  if nPosCaracter <> 0 then
    //se for campo de ligação de tabela estrangeira
    if ProximoCaracter(ComandoPesq,nPosCaracter) = ':' then
      begin
        nPosProxCaracter := PosProxCarac(ComandoPesq,nPosCaracter);
        //se contiver caracter especial de ligação
        if ComandoPesq[nPosProxCaracter+1] = '/' then
          //copia o resto da string de comando
          cAux := Copy(ComandoPesq,nPosProxCaracter + 2,(length(ComandoPesq)-(nPosProxCaracter + 1)))
        else
          //copia o resto da string de comando
          cAux := Copy(ComandoPesq,nPosProxCaracter + 1,(length(ComandoPesq)-(nPosProxCaracter)));
        //se o campo existir no resto do comando de pesquisa
        if Pos(Campo,cAux) <> 0 then
          exit;
      end
    else
      //campo existe dentro do comando da pesquisa
      exit;

  nPosParent := 0;
  nPosCaracter := 0;
  cCamposChaves := '';
  cAux := '';
  lContemParent := false;
  lLigacaoPai := false;

  //se o item do treevien contiver pai
  if Node <> nil then
    begin
      //se o item pai tambem contiver pai
      if Node.Parent <> nil then
        lContemParent := true;
      //percorre todos os pais do item
      while Node.Parent <> nil do
        begin
          //localiza o campo que se refere ao item do treeview
          nAux := cListaCampos.IndexOfObject(Node.Parent);
          nPos := Pos(cListaCampos.Strings[nAux],ComandoPesq);
          //se o campo não existir na pesquisa
          if nPos = 0 then
            begin
              //se o item pai contiver pai
              if Node.Parent.Parent = nil then
                cCamposChaves := cListaCampos.Strings[nAux] + ':/' + cCamposChaves
              else
                cCamposChaves := cListaCampos.Strings[nAux] + ':' + cCamposChaves ;
            end
          else
            //guarda a posição do campo pai na pesquisa
            nPosParent := nPos;
          //pega o proximo item pai
          Node := Node.Parent;
        end;
    end;

  nPosCaracter := 0;
  //se contem mais do que um campo pai
  if lContemParent then
    CampoPai := cCamposChaves + CampoPai + ':'
  else
    CampoPai := CampoPai + ':/';

  //se o comando da pesquisa estiver vazio
  //atribui o código do campo pai mais o código campo,
  //campo pai é o campo chave primaria da tabela
  if ComandoPesq = '' then
    ComandoPesq := CampoPai + Campo + ',;'
  else
    begin
      //se o campo pai ja estiver no comando da pesquisa
      nAux := Pos(CampoPai,ComandoPesq);
      if nAux <> 0 then
        begin
          nPos := 0;
          //localiza a posição correta dentro do comando
          //para adicionar o novo campo
          for i := nAux to Length(ComandoPesq) do
            begin
              //se for o caracter de ligação
              if ComandoPesq[i] = ':' then
                begin
                  nPos := nPos + 1;
                  //se for o primeiro caracter de ligação encontrado
                  // continua o laço
                  //o primeiro caracter de ligação e da ligação de
                  //sua tabela pai
                  if nPos = 1 then
                    Continue
                  else
                    begin
                      //se achou uma ligação dentro do comando da
                      //da tabela pai
                      nPosCaracAnt := PosCaracAnterior(ComandoPesq,i-1);
                      if (ComandoPesq[nPosCaracAnt] = '/') or
                         (ComandoPesq[nPosCaracAnt] = ':')then
                        begin
                          nPosCaracter := nPosCaracAnt + 1;
                          lLigacaoPai := true;
                        end
                      else
                        if (ComandoPesq[nPosCaracAnt] = '+') then
                          nPosCaracter := nPosCaracAnt;
                      Break;
                    end;

                end
              else
                //se encontrou o caracter ','
                //então guarda o numero da posição
                if ComandoPesq[i] = ',' then
                  begin
                    nPosCaracter := i ;
                    Break;
                  end;
            end;//fim do for
          //se a posição for -1 ou tiver fora do range de posições dos
          //campos da tabela estrangeira
          if (Posicao = -1) or (Posicao <= nAux) or (Posicao >= nPosCaracter) then
            begin
              //se existir uma ligação
              if lLigacaoPai then
                Insert(Campo + '+' ,ComandoPesq,nPosCaracter)
              else
                Insert( '+' + Campo,ComandoPesq,nPosCaracter);
            end
          else
            // se a posição escolhida pelo usuario for ':', '/' ou '+'
            //então o campo é adiciona uma posição a frente
            if (ComandoPesq[Posicao] = ':') or (ComandoPesq[Posicao] = '/') or
               (ComandoPesq[Posicao] = '+') then
              Insert(Campo + '+',ComandoPesq,Posicao + 1)
            else
              //se na frente da posição escolhida pelo usuario
              //existir o sinal de mais, o campo é adicionado
              //apos o caracter '+'
              if ComandoPesq[Posicao + 1] = '+' then
                Insert('+' + Campo,ComandoPesq,Posicao + 1)
              else
                //se a posição escolhida pelo usuario não for
                //valida, o campo e inserido em uma posição
                //valida
                Insert('+' + Campo,ComandoPesq,nPosCaracter);

        end
      else//não achou o campo pai na pesquisa
        //se existir algum campo pai indireto no comando da pesquisa
        if nPosParent <> 0 then
          begin
            //a partir da posição do campo pai indireto
            //localiza o proximo caracter ','
            //e adiciona o campo antes do caracter ','
            for i := nPosParent to length(ComandoPesq) do
              if ComandoPesq[i] = ',' then
                begin
                  Insert('+' + CampoPai + Campo,ComandoPesq,i);
                  Break;
                end;
          end
        else//se nção contiver nenhum campo pai indireto no comando da pesquisa

          //se não existir posição definida
          //inseri o campo na penultina posição do comando de pesquisa
          if Posicao = -1  then
            Insert(',' + CampoPai + Campo,ComandoPesq,Length(ComandoPesq)-1)
          else
            //se a posição = 0
            //inseri o campo no inicio do comando de pesquisa
            if Posicao = 0 then
              Insert(CampoPai + Campo + ',' ,ComandoPesq,1)
            else
              //se a posição escolhida pelo usuario for = '+'
              //inseri o campo na posição a frente mais o caracter '+'
              if ComandoPesq[Posicao] = '+' then
                Insert(CampoPai + Campo + '+',ComandoPesq,Posicao + 1)
              else
                //se a posição escolhida pelo usuario for = ','
                //inseri o campo na posição a frente mais o caracter ','
                if ComandoPesq[Posicao] = ',' then
                  Insert(CampoPai + Campo + ',',ComandoPesq,Posicao + 1)
                else
                  //inseri o campo na penultina posição da pesquisa
                  Insert(',' + CampoPai + Campo,ComandoPesq,Length(ComandoPesq)-1)
    end;
  Result := ComandoPesq;
end;//TFRM_A005UTCO.AddCampoEstrangeiro(Campo, CampoPai,
    //ComandoPesq: String; Posicao: Integer; Node : TTreeNode = nil): String;

{------------------------------------------------------------------------------}

procedure TFRM_A005UTCO.RemoveCampoPesq(Node: TTreeNode);
  var
    nAux : Integer;

begin
  //se o item não contiver pai, e não contiver filhos
  if (Node.Parent = nil) and (not(Node.HasChildren)) then
    begin
      //localiza o código do campo que se refere ao item
      nAux := cListaCampos.IndexOfObject(Node);
      //atribui ao campo cseqbrowse o comando da pesquisa com o
      //campo removido
      DTM_A005UTCO.DTS_043.DataSet.FieldByName('cseqbrowse').asString :=
      RemoveCampoSimpPesq(cListaCampos.Strings[nAux],
      DTM_A005UTCO.DTS_043.DataSet.FieldByName('cseqbrowse').asString);
    end
  else
    begin
      //localiza o código do campo que se refere ao item
      nAux := cListaCampos.IndexOfObject(Node);
      //atribui ao campo cseqbrowse o comando da pesquisa com o
      //campo estrangeiro removido
      DTM_A005UTCO.DTS_043.DataSet.FieldByName('cseqbrowse').asString :=
      RemoveCampoEstragPesq(cListaCampos.Strings[nAux],
      DTM_A005UTCO.DTS_043.DataSet.FieldByName('cseqbrowse').asString);
    end;
end;//TFRM_A005UTCO.RemoveCampoPesq(Node: TTreeNode);

{------------------------------------------------------------------------------}

function TFRM_A005UTCO.RemoveCampoSimpPesq(Campo,
  ComandoPesp: String): String;
  var
    cCampoProc : String;
begin
  //pesquisa o campo dentro da string de comando
  cCampoProc := CampoIncluidoPesquisa(StrToInt(Campo),DTM_A005UTCO.QRY_043.FieldByName('cseqbrowse').asString);

  //se o campo existir dentro do comando da pesquisa
  //deleta o campo
  if cCampoProc <> '' then
    if cCampoProc[1] in ['0'..'9'] then
      Delete(ComandoPesp,Pos(cCampoProc,ComandoPesp),length(cCampoProc))
    else
      Delete(ComandoPesp,Pos(cCampoProc,ComandoPesp),length(cCampoProc)-1);
  //se o comando da pesquisa não contiver
  //mais campos então limpa comando da pesquisa
  if ComandoPesp = ';' then
    ComandoPesp := '';
 Result := ComandoPesp;

end;//function TFRM_A005UTCO.RemoveCampoSimpPesq(Campo,
    //ComandoPesp: String): String;

{------------------------------------------------------------------------------}

function TFRM_A005UTCO.RemoveCampoEstragPesq(Campo,
  ComandoPesq: String): String;
  var
    nPosCaracter, nPosCampo, nPosProxCampo : integer;
    i : integer;
    cCampoRem : String;
    cAux : String;
begin

   cCampoRem := CampoIncluidoPesquisa(StrToInt(Campo),DTM_A005UTCO.QRY_043.FieldByName('cseqbrowse').asString);
   //se o campo existe dentro do comando da pesquisa
   if cCampoRem <> '' then
     begin
       nPosCampo := Pos(cCampoRem,ComandoPesq);
       //se o campo encontrado for campo de ligação
       if ComandoPesq[(nPosCampo + length(cCampoRem))-1] = ':' then
         begin
           //pega a posição correta do final da ligação
           if ComandoPesq[nPosCampo + length(cCampoRem)] = '/' then
             nPosCaracter := nPosCampo + length(cCampoRem)
           else
             nPosCaracter := nPosCampo + (length(cCampoRem)-1) ;

           //pega a posição de campo dentro do resto do comando de pesquisa
           //nPosProxCampo := nPosCaracter - 1;
           //nPosProxCampo := nPosProxCampo + Pos(Campo,cAux);

           cAux := Copy(ComandoPesq,nPosCaracter,(length(ComandoPesq) - nPosCaracter)+1);

           cCampoRem := CampoIncluidoPesquisa(StrToInt(Campo),cAux);

           nPosProxCampo := Pos(cCampoRem,ComandoPesq);

           //se o campo for precedido pelo carater '+' então
           //e deletado o caracter '+' e o campo exemplo "+45"
           if cCampoRem[1] = '+' then
             Delete(ComandoPesq,nPosProxCampo,Length(cCampoRem)-1)
           else
             //se campo contiver o caracter '+' a sua frente
             //então e deletedo o campo mais o caracter '+'
             //exemplo 45+
             if cCampoRem[length(cCampoRem)] = '+' then
               Delete(ComandoPesq,nPosProxCampo+1,Length(cCampoRem)-1)
             else
               //deleta os caracteres que precede o campo ate
               //encontra o caracter '+' ou caracter ','
               //isso e feito para comandos formados assim
               //128,123:/125:126
               nPosCaracter := nPosProxCampo + (length(cCampoRem)-2);
               for i := nPosCaracter downto 1 do
                 begin
                   if (ComandoPesq[i] = '+') or (ComandoPesq[i] = ',') then
                     begin
                       Delete(ComandoPesq,i,1);
                       Break;
                     end
                   else
                     Delete(ComandoPesq,i,1);

                   if i = 1 then
                     Delete(ComandoPesq,1,1);
                 end;


         end
       else//não é campo de ligação
         //se o campo for precedido pelo caracter '+'
         //então e deletado o caracter '+' mais o campo
         if cCampoRem[1] = '+' then
           Delete(ComandoPesq,nPosCampo,length(cCampoRem)-1)
         else
           //se o campo contiver a sua frente o caracter '+'
          //então e deletado o campo mais o caracter '+'
           if cCampoRem[length(cCampoRem)] = '+' then
             Delete(ComandoPesq,nPosCampo+1,length(cCampoRem)-1)
           else
             begin
               //deleta no comando da pesquisa de tras-para-frente
               //os caractere ate encontrar o caracter '+' ou ','
               //isso e feito para comandos que são formados assim
               //,123:/136,
               nPosCampo := nPosCampo + (length(cCampoRem)-2);
               for i := nPosCampo downto 1 do
                 begin
                   if (ComandoPesq[i] = '+') or (ComandoPesq[i] = ',') then
                     begin
                       Delete(ComandoPesq,i,1);
                       Break;
                     end
                   else
                     Delete(ComandoPesq,i,1);
                   if i = 1 then
                     Delete(ComandoPesq,1,1);
                 end;
             end;
     end;
   //se o comando da pesquisa não contiver
   //mais campos então atribui vazio ao comando
   //de pesquisa
   if ComandoPesq = ';' then
     ComandoPesq := '';
   Result := ComandoPesq;

end;//TFRM_A005UTCO.RemoveCampoEstragPesq(Campo,
    //ComandoPesq: String): String;

{------------------------------------------------------------------------------}

procedure TFRM_A005UTCO.DED_CNOMETBLExit(Sender: TObject);
  var
    lDuplicado : boolean;
begin
  {verifica se o nome da tabela ja esta cadastrado}

  //se estiver em edição ou inserção
  if DTM_A005UTCO.DTS_043.DataSet.State in [dsEdit, dsInsert] then
    begin
      lDuplicado := false;
      //procura por uma tabela com o mesmo nome da tabela atual
      PrepareQryTemp('select * from tbl_t where cnometbl = ' + QuotedStr(DED_CNOMETBL.Text));
      with DMControle.QryTemp do
        begin
          //se encontrou algum registro,
          //verifica se é o mesmo registro corrente
          if not IsEmpty then
            lDuplicado := (DTM_A005UTCO.DTS_043.DataSet.State = dsInsert) or
                          (FieldByName('nidtbl_t').asInteger <> StrToInt(CBE_NIDTBL_T.Text));

          if lDuplicado then
            begin
              //avisa ao usuario do nome da tabela já cadastrado
              MessageDlg('Nome de tabela já cadastrada!',mtInformation,[mbOk],0);
              DED_CNOMETBL.SetFocus;
            end;
          //fecha tabela temporaria
          Close;
          Sql.Clear;
        end;
    end;
end;//TFRM_A005UTCO.DED_CNOMETBLExit(Sender: TObject);

end.




