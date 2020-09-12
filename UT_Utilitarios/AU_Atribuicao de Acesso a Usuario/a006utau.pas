{*******************************************************************************
 *                                                                             *
 *  Equivalencia                                                               *
 *  Aplicação para atribuição de equivalencia                                  *
 *  no acesso do usuario                                                       *
 *                                                                             *
 *                                                                             *
 *  Programador Frank Sipoli                                                   *
 *                                                                             *
 *  Data da Ultima Atualização : 04/05/2004                                    *
 *  Atualizado por: Leandro Ribas                                              *
 *                                                                             *
 *  Atualização da aplicação para tratar os usuarios                           *
 *  que autorizaram a operação de equivalencia                                 *
 *                                                                              *
 *******************************************************************************
}

unit A006UTAU;

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
  Grids, DBGrids, Db, MemDS, DBClient, Provider, OraProvider, Ora;


type
  TFRM_A006UTAU = class(TForm)
    LMDGroupBox1: TLMDGroupBox;
    LMDPanelFill5: TLMDPanelFill;
    LMDPanelFill1: TLMDPanelFill;
    BTN_ADITEM: TSpeedButton;
    BTN_RENTODOS: TSpeedButton;
    BTN_RENITEM: TSpeedButton;
    BTN_ADDTODOS: TSpeedButton;
    Label1: TLabel;
    DBG_PERFIL2: TDBGrid;
    DBG_PERFIL1: TDBGrid;
    BTN_CONFIRMAR: TBitBtn;
    BTN_CANCELAR: TBitBtn;
    ImageList1: TImageList;
    CDS_055: TClientDataSet;
    OP_055: TOraProvider;
    DTS_055: TOraDataSource;
    OP_059: TOraProvider;
    DTS_059: TOraDataSource;
    CDS_055NIDTBL_UP: TFloatField;
    CDS_055CPERFIL: TStringField;
    CDS_055CNOMEPER: TStringField;
    CDS_055NIDTBL_U: TFloatField;
    CDS_055NIDTBL_PB: TFloatField;
    CDS_055NSTATUS: TFloatField;
    CDS_055CFIGURA: TStringField;
    EDT_CNOMEUSU: TEdit;
    CDS_059: TClientDataSet;
    CDS_059NIDTBL_EQV: TFloatField;
    CDS_059NIDTBL_UP: TFloatField;
    CDS_059NCODEQV: TFloatField;
    CDS_059CPERFIL: TStringField;
    CDS_059DAT_PERFIL: TStringField;
    CDS_055CSIGLAPER: TStringField;
    CDS_059CHERDADO: TStringField;
    CDS_059NIDTBL_U: TFloatField;
    CDS_059CNOMEUSU: TStringField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure DBG_PERFIL1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure BTN_CONFIRMARClick(Sender: TObject);
    procedure BTN_CANCELARClick(Sender: TObject);
    procedure DBG_PERFIL1DblClick(Sender: TObject);
    procedure DBG_PERFIL2DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure BTN_ADITEMClick(Sender: TObject);
    procedure BTN_RENITEMClick(Sender: TObject);
    procedure CDS_055NSTATUSGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure CDS_055NSTATUSSetText(Sender: TField; const Text: String);
    procedure BTN_ADDTODOSClick(Sender: TObject);
    procedure BTN_RENTODOSClick(Sender: TObject);
    procedure CDS_055AfterScroll(DataSet: TDataSet);
    procedure CDS_059AfterScroll(DataSet: TDataSet);
    procedure DBG_PERFIL1MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
  private
    { Private declarations }
  public
    { Public declarations }

    nCodigoUsuario : Integer;
    AcaoUsuario : ^Integer;
  end;

var
  FRM_A006UTAU: TFRM_A006UTAU;

implementation

uses D006UTAU, MPLCtrl, UVariaveis, DMCTRL, CtrlForms, A009UTAU;


{$R *.DFM}

procedure TFRM_A006UTAU.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  {Fecha os CDS e Tira da Memoria a Aplicação}
  CDS_055.Close;
  CDS_059.Close;
  Action:= oControlForms.Saidas(Self,[DTM_A006UTAU],DTM_A006UTAU.DTS_059.DataSet);
end;

procedure TFRM_A006UTAU.FormShow(Sender: TObject);

begin
  if not Acesso(nMatricula,'A006UTAU',DTM_A006UTAU) then
    close;
  FRM_A006UTAU.OnShow := nil;
 {é atribuido ao OnShow do Form o valor nil para que o mesmo seja executado apenas uma vez}
 {pelo fato que se outra aplicação for chamada pela tecla F3, e ao retornar da aplicação que foi chamada pela tecla}
 {o evento OnShow deste form não acontecerá, ou seja não será executado, para permanecer o mesmo status da aplicação}
 {quando o F3 foi chamado}

  //se o operador for admin seleciona todos os perfis do sistema
  if isAdmin then
    begin
      with DTM_A006UTAU do
        begin
          QRY_055.SQL.Text :='select tbl_up.*, tbl_pb.cnomeper, tbl_pb.csiglaper ' +
            'from tbl_up, tbl_pb where ' +
            'tbl_up.nidtbl_up not in(select tbl_eqv.ncodeqv ' +
               'from tbl_eqv, tbl_up, tbl_up up ' +
               'where tbl_up.nidtbl_u = :nidusuario and ' +
               'tbl_eqv.nidtbl_up = tbl_up.nidtbl_up) and ' +
               'tbl_up.nidtbl_up not in( select nidtbl_up from tbl_up ' +
               'where nidtbl_u = :nidusuario) ' +
            'and tbl_pb.nidtbl_pb = tbl_up.nidtbl_pb order by tbl_up.cperfil';
          CDS_055.FetchParams;
          QRY_059.SQL.Text := 'select tbl_eqv.*, tbl_up.cperfil, up.cperfil as dat_perfil, tbl_u.cnomeusu ' +
            'from tbl_eqv, tbl_up, tbl_up up, tbl_u ' +
            'where tbl_up.nidtbl_u = :nidtbl_u and ' +
            'tbl_eqv.nidtbl_up = tbl_up.nidtbl_up and ' +
            'up.nidtbl_up = tbl_eqv.ncodeqv and ' +
            'tbl_u.nidtbl_u = tbl_eqv.nidtbl_u';
          CDS_059.FetchParams;
        end;
    end
  else
    begin
      //senão e filtrado os perfis do sistema que seja do proprio operador
      //e os perfis que contenham alguma aplicação que foi atribuida pelo
      //operador
      CDS_055.Params.ParamByName('nidtbl_u').AsInteger := nMatricula;
      CDS_059.Params.ParamByName('nidoperador').AsInteger := nMatricula;
    end;

  CDS_055.Params.ParamByName('nidusuario').AsInteger := nCodigoUsuario;
  CDS_059.Params.ParamByName('nidtbl_u').AsInteger := nCodigoUsuario;
  CDS_055.Open;
  CDS_059.Open;
  DBG_PERFIL1.Repaint;
  DBG_PERFIL2.Repaint;
  //indica a ação do operador
  if AcaoUsuario <> nil then
    AcaoUsuario^ := mrCancel;
end;

procedure TFRM_A006UTAU.DBG_PERFIL1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  {Pinta linhas do Grid}
  oMetodos.ColorGrid(Sender,Rect,DataCol,Column,State);
  {Pinta Figura na Célula}
  if  Column.FieldName = 'CFIGURA' then
    begin
      DBG_PERFIL1.Canvas.FillRect(Rect);
      ImageList1.Draw(DBG_PERFIL1.Canvas,Rect.Left+8,Rect.Top+1,0);
    end;
end;

procedure TFRM_A006UTAU.BTN_CONFIRMARClick(Sender: TObject);
var nPerfilBase : Integer;
begin
  with DTS_059.DataSet do
    begin
      {desabilita controle visuais na origem}
      DisableControls;
      {Posiciona Tabela de origem}
      First;
      //loop na tabela de equivalencias
      while (not Eof) do
        begin
          //se não houver id do perfil
          if FieldByName('nidtbl_up').AsInteger = 0 then
            begin
              //tenta localizar a id do perfil
              DTM_A006UTAU.DTS_055_01.DataSet.Locate('nidtbl_up',
              FieldByName('ncodeqv').AsInteger,[]);
              nPerfilBase := DTM_A006UTAU.DTS_055_01.DataSet.FieldByName('nidtbl_pb').AsInteger;
              PrepareQryTemp('select nidtbl_up, cperfil from tbl_up where nidtbl_pb = '+
              IntToStr(nPerfilBase)+ ' and nidtbl_u  = '+IntToStr(nCodigoUsuario));
              DMControle.QryTemp.ExecSQL;
              //se não encontrou o perfil, cria um novo
              if DMControle.QryTemp.RecordCount = 0 then
                begin
                   DBGenerica(DTM_A006UTAU.DTS_055_01,'Conexao',1,0,nil);
                   DTM_A006UTAU.DTS_055_01.DataSet.FieldByName('nidtbl_up').AsInteger := 0;
                   DTM_A006UTAU.DTS_055_01.DataSet.FieldByName('nidtbl_u').AsInteger := nCodigoUsuario;
                   DTM_A006UTAU.DTS_055_01.DataSet.FieldByName('nidtbl_pb').AsInteger := nPerfilBase;
                   DTM_A006UTAU.DTS_055_01.DataSet.FieldByName('cperfil').AsString :=
                   FieldByName('cperfil').AsString;
                   DTM_A006UTAU.DTS_055_01.DataSet.FieldByName('nstatus').AsInteger := 1;
                   DBGenerica(DTM_A006UTAU.DTS_055_01,'Conexao',4,1,nil);
                   Edit;
                   FieldByName('nidtbl_up').AsInteger :=
                   DTM_A006UTAU.DTS_055_01.DataSet.FieldByName('nidtbl_up').AsInteger;
                   FieldByName('cperfil').AsString :=
                   DTM_A006UTAU.DTS_055_01.DataSet.FieldByName('cperfil').AsString;
                end
              else
                begin
                   //se encontrou o perfil apenas pega a sua id
                   //e atribui ao campo da tabela de equivalencia
                   Edit;
                   FieldByName('nidtbl_up').AsInteger :=
                   DMControle.QryTemp.FieldByName('nidtbl_up').AsInteger;
                   FieldByName('cperfil').AsString :=
                   DMControle.QryTemp.FieldByName('cperfil').AsString;
                end;
            end;
          Next;
        end;
      {Inicia uma Transação no Banco}
      DMControle.Conexao.StartTransaction;
      try
        {Aplica as modificações na TBL_EQV}
        CDS_059.ApplyUpdates(-1);
        CDS_059.Refresh;

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
      {habilita controle visuais na origem}
      EnableControls;
    end;
  //indica a ação do operador
  if AcaoUsuario <> nil then
    AcaoUsuario^ := mrOk;
  Close;
end;

procedure TFRM_A006UTAU.BTN_CANCELARClick(Sender: TObject);
begin
  CDS_055.CancelUpdates;
  CDS_059.CancelUpdates;
  Close;
end;

procedure TFRM_A006UTAU.DBG_PERFIL1DblClick(Sender: TObject);
begin
    {Verifica na linha selecionada a Celula numero 2 (CFIGURA)}
    if DBG_PERFIL1.SelectedRows.CurrentRowSelected  and
      (DBG_PERFIL1.SelectedIndex = 2) then
      begin
        //chama aplicativo para mostrar as aplicações do
        //perfil, mesmo as aplicações que o perfil recebe como
        //equivalencia
        Application.CreateForm(TFRM_A009UTAU,FRM_A009UTAU);
        FRM_A009UTAU.nPerfilBase := CDS_055.FieldByName('nidtbl_pb').AsInteger;
        FRM_A009UTAU.nUsuario := CDS_055.FieldByName('nidtbl_u').AsInteger;
        FRM_A009UTAU.PNL_CONSULTA.Caption := FRM_A009UTAU.PNL_CONSULTA.Caption +
        Trim(CDS_055.FieldByName('cperfil').AsString);
        FRM_A009UTAU.ShowModal;
      end;
end;

procedure TFRM_A006UTAU.DBG_PERFIL2DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  {Pinta linhas do Grid}
  oMetodos.ColorGrid(Sender,Rect,DataCol,Column,State);
end;


procedure TFRM_A006UTAU.BTN_ADITEMClick(Sender: TObject);
begin
  with DBG_PERFIL1.DataSource.DataSet do
    begin
      {desabilita controle visuais na origem}
      DisableControls;
      {Posiciona Tabela de origem}
      First;
      while not Eof do
        begin
          {Se o item estiver selecionado}
          if DBG_PERFIL1.SelectedRows.CurrentRowSelected then
            begin
              {inseri na tabela de equivalencia o novo registro}
              DTS_059.DataSet.Insert;
              {Adiciona campos e valores selecionados}
              DTS_059.DataSet.FieldByName('nidtbl_eqv').AsInteger := 0;
              DTS_059.DataSet.FieldByName('nidtbl_up').AsInteger := 0;
              DTS_059.DataSet.FieldByName('ncodeqv').AsInteger :=
              DTS_055.DataSet.FieldByName('nidtbl_up').AsInteger;
              DTS_059.DataSet.FieldByName('cperfil').AsString :=
              Trim(EDT_CNOMEUSU.Text)+'-'+Copy(Trim(DTS_055.DataSet.FieldByName('cperfil').AsString),
              Pos('-',Trim(DTS_055.DataSet.FieldByName('cperfil').AsString))+1,length(
              Trim(DTS_055.DataSet.FieldByName('cperfil').AsString))-
              Pos('-',Trim(DTS_055.DataSet.FieldByName('cperfil').AsString)));
              DTS_059.DataSet.FieldByName('dat_perfil').AsString :=
              DTS_055.DataSet.FieldByName('cperfil').AsString;
              DTS_059.DataSet.FieldByName('cnomeusu').AsString := cNomeUsuario;
              DTS_059.DataSet.FieldByName('nidtbl_u').AsInteger := nMatricula;
              {grava na tabela de equivalencia, em cache}
              DTS_059.DataSet.Post;
            end;
          {Próximo Registro}
          Next;
        end;
      {Limpa seleção e deleta registros adicionados}
      DBG_PERFIL1.SelectedRows.Delete;
      {Volta origem no primeiro registro}
      First;
      {Habilita controle visuais da origem}
      EnableControls;
    end;
end;

procedure TFRM_A006UTAU.BTN_RENITEMClick(Sender: TObject);
begin
  with DBG_PERFIL2.DataSource.DataSet do
    begin
      {desabilita controle visuais na origem}
      DisableControls;
      {Posiciona Tabela de origem}
      First;
      while not Eof do
        begin
          {Se o item estiver selecionado}
          if DBG_PERFIL2.SelectedRows.CurrentRowSelected then
            begin
              {inclui um registro novo para um novo item}
              DTS_055.DataSet.Insert;
              {Adiciona campos e valores selecionados}
              DTS_055.DataSet.FieldByName('nidtbl_u').AsInteger := 0;
              DTS_055.DataSet.FieldByName('nidtbl_pb').AsInteger := 0;
              DTS_055.DataSet.FieldByName('nidtbl_up').AsInteger :=
              DTS_059.DataSet.FieldByName('ncodeqv').AsInteger;
              DTS_055.DataSet.FieldByName('cperfil').AsString :=
              DTS_059.DataSet.FieldByName('dat_perfil').AsString;
              DTS_055.DataSet.FieldByName('nstatus').AsInteger := 1;
              {Grava no destino}
              DTS_055.DataSet.Post;
            end;
          {Próximo Registro}
          Next;
        end;
      {Desmarca seleção e delete registros selecionados}
      DBG_PERFIL2.SelectedRows.Delete;
      {Volta origem no primeiro registro}
      First;
      {Habilita controle visuais da origem}
      EnableControls;
    end;
end;


procedure TFRM_A006UTAU.CDS_055NSTATUSGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  if Sender.AsString = '0' then
    Text := 'Não';
  if Sender.AsString = '1' then
    Text := 'Sim';
end;

procedure TFRM_A006UTAU.CDS_055NSTATUSSetText(Sender: TField;
  const Text: String);
begin
  if Text = 'Sim' then
    Sender.AsString := '1';
  if Text = 'Não' then
    Sender.AsString := '0';
end;

procedure TFRM_A006UTAU.BTN_ADDTODOSClick(Sender: TObject);
begin
  with DBG_PERFIL1.DataSource.DataSet do
    begin
      {desabilita controle visuais na origem}
      DisableControls;
      {Posiciona Tabela de origem}
      First;
      {Seleciona todos}
      while not Eof do
        begin
          DBG_PERFIL1.SelectedRows.CurrentRowSelected := true;
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

procedure TFRM_A006UTAU.BTN_RENTODOSClick(Sender: TObject);
begin
  with DBG_PERFIL2.DataSource.DataSet do
    begin
      {desabilita controle visuais na origem}
      DisableControls;
      {Posiciona Tabela de origem}
      First;
      {Seleciona todos}
      while not Eof do
        begin
          DBG_PERFIL2.SelectedRows.CurrentRowSelected := true;
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

procedure TFRM_A006UTAU.CDS_055AfterScroll(DataSet: TDataSet);
begin
  if (not DataSet.ControlsDisabled) then
    DBG_PERFIL1.Repaint;
end;

procedure TFRM_A006UTAU.CDS_059AfterScroll(DataSet: TDataSet);
begin
  if (not DataSet.ControlsDisabled) then
    DBG_PERFIL2.Repaint;
end;

procedure TFRM_A006UTAU.DBG_PERFIL1MouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  if Button = mbRight then
    ChamaPesqGrid(TOraQuery(OP_055.DataSet),CDS_055,TDBGrid(Sender).SelectedField.FieldName, TDBGrid(Sender).SelectedField.DisplayLabel);
end;

end.




