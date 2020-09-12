unit A002UTAU;

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
  LMDMessageHint, RzLstBox, RzChkLst, Gauges, Mask, DBCtrls, ToolEdit,
  Grids, DBGrids, Db, MemDS, Ora, Provider, OraProvider, DBClient;


type
  TFRM_A002UTAU = class(TForm)
    LMDGroupBox1: TLMDGroupBox;
    LMDPanelFill5: TLMDPanelFill;
    LMDPanelFill1: TLMDPanelFill;
    BTN_ADITEM: TSpeedButton;
    BTN_RENTODOS: TSpeedButton;
    BTN_RENITEM: TSpeedButton;
    BTN_ADDTODOS: TSpeedButton;
    Label1: TLabel;
    DBG_OBJS2: TDBGrid;
    DBG_OBJS1: TDBGrid;
    BTN_CONFIRMAR: TBitBtn;
    BTN_CANCELAR: TBitBtn;
    CDS_042: TClientDataSet;
    OP_042: TOraProvider;
    DTS_042: TOraDataSource;
    CDS_053: TClientDataSet;
    OP_053: TOraProvider;
    DTS_053: TOraDataSource;
    EDT_CDESCAPLI: TEdit;
    CDS_042NIDTBL_A: TFloatField;
    CDS_042NIDTBL_O: TFloatField;
    CDS_042CFUNCAO: TStringField;
    CDS_042CNOMEUNIT: TStringField;
    CDS_053NIDTBL_O: TFloatField;
    CDS_053NIDTBL_UAO: TFloatField;
    CDS_053NIDTBL_UPA: TFloatField;
    CDS_053CFUNCAO: TStringField;
    CDS_053NIDTBL_A: TFloatField;
    CDS_053CHERDADO: TStringField;
    CDS_053CNOMEUNIT: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BTN_CONFIRMARClick(Sender: TObject);
    procedure BTN_CANCELARClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DBG_OBJS1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBG_OBJS2DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure BTN_ADITEMClick(Sender: TObject);
    procedure BTN_RENITEMClick(Sender: TObject);
    procedure BTN_ADDTODOSClick(Sender: TObject);
    procedure BTN_RENTODOSClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure CDS_042AfterScroll(DataSet: TDataSet);
    procedure CDS_053AfterScroll(DataSet: TDataSet);
    procedure DBG_OBJS1MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure DBG_OBJS2MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure OP_053BeforeUpdateRecord(Sender: TObject; SourceDS: TDataSet;
      DeltaDS: TClientDataSet; UpdateKind: TUpdateKind;
      var Applied: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
     nQry_042, nQry_053 : integer;
     nIdObjetoIni : Integer;
     nIdUsuario : Integer;
     cUsu : String;

  end;

var
  FRM_A002UTAU: TFRM_A002UTAU;

implementation

uses MPLCtrl, UVariaveis, DMCTRL, CtrlForms, D002UTAU;


{$R *.DFM}

procedure TFRM_A002UTAU.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  CDS_042.Close;
  CDS_053.Close;
  Action:= oControlForms.Saidas(Self,[DTM_A002UTAU],DTM_A002UTAU.DTS_053.DataSet);
end;

procedure TFRM_A002UTAU.BTN_CONFIRMARClick(Sender: TObject);
begin
  {Com o CDS_053 Usuario/Perfil/Aplicação/Objeto}
  with CDS_053 do
    begin
      
      DMControle.Conexao.StartTransaction;
      try
        {Aplica as modificações na TBL_UAO}
        CDS_053.ApplyUpdates(-1);
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
    end;
  {Fecha a Aplicação}
  Close;
end;

procedure TFRM_A002UTAU.BTN_CANCELARClick(Sender: TObject);
begin
  {Cancela as Ações dos CDS e Fecha Aplicação}
  CDS_053.CancelUpdates;
  Close;
end;

procedure TFRM_A002UTAU.FormShow(Sender: TObject);
begin
  if not Acesso(nMatricula,'A002UTAU',DTM_A002UTAU) then
    close;
  FRM_A002UTAU.OnShow := nil;
 {é atribuido ao OnShow do Form o valor nil para que o mesmo seja executado apenas uma vez}
 {pelo fato que se outra aplicação for chamada pela tecla F3, e ao retornar da aplicação que foi chamada pela tecla}
 {o evento OnShow deste form não acontecerá, ou seja não será executado, para permanecer o mesmo status da aplicação}
 {quando o F3 foi chamado}
  DTM_A002UTAU.QRY_042.ParamByName('nidtbl_upa').AsInteger := nQry_053;
  DTM_A002UTAU.QRY_053.ParamByName('nidtbl_upa').AsInteger := nQry_053;
  DTM_A002UTAU.QRY_056.ParamByName('nidtbl_u').asInteger := nIdUsuario;
  DTM_A002UTAU.QRY_056.ExecSQL;
  DTM_A002UTAU.QRY_042.ExecSQL;
  DTM_A002UTAU.QRY_053.ExecSQL;
  CDS_042.Open;
  CDS_053.Open;
  if nIdObjetoIni > -1 then
    begin
      if CDS_053.Locate('nidtbl_o',nIdObjetoIni,[]) then
        DBG_OBJS2.SelectedRows.CurrentRowSelected := true;
      if CDS_042.Locate('nidtbl_o',nIdObjetoIni,[]) then
        DBG_OBJS1.SelectedRows.CurrentRowSelected := true;
    end;
end;

procedure TFRM_A002UTAU.DBG_OBJS1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  {Pinta linhas do Grid}
  oMetodos.ColorGrid(Sender,Rect,DataCol,Column,State);
end;

procedure TFRM_A002UTAU.DBG_OBJS2DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  {Pinta linhas do Grid}
  oMetodos.ColorGrid(Sender,Rect,DataCol,Column,State);
end;

procedure TFRM_A002UTAU.BTN_ADITEMClick(Sender: TObject);
begin
  with DBG_OBJS1.DataSource.DataSet do
    begin
      {desabilita controle visuais na origem}
      DisableControls;
      {Posiciona Tabela de origem}
      First;
      while not Eof do
        begin
          {Se o item estiver selecionado}
          if DBG_OBJS1.SelectedRows.CurrentRowSelected then
            begin
              {inclui um registro novo para um novo item}
              DTS_053.DataSet.Insert;
              {Adiciona campos e valores selecionados}
              DTS_053.DataSet.FieldByName('nidtbl_uao').AsInteger := 0;
              DTS_053.DataSet.FieldByName('nidtbl_o').AsInteger :=
              DTS_042.DataSet.FieldByName('nidtbl_o').AsInteger;
              DTS_053.DataSet.FieldByName('nidtbl_upa').AsInteger := nQry_053;
              DTS_053.DataSet.FieldByName('nidtbl_a').AsInteger := nQry_042;
              DTS_053.DataSet.FieldByName('cfuncao').AsString :=
              DTS_042.DataSet.FieldByName('cfuncao').AsString;
              DTS_053.DataSet.FieldByName('cnomeunit').AsString :=
              DTS_042.DataSet.FieldByName('cnomeunit').AsString;
              {Grava no destino}
              DTS_053.DataSet.Post;
            end;
          {Próximo Registro}
          Next;
        end;
      {Limpa seleção e deleta registros adicionados}
      DBG_OBJS1.SelectedRows.Delete;
      {Volta origem no primeiro registro}
      First;
      {Habilita controle visuais da origem}
      EnableControls;
    end;
end;

procedure TFRM_A002UTAU.BTN_RENITEMClick(Sender: TObject);
begin
  with DBG_OBJS2.DataSource.DataSet do
    begin
      {desabilita controle visuais na origem}
      DisableControls;
      {Posiciona Tabela de origem}
      First;
      while not Eof do
        begin
          {Se o item estiver selecionado}
          if DBG_OBJS2.SelectedRows.CurrentRowSelected then
            begin
              {inclui um registro novo para um novo item}
              DTS_042.DataSet.Insert;
              {Adiciona campos e valores selecionados}
              DTS_042.DataSet.FieldByName('nidtbl_o').AsInteger :=
              DTS_053.DataSet.FieldByName('nidtbl_o').AsInteger;
              DTS_042.DataSet.FieldByName('nidtbl_a').AsInteger :=
              DTS_053.DataSet.FieldByName('nidtbl_a').AsInteger;
              DTS_042.DataSet.FieldByName('cfuncao').AsString :=
              DTS_053.DataSet.FieldByName('cfuncao').AsString;
              DTS_042.DataSet.FieldByName('cnomeunit').AsString :=
              DTS_053.DataSet.FieldByName('cnomeunit').AsString;
              {Grava no destino}
              DTS_042.DataSet.Post;
            end;
          {Próximo Registro}
          Next;
        end;
      {Desmarca seleção e delete registros selecionados}
      DBG_OBJS2.SelectedRows.Delete;
      {Volta origem no primeiro registro}
      First;
      {Habilita controle visuais da origem}
      EnableControls;
    end;
end;

procedure TFRM_A002UTAU.BTN_ADDTODOSClick(Sender: TObject);
begin
  with DBG_OBJS1.DataSource.DataSet do
    begin
      {desabilita controle visuais na origem}
      DisableControls;
      {Posiciona Tabela de origem}
      First;
      {Seleciona todos}
      while not Eof do
        begin
          DBG_OBJS1.SelectedRows.CurrentRowSelected := true;
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

procedure TFRM_A002UTAU.BTN_RENTODOSClick(Sender: TObject);
begin
  with DBG_OBJS2.DataSource.DataSet do
    begin
      {desabilita controle visuais na origem}
      DisableControls;
      {Posiciona Tabela de origem}
      First;
      {Seleciona todos}
      while not Eof do
        begin
          DBG_OBJS2.SelectedRows.CurrentRowSelected := true;
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

procedure TFRM_A002UTAU.FormCreate(Sender: TObject);
begin
 nIdObjetoIni := -1;
end;

procedure TFRM_A002UTAU.CDS_042AfterScroll(DataSet: TDataSet);
begin
  if (not DataSet.ControlsDisabled) then
    DBG_OBJS1.Repaint;
end;

procedure TFRM_A002UTAU.CDS_053AfterScroll(DataSet: TDataSet);
begin
  if (not DataSet.ControlsDisabled) then
    DBG_OBJS2.Repaint;
end;

procedure TFRM_A002UTAU.DBG_OBJS1MouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  if Button = mbRight then
    ChamaPesqGrid(TOraQuery(OP_042.DataSet),CDS_042,TDBGrid(Sender).SelectedField.FieldName, TDBGrid(Sender).SelectedField.DisplayLabel);
end;

procedure TFRM_A002UTAU.DBG_OBJS2MouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  if Button = mbRight then
    ChamaPesqGrid(TOraQuery(OP_053.DataSet),CDS_053,TDBGrid(Sender).SelectedField.FieldName, TDBGrid(Sender).SelectedField.DisplayLabel);
end;

procedure TFRM_A002UTAU.OP_053BeforeUpdateRecord(Sender: TObject;
  SourceDS: TDataSet; DeltaDS: TClientDataSet; UpdateKind: TUpdateKind;
  var Applied: Boolean);
  var
    nIdAplic : Integer;
    nIdUpa : Integer;
begin
  with DMControle, DTM_A002UTAU do
    begin
      if DeltaDS.FieldByName('cnomeunit').AsString <> '' then
        begin
          // se estiver retirando o acesso ao botão que chama uma aplicação
          //a aplicação tambem é retirada do acesso do usuário
          if UpdateKind = ukInsert then
            begin
              //delete a aplicação do acesso do usuário
              PrepareQryTemp('delete from tbl_upa where nidtbl_upa = ' +
                             '(select tbl_upa.nidtbl_upa from tbl_upa,tbl_up ' +
                             'where tbl_up.nidtbl_u = '+ IntToStr(nIdUsuario) +
                             ' and tbl_upa.nidtbl_up = tbl_up.nidtbl_up and ' +
                             'tbl_upa.nidtbl_a = (select nidtbl_a from tbl_a where cnomeunit = ' +
                              QuotedStr(DeltaDS.FieldByName('cnomeunit').AsString) + '))');


              QryTemp.Close;
              QryTemp.SQL.Clear;
            end
          else
            //se estiver tanto acesso ao botão que chama a aplicação
            //é colocada a aplicação no acesso do usuario
            if UpdateKind = ukDelete then
              begin
                //pega informações da aplicação que é chamada pelo botão
                PrepareQryTemp('select tbl_a.nidtbl_a, tbl_a.nidtbl_pb, tbl_pb.csiglaper  from tbl_a, tbl_pb ' +
                               'where  tbl_pb.nidtbl_pb = tbl_a.nidtbl_pb and cnomeunit = ' +
                               QuotedStr(DeltaDS.FieldByName('cnomeunit').AsString));

                //verifica se o usuario ja possue um perfil para a aplicação
                if not(QRY_056.Locate('nidtbl_pb', QryTemp.FieldByName('nidtbl_pb').asInteger,[])) then
                  begin
                    //inseri um novo perfil para o usuario
                    DBGenerica(DTS_056,'Conexao',1,0,nil,false);
                    QRY_056.FieldByName('nidtbl_up').AsInteger := 0;
                    QRY_056.FieldByName('nidtbl_u').AsInteger := nIdUsuario;
                    QRY_056.FieldByName('nidtbl_pb').AsInteger :=
                    QryTemp.FieldByName('nidtbl_pb').asInteger;
                    QRY_056.FieldByName('cperfil').AsString := cUsu + '-' +
                    QryTemp.FieldByName('csiglaper').asString;
                    QRY_056.FieldByName('nstatus').AsInteger := 1;
                    //grava o novo perfil
                    DBGenerica(DTS_056,'Conexao',4,1,nil,false);
                  end;

                QRY_056.Refresh;
                QRY_056.Locate('nidtbl_pb', QryTemp.FieldByName('nidtbl_pb').asInteger,[]);

                nIdAplic := QryTemp.FieldByName('nidtbl_a').asInteger;

                QryTemp.Close;
                QryTemp.SQL.Clear;

                //inseri a aplicação no acesso do usuario
                PrepareQryTemp('insert into tbl_upa (nidtbl_upa,nidtbl_up,nidtbl_a) values ' +
                               '(0,' + QRY_056.FieldByName('nidtbl_up').asString + ','+ IntToStr(nIdAplic) +')' );
                QryTemp.Close;
                QryTemp.SQL.Clear;

                PrepareQryTemp('select nidtbl_upa from tbl_upa where nidtbl_up = ' + QRY_056.FieldByName('nidtbl_up').asString +
                               ' and nidtbl_a = ' + IntToStr(nIdAplic));
                nIdUpa := QryTemp.FieldByName('nidtbl_upa').asInteger;
                QryTemp.Close;
                QryTemp.SQL.Clear;

                VerificaObjetosAplicacao(nIdUpa,DeltaDS.FieldByName('cnomeunit').asString,nIdUsuario,nMatricula);

              end;
        end;
    end;


end;

end.


