unit A027RH;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  RxLookup, StdCtrls, RxDBComb, Grids, DBGrids, DBCtrls, Mask, ToolEdit,
  RXDBCtrl, LMDCustomControl, LMDCustomPanel, LMDCustomBevelPanel,
  LMDCustomParentPanel, LMDCustomPanelFill, LMDPanelFill, Buttons, ExtCtrls,
  LMDCustomGroupBox, LMDGroupBox, DB, LMDSimplePanel, ComCtrls,
  PageControlEx, ImgList;

type
  TFRM_A027RH = class(TForm)
    GRB_TCR: TLMDGroupBox;
    Panel2: TPanel;
    Btn_Alterar: TSpeedButton;
    BTN_SAIR: TSpeedButton;
    LMDPanelFill3: TLMDPanelFill;
    Btn_retroceder2: TSpeedButton;
    Btn_avancar2: TSpeedButton;
    DBG_DISP: TDBGrid;
    Btn_AdItem: TSpeedButton;
    Btn_AddTodos: TSpeedButton;
    Btn_RenItem: TSpeedButton;
    Btn_RenTodos: TSpeedButton;
    LMDPanelFill1: TLMDPanelFill;
    Btn_retroceder1: TSpeedButton;
    Btn_Avancar1: TSpeedButton;
    DBG_AUT: TDBGrid;
    Btn_gravar: TSpeedButton;
    Btn_Cancelar: TSpeedButton;
    procedure BTN_SAIRClick(Sender: TObject);
    procedure Btn_AlterarClick(Sender: TObject);
    procedure Btn_gravarClick(Sender: TObject);
    procedure Btn_CancelarClick(Sender: TObject);
    procedure Btn_AdItemClick(Sender: TObject);
    procedure Btn_AddTodosClick(Sender: TObject);
    procedure Btn_RenItemClick(Sender: TObject);
    procedure Btn_RenTodosClick(Sender: TObject);
    procedure DBG_AUTMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure DBG_DISPMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure Btn_retroceder2Click(Sender: TObject);
    procedure Btn_avancar2Click(Sender: TObject);
    procedure Btn_retroceder1Click(Sender: TObject);
    procedure Btn_Avancar1Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRM_A027RH: TFRM_A027RH;

implementation

uses D027RH, D026RH, DMCTRL, MPLCtrl, MPLLib, CtrlForms, UVariaveis;

{$R *.DFM}

procedure TFRM_A027RH.BTN_SAIRClick(Sender: TObject);
begin
   Close ;
end;

procedure TFRM_A027RH.FormShow(Sender: TObject);
begin
  if not Acesso(nMatricula,'A027RH',DTM_A027RH) then
    close;
  FRM_A027RH.OnShow := nil;
 {é atribuido ao OnShow do Form o valor nil para que o mesmo seja executado apenas uma vez}
 {pelo fato que se outra aplicação for chamada pela tecla F3, e ao retornar da aplicação que foi chamada pela tecla}
 {o evento OnShow deste form não acontecerá, ou seja não será executado, para permanecer o mesmo status da aplicação}
 {quando o F3 foi chamado}
 Botoes(['Btn_Cancelar','Btn_Gravar',
         'Btn_AdItem','Btn_RenItem',
         'Btn_AddTodos','Btn_RenTodos'],'FRM_A027RH',false);
 GRB_TCR.Caption := ' '+DTM_A026RH.QRY_095.FieldByName('cdescritcr').AsString+' ';
 DTM_A027RH.QRY_115.Close;
 DTM_A027RH.QRY_115.ParamByName('nidtbxtcr').AsInteger :=
 DTM_A026RH.QRY_095.FieldByName('nidtbxtcr').AsInteger;
 DTM_A027RH.QRY_115.Open;
 DTM_A027RH.QRY_112.Close;
 DTM_A027RH.QRY_112.ParamByName('nidtbxtcr').AsInteger :=
 DTM_A026RH.QRY_095.FieldByName('nidtbxtcr').AsInteger;
 DTM_A027RH.QRY_112.Open;
end;

procedure TFRM_A027RH.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:= oControlForms.Saidas(Self,[DTM_A027RH],DTM_A027RH.DTS_115.DataSet);
end;

procedure TFRM_A027RH.BTN_ADITEMClick(Sender: TObject);
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
              DTM_A027RH.DTS_115.DataSet.Insert;
              {Adiciona campos e valores selecionados}
              DTM_A027RH.DTS_115.DataSet.FieldByName('nidtagrpc').AsInteger := 0;
              DTM_A027RH.DTS_115.DataSet.FieldByName('nidtbxtcr').AsInteger :=
              DTM_A026RH.QRY_095.FieldByname('nidtbxtcr').AsInteger;
              DTM_A027RH.DTS_115.DataSet.FieldByName('nidtbxrpv').AsInteger :=
              DTM_A027RH.QRY_112.FieldByname('nidtbxrpv').AsInteger;
              DTM_A027RH.DTS_115.DataSet.FieldByName('cdescrrpv').AsString :=
              FieldByname('cdescrrpv').AsString;
              {Grava no destino}
              DTM_A027RH.DTS_115.DataSet.Post;
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

procedure TFRM_A027RH.BTN_RENITEMClick(Sender: TObject);
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
              DTM_A027RH.DTS_112.DataSet.Insert;
              {Adiciona campos e valores selecionados}
              DTM_A027RH.DTS_112.DataSet.FieldByName('nidtbxrpv').AsInteger :=
              DTM_A027RH.QRY_115.FieldByName('nidtbxrpv').AsInteger;
              DTM_A027RH.DTS_112.DataSet.FieldByName('cdescrrpv').AsString :=
              FieldByname('cdescrrpv').AsString;
              {Grava no destino}
              DTM_A027RH.DTS_112.DataSet.Post;
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

procedure TFRM_A027RH.BTN_ADDTODOSClick(Sender: TObject);
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

procedure TFRM_A027RH.BTN_RENTODOSClick(Sender: TObject);
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

procedure TFRM_A027RH.BTN_ALTERARClick(Sender: TObject);
begin
 Botoes(['Btn_Sair','Btn_Alterar'],'FRM_A027RH',false);
 DTM_A027RH.QRY_115.Edit;
 DTM_A027RH.QRY_112.Edit;
end;

procedure TFRM_A027RH.BTN_CANCELARClick(Sender: TObject);
begin
 Botoes(['Btn_Cancelar','Btn_Gravar',
         'Btn_AdItem','Btn_RenItem',
         'Btn_AddTodos','Btn_RenTodos'],'FRM_A027RH',false);
 DTM_A027RH.QRY_115.CancelUpdates;
 DTM_A027RH.QRY_115.Refresh;
 DBG_AUT.Refresh;
 DTM_A027RH.QRY_112.CancelUpdates;
 DTM_A027RH.QRY_112.Refresh;
 DBG_DISP.Refresh;
end;

procedure TFRM_A027RH.BTN_GRAVARClick(Sender: TObject);
begin
  {Inicia uma Transação no Banco}
  DMControle.Conexao.StartTransaction;
  DBG_AUT.DataSource.DataSet.DisableControls;
  DBG_DISP.DataSource.DataSet.DisableControls;
  try
    {Aplica as modificações na TBL_UPA}
    DTM_A027RH.QRY_115.ApplyUpdates;
    DTM_A027RH.QRY_115.Refresh;
    DTM_A027RH.QRY_112.CancelUpdates;
    DTM_A027RH.QRY_112.Refresh;
    {Comita no Banco}
    DMControle.Conexao.Commit;
  except
    {Se houve erro...}
    on E : Exception do
      begin
        MessageDlg('Não foi possivel efetuar a gravação de todos os dados,'+#13+
                   'por isso está operação será cancelada para manter a integridade'+#13+
                   'dos seus dados!'+#13+'Erro: '+E.Message,mtError,[mbOk],0);
        DMControle.Conexao.RollBack;
      end;
  end;
 DBG_AUT.DataSource.DataSet.EnableControls;
 DBG_DISP.DataSource.DataSet.EnableControls;
 Botoes(['Btn_Cancelar','Btn_Gravar',
         'Btn_AdItem','Btn_RenItem',
         'Btn_AddTodos','Btn_RenTodos'],'FRM_A027RH',false);
end;

procedure TFRM_A027RH.BTN_RETROCEDER2Click(Sender: TObject);
begin
  DBGenerica(DTM_A027RH.DTS_112,'Conexao',0,2);
end;

procedure TFRM_A027RH.BTN_AVANCAR2Click(Sender: TObject);
begin
  DBGenerica(DTM_A027RH.DTS_112,'Conexao',0,3);
end;

procedure TFRM_A027RH.BTN_RETROCEDER1Click(Sender: TObject);
begin
  DBGenerica(DTM_A027RH.DTS_115,'Conexao',0,2);
end;

procedure TFRM_A027RH.BTN_AVANCAR1Click(Sender: TObject);
begin
  DBGenerica(DTM_A027RH.DTS_115,'Conexao',0,3);
end;

procedure TFRM_A027RH.DBG_DISPMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  //chama pesquisa de grid
  if Button = mbRight then
    ChamaPesqGrid(DTM_A027RH.QRY_112,nil,'cdescrrpv','Descrição do Regime');
end;

procedure TFRM_A027RH.DBG_AUTMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  //chama pesquisa de grid
  if Button = mbRight then
    ChamaPesqGrid(DTM_A027RH.QRY_115,nil,'cdescrrpv','Descrição do Regime');
end;

end.



