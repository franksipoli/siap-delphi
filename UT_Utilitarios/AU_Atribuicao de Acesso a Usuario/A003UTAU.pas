unit A003UTAU;

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
  LMDMessageHint, RzLstBox, RzChkLst, Gauges, Mask, ToolEdit, DBCtrls,
  RzListVw, Grids, DBGrids, PageControlEx, Db, DBClient, Ora, Provider,
  OraProvider;


type
  TFRM_A003UTAU = class(TForm)
    LMDGroupBox2: TLMDGroupBox;
    BTN_ADITEM: TSpeedButton;
    BTN_RENTODOS: TSpeedButton;
    BTN_RENITEM: TSpeedButton;
    BTN_ADDTODOS: TSpeedButton;
    LMDPanelFill5: TLMDPanelFill;
    LMDPanelFill1: TLMDPanelFill;
    DBG_APLIC2: TDBGrid;
    DBG_APLIC1: TDBGrid;
    ImageList1: TImageList;
    BTN_CONFIRMAR: TBitBtn;
    BTN_CANCELAR: TBitBtn;
    Label3: TLabel;
    EDT_CNOMEUSU: TEdit;
    CDS_057: TClientDataSet;
    CDS_APLSYS: TClientDataSet;
    OP_057: TOraProvider;
    OP_APLSYS: TOraProvider;
    CDS_057NIDTBL_UPA: TFloatField;
    CDS_057NIDTBL_UP: TFloatField;
    CDS_057NIDTBL_A: TFloatField;
    CDS_057NIDTBL_U: TFloatField;
    CDS_057CPERFIL: TStringField;
    CDS_057CDESCAPLI: TStringField;
    CDS_APLSYSCNOMEUNIT: TStringField;
    CDS_APLSYSCDESCAPLI: TStringField;
    CDS_APLSYSCNOMEBMP: TStringField;
    CDS_APLSYSCNOMEFORM: TStringField;
    CDS_APLSYSCSHOWFORM: TStringField;
    CDS_APLSYSCITENSMENU: TStringField;
    CDS_APLSYSCTITAPLIC: TStringField;
    CDS_APLSYSCCATEGORIA: TStringField;
    CDS_APLSYSNIMGSAIDA: TIntegerField;
    CDS_APLSYSNIDTBL_A: TFloatField;
    CDS_APLSYSNIDTBL_G: TFloatField;
    CDS_APLSYSNAPLICAUX: TIntegerField;
    CDS_APLSYSNIDTBL_PB: TFloatField;
    DTS_057: TOraDataSource;
    DTS_APLSYS: TOraDataSource;
    CDS_057CLC_CEQUIVALE: TStringField;
    CDS_057NIDTBL_PB: TFloatField;
    CDS_057CNOMEUNIT: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBG_APLIC2DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBG_APLIC2DblClick(Sender: TObject);
    procedure BTN_CANCELARClick(Sender: TObject);
    procedure BTN_CONFIRMARClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DBG_APLIC1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure BTN_ADITEMClick(Sender: TObject);
    procedure BTN_RENITEMClick(Sender: TObject);
    procedure BTN_RENTODOSClick(Sender: TObject);
    procedure BTN_ADDTODOSClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure CDS_APLSYSAfterScroll(DataSet: TDataSet);
    procedure CDS_057AfterScroll(DataSet: TDataSet);
    procedure DBG_APLIC1MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure DBG_APLIC2MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure OP_057BeforeUpdateRecord(Sender: TObject; SourceDS: TDataSet;
      DeltaDS: TClientDataSet; UpdateKind: TUpdateKind;
      var Applied: Boolean);
    procedure DBG_APLIC1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    nUltApli : ^Integer;
    nIdApliIni : Integer;
    procedure VerificaChamadaAplicacoes;
  end;

var
  FRM_A003UTAU: TFRM_A003UTAU;

implementation

uses MPLCtrl, UVariaveis, DMCTRL, D003UTAU, CtrlForms, D002UTAU, A002UTAU,
  A014;


{$R *.DFM}

procedure TFRM_A003UTAU.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  {Fecha os CDS e Tira da Memoria a Aplicação}
  CDS_057.Close;
  CDS_APLSYS.Close;
  Action:= oControlForms.Saidas(Self,[DTM_A003UTAU],DTM_A003UTAU.DTS_057.DataSet);
end;

procedure TFRM_A003UTAU.DBG_APLIC2DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  {Pinta linhas do Grid}
  oMetodos.ColorGrid(Sender,Rect,DataCol,Column,State);
  (*{Se não tem equivalência pode colocar figura na célula}
  if DBG_APLIC2.DataSource.DataSet.FieldByName('CLC_CEQUIVALE').IsNull then
    {Pinta Figura na Célula}
    if  Column.FieldName = 'CFIGURA' then
      begin
        DBG_APLIC2.Canvas.FillRect(Rect);
        ImageList1.Draw(DBG_APLIC2.Canvas,Rect.Left+8,Rect.Top+1,0);
      end;
     *)
end;

procedure TFRM_A003UTAU.DBG_APLIC2DblClick(Sender: TObject);
begin
    //chama pesquisa se o campo
      {Verifica na linha selecionada a Celula numero 2 (CFIGURA)}
      (*if DBG_APLIC2.SelectedRows.CurrentRowSelected  and
        (DBG_APLIC2.SelectedIndex = 2) then
        {Se não tem equivalência pode chamar a aplicação de Objetos}
        if DBG_APLIC2.DataSource.DataSet.FieldByName('CLC_CEQUIVALE').IsNull then
          begin
            Application.CreateForm(TDTM_A002UTAU,DTM_A002UTAU);
            Application.CreateForm(TFRM_A002UTAU,FRM_A002UTAU);
            FRM_A002UTAU.EDT_CDESCAPLI.Text :=
            CDS_057.FieldByName('cdescapli').AsString;
            FRM_A002UTAU.nQry_042 := CDS_057.FieldByName('nidtbl_a').AsInteger;
            FRM_A002UTAU.nQry_053 := CDS_057.FieldByName('nidtbl_upa').AsInteger;
            oControlForms.AtivaForm('FRM_A002UTAU',shModal,nil);
          end;*)
end;

procedure TFRM_A003UTAU.BTN_CANCELARClick(Sender: TObject);
begin
  {Cancela as Ações dos CDS e Fecha Aplicação}
  CDS_057.CancelUpdates;
  CDS_APLSYS.CancelUpdates;
  Close;
end;

procedure TFRM_A003UTAU.BTN_CONFIRMARClick(Sender: TObject);
begin
  {Com o CDS_057 Usuario/Perfil/Aplicação}
  with CDS_057 do
    begin
      if nUltApli <> nil then
        nUltApli^ := FieldByName('nidtbl_a').AsInteger;
      First;
      while (not Eof) do
        begin
          {Se tem valor ZERO é uma aplicação NOVA para um perfil de usuario}
          if FieldByName('nidtbl_upa').AsInteger = 0 then
            begin
              {Localiza a aplicação na TBL_A}
              DTM_A003UTAU.QRY_041.Locate('nidtbl_a',
              FieldByName('nidtbl_a').AsInteger,[]);
              {Tenta localizar o Usuario/Perfil}
              if (not DTM_A003UTAU.QRY_055.Locate('nidtbl_u;nidtbl_pb',VarArrayOf([
                  nRetornoObjeto,DTM_A003UTAU.QRY_041.FieldByName('nidtbl_pb').Value]),[])) then
                begin
                  {Se nao tem, localiza em Perfil Basico as informações do perfil}
                  DTM_A003UTAU.QRY_056.Locate('nidtbl_pb',
                  DTM_A003UTAU.QRY_041.FieldByName('nidtbl_pb').Value,[]);
                  {Insere um registro na TBL_UP}
                  DBGenerica(DTM_A003UTAU.DTS_055,'Conexao',1,0);
                  {Passa os valores ao campos da TBL_UP}
                  with DTM_A003UTAU.DTS_055.DataSet do
                    begin
                      FieldByName('nidtbl_up').Value := 0;
                      FieldByName('nidtbl_u').AsInteger := nRetornoObjeto;
                      FieldByName('nidtbl_pb').AsInteger :=
                      DTM_A003UTAU.QRY_056.FieldByName('nidtbl_pb').AsInteger;
                      FieldByName('cperfil').AsString :=
                      Trim(EDT_CNOMEUSU.Text)+'-'+
                      DTM_A003UTAU.QRY_056.FieldByName('csiglaper').AsString;
                      FieldByName('nstatus').AsInteger := 1;
                    end;
                  {Grava TBL_UP}
                  DBGenerica(DTM_A003UTAU.DTS_055,'Conexao',4,1);
                end;
              {Edita registro do CDS_057 TBL_UPA}
              Edit;
              {Passa valores aos campos}
              FieldByName('nidtbl_up').AsInteger :=
              DTM_A003UTAU.QRY_055.FieldByName('nidtbl_up').AsInteger;
              FieldByName('nidtbl_a').AsInteger :=
              DTM_A003UTAU.QRY_041.FieldByName('nidtbl_a').AsInteger;
              FieldByName('nidtbl_u').AsInteger := nRetornoObjeto;
              {Grava}
              Post;
            end;
          Next;
        end;
      {Inicia uma Transação no Banco}
      DMControle.Conexao.StartTransaction;
      try
        {Aplica as modificações na TBL_UPA}
        CDS_057.ApplyUpdates(-1);
        {verifica se o usuario tem acesso a aplicações chamadas por uma aplicação}
        VerificaChamadaAplicacoes;

        {deleta todos os perfis de usuario que não possue aplicações atribuidas e que
         nao tem equivalencias}
        DeletaPerfisNaoUsados;

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

procedure TFRM_A003UTAU.FormShow(Sender: TObject);
  var
    ListaAplic : TStringList;
    cSql : String;
    nPos : Integer;
begin
  if not Acesso(nMatricula,'A003UTAU',DTM_A003UTAU) then
    close;
  FRM_A003UTAU.OnShow := nil;
 {é atribuido ao OnShow do Form o valor nil para que o mesmo seja executado apenas uma vez}
 {pelo fato que se outra aplicação for chamada pela tecla F3, e ao retornar da aplicação que foi chamada pela tecla}
 {o evento OnShow deste form não acontecerá, ou seja não será executado, para permanecer o mesmo status da aplicação}
 {quando o F3 foi chamado}

 ListaAplic := TStringList.Create;
 DMControle.Qry_A.First;
 while not(DMControle.Qry_A.Eof) do
   begin
     ListaAplic.Add(DMControle.Qry_A.FieldByName('nidtbl_a').asString);
     DMControle.Qry_A.Next;
   end;





 DTM_A003UTAU.QRY_APLSYS.Close;
 cSql := DTM_A003UTAU.QRY_APLSYS.SQL.Text;
 DTM_A003UTAU.QRY_APLSYS.Sql.Clear;



 nPos := Pos(':nidtbl_a',cSql);

 Delete(cSql,nPos,9);

 Insert(ListaAplic.CommaText,cSql,nPos);

 DTM_A003UTAU.QRY_APLSYS.SQL.Add(cSql);

 CDS_057.Open;
 CDS_APLSYS.Open;
 if nIdApliIni > -1 then
   begin
     CDS_057.Locate('nidtbl_a',nIdApliIni,[]);
     DBG_APLIC2.SelectedRows.CurrentRowSelected := true;
   end;
end;

procedure TFRM_A003UTAU.DBG_APLIC1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  {Pinta linhas do Grid}
  oMetodos.ColorGrid(Sender,Rect,DataCol,Column,State);
end;

procedure TFRM_A003UTAU.BTN_ADITEMClick(Sender: TObject);
begin
  with DBG_APLIC1.DataSource.DataSet do
    begin
      {desabilita controle visuais na origem}
      DisableControls;
      {Posiciona Tabela de origem}
      First;
      while not Eof do
        begin
          {Se o item estiver selecionado}
          if DBG_APLIC1.SelectedRows.CurrentRowSelected then
            begin
              {inclui um registro novo para um novo item}
              DTS_057.DataSet.Insert;
              {Adiciona campos e valores selecionados}
              DTS_057.DataSet.FieldByName('nidtbl_upa').AsInteger := 0;
              DTS_057.DataSet.FieldByName('nidtbl_up').AsInteger := 0;
              DTS_057.DataSet.FieldByName('nidtbl_u').AsInteger := nRetornoObjeto;
              DTS_057.DataSet.FieldByName('nidtbl_a').AsInteger :=
              DTS_APLSYS.DataSet.FieldByName('nidtbl_a').AsInteger;
              DTS_057.DataSet.FieldByName('nidtbl_pb').AsInteger :=
              DTS_APLSYS.DataSet.FieldByName('nidtbl_pb').AsInteger;
              DTS_057.DataSet.FieldByName('cdescapli').AsString :=
              DTS_APLSYS.DataSet.FieldByName('cdescapli').AsString;
              DTS_057.DataSet.FieldByName('cnomeunit').AsString :=
              DTS_APLSYS.DataSet.FieldByName('cnomeunit').AsString;
              {Grava no destino}
              DTS_057.DataSet.Post;
            end;
          {Próximo Registro}
          Next;
        end;
      {Limpa seleção e deleta registros adicionados}
      DBG_APLIC1.SelectedRows.Delete;
      {Volta origem no primeiro registro}
      First;
      {Habilita controle visuais da origem}
      EnableControls;
    end;
end;

procedure TFRM_A003UTAU.BTN_RENITEMClick(Sender: TObject);
begin
  with DBG_APLIC2.DataSource.DataSet do
    begin

      {desabilita controle visuais na origem}
      DisableControls;
      {Posiciona Tabela de origem}
      First;
      while not Eof do
        begin
          {Se o item estiver selecionado}
          if DBG_APLIC2.SelectedRows.CurrentRowSelected then
            begin
              if DTS_057.DataSet.FieldByName('clc_cequivale').AsString <> '' then
                begin
                  if Sender = BTN_RENITEM then
                    MessageDlg('Você não pode excluir uma aplicação herdada de uma equivalência!',mtError,[mbOk],0);
                  DBG_APLIC2.SelectedRows.CurrentRowSelected := false;
                  Next;
                  continue;
                end;
              {inclui um registro novo para um novo item}
              DTS_APLSYS.DataSet.Insert;
              {Adiciona campos e valores selecionados}
              DTS_APLSYS.DataSet.FieldByName('nidtbl_a').AsInteger :=
              DTS_057.DataSet.FieldByName('nidtbl_a').AsInteger;
              DTS_APLSYS.DataSet.FieldByName('cdescapli').AsString :=
              DTS_057.DataSet.FieldByName('cdescapli').AsString;
              DTS_APLSYS.DataSet.FieldByName('nidtbl_pb').AsInteger :=
              DTS_057.DataSet.FieldByName('nidtbl_pb').AsInteger;
              {Grava no destino}
              DTS_APLSYS.DataSet.Post;
            end;
          {Próximo Registro}
          Next;
        end;
      {Desmarca seleção e delete registros selecionados}
      DBG_APLIC2.SelectedRows.Delete;
      {Volta origem no primeiro registro}
      First;
      {Habilita controle visuais da origem}
      EnableControls;
    end;
end;

procedure TFRM_A003UTAU.BTN_RENTODOSClick(Sender: TObject);
begin
  with DBG_APLIC2.DataSource.DataSet do
    begin
      {desabilita controle visuais na origem}
      DisableControls;
      {Posiciona Tabela de origem}
      First;
      {Seleciona todos}
      while not Eof do
        begin
          DBG_APLIC2.SelectedRows.CurrentRowSelected := true;
          Next;
        end;
      {Executa Retorno de item}
      BTN_RENITEMClick(BTN_RENTODOS);

      {Volta origem no primeiro registro}
      First;
      {Habilita controle visuais da origem}
      EnableControls;
    end;
end;

procedure TFRM_A003UTAU.BTN_ADDTODOSClick(Sender: TObject);
begin
  with DBG_APLIC1.DataSource.DataSet do
    begin
      {desabilita controle visuais na origem}
      DisableControls;
      {Posiciona Tabela de origem}
      First;
      {Seleciona todos}
      while not Eof do
        begin
          DBG_APLIC1.SelectedRows.CurrentRowSelected := true;
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

procedure TFRM_A003UTAU.FormCreate(Sender: TObject);
begin
  nIdApliIni := -1;
end;

procedure TFRM_A003UTAU.CDS_APLSYSAfterScroll(DataSet: TDataSet);
begin
  if (not DataSet.ControlsDisabled) then
    FRM_A003UTAU.DBG_APLIC1.Repaint;
end;

procedure TFRM_A003UTAU.CDS_057AfterScroll(DataSet: TDataSet);
begin
  if (not DataSet.ControlsDisabled) then
    FRM_A003UTAU.DBG_APLIC2.Repaint;
end;

procedure TFRM_A003UTAU.DBG_APLIC1MouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  if Button = mbRight then
    begin
      ChamaPesqGrid(TOraQuery(OP_APLSYS.DataSet),CDS_APLSYS,TDBGrid(Sender).SelectedField.FieldName, TDBGrid(Sender).SelectedField.DisplayLabel);
      TDBGrid(Sender).SelectedRows.Clear;
      TDBGrid(Sender).SelectedRows.CurrentRowSelected := true;
    end;
end;

procedure TFRM_A003UTAU.DBG_APLIC2MouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  if (Button = mbRight) and (TDBGrid(Sender).SelectedIndex = 0) then
    ChamaPesqGrid(TOraQuery(OP_057.DataSet),CDS_057,TDBGrid(Sender).SelectedField.FieldName, TDBGrid(Sender).SelectedField.DisplayLabel);
end;

procedure TFRM_A003UTAU.OP_057BeforeUpdateRecord(Sender: TObject;
  SourceDS: TDataSet; DeltaDS: TClientDataSet; UpdateKind: TUpdateKind;
  var Applied: Boolean);
begin
  //se a aplicação esta sendo inserida no acesso do usuario
  if UpdateKind = ukInsert then
    begin
      //retira da tabela de usuario/aplicacao/objeto os objetos que
      //chamam a aplicação para o usuário atual.
      //Ou seja libera o acesso ao botão para o usuário
      PrepareQryTemp('delete from tbl_uao where nidtbl_uao in ' +
                     '(select tbl_uao.nidtbl_uao from tbl_upa,tbl_uao,tbl_up ' +
                     'where tbl_up.nidtbl_u = '+ IntToStr(nRetornoObjeto) +
                     ' and tbl_upa.nidtbl_up = tbl_up.nidtbl_up and ' +
                     'tbl_uao.nidtbl_upa = tbl_upa.nidtbl_upa and ' +
                     'tbl_uao.nidtbl_o in ' +
                     '(select tbl_o.nidtbl_o from tbl_a, tbl_ao, tbl_o ' +
                     'where tbl_ao.nidtbl_a = tbl_a.nidtbl_a and ' +
                     'tbl_o.nidtbl_o = tbl_ao.nidtbl_o and tbl_o.cnomeunit = ' +
                     QuotedStr(DeltaDS.FieldByName('cnomeunit').asString) + '))');

     DMControle.QryTemp.Close;
     DMControle.QryTemp.SQL.Clear;
    end
  else
    if UpdateKind = ukDelete then
      begin
        //inseri na tabela de usuario/aplicação/objeto
        //das aplicações a qual o usuario tem acesso
        //os objetos que chamam a aplicação
        //que esta sendo deletada
        PrepareQryTemp('insert into tbl_uao( select tbl_o.nidtbl_o, '+ QuotedStr('0') + ' as nidtbl_uao, tbl_upa.nidtbl_upa,' +
                       QuotedStr('') + ' as cherdado  ' +
                       'from tbl_a, tbl_up, tbl_upa, tbl_ao, tbl_o ' +
                       'where tbl_up.nidtbl_u = ' + IntToStr(nRetornoObjeto) +
                       ' and tbl_upa.nidtbl_up = tbl_up.nidtbl_up and tbl_a.nidtbl_a = tbl_upa.nidtbl_a ' +
                       'and tbl_ao.nidtbl_a = tbl_a.nidtbl_a and tbl_o.nidtbl_o = tbl_ao.nidtbl_o ' +
                       'and tbl_o.cnomeunit = ' + QuotedStr(DeltaDS.FieldByName('cnomeunit').asString) + ')');
        DMControle.QryTemp.Close;
        DMControle.QryTemp.SQL.Clear;
      end;

end;

procedure TFRM_A003UTAU.VerificaChamadaAplicacoes;
begin
  DTM_A003UTAU.QRY_TMP.ExecSQL;
  CDS_057.Refresh;
  CDS_057.DisableControls;
  try
    CDS_057.First;
    while not(CDS_057.Eof) do
      begin
        //inseri na tabela usuario/aplicacao/objeto
        //os objetos das aplicações que o usuario tem
        //acesso e que esses objetos chamam aplicações
        //que o usuario não tem acesso.
        //Ou seja retira o acesso ao botao que faz chamada
        //a uma aplicação que o usuario não tem acesso.

        VerificaObjetosAplicacao(CDS_057.FieldByName('nidtbl_upa').asInteger,
                                 CDS_057.FieldByName('cnomeunit').asString,
                                 nRetornoObjeto, nMatricula);

        {PrepareQryTemp('insert into tbl_uao(select tbl_o.nidtbl_o, ' + QuotedStr('0') +
                       ' as nidtbl_uao, ' + QuotedStr(CDS_057.FieldByName('nidtbl_upa').asString) +
                       ' as nidtbl_upa, ' + QuotedStr('') + ' as cherdado from tbl_a,tbl_ao, tbl_o ' +
                       ' where tbl_a.cnomeunit = ' + QuotedStr(CDS_057.FieldByName('cnomeunit').asString) +
                       ' and tbl_ao.nidtbl_a = tbl_a.nidtbl_a and tbl_o.nidtbl_o = tbl_ao.nidtbl_o' +
                       ' and tbl_o.cnomeunit is not null' +
                       ' and tbl_o.cnomeunit not in' +
                       '(select tbl_a.cnomeunit from tbl_up,tbl_upa,tbl_a ' +
                       'where tbl_up.nidtbl_u = ' + IntToStr(nRetornoObjeto) +
                       ' and tbl_upa.nidtbl_up = tbl_up.nidtbl_up and tbl_a.nidtbl_a = tbl_upa.nidtbl_a) ' +
                       'and tbl_o.nidtbl_o not in (select tbl_uao.nidtbl_o from tbl_uao, tbl_upa ' +
                       'where tbl_upa.nidtbl_upa = ' + CDS_057.FieldByName('nidtbl_upa').asString +
                       ' and tbl_uao.nidtbl_upa = tbl_upa.nidtbl_upa))');
        DMControle.QryTemp.Close;
        DMControle.QryTemp.SQL.Clear;}
        CDS_057.Next;
      end;
  finally
    CDS_057.EnableControls;
  end;

end;

procedure TFRM_A003UTAU.DBG_APLIC1DblClick(Sender: TObject);
begin
  BTN_ADITEM.Click;
end;

end.



