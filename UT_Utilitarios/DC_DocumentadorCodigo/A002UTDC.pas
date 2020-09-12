unit A002UTDC;

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
  LMDSimplePanel, Enter ;

type
  TFRM_A002UTDC = class(TForm)
    Panel2: TPanel;
    Btn_Incluir: TSpeedButton;
    Btn_Alterar: TSpeedButton;
    Btn_Cancelar: TSpeedButton;
    Btn_Localizar: TSpeedButton;
    Btn_Imprimir: TSpeedButton;
    BTN_SAIR: TSpeedButton;
    Btn_Avancar: TSpeedButton;
    Btn_Retroceder: TSpeedButton;
    Btn_Excluir: TSpeedButton;
    Btn_Gravar: TSpeedButton;
    LMDGroupBox2: TLMDGroupBox;
    Label3: TLabel;
    Label4: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    DED_NIDTBLUNI: TDBEdit;
    DED_CAUTOR: TDBEdit;
    DBD_DDATADOC: TDBDateEdit;
    LMDGroupBox3: TLMDGroupBox;
    LMDGroupBox4: TLMDGroupBox;
    DED_CDESC: TDBEdit;
    Label7: TLabel;
    DBM_COBJETIVO: TDBMemo;
    DBG_DETALHE: TDBGrid;
    BTN_LOCAL: TSpeedButton;
    LMDPanelFill5: TLMDPanelFill;
    Btn_Retroceder1: TSpeedButton;
    Btn_Avancar1: TSpeedButton;
    Btn_Cancelar1: TSpeedButton;
    Btn_Excluir1: TSpeedButton;
    Btn_Gravar1: TSpeedButton;
    Btn_Incluir1: TSpeedButton;
    Btn_PrimeiroReg: TSpeedButton;
    Btn_UltimoReg: TSpeedButton;
    Btn_Alterar1: TSpeedButton;
    DBC_CTIPO: TDBComboBox;
    Label2: TLabel;
    Label5: TLabel;
    DBE_CNOME: TDBEdit;
    Label6: TLabel;
    DBD_DDATAATU: TDBDateEdit;
    Label8: TLabel;
    DBE_CNOMEPRG: TDBEdit;
    Label9: TLabel;
    DBE_CVARPUB: TDBEdit;
    Label10: TLabel;
    DBE_CVARPRI: TDBEdit;
    Label11: TLabel;
    DBE_CVARLOC: TDBEdit;
    Label1: TLabel;
    DBM_CDESCRI: TDBMemo;
    DED_CCAMINHO: TDBEdit;
    DBC_CNOMEUNIT: TRxDBComboEdit;
    procedure BTN_SAIRClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BTN_LOCALClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Btn_IncluirClick(Sender: TObject);
    procedure Btn_CancelarClick(Sender: TObject);
    procedure Btn_LocalizarClick(Sender: TObject);
    procedure Btn_AvancarClick(Sender: TObject);
    procedure Btn_RetrocederClick(Sender: TObject);
    procedure Btn_AlterarClick(Sender: TObject);
    procedure Btn_Retroceder1Click(Sender: TObject);
    procedure Btn_Avancar1Click(Sender: TObject);
    procedure Btn_UltimoRegClick(Sender: TObject);
    procedure Btn_PrimeiroRegClick(Sender: TObject);
    procedure DBC_CNOMEUNITButtonClick(Sender: TObject);
    procedure Btn_ExcluirClick(Sender: TObject);
    procedure Btn_GravarClick(Sender: TObject);
    procedure Btn_Gravar1Click(Sender: TObject);
    procedure Btn_Incluir1Click(Sender: TObject);
    procedure Btn_Alterar1Click(Sender: TObject);
    procedure Btn_Cancelar1Click(Sender: TObject);
    procedure Btn_Excluir1Click(Sender: TObject);
    procedure DBM_COBJETIVOKeyPress(Sender: TObject; var Key: Char);
    procedure DBM_CDESCRIKeyPress(Sender: TObject; var Key: Char);
    procedure DED_CCAMINHOKeyPress(Sender: TObject; var Key: Char);
    procedure Btn_ImprimirClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRM_A002UTDC: TFRM_A002UTDC;

implementation

uses A003UTDC, D001UTDC, CtrlForms, UVariaveis, MPLCtrl, A001UTDC, DMCTRL;

{$R *.DFM}

procedure TFRM_A002UTDC.BTN_SAIRClick(Sender: TObject);
begin
   close ;
end;

procedure TFRM_A002UTDC.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 Action:= oControlForms.Saidas(Sender,[DTM_A001UTDC],DTM_A001UTDC.QRY_049);
end;

procedure TFRM_A002UTDC.BTN_LOCALClick(Sender: TObject);
begin
  {Cria Formulario Modal para sele��o do caminho da UNIT}
  Application.CreateForm(TFRM_A003UTDC,FRM_A003UTDC);
  FRM_A003UTDC.ShowModal;
  {Se o Caminho N�o est� correto, Avisa ao Usuario.}
  if Pos('PROJETOS',DED_CCAMINHO.Text) = 0 then
    MessageDlg('Localiza��o da UNIT Inv�lido, Verifique!!',mtError,[mbOk],0);
  DBM_COBJETIVO.SetFocus;
end; //TFRM_A002UTDC.SpeedButton1Click

procedure TFRM_A002UTDC.FormShow(Sender: TObject);
begin
 {Verifica Acesso do usuario ao Sistema.}
  if not Acesso(nMatricula,'A002UTDC',DTM_A001UTDC) then
    close;
 {trata os bot�es da aplica��o}
  Botoes(['BTN_GRAVAR','BTN_CANCELAR','BTN_LOCAL',
          'Btn_Gravar1','Btn_Cancelar1'],
          'FRM_A002UTDC',false);
 {� atribuido ao OnShow do Form o valor nil para que o mesmo seja executado apenas uma vez}
 {pelo fato que se outra aplica��o for chamada pela tecla F3, e ao retornar da aplica��o que foi chamada pela tecla}
 {o evento OnShow deste form n�o acontecer�, ou seja n�o ser� executado, para permanecer o mesmo status da aplica��o}
 {quando o F3 foi chamado}
  FRM_A002UTDC.OnShow := nil;
 {Verifica se este Formulario nao foi chamado da RzListFile da A001UTDC
  e Tenta localizar qual a UNIT da editar, caso n�o encontre insere um
  novo registro.}
  if vLocaliza <> '' then
    if not DTM_A001UTDC.QRY_049.Locate('cCaminho;cNomeUnit',VarArrayOf([FRM_A001UTDC.RZF_ARQUIVO.Directory,vLocaliza]),[]) then
       begin
         Btn_Incluir.Click;
         DBC_CNOMEUNIT.Text := vLocaliza;
         DED_CDESC.SetFocus;
       end;
 {Limpa a vari�vel}
  vLocaliza := '';
end; //TFRM_A002UTDC.FormShow

procedure TFRM_A002UTDC.Btn_IncluirClick(Sender: TObject);
begin
  {inclui um registro novo para uma nova UNIT}
  DBGenerica(DTM_A001UTDC.DTS_049,'Conexao',1,0);
  {trata os bot�es da aplica��o}
  Botoes(['Btn_Cancelar','Btn_Gravar','Btn_Sair','Btn_Incluir1','Btn_Gravar1','Btn_Cancelar1','BTN_LOCAL',
         'Btn_PrimeiroReg1','Btn_Retroceder1','Btn_Avancar1','Btn_UltimoReg1'],'FRM_A002UTDC',true);
  {atribui um valor para a chave primaria da UNIT}
  DTM_A001UTDC.DTS_049.DataSet.FieldByName('NIDTBLUNI').AsInteger := 0;
  DBC_CNOMEUNIT.SetFocus;
end; //TFRM_A002UTDC.Btn_IncluirClick

procedure TFRM_A002UTDC.Btn_CancelarClick(Sender: TObject);
begin
  DBGenerica(DTM_A001UTDC.DTS_049,'Conexao',3,0,nil,false);
  {trata os bot�es da aplica��o}
  Botoes(['Btn_Gravar','Btn_Cancelar',
          'Btn_Gravar1','Btn_Cancelar1'],'FRM_A002UTDC',false);
  {impede a edi��o do tabela atraves do grid}
  DBG_DETALHE.Options := DBG_DETALHE.Options - [dgEditing];
end; //TFRM_A002UTDC.Btn_CancelarClick

procedure TFRM_A002UTDC.Btn_LocalizarClick(Sender: TObject);
var nIdent : integer;
    cSql : string;
begin
  {Intera��o com a Fun��o de Pesquisa do Sistema}
  {Tira o mestre Detalhe da tabela de detalhes}
  DTM_A001UTDC.QRY_050.MasterSource := nil;
  {Fecha}
  DTM_A001UTDC.QRY_050.Close;
  {Guarda codigo Sql da tabela de detalhes}
  cSql := DTM_A001UTDC.QRY_050.SQL.Text;
  DTM_A001UTDC.QRY_050.SQL.Clear;
  {Insere novo SQL com padr�es para a fun��o pesquisa funcionar}
  DTM_A001UTDC.QRY_050.SQL.Insert(0,'select * from TBLFP');
  DTM_A001UTDC.QRY_050.SQL.Insert(1,' ');
  DTM_A001UTDC.QRY_050.Open;
  Pesquisa(DTM_A001UTDC.QRY_050,true,'','','',false);
  {Ap�s a pesquisa, guarda o registro que a pesquisa apontou}
  nIdent := DTM_A001UTDC.DTS_050.DataSet.FieldByName('NIDTBLUNI').AsInteger;
  {Retorna o estado anterior � pesquisa}
  DTM_A001UTDC.QRY_050.Close;
  DTM_A001UTDC.QRY_050.SQL.Clear;
  DTM_A001UTDC.QRY_050.SQL.Add(cSql);
  DTM_A001UTDC.QRY_050.Open;
  DTM_A001UTDC.QRY_050.MasterSource := DTM_A001UTDC.DTS_049;
  {J� com os detalhes ativos, localiza na tabela Pai o registro pesquisado}
  DTM_A001UTDC.QRY_049.Locate('NIDTBLUNI',nIdent,[]);
end; //TFRM_A002UTDC.Btn_LocalizarClick

procedure TFRM_A002UTDC.Btn_AvancarClick(Sender: TObject);
begin
 {avan�a registro}
 DBGenerica(DTM_A001UTDC.DTS_049,'Conexao',0,3,nil,false);
end; //TFRM_A002UTDC.Btn_AvancarClick

procedure TFRM_A002UTDC.Btn_RetrocederClick(Sender: TObject);
begin
 {volta um registro}
 DBGenerica(DTM_A001UTDC.DTS_049,'Conexao',0,2,nil,false);
end; //TFRM_A002UTDC.Btn_RetrocederClick

procedure TFRM_A002UTDC.Btn_AlterarClick(Sender: TObject);
begin
  {trata os bot�es da aplica��o}
  Botoes(['Btn_Cancelar','Btn_Gravar', 'Btn_Sair','Btn_Local','Btn_Gravar1','Btn_Cancelar1',
          'Btn_Incluir1','Btn_Alterar1','Btn_Excluir1','Btn_PrimeiroReg1',
          'Btn_Retroceder1','Btn_Avancar1','Btn_UltimoReg1'],
          'FRM_A002UTDC',true);
  {coloca em estado de altera��o o registro corrente}
  DBGenerica(DTM_A001UTDC.DTS_049,'Conexao',2,0);
end; //TFRM_A002UTDC.Btn_AlterarClick

procedure TFRM_A002UTDC.Btn_Retroceder1Click(Sender: TObject);
begin
  //volta um registro
  DBGenerica(DTM_A001UTDC.DTS_050,'Conexao',0,2);
end; //TFRM_A002UTDC.Btn_Retroceder1Click

procedure TFRM_A002UTDC.Btn_Avancar1Click(Sender: TObject);
begin
  //proximo registro
  DBGenerica(DTM_A001UTDC.DTS_050,'Conexao',0,3);
end; //TFRM_A002UTDC.Btn_Avancar1Click

procedure TFRM_A002UTDC.Btn_UltimoRegClick(Sender: TObject);
begin
  //ultimo registro
  DBGenerica(DTM_A001UTDC.DTS_050,'Conexao',0,4);
end; //TFRM_A002UTDC.Btn_UltimoRegClick

procedure TFRM_A002UTDC.Btn_PrimeiroRegClick(Sender: TObject);
begin
  //posiciona no primeiro registro
  DBGenerica(DTM_A001UTDC.DTS_050,'Conexao',0,1);
end; //TFRM_A002UTDC.Btn_PrimeiroRegClick

procedure TFRM_A002UTDC.DBC_CNOMEUNITButtonClick(Sender: TObject);
begin
  {Verifica o Estado do DataSet Principal}
  if DTM_A001UTDC.DTS_049.DataSet.State in [dsInsert,dsEdit] then
    begin
      {Se for Inser��o, pesquisa na Tabela de Aplica��es do Sistema
       Caso seja Edi��o, n�o faz nada}
      if DTM_A001UTDC.DTS_049.DataSet.State = dsInsert then
        VerTeclas(VK_F2);
    end
  else
    {Se estiver em DsBrowse, Consulta no DataSet Principal}
    Pesquisa(DTM_A001UTDC.QRY_049,true,'','','',true);
end; //TFRM_A002UTDC.DBC_CNOMEUNITButtonClick

procedure TFRM_A002UTDC.Btn_ExcluirClick(Sender: TObject);
begin
  {exclui o registro corrente}
  DBGenerica(DTM_A001UTDC.DTS_049,'Conexao',5,0,nil,false);
end; //TFRM_A002UTDC.Btn_ExcluirClick

procedure TFRM_A002UTDC.Btn_GravarClick(Sender: TObject);
var
   oEstado : TDataSetState;
   cTabGrav  : String;
begin
// grava
  with DTM_A001UTDC do
    begin
      if LiberadoGravacao(FRM_A002UTDC,DTS_049) then
        begin
          if MessageDlg('Deseja Salvar Altera��es?',mtConfirmation,[mbYes,mbNo],0) = mrYes then
            begin
              try
               {retira o relacionamento Master-Detail das tabelas filhas para
                que n�o aconte�a o desposicionamento dos registros das tabelas
                filhas durante a grava��o dos dados da tabela Master }
                QRY_050.MasterSource := nil;
                QRY_050.DisableControls;
                if DTS_049.DataSet.State in [dsEdit,dsInsert] then
                  QRY_049.UpdateRecord;
                QRY_049.DisableControls;
                oEstado := DTS_049.DataSet.State;
                {inicio da transa��o dos dados}
                DMControle.Conexao.StartTransaction;
                try {inicio da tentativa de grava��o de todas as tabelas no banco de dados}
                  {verifica se a Unit est� sendo inserida no cadastro }
                  if DTS_049.DataSet.State = dsInsert then
                    begin
                      {Passa valor zero para a NID e grava o registro}
                      cTabGrav := 'Tabela de Units';
                      DTS_049.DataSet.FieldByName('nidtbluni').AsInteger := 0;
                      DBGenerica(DTS_049,'Conexao',4,1,nil,false);
                      PrepareQryTemp('select nidtbluni from tbluni where cNomeUnit = ' + QuotedStr(Trim(DBC_CNOMEUNIT.Text)));
                    end
                  else
                    if DTS_049.DataSet.State = dsEdit then
                      begin
                        cTabGrav := 'Tabela de Units';
                        //grava dados na tabela de Cadastro de Unit
                        DBGenerica(DTS_049,'Conexao',4,1,nil,false);
                      end;
                  if oEstado = DsInsert then
                    begin
                      cTabGrav := 'Tabela de Fun��es';
                      GravaKeyPai(DTS_050,DMControle.QryTemp.FieldByName('nidtbluni'));
                    end
                  else
                    begin
                      cTabGrav := 'Tabela de Fun��es';
                      DBGenerica(DTS_050,'Conexao',4,1,nil,true);
                    end;
                  DMControle.Conexao.Commit;
                except
                  on E : Exception do
                    begin
                      MessageDlg('N�o foi possivel efetuar a grava��o de todos os dados,'+#13+
                                 'por isso est� opera��o ser� cancelada para manter a integridade'+#13+
                                 'dos seus dados!'+#13+'Erro: '+E.Message+#13+
                                 'Tentativa de grava��o na tabela : '+cTabGrav,mtError,[mbOk],0);
                      DMControle.Conexao.RollBack;
                      Btn_CancelarClick(Btn_Cancelar);
                    end;
                end;
                {trata os bot�es da aplica��o}
                Botoes(['Btn_Gravar','Btn_Cancelar',
                        'Btn_Gravar1','Btn_Cancelar1'],'FRM_A002UTDC',false);
              finally
                {retorna o relacionamento Master-Detail e habilita
                a atualiza�ao dos compomentes visuais}
                DMControle.QryTemp.Close;
                DMControle.QryTemp.SQL.Clear;
                QRY_050.MasterSource := DTS_049;
                QRY_050.EnableControls;
                DTS_049.AutoEdit := false;
                QRY_049.EnableControls;
              end;
            end;
        end;
    end;
end; //TFRM_A002UTDC.Btn_GravarClick

procedure TFRM_A002UTDC.Btn_Gravar1Click(Sender: TObject);
begin
  // Grava na TBLFP
  with DTM_A001UTDC do
    begin
      if DTS_050.DataSet.State = dsInsert then
        DTS_050.DataSet.FieldByName('nidtblfp').AsInteger := 0;
      //grava os dados na tabela tabfp
      DBGenerica(DTS_050,'Conexao',4,1,nil,false);
      Botoes(['Btn_Incluir1','Btn_Alterar1','Btn_Excluir1','Btn_PrimeiroReg1',
              'Btn_Retroceder1','Btn_Avancar1','Btn_UltimoReg1',
              'Btn_Gravar','Btn_Cancelar'],'FRM_A002UTDC',true);
    end;
end; //Btn_Gravar1Click

procedure TFRM_A002UTDC.Btn_Incluir1Click(Sender: TObject);
begin
  // inseri regitro tblfp
  DBGenerica(DTM_A001UTDC.DTS_050,'Conexao',1,0);
  Botoes(['Btn_Gravar1','Btn_Cancelar1','Btn_Gravar','Btn_Cancelar',
          'Btn_PrimeiroReg1','Btn_UltimoReg1'],'FRM_A002UTDC',true);
  DTM_A001UTDC.DTS_050.DataSet.FieldByName('nidtblfp').value := 0;
  DBG_DETALHE.Enabled := false;
end; //TFRM_A002UTDC.Btn_Incluir1Click

procedure TFRM_A002UTDC.Btn_Alterar1Click(Sender: TObject);
begin
  //edita tabela tblfp
  DBGenerica(DTM_A001UTDC.DTS_050,'Conexao',2,0);
  Botoes(['Btn_Gravar1','Btn_Cancelar1','Btn_Gravar','Btn_Cancelar',
          'Btn_PrimeiroReg1','Btn_UltimoReg1'],'FRM_A002UTDC',true);
  DBG_DETALHE.Enabled := false;
end; //TFRM_A002UTDC.Btn_Alterar1Click

procedure TFRM_A002UTDC.Btn_Cancelar1Click(Sender: TObject);
begin
  //cancela opera��o na tabela tblfp
  DBGenerica(DTM_A001UTDC.DTS_050,'Conexao',3,0);
  Botoes(['Btn_Incluir1','Btn_Alterar1','Btn_Excluir1','Btn_PrimeiroReg1',
          'Btn_Retroceder1','Btn_Avancar1','Btn_UltimoReg1',
          'Btn_Gravar','Btn_Cancelar'],'FRM_A002UTDC',true);
  DBG_DETALHE.Enabled := true;
end; //TFRM_A002UTDC.Btn_Cancelar1Click

procedure TFRM_A002UTDC.Btn_Excluir1Click(Sender: TObject);
begin
  // Exclui registro da TBLFP
  if MessageDlg('Deseja Fun��o/Procedimento da UNIT??',mtConfirmation,[mbYes,mbNo],0) = mrYes then
    DBGenerica(DTM_A001UTDC.DTS_050,'Conexao',5,1);
end;

procedure TFRM_A002UTDC.DBM_COBJETIVOKeyPress(Sender: TObject;
  var Key: Char);
begin
  Key := UpCase(Key);
end;

procedure TFRM_A002UTDC.DBM_CDESCRIKeyPress(Sender: TObject;
  var Key: Char);
begin
  Key := UpCase(Key);
end;

procedure TFRM_A002UTDC.DED_CCAMINHOKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
    BTN_LOCAL.Click;
end;

procedure TFRM_A002UTDC.Btn_ImprimirClick(Sender: TObject);
begin
 {fun��o Padr�o de Impress�o}
 RelCadastro(DTM_A001UTDC.QRY_049,'Documenta��o de C�digos');
end;

end.




