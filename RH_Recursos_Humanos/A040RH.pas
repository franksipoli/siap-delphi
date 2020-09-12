unit A040RH;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  RxLookup, StdCtrls, RxDBComb, Grids, DBGrids, DBCtrls, Mask, ToolEdit,
  RXDBCtrl, LMDCustomControl, LMDCustomPanel, LMDCustomBevelPanel,
  LMDCustomParentPanel, LMDCustomPanelFill, LMDPanelFill, Buttons, ExtCtrls,
  LMDCustomGroupBox, LMDGroupBox, DB, LMDSimplePanel, ComCtrls,
  PageControlEx, ImgList;

type
  TFRM_A040RH = class(TForm)
    GRP_CARGO: TLMDGroupBox;
    Panel2: TPanel;
    Btn_Alterar: TSpeedButton;
    BTN_SAIR: TSpeedButton;
    LMDPanelFill3: TLMDPanelFill;
    BTN_RETROCEDER1: TSpeedButton;
    BTN_AVANCAR1: TSpeedButton;
    DBG_DISP: TDBGrid;
    DBG_AUT: TDBGrid;
    LMDPanelFill1: TLMDPanelFill;
    BTN_RETROCEDER2: TSpeedButton;
    BTN_AVANCAR2: TSpeedButton;
    BTN_ADITEM: TSpeedButton;
    BTN_ADDTODOS: TSpeedButton;
    BTN_RENITEM: TSpeedButton;
    BTN_RENTODOS: TSpeedButton;
    BTN_GRAVAR: TSpeedButton;
    BTN_CANCELAR: TSpeedButton;
    procedure BTN_SAIRClick(Sender: TObject);
    procedure BTN_RETROCEDER1Click(Sender: TObject);
    procedure BTN_AVANCAR1Click(Sender: TObject);
    procedure BTN_RETROCEDER2Click(Sender: TObject);
    procedure BTN_AVANCAR2Click(Sender: TObject);
    procedure BTN_ADITEMClick(Sender: TObject);
    procedure BTN_RENITEMClick(Sender: TObject);
    procedure BTN_ADDTODOSClick(Sender: TObject);
    procedure BTN_RENTODOSClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Btn_AlterarClick(Sender: TObject);
    procedure BTN_CANCELARClick(Sender: TObject);
    procedure BTN_GRAVARClick(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
    nIdCargo : Integer;
  end;

var
  FRM_A040RH: TFRM_A040RH;

implementation

uses D040RH, MPLCtrl, UVariaveis, DMCTRL;

{$R *.DFM}

procedure TFRM_A040RH.BTN_SAIRClick(Sender: TObject);
begin
   Close ;
end;

procedure TFRM_A040RH.BTN_RETROCEDER1Click(Sender: TObject);
begin
  //horario anterior disponivel
  DTM_A040RH.DTS_089.DataSet.Prior;
end;

procedure TFRM_A040RH.BTN_AVANCAR1Click(Sender: TObject);
begin
  //proximo horario disponivel
  DTM_A040RH.DTS_089.DataSet.Next;
end;

procedure TFRM_A040RH.BTN_RETROCEDER2Click(Sender: TObject);
begin
  //horario anterior do cargo
  DTM_A040RH.DTS_079.DataSet.Prior;
end;

procedure TFRM_A040RH.BTN_AVANCAR2Click(Sender: TObject);
begin
  //proximo horario do cargo
  DTM_A040RH.DTS_079.DataSet.Next;
end;

procedure TFRM_A040RH.BTN_ADITEMClick(Sender: TObject);
begin
  with DBG_DISP.DataSource.DataSet, DTM_A040RH do
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
              DTS_079.DataSet.Insert;
              {Adiciona campos e valores selecionados}
              DTS_079.DataSet.FieldByName('nidtbxqhr').AsInteger :=
              DTS_089.DataSet.FieldByName('nidtbxqhr').AsInteger;
              DTS_079.DataSet.FieldByName('nidcadcrg').AsInteger :=
              DTS_073.DataSet.FieldByname('nidcadcrg').AsInteger;
              DTS_079.DataSet.FieldByName('nperiniini').AsString :=
              DTS_089.DataSet.FieldByName('nperiniini').asString;
              DTS_079.DataSet.FieldByName('nperinifim').AsString :=
              DTS_089.DataSet.FieldByName('nperinifim').asString;
              DTS_079.DataSet.FieldByName('nperfinini').AsString :=
              DTS_089.DataSet.FieldByName('nperfinini').asString;
              DTS_079.DataSet.FieldByName('nperfinfim').AsString :=
              DTS_089.DataSet.FieldByName('nperfinfim').asString;
              {Grava no destino}
              DTS_079.DataSet.Post;
            end;
          {Pr�ximo Registro}
          Next;
        end;
      {Limpa sele��o e deleta registros adicionados}
      DBG_DISP.SelectedRows.Delete;
      {Volta origem no primeiro registro}
      First;
      {Habilita controle visuais da origem}
      EnableControls;
    end;
end;

procedure TFRM_A040RH.BTN_RENITEMClick(Sender: TObject);
  var
   nRegs : Integer;
begin
  with DBG_AUT.DataSource.DataSet, DTM_A040RH, DMControle do
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
              PrepareQryTemp('select nidtagffu from tagffu where nidtagqhr = ' +
              DTS_079.DataSet.FieldByName('nidtagqhr').AsString );
              nRegs := QryTemp.RecordCount;
              QryTemp.Close;
              QryTemp.SQL.Clear;
              if nRegs > 0 then
                begin
                  if Sender = BTN_RENITEM then
                    MessageDlg('Este hor�rio do cargo est� sendo usado por algum funcion�rio!' + #13 +
                    'Portanto n�o pode ser retirado do cargo.',mtInformation,[mbOk],0);
                  DBG_AUT.SelectedRows.CurrentRowSelected := false;  
                  Next;  
                  continue;  

                end;

              {inclui um registro novo para um novo item}
              DTS_089.DataSet.Insert;
              {Adiciona campos e valores selecionados}
              DTS_089.DataSet.FieldByName('nperiniini').AsString :=
              DTS_079.DataSet.FieldByName('nperiniini').asString;
              DTS_089.DataSet.FieldByName('nperinifim').AsString :=
              DTS_079.DataSet.FieldByName('nperinifim').asString;
              DTS_089.DataSet.FieldByName('nperfinini').AsString :=
              DTS_079.DataSet.FieldByName('nperfinini').asString;
              DTS_089.DataSet.FieldByName('nperfinfim').AsString :=
              DTS_079.DataSet.FieldByName('nperfinfim').asString;
              {Grava no destino}
              DTS_089.DataSet.Post;
            end;
          {Pr�ximo Registro}
          Next;
        end;
      {Desmarca sele��o e delete registros selecionados}
      DBG_AUT.SelectedRows.Delete;
      {Volta origem no primeiro registro}
      First;
      {Habilita controle visuais da origem}
      EnableControls;
    end;
end;

procedure TFRM_A040RH.BTN_ADDTODOSClick(Sender: TObject);
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
      {Executa adi��o de item}
      BTN_ADITEM.Click;
      {Volta origem no primeiro registro}
      First;
      {Habilita controle visuais da origem}
      EnableControls;
    end;
end;

procedure TFRM_A040RH.BTN_RENTODOSClick(Sender: TObject);
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

procedure TFRM_A040RH.FormShow(Sender: TObject);
begin
  //verifica o acesso do usu�rio na aplica��o
  if not Acesso(nMatricula,'A040RH',DTM_A040RH) then
    close;
  //iniciliza o status dos bot�es
  Botoes(['Btn_Cancelar','Btn_Gravar',
          'Btn_AdItem','Btn_RenItem',
          'Btn_AddTodos','Btn_RenTodos'],'FRM_A040RH',false);

  //seleciona o cargo que foi passado como parametro para o
  //form

  DTM_A040RH.QRY_073.ParamByName('nidcadcrg').asInteger := nIdCargo;
  DTM_A040RH.QRY_073.ExecSql;

  GRP_CARGO.Caption := '  Cargo ' +
  DTM_A040RH.QRY_073.FieldByName('cdescritcr').asString + ' de ' +
  DTM_A040RH.QRY_073.FieldByName('cdescricrg').asString + ' '; 


  FRM_A040RH.OnShow := nil;
  {� atribuido ao OnShow do Form o valor nil para que o mesmo seja executado apenas uma vez}
  {pelo fato que se outra aplica��o for chamada pela tecla F3, e ao retornar da aplica��o que foi chamada pela tecla}
  {o evento OnShow deste form n�o acontecer�, ou seja n�o ser� executado, para permanecer o mesmo status da aplica��o}
  {quando o F3 foi chamado}
end;

procedure TFRM_A040RH.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  //sai da aplica��o
  Action:= oControlForms.Saidas(Self,[DTM_A040RH],DTM_A040RH.DTS_073.DataSet);
end;

procedure TFRM_A040RH.Btn_AlterarClick(Sender: TObject);
begin
 //muda o status dos bot�es para habilitar
 //a grava��o ou cancelamento de alguma altera��o
 //mas tabelas
 Botoes(['Btn_Sair','Btn_Alterar'],'FRM_A040RH',false);
end;

procedure TFRM_A040RH.BTN_CANCELARClick(Sender: TObject);
begin
  with DTM_A040RH do
    begin
      //cancela alguma altera��o na tabela de horarios disponiveis
      DBGenerica(DTS_089,'Conexao',3,0,nil,true);
      //cancela alguma altera��o na tabela de horarios do cargo
      DBGenerica(DTS_079,'Conexao',3,0,nil,true);
      //atualiza as informa��es
      QRY_089.Refresh;
      QRY_079.Refresh;
    end;

  //muda o status dos bot�es
  Botoes(['Btn_Cancelar','Btn_Gravar',
          'Btn_AdItem','Btn_RenItem',
          'Btn_AddTodos','Btn_RenTodos'],'FRM_A040RH',false);


end;

procedure TFRM_A040RH.BTN_GRAVARClick(Sender: TObject);
begin
  with DTM_A040RH, DMControle do
    begin
      //cancela alguma altera��o na tabela de horarios disponiveis
      DBGenerica(DTS_089,'Conexao',3,0,nil,true);
      //abre transa��o com o banco de dados
      Conexao.StartTransaction;
      try
         //grava as altera��es feitas na tabela de horarios do cargo
         DBGenerica(DTS_079,'Conexao',4,1,nil,true);
         //muda o status dos bot�es
         Botoes(['Btn_Cancelar','Btn_Gravar',
              'Btn_AdItem','Btn_RenItem',
              'Btn_AddTodos','Btn_RenTodos'],'FRM_A040RH',false);
         //commit as informa��es
         Conexao.Commit;
      except
        //se aconteceu algum erro
        On E: Exception do
          begin
            //desfaz as altera��es no banco
            Conexao.Rollback;
            //avisa ao usu�rio
            MessageDlg('N�o foi possivel realizar a opera��o!' + #13 +
                       'Erro : ' + E.Message,mtInformation,[mbOk],0);
          end;
      end;

    end;

end;

end.



