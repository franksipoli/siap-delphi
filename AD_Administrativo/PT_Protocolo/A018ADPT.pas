{*******************************************************************************
 *                                                                             *
 *  Programador Leandro Ribas                                                  *
 *  23 de Abril de 2005, M P Lopes Sistemas de Informação LTDA.                *
 *  Arquivamento de processo (protocolo)                                       *
 *  Finalizado em 23/04/2005                                                   *
 *                                                                             *
 *                                                                "vamo nessa" *
 *******************************************************************************
}

unit A018ADPT;

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
  LMDSimplePanel, jpeg ;

type
  TFRM_A018ADPT = class(TForm)
    Panel2: TPanel;
    LMDGroupBox2: TLMDGroupBox;
    LMDPanelFill3: TLMDPanelFill;
    DBG_DISP: TDBGrid;
    LMDPanelFill1: TLMDPanelFill;
    DBG_AUT: TDBGrid;
    Label1: TLabel;
    BTN_ADITEM: TSpeedButton;
    BTN_ADDTODOS: TSpeedButton;
    BTN_RENITEM: TSpeedButton;
    BTN_RENTODOS: TSpeedButton;
    BTN_SAIR: TSpeedButton;
    Btn_Alterar: TSpeedButton;
    BTN_GRAVAR: TSpeedButton;
    BTN_CANCELAR: TSpeedButton;
    BTN_RETROCEDER2: TSpeedButton;
    BTN_AVANCAR2: TSpeedButton;
    BTN_DETTRAMI: TSpeedButton;
    BTN_RETROCEDER1: TSpeedButton;
    BTN_AVANCAR1: TSpeedButton;
    BTN_DETALHE: TSpeedButton;
    CBE_DESTINO: TComboEdit;
    BTN_REQ: TSpeedButton;
    BTN_REQ1: TSpeedButton;
    procedure BTN_SAIRClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure CBE_DESTINOChange(Sender: TObject);
    procedure CBE_DESTINOButtonClick(Sender: TObject);
    procedure CBE_DESTINOKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure Btn_AlterarClick(Sender: TObject);
    procedure BTN_CANCELARClick(Sender: TObject);
    procedure BTN_ADITEMClick(Sender: TObject);
    procedure BTN_RENITEMClick(Sender: TObject);
    procedure BTN_ADDTODOSClick(Sender: TObject);
    procedure BTN_RENTODOSClick(Sender: TObject);
    procedure BTN_GRAVARClick(Sender: TObject);
    procedure DBG_DISPMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure DBG_AUTMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure BTN_AVANCAR1Click(Sender: TObject);
    procedure BTN_RETROCEDER1Click(Sender: TObject);
    procedure BTN_RETROCEDER2Click(Sender: TObject);
    procedure BTN_AVANCAR2Click(Sender: TObject);
    procedure BTN_REQClick(Sender: TObject);
    procedure BTN_DETALHEClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRM_A018ADPT: TFRM_A018ADPT;

implementation

uses TelaPrin, D018ADPT, UVariaveis, MPLCtrl, DMCTRL, A002ADPT, D002ADPT,
  CtrlForms, A008ADPT, D008ADPT;

{$R *.DFM}
{------------------------------------------------------------------------------}
procedure TFRM_A018ADPT.BTN_SAIRClick(Sender: TObject);
begin
   close ;
end;
{------------------------------------------------------------------------------}
procedure TFRM_A018ADPT.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   //fecha e libera o form da memoria
 Action:= oControlForms.Saidas(Self,[DTM_A018ADPT],DTM_A018ADPT.DTS_151.DataSet);
end;
{------------------------------------------------------------------------------}
procedure TFRM_A018ADPT.CBE_DESTINOChange(Sender: TObject);
begin
  with DTM_A018ADPT do
    begin
      //se foi feita a alteração no cbe_destino
      if Sender = CBE_DESTINO then
        begin
          //localiza a id do destino deixada pela pesquisa
          QRY_LOCAIS.ParamByName('cidtbxulc').asString :=
          CBE_DESTINO.Text;
          QRY_LOCAIS.ExecSQL;
          //retira o evento onchange
          CBE_DESTINO.OnChange := nil;
          //passa a descrição do local para o componente
          CBE_DESTINO.Text := QRY_LOCAIS.FieldByName('cdescriulc').asString;
          //retorna o evento onchange
          CBE_DESTINO.OnChange := CBE_DESTINOChange;
        end;
      //seleciona os protocolos destinados ao local
      //em andamento
      QRY_151.ParamByName('ciddestino').asString :=
      QRY_LOCAIS.FieldByName('cidtbxulc').asString;
      QRY_151.ExecSql;
      //seleciona os protocolos destinados ao local
      //cocluidos
      QRY_151_1.ParamByName('ciddestino').asString :=
      QRY_LOCAIS.FieldByName('cidtbxulc').asString;
      QRY_151_1.ExecSql;
      //pertime alterar se as qrys retornaram algum registro
      Btn_Alterar.Enabled := (QRY_151.RecordCount > 0) or (QRY_151_1.RecordCount > 0);
      //status dos botoes
      QRY_151AfterOpen(QRY_151);
      QRY_151_1AfterOpen(QRY_151_1);
    end;
end;
{------------------------------------------------------------------------------}
procedure TFRM_A018ADPT.CBE_DESTINOButtonClick(Sender: TObject);
begin
  //força a chamada da pesquisa
  VerTeclas(VK_F2);
end;
{------------------------------------------------------------------------------}
procedure TFRM_A018ADPT.CBE_DESTINOKeyPress(Sender: TObject;
  var Key: Char);
begin
  //não permite o usuario digitar alguma informação no campo
  if (Key <> #13) or (Key <> #9) then
    Key := #0;
end;
{------------------------------------------------------------------------------}
procedure TFRM_A018ADPT.FormShow(Sender: TObject);
begin
 //verifica o acesso do usuario
 if not Acesso(nMatricula,'A018ADPT',DTM_A018ADPT) then
    close;
  //altera o status dos botões
  Botoes(['Btn_Alterar','Btn_Cancelar','Btn_Gravar','BTN_ADITEM','BTN_ADDTODOS','BTN_RENITEM','BTN_RENTODOS'],'FRM_A018ADPT',false);
  //status dos botões
  DTM_A018ADPT.QRY_151AfterOpen(DTM_A018ADPT.QRY_151);
  DTM_A018ADPT.QRY_151_1AfterOpen(DTM_A018ADPT.QRY_151_1);

  FRM_A018ADPT.OnShow := nil;
 {é atribuido ao OnShow do Form o valor nil para que o mesmo seja executado apenas uma vez}
 {pelo fato que se outra aplicação for chamada pela tecla F3, e ao retornar da aplicação que foi chamada pela tecla}
 {o evento OnShow deste form não acontecerá, ou seja não será executado, para permanecer o mesmo status da aplicação}
 {quando o F3 foi chamado}
end;
{------------------------------------------------------------------------------}
procedure TFRM_A018ADPT.Btn_AlterarClick(Sender: TObject);
begin
  //desabilida o botão alterar, e habilida os restantes
  Botoes(['Btn_Alterar'],'FRM_A018ADPT',false);
  //status dos botões de navegação
  DTM_A018ADPT.QRY_151AfterOpen(DTM_A018ADPT.QRY_151);
  //status dos botões de navegação
  DTM_A018ADPT.QRY_151_1AfterOpen(DTM_A018ADPT.QRY_151_1);
  //não permite o usuario localizar outro destino
  CBE_DESTINO.Enabled := false;
end;
{------------------------------------------------------------------------------}
procedure TFRM_A018ADPT.BTN_CANCELARClick(Sender: TObject);
begin
  with DTM_A018ADPT do
    begin
      //se houve alguma alteração
      if QRY_151.UpdatesPending then
        //cancela as alterações
        QRY_151.CancelUpdates;
      //se houve alguma alteração
      if QRY_151_1.UpdatesPending then
        //cancela as alterações
        QRY_151_1.CancelUpdates;
      //status dos botões
      Botoes(['Btn_Cancelar','Btn_Gravar','BTN_ADITEM','BTN_ADDTODOS','BTN_RENITEM','BTN_RENTODOS'],'FRM_A018ADPT',false);
      //habilida a escolha de um novo destino
      CBE_DESTINO.Enabled := true;
      //atualiza as qrys
      CBE_DESTINOChange(Sender);
    end;
end;
{------------------------------------------------------------------------------}
procedure TFRM_A018ADPT.BTN_ADITEMClick(Sender: TObject);
begin
  with DBG_DISP.DataSource.DataSet do
    begin
      {desabilita controle visuais na origem}
      DisableControls;
      {Posiciona Tabela de origem}
      First;
      while not Eof do
        begin
          {Se o item estiver selecionado}
          if DBG_DISP.SelectedRows.CurrentRowSelected then
            begin
              {inclui um registro novo para um novo item}
              DTM_A018ADPT.DTS_151_1.DataSet.Insert;
              {Adiciona campos e valores selecionados}
              DTM_A018ADPT.DTS_151_1.DataSet.FieldByName('nidcadreq').AsInteger :=
              FieldByName('nidcadreq').AsInteger;
              DTM_A018ADPT.DTS_151_1.DataSet.FieldByName('nnroprot').AsInteger :=
              FieldByName('nnroprot').AsInteger;
              DTM_A018ADPT.DTS_151_1.DataSet.FieldByName('cdescritrq').AsString :=
              FieldByName('cdescritrq').AsString;
              DTM_A018ADPT.DTS_151_1.DataSet.FieldByName('csituareq').AsString :=
              FieldByName('csituareq').AsString;
              DTM_A018ADPT.DTS_151_1.DataSet.FieldByName('dat_insert').AsString := 'S';
              {Grava no destino}
              DTM_A018ADPT.DTS_151_1.DataSet.Post;
            end;
          {Próximo Registro}
          Next;
        end;
      {Limpa seleção e deleta registros adicionados}
      DBG_DISP.SelectedRows.Delete;
      {Volta origem no primeiro registro}
      First;
      {Habilita controle visuais da origem}
      EnableControls;
      DTM_A018ADPT.QRY_151AfterOpen(DTM_A018ADPT.QRY_151);
      DTM_A018ADPT.QRY_151_1AfterOpen(DTM_A018ADPT.QRY_151_1);
    end;

end;
{------------------------------------------------------------------------------}
procedure TFRM_A018ADPT.BTN_RENITEMClick(Sender: TObject);
begin
  with DBG_AUT.DataSource.DataSet do
    begin
      {desabilita controle visuais na origem}
      DisableControls;
      {Posiciona Tabela de origem}
      First;
      while not Eof do
        begin
          {Se o item estiver selecionado}
          if DBG_AUT.SelectedRows.CurrentRowSelected then
            begin
              {inclui um registro novo para um novo item}
              DTM_A018ADPT.DTS_151.DataSet.Insert;
              {Adiciona campos e valores selecionados}
              DTM_A018ADPT.DTS_151.DataSet.FieldByName('nidcadreq').AsInteger :=
              FieldByName('nidcadreq').AsInteger;
              DTM_A018ADPT.DTS_151.DataSet.FieldByName('nnroprot').AsString :=
              FieldByName('nnroprot').AsString;
              DTM_A018ADPT.DTS_151.DataSet.FieldByName('cdescritrq').AsString :=
              FieldByname('cdescritrq').AsString;
              DTM_A018ADPT.DTS_151.DataSet.FieldByName('csituareq').AsString :=
              FieldByName('csituareq').AsString;
              DTM_A018ADPT.DTS_151.DataSet.FieldByName('dat_insert').AsString := 'S';
              {Grava no destino}
              DTM_A018ADPT.DTS_151.DataSet.Post;
            end;
          {Próximo Registro}
          Next;
        end;
      {Limpa seleção e deleta registros adicionados}
      DBG_AUT.SelectedRows.Delete;
      {Volta origem no primeiro registro}
      First;
      {Habilita controle visuais da origem}
      EnableControls;
      DTM_A018ADPT.QRY_151AfterOpen(DTM_A018ADPT.QRY_151);
      DTM_A018ADPT.QRY_151_1AfterOpen(DTM_A018ADPT.QRY_151_1);
    end;
end;
{------------------------------------------------------------------------------}
procedure TFRM_A018ADPT.BTN_ADDTODOSClick(Sender: TObject);
begin
  with DBG_DISP.DataSource.DataSet do
    begin
      {desabilita controle visuais na origem}
      DisableControls;
      {Posiciona Tabela de origem}
      First;
      {Seleciona todos}
      while not Eof do
        begin
          DBG_DISP.SelectedRows.CurrentRowSelected := true;
          Next;
        end;
      {Executa adição de item}
      BTN_ADITEM.Click;
      {Volta origem no primeiro registro}
      First;
      {Habilita controle visuais da origem}
      EnableControls;
    end;
end;
{------------------------------------------------------------------------------}
procedure TFRM_A018ADPT.BTN_RENTODOSClick(Sender: TObject);
begin
  with DBG_AUT.DataSource.DataSet do
    begin
      {desabilita controle visuais na origem}
      DisableControls;
      {Posiciona Tabela de origem}
      First;
      {Seleciona todos}
      while not Eof do
        begin
          DBG_AUT.SelectedRows.CurrentRowSelected := true;
          Next;
        end;
      {Executa Retorno de item}
      BTN_RENITEM.Click;
      {Volta origem no primeiro registro}
      First;
      {Habilita controle visuais da origem}
      EnableControls;
    end;
end;
{------------------------------------------------------------------------------}
procedure TFRM_A018ADPT.BTN_GRAVARClick(Sender: TObject);
begin
  //pergunta ao usuario
  if MessageDlg('Deseja Salvar as alterações?',mtConfirmation,[mbYes,mbNo],0) = mrYes then
    begin
      with DTM_A018ADPT, DMControle do
        begin
          //desabilita as atualizações dos controles visuais
          QRY_151.DisableControls;
          //desabilita as atualizações dos controles visuais
          QRY_151_1.DisableControls;
          //pega somente os registros que foram inseridos
          QRY_151.Filter := 'dat_insert = ' + QuotedStr('S');
          //ativa o filtro
          QRY_151.Filtered := true;
          //primeiro registro
          QRY_151.First;
          //pega somente os registros que foram inseridos
          QRY_151_1.Filter := 'dat_insert = ' + QuotedStr('S');
          //ativa o filtro
          QRY_151_1.Filtered := true;
          //primeiro registro
          QRY_151_1.First;
          try
            //inicia a transação com o banco
            Conexao.StartTransaction;
            try
              //loop nos protocolos não concluidos
              while not(QRY_151.Eof) do
                begin
                  //atualiza o status do protocolo como em andamento
                  PrepareQryTemp('update cadreq set csituareq = ' + QuotedStr('EM ANDAMENTO') +
                  ' where nidcadreq = ' +
                  QRY_151.FieldByName('nidcadreq').asString);
                  QRY_151.Next;
                end;
              //loop nos protocolos concluidos
              while not(QRY_151_1.Eof) do
                begin
                  //atualiza o status dos protocolos como concluido
                  PrepareQryTemp('update cadreq set csituareq = ' + QuotedStr('CONCLUIDO') +
                  ' where nidcadreq = ' +
                  QRY_151_1.FieldByName('nidcadreq').asString);
                  QRY_151_1.Next;
                end;
              Conexao.Commit;
              //habilida a escolha de um novo destino
              CBE_DESTINO.Enabled := true;
            except
              //se houve erro
              on E: Exception do
                begin
                  //desfaz as alterações no banco de dados
                  Conexao.Rollback;
                  //avisa ao usuario
                  MessageDlg('Não foi possivel atualizar os dados, operação cancelada!' + #13 +
                  'Erro : ' + E.Message,mtError,[mbOk],0);
                end;
            end;
          finally
           //cancela as alterações nas qrys
           BTN_CANCELARClick(Sender);
           //retira o filtro
           QRY_151.Filtered := false;
           QRY_151_1.Filtered := false;
           //habilida a atualização visual
           QRY_151.EnableControls;
           QRY_151_1.EnableControls;
          end;
        end;
      //status dos botões
      Botoes(['Btn_Cancelar','Btn_Gravar','BTN_ADITEM','BTN_ADDTODOS','BTN_RENITEM','BTN_RENTODOS'],'FRM_A018ADPT',false);
    end;

end;
{------------------------------------------------------------------------------}
procedure TFRM_A018ADPT.DBG_DISPMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  //chama pesquisa de grid
  if Button = mbRight then
    begin
      //desmarca o registro corrente
      DBG_DISP.SelectedRows.CurrentRowSelected := false;
      //chama a pesquisa de gird
      if ChamaPesqGrid(DTM_A018ADPT.QRY_151,nil,'nnroprot','Protocolo') then
        //marca o registro selecionado na pesquisa
        DBG_DISP.SelectedRows.CurrentRowSelected := true;
    end;

end;
{------------------------------------------------------------------------------}
procedure TFRM_A018ADPT.DBG_AUTMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
//chama pesquisa de grid
  if Button = mbRight then
    begin
      //desmarca o registro atual
      DBG_AUT.SelectedRows.CurrentRowSelected := false;
      //chama a pesquisa de grid
      if ChamaPesqGrid(DTM_A018ADPT.QRY_151_1,nil,'nnroprot','Protocolo')  then
        //marca o registro selecionado na pesquisa
        DBG_AUT.SelectedRows.CurrentRowSelected := true;
    end;
end;
{------------------------------------------------------------------------------}
procedure TFRM_A018ADPT.BTN_AVANCAR1Click(Sender: TObject);
begin
  DBG_DISP.DataSource.DataSet.Next;
end;
{------------------------------------------------------------------------------}
procedure TFRM_A018ADPT.BTN_RETROCEDER1Click(Sender: TObject);
begin
    DBG_DISP.DataSource.DataSet.Prior;
end;
{------------------------------------------------------------------------------}
procedure TFRM_A018ADPT.BTN_RETROCEDER2Click(Sender: TObject);
begin
    DBG_AUT.DataSource.DataSet.Prior;
end;
{------------------------------------------------------------------------------}
procedure TFRM_A018ADPT.BTN_AVANCAR2Click(Sender: TObject);
begin
    DBG_AUT.DataSource.DataSet.Next;
end;
{------------------------------------------------------------------------------}
procedure TFRM_A018ADPT.BTN_REQClick(Sender: TObject);
  var
    cIdCadreq: String;
    nnroProt: Integer;
begin
  //cria a aplicação de requerimento
  Application.CreateForm(TDTM_A002ADPT,DTM_A002ADPT);
  Application.CreateForm(TFRM_A002ADPT,FRM_A002ADPT);
  with DTM_A018ADPT, FRM_A002ADPT, DMControle do
    begin
      //verifica qual botao chamou
      if Sender = BTN_REQ then
        begin
          //pega id e numero do protocolo
          cIdCadreq := QRY_151.FieldByName('nidcadreq').asString;
          nnroProt := QRY_151.FieldByName('nnroprot').asInteger;
        end
      else
        begin
          //pega id e numero do protocolo
          cIdCadreq := QRY_151_1.FieldByName('nidcadreq').asString;
          nnroProt := QRY_151_1.FieldByName('nnroprot').asInteger;
        end;
      //seleciona o requerente principal do protocolo
      PrepareQryTemp('select cidtbxurq from tagreq where nidcadreq = ' +
      cIdCadreq + ' and cprincipal = ' + QuotedStr('S'));
      //passa a id do requerente para ser localiza
      cIdRequerenteLocate := QryTemp.FieldByName('cidtbxurq').asString;
      QryTemp.Close;
      QryTemp.SQL.Clear;
      //seleciona o interessado principal
      PrepareQryTemp('select cidtbxurq from tagitr where nidcadreq = ' +
      cIdCadreq + ' and cprincipal = ' + QuotedStr('S'));
      //passa a id do interessado para ser localizada
      cIdInterLocate := QryTemp.FieldByName('cidtbxurq').asString;
      //numero do protocolo para ser localizado
      nNroProtLocate := nnroProt;
      QryTemp.Close;
      QryTemp.Sql.Clear;
    end;
  //chama a aplicação e localiza as informações
  oControlForms.AtivaForm('FRM_A002ADPT',shModal,nil);

end;
{------------------------------------------------------------------------------}
procedure TFRM_A018ADPT.BTN_DETALHEClick(Sender: TObject);
begin
  //chama a aplicação de detalhamento de tramite do processo
  Application.CreateForm(TDTM_A008ADPT,DTM_A008ADPT);
  Application.CreateForm(TFRM_A008ADPT,FRM_A008ADPT);
  //passa a qry que contem os protocolos
  if Sender = BTN_DETALHE then
    DTM_A008ADPT.DTS_CABECLH.DataSet :=
    DTM_A018ADPT.QRY_151
  else
    DTM_A008ADPT.DTS_CABECLH.DataSet :=
    DTM_A018ADPT.QRY_151_1;
  //mostra a aplicação
  oControlForms.AtivaForm('FRM_A008ADPT',shModal,Nil);
end;
{------------------------------------------------------------------------------}
end.




