unit A016RH;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  RxLookup, StdCtrls, RxDBComb, Grids, DBGrids, DBCtrls, Mask, ToolEdit,
  RXDBCtrl, LMDCustomControl, LMDCustomPanel, LMDCustomBevelPanel,
  LMDCustomParentPanel, LMDCustomPanelFill, LMDPanelFill, Buttons, ExtCtrls,
  LMDCustomGroupBox, LMDGroupBox, DB, LMDSimplePanel, ComCtrls,
  PageControlEx, ImgList, Ora, Provider, OraProvider, DBClient;

type
  TFRM_A016RH = class(TForm)
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
    SpeedButton1: TSpeedButton;
    LMDPanelFill1: TLMDPanelFill;
    BTN_RETROCEDER1: TSpeedButton;
    BTN_AVANCAR1: TSpeedButton;
    DBG_AUT: TDBGrid;
    BTN_GRAVAR: TSpeedButton;
    BTN_CANCELAR: TSpeedButton;
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
    procedure SpeedButton1Click(Sender: TObject);
    procedure DBG_DISPMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure DBG_AUTMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRM_A016RH: TFRM_A016RH;

implementation

uses DMCTRL, D016RH, D015RH, MPLCtrl, MPLLib, UVariaveis, CtrlForms;

{$R *.DFM}

procedure TFRM_A016RH.BTN_SAIRClick(Sender: TObject);
begin
   Close ;
end;

procedure TFRM_A016RH.FormShow(Sender: TObject);
begin
  if not Acesso(nMatricula,'A016RH',DTM_A016RH) then
    close;
  FRM_A016RH.OnShow := nil;
 {é atribuido ao OnShow do Form o valor nil para que o mesmo seja executado apenas uma vez}
 {pelo fato que se outra aplicação for chamada pela tecla F3, e ao retornar da aplicação que foi chamada pela tecla}
 {o evento OnShow deste form não acontecerá, ou seja não será executado, para permanecer o mesmo status da aplicação}
 {quando o F3 foi chamado}
 Botoes(['Btn_Cancelar','Btn_Gravar',
         'Btn_AdItem','Btn_RenItem',
         'Btn_AddTodos','Btn_RenTodos'],'FRM_A016RH',false);
 GRB_ORGAO.Caption := ' '+DTM_A015RH.QRY_088.FieldByName('dat_orgao').AsString+' ';
 DTM_A016RH.QRY_078.Close;
 DTM_A016RH.QRY_078.ParamByName('nidtbxorg').AsInteger :=
 DTM_A015RH.QRY_088.FieldByName('nidtbxorg').AsInteger;
 DTM_A016RH.QRY_078.Open;
 DTM_A016RH.QRY_082.Close;
 DTM_A016RH.QRY_082.ParamByName('nidtbxorg').AsInteger :=
 DTM_A015RH.QRY_088.FieldByName('nidtbxorg').AsInteger;
 DTM_A016RH.QRY_082.Open;
end;

procedure TFRM_A016RH.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:= oControlForms.Saidas(Self,[DTM_A016RH],DTM_A016RH.DTS_078.DataSet);
end;

procedure TFRM_A016RH.BTN_ADITEMClick(Sender: TObject);
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
              DTM_A016RH.DTS_078.DataSet.Insert;
              {Adiciona campos e valores selecionados}
              DTM_A016RH.DTS_078.DataSet.FieldByName('nidtagodp').AsInteger := 0;
              DTM_A016RH.DTS_078.DataSet.FieldByName('nidtbxorg').AsInteger :=
              DTM_A016RH.QRY_082.ParamByName('nidtbxorg').AsInteger;
              DTM_A016RH.DTS_078.DataSet.FieldByName('nidtbxdpt').AsInteger :=
              FieldByname('nidtbxdpt').AsInteger;
              DTM_A016RH.DTS_078.DataSet.FieldByName('cdescridpt').AsString :=
              FieldByname('cdescridpt').AsString;
              {Grava no destino}
              DTM_A016RH.DTS_078.DataSet.Post;
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

procedure TFRM_A016RH.BTN_RENITEMClick(Sender: TObject);
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
              DTM_A016RH.DTS_082.DataSet.Insert;
              {Adiciona campos e valores selecionados}
              DTM_A016RH.DTS_082.DataSet.FieldByName('nidtbxdpt').AsInteger :=
              FieldByname('nidtbxdpt').AsInteger;
              DTM_A016RH.DTS_082.DataSet.FieldByName('cdescridpt').AsString :=
              FieldByname('cdescridpt').AsString;
              {Grava no destino}
              DTM_A016RH.DTS_082.DataSet.Post;
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

procedure TFRM_A016RH.BTN_ADDTODOSClick(Sender: TObject);
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

procedure TFRM_A016RH.BTN_RENTODOSClick(Sender: TObject);
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

procedure TFRM_A016RH.BTN_ALTERARClick(Sender: TObject);
begin
 Botoes(['Btn_Sair','Btn_Alterar'],'FRM_A016RH',false);
 DTM_A016RH.QRY_078.Edit;
 DTM_A016RH.QRY_082.Edit;
end;

procedure TFRM_A016RH.BTN_CANCELARClick(Sender: TObject);
begin
 Botoes(['Btn_Cancelar','Btn_Gravar',
         'Btn_AdItem','Btn_RenItem',
         'Btn_AddTodos','Btn_RenTodos'],'FRM_A016RH',false);
 DTM_A016RH.QRY_078.CancelUpdates;
 DTM_A016RH.QRY_082.CancelUpdates;
end;

procedure TFRM_A016RH.BTN_GRAVARClick(Sender: TObject);
begin
  {Inicia uma Transação no Banco}
  DMControle.Conexao.StartTransaction;
  DBG_AUT.DataSource.DataSet.DisableControls;
  DBG_DISP.DataSource.DataSet.DisableControls;
  try
    {Aplica as modificações na TBL_UPA}
    DTM_A016RH.QRY_078.ApplyUpdates;
    DTM_A016RH.QRY_078.Refresh;
    DTM_A016RH.QRY_082.CancelUpdates;
    DTM_A016RH.QRY_082.Refresh;
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
         'Btn_AddTodos','Btn_RenTodos'],'FRM_A016RH',false);
end;

procedure TFRM_A016RH.BTN_RETROCEDER2Click(Sender: TObject);
begin
  DBGenerica(DTM_A016RH.DTS_082,'Conexao',0,2);
end;

procedure TFRM_A016RH.BTN_AVANCAR2Click(Sender: TObject);
begin
  DBGenerica(DTM_A016RH.DTS_082,'Conexao',0,3);
end;

procedure TFRM_A016RH.BTN_RETROCEDER1Click(Sender: TObject);
begin
  DBGenerica(DTM_A016RH.DTS_078,'Conexao',0,2);
end;

procedure TFRM_A016RH.BTN_AVANCAR1Click(Sender: TObject);
begin
  DBGenerica(DTM_A016RH.DTS_078,'Conexao',0,3);
end;

procedure TFRM_A016RH.SpeedButton1Click(Sender: TObject);
begin
  oControlForms.AtivaForm('FRM_A017RH',shModal,nil);
end;

procedure TFRM_A016RH.DBG_DISPMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  //chama pesquisa de grid
  if Button = mbRight then
    ChamaPesqGrid(DTM_A016RH.QRY_082,nil,'cdescridpt','Descrição do Departamento');
end;

procedure TFRM_A016RH.DBG_AUTMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  //chama pesquisa de grid
  if Button = mbRight then
    ChamaPesqGrid(DTM_A016RH.QRY_078,nil,'cdescridpt','Descrição do Departamento');
end;

end.



