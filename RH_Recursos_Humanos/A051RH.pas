unit A051RH;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  RxLookup, StdCtrls, RxDBComb, Grids, DBGrids, DBCtrls, Mask, ToolEdit,
  RXDBCtrl, LMDCustomControl, LMDCustomPanel, LMDCustomBevelPanel,
  LMDCustomParentPanel, LMDCustomPanelFill, LMDPanelFill, Buttons, ExtCtrls,
  LMDCustomGroupBox, LMDGroupBox, DB, LMDSimplePanel, ComCtrls,
  PageControlEx, ImgList, Ora, Provider, OraProvider, DBClient;

type
  TFRM_A051RH = class(TForm)
    GRB_ORGAO: TLMDGroupBox;
    Panel2: TPanel;
    BTN_ALTERAR: TSpeedButton;
    BTN_SAIR: TSpeedButton;
    LMDPanelFill3: TLMDPanelFill;
    BTN_RETROCEDER2: TSpeedButton;
    BTN_AVANCAR2: TSpeedButton;
    DBG_DISP: TDBGrid;
    BTN_ADITEM: TSpeedButton;
    BTN_ADDTODOS: TSpeedButton;
    BTN_RENITEM: TSpeedButton;
    BTN_RENTODOS: TSpeedButton;
    LMDPanelFill1: TLMDPanelFill;
    BTN_RETROCEDER1: TSpeedButton;
    BTN_AVANCAR1: TSpeedButton;
    DBG_AUT: TDBGrid;
    BTN_GRAVAR: TSpeedButton;
    BTN_CANCELAR: TSpeedButton;
    SpeedButton1: TSpeedButton;
    procedure BTN_SAIRClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BTN_ADITEMClick(Sender: TObject);
    procedure BTN_RENITEMClick(Sender: TObject);
    procedure BTN_ADDTODOSClick(Sender: TObject);
    procedure BTN_RENTODOSClick(Sender: TObject);
    procedure BTN_ALTERARClick(Sender: TObject);
    procedure BTN_CANCELARClick(Sender: TObject);
    procedure BTN_GRAVARClick(Sender: TObject);
    procedure BTN_RETROCEDER2Click(Sender: TObject);
    procedure BTN_AVANCAR2Click(Sender: TObject);
    procedure BTN_RETROCEDER1Click(Sender: TObject);
    procedure BTN_AVANCAR1Click(Sender: TObject);
    procedure DBG_DISPMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure DBG_AUTMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure SpeedButton1Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRM_A051RH: TFRM_A051RH;

implementation

uses DMCTRL, D051RH, D015RH, MPLCtrl, MPLLib, UVariaveis, CtrlForms, A050RH;

{$R *.DFM}

procedure TFRM_A051RH.BTN_SAIRClick(Sender: TObject);
begin
   Close ;
end;

procedure TFRM_A051RH.FormShow(Sender: TObject);
begin
  if not Acesso(nMatricula,'A051RH',DTM_A051RH) then
    close;
  FRM_A051RH.OnShow := nil;
 {é atribuido ao OnShow do Form o valor nil para que o mesmo seja executado apenas uma vez}
 {pelo fato que se outra aplicação for chamada pela tecla F3, e ao retornar da aplicação que foi chamada pela tecla}
 {o evento OnShow deste form não acontecerá, ou seja não será executado, para permanecer o mesmo status da aplicação}
 {quando o F3 foi chamado}
 Botoes(['Btn_Cancelar','Btn_Gravar',
         'Btn_AdItem','Btn_RenItem',
         'Btn_AddTodos','Btn_RenTodos'],'FRM_A051RH',false);
 GRB_ORGAO.Caption := ' '+DTM_A015RH.QRY_088.FieldByName('dat_orgao').AsString+' ';
 DTM_A051RH.QRY_123.Close;
 DTM_A051RH.QRY_123.ParamByName('nidtbxorg').AsInteger :=
 DTM_A015RH.QRY_088.FieldByName('nidtbxorg').AsInteger;
 DTM_A051RH.QRY_123.Open;
 DTM_A051RH.QRY_113.Close;
 DTM_A051RH.QRY_113.ParamByName('nidtbxorg').AsInteger :=
 DTM_A015RH.QRY_088.FieldByName('nidtbxorg').AsInteger;
 DTM_A051RH.QRY_113.Open;
end;

procedure TFRM_A051RH.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:= oControlForms.Saidas(Self,[DTM_A051RH],DTM_A051RH.DTS_123.DataSet);
end;

procedure TFRM_A051RH.BTN_ADITEMClick(Sender: TObject);
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
              DTM_A051RH.DTS_123.DataSet.Insert;
              {Adiciona campos e valores selecionados}
              DTM_A051RH.DTS_123.DataSet.FieldByName('nidtaguno').AsInteger := 0;
              DTM_A051RH.DTS_123.DataSet.FieldByName('nidtbxorg').AsInteger :=
              DTM_A051RH.QRY_113.ParamByName('nidtbxorg').AsInteger;
              DTM_A051RH.DTS_123.DataSet.FieldByName('nidtbxund').AsInteger :=
              FieldByname('nidtbxund').AsInteger;
              DTM_A051RH.DTS_123.DataSet.FieldByName('cdescriund').AsString :=
              FieldByname('cdescriund').AsString;
              {Grava no destino}
              DTM_A051RH.DTS_123.DataSet.Post;
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

procedure TFRM_A051RH.BTN_RENITEMClick(Sender: TObject);
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
              DTM_A051RH.DTS_113.DataSet.Insert;
              {Adiciona campos e valores selecionados}
              DTM_A051RH.DTS_113.DataSet.FieldByName('nidtbxund').AsInteger :=
              FieldByname('nidtbxund').AsInteger;
              DTM_A051RH.DTS_113.DataSet.FieldByName('cdescriund').AsString :=
              FieldByname('cdescriund').AsString;
              {Grava no destino}
              DTM_A051RH.DTS_113.DataSet.Post;
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

procedure TFRM_A051RH.BTN_ADDTODOSClick(Sender: TObject);
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

procedure TFRM_A051RH.BTN_RENTODOSClick(Sender: TObject);
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

procedure TFRM_A051RH.BTN_ALTERARClick(Sender: TObject);
begin
 Botoes(['Btn_Sair','Btn_Alterar'],'FRM_A051RH',false);
 DTM_A051RH.QRY_123.Edit;
 DTM_A051RH.QRY_113.Edit;
end;

procedure TFRM_A051RH.BTN_CANCELARClick(Sender: TObject);
begin
 Botoes(['Btn_Cancelar','Btn_Gravar',
         'Btn_AdItem','Btn_RenItem',
         'Btn_AddTodos','Btn_RenTodos'],'FRM_A051RH',false);
 DTM_A051RH.QRY_123.CancelUpdates;
 DTM_A051RH.QRY_113.CancelUpdates;
end;

procedure TFRM_A051RH.BTN_GRAVARClick(Sender: TObject);
begin
  {Inicia uma Transação no Banco}
  DMControle.Conexao.StartTransaction;
  DBG_AUT.DataSource.DataSet.DisableControls;
  DBG_DISP.DataSource.DataSet.DisableControls;
  try
    {Aplica as modificações na TBL_UPA}
    DTM_A051RH.QRY_123.ApplyUpdates;
    DTM_A051RH.QRY_123.Refresh;
    DTM_A051RH.QRY_113.CancelUpdates;
    DTM_A051RH.QRY_113.Refresh;
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
         'Btn_AddTodos','Btn_RenTodos'],'FRM_A051RH',false);
end;

procedure TFRM_A051RH.BTN_RETROCEDER2Click(Sender: TObject);
begin
  DBGenerica(DTM_A051RH.DTS_113,'Conexao',0,2);
end;

procedure TFRM_A051RH.BTN_AVANCAR2Click(Sender: TObject);
begin
  DBGenerica(DTM_A051RH.DTS_113,'Conexao',0,3);
end;

procedure TFRM_A051RH.BTN_RETROCEDER1Click(Sender: TObject);
begin
  DBGenerica(DTM_A051RH.DTS_123,'Conexao',0,2);
end;

procedure TFRM_A051RH.BTN_AVANCAR1Click(Sender: TObject);
begin
  DBGenerica(DTM_A051RH.DTS_123,'Conexao',0,3);
end;

procedure TFRM_A051RH.DBG_DISPMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  //chama pesquisa de grid
  if Button = mbRight then
    ChamaPesqGrid(DTM_A051RH.QRY_113,nil,'cdescriund','Descrição das Unidades');
end;

procedure TFRM_A051RH.DBG_AUTMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  //chama pesquisa de grid
  if Button = mbRight then
    ChamaPesqGrid(DTM_A051RH.QRY_123,nil,'cdescriund','Descrição das Unidades');
end;

procedure TFRM_A051RH.SpeedButton1Click(Sender: TObject);
begin
  oControlForms.AtivaForm('FRM_A050RH',shModal,nil);
end;

end.



