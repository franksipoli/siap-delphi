unit A028RH;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  RxLookup, StdCtrls, RxDBComb, Grids, DBGrids, DBCtrls, Mask, ToolEdit,
  RXDBCtrl, LMDCustomControl, LMDCustomPanel, LMDCustomBevelPanel,
  LMDCustomParentPanel, LMDCustomPanelFill, LMDPanelFill, Buttons, ExtCtrls,
  LMDCustomGroupBox, LMDGroupBox, DB, LMDSimplePanel, ComCtrls,
  PageControlEx, ImgList;

type
  TFRM_A028RH = class(TForm)
    GRB_TCR: TLMDGroupBox;
    Panel2: TPanel;
    Btn_Alterar: TSpeedButton;
    BTN_SAIR: TSpeedButton;
    LMDPanelFill3: TLMDPanelFill;
    Btn_Retroceder2: TSpeedButton;
    Btn_Avancar2: TSpeedButton;
    DBG_DISP: TDBGrid;
    Btn_adItem: TSpeedButton;
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
    procedure Btn_retroceder1Click(Sender: TObject);
    procedure Btn_Avancar1Click(Sender: TObject);
    procedure Btn_Avancar2Click(Sender: TObject);
    procedure Btn_Retroceder2Click(Sender: TObject);
    procedure DBG_AUTMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure DBG_DISPMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Btn_adItemClick(Sender: TObject);
    procedure Btn_AddTodosClick(Sender: TObject);
    procedure Btn_RenItemClick(Sender: TObject);
    procedure Btn_RenTodosClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }

  end;

var
  FRM_A028RH: TFRM_A028RH;

implementation

uses D028RH, D026RH, DMCTRL, MPLCtrl, MPLLib, CtrlForms, UVariaveis;

{$R *.DFM}

procedure TFRM_A028RH.BTN_SAIRClick(Sender: TObject);
begin
   Close ;
end;

procedure TFRM_A028RH.FormShow(Sender: TObject);
begin
  if not Acesso(nMatricula,'A028RH',DTM_A028RH) then
    close;
  FRM_A028RH.OnShow := nil;
 {é atribuido ao OnShow do Form o valor nil para que o mesmo seja executado apenas uma vez}
 {pelo fato que se outra aplicação for chamada pela tecla F3, e ao retornar da aplicação que foi chamada pela tecla}
 {o evento OnShow deste form não acontecerá, ou seja não será executado, para permanecer o mesmo status da aplicação}
 {quando o F3 foi chamado}
 Botoes(['Btn_Cancelar','Btn_Gravar',
         'Btn_AdItem','Btn_RenItem',
         'Btn_AddTodos','Btn_RenTodos'],'FRM_A028RH',false);
 GRB_TCR.Caption := ' '+DTM_A026RH.QRY_095.FieldByName('cdescritcr').AsString+' ';
 DTM_A028RH.QRY_136.Close;
 DTM_A028RH.QRY_136.ParamByName('nidtbxtcr').AsInteger :=
 DTM_A026RH.QRY_095.FieldByName('nidtbxtcr').AsInteger;
 DTM_A028RH.QRY_136.Open;
 DTM_A028RH.QRY_149.Close;
 DTM_A028RH.QRY_149.ParamByName('nidtbxtcr').AsInteger :=
 DTM_A026RH.QRY_095.FieldByName('nidtbxtcr').AsInteger;
 DTM_A028RH.QRY_149.Open;
end;

procedure TFRM_A028RH.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:= oControlForms.Saidas(Self,[DTM_A028RH],DTM_A028RH.DTS_136.DataSet);
end;

procedure TFRM_A028RH.BTN_ADITEMClick(Sender: TObject);
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
              DTM_A028RH.DTS_136.DataSet.Insert;
              {Adiciona campos e valores selecionados}
              DTM_A028RH.DTS_136.DataSet.FieldByName('nidtagpau').AsInteger := 0;
              DTM_A028RH.DTS_136.DataSet.FieldByName('nidtbxtcr').AsInteger :=
              DTM_A026RH.QRY_095.FieldByname('nidtbxtcr').AsInteger;
              DTM_A028RH.DTS_136.DataSet.FieldByName('nidtbxtfp').AsInteger :=
              DTM_A028RH.QRY_149.FieldByname('nidtbxtfp').AsInteger;
              DTM_A028RH.DTS_136.DataSet.FieldByName('cdescritfp').AsString :=
              FieldByname('cdescritfp').AsString;
              {Grava no destino}
              DTM_A028RH.DTS_136.DataSet.Post;
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

procedure TFRM_A028RH.BTN_RENITEMClick(Sender: TObject);
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
              DTM_A028RH.DTS_149.DataSet.Insert;
              {Adiciona campos e valores selecionados}
              DTM_A028RH.DTS_149.DataSet.FieldByName('nidtbxtfp').AsInteger :=
              DTM_A028RH.QRY_136.FieldByName('nidtbxtfp').AsInteger;
              DTM_A028RH.DTS_149.DataSet.FieldByName('cdescritfp').AsString :=
              FieldByname('cdescritfp').AsString;
              {Grava no destino}
              DTM_A028RH.DTS_149.DataSet.Post;
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

procedure TFRM_A028RH.BTN_ADDTODOSClick(Sender: TObject);
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

procedure TFRM_A028RH.BTN_RENTODOSClick(Sender: TObject);
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

procedure TFRM_A028RH.BTN_ALTERARClick(Sender: TObject);
begin
 Botoes(['Btn_Sair','Btn_Alterar'],'FRM_A028RH',false);
 DTM_A028RH.QRY_136.Edit;
 DTM_A028RH.QRY_149.Edit;
end;

procedure TFRM_A028RH.BTN_CANCELARClick(Sender: TObject);
begin
 Botoes(['Btn_Cancelar','Btn_Gravar',
         'Btn_AdItem','Btn_RenItem',
         'Btn_AddTodos','Btn_RenTodos'],'FRM_A028RH',false);
 DTM_A028RH.QRY_136.CancelUpdates;
 DTM_A028RH.QRY_136.Refresh;
 DBG_AUT.Refresh;
 DTM_A028RH.QRY_149.CancelUpdates;
 DTM_A028RH.QRY_149.Refresh;
 DBG_DISP.Refresh;
end;

procedure TFRM_A028RH.BTN_GRAVARClick(Sender: TObject);
begin
  {Inicia uma Transação no Banco}
  DMControle.Conexao.StartTransaction;
  DBG_AUT.DataSource.DataSet.DisableControls;
  DBG_DISP.DataSource.DataSet.DisableControls;
  try
    {Aplica as modificações na TBL_UPA}
    DTM_A028RH.QRY_136.ApplyUpdates;
    DTM_A028RH.QRY_136.Refresh;
    DTM_A028RH.QRY_149.CancelUpdates;
    DTM_A028RH.QRY_149.Refresh;
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
         'Btn_AddTodos','Btn_RenTodos'],'FRM_A028RH',false);
end;

procedure TFRM_A028RH.BTN_RETROCEDER2Click(Sender: TObject);
begin
  DBGenerica(DTM_A028RH.DTS_149,'Conexao',0,2);
end;

procedure TFRM_A028RH.BTN_AVANCAR2Click(Sender: TObject);
begin
  DBGenerica(DTM_A028RH.DTS_149,'Conexao',0,3);
end;

procedure TFRM_A028RH.BTN_RETROCEDER1Click(Sender: TObject);
begin
  DBGenerica(DTM_A028RH.DTS_136,'Conexao',0,2);
end;

procedure TFRM_A028RH.BTN_AVANCAR1Click(Sender: TObject);
begin
  DBGenerica(DTM_A028RH.DTS_136,'Conexao',0,3);
end;

procedure TFRM_A028RH.DBG_DISPMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  //chama pesquisa de grid
  if Button = mbRight then
    ChamaPesqGrid(DTM_A028RH.QRY_149,nil,'cdescritfp','Descrição do Tipo de Folha');
end;

procedure TFRM_A028RH.DBG_AUTMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  //chama pesquisa de grid
  if Button = mbRight then
    ChamaPesqGrid(DTM_A028RH.QRY_136,nil,'cdescritfp','Descrição do Tipo de Folha');
end;

end.



