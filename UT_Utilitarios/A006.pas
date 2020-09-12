unit A006;

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
  wwdbedit, OraScript, delmenu, DBClient, MConnect, SConnect,
  LMDSimplePanel ;

type
  TFRM_A006 = class(TForm)
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
    Label4: TLabel;
    Label20: TLabel;
    Lbl_CpfCnpj: TLabel;
    Lbl_RgIE: TLabel;
    LBL_UF: TLabel;
    LBL_CNOMEEMIRG: TLabel;
    LBL_DDTEMIRG: TLabel;
    LBL_DDTNASC: TLabel;
    LBL_CNOMEMAE: TLabel;
    LBL_CSEXO: TLabel;
    DED_CNOMEGRL: TDBEdit;
    DED_CCPFCNPJ: TDBEdit;
    DED_CRGIE: TDBEdit;
    DBL_NIDTBXERG: TRxDBLookupCombo;
    DBD_DDTEMIRG: TDBDateEdit;
    DBD_DDTNASC: TDBDateEdit;
    DED_CNOMEMAE: TDBEdit;
    LMDGroupBox3: TLMDGroupBox;
    Lbl_res: TLabel;
    Label16: TLabel;
    Label25: TLabel;
    Label2: TLabel;
    DED_CTELRES: TDBEdit;
    DED_CCONTATO: TDBEdit;
    DED_CEMAIL: TDBEdit;
    DED_CDDD: TDBEdit;
    LMDGroupBox4: TLMDGroupBox;
    Label10: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label17: TLabel;
    Label24: TLabel;
    Label5: TLabel;
    Label32: TLabel;
    DED_CNUMERO: TDBEdit;
    DED_CCOMPLEMEN: TDBEdit;
    DED_CNOMEBAI: TDBEdit;
    DED_CSIGLAUF: TDBEdit;
    CBE_NCEP: TComboEdit;
    DED_CNOMELOC: TDBEdit;
    DED_CNOMEPAIS: TDBEdit;
    LMDGroupBox1: TLMDGroupBox;
    Label18: TLabel;
    Label23: TLabel;
    Label26: TLabel;
    Label27: TLabel;
    Label28: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    DED_CNUMEROEC: TDBEdit;
    DED_COMPLEEC: TDBEdit;
    DED_CNOMEBAI_1: TDBEdit;
    DED_CSIGLAUF_1: TDBEdit;
    CBE_NCEP_1: TComboEdit;
    DED_CNOMELOC_1: TDBEdit;
    DED_CNOMEPAIS_1: TDBEdit;
    DCB_CPEESOAFJ: TRxDBComboBox;
    DED_CNOMELOG: TDBEdit;
    DED_CNOMELOG_1: TDBEdit;
    DBC_CSEXO: TRxDBComboBox;
    DBC_UF: TRxDBComboBox;
    DED_CTELCELULA: TDBEdit;
    DED_CTELCOM: TDBEdit;
    Label1: TLabel;
    Label6: TLabel;
    BTN_TIRAEC: TSpeedButton;
    procedure BTN_SAIRClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure Btn_LocalizarClick(Sender: TObject);
    procedure Btn_AvancarClick(Sender: TObject);
    procedure Btn_RetrocederClick(Sender: TObject);
    procedure Btn_IncluirClick(Sender: TObject);
    procedure Btn_AlterarClick(Sender: TObject);
    procedure Btn_GravarClick(Sender: TObject);
    procedure Btn_CancelarClick(Sender: TObject);
    procedure Btn_ExcluirClick(Sender: TObject);
    procedure Btn_ImprimirClick(Sender: TObject);
    procedure CBE_NCEPExit(Sender: TObject);
    procedure CBE_NCEP_1ButtonClick(Sender: TObject);
    procedure CBE_NCEPButtonClick(Sender: TObject);
    procedure DED_CNUMEROKeyPress(Sender: TObject; var Key: Char);
    procedure DED_CCPFCNPJExit(Sender: TObject);
    procedure DBD_DDTNASCExit(Sender: TObject);
    procedure DED_CTELRESEnter(Sender: TObject);
    procedure DED_CTELRESExit(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure CBE_NCEPChange(Sender: TObject);
    procedure CBE_NCEPKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CBE_NCEP_1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CBE_NCEPKeyPress(Sender: TObject; var Key: Char);
    procedure DED_CNOMELOGEnter(Sender: TObject);
    procedure BTN_TIRAECClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRM_A006: TFRM_A006;
  lDigCepEnd : boolean = false;
implementation

uses MPLCtrl, Pesquisa, D006, A004, DMCTRL, MPLLib, UVariaveis, TELAPRIN;

{$R *.DFM}

procedure TFRM_A006.BTN_SAIRClick(Sender: TObject);
begin
   CBE_NCEP.OnExit := nil;
   CBE_NCEP_1.OnExit := nil;
   close ;
end;

procedure TFRM_A006.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 Action:= oControlForms.Saidas(Self,[DTM_A006],DTM_A006.DTS_016.DataSet);
end;

procedure TFRM_A006.FormShow(Sender: TObject);
begin

  if not(Acesso(nMatricula,'A006',DTM_A006)) then
    close;
  Botoes(['Btn_Cancelar','Btn_Gravar','BTN_TIRAEC'],'FRM_A006',false);

  DCB_CPEESOAFJChange(Sender);

  FRM_A006.OnShow := nil;
 {é atribuido ao OnShow do Form o valor nil para que o mesmo seja executado apenas uma vez}
 {pelo fato que se outra aplicação for chamada pela tecla F3, e ao retornar da aplicação que foi chamada pela tecla}
 {o evento OnShow deste form não acontecerá, ou seja não será executado, para permanecer o mesmo status da aplicação}
 {quando o F3 foi chamado}
end;

procedure TFRM_A006.Btn_LocalizarClick(Sender: TObject);
begin
  MPLCtrl.Pesquisa(DTM_A006.QRY_016,true,'','');
end;

procedure TFRM_A006.Btn_AvancarClick(Sender: TObject);
begin
  DED_CNOMEGRL.SetFocus;
  //proximo registro
  DBGenerica(DTM_A006.DTS_016,'Conexao',0,3);
  DCB_CPEESOAFJChange(Sender);
end;

procedure TFRM_A006.Btn_RetrocederClick(Sender: TObject);
begin
  DED_CNOMEGRL.SetFocus;
  //registro anterior
  DBGenerica(DTM_A006.DTS_016,'Conexao',0,2);
  DCB_CPEESOAFJChange(Sender);
end;

procedure TFRM_A006.Btn_IncluirClick(Sender: TObject);
begin
  Botoes(['Btn_Cancelar','Btn_Gravar','Btn_Sair'],'FRM_A006',true);
  LBL_CNOMEEMIRG.Enabled := false;
  DBL_NIDTBXERG.Enabled  := false;
  LBL_UF.Enabled         := false;
  DBC_UF.Enabled         := false;
  LBL_DDTEMIRG.Enabled   := false;
  DBD_DDTEMIRG.Enabled   := false;
  LBL_DDTNASC.Enabled    := false;
  DBD_DDTNASC.Enabled    := false;
  LBL_CSEXO.Enabled      := false;
  DBC_cSexo.Enabled      := false;
  LBL_CNOMEMAE.Enabled   := false;
  DED_CNOMEMAE.Enabled   := false;
  DED_CNOMEGRL.setfocus;
  CBE_NCEP.Text := '';
  CBE_NCEP_1.Text := '';
  BTN_TIRAEC.Enabled := true;
  with DTM_A006 do
    begin
      //inclui registro no dataset da cadgrl
      DBGenerica(DTS_016,'Conexao',1,0,nil);
      //inclui registro no datset da tageec
      DBGenerica(DTS_018,'Conexao',1,0,nil);
    end;
end;

procedure TFRM_A006.Btn_AlterarClick(Sender: TObject);
begin
  Botoes(['Btn_Cancelar','Btn_Gravar','Btn_Sair'],'FRM_A006',true);
  with DTM_A006 do
    begin
      DCB_CPEESOAFJ.Enabled := false;

      if DTS_018.DataSet.FieldByName('nidTagEec').IsNull then
        begin
          //edita registro no dataset da cadgrl
          DBGenerica(DTS_016,'Conexao',2,0,nil);
          //inclui registro no dataset da tageec
          DBGenerica(DTS_018,'Conexao',1,0,nil);
          DTS_018.DataSet.FieldByName('nidTagEec').AsInteger := 0;
          BTN_TIRAEC.Enabled := false;
        end
      else
        begin
          //edita registro do dataset da cadgrl
          DBGenerica(DTS_016,'Conexao',2,0,nil);
          BTN_TIRAEC.Enabled := true;
          DTS_018.DataSet.Edit;
        end;

      if DCB_CPEESOAFJ.Text = 'FISICA' then
        //edita registro do dataset da cadfis
        DBGenerica(DTS_019,'Conexao',2,0)
      else
        //edita registro do dataset da cadjur
        DBGenerica(DTS_025,'Conexao',2,0);

    end;
end;

procedure TFRM_A006.Btn_GravarClick(Sender: TObject);
begin
 DCB_CPEESOAFJExit(Sender);
 DED_CCPFCNPJExit(DED_CCPFCNPJ);
 if Trim(LimpaMask(CBE_NCEP.Text)) = '' then
   begin
     MessageDlg('Você deve informar um número de Cep para o endereço do Contribuinte!',
                mtInformation,[mbOK],0);
     CBE_NCEP.SetFocus;
     Exit;
   end;
 if DTM_A006.DTS_013.DataSet.IsEmpty then
   begin
     MessageDlg('Você deve informar um Logradouro para o endereço do Contribuinte!',
                mtInformation,[mbOK],0);
     CBE_NCEP.SetFocus;
     Exit;
   end;

 if (Trim(DED_CNUMEROEC.Text) <> '') and (Trim(DED_COMPLEEC.Text) <> '') and
    ((Trim(LimpaMask(CBE_NCEP_1.Text)) = '') or (DTM_A006.QRY_013_01.IsEmpty)) then
   begin
     MessageDlg('Você deve informar um endereço de correspondência!',
                mtInformation,[mbOK],0);
     CBE_NCEP_1.SetFocus;
     Exit;
   end
 else
   if (Trim(LimpaMask(CBE_NCEP_1.Text)) <> '0') and (Trim(LimpaMask(CBE_NCEP_1.Text)) <> '') then
    if (Trim(DED_CNUMEROEC.Text) = '') then
      begin
        MessageDlg('Você deve informar um número do endereço de correspondência!',
                mtInformation,[mbOK],0);
        DED_CNUMEROEC.SetFocus;
        Exit;
      end;

 with DTM_A006 do
   begin
     if LiberadoGravacao(FRM_A006,DTS_016) then
       begin
         if MessageDlg('Deseja Salvar Alterações?',mtConfirmation,[mbYes,mbNo],0) = mrYes then
           begin
             lResp := true;
             if DTS_016.DataSet.State = dsInsert then
               begin
                 DTS_016.DataSet.FieldByName('nidCadGrl').AsInteger := 0;
                 DTS_016.DataSet.FieldByName('nidtbxcna').AsInteger := 0;
                 DTS_018.DataSet.FieldByName('nidTagEec').AsInteger := 0;
                 if DTS_019.DataSet.State = dsInsert then
                   begin
                     with DTS_019.DataSet do
                       begin
                         if FieldByName('nidTbxErg').isNull then
                            FieldByName('nidTbxErg').AsInteger := 0;
                         FieldByName('nIdTbxCor').value := 0;
                         FieldByName('nIdTbxloc').value := 0;
                         FieldByName('nIdTbxEci').value := 0;
                         FieldByName('nIdTbxGri').value := 0;
                         FieldByName('nIdTbxNac').value := 0;
                         FieldByName('nidCadFis').AsInteger := 0;
                         FieldByName('nidCadGrl').AsInteger := 0;
                       end;
                   end
                 else
                   if DTS_025.DataSet.State = dsInsert then
                     begin
                        DTS_025.DataSet.FieldByName('nidCadJur').value := 0;
                        DTS_025.DataSet.FieldByName('nidCadGrl').value := 0;
                     end;
               end;
             try
               DTS_018.DataSet.UpdateRecord;
               DTS_018.DataSet.DisableControls;
               DTS_019.DataSet.DisableControls;
               DTS_013_01.DataSet.DisableControls;
               DTS_016.DataSet.FieldByName('nidCadLog').AsInteger :=
               DTS_013.DataSet.FieldByName('nidCadlog').AsInteger;
               //DTS_018.DataSet.
               //DCB_CPEESOAFJExit(Sender);
               if Trim(LimpaMask(CBE_NCEP_1.Text))= '' then
                 //cancela a operação no dataset da tageec
                 DBGenerica(DTS_018,'Conexao',3,0)
               else
                 if DTS_018.DataSet.State <> dsBrowse then
                   begin
                     DTS_018.DataSet.FieldByName('nidCadlog').AsInteger :=
                     DTS_013_01.DataSet.FieldByName('nidCadLog').AsInteger;
                   end;

               DMControle.Conexao.StartTransaction;
               try
                 if DTS_019.DataSet.State = dsEdit then
                   //grava dados no dataset da cadfis
                   DBGenerica(DTS_019,'Conexao',4,1)
                 else
                   if DTS_025.DataSet.State = dsEdit then
                     //grava dados no dataset da cadjur
                     DBGenerica(DTS_025,'Conexao',4,1);

                 QRY_018.MasterSource := nil;
                 //grava dados no dataset da cadgrl
                 DBGenerica(DTS_016,'Conexao',4,1,nil);

                 if lResp then
                   begin
                     DCB_CPEESOAFJ.Enabled := true;
                     if (DTS_018.DataSet.State = dsEdit) and (not(DTS_018.DataSet.Modified)) then
                       //cancela a operação corrente no dataset tageec
                       DBGenerica(DTS_018,'Conexao',3,0)
                     else
                       begin
                         if DTS_018.DataSet.State = dsInsert then
                           DTS_018.DataSet.FieldByName('nidCadGrl').AsInteger :=
                           DTS_016.DataSet.FieldByName('nidCadGrl').AsInteger;
                         //grava os dados do dataset da tageec
                         DBGenerica(DTS_018,'Conexao',4,1,nil,true);
                       end;

                     Botoes(['Btn_Gravar','Btn_Cancelar','BTN_TIRAEC'],'FRM_A006',false);

                   end;
                 DMControle.Conexao.Commit;
               except
                 on E : Exception do
                   begin
                     MessageDlg('Não foi possivel efetuar a gravação de todos os dados,'+#13+
                                'por isso está operação será cancelada para manter a integridade'+#13+
                                'dos seus dados!'+#13+'Erro: '+E.Message,mtError,[mbOk],0);

                     DMControle.Conexao.RollBack;
                     Btn_CancelarClick(Btn_Cancelar);
                     DTS_016.DataSet.Refresh;
                     DTS_016.DataSet.GotoBookmark(oLocal);
                   end;
               end;// fim try except
             finally
               QRY_018.MasterSource := DTS_016;
               DTS_018.DataSet.EnableControls;
               DTS_018.DataSet.Refresh;
               DTS_019.DataSet.EnableControls;
               DTS_013_01.DataSet.EnableControls;
             end;// fim try finally
           end;// fim o if MessageDlg('Deseja Salvar Alterações?',mtConfirmation,[mbYes,mbNo],0) = mrYes then
       end;
   end;
end;

procedure TFRM_A006.Btn_CancelarClick(Sender: TObject);
begin
  with DTM_A006 do
    begin

      if DTS_019.DataSet.State in [dsInsert,dsedit] then
        //cancela a operação corrente do dataset da cadfis
        DBGenerica(DTS_019,'Conexao',3,0)
      else
        if DTS_025.DataSet.State in [dsInsert,dsedit] then
          //cancela a operação do dataset da cadjur
          DBGenerica(DTS_025,'Conexao',3,0);


      //QRY_018.RestoreUpdates;
      //cancela as alterações no dataset da tageec
      DBGenerica(DTS_018,'Conexao',3,0,nil,true);
      //QRY_018.Refresh;

      //cancela a operação corrente do dataset da cadgrl
      DBGenerica(DTS_016,'Conexao',3, 0, nil);

      Dts_013_01.DataSet.Refresh;
      Dts_018.DataSet.Refresh;
      Botoes(['Btn_Cancelar','Btn_Gravar','BTN_TIRAEC'],'FRM_A006',false);
      DCB_CPEESOAFJ.Enabled := true;
    end;
end;

procedure TFRM_A006.Btn_ExcluirClick(Sender: TObject);
begin
   //exclui registro do dataset da cadgrl
   DBGenerica(DTM_A006.DTS_016,'Conexao',5,0);
end;

procedure TFRM_A006.Btn_ImprimirClick(Sender: TObject);
begin
  RelCadastro(DTM_A006.QRY_016,'Cadastro Contribuinde');

end;

procedure TFRM_A006.CBE_NCEPExit(Sender: TObject);
  var
    nCod : Variant;
    QryEnd : TOraQuery;
    CepText : TComboEdit;
begin

  with DTM_A006 do
    begin

      if not(Sender is TComboEdit) then
        exit;
      CepText := TComboEdit(Sender);

      if CepText = CBE_NCEP then
        QryEnd := QRY_013
      else
        QryEnd := QRY_013_01;

        if Trim(CepText.text) = '' then
        begin
          CepText.Text := QryEnd.FieldByName('nCep').DisplayText;
          lDigCepEnd := false;
          exit;
        end;

      if DTS_016.DataSet.State in [dsInsert,dsEdit] then
        begin
          if lDigCepEnd then
            begin
              if ((FRM_PESQUISA <> nil) or (FRM_A004 <> nil)) then
                begin
                  nCod := CepText.Text;
                  QryEnd.ParamByName('nidCadLog').value := nCod;
                  QryEnd.ExecSQL;
                  CepText.Text := QryEnd.FieldByName('nCep').DisplayText;
                  lDigCepEnd := false;
                end
              else
                begin
                  DMControle.QryTemp.SQL.Clear;
                  DMControle.QryTemp.SQL.text := 'select'+
                  ' nCep, cnomeloc, ufloc from TbxLoc where nCep = '+LimpaMask(CepText.Text);
                  DMControle.QryTemp.Open;
                  if not(DMControle.QryTemp.IsEmpty) then
                    begin
                      FocoCompo := CepText;
                      if MplCtrl.Pesquisa(nil,false,'NIDCADLOG','','tbxloc.cnomeloc = '+DMControle.QryTemp.FieldByName('cnomeloc').asString+
                         ';tbxloc.ufloc = '+DMControle.QryTemp.FieldByName('ufloc').asString+'; cadlog.cnomelog+setfocus;',false).AcaoUsuario = 2 then
                        begin
                          CepText.SetFocus;
                          lDigCepEnd := true;
                        end
                      else
                        begin
                          nCod := CepText.Text;
                          QryEnd.ParamByName('nidCadLog').value := nCod;
                          QryEnd.ExecSQL;
                          CepText.Text := QryEnd.FieldByName('nCep').DisplayText;
                          lDigCepEnd := false;
                          if CepText = CBE_NCEP then
                            DED_CNUMERO.SetFocus
                          else
                            DED_CNUMEROEC.SetFocus;
                        end;

                    end
                  else
                    begin
                      DMControle.QryTemp.Close;
                      DMControle.QryTemp.SQL.Clear;
                      DMControle.QryTemp.SQL.Text := 'select nCep,nidCadlog'+
                      ' from Cadlog where nCep = ' + LimpaMask(CepText.Text);
                      DMControle.QryTemp.Open;
                      if DMControle.QryTemp.IsEmpty then
                        begin
                          MessageDlg('Número de Cep não encontrado!',mtInformation,[mbOk],0);
                          CepText.SetFocus;
                          CepText.SelectAll;
                          lDigCepEnd := true;
                        end
                      else
                        begin
                          QryEnd.ParamByName('nidCadLog').Value :=
                          DMControle.QryTemp.FieldByName('nidCadLog').value;
                          QRY_016.FieldByName('nidCadLog').value :=
                          DMControle.QryTemp.FieldByName('nidCadLog').value;
                          QryEnd.ExecSQL;
                          CepText.Text := QryEnd.FieldByName('nCep').DisplayText;
                          lDigCepEnd := false;
                        end;
                    end;

                  DMControle.QryTemp.Close;
                  DMControle.QryTemp.SQL.Clear;

                end;

            end;
        end;

    end;




end;

procedure TFRM_A006.CBE_NCEP_1ButtonClick(Sender: TObject);
begin
 VerTeclas(VK_F2);
end;

procedure TFRM_A006.CBE_NCEPButtonClick(Sender: TObject);
begin
  VerTeclas(VK_F2);
end;

procedure TFRM_A006.DED_CNUMEROKeyPress(Sender: TObject; var Key: Char);
begin
  Key := ValEditNumerico(Key);
end;

procedure TFRM_A006.DED_CCPFCNPJExit(Sender: TObject);
  var
    cAux : String[4];
    cMenAdver : string;
    lFisica,lValido : boolean;
begin
  cMenAdver := '';
  if DTM_A006.DTS_016.DataSet.State in [dsInsert,dsEdit] then
    begin

      if DCB_CPEESOAFJ.Text = 'FISICA' then
        begin
         cAux := 'CPF';
         lFisica := true;
        end
      else
        begin
          cAux := 'CNPJ';
          lFisica := false;
        end;

      if trim(LimpaMask(DED_CCPFCNPJ.Text)) = '' then
        cMenAdver := 'Você deve informar um número de '+ cAux
      else
        if Pos(' ',DED_CCPFCNPJ.Text) <> 0 then
          cMenAdver := 'Número do '+cAux+' está incompleto, favor completar.';
      if cMenAdver <> '' then
        begin
          MessageDlg(cMenAdver,mtInformation,[mbOk],0);
          DED_CCPFCNPJ.SetFocus;
          Abort;
          //exit;
        end;

      if lFisica then
        lValido := ValidaCpf(LimpaMask(DED_CCPFCNPJ.Text))
      else
        lValido := ValidaCNPJ(LimpaMask(DED_CCPFCNPJ.Text));
      if not(lValido) then
        begin
          MessageDlg('Número de '+cAux+' invalído.'+#13+'Digite novamente.',
                     mtInformation,[mbOk],0);
          DED_CCPFCNPJ.SetFocus;
          Abort;
          //exit;
        end;

        with DMControle do
          begin
            QryTemp.SQL.Clear;
            QryTemp.SQL.Text :='select * from CadGrl where cCPFCNPJ = '+QuotedStr(LimpaMask(DED_CCPFCNPJ.Text));
            QryTemp.Open;
            if (not(QryTemp.IsEmpty)) and
               (QryTemp.FieldByName('nidcadgrl').asInteger <>
                DTM_A006.QRY_016.FieldByName('nidcadgrl').asInteger ) then
              begin
                MessageDlg('Número de '+cAux+' já cadastrado.',mtInformation,[mbOk],0);
                QryTemp.Close;
                QryTemp.SQL.Clear;
                DED_CCPFCNPJ.SetFocus;
                Abort;
              end;
            QryTemp.Close;
            QryTemp.SQL.Clear;
          end;


    end;

end;

procedure TFRM_A006.DBD_DDTNASCExit(Sender: TObject);
begin
  if Trim(DBD_DDTNASC.Text) <> '/  /' then
    if (StrToDate(DBD_DDTEMIRG.Text) <= StrToDate(DBD_DDTNASC.Text)) then
      begin
        MessageDlg('Data de emissão do RG tem que ser maior que a data de nascimento!',
                   mtInformation,[mbOk],0);
        DBD_DDTEMIRG.SetFocus;
      end;
end;

procedure TFRM_A006.DED_CTELRESEnter(Sender: TObject);
begin
  if DTM_A006.DTS_016.DataSet.State in [dsInsert,dsEdit] then
    DTM_A006.DTS_016.DataSet.FieldByName(TDBEdit(Sender).DataField).EditMask := '';
end;

procedure TFRM_A006.DED_CTELRESExit(Sender: TObject);
begin
  if DTM_A006.DTS_016.DataSet.State in [dsInsert,dsEdit] then
    DTM_A006.DTS_016.DataSet.FieldByName(TDBEdit(Sender).DataField).EditMask :='!####-####;0; ';
end;

procedure TFRM_A006.FormDestroy(Sender: TObject);
begin
  FRM_TELAPRI.Perform(WM_NEXTDLGCTL,0,0);
  FRM_A006 := nil;
end;

procedure TFRM_A006.CBE_NCEPChange(Sender: TObject);
begin
  lDigCepEnd := DTM_A006.DTS_016.DataSet.State in [dsInsert,dsEdit];
end;

procedure TFRM_A006.CBE_NCEPKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_ESCAPE then
    begin
      CBE_NCEP.Text := DTM_A006.QRY_013.FieldByName('nCep').DisplayText;
      lDigCepEnd := false;
    end

end;

procedure TFRM_A006.CBE_NCEP_1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_ESCAPE then
    begin
      CBE_NCEP_1.Text := DTM_A006.QRY_013_01.FieldByName('nCep').DisplayText;
      lDigCepEnd := false;
    end;
end;

procedure TFRM_A006.CBE_NCEPKeyPress(Sender: TObject; var Key: Char);
begin

Key := ValEditNumerico(Key);

end;

procedure TFRM_A006.DED_CNOMELOGEnter(Sender: TObject);
begin
  DED_CNUMERO.SetFocus;
end;

procedure TFRM_A006.BTN_TIRAECClick(Sender: TObject);
begin
  if MessageDlg('Deseja retirar o endereço de correspondência do Contribuinde?',
                mtConfirmation,[mbYes,mbNo],0) = mrYes then
    begin
      CBE_NCEP_1.Text := '';
      with DTM_A006 do
        begin
          //cancela operação corrente no dataset da tageec
          DBGenerica(DTS_018,'Conexao',3,0);

          if not(DTS_018.DataSet.IsEmpty) then
            //deleta o registro do dataset da tageec
            DBGenerica(DTS_018,'Conexao',5,1);

          //inseri registro no dataset da tageec
          DBGenerica(DTS_018,'Conexao',1,0);
          DTS_018.DataSet.FieldByName('nidTagEec').AsInteger := 0;
        end;
    end;
end;

end.



{
procedure TFRM_A006.DCB_CPEESOAFJChange(Sender: TObject);
begin
  if UpperCase(DCB_CPEESOAFJ.Text) = 'FISICA' then
    begin
      Lbl_CpfCnpj.Caption :='  N° do CPF';
      Lbl_RgIE.Caption := '  N° do RG';
      LBL_CNOMEEMIRG.Enabled := true;
      DBL_NIDTBXERG.Enabled  := true;
      LBL_UF.Enabled         := true;
      DBC_UF.Enabled         := true;
      LBL_DDTEMIRG.Enabled   := true;
      DBD_DDTEMIRG.Enabled   := true;
      LBL_DDTNASC.Enabled    := true;
      DBD_DDTNASC.Enabled    := true;
      LBL_CSEXO.Enabled      := true;
      DBC_cSexo.Enabled      := true;
      LBL_CNOMEMAE.Enabled   := true;
      DED_CNOMEMAE.Enabled   := true;

    end
  else
    if UpperCase(DCB_CPEESOAFJ.Text) = 'JURIDICA' then
      begin
        Lbl_CpfCnpj.Caption :='  N° do CNPJ';
        Lbl_RgIE.Caption := '  N° da Inscrição Estadual';
        LBL_CNOMEEMIRG.Enabled := false;
        DBL_NIDTBXERG.Enabled  := false;
        LBL_UF.Enabled         := false;
        DBC_UF.Enabled         := false;
        LBL_DDTEMIRG.Enabled   := false;
        DBD_DDTEMIRG.Enabled   := false;
        LBL_DDTNASC.Enabled    := false;
        DBD_DDTNASC.Enabled    := false;
        LBL_CSEXO.Enabled      := false;
        DBC_cSexo.Enabled      := false;
        LBL_CNOMEMAE.Enabled   := false;
        DED_CNOMEMAE.Enabled   := false;

      end;
end;



procedure TFRM_A006.DCB_CPEESOAFJExit(Sender: TObject);
  var
    nLogEnd, nLogCorres : Variant;
begin
  with DTM_A006 do
    begin
      if not(Sender is TDataSet) and (DCB_CPEESOAFJ.Text = '') then
        begin
          MessageDlg('Você deve informar qual o tipo de Pessoa, Fisica ou Juridica.',
                     mtInformation,[mbOk],0);
          DCB_CPEESOAFJ.SetFocus;
          Abort;
        end;
      if DTS_016.DataSet.State = dsInsert then
        begin
          nLogEnd := DTS_013.DataSet.FieldByName('nidCadLog').value;
          nLogCorres := DTS_013_01.DataSet.FieldByName('nidCadLog').value;
        end;
      if UpperCase(DCB_CPEESOAFJ.Text) = 'FISICA' then
        begin
          if DTS_016.DataSet.FieldByName('cCpfCnpj').EditMask <> '999.999.999-99;0;*' then
            DTS_016.DataSet.FieldByName('cCpfCnpj').EditMask :='999.999.999-99;0;*';
          if DTS_016.DataSet.State = dsInsert then
            if Pos(' ',DED_CNOMEGRL.Text) <> 0 then
              DTS_016.DataSet.FieldByName('cContato').value :=
              Copy(DED_CNOMEGRL.Text,1,Pos(' ',DED_CNOMEGRL.Text)-1)
            else
              DTS_016.DataSet.FieldByName('cContato').value := DED_CNOMEGRL.Text;

          if (not(Sender is TDataSet)) and (DTS_016.DataSet.State in [dsInsert,dsEdit]) then
            begin
              if DTS_025.DataSet.State = dsInsert then
                //cancela a operação corrente do dataset da cadjur
                DBGenerica(DTS_025,'Conexao',3,0);
              if not(DTS_019.DataSet.State in [dsInsert,dsEdit]) then
                //inseri registro no dataset da cadfis
                DBGenerica(DTS_019,'Conexao',1,0);

            end;
        end
      else
        if UpperCase(DCB_CPEESOAFJ.Text) = 'JURIDICA' then
          begin
            if DTS_016.DataSet.FieldByName('cCpfCnpj').EditMask <> '99.999.999/9999-99;0;*' then
              DTS_016.DataSet.FieldByName('cCpfCnpj').EditMask :='99.999.999/9999-99;0;*';
            if (not(Sender is TDataSet)) and (DTS_016.DataSet.State in [dsInsert,dsEdit]) then
              begin
                if DTS_019.DataSet.State = dsInsert then
                  //cancela a operação corrente do dataset da cadfis
                  DBGenerica(DTS_019,'Conexao',3,0);
                if not(DTS_025.DataSet.State in [dsInsert,dsEdit]) then
                  //inseri registro no dataset da cadjur
                  DBGenerica(DTS_025,'Conexao',1,0);
              end;
          end;
      if DTS_016.DataSet.State = dsInsert then
        begin
          if nLogEnd <> null then
            begin
              QRY_013.ParamByName('nidCadlog').value := nLogEnd;
              QRY_013.ExecSQL;
            end;
          if nLogCorres <> null then
            begin
              QRY_013_01.ParamByName('nidCadlog').value := nLogCorres;
              QRY_013_01.ExecSQL;
            end;
        end;
    end;

end;


}
