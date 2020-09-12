unit A006ADAT;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  LMDCustomControl, LMDCustomPanel, LMDCustomBevelPanel,
  LMDCustomParentPanel, LMDCustomGroupBox, LMDGroupBox, Buttons, ExtCtrls,
  Grids, DBGrids, StdCtrls, Mask, DBCtrls, RxDBComb, RxLookup, ToolEdit,
  RXDBCtrl, DB;

type
  TFRM_A006ADAT = class(TForm)
    Panel2: TPanel;
    Btn_Incluir: TSpeedButton;
    Btn_Alterar: TSpeedButton;
    Btn_Gravar: TSpeedButton;
    Btn_Localizar: TSpeedButton;
    Btn_Excluir: TSpeedButton;
    BTN_SAIR: TSpeedButton;
    Btn_Avancar: TSpeedButton;
    Btn_Retroceder: TSpeedButton;
    Btn_Cancelar: TSpeedButton;
    Btn_Imprimir: TSpeedButton;
    LMDGroupBox3: TLMDGroupBox;
    LMDGroupBox2: TLMDGroupBox;
    GRD_CAD: TDBGrid;
    Label2: TLabel;
    DED_CDESCRITPM: TDBEdit;
    Label3: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    DBC_CTIPORVG: TRxDBComboBox;
    DBL_NIDTBXTPM: TRxDBLookupCombo;
    Label4: TLabel;
    DBC_CFIXAST: TRxDBComboBox;
    Label12: TLabel;
    DBC_CTIPOMVTO: TRxDBComboBox;
    DBC_NNROTAB: TRxDBComboBox;
    DBL_NIDTBXGMV: TRxDBLookupCombo;
    Label5: TLabel;
    Label9: TLabel;
    DBL_NIDTBXSTS: TRxDBLookupCombo;
    Label10: TLabel;
    Label6: TLabel;
    DBC_CCASCATA: TRxDBComboBox;
    Label1: TLabel;
    CBE_CDESCRIEVE: TComboEdit;
    DBL_NIDTBXSPT: TRxDBLookupCombo;
    Label11: TLabel;
    LBL_MOVPESS: TLabel;
    DBL_NIDTBXMVP: TRxDBLookupCombo;
    DBL_NIDTBXACR: TRxDBLookupCombo;
    LBL_MOVCRG: TLabel;
    DBC_CATO: TRxDBComboBox;
    DBC_CCALCULA: TRxDBComboBox;
    Label13: TLabel;
    Label14: TLabel;
    procedure Btn_LocalizarClick(Sender: TObject);
    procedure Btn_AvancarClick(Sender: TObject);
    procedure Btn_RetrocederClick(Sender: TObject);
    procedure Btn_IncluirClick(Sender: TObject);
    procedure Btn_AlterarClick(Sender: TObject);
    procedure Btn_GravarClick(Sender: TObject);
    procedure Btn_CancelarClick(Sender: TObject);
    procedure Btn_ExcluirClick(Sender: TObject);
    procedure Btn_ImprimirClick(Sender: TObject);
    procedure BTN_SAIRClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure DBC_CFIXASTChange(Sender: TObject);
    procedure DBC_CTIPORVGChange(Sender: TObject);
    procedure DBC_NNROTABKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CBE_CDESCRIEVEExit(Sender: TObject);
    procedure CBE_CDESCRIEVEButtonClick(Sender: TObject);
    procedure CBE_CDESCRIEVEChange(Sender: TObject);
    procedure DBC_CTIPOMVTOExit(Sender: TObject);
    procedure DBC_CTIPOMVTOChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    lDigEvento : boolean;
  end;

var
  FRM_A006ADAT: TFRM_A006ADAT;

implementation

uses MPLCtrl, CtrlForms, UVariaveis, D006ADAT, Pesquisa, DMCTRL;

{$R *.DFM}

procedure TFRM_A006ADAT.Btn_LocalizarClick(Sender: TObject);
begin
    MplCtrl.Pesquisa(DTM_A006ADAT.QRY_096,true,'','');
end;

procedure TFRM_A006ADAT.Btn_AvancarClick(Sender: TObject);
begin
  DBGenerica(DTM_A006ADAT.DTS_096,'Conexao',0,3);
  DBC_CFIXASTChange(Sender);
  DBC_CTIPORVGChange(Sender);
  DBC_CTIPOMVTOChange(Sender);
end;

procedure TFRM_A006ADAT.Btn_RetrocederClick(Sender: TObject);
begin
  DBGenerica(DTM_A006ADAT.DTS_096,'Conexao',0,2);
  DBC_CFIXASTChange(Sender);
  DBC_CTIPORVGChange(Sender);
  DBC_CTIPOMVTOChange(Sender);
end;

procedure TFRM_A006ADAT.Btn_IncluirClick(Sender: TObject);
begin
 DBC_CTIPOMVTO.SetFocus;
 DBGenerica(DTM_A006ADAT.DTS_096,'Conexao',1,0,GRD_CAD);
 DTM_A006ADAT.QRY_096.FieldByName('nidtbxtpm').asInteger := 0;
 Botoes(['Btn_Cancelar','Btn_Gravar','Btn_Sair'],'FRM_A006ADAT',true);
end;

procedure TFRM_A006ADAT.Btn_AlterarClick(Sender: TObject);
begin
  Botoes(['Btn_Cancelar','Btn_Gravar','Btn_Sair'],'FRM_A006ADAT',true);
  DBGenerica(DTM_A006ADAT.DTS_096,'Conexao',2,0, GRD_CAD);
end;

procedure TFRM_A006ADAT.Btn_GravarClick(Sender: TObject);
begin
  if LiberadoGravacao(FRM_A006ADAT,DTM_A006ADAT.DTS_096) then
    begin
      //se o tipo de movto do tce estive habilidado
      //e o usuário não informou nenhum tipo
      if (DBL_NIDTBXMVP.Enabled) and
         (DBL_NIDTBXMVP.Text = '') then
        begin
          MessageDlg('Você deve informar o Tipo de Movimentação de Pessoal!',mtWarning,[mbOk],0);
          DBL_NIDTBXMVP.SetFocus;
          exit;
        end;
      //se espécie de ato de cargo estiver halibidado
      //e o usuário não informou nenhuma espécie
      if (DBL_NIDTBXACR.Enabled) and
         (DBL_NIDTBXACR.Text = '') then
        begin
          MessageDlg('Você deve informar uma Espécie de Ato de Cargo!',mtWarning,[mbOk],0);
          DBL_NIDTBXACR.SetFocus;
          exit;
        end;

      //se o usuario indicou que movimento fixa status
      if (DBC_CFIXAST.Text = 'SIM') then
        //e não infomou um status
        if DBL_NIDTBXSTS.Text = '' then
          begin
            //avisa ao usuario para informar o status
            MessageDlg('Você deve informar o status que o movimento fixa!',mtWarning,[mbOk],0);
            DBL_NIDTBXSTS.SetFocus;
            exit;
          end
        else
          //ou não informou a situação da pessoa para o TCE
          if DBL_NIDTBXSPT.Text = '' then
            begin
              //avisa ao usuario para informar o status
              MessageDlg('Você deve informar a Situação da Pessoa TCE!',mtWarning,[mbOk],0);
              DBL_NIDTBXSPT.SetFocus;
              exit;
            end;

      //se o usuario informou que a revogação da
      //movimentação e automatica mas não escolheu um
      //movimento de revogação
      if (DBC_CTIPORVG.Text = 'AUTOMATICO') and
         (DBL_NIDTBXTPM.Text = '') then
        begin
          //avisa ao usuario
          MessageDlg('Você deve informar qual o movimento'+#13+
            ' que revoga o movimento atual!',mtWarning,[mbOk],0);
          //retorna a lista de movimentos de revogação
          DBL_NIDTBXTPM.SetFocus;
          exit;
        end;


      DBGenerica(DTM_A006ADAT.DTS_096,'Conexao',4,0,GRD_CAD);
      if lResp then
       Botoes(['Btn_Gravar','Btn_Cancelar'],'FRM_A006ADAT',false);
    end;
end;

procedure TFRM_A006ADAT.Btn_CancelarClick(Sender: TObject);
begin
   DBGenerica(DTM_A006ADAT.DTS_096,'Conexao',3, 0, GRD_CAD);
   Botoes(['Btn_Cancelar','Btn_Gravar'],'FRM_A006ADAT',false);
end;

procedure TFRM_A006ADAT.Btn_ExcluirClick(Sender: TObject);
begin
    DBGenerica(DTM_A006ADAT.DTS_096,'Conexao',5,0);
end;

procedure TFRM_A006ADAT.Btn_ImprimirClick(Sender: TObject);
begin
  RelCadastro(DTM_A006ADAT.QRY_096,'Tipos de Movimentos');
end;

procedure TFRM_A006ADAT.BTN_SAIRClick(Sender: TObject);
begin
  close;
end;

procedure TFRM_A006ADAT.FormClose(Sender: TObject; var Action: TCloseAction);
begin
    Action:= oControlForms.Saidas(Self,[DTM_A006ADAT],DTM_A006ADAT.DTS_096.DataSet);
end;

procedure TFRM_A006ADAT.FormShow(Sender: TObject);
begin
  if not Acesso(nMatricula,'A006ADAT',DTM_A006ADAT) then
    close;
  Botoes(['Btn_Cancelar','Btn_Gravar'],'FRM_A006ADAT',false);
  lDigEvento := false;

  DBC_CFIXASTChange(Sender);
  DBC_CTIPORVGChange(Sender);
  DBC_CTIPOMVTOChange(Sender);
  FRM_A006ADAT.OnShow := nil;
 {é atribuido ao OnShow do Form o valor nil para que o mesmo seja executado apenas uma vez}
 {pelo fato que se outra aplicação for chamada pela tecla F3, e ao retornar da aplicação que foi chamada pela tecla}
 {o evento OnShow deste form não acontecerá, ou seja não será executado, para permanecer o mesmo status da aplicação}
 {quando o F3 foi chamado}
end;

procedure TFRM_A006ADAT.DBC_CFIXASTChange(Sender: TObject);
begin
  DBL_NIDTBXSTS.Enabled := DBC_CFIXAST.Text = 'SIM';
  DBL_NIDTBXSPT.Enabled := DBL_NIDTBXSTS.Enabled;
  if DTM_A006ADAT.DTS_096.DataSet.State in [dsEdit,dsInsert] then
    if DBC_CFIXAST.Text = 'SIM' then
      DBL_NIDTBXSTS.SetFocus
    else
      begin
        DTM_A006ADAT.DTS_096.DataSet.FieldByName('nidtbxsts').value := null;
        DTM_A006ADAT.DTS_096.DataSet.FieldByName('nidtbxspt').value := null;
      end;


end;

procedure TFRM_A006ADAT.DBC_CTIPORVGChange(Sender: TObject);
begin
  DBL_NIDTBXTPM.Enabled := not(DBC_CTIPORVG.Text = 'NAO');
  if DTM_A006ADAT.DTS_096.DataSet.State in [dsEdit,dsInsert] then
    if DBC_CTIPORVG.Text <> 'NAO' then
      DBL_NIDTBXTPM.SetFocus
    else
      DTM_A006ADAT.DTS_096.DataSet.FieldByName('nidtpmrvg').value := null;


end;

procedure TFRM_A006ADAT.DBC_NNROTABKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  //se a tabela de aplicações estiver em edição ou inserção
  if DTM_A006ADAT.DTS_096.DataSet.State in [dsEdit,dsInsert] then
    //se o usuario pressionou a tecla Delete ou BackSpace
    if (Key = VK_DELETE) or (Key = VK_BACK) then
      //retira o grupo da aplicação
      DTM_A006ADAT.DTS_096.DataSet.FieldByName('nnrotab').value := null;

end;

procedure TFRM_A006ADAT.CBE_CDESCRIEVEExit(Sender: TObject);
begin
  with DTM_A006ADAT,DMControle do
    begin
      //se a tabela de tipo de movimento estiver
      //em edição ou inserção
      if DTS_096.DataSet.State in [dsEdit,dsInsert] then
        //se o usuario retirou o evento do texto
        if Trim(CBE_CDESCRIEVE.Text) = '' then
          begin
            DTS_096.DataSet.FieldByName('nidcadeve').value := null;
            lDigEvento := false;
            exit;
          end;
        //se o usuario acabou de executar a pesquisa em cima do campo
        if FRM_PESQUISA <> nil then
          begin
            //pega o valor da id do evento pesquisado
            //e passa para a tabela de tipo de movimento
            DTS_096.DataSet.FieldByName('nidcadeve').value :=
            FRM_PESQUISA.PesqRetorno.ValorRetorno;
            //atualiza a qry de eventos
            QRY_074.ParamByName('nidcadeve').Value :=
            FRM_PESQUISA.PesqRetorno.ValorRetorno;
            QRY_074.ExecSQL;
          end
        else
          //se o usuario digitou algum evento
          if lDigEvento then
            begin
              lDigEvento := false;
              //prepara pesquisa de eventos
              PrepareQryTemp('select nidcadeve from cadeve where cdescrieve =  ' + QuotedStr(CBE_CDESCRIEVE.Text));
              //se não encontrou o evento digitado
              if QryTemp.IsEmpty then
                begin
                  //avisa ao usuario
                  MessageDlg('Evento não encontrado!',mtWarning,[mbOk],0);
                  CBE_CDESCRIEVE.SetFocus;
                end
              else
                begin
                  //pega o valor da id do evento pesquisado
                  //e passa para a tabela de tipo de movimento
                  DTS_096.DataSet.FieldByName('nidcadeve').value :=
                  QryTemp.FieldByName('nidcadeve').value;
                  //atualiza a qry de eventos
                  QRY_074.ParamByName('nidcadeve').Value :=
                  QryTemp.FieldByName('nidcadeve').Value;
                  QRY_074.ExecSQL;
                end;
            end;

    end;
end;

procedure TFRM_A006ADAT.CBE_CDESCRIEVEButtonClick(Sender: TObject);
begin
   //força a chamada da pesquisa para o campo que está com o foco
  VerTeclas(VK_F2);
end;

procedure TFRM_A006ADAT.CBE_CDESCRIEVEChange(Sender: TObject);
begin
  lDigEvento := DTM_A006ADAT.DTS_096.DataSet.State in [dsEdit,dsInsert];
end;

procedure TFRM_A006ADAT.DBC_CTIPOMVTOExit(Sender: TObject);
begin
 with DTM_A006ADAT do
   begin
     if not(DTS_096.DataSet.State in [dsEdit,dsInsert]) then
       TRxDBComboBox(Sender).ItemIndex :=
       TRxDBComboBox(Sender).Values.IndexOf(DTS_096.DataSet.FieldByName(TRxDBComboBox(Sender).DataField).asString);
   end;
end;

procedure TFRM_A006ADAT.DBC_CTIPOMVTOChange(Sender: TObject);
begin
  if DBC_CTIPOMVTO.Text = 'FUNCIONAL' then
    begin
      DBL_NIDTBXMVP.Enabled := true;
      DBL_NIDTBXACR.Enabled := false;
      if DTM_A006ADAT.DTS_096.DataSet.State in [dsInsert,dsEdit] then
        DTM_A006ADAT.DTS_096.DataSet.FieldByName('nidtbxacr').value := null;
    end
  else
    if DBC_CTIPOMVTO.Text = 'CARGO' then
      begin
        DBL_NIDTBXMVP.Enabled := false;
        DBL_NIDTBXACR.Enabled := true;
        if DTM_A006ADAT.DTS_096.DataSet.State in [dsInsert,dsEdit] then
          DTM_A006ADAT.DTS_096.DataSet.FieldByName('nidtbxmvp').value := null;
      end
    else
      begin
        DBL_NIDTBXMVP.Enabled := false;
        DBL_NIDTBXACR.Enabled := false;
      end;


end;

end.
