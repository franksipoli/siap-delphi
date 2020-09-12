unit A005RH;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  RxLookup, StdCtrls, RxDBComb, Grids, DBGrids, DBCtrls, Mask, ToolEdit,
  RXDBCtrl, LMDCustomControl, LMDCustomPanel, LMDCustomBevelPanel,
  LMDCustomParentPanel, LMDCustomPanelFill, LMDPanelFill, Buttons, ExtCtrls,
  LMDCustomGroupBox, LMDGroupBox, DB, LMDSimplePanel, ComCtrls,
  PageControlEx, ImgList, LMDControl, LMDBaseControl,
  LMDBaseGraphicControl, LMDGraphicControl, LMDFill;

type
  TFRM_A005RH = class(TForm)
    Panel2: TPanel;
    BTN_ALTERAR: TSpeedButton;
    BTN_GRAVAR: TSpeedButton;
    BTN_SAIR: TSpeedButton;
    BTN_CANCELAR: TSpeedButton;
    BTN_IMPRIMIR: TSpeedButton;
    LMDGroupBox2: TLMDGroupBox;
    GRP_IDENT: TLMDGroupBox;
    Label19: TLabel;
    GRP_CARGO: TLMDGroupBox;
    Label21: TLabel;
    DBD_DDTADMISSA: TDBDateEdit;
    Label20: TLabel;
    DBD_DDTDESLIGA: TDBDateEdit;
    BTN_FINAN: TSpeedButton;
    Label2: TLabel;
    Label3: TLabel;
    Label1: TLabel;
    DBL_NIDTBXTCR: TRxDBLookupCombo;
    BTN_INCLUIR: TSpeedButton;
    BTN_PESQUISAR: TSpeedButton;
    BTN_AVANCAR: TSpeedButton;
    BTN_RETROCEDER: TSpeedButton;
    DBL_NIDCADCRG: TRxDBLookupCombo;
    GRP_INSS: TLMDGroupBox;
    LBL_INSS: TLabel;
    DBL_NIDTAGRPC: TRxDBLookupCombo;
    GRP_HORARIO: TLMDGroupBox;
    LBL_HORARIO: TLabel;
    DBL_NIDTAGQHR: TRxDBLookupCombo;
    GRP_LOTACAO: TLMDGroupBox;
    DBL_NIDTBXORG: TRxDBLookupCombo;
    DBL_NIDTAGODP: TRxDBLookupCombo;
    DBL_NIDTAGDST: TRxDBLookupCombo;
    GRP_LOCALTRAB: TLMDGroupBox;
    LBL_LCTRAB: TLabel;
    LBL_FONE: TLabel;
    LBL_EMAIL: TLabel;
    DBL_NIDTBXLTB: TRxDBLookupCombo;
    DED_CTELCOM: TDBEdit;
    DED_CEMAIL: TDBEdit;
    GRP_INATIVOS: TLMDGroupBox;
    LBL_ULTCARGO: TLabel;
    DED_CULTIMOCRG: TDBEdit;
    GRP_PENSAO: TLMDGroupBox;
    LBL_ORI: TLabel;
    Label6: TLabel;
    LBL_PARENT: TLabel;
    DBL_NIDTBXGRP: TRxDBLookupCombo;
    DED_NPERSLR: TDBEdit;
    LBL_PERCEN: TLabel;
    DED_CDESCRISTS: TDBEdit;
    BTN_EXCLUIR: TSpeedButton;
    GRP_FGTS: TLMDGroupBox;
    LBL_FGTS: TLabel;
    LBL_OPFG: TLabel;
    DBD_DDTOPCFGTS: TDBDateEdit;
    DBL_NIDTAGOPT: TRxDBLookupCombo;
    BTN_MOV: TSpeedButton;
    CBE_NIDTAGOBT: TComboEdit;
    DED_CDESCRITPM: TDBEdit;
    BTN_STATUS: TSpeedButton;
    LBL_ORG: TLMDFill;
    LBL_DEPT: TLMDFill;
    LBL_SETOR: TLMDFill;
    LMDGroupBox14: TLMDGroupBox;
    Label4: TLabel;
    Label11: TLabel;
    Label13: TLabel;
    DBL_NIDTBXENT: TRxDBLookupCombo;
    DED_NCODFUNOLD: TDBEdit;
    DED_NMATRICULA: TDBEdit;
    BTN_PGTOEFT: TSpeedButton;
    procedure BTN_SAIRClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BTN_PESQUISARClick(Sender: TObject);
    procedure BTN_AVANCARClick(Sender: TObject);
    procedure BTN_RETROCEDERClick(Sender: TObject);
    procedure BTN_INCLUIRClick(Sender: TObject);
    procedure BTN_ALTERARClick(Sender: TObject);
    procedure BTN_GRAVARClick(Sender: TObject);
    procedure BTN_CANCELARClick(Sender: TObject);
    procedure BTN_EXCLUIRClick(Sender: TObject);
    procedure DBL_NIDTBXTCRChange(Sender: TObject);
    procedure DBL_NIDTAGOPTChange(Sender: TObject);
    procedure DBL_NIDTBXORGChange(Sender: TObject);
    procedure DBL_NIDTAGODPChange(Sender: TObject);
    procedure CBE_NIDTAGOBTKeyPress(Sender: TObject; var Key: Char);
    procedure CBE_NIDTAGOBTExit(Sender: TObject);
    procedure CBE_NIDTAGOBTKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BTN_STATUSClick(Sender: TObject);
    procedure BTN_MOVClick(Sender: TObject);
    procedure BTN_FINANClick(Sender: TObject);
    procedure CBE_NIDTAGOBTButtonClick(Sender: TObject);
    procedure BTN_PGTOEFTClick(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }

    nIdCadGrl : integer;//id do servidor
    procedure AtualizaDbLookup;
    procedure AtuCaptionForm;
  end;

var
  FRM_A005RH: TFRM_A005RH;

implementation

uses D005RH, UVariaveis, MPLCtrl, Pesquisa, DMCTRL, CtrlForms, A009RH,
  D009RH, A010RH, D010RH, D011RH, A011RH, A038RH, D038RH, TELAPRIN;

{$R *.DFM}



procedure TFRM_A005RH.BTN_SAIRClick(Sender: TObject);
begin
    close;
end;

procedure TFRM_A005RH.FormShow(Sender: TObject);
begin
  //verifica o acesso do usuário a objetos e campos da aplicação
  if not Acesso(nMatricula,'A005RH',DTM_A005RH) then
    close;

  //muda o estado dos botõe da aplicação
  Botoes(['Btn_Cancelar','Btn_Gravar'],'FRM_A005RH',false);

  DTM_A005RH.QRY_029.ParamByName('nidcadgrl').asInteger :=
  nIdCadGrl;
  DTM_A005RH.QRY_029.ExecSql;

  DBL_NIDTBXTCRChange(Sender);
  AtualizaDbLookup;

  DTM_A005RH.QRY_077AfterScroll(DTM_A005RH.QRY_077);

  DTM_A005RH.QRY_077AfterOpen(DTM_A005RH.QRY_077);
  //atualiza o caption do form para mostrar
  //a quantidade de fichas,e a ficha atual
  AtuCaptionForm;

  FRM_A005RH.OnShow := nil;

 {é atribuido ao OnShow do Form o valor nil para que o mesmo seja executado apenas uma vez}
 {pelo fato que se outra aplicação for chamada pela tecla F3, e ao retornar da aplicação que foi chamada pela tecla}
 {o evento OnShow deste form não acontecerá, ou seja não será executado, para permanecer o mesmo status da aplicação}
 {quando o F3 foi chamado}
end;

procedure TFRM_A005RH.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  //fecha os datasets do DataModule e libera o form e o DataModule da memoria
  Action:= oControlForms.Saidas(Self,[DTM_A005RH],DTM_A005RH.DTS_077.DataSet);
end;

procedure TFRM_A005RH.BTN_PESQUISARClick(Sender: TObject);
begin
  //chama pesquisa padrão para a tabela de fichas funcionais
  MPLCtrl.Pesquisa(DTM_A005RH.QRY_077,true,'','tagffu.nidcadser = ' + DTM_A005RH.DTS_077.DataSet.FieldByName('nidcadser').asString);
  DBL_NIDTBXTCRChange(Sender);
  AtualizaDbLookup;
  //atualiza o caption do form para mostrar
  //a quantidade de fichas,e a ficha atual
  AtuCaptionForm;
end;

procedure TFRM_A005RH.BTN_AVANCARClick(Sender: TObject);
begin
 //avanca para o proxima ficha funcional
 DBGenerica(DTM_A005RH.DTS_077,'Conexao',0,3);
 DBL_NIDTBXTCRChange(Sender);
 AtualizaDbLookup;
 //atualiza o caption do form para mostrar
 //a quantidade de fichas,e a ficha atual
 AtuCaptionForm;
end;

procedure TFRM_A005RH.BTN_RETROCEDERClick(Sender: TObject);
begin
  //ficha alterior
  DBGenerica(DTM_A005RH.DTS_077,'Conexao',0,2);
  DBL_NIDTBXTCRChange(Sender);
  AtualizaDbLookup;
  //atualiza o caption do form para mostrar
  //a quantidade de fichas,e a ficha atual
  AtuCaptionForm;
end;

procedure TFRM_A005RH.BTN_INCLUIRClick(Sender: TObject);
begin
  DED_NMATRICULA.SetFocus;
  {inclui uma nova ficha}
  DBGenerica(DTM_A005RH.DTS_077,'Conexao',1,0);
  DTM_A005RH.DTS_077.DataSet.FieldByName('nidtagffu').asInteger := 0;
  DTM_A005RH.DTS_077.DataSet.FieldByName('nidCadSer').asInteger :=
  DTM_A005RH.DTS_029.DataSet.FieldByName('nidCadSer').asInteger;
  Botoes(['Btn_Cancelar','Btn_Sair','Btn_Gravar'],'FRM_A005RH',true);

end;

procedure TFRM_A005RH.BTN_ALTERARClick(Sender: TObject);
begin
  //edita a ficha atual
  DBGenerica(DTM_A005RH.DTS_077,'Conexao',2,0,nil);
  Botoes(['Btn_Cancelar','Btn_Sair','Btn_Gravar'],'FRM_A005RH',true);
end;

procedure TFRM_A005RH.BTN_GRAVARClick(Sender: TObject);
begin
  if LiberadoGravacao(FRM_A005RH,DTM_A005RH.DTS_077) then
    begin
      PrepareQryTemp('select nidtagffu from tagffu where ' +
      'nmatricula = ' + DED_NMATRICULA.Text + ' and nidtagffu <> ' +
      DTM_A005RH.DTS_077.DataSet.FieldByName('nidtagffu').asString);
      if not(DMControle.QryTemp.IsEmpty) then
        begin
          MessageDlg('Número de matricula já esta sendo usado em outra ficha!',
          mtInformation,[mbOk],0);
          DED_NMATRICULA.SetFocus;
          DMControle.QryTemp.Close;
          DMControle.QryTemp.SQL.Clear;
          exit;
        end;
      DMControle.QryTemp.Close;
      DMControle.QryTemp.SQL.Clear;
      DBGenerica(DTM_A005RH.DTS_077,'Conexao',4,0,NIL,false);
      AtualizaDbLookup;
      if lResp then
        begin
          Botoes(['Btn_Gravar','Btn_Cancelar'],'FRM_A005RH',false);
          DTM_A005RH.QRY_077AfterOpen(DTM_A005RH.QRY_077);
        end;
    end;
end;

procedure TFRM_A005RH.BTN_CANCELARClick(Sender: TObject);
begin
   //cancela o operação
   DBGenerica(DTM_A005RH.DTS_077,'Conexao',3, 0,NIL,false);
   Botoes(['Btn_Cancelar', 'Btn_Gravar'],'FRM_A005RH',false);
   DBL_NIDTBXTCRChange(Sender);
   AtualizaDbLookup;
end;

procedure TFRM_A005RH.BTN_EXCLUIRClick(Sender: TObject);
begin
  //exclui a ficha atual
  DBGenerica(DTM_A005RH.DTS_077,'Conexao',5,0,NIL,false);
  DTM_A005RH.QRY_077AfterOpen(DTM_A005RH.QRY_077);
  DBL_NIDTBXTCRChange(Sender);
  AtualizaDbLookup;
end;

procedure TFRM_A005RH.DBL_NIDTBXTCRChange(Sender: TObject);
  procedure AlterPensao(Habilida: Boolean);
  begin
    with DTM_A005RH.DTS_077.DataSet do
      begin
        if (not(Habilida)) and
           (State in [dsEdit,dsInsert]) then
          begin
            DED_NPERSLR.Text := '';
            CBE_NIDTAGOBT.Text := '';
            FieldByName('nidtagobt').value := null;
            FieldByName('nidtbxgrp').value := null;
          end;
        GRP_PENSAO.Enabled := Habilida;
        LBL_ORI.Enabled := Habilida;
        CBE_NIDTAGOBT.Enabled := Habilida;
        LBL_PARENT.Enabled := Habilida;
        DBL_NIDTBXGRP.Enabled := Habilida;
        LBL_PERCEN.Enabled := Habilida;
        DED_NPERSLR.Enabled := Habilida;
      end;
  end;
  procedure AlterInativo(Habilida: Boolean);
  begin
    if (not(Habilida)) and
       (DTM_A005RH.DTS_077.DataSet.State in [dsInsert,dsEdit]) then
      begin
        DED_CULTIMOCRG.Text := '';
        DTM_A005RH.DTS_077.DataSet.FieldByName('nidtagrpc').value := null;
      end;
    GRP_INATIVOS.Enabled := Habilida;
    GRP_INSS.Enabled := Habilida;
    LBL_INSS.Enabled := Habilida;
    DBL_NIDTAGRPC.Enabled := Habilida;
    LBL_ULTCARGO.Enabled := Habilida;
    DED_CULTIMOCRG.Enabled := Habilida;
  end;
  procedure AlterEfeComss(Habilida: Boolean);
  begin
    with DTM_A005RH.DTS_077.DataSet do
      begin
        if (not(Habilida)) and
           (State in [dsInsert,dsEdit])  then
          begin
            FieldByName('nidtagrpc').value := null;
            FieldByName('nidtagopt').value := null;
            FieldByName('ddtopcfgts').Clear;
            FieldByName('nidtagqhr').value := null;
            FieldByName('nidtbxorg').value := null;
            FieldByName('nidtagodp').value := null;
            FieldByName('nidtagdst').value := null;
            FieldByName('nidtbxltb').value := null;
          end;
        GRP_INSS.Enabled := Habilida;
        LBL_INSS.Enabled := Habilida;
        DBL_NIDTAGRPC.Enabled := Habilida;
        GRP_FGTS.Enabled := Habilida;
        LBL_FGTS.Enabled := Habilida;
        DBL_NIDTAGOPT.Enabled := Habilida;
        LBL_OPFG.Enabled := Habilida;
        DBD_DDTOPCFGTS.Enabled := Habilida;
        GRP_HORARIO.Enabled := Habilida;
        LBL_HORARIO.Enabled := Habilida;
        DBL_NIDTAGQHR.Enabled := Habilida;
        GRP_LOTACAO.Enabled := Habilida;
        LBL_ORG.Enabled := Habilida;
        DBL_NIDTBXORG.Enabled := Habilida;
        LBL_DEPT.Enabled := Habilida;
        DBL_NIDTAGODP.Enabled := Habilida;
        LBL_SETOR.Enabled := Habilida;
        DBL_NIDTAGDST.Enabled := Habilida;
        GRP_LOCALTRAB.Enabled := Habilida;
        LBL_LCTRAB.Enabled := Habilida;
        DBL_NIDTBXLTB.Enabled := Habilida;
        LBL_FONE.Enabled := Habilida;
        DED_CTELCOM.Enabled := Habilida;
      end;


  end;

begin
  with DTM_A005RH do
    begin
      if DTS_077.DataSet.State in [dsInsert,dsEdit] then
        begin
          DTS_077.DataSet.FieldByName('nidcadcrg').value := null;
          DTS_077.DataSet.FieldByName('nidtagopt').value := null;
          DTS_077.DataSet.FieldByName('nidtagrpc').value := null;
        end;

          if DBL_NIDTBXTCR.Text = 'PENSIONISTA' then
            begin
              AlterEfeComss(False);
              AlterInativo(False);
              AlterPensao(True);
            end
          else
            if DBL_NIDTBXTCR.Text = 'INATIVO' then
              begin
                AlterEfeComss(False);
                AlterPensao(False);
                AlterInativo(True);
              end
            else
              begin
                AlterInativo(False);
                AlterPensao(False);
                AlterEfeComss(True);
              end;
      DBL_NIDTBXORGChange(DBL_NIDTBXORG);
      DBL_NIDTAGODPChange(DBL_NIDTAGODP);
    end;
end;

procedure TFRM_A005RH.AtualizaDbLookup;
begin
  with DTM_A005RH.DTS_077.DataSet do
    begin
      DBL_NIDCADCRG.KeyValue :=
      FieldByName('nidcadcrg').asInteger;
      DBL_NIDTAGRPC.KeyValue :=
      FieldByName('nidtagrpc').asInteger;
      DBL_NIDTAGOPT.KeyValue :=
      FieldByName('nidtagopt').asInteger;
      DBL_NIDTAGQHR.KeyValue :=
      FieldByName('nidtagqhr').asInteger;
      DBL_NIDTAGODP.KeyValue :=
      FieldByName('nidtagodp').asInteger;
      DBL_NIDTAGDST.KeyValue :=
      FieldByName('nidtagdst').asInteger;
      DBL_NIDTAGOPTChange(DBL_NIDTAGOPT);
    end;

end;

procedure TFRM_A005RH.DBL_NIDTAGOPTChange(Sender: TObject);
begin
  DBD_DDTOPCFGTS.Enabled :=
  DBL_NIDTAGOPT.Text ='OPTANTE';
  with DTM_A005RH do
    begin
      if (DTS_077.DataSet.State in [dsEdit,dsInsert]) and
         (not(DBD_DDTOPCFGTS.Enabled)) then
        DTS_077.DataSet.FieldByName('ddtopcfgts').value := null;
    end;
end;

procedure TFRM_A005RH.DBL_NIDTBXORGChange(Sender: TObject);
begin
 DBL_NIDTAGODP.Enabled := DBL_NIDTBXORG.Text <> '';
 if DTM_A005RH.DTS_077.DataSet.State in [dsEdit,dsInsert] then
   DTM_A005RH.DTS_077.DataSet.FieldByName('nidtagodp').value := null;
   //DBL_NIDTAGODP.KeyValue := 0;
end;

procedure TFRM_A005RH.DBL_NIDTAGODPChange(Sender: TObject);
begin
   DBL_NIDTAGDST.Enabled := DBL_NIDTAGODP.Text <> '';
   if DTM_A005RH.DTS_077.DataSet.State in [dsEdit,dsInsert] then
     DTM_A005RH.DTS_077.DataSet.FieldByName('nidtagdst').value := null;
     //DBL_NIDTAGDST.KeyValue := 0;
end;

procedure TFRM_A005RH.CBE_NIDTAGOBTKeyPress(Sender: TObject; var Key: Char);
begin
  if (Key <> #13) AND (Key <> #9) then
    Key := #0;
end;

procedure TFRM_A005RH.CBE_NIDTAGOBTExit(Sender: TObject);
begin
  with DTM_A005RH do
    begin
      if CBE_NIDTAGOBT.Text <> '' then
        if (DTS_077.DataSet.State in [dsInsert,dsEdit]) and
           (CBE_NIDTAGOBT.Text[1] in ['0'..'9']) then
          begin
            QRY_103.ParamByName('nidtagobt').asInteger :=
            StrToInt(CBE_NIDTAGOBT.Text);
            DTS_077.DataSet.FieldByName('nidtagobt').asInteger :=
            QRY_103.ParamByName('nidtagobt').asInteger;
            QRY_103.ExecSQL;
            CBE_NIDTAGOBT.Text :=
            QRY_103.FieldByName('cnomegrl').asString;
          end;
    end;
end;

procedure TFRM_A005RH.CBE_NIDTAGOBTKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_F3 then
    CBE_NIDTAGOBTExit(Sender);
end;

procedure TFRM_A005RH.BTN_STATUSClick(Sender: TObject);
  var
    oRegistro : TBookMark;
begin
  Application.CreateForm(TDTM_A011RH,DTM_A011RH);
  Application.CreateForm(TFRM_A011RH,FRM_A011RH);
  FRM_A011RH.nIdFicha := DTM_A005RH.DTS_077.DataSet.FieldByName('nidtagffu').asInteger;
  FRM_A011RH.dDataProv := DTM_A005RH.DTS_077.DataSet.FieldByName('ddtadmissa').asDateTime;
  FRM_A011RH.dDataDeslig := DTM_A005RH.DTS_077.DataSet.FieldByName('ddtdesliga').value;
  FRM_A011RH.nIdGrpRvg := DTM_A005RH.DTS_095.DataSet.FieldByName('nidtbxgmv').asInteger;
  oControlForms.AtivaForm('FRM_A011RH',shModal,nil);
  oRegistro := DTM_A005RH.DTS_077.DataSet.GetBookMark;
  DTM_A005RH.DTS_077.DataSet.Refresh;
  DTM_A005RH.DTS_077.DataSet.GotoBookMark(oRegistro);
  DTM_A005RH.DTS_077.DataSet.FreeBookMark(oRegistro);
  DTM_A005RH.DTS_108.DataSet.Refresh;
end;

procedure TFRM_A005RH.BTN_MOVClick(Sender: TObject);
begin
  Application.CreateForm(TDTM_A010RH,DTM_A010RH);
  Application.CreateForm(TFRM_A010RH,FRM_A010RH);
  FRM_A010RH.nIdFicha := DTM_A005RH.DTS_077.DataSet.FieldByName('nidtagffu').asInteger;
  FRM_A010RH.nMatriculaFicha := DTM_A005RH.DTS_077.DataSet.FieldByName('nmatricula').asInteger;
  oControlForms.AtivaForm('FRM_A010RH',shModal,NIL);
end;

procedure TFRM_A005RH.BTN_FINANClick(Sender: TObject);
begin
  Application.CreateForm(TDTM_A009RH,DTM_A009RH);
  Application.CreateForm(TFRM_A009RH,FRM_A009RH);
  FRM_A009RH.nIdFicha := DTM_A005RH.DTS_077.DataSet.FieldByName('nidtagffu').asInteger;
  FRM_A009RH.cNomeGrl := DTM_A005RH.DTS_029.DataSet.FieldByName('cnomegrl').asString;
  oControlForms.AtivaForm('FRM_A009RH',shModal,nil);
end;

procedure TFRM_A005RH.CBE_NIDTAGOBTButtonClick(Sender: TObject);
begin
 VerTeclas(VK_F2);
end;

procedure TFRM_A005RH.BTN_PGTOEFTClick(Sender: TObject);
begin
  //chama o form de pagamentos efetuados
  Application.CreateForm(TDTM_A038RH,DTM_A038RH);
  Application.CreateForm(TFRM_A038RH,FRM_A038RH);
  FRM_A038RH.nIdServidor :=
  DTM_A005RH.DTS_029.DataSet.FieldByName('nidcadser').asInteger;
  oControlForms.AtivaForm('FRM_A038RH',shModal,nil);
end;

procedure TFRM_A005RH.AtuCaptionForm;
begin
  with DTM_A005RH do
    Caption := ' Ficha Funcional ' + IntToStr(QRY_077.RecNo) + ' de ' +
    IntToStr(QRY_077.RecordCount);


end;

end.



