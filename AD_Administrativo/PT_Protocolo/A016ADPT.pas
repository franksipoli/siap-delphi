{*******************************************************************************
 *                                                                             *
 *  Programador Leandro Ribas                                                  *
 *  11 de Abril de 2005, M P Lopes Sistemas de Informação LTDA.                *
 *  Aplicação para recepcionar as guias de tramitações destinas a um local     *
 *                                                                             *
 *  Data de inicio : 07/04/2005                                                *
 *  Data da Finalização : 11/04/2005                                           *
 *                                                                "vamo nessa" *
 *******************************************************************************
}


unit A016ADPT;

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
  LMDSimplePanel, jpeg, Provider, OraProvider;

type
  TFRM_A016ADPT = class(TForm)
    Panel2: TPanel;
    BTN_SAIR: TSpeedButton;
    LMDGroupBox2: TLMDGroupBox;
    BTN_ADITEM: TSpeedButton;
    BTN_ADDTODOS: TSpeedButton;
    BTN_RENITEM: TSpeedButton;
    BTN_RENTODOS: TSpeedButton;
    LMDPanelFill3: TLMDPanelFill;
    BTN_RETROCEDER1: TSpeedButton;
    BTN_AVANCAR1: TSpeedButton;
    DBG_DISP: TDBGrid;
    LMDPanelFill1: TLMDPanelFill;
    BTN_RETROCEDER2: TSpeedButton;
    BTN_AVANCAR2: TSpeedButton;
    DBG_AUT: TDBGrid;
    Label1: TLabel;
    Btn_Alterar: TSpeedButton;
    BTN_GRAVAR: TSpeedButton;
    BTN_CANCELAR: TSpeedButton;
    BTN_DETALHE: TSpeedButton;
    BTN_DETTRAMI: TSpeedButton;
    CBE_DESTINO: TComboEdit;
    BTN_ATUGTM: TSpeedButton;
    procedure BTN_SAIRClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Btn_AlterarClick(Sender: TObject);
    procedure BTN_GRAVARClick(Sender: TObject);
    procedure BTN_CANCELARClick(Sender: TObject);
    procedure BTN_ADITEMClick(Sender: TObject);
    procedure BTN_ADDTODOSClick(Sender: TObject);
    procedure BTN_RENITEMClick(Sender: TObject);
    procedure BTN_RENTODOSClick(Sender: TObject);
    procedure BTN_AVANCAR1Click(Sender: TObject);
    procedure BTN_RETROCEDER1Click(Sender: TObject);
    procedure BTN_AVANCAR2Click(Sender: TObject);
    procedure BTN_RETROCEDER2Click(Sender: TObject);
    procedure DBG_DISPMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure DBG_AUTMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure BTN_DETALHEClick(Sender: TObject);
    procedure BTN_DETTRAMIClick(Sender: TObject);
    procedure DBG_DISPDblClick(Sender: TObject);
    procedure DBG_AUTDblClick(Sender: TObject);
    procedure CBE_DESTINOKeyPress(Sender: TObject; var Key: Char);
    procedure CBE_DESTINOChange(Sender: TObject);
    procedure CBE_DESTINOButtonClick(Sender: TObject);
    procedure BTN_ATUGTMClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    function verProtocolos(idGuia: Integer): Boolean;
  end;

var
  FRM_A016ADPT: TFRM_A016ADPT;

implementation

uses D016ADPT, UVariaveis, MPLCtrl, DMCTRL, A015ADPT, D015ADPT, CtrlForms,
  A006ADPT, D006ADPT;


{$R *.DFM}
{------------------------------------------------------------------------------}
procedure TFRM_A016ADPT.BTN_SAIRClick(Sender: TObject);
begin
   close ;
end;
{------------------------------------------------------------------------------}
procedure TFRM_A016ADPT.FormShow(Sender: TObject);
begin
 //verifica o acesso do usuario
 if not Acesso(nMatricula,'A016ADPT',DTM_A016ADPT) then
    close;
  //altera o status dos botões
  Botoes(['Btn_Alterar','Btn_Cancelar','Btn_Gravar','BTN_ADITEM','BTN_ADDTODOS','BTN_RENITEM','BTN_RENTODOS'],'FRM_A016ADPT',false);

  DTM_A016ADPT.QRY_154AfterOpen(DTM_A016ADPT.QRY_154);
  DTM_A016ADPT.QRY_154_1AfterOpen(DTM_A016ADPT.QRY_154_1);
  BTN_ATUGTM.Enabled := false;
  FRM_A016ADPT.OnShow := nil;
 {é atribuido ao OnShow do Form o valor nil para que o mesmo seja executado apenas uma vez}
 {pelo fato que se outra aplicação for chamada pela tecla F3, e ao retornar da aplicação que foi chamada pela tecla}
 {o evento OnShow deste form não acontecerá, ou seja não será executado, para permanecer o mesmo status da aplicação}
 {quando o F3 foi chamado}

end;
{------------------------------------------------------------------------------}
procedure TFRM_A016ADPT.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 //fecha e libera o form da memoria
 Action:= oControlForms.Saidas(Self,[DTM_A016ADPT],DTM_A016ADPT.DTS_154.DataSet);
end;
{------------------------------------------------------------------------------}
procedure TFRM_A016ADPT.Btn_AlterarClick(Sender: TObject);
begin
  //desabilida o botão alterar, e habilida os restantes
  Botoes(['Btn_Alterar'],'FRM_A016ADPT',false);
  //status dos botões de navegação
  DTM_A016ADPT.QRY_154AfterOpen(DTM_A016ADPT.QRY_154);
  //status dos botões de navegação
  DTM_A016ADPT.QRY_154_1AfterOpen(DTM_A016ADPT.QRY_154_1);
  //não permite o usuario digitar outro destino
  CBE_DESTINO.Enabled := false;
end;
{------------------------------------------------------------------------------}

procedure TFRM_A016ADPT.BTN_GRAVARClick(Sender: TObject);
  var
    mens: string;
begin
  mens := '';
  //pergunta ao usuario
  if MessageDlg('Deseja Salvar as alterações?',mtConfirmation,[mbYes,mbNo],0) = mrYes then
    begin
      with DTM_A016ADPT, DMControle do
        begin
          QRY_154.DisableControls;
          QRY_154_1.DisableControls;
          QRY_154.Filter := 'dat_insert = ' + QuotedStr('S');
          QRY_154.Filtered := true;
          QRY_154.First;
          QRY_154_1.Filter := 'dat_insert = ' + QuotedStr('S');
          QRY_154_1.Filtered := true;
          QRY_154_1.First;
          try
            Conexao.StartTransaction;
            try
              while not(QRY_154.Eof) do
                begin
                  //se permitir estornar a guia
                  if verProtocolos(QRY_154.FieldByName('nidtbxgtm').asInteger) then
                    begin
                      PrepareQryTemp('update tbxgtm set crecebido = ' + QuotedStr('N') +', ddtdestino = ddtorigem' +
                      ' where nidtbxgtm = ' +
                      QRY_154.FieldByName('nidtbxgtm').asString);
                      PrepareQryTemp('update cadreq set csituareq = '+ QuotedStr('EM TRANSITO') +
                      ' where  nidcadreq in (select nidcadreq from taggtm, tbxgtm where' +
                      '  tbxgtm.nidtbxgtm = ' + QRY_154.FieldByName('nidtbxgtm').asString + ' and  taggtm.nidtbxgtm = tbxgtm.nidtbxgtm)');
                    end
                  else
                    mens := mens + QRY_154.FieldByName('cnroguia').asString + #13;
                  QRY_154.Next;
                end;

              while not(QRY_154_1.Eof) do
                begin

                  PrepareQryTemp('update tbxgtm set crecebido = ' + QuotedStr('S') +', ddtdestino = SYSDATE' +
                  ' where nidtbxgtm = ' + QRY_154_1.FieldByName('nidtbxgtm').asString);
                  PrepareQryTemp('update cadreq set csituareq = '+ QuotedStr('EM ANDAMENTO') +
                  ' where  nidcadreq in (select nidcadreq from taggtm, tbxgtm where' +
                  '  tbxgtm.nidtbxgtm = ' + QRY_154_1.FieldByName('nidtbxgtm').asString + ' and  taggtm.nidtbxgtm = tbxgtm.nidtbxgtm)');
                  QRY_154_1.Next;
                end;
              Conexao.Commit;
              CBE_DESTINO.Enabled := true;
            except
              on E: Exception do
                begin
                  Conexao.Rollback;
                  MessageDlg('Não foi possivel atualizar os dados, operação cancelada!' + #13 +
                  'Erro : ' + E.Message,mtError,[mbOk],0);
                end;
            end;
          finally
           BTN_CANCELARClick(Sender);
           QRY_154.Filtered := false;
           QRY_154_1.Filtered := false;
           QRY_154.EnableControls;
           QRY_154_1.EnableControls;
           if mens <> '' then
             MessageDlg('As guias abaixo não podem ser estornadas!' + #13 + mens, mtInformation,[mbOk],0);
          end;
        end;
      Botoes(['Btn_Cancelar','Btn_Gravar','BTN_ADITEM','BTN_ADDTODOS','BTN_RENITEM','BTN_RENTODOS'],'FRM_A016ADPT',false);
    end;
end;

procedure TFRM_A016ADPT.BTN_CANCELARClick(Sender: TObject);
begin
  with DTM_A016ADPT do
    begin
      if QRY_154.UpdatesPending then
        QRY_154.CancelUpdates;
      if QRY_154_1.UpdatesPending then
        QRY_154_1.CancelUpdates;
      Botoes(['Btn_Cancelar','Btn_Gravar','BTN_ADITEM','BTN_ADDTODOS','BTN_RENITEM','BTN_RENTODOS'],'FRM_A016ADPT',false);
      CBE_DESTINO.Enabled := true;
      CBE_DESTINOChange(Sender);
    end;
end;

procedure TFRM_A016ADPT.BTN_ADITEMClick(Sender: TObject);
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
              DTM_A016ADPT.DTS_154_1.DataSet.Insert;
              {Adiciona campos e valores selecionados}
              DTM_A016ADPT.DTS_154_1.DataSet.FieldByName('nidtbxgtm').AsInteger :=
              FieldByName('nidtbxgtm').AsInteger;
              DTM_A016ADPT.DTS_154_1.DataSet.FieldByName('cnroguia').AsString :=
              FieldByName('cnroguia').AsString;
              DTM_A016ADPT.DTS_154_1.DataSet.FieldByName('dat_lugar').AsString :=
              FieldByname('dat_lugar').AsString;
              DTM_A016ADPT.DTS_154_1.DataSet.FieldByName('dat_insert').AsString := 'S';
              {Grava no destino}
              DTM_A016ADPT.DTS_154_1.DataSet.Post;
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
      DTM_A016ADPT.QRY_154AfterOpen(DTM_A016ADPT.QRY_154);
      DTM_A016ADPT.QRY_154_1AfterOpen(DTM_A016ADPT.QRY_154_1);
    end;

end;

procedure TFRM_A016ADPT.BTN_ADDTODOSClick(Sender: TObject);
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

procedure TFRM_A016ADPT.BTN_RENITEMClick(Sender: TObject);
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
              DTM_A016ADPT.DTS_154.DataSet.Insert;
              {Adiciona campos e valores selecionados}
              DTM_A016ADPT.DTS_154.DataSet.FieldByName('nidtbxgtm').AsInteger :=
              FieldByName('nidtbxgtm').AsInteger;
              DTM_A016ADPT.DTS_154.DataSet.FieldByName('cnroguia').AsString :=
              FieldByName('cnroguia').AsString;
              DTM_A016ADPT.DTS_154.DataSet.FieldByName('dat_lugar').AsString :=
              FieldByname('dat_lugar').AsString;
              DTM_A016ADPT.DTS_154.DataSet.FieldByName('dat_insert').AsString := 'S';
              {Grava no destino}
              DTM_A016ADPT.DTS_154.DataSet.Post;
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
      DTM_A016ADPT.QRY_154AfterOpen(DTM_A016ADPT.QRY_154);
      DTM_A016ADPT.QRY_154_1AfterOpen(DTM_A016ADPT.QRY_154_1);
    end;

end;

procedure TFRM_A016ADPT.BTN_RENTODOSClick(Sender: TObject);
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

procedure TFRM_A016ADPT.BTN_AVANCAR1Click(Sender: TObject);
begin
  DTM_A016ADPT.DTS_154.DataSet.Next;
end;

procedure TFRM_A016ADPT.BTN_RETROCEDER1Click(Sender: TObject);
begin
  DTM_A016ADPT.DTS_154.DataSet.Prior;
end;

procedure TFRM_A016ADPT.BTN_AVANCAR2Click(Sender: TObject);
begin
  DTM_A016ADPT.DTS_154_1.DataSet.Next;
end;

procedure TFRM_A016ADPT.BTN_RETROCEDER2Click(Sender: TObject);
begin
  DTM_A016ADPT.DTS_154_1.DataSet.Prior;
end;

procedure TFRM_A016ADPT.DBG_DISPMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  //chama pesquisa de grid
  if Button = mbRight then
    ChamaPesqGrid(DTM_A016ADPT.QRY_154,nil,'cnroguia','Número da Guia');

end;

procedure TFRM_A016ADPT.DBG_AUTMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  //chama pesquisa de grid
  if Button = mbRight then
    ChamaPesqGrid(DTM_A016ADPT.QRY_154_1,nil,'cnroguia','Número da Guia');
end;

procedure TFRM_A016ADPT.BTN_DETALHEClick(Sender: TObject);
begin
  Application.CreateForm(TDTM_A015ADPT,DTM_A015ADPT);
  Application.CreateForm(TFRM_A015ADPT,FRM_A015ADPT);
  FRM_A015ADPT.nIdGuia :=
  DBG_DISP.DataSource.DataSet.FieldByName('nidtbxgtm').asInteger;
  FRM_A015ADPT.cNumGuia :=
  DBG_DISP.DataSource.DataSet.FieldByName('cnroguia').asString;
  oControlForms.AtivaForm('FRM_A015ADPT',shModal,nil);
end;

procedure TFRM_A016ADPT.BTN_DETTRAMIClick(Sender: TObject);
begin
  Application.CreateForm(TDTM_A015ADPT,DTM_A015ADPT);
  Application.CreateForm(TFRM_A015ADPT,FRM_A015ADPT);
  FRM_A015ADPT.nIdGuia :=
  DBG_AUT.DataSource.DataSet.FieldByName('nidtbxgtm').asInteger;
  FRM_A015ADPT.cNumGuia :=
  DBG_AUT.DataSource.DataSet.FieldByName('cnroguia').asString;
  oControlForms.AtivaForm('FRM_A015ADPT',shModal,nil);
end;

procedure TFRM_A016ADPT.DBG_DISPDblClick(Sender: TObject);
begin
  if BTN_DETALHE.Enabled then
    BTN_DETALHE.Click;
end;

procedure TFRM_A016ADPT.DBG_AUTDblClick(Sender: TObject);
begin
  if BTN_DETTRAMI.Enabled then
    BTN_DETTRAMI.Click;
end;

procedure TFRM_A016ADPT.CBE_DESTINOKeyPress(Sender: TObject;
  var Key: Char);
begin
  if (Key <> #13) or (Key <> #9) then
    Key := #0;

end;

procedure TFRM_A016ADPT.CBE_DESTINOChange(Sender: TObject);
begin
  with DTM_A016ADPT do
    begin
      if Sender = CBE_DESTINO then
        begin
          QRY_LOCAIS.ParamByName('cidtbxulc').asString :=
          CBE_DESTINO.Text;
          QRY_LOCAIS.ExecSQL;
          CBE_DESTINO.OnChange := nil;
          CBE_DESTINO.Text := QRY_LOCAIS.FieldByName('cdescriulc').asString;
          CBE_DESTINO.OnChange := CBE_DESTINOChange;
        end;
      QRY_154.ParamByName('ciddestino').asString :=
      QRY_LOCAIS.FieldByName('cidtbxulc').asString;
      QRY_154.ExecSql;
      QRY_154_1.ParamByName('ciddestino').asString :=
      QRY_LOCAIS.FieldByName('cidtbxulc').asString;
      QRY_154_1.ExecSql;
      Btn_Alterar.Enabled := (QRY_154.RecordCount > 0) or (QRY_154_1.RecordCount > 0);
      QRY_154AfterOpen(DTM_A016ADPT.QRY_154);
      QRY_154_1AfterOpen(DTM_A016ADPT.QRY_154_1);
      BTN_ATUGTM.Enabled := true;
    end;
end;

procedure TFRM_A016ADPT.CBE_DESTINOButtonClick(Sender: TObject);
begin
  VerTeclas(VK_F2);
end;

procedure TFRM_A016ADPT.BTN_ATUGTMClick(Sender: TObject);
begin
  Application.CreateForm(TDTM_A006ADPT,DTM_A006ADPT);
  Application.CreateForm(TFRM_A006ADPT,FRM_A006ADPT);
  FRM_A006ADPT.lIncluir := true;
  oControlForms.AtivaForm('FRM_A006ADPT',shModal,Nil);
  CBE_DESTINOChange(Sender);
end;

function TFRM_A016ADPT.verProtocolos(idGuia: Integer): Boolean;
  var resultado: boolean;
begin
  resultado := true;
  PrepareQryTemp('select cadreq.nidtbxgtm, cadreq.csituareq from cadreq,taggtm where taggtm.nidtbxgtm = ' + IntToStr(idGuia) +
  ' and cadreq.nidcadreq = taggtm.nidcadreq');
  with DMControle do
  begin
    QryTemp.First;
    while not(QryTemp.Eof) do
    begin
      //se a guia que esta sendo estorna não for a ultima guia do protocolo
      if QryTemp.FieldByName('nidtbxgtm').AsInteger <> idGuia then
      begin
        //não permite o estorno da guia
        resultado := false;
        break;
      end;

      //se o protocolo já concluido ou cancelado ou estiver em transito
      if QryTemp.FieldByName('csituareq').asString <> 'EM ANDAMENTO' then
      begin
        resultado := false;
        break;
      end;
      QryTemp.Next;
    end;

    QryTemp.Close;
    QryTemp.SQL.Clear;

  end;

  Result := resultado;

end;

end.




