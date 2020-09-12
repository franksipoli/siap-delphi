unit A041RH;

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
  LMDSimplePanel;

type
  TFRM_A041RH = class(TForm)
    Panel2: TPanel;
    BTN_INCLUIR: TSpeedButton;
    BTN_ALTERAR: TSpeedButton;
    BTN_CANCELAR: TSpeedButton;
    BTN_PESQUISAR: TSpeedButton;
    BTN_IMPRIMIR: TSpeedButton;
    BTN_SAIR: TSpeedButton;
    BTN_AVANCAR: TSpeedButton;
    BTN_RETROCEDER: TSpeedButton;
    BTN_EXCLUIR: TSpeedButton;
    BTN_GRAVAR: TSpeedButton;
    SpeedButton10: TSpeedButton;
    SpeedButton11: TSpeedButton;
    SpeedButton12: TSpeedButton;
    SpeedButton13: TSpeedButton;
    SpeedButton14: TSpeedButton;
    SpeedButton15: TSpeedButton;
    LMDGroupBox2: TLMDGroupBox;
    Label34: TLabel;
    Label35: TLabel;
    DED_NCODLANCTO: TDBEdit;
    Label1: TLabel;
    DED_CDESCRIEVE: TDBEdit;
    Label2: TLabel;
    DBL_NIDTBXTFP: TRxDBLookupCombo;
    Label4: TLabel;
    DBL_NIDTBXGEV: TRxDBLookupCombo;
    Label3: TLabel;
    DBL_NIDTBXFLC: TRxDBLookupCombo;
    Label5: TLabel;
    DBL_NIDTBXTEV: TRxDBLookupCombo;
    DED_NFATOREVE: TDBEdit;
    Label6: TLabel;
    Label7: TLabel;
    DED_NSQCALCULO: TDBEdit;
    Label8: TLabel;
    DBL_NIDTBXREF: TRxDBLookupCombo;
    Label9: TLabel;
    DBL_NIDTBXRCL: TRxDBLookupCombo;
    Label12: TLabel;
    DBL_NIDTBXCFP: TRxDBLookupCombo;
    LMDGroupBox3: TLMDGroupBox;
    BTN_ADITEM: TSpeedButton;
    BTN_ADDTODOS: TSpeedButton;
    BTN_RENITEM: TSpeedButton;
    BTN_RENTODOS: TSpeedButton;
    DBG_DISP: TDBGrid;
    DBG_AUT: TDBGrid;
    LMDPanelFill3: TLMDPanelFill;
    BTN_PRIMEIROREG1: TSpeedButton;
    BTN_RETROCEDER1: TSpeedButton;
    BTN_ULTIMOREG1: TSpeedButton;
    BTN_AVANCAR1: TSpeedButton;
    LMDPanelFill4: TLMDPanelFill;
    BTN_ULTIMOREG2: TSpeedButton;
    BTN_AVANCAR2: TSpeedButton;
    BTN_RETROCEDER2: TSpeedButton;
    BTN_PRIMEIROREG2: TSpeedButton;
    Label13: TLabel;
    CBB_CSTATUSEVE: TRxDBComboBox;
    CBE_NIDTBXVPD: TComboEdit;
    procedure BTN_SAIRClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure BTN_PESQUISARClick(Sender: TObject);
    procedure BTN_AVANCARClick(Sender: TObject);
    procedure BTN_RETROCEDERClick(Sender: TObject);
    procedure BTN_INCLUIRClick(Sender: TObject);
    procedure BTN_ALTERARClick(Sender: TObject);
    procedure BTN_GRAVARClick(Sender: TObject);
    procedure BTN_CANCELARClick(Sender: TObject);
    procedure BTN_EXCLUIRClick(Sender: TObject);
    procedure BTN_IMPRIMIRClick(Sender: TObject);
    procedure CBE_NIDTBXVPDExit(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure CBE_NIDTBXVPDChange(Sender: TObject);
    procedure CBE_NIDTBXVPDKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CBE_NIDTBXVPDButtonClick(Sender: TObject);
    procedure BTN_ADITEMClick(Sender: TObject);
    procedure BTN_RENITEMClick(Sender: TObject);
    procedure BTN_ADDTODOSClick(Sender: TObject);
    procedure BTN_RENTODOSClick(Sender: TObject);
    procedure BTN_PRIMEIROREG1Click(Sender: TObject);
    procedure BTN_RETROCEDER1Click(Sender: TObject);
    procedure BTN_AVANCAR1Click(Sender: TObject);
    procedure BTN_ULTIMOREG1Click(Sender: TObject);
    procedure BTN_PRIMEIROREG2Click(Sender: TObject);
    procedure BTN_RETROCEDER2Click(Sender: TObject);
    procedure BTN_AVANCAR2Click(Sender: TObject);
    procedure BTN_ULTIMOREG2Click(Sender: TObject);
    procedure DBG_DISPMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure DBG_AUTMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
    lDigTce : Boolean;
  end;

var
  FRM_A041RH: TFRM_A041RH;

implementation

uses D041RH, UVariaveis, MPLCtrl, DMCTRL;

{$R *.DFM}

procedure TFRM_A041RH.BTN_SAIRClick(Sender: TObject);
begin
   close ;
end;

procedure TFRM_A041RH.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  //sai da aplicação
  Action:= oControlForms.Saidas(Self,[DTM_A041RH],DTM_A041RH.DTS_074.DataSet);

end;

procedure TFRM_A041RH.FormShow(Sender: TObject);
begin
  //verifica o acesso do usuário na aplicação
  if not Acesso(nMatricula,'A041RH',DTM_A041RH) then
    close;
  //iniciliza o status dos botões
  Botoes(['Btn_Cancelar','Btn_Gravar',
          'Btn_AdItem','Btn_RenItem',
          'Btn_AddTodos','Btn_RenTodos'],'FRM_A041RH',false);

 //atualiza a caixa de edição do valor padrao do TCE
 DTM_A041RH.QRY_074AfterScroll(DTM_A041RH.QRY_074);

  FRM_A041RH.OnShow := nil;
  {é atribuido ao OnShow do Form o valor nil para que o mesmo seja executado apenas uma vez}
  {pelo fato que se outra aplicação for chamada pela tecla F3, e ao retornar da aplicação que foi chamada pela tecla}
  {o evento OnShow deste form não acontecerá, ou seja não será executado, para permanecer o mesmo status da aplicação}
  {quando o F3 foi chamado}

end;

procedure TFRM_A041RH.BTN_PESQUISARClick(Sender: TObject);
begin
  //chama a pesquisa padrao para a tabela de eventos
  Pesquisa(DTM_A041RH.QRY_074,true,'','');
end;

procedure TFRM_A041RH.BTN_AVANCARClick(Sender: TObject);
begin
 {avança registro evento}
 DBGenerica(DTM_A041RH.DTS_074,'Conexao',0,3,nil,false);

end;

procedure TFRM_A041RH.BTN_RETROCEDERClick(Sender: TObject);
begin
 {volta um registro evento}
 DBGenerica(DTM_A041RH.DTS_074,'Conexao',0,2,nil,false);

end;

procedure TFRM_A041RH.BTN_INCLUIRClick(Sender: TObject);
begin
  {inclui um novo evento}
  DBGenerica(DTM_A041RH.DTS_074,'Conexao',1,0);
  //muda o status dos botões para habilitar
  //a gravação ou cancelamento de alguma alteração
  //mas tabelas
  Botoes(['BTN_GRAVAR','BTN_CANCELAR',
          'BTN_PRIMEIROREG1','BTN_RETROCEDER1','BTN_AVANCAR1','BTN_ULTIMOREG1',
          'BTN_PRIMEIROREG2','BTN_RETROCEDER2','BTN_AVANCAR2','BTN_ULTIMOREG2'],
          'FRM_A041RH',true);
  //posiciona o focus no campo
  DED_NCODLANCTO.SetFocus;
end;

procedure TFRM_A041RH.BTN_ALTERARClick(Sender: TObject);
begin
  //coloca em status de alteração o evento corrente
  DBGenerica(DTM_A041RH.DTS_074,'Conexao',2,0,NIL,false);
  //muda o status dos botões para habilitar
  //a gravação ou cancelamento de alguma alteração
  //mas tabelas
  Botoes(['BTN_GRAVAR','BTN_CANCELAR','BTN_ADITEM',
          'BTN_ADDTODOS','BTN_RENITEM','BTN_RENTODOS',
          'BTN_PRIMEIROREG1','BTN_RETROCEDER1','BTN_AVANCAR1','BTN_ULTIMOREG1',
          'BTN_PRIMEIROREG2','BTN_RETROCEDER2','BTN_AVANCAR2','BTN_ULTIMOREG2'],
          'FRM_A041RH',true);
end;

procedure TFRM_A041RH.BTN_GRAVARClick(Sender: TObject);
begin
  with  DMControle, DTM_A041RH do
    begin
      //verifica se os campos necessarios estão preenchidos
      if LiberadoGravacao(FRM_A041RH,DTS_074) then
        begin
          //verifica se o codigo do evento já esta sendo usado
          PrepareQryTemp('select nidcadeve from cadeve where ncodlancto = ' + DED_NCODLANCTO.Text +
          ' and nidcadeve <> ' + DTS_074.DataSet.FieldByName('nidcadeve').asString);
          //se o codigo esta sendo usado
          if not(QryTemp.IsEmpty) then
            begin
              //avisa ao usuario
              MessageDlg('Código já esta sendo usado por outro evento!',mtInformation,[mbOk],0);
              //retorna o focus
              DED_NCODLANCTO.SetFocus;
              DED_NCODLANCTO.SelectAll;
              //libera a qry temporario
              QryTemp.Close;
              QryTemp.SQL.Clear;
              //sai da rotina
              Exit;
            end;
          //libera a qry temporaria
          QryTemp.Close;
          QryTemp.SQL.Clear;
          //pergunta ao usuário se deseja salvar as alterações
          if MessageDlg('Deseja salvar as alterações?',mtConfirmation,[mbYes,mbNo],0) = mrYes then
            begin
              //abre transação no banco de dados
              Conexao.StartTransaction;
              try
                //cancela as alterações
                DBGenerica(DTS_074_1,'Conexao',3,1,NIL,true,false);
                DTS_074_1.DataSet.Refresh;
                //grava as alterações na tabela de base de calculo
                DBGenerica(DTS_131,'Conexao',4,1,NIL,true,false);
                //grava as informações na tabela de eventos
                DBGenerica(DTS_074,'Conexao',4,1,NIL,false,false);
                //muda o status dos botões para habilitar uma nova inclução
                //ou alterção de eventos
                Botoes(['Btn_Gravar','Btn_Cancelar','BTN_ADITEM',
                        'BTN_ADDTODOS','BTN_RENITEM','BTN_RENTODOS'],'FRM_A041RH',false);
                //confirma as alterações no banco de dados
                Conexao.Commit;
              except
                //se houve algum erro na transação
                On E : Exception do
                  begin
                    //desfaz as alterações no banco de dados
                    Conexao.RollBack;
                    //avisa ao usuário sobre o erro
                    MessageDlg('Não foi possivel gravar as informações!' + #13 +
                    'Erro : ' + E.Message,mtInformation,[mbOk],0);
                  end;
              end;
            end;
        end;
    end;
end;

procedure TFRM_A041RH.BTN_CANCELARClick(Sender: TObject);
begin
  //cancela as alterações no registro da tabela de eventos
  DBGenerica(DTM_A041RH.DTS_074,'Conexao',3,0,NIL,false);
  DBGenerica(DTM_A041RH.DTS_074_1,'Conexao',3,0,NIL,true);
  DBGenerica(DTM_A041RH.DTS_131,'Conexao',3,0,NIL,true);
  //atualiza a caixa de edição do valor padrao do TCE
  DTM_A041RH.QRY_074AfterScroll(DTM_A041RH.QRY_074);
  //muda o status dos botões para habilitar uma nova inclução
  //ou alterção de eventos
  Botoes(['Btn_Gravar','Btn_Cancelar','BTN_ADITEM',
          'BTN_ADDTODOS','BTN_RENITEM','BTN_RENTODOS'],'FRM_A041RH',false);



end;

procedure TFRM_A041RH.BTN_EXCLUIRClick(Sender: TObject);
begin
  {exclui o evento corrente}
  DBGenerica(DTM_A041RH.DTS_074,'Conexao',5,0,nil,false);
  //atualiza a caixa de edição do valor padrao do TCE
  DTM_A041RH.QRY_074AfterScroll(DTM_A041RH.QRY_074);

end;

procedure TFRM_A041RH.BTN_IMPRIMIRClick(Sender: TObject);
begin
 {função Padrão de Impressão}
 RelCadastro(DTM_A041RH.QRY_074,'Cadastro de Eventos');
end;

procedure TFRM_A041RH.CBE_NIDTBXVPDExit(Sender: TObject);
begin
  with DMControle,DTM_A041RH do
    begin
      //se foi alterado o valor padrao TCE
      if lDigTce then
        begin
          //verifica se o valor padrão do TCE esta cadastrado
          PrepareQryTemp('select nidtbxvpd from tbxvpd where cdescrvpd = ' + QuotedStr(CBE_NIDTBXVPD.Text));
          //se não estiver cadastrado
          if QryTemp.IsEmpty then
            begin
              //avisa ao usuário
              MessageDlg('Valor padrão TCE não encontrado!',mtInformation,[mbok],0);
              //fecha a qry temporaria
              QryTemp.Close;
              QryTemp.SQL.Clear;
              //retorna o focus para o campo
              CBE_NIDTBXVPD.SetFocus;
            end
          else
            begin
              //atribui a id do valor padrão do TCE para o evento
              DTS_074.DataSet.FieldByName('nidtbxvpd').asInteger :=
              QryTemp.FieldByName('nidtbxvpd').asInteger;
              //atualiza a qry de valor padrão
              QRY_127.ParamByName('nidtbxvpd').asInteger :=
              QryTemp.FieldByName('nidtbxvpd').asInteger;
              QRY_127.ExecSQL;
              //libera a qry temporaria
              QryTemp.Close;
              QryTemp.SQL.Clear;

              lDigTce := false;
            end;
        end;
    end;
end;

procedure TFRM_A041RH.FormCreate(Sender: TObject);
begin
 //iniciliza
 lDigTce := false;
end;

procedure TFRM_A041RH.CBE_NIDTBXVPDChange(Sender: TObject);
begin
  //se o evento estiver em alteração ou inserção
  lDigTce := (DTM_A041RH.DTS_074.DataSet.State in [dsInsert,dsEdit]);
end;

procedure TFRM_A041RH.CBE_NIDTBXVPDKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  //se o usuário pressionou a tecla 'ESC'
  if Key = VK_ESCAPE then
    begin
      //passa o valor anterior para a caixa de edição
      DTM_A041RH.QRY_074AfterScroll(DTM_A041RH.QRY_074);

      lDigTce := false;
    end;

end;

procedure TFRM_A041RH.CBE_NIDTBXVPDButtonClick(Sender: TObject);
begin
  //chama a pesquisa para o campo com o foco
  VerTeclas(VK_F2);
end;

procedure TFRM_A041RH.BTN_ADITEMClick(Sender: TObject);
begin
  with DBG_DISP.DataSource.DataSet, DTM_A041RH do
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
              DTS_131.DataSet.Append;
              {Adiciona campos e valores selecionados}
              DTS_131.DataSet.FieldByName('cdescrieve').AsString :=
              DTS_074_1.DataSet.FieldByName('cdescrieve').AsString;
              DTS_131.DataSet.FieldByName('nidcadeve').AsInteger :=
              DTS_074.DataSet.FieldByname('nidcadeve').AsInteger;
              DTS_131.DataSet.FieldByName('nidevebsc').AsInteger :=
              DTS_074_1.DataSet.FieldByName('nidcadeve').AsInteger;
              {Grava no destino}
              DTS_131.DataSet.Post;
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
    end;

end;

procedure TFRM_A041RH.BTN_RENITEMClick(Sender: TObject);
begin
  with DBG_AUT.DataSource.DataSet, DTM_A041RH do
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
              DTS_074_1.DataSet.Insert;
              {Adiciona campos e valores selecionados}
              DTS_074_1.DataSet.FieldByName('cdescrieve').AsString :=
              DTS_131.DataSet.FieldByName('cdescrieve').asString;
              {Grava no destino}
              DTS_074_1.DataSet.Post;
            end;
          {Próximo Registro}
          Next;
        end;
      {Desmarca seleção e delete registros selecionados}
      DBG_AUT.SelectedRows.Delete;
      {Volta origem no primeiro registro}
      First;
      {Habilita controle visuais da origem}
      EnableControls;
    end;

end;

procedure TFRM_A041RH.BTN_ADDTODOSClick(Sender: TObject);
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

procedure TFRM_A041RH.BTN_RENTODOSClick(Sender: TObject);
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
      BTN_RENITEMClick(Sender);

      {Volta origem no primeiro registro}
      First;
      {Habilita controle visuais da origem}
      EnableControls;
    end;

end;

procedure TFRM_A041RH.BTN_PRIMEIROREG1Click(Sender: TObject);
begin
  DTM_A041RH.DTS_074_1.DataSet.First;
end;

procedure TFRM_A041RH.BTN_RETROCEDER1Click(Sender: TObject);
begin
  DTM_A041RH.DTS_074_1.DataSet.Prior;
end;

procedure TFRM_A041RH.BTN_AVANCAR1Click(Sender: TObject);
begin
  DTM_A041RH.DTS_074_1.DataSet.Next;
end;

procedure TFRM_A041RH.BTN_ULTIMOREG1Click(Sender: TObject);
begin
  DTM_A041RH.DTS_074_1.DataSet.Last;
end;

procedure TFRM_A041RH.BTN_PRIMEIROREG2Click(Sender: TObject);
begin
  DTM_A041RH.DTS_131.DataSet.First;
end;

procedure TFRM_A041RH.BTN_RETROCEDER2Click(Sender: TObject);
begin
  DTM_A041RH.DTS_131.DataSet.Prior;
end;

procedure TFRM_A041RH.BTN_AVANCAR2Click(Sender: TObject);
begin
  DTM_A041RH.DTS_131.DataSet.Next;
end;

procedure TFRM_A041RH.BTN_ULTIMOREG2Click(Sender: TObject);
begin
  DTM_A041RH.DTS_131.DataSet.Last;
end;

procedure TFRM_A041RH.DBG_DISPMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  //chama pesquisa de grid
  if Button = mbRight then
    ChamaPesqGrid(DTM_A041RH.QRY_074_1,nil,'cdescrieve','Descrição do Evento');
end;

procedure TFRM_A041RH.DBG_AUTMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  //chama pesquisa de grid
  if Button = mbRight then
    ChamaPesqGrid(DTM_A041RH.QRY_131,nil,'cdescrieve','Descrição do Evento');
end;

end.




