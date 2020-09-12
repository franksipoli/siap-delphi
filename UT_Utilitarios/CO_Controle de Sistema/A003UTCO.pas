unit A003UTCO;

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
  RXDBCtrl, Grids, DBGrids, PageControlEx, RxLookup, RxDBComb, DB, lmdstdcA,
  RXSpin, Spin;


type
  TFRM_A003UTCO = class(TForm)
    Panel2: TPanel;
    Btn_Incluir: TSpeedButton;
    Btn_Alterar: TSpeedButton;
    Btn_Gravar: TSpeedButton;
    Btn_Localizar: TSpeedButton;
    Btn_Imprimir: TSpeedButton;
    BTN_SAIR: TSpeedButton;
    Btn_Avancar: TSpeedButton;
    Btn_Retroceder: TSpeedButton;
    Btn_Cancelar: TSpeedButton;
    LMDGroupBox1: TLMDGroupBox;
    DED_CNOMEUNIT: TDBEdit;
    DED_CDESCAPLI: TDBEdit;
    DED_CCATEGORIA: TDBEdit;
    DED_CTITAPLIC: TDBEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    DBC_CNOMEBMP: TRxDBComboEdit;
    Label5: TLabel;
    Label6: TLabel;
    PageControlEx1: TPageControlEx;
    TabSheet1: TTabSheet;
    LMDGroupBox2: TLMDGroupBox;
    LMDPanelFill5: TLMDPanelFill;
    Btn_Retroceder4: TSpeedButton;
    Btn_Avancar4: TSpeedButton;
    DBG_APLICOBJETOS: TDBGrid;
    TabSheet2: TTabSheet;
    LMDGroupBox3: TLMDGroupBox;
    OpenDialog1: TOpenDialog;
    DBGrid3: TDBGrid;
    LMDPanelFill2: TLMDPanelFill;
    BTN_RETROCEDER1: TSpeedButton;
    BTN_AVANCAR1: TSpeedButton;
    DED_CTBLCOMPO: TDBEdit;
    DED_CORDER: TDBEdit;
    DBL_NIDTBL_T: TRxDBLookupCombo;
    DBM_MSELECT: TDBMemo;
    LMDPanelFill3: TLMDPanelFill;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    DBC_CSHOWFORM: TRxDBComboBox;
    Btn_Cancelar1: TSpeedButton;
    Btn_Excluir1: TSpeedButton;
    Btn_Gravar1: TSpeedButton;
    Btn_Incluir1: TSpeedButton;
    Btn_Alterar1: TSpeedButton;
    DED_CNOMEFORM: TDBEdit;
    Label11: TLabel;
    Btn_Excluir: TSpeedButton;
    Label13: TLabel;
    DBC_NIDTBL_G: TRxDBLookupCombo;
    SPE_CSEQUENCIA: TRxSpinEdit;
    DBC_NAPLICAUX: TDBCheckBox;
    LMDSimpleLabel1: TLMDSimpleLabel;
    Label12: TLabel;
    DBL_NIDTBL_PB: TRxDBLookupCombo;
    BTN_EXCLUIR2: TSpeedButton;
    BTN_ADICIONA: TSpeedButton;
    ImageList1: TImageList;
    procedure BTN_SAIRClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure Btn_LocalizarClick(Sender: TObject);
    procedure Btn_AvancarClick(Sender: TObject);
    procedure Btn_RetrocederClick(Sender: TObject);
    procedure Btn_IncluirClick(Sender: TObject);
    procedure Btn_AlterarClick(Sender: TObject);
    procedure Btn_ExcluirClick(Sender: TObject);
    procedure Btn_GravarClick(Sender: TObject);
    procedure Btn_CancelarClick(Sender: TObject);
    procedure Btn_ImprimirClick(Sender: TObject);
    procedure BTN_AVANCAR1Click(Sender: TObject);
    procedure BTN_RETROCEDER1Click(Sender: TObject);
    procedure DBC_CNOMEBMPButtonClick(Sender: TObject);
    procedure BTN_ADICIONAClick(Sender: TObject);
    procedure BTN_EXCLUIR2Click(Sender: TObject);
    procedure Btn_Retroceder4Click(Sender: TObject);
    procedure Btn_Avancar4Click(Sender: TObject);
    procedure Btn_Incluir1Click(Sender: TObject);
    procedure Btn_Cancelar1Click(Sender: TObject);
    procedure Btn_Excluir1Click(Sender: TObject);
    procedure Btn_Alterar1Click(Sender: TObject);
    procedure PageControlEx1Change(Sender: TObject);
    procedure Btn_Gravar1Click(Sender: TObject);
    procedure SPE_CSEQUENCIAExit(Sender: TObject);
    procedure DBC_NIDTBL_GKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBG_APLICOBJETOSDrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
    procedure DBG_APLICOBJETOSCellClick(Column: TColumn);
    procedure DBG_APLICOBJETOSColEnter(Sender: TObject);
    procedure DBG_APLICOBJETOSKeyPress(Sender: TObject; var Key: Char);
    procedure DBG_APLICOBJETOSKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SPE_CSEQUENCIABottomClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRM_A003UTCO: TFRM_A003UTCO;
  

implementation

uses MPLCtrl, Login, TelaPrin, D003UTCO, D007UTCO, A007UTCO, CtrlForms,
  UVariaveis, DMCTRL;

{$R *.DFM}

procedure TFRM_A003UTCO.BTN_SAIRClick(Sender: TObject);
begin
  Close;
end;  //TFRM_A003UTCO.BTN_SAIRClick

{------------------------------------------------------------------------------}

procedure TFRM_A003UTCO.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:= oControlForms.Saidas(Self,[DTM_A003UTCO],DTM_A003UTCO.DTS_041.DataSet);
end;  //TFRM_A003UTCO.FormClose

{------------------------------------------------------------------------------}

procedure TFRM_A003UTCO.FormShow(Sender: TObject);
begin
  {Verifica acesso ao usuario na Aplicação}
  Acesso(nMatricula,'A003UTCO',DTM_A003UTCO);
  Botoes(['Btn_Cancelar','Btn_Gravar','BTN_ADICIONA','BTN_EXCLUIR2',
          'Btn_Cancelar1','Btn_Gravar1','Btn_Incluir1','Btn_Alterar1','Btn_Excluir1'
          ],'FRM_A003UTCO',False);
  FRM_A003UTCO.OnShow := nil;
 {é atribuido ao OnShow do Form o valor nil para que o mesmo seja executado apenas uma vez}
 {pelo fato que se outra aplicação for chamada pela tecla F3, e ao retornar da aplicação que foi chamada pela tecla}
 {o evento OnShow deste form não acontecerá, ou seja não será executado, para permanecer o mesmo status da aplicação}
 {quando o F3 foi chamado}
end;  //TFRM_A003UTCO.FormShow

{------------------------------------------------------------------------------}

procedure TFRM_A003UTCO.Btn_LocalizarClick(Sender: TObject);
begin
  {Pesquisa Registros cadastrados}
  Pesquisa(DTM_A003UTCO.QRY_041,true,'','','',false);
end;  //TFRM_A003UTCO.Btn_LocalizarClick

{------------------------------------------------------------------------------}

procedure TFRM_A003UTCO.Btn_AvancarClick(Sender: TObject);
begin
 {Avanca um registro na tabela de aplicação}
 DBGenerica(DTM_A003UTCO.DTS_041,'Conexao',0,3);
end;  //TFRM_A003UTCO.Btn_AvancarClick

{------------------------------------------------------------------------------}

procedure TFRM_A003UTCO.Btn_RetrocederClick(Sender: TObject);
begin
 {Retrocede um registro na tabela de aplicação}
 DBGenerica(DTM_A003UTCO.DTS_041,'Conexao',0,2);
end;  //TFRM_A003UTCO.Btn_RetrocederClick

{------------------------------------------------------------------------------}

procedure TFRM_A003UTCO.Btn_IncluirClick(Sender: TObject);
begin

  {inclui um registro novo para uma nova APLICAÇÂO}
  DBGenerica(DTM_A003UTCO.DTS_041,'Conexao',1,0);
  {trata os botões da aplicação}
  Botoes(['Btn_Cancelar','Btn_Gravar','Btn_Sair',
          'BTN_ADICIONA','BTN_EXCLUIR2','Btn_Retroceder4','Btn_Avancar4',
          'Btn_Incluir1','Btn_Retroceder1','Btn_Avancar1'
         ],'FRM_A003UTCO',true);
  DTM_A003UTCO.DTS_042.AutoEdit := true;
  DED_CNOMEUNIT.SetFocus;
end;  //TFRM_A003UTCO.Btn_IncluirClick

{------------------------------------------------------------------------------}

procedure TFRM_A003UTCO.Btn_AlterarClick(Sender: TObject);
begin
  {Altera registro corrente }
  DBGenerica(DTM_A003UTCO.DTS_041,'Conexao',2,0);
  Botoes(['Btn_Cancelar','Btn_Gravar','Btn_Sair',
          'BTN_ADICIONA','BTN_EXCLUIR2','Btn_Retroceder4','Btn_Avancar4',
          'Btn_Incluir1','Btn_Alterar1','Btn_Excluir1',
          'Btn_Retroceder1','Btn_Avancar1'
         ],'FRM_A003UTCO',true);
  DTM_A003UTCO.DTS_042.AutoEdit := true;
  if DTM_A003UTCO.DTS_045.DataSet.IsEmpty then
    begin
      BTN_ALTERAR1.Enabled := false;
      Btn_Excluir1.Enabled := false;
    end;
end;  //TFRM_A003UTCO.Btn_AlterarClick

{------------------------------------------------------------------------------}

procedure TFRM_A003UTCO.Btn_ExcluirClick(Sender: TObject);
begin
  {exclui o registro corrente}
  DBGenerica(DTM_A003UTCO.DTS_041,'Conexao',5,0,nil,false);
end;  //TFRM_A003UTCO.Btn_ExcluirClick

{------------------------------------------------------------------------------}

procedure TFRM_A003UTCO.Btn_GravarClick(Sender: TObject);
var
   oEstado : TDataSetState;
   cTabGrav  : String;
begin

 SPE_CSEQUENCIAExit(Sender);

// grava
  with DTM_A003UTCO do
    begin
      if LiberadoGravacao(FRM_A003UTCO,DTM_A003UTCO.DTS_041) then
        if MessageDlg('Deseja Salvar Alterações?',mtConfirmation,[mbYes,mbNo],0) = mrYes then
          begin
            try
             {retira o relacionamento Master-Detail das tabelas filhas para
              que não aconteça o desposicionamento dos registros das tabelas
              filhas durante a gravação dos dados da tabela Master }

              if DTS_042.DataSet.State in [dsEdit,dsInsert] then
                QRY_042.UpdateRecord;
              if DTS_045.DataSet.State in [dsEdit,dsInsert] then
                QRY_045.UpdateRecord;

              QRY_042.MasterSource := nil;
              QRY_045.MasterSource := nil;
              QRY_042.DisableControls;
              QRY_045.DisableControls;
              if DTS_041.DataSet.State in [dsEdit,dsInsert] then
                QRY_041.UpdateRecord;

              QRY_041.DisableControls;
              oEstado := DTS_041.DataSet.State;
              {inicio da transação dos dados}
              DMControle.Conexao.StartTransaction;
              try {inicio da tentativa de gravação de todas as tabelas no banco de dados}
                if DTS_041.DataSet.State = dsInsert then
                  begin
                    {Passa valor zero para a NID e grava o registro}
                    cTabGrav := 'Tabela de Aplicação';
                    DTS_041.DataSet.FieldByName('nidtbl_a').AsInteger := 0;
                    DBGenerica(DTS_041,'Conexao',4,1,nil,false);
                    PrepareQryTemp('select nidtbl_a from tbl_a where cNomeUnit = ' + QuotedStr(Trim(DED_CNOMEUNIT.Text)));
                  end
                else
                  if DTS_041.DataSet.State = dsEdit then
                    begin
                      cTabGrav := 'Tabela de Aplicação';
                      //grava dados na tabela de Aplicações
                      DBGenerica(DTS_041,'Conexao',4,1,nil,false);
                    end;
                if oEstado = DsInsert then
                  begin
                    cTabGrav := 'Tabela de Aplicações Objetos';
                    GravaKeyPai(DTS_042,DMControle.QryTemp.FieldByName('nidtbl_a'));
                    cTabGrav := 'Tabela de Aplicações Tabelas';
                    GravaKeyPai(DTS_045,DMControle.QryTemp.FieldByName('nidtbl_a'));
                  end
                else
                  begin
                    cTabGrav := 'Tabela de Aplicações Objetos';
                    DBGenerica(DTS_042,'Conexao',4,1,nil,true);
                    DTS_042.DataSet.Refresh;
                    cTabGrav := 'Tabela de Aplicações Tabelas';
                    DBGenerica(DTS_045,'Conexao',4,1,nil,true);
                    DTS_045.DataSet.Refresh;
                  end;
                DTS_042.AutoEdit := false;
                DMControle.Conexao.Commit;
              except
                on E : Exception do
                  begin
                    MessageDlg('Não foi possivel efetuar a gravação de todos os dados,'+#13+
                               'por isso está operação será cancelada para manter a integridade'+#13+
                               'dos seus dados!'+#13+'Erro: '+E.Message+#13+
                               'Tentativa de gravação na tabela : '+cTabGrav,mtError,[mbOk],0);
                    DMControle.Conexao.RollBack;
                    Btn_CancelarClick(Btn_Cancelar);
                  end;
              end;
              {trata os botões da aplicação}
              Botoes(['Btn_Cancelar','Btn_Gravar','BTN_ADICIONA',
                      'BTN_EXCLUIR2','Btn_Incluir1','Btn_Alterar1',
                      'Btn_Excluir1','Btn_Gravar1','Btn_Cancelar1'
                     ],'FRM_A003UTCO',False);
            finally
              {retorna o relacionamento Master-Detail e habilita
              a atualizaçao dos compomentes visuais}
              DMControle.QryTemp.Close;
              DMControle.QryTemp.SQL.Clear;
              QRY_042.MasterSource := DTS_041;
              QRY_042.EnableControls;
              QRY_045.MasterSource := DTS_041;
              QRY_045.EnableControls;
              QRY_041.EnableControls;
            end;
          end;
    end;


end;  //TFRM_A003UTCO.Btn_GravarClick

{------------------------------------------------------------------------------}

procedure TFRM_A003UTCO.Btn_CancelarClick(Sender: TObject);
begin
  //cancela as alterações na tabela de Aplicação/Objetos
  DBGenerica(DTM_A003UTCO.DTS_042,'Conexao',3,0,nil,true);

  //cancela as alterações na tabela de Aplicação/Tabela
  DBGenerica(DTM_A003UTCO.DTS_045,'Conexao',3,0,nil,true);

  {Cancela ação ao BD no registro corrente}
  DBGenerica(DTM_A003UTCO.DTS_041,'Conexao',3,0);
  Botoes(['Btn_Cancelar','Btn_Gravar','BTN_ADICIONA',
          'BTN_EXCLUIR2','Btn_Incluir1','Btn_Alterar1',
          'Btn_Excluir1','Btn_Gravar1','Btn_Cancelar1'
         ],'FRM_A003UTCO',False);
  //
  DTM_A003UTCO.DTS_042.AutoEdit := false;
end; //TFRM_A003UTCO.Btn_CancelarClick

{------------------------------------------------------------------------------}

procedure TFRM_A003UTCO.Btn_ImprimirClick(Sender: TObject);
begin
 {função Padrão de Impressão}
 RelCadastro(DTM_A003UTCO.QRY_041,'Cadastro de Aplicações');
end;  //TFRM_A003UTCO.Btn_ImprimirClick

{------------------------------------------------------------------------------}

procedure TFRM_A003UTCO.BTN_AVANCAR1Click(Sender: TObject);
begin
  {Avanca um registro na tabela de Aplicação/Tabela}
  DBGenerica(DTM_A003UTCO.DTS_045,'Conexao',0,3);
end;  //TFRM_A003UTCO.BTN_AVANCAR1Click

{------------------------------------------------------------------------------}

procedure TFRM_A003UTCO.BTN_RETROCEDER1Click(Sender: TObject);
begin
  {Retrocede um registro na tabela de Aplicação/Tabela}
  DBGenerica(DTM_A003UTCO.DTS_045,'Conexao',0,2);
end;  //TFRM_A003UTCO.BTN_RETROCEDER1Click

{------------------------------------------------------------------------------}

procedure TFRM_A003UTCO.DBC_CNOMEBMPButtonClick(Sender: TObject);
begin
  {Localiza as imagens para os objetos}
  if OpenDialog1.Execute then
    DBC_CNOMEBMP.Field.AsString := ExtractFileName(OpenDialog1.FileName);

end;  //TFRM_A003UTCO.DBC_CNOMEBMPButtonClick

{------------------------------------------------------------------------------}

procedure TFRM_A003UTCO.BTN_ADICIONAClick(Sender: TObject);
begin
  oControlForms.AtivaForm('FRM_A007UTCO', shModal, NIL);
  DBG_APLICOBJETOS.DataSource.AutoEdit :=
  not(DBG_APLICOBJETOS.DataSource.DataSet.IsEmpty);
end;  //TFRM_A003UTCO.BTN_ADICIONAClick

{------------------------------------------------------------------------------}

procedure TFRM_A003UTCO.BTN_EXCLUIR2Click(Sender: TObject);
begin
  if not(DTM_A003UTCO.DTS_042.DataSet.IsEmpty) then
    {Exclui objeto da tabela Aplicação/Objeto}
    DBGenerica(DTM_A003UTCO.DTS_042,'Conexao',5,1);

end;  //TFRM_A003UTCO.BTN_EXCLUIR2Click

{------------------------------------------------------------------------------}

procedure TFRM_A003UTCO.Btn_Retroceder4Click(Sender: TObject);
begin
  {Retrocede um registro na tabela de Aplicação/Objeto}
  DBGenerica(DTM_A003UTCO.DTS_042,'Conexao',0,2);
end;  //TFRM_A003UTCO.Btn_Retroceder4Click

{------------------------------------------------------------------------------}

procedure TFRM_A003UTCO.Btn_Avancar4Click(Sender: TObject);
begin
  {Avança um registro na tabela de Aplicação/Objeto}
  DBGenerica(DTM_A003UTCO.DTS_042,'Conexao',0,3);
end;  //TFRM_A003UTCO.Btn_Avancar4Click

{------------------------------------------------------------------------------}

procedure TFRM_A003UTCO.Btn_Incluir1Click(Sender: TObject);
begin
  {Inclui um registro na Tabela Aplicação/Tabela}
  DBGenerica(DTM_A003UTCO.DTS_045,'Conexao',1,0);
  Botoes(['Btn_Cancelar','Btn_Gravar','Btn_Sair',
          'BTN_ADICIONA','BTN_EXCLUIR2','Btn_Retroceder4','Btn_Avancar4',
          'Btn_Gravar1','Btn_Cancelar1'
         ],'FRM_A003UTCO',true);
  if DTM_A003UTCO.DTS_041.State = dsInsert then
    DTM_A003UTCO.DTS_045.DataSet.FieldByName('nidtbl_a').AsInteger := 0;

  DTM_A003UTCO.DTS_045.DataSet.FieldByName('nidtbl_at').AsInteger := 0;

  DED_CTBLCOMPO.SetFocus;
end;  //TFRM_A003UTCO.Btn_Incluir1Click

{------------------------------------------------------------------------------}

procedure TFRM_A003UTCO.Btn_Cancelar1Click(Sender: TObject);
begin
  Botoes(['Btn_Cancelar','Btn_Gravar','Btn_Sair',
        'BTN_ADICIONA','BTN_EXCLUIR2','Btn_Retroceder4','Btn_Avancar4',
        'Btn_Incluir1','Btn_Alterar1','Btn_Excluir1',
        'Btn_Retroceder1','Btn_Avancar1'
       ],'FRM_A003UTCO',true);

  {Cancela a ação na Tabela Aplicação/Tabela}
  DBGenerica(DTM_A003UTCO.DTS_045,'Conexao',3,0);
end;  //TFRM_A003UTCO.Btn_Cancelar1Click

{------------------------------------------------------------------------------}

procedure TFRM_A003UTCO.Btn_Excluir1Click(Sender: TObject);
begin
  {Exclui registro da Tabela Aplicação/Tabela}
  DBGenerica(DTM_A003UTCO.DTS_045,'Conexao',5,0);
end;  //TFRM_A003UTCO.Btn_Excluir1Click

{------------------------------------------------------------------------------}

procedure TFRM_A003UTCO.Btn_Alterar1Click(Sender: TObject);
begin
  {Altera registro da Tabela de Aplicação/Tabela}
  DBGenerica(DTM_A003UTCO.DTS_045,'Conexao',2,0);
  Botoes(['Btn_Cancelar','Btn_Gravar','Btn_Sair',
          'BTN_ADICIONA','BTN_EXCLUIR2','Btn_Retroceder4','Btn_Avancar4',
          'Btn_Gravar1','Btn_Cancelar1'
         ],'FRM_A003UTCO',true);
  DED_CTBLCOMPO.SetFocus;
  DED_CTBLCOMPO.SelectAll;
end;  //TFRM_A003UTCO.Btn_Alterar1Click

{------------------------------------------------------------------------------}

procedure TFRM_A003UTCO.PageControlEx1Change(Sender: TObject);
begin
  {Se houver inserção ou edição de registro, impede a mudança de TabSheet}
  if DTM_A003UTCO.DTS_045.DataSet.State in [dsInsert,dsEdit] then
    PageControlEx1.ActivePageIndex := 1;
end;  //TFRM_A003UTCO.PageControlEx1Change

{------------------------------------------------------------------------------}

procedure TFRM_A003UTCO.Btn_Gravar1Click(Sender: TObject);
begin
  {Grava no BD}
  with DTM_A003UTCO do
    begin
      {Verifica se os campos necessarios estão preenchidos}

      if Trim(DED_CTBLCOMPO.Text) = '' then
        begin
          MessageDlg('Você deve informar o nome da Query!',mtInformation,[mbOk],0);
          DED_CTBLCOMPO.SetFocus;
          exit;
        end;
      if DTM_A003UTCO.DTS_045.DataSet.FieldByName('nidtbl_t').IsNull then
        begin
          MessageDlg('Favor informar o nome da tabela principal da Query!', mtInformation,[mbOk],0);
          DBL_NIDTBL_T.SetFocus;
          exit;
        end;

      {Atualiza Valores de DBedits}
      if DTS_045.DataSet.State in [dsEdit,dsInsert] then
        QRY_045.UpdateRecord;
      {Grava na Tabela de Aplicação/Tabela}
      DBGenerica(DTS_045,'Conexao',4,1,nil,false);
      {trata os botões da aplicação}
      Botoes(['Btn_Cancelar','Btn_Gravar','Btn_Sair',
              'BTN_ADICIONA','BTN_EXCLUIR2','Btn_Retroceder4','Btn_Avancar4',
              'Btn_Incluir1','Btn_Alterar1','Btn_Excluir1',
              'Btn_Retroceder1','Btn_Avancar1'
             ],'FRM_A003UTCO',true);

    end;
end; //TFRM_A003UTCO.Btn_Gravar1Click

{------------------------------------------------------------------------------}

procedure TFRM_A003UTCO.SPE_CSEQUENCIAExit(Sender: TObject);
begin
  //se a aplicação possue algum grupo
  if not(DTM_A003UTCO.QRY_041.FieldByName('nidtbl_g').isNull) then
    begin
      //se a sequencia for menor que 1
      if SPE_CSEQUENCIA.value = 0 then
        begin
          MessageDlg('Você deve escolher um valor maior que 0 para a sequência!',
                     mtInformation, [mbOk], 0);
          SPE_CSEQUENCIA.SetFocus;
          Abort;
        end;
      {Localiza o registro na tabela}
      PrepareQryTemp('select * from tbl_a where nidtbl_g = '+
      DTM_A003UTCO.QRY_041.FieldByName('nidtbl_g').AsString+' and citensmenu = '+
      QuotedStr(FormatFloat('00',StrToFloat(SPE_CSEQUENCIA.Text))));
      {Se achou e é a mesma aplicação}
      if (DMControle.QryTemp.RecordCount > 0) and
         (DTM_A003UTCO.QRY_041.FieldByName('nidtbl_a').Value <>
         DMControle.QryTemp.FieldByName('nidtbl_a').Value) then
        begin
          {Avisa e retorna}
          MessageDlg('Seqüência já Existe no Grupo',mtInformation,[mbOk],0);
          SPE_CSEQUENCIA.SetFocus;
          Abort;
        end
      else
        {Caso contrario, verifica estado do Dataset e atribui valor ao campo, se necessário}
        if DTM_A003UTCO.DTS_041.DataSet.State in [dsInsert,dsEdit] then
          DTM_A003UTCO.QRY_041.FieldByName('citensmenu').AsString :=
          FormatFloat('00',StrToFloat(SPE_CSEQUENCIA.Text));
    end;

end; //TFRM_A003UTCO.SPE_CSEQUENCIAExit

{------------------------------------------------------------------------------}

procedure TFRM_A003UTCO.DBC_NIDTBL_GKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  //se a tabela de aplicações estiver em edição ou inserção
  if DTM_A003UTCO.DTS_041.DataSet.State in [dsEdit,dsInsert] then
    //se o usuario pressionou a tecla Delete ou BackSpace
    if (Key = VK_DELETE) or (Key = VK_BACK) then
      begin
        //retira o grupo da aplicação
        DTM_A003UTCO.DTS_041.DataSet.FieldByName('nidtbl_g').value := null;
        DTM_A003UTCO.DTS_041.DataSet.FieldByName('citensmenu').value := null;
      end;

end; //TFRM_A003UTCO.DBC_NIDTBL_GKeyDown

{------------------------------------------------------------------------------}

procedure TFRM_A003UTCO.DBG_APLICOBJETOSDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  //colori linhas do grid
  oMetodos.ColorGrid(Sender,Rect,DataCol,Column,State);
  //se a coluna que esta sendo desenhada for a do
  //campo requerido
  if Column.Field.FieldName = 'LREQUERIDO' then
    begin
      //limpra o conteudo da celula
      DBG_APLICOBJETOS.Canvas.FillRect(Rect);
      //desenha na celular a imagem de caixa do check
      ImageList1.Draw(DBG_APLICOBJETOS.Canvas,Rect.Left + 20, Rect.Top + 1, 0);
      if Column.Field.AsInteger = 0 then
        //desenha na celular a imagem de "não selecionado"
        ImageList1.Draw(DBG_APLICOBJETOS.Canvas,Rect.Left + 20, Rect.Top + 1, 1)
      else
        //desenha na celular a imagem de "selecionado"
        ImageList1.Draw(DBG_APLICOBJETOS.Canvas,Rect.Left + 20, Rect.Top + 1, 2);

    end;


end; //TFRM_A003UTCO.DBG_APLICOBJETOSDrawColumnCell

{------------------------------------------------------------------------------}

procedure TFRM_A003UTCO.DBG_APLICOBJETOSCellClick(Column: TColumn);
begin
  with DTM_A003UTCO do
    begin
      //se a coluna for a do campo requerido
      if Column.Field.FieldName = 'LREQUERIDO' then
        //se a tabela de aplicações estiver no estado de inserção ou edição
        if DTS_041.DataSet.State in [dsEdit,dsInsert] then
          begin
            //edita tabela de obejtos
            DTS_042.DataSet.Edit;
            //muda o valor do campo
            if Column.Field.AsInteger = 0 then
              Column.Field.AsInteger := 1
            else
              Column.Field.AsInteger := 0;
           //grava os dados em cache da tabela de objetos
           DTS_042.DataSet.Post;
          end;
    end;
end; //TFRM_A003UTCO.DBG_APLICOBJETOSCellClick

{------------------------------------------------------------------------------}

procedure TFRM_A003UTCO.DBG_APLICOBJETOSColEnter(Sender: TObject);
begin
  //se o campo selecionado for o campo requerido
  if DBG_APLICOBJETOS.SelectedField.FieldName = 'LREQUERIDO' then
    //não permite a edição de dados no grid
    DBG_APLICOBJETOS.Options := DBG_APLICOBJETOS.Options - [dgEditing]
  else
    //permite a edição de dados no grid
    DBG_APLICOBJETOS.Options := DBG_APLICOBJETOS.Options + [dgEditing];
end; //TFRM_A003UTCO.DBG_APLICOBJETOSColEnter

{------------------------------------------------------------------------------}

procedure TFRM_A003UTCO.DBG_APLICOBJETOSKeyPress(Sender: TObject;
  var Key: Char);
begin
  // se o usuario pressionou espaco e o campo
  //selecionado for o campo requerido
  if (Key = Char(VK_SPACE)) and
     (DBG_APLICOBJETOS.SelectedField.FieldName = 'LREQUERIDO' )  then
    //chama o evento de clique da celula
    DBG_APLICOBJETOSCellClick(DBG_APLICOBJETOS.Columns[DBG_APLICOBJETOS.SelectedIndex]);

end; //TFRM_A003UTCO.DBG_APLICOBJETOSKeyPress

{------------------------------------------------------------------------------}

procedure TFRM_A003UTCO.DBG_APLICOBJETOSKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  //se o usuario pressionou as teclas Ctrl+Del
  if (Shift = [ssCtrl]) and (Key = 46) Then
    //cancela o pressionamento
    KEY := 0
  else
    //se pressionou a tecla Insert
    if Key = 45 then
      //cancela o pressionamento
      Key := 0;
end; //TFRM_A003UTCO.DBG_APLICOBJETOSKeyDown

{------------------------------------------------------------------------------}

procedure TFRM_A003UTCO.SPE_CSEQUENCIABottomClick(Sender: TObject);
begin
  //se o valor igual a 0
  if SPE_CSEQUENCIA.value = 0 then
    begin
      //força a mudança para o valor 1
      SPE_CSEQUENCIA.value := 1;
    end;
end; //TFRM_A003UTCO.SPE_CSEQUENCIABottomClick

{------------------------------------------------------------------------------}

end.




