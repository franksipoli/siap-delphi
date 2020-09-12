unit A005UTAU;

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
  RzListVw, Grids, DBGrids, PageControlEx, DB, RXDBCtrl, LMDStaticText,
  MemDS, DBAccess, Ora;


type
  TFRM_A005UTAU = class(TForm)
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
    Btn_Excluir: TSpeedButton;
    LMDGroupBox1: TLMDGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    LMDGroupBox2: TLMDGroupBox;
    DED_CNOMEGRL: TDBEdit;
    DED_CNOMEUSU: TDBEdit;
    GRD_USUARIOS: TDBGrid;
    CBE_CCPFCNPJ: TComboEdit;
    BTN_CADUSU: TSpeedButton;
    STE_NOME: TLMDStaticText;
    STE_LOGIN: TLMDStaticText;
    STE_BLOQUEADO: TLMDStaticText;
    QRY_REMOVEACESSOUSU: TOraQuery;
    LMDGroupBox3: TLMDGroupBox;
    DBC_ADMIN: TDBCheckBox;
    DBC_LBLOQUEADO: TDBCheckBox;
    QRY_INSERIUSUADMIN: TOraQuery;
    BTN_PERFIL: TSpeedButton;
    BTN_OPUSU: TSpeedButton;
    PNL_AVISO: TPanel;
    lbl_msg: TLabel;
    procedure BTN_SAIRClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure Btn_AvancarClick(Sender: TObject);
    procedure Btn_RetrocederClick(Sender: TObject);
    procedure Btn_LocalizarClick(Sender: TObject);
    procedure Btn_ImprimirClick(Sender: TObject);
    procedure Btn_IncluirClick(Sender: TObject);
    procedure Btn_CancelarClick(Sender: TObject);
    procedure Btn_ExcluirClick(Sender: TObject);
    procedure Btn_AlterarClick(Sender: TObject);
    procedure Btn_GravarClick(Sender: TObject);
    procedure CBE_CCPFCNPJButtonClick(Sender: TObject);
    procedure CBE_CCPFCNPJExit(Sender: TObject);
    procedure DBC_LBLOQUEADOMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure BTN_CADUSUClick(Sender: TObject);
    procedure GRD_USUARIOSDblClick(Sender: TObject);
    procedure STE_NOMEClick(Sender: TObject);
    procedure STE_LOGINClick(Sender: TObject);
    procedure STE_BLOQUEADOClick(Sender: TObject);
    procedure GRD_USUARIOSTitleClick(Column: TColumn);
    procedure BTN_PERFILClick(Sender: TObject);
    procedure BTN_OPUSUClick(Sender: TObject);
  private

    { Private declarations }
  public
    { Public declarations }
    UsuarioAdmin : Boolean;
    procedure OrdenaGrid(NomeCampo: String);
  end;

var
  FRM_A005UTAU: TFRM_A005UTAU;

implementation

uses MPLCtrl, UVariaveis, CtrlForms, D005UTAU, DMCTRL, A001UTAU, D001UTAU,
  A011UTAU, D011UTAU, A016UTAU, D016UTAU, A018UTAU;

{$R *.DFM}

procedure TFRM_A005UTAU.BTN_SAIRClick(Sender: TObject);
begin
  CBE_CCPFCNPJ.OnExit := nil;
  DBC_LBLOQUEADO.OnClick := nil;
  Close;
end;

procedure TFRM_A005UTAU.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:= oControlForms.Saidas(Self,[DTM_A005UTAU],DTM_A005UTAU.DTS_051.DataSet);
end;

procedure TFRM_A005UTAU.FormShow(Sender: TObject);
begin
  Acesso(nMatricula,'A005UTAU',DTM_A005UTAU);
  Botoes(['Btn_Cancelar','Btn_Gravar'],'FRM_A005UTAU',False);
  DTM_A005UTAU.QRY_051.ParamByName('noperador').asInteger := nMatricula;
  DTM_A005UTAU.QRY_051.ExecSql;
  
  FRM_A005UTAU.OnShow := nil;
 {é atribuido ao OnShow do Form o valor nil para que o mesmo seja executado apenas uma vez}
 {pelo fato que se outra aplicação for chamada pela tecla F3, e ao retornar da aplicação que foi chamada pela tecla}
 {o evento OnShow deste form não acontecerá, ou seja não será executado, para permanecer o mesmo status da aplicação}
 {quando o F3 foi chamado}
end;

procedure TFRM_A005UTAU.Btn_AvancarClick(Sender: TObject);
begin
 {Avanca um registro na tabela de usuarios}
 DBGenerica(DTM_A005UTAU.DTS_051,'Conexao',0,3);
end;

procedure TFRM_A005UTAU.Btn_RetrocederClick(Sender: TObject);
begin
 {Retrocede um registro na tabela de usuarios}
 DBGenerica(DTM_A005UTAU.DTS_051,'Conexao',0,2);
end;

procedure TFRM_A005UTAU.Btn_LocalizarClick(Sender: TObject);
begin
  {Pesquisa Registros cadastrados}
  Pesquisa(DTM_A005UTAU.QRY_051,true,'','','',false);
  //OrdenaGrid(DTM_A005UTAU.QRY_051.GetOrderBy);
end;

procedure TFRM_A005UTAU.Btn_ImprimirClick(Sender: TObject);
begin
  {função Padrão de Impressão}
  RelCadastro(DTM_A005UTAU.QRY_051,'Cadastro de Usuários');
end;

procedure TFRM_A005UTAU.Btn_IncluirClick(Sender: TObject);
begin
  {inclui um novo registro de usuário}
  DBGenerica(DTM_A005UTAU.DTS_051,'Conexao',1,0,GRD_USUARIOS);
  DTM_A005UTAU.DTS_051.DataSet.FieldByName('nidtbl_u').AsInteger := 0;
  DTM_A005UTAU.DTS_051.DataSet.FieldByName('lbloqueado').AsInteger := 0;
  CBE_CCPFCNPJ.SetFocus;
  CBE_CCPFCNPJ.EditMask := '';
  {trata os botões da aplicação}
  Botoes(['Btn_Cancelar','Btn_Gravar','Btn_Sair'],'FRM_A005UTAU',true);
end;

procedure TFRM_A005UTAU.Btn_CancelarClick(Sender: TObject);
begin
  {Cancela ação ao BD no registro corrente}
  DBGenerica(DTM_A005UTAU.DTS_051,'Conexao',3,0,GRD_USUARIOS);
  Botoes(['Btn_Cancelar','Btn_Gravar'],'FRM_A005UTAU',False);
  DTM_A005UTAU.QRY_051AfterScroll(DTM_A005UTAU.QRY_051);
end;

procedure TFRM_A005UTAU.Btn_ExcluirClick(Sender: TObject);
  var
    nResult : Integer;
    lMessage : Boolean;
begin
  nResult := -1;
  lMessage := true;
  if UsuarioAtribuiuAcesso(DTM_A005UTAU.QRY_051.FieldByName('nidtbl_u').asInteger) then
    begin
      Application.CreateForm(TFRM_A018UTAU,FRM_A018UTAU);
      FRM_A018UTAU.cNomeUsu := DTM_A005UTAU.DTS_051.DataSet.FieldByName('cnomeusu').DisplayText;
      FRM_A018UTAU.nIdUsu := DTM_A005UTAU.DTS_051.DataSet.FieldByName('nidtbl_u').asInteger;
      nResult := FRM_A018UTAU.ShowModal;
      if nResult = mrCancel then
        Abort;
    end;

  if nResult = -1 then
    lMessage := MessageDlg('Deseja deletar usuário?',mtConfirmation,[mbYes,mbNo],0) = mrYes;

  if lMessage then
    begin
      with DMControle do
        begin
          lbl_msg.Caption :=
          'Deletando usuario ' + DTM_A005UTAU.DTS_051.DataSet.FieldByName('cnomeusu').asString + #13 +
          'Aguarde...';
          PNL_AVISO.Visible := true;
          Repaint;
          Conexao.StartTransaction;
          try
            QRY_REMOVEACESSOUSU.ParamByName('nidusuario').asInteger :=
            DTM_A005UTAU.DTS_051.DataSet.FieldByName('nidtbl_u').asInteger;
            QRY_REMOVEACESSOUSU.ParamByName('nidoperador').asInteger :=
            nMatricula;
            QRY_REMOVEACESSOUSU.ExecSQL;
            DBGenerica(DTM_A005UTAU.DTS_051,'Conexao',5,1);
            Conexao.Commit;
            QRY_U.Refresh;
            PNL_AVISO.Visible := false;
          except
            on E : Exception do
              begin
                PNL_AVISO.Visible := false;
                MessageDlg('Houve um erro na deleção deste usuário!' + #13 +
                           'Está operação será totalmente cancelada para garantir' + #13 +
                           'a integridade de seus dados!' + #13 +
                           'Favor informar ao Administrador do sistema!' + #13 +
                           'Erro: ' + E.Message,mtError,[mbOk],0);

                Conexao.Rollback;
              end;
          end;

        end;
    end;
end;

procedure TFRM_A005UTAU.Btn_AlterarClick(Sender: TObject);
begin
  UsuarioAdmin := DBC_ADMIN.Checked;
  {Altera registro corrente }
  DBGenerica(DTM_A005UTAU.DTS_051,'Conexao',2,0,GRD_USUARIOS);
  Botoes(['Btn_Cancelar','Btn_Gravar','Btn_Sair'],'FRM_A005UTAU',true);
end;

procedure TFRM_A005UTAU.Btn_GravarClick(Sender: TObject);
var
  lAtribuiAcesso : boolean;
  nResult : Integer;
  lMessage : boolean;
  nIdGrl : Integer;
  OldState : TDataSetState;
begin
  nResult := -1;
  lMessage := true;
  with DTM_A005UTAU,DMControle do
    begin
      PrepareQryTemp('select nidtbl_u,cnomeusu from tbl_u where cnomeusu = ' + QuotedStr(DED_CNOMEUSU.Text));
      if not(QryTemp.IsEmpty) then
        if QryTemp.FieldByName('nidtbl_u').asInteger <> DTS_051.DataSet.FieldByName('nidtbl_u').asInteger then
          begin
            MessageDlg('Nome de login já está sendo usado!' + #13 + 'Favor escolher outro nome.',mtInformation,[mbOk],0);
            QryTemp.Close;
            Abort;
          end;

      QryTemp.Close;
      //se foi marcado que o usuario não será admin e esse usuario
      //era admin
      if (not(DBC_ADMIN.Checked)) and (UsuarioAdmin) then
        if UsuarioAtribuiuAcesso(DTS_051.DataSet.FieldByName('nidtbl_u').asInteger) then
          begin
            Application.CreateForm(TFRM_A018UTAU,FRM_A018UTAU);
            FRM_A018UTAU.cNomeUsu := DTS_051.DataSet.FieldByName('cnomeusu').DisplayText;
            FRM_A018UTAU.nIdUsu := DTS_051.DataSet.FieldByName('nidtbl_u').asInteger;
            nResult := FRM_A018UTAU.ShowModal;
            if nResult = mrCancel then
              Abort;
          end;

      if nResult = -1 then
        lMessage := MessageDlg('Deseja Salvar Alterações?',mtConfirmation,[mbYes,mbNo],0) = mrYes;

      if lMessage then
        begin
          {Passa nid do Pai}
          DTS_051.DataSet.UpdateRecord;
          OldState := DTS_051.DataSet.State;
          DMControle.Conexao.StartTransaction;
          try
            nIdGrl := DTS_051.DataSet.FieldByName('nidcadgrl').asInteger;
            {grava as alterações na tabela de usuários}
            DBGenerica(DTS_051,'Conexao',4,1,GRD_USUARIOS,false);

            //se foi inserido um novo usuario
            if OldState = dsInsert then
              begin
                PrepareQryTemp('select nidtbl_u from tbl_u where nidcadgrl = ' + IntToStr(nIdGrl));
                //inclui registro na tabela de opu --operador usuario
                DBGenerica(DTS_061,'Conexao',1,0);
                DTS_061.DataSet.FieldByName('nidtbl_opu').asInteger := 0;
                DTS_061.DataSet.FieldByName('noperador').asInteger := nMatricula;
                DTS_061.DataSet.FieldByName('nidtbl_u').asInteger := QryTemp.FieldByName('nidtbl_u').asInteger;
                //grava na tabela de opu
                DBGenerica(DTS_061,'Conexao',4,1);
              end;

            DTS_051.DataSet.Refresh;
            DTS_051.DataSet.Locate('nidcadgrl',nIdGrl,[]);
            //se foi inserido um novo usuario
            if OldState = dsInsert then
              //fecha a qry temporaria
              QryTemp.Close;

            //se estiver marcado que o usuario é admin e o usuario
            //não era admin
            if (DBC_ADMIN.Checked) and (not(UsuarioAdmin)) then
              begin
                lbl_msg.Caption :=
                'Atribuindo aplicações do sistema para o usuario  ' + DTS_051.DataSet.FieldByName('cnomeusu').asString +#13+
                'Aguarde...';
                PNL_AVISO.Visible := true;
                Repaint;
                QRY_INSERIUSUADMIN.ParamByName('nidusuario').asInteger :=
                DTS_051.DataSet.FieldByName('nidtbl_u').asInteger;
                QRY_INSERIUSUADMIN.ParamByName('nidoperador').asInteger := nMatricula;
                QRY_INSERIUSUADMIN.ExecSql;
                PNL_AVISO.Visible := false;
              end
            else
              //se foi marcado que o usuario não será admin e esse usuario
              //era admin
              if (not(DBC_ADMIN.Checked)) and (UsuarioAdmin) then
                begin
                  lbl_msg.Caption :=
                   'Removendo acesso do usuario ' + DTS_051.DataSet.FieldByName('cnomeusu').asString + #13 +
                   'Aguarde...';
                   PNL_AVISO.Visible := true;
                   Repaint;
                  QRY_REMOVEACESSOUSU.ParamByName('nidusuario').asInteger :=
                  DTS_051.DataSet.FieldByName('nidtbl_u').asInteger;
                  QRY_REMOVEACESSOUSU.ParamByName('nidoperador').asInteger :=
                  nMatricula;
                  QRY_REMOVEACESSOUSU.ExecSQL;
                  PNL_AVISO.Visible := false;
                end;
            //muda o estado dos botões da aplicação
            Botoes(['Btn_Cancelar','Btn_Gravar'],'FRM_A005UTAU',False);
            QRY_051AfterScroll(QRY_051);
            //grava as informações no banco de dados
            DMControle.Conexao.Commit;
            DMControle.QRY_U.Refresh;
          except
            //se houver algum erro
            on E : Exception do
              begin
                PNL_AVISO.Visible := false;
                //avisa ao usuário
                MessageDlg('Não foi possivel efetuar a gravação de todos os dados,'+#13+
                           'por isso está operação será cancelada para manter a integridade'+#13+
                           'dos seus dados!'+#13+'Erro: '+E.Message,mtError,[mbOk],0);
                //desfaz as alterações nas tabelas
                DMControle.Conexao.RollBack;
                //chama o procedimento de cancelamento
                Btn_CancelarClick(Btn_Cancelar);
              end;
          end;

        end;
    end;
end;

procedure TFRM_A005UTAU.CBE_CCPFCNPJButtonClick(Sender: TObject);
begin
  {Pesquisa Registros cadastrados}
  if DTM_A005UTAU.DTS_051.DataSet.State in [dsInsert,dsEdit] then
     VerTeclas(VK_F2);
end;

procedure TFRM_A005UTAU.CBE_CCPFCNPJExit(Sender: TObject);
begin
  with DTM_A005UTAU do
    begin
      if DTS_051.DataSet.State = dsInsert then
        if CBE_CCPFCNPJ.Text <> '' then
          begin
            QRY_016.Refresh;
            if (not QRY_016.Locate('ccpfcnpj',CBE_CCPFCNPJ.Text,[])) then
              begin
                MessageDlg('Usuário Não Encontrado',mtError,[mbOk],0);
                CBE_CCPFCNPJ.SetFocus;
              end
            else
              begin
                PrepareQryTemp('select * from tbl_u where nidcadgrl = ' +
                               QRY_016.FieldByName('nidcadgrl').asString);
                if DMControle.QryTemp.IsEmpty then
                  begin
                    DTS_051.DataSet.FieldByName('nidcadgrl').AsInteger :=
                    DTS_016.DataSet.FieldByName('nidcadgrl').AsInteger;
                    DTS_051.DataSet.FieldByName('cnomegrl').asString :=
                    DTS_016.DataSet.FieldByName('cnomegrl').asString;
                    DTS_051.DataSet.FieldByName('cpessoafj').AsString :=
                    DTS_016.DataSet.FieldByName('cpessoafj').AsString;
                    DTS_051.DataSet.FieldByName('ccpfcnpj').AsString :=
                    DTS_016.DataSet.FieldByName('ccpfcnpj').AsString;
                    QRY_051AfterScroll(DTS_051.DataSet);
                  end
                else
                  begin
                    MessageDlg('Usuário já cadastrado!',mtError,[mbOk],0);
                    CBE_CCPFCNPJ.SetFocus;
                  end;
              end;
          end
        else
          begin
            MessageDlg('Favor Informar Usuário..',mtError,[mbOk],0);
            CBE_CCPFCNPJ.SetFocus;
          end;
   end;
end;

procedure TFRM_A005UTAU.DBC_LBLOQUEADOMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  if DTM_A005UTAU.DTS_051.DataSet.State in [dsInsert,dsEdit] then
    begin
      DTM_A005UTAU.DTS_051.DataSet.UpdateRecord;
    end;
end;

procedure TFRM_A005UTAU.BTN_CADUSUClick(Sender: TObject);
begin
  //Application.CreateForm(TDTM_A001UTAU,DTM_A001UTAU);
  //Application.CreateForm(TFRM_A001UTAU,FRM_A001UTAU);

  Application.CreateForm(TDTM_A011UTAU,DTM_A011UTAU);
  Application.CreateForm(TFRM_A011UTAU,FRM_A011UTAU);


  FRM_A011UTAU.nIdUsuario := DTM_A005UTAU.DTS_051.DataSet.FieldByName('nidtbl_u').asInteger;
  FRM_A011UTAU.nIdOperador := nMatricula;
  FRM_A011UTAU.cNmUsu := DED_CNOMEUSU.Text;
  FRM_A011UTAU.UsuarioAdmin := DBC_ADMIN.Checked;

  if DBC_LBLOQUEADO.Checked then
    FRM_A011UTAU.Caption := FRM_A001UTAU.Caption + ' - Bloqueado';
  oControlForms.AtivaForm('FRM_A011UTAU',ShModal,nil,false);
end;

procedure TFRM_A005UTAU.GRD_USUARIOSDblClick(Sender: TObject);
begin
  if BTN_CADUSU.Enabled then
    BTN_CADUSU.Click;

end;

procedure TFRM_A005UTAU.STE_NOMEClick(Sender: TObject);
begin
  GRD_USUARIOSTitleClick(GRD_USUARIOS.Columns[0]);
end;

procedure TFRM_A005UTAU.STE_LOGINClick(Sender: TObject);
begin
  GRD_USUARIOSTitleClick(GRD_USUARIOS.Columns[1]);
end;

procedure TFRM_A005UTAU.STE_BLOQUEADOClick(Sender: TObject);
begin
  GRD_USUARIOSTitleClick(GRD_USUARIOS.Columns[2]);
end;

procedure TFRM_A005UTAU.OrdenaGrid(NomeCampo : String);
begin
  if NomeCampo = 'CNOMEGRL' then
    begin
      STE_LOGIN.Caption := ' ';
      STE_LOGIN.Repaint;
      STE_BLOQUEADO.Caption := ' ';
      STE_BLOQUEADO.Repaint;
      MudaOrdenacao(DTM_A005UTAU.QRY_051,'CNOMEGRL',STE_NOME);
    end
  else
    if NomeCampo = 'CNOMEUSU' then
      begin
        STE_NOME.Caption := ' ';
        STE_NOME.Repaint;
        STE_BLOQUEADO.Caption := ' ';
        STE_BLOQUEADO.Repaint;
        MudaOrdenacao(DTM_A005UTAU.QRY_051,'CNOMEUSU',STE_LOGIN);
      end
    else
      begin
        STE_NOME.Caption := ' ';
        STE_NOME.Repaint;
        STE_LOGIN.Caption := ' ';
        STE_LOGIN.Repaint;
        MudaOrdenacao(DTM_A005UTAU.QRY_051,'LBLOQUEADO',STE_BLOQUEADO);
      end;
end;

procedure TFRM_A005UTAU.GRD_USUARIOSTitleClick(Column: TColumn);
begin
 OrdenaGrid(Column.FieldName);
end;

procedure TFRM_A005UTAU.BTN_PERFILClick(Sender: TObject);
begin
  oControlForms.AtivaForm('FRM_A013UTAU',shModal,NIL,false);
end;

procedure TFRM_A005UTAU.BTN_OPUSUClick(Sender: TObject);
begin
  //Application.CreateForm(TDTM_A016UTAU,DTM_A016UTAU);
  //Application.CreateForm(TFRM_A016UTAU,FRM_A016UTAU);

  oControlForms.AtivaForm('FRM_A016UTAU',shModal,NIL,false);

  DTM_A005UTAU.QRY_051.Refresh;
  DTM_A005UTAU.QRY_051AfterScroll(DTM_A005UTAU.QRY_051);

end;


end.




