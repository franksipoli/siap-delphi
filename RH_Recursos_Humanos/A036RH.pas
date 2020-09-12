unit A036RH;

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
  LMDBaseEdit, LMDCustomEdit;

type
  TFRM_A036RH = class(TForm)
    Panel2: TPanel;
    BTN_INCLUIR: TSpeedButton;
    BTN_ALTERAR: TSpeedButton;
    BTN_CANCELAR: TSpeedButton;
    BTN_PESQUISAR: TSpeedButton;
    BTN_IMPRIMIR: TSpeedButton;
    BTN_SAIR: TSpeedButton;
    BTN_AVANCAR: TSpeedButton;
    BTN_RETROCEDER: TSpeedButton;
    BTN_EXCLUIR: TSpeedButton;
    BTN_GRAVAR: TSpeedButton;
    BTN_HORARIO: TSpeedButton;
    SpeedButton11: TSpeedButton;
    SpeedButton12: TSpeedButton;
    SpeedButton13: TSpeedButton;
    SpeedButton14: TSpeedButton;
    SpeedButton15: TSpeedButton;
    LMDGroupBox2: TLMDGroupBox;
    LMDGroupBox14: TLMDGroupBox;
    GRP_CARGO: TLMDGroupBox;
    Label1: TLabel;
    DED_CDESCRICRG: TDBEdit;
    Label9: TLabel;
    DBL_NIDTBXTCR: TRxDBLookupCombo;
    DED_NHORASMES: TDBEdit;
    Label10: TLabel;
    GRP_VAGAS: TLMDGroupBox;
    Label18: TLabel;
    DED_NTOTVAGAS: TDBEdit;
    CDB_NIDCADCRG: TRxDBComboEdit;
    Label19: TLabel;
    Label20: TLabel;
    DED_CLC_CRGLIVRES: TDBEdit;
    GRP_GRUPO: TLMDGroupBox;
    DBL_NIDTBXGRO: TRxDBLookupCombo;
    DBL_NIDTBXSGO: TRxDBLookupCombo;
    Label5: TLabel;
    Label21: TLabel;
    GRP_CBO: TLMDGroupBox;
    Label4: TLabel;
    Label22: TLabel;
    DED_CDESCRICBO: TDBEdit;
    GRP_TRIBUNAL: TLMDGroupBox;
    Label23: TLabel;
    DBL_NIDTBXCAT: TRxDBLookupCombo;
    Label24: TLabel;
    GRP_FAIXAINI: TLMDGroupBox;
    Label3: TLabel;
    Label6: TLabel;
    Label25: TLabel;
    DBL_NIDTAGSLR: TRxDBLookupCombo;
    DBL_NIDTAGSLR_1: TRxDBLookupCombo;
    GRP_FAIXAFIM: TLMDGroupBox;
    Label2: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    DBL_NIDTAGSLR_2: TRxDBLookupCombo;
    DBL_NIDTAGSLR_3: TRxDBLookupCombo;
    GRP_ENQ: TLMDGroupBox;
    Label26: TLabel;
    DBL_NIDTBXSLR: TRxDBLookupCombo;
    DBM_CGRADUACAO: TDBMemo;
    Label11: TLabel;
    DED_NHORASSEM: TDBEdit;
    CBE_NIDTBXCBO: TComboEdit;
    CBE_NIDTBXPCR: TComboEdit;
    EDT_NVALORSLR: TLMDEdit;
    EDT_NVALORSLR1: TLMDEdit;
    DBL_NIDTBXTSL: TRxDBLookupCombo;
    Label12: TLabel;
    procedure BTN_SAIRClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure BTN_AVANCARClick(Sender: TObject);
    procedure BTN_RETROCEDERClick(Sender: TObject);
    procedure CBE_NIDTBXCBOExit(Sender: TObject);
    procedure CBE_NIDTBXCBOButtonClick(Sender: TObject);
    procedure BTN_PESQUISARClick(Sender: TObject);
    procedure BTN_INCLUIRClick(Sender: TObject);
    procedure BTN_ALTERARClick(Sender: TObject);
    procedure BTN_GRAVARClick(Sender: TObject);
    procedure BTN_CANCELARClick(Sender: TObject);
    procedure BTN_EXCLUIRClick(Sender: TObject);
    procedure BTN_IMPRIMIRClick(Sender: TObject);
    procedure CBE_NIDTBXPCRExit(Sender: TObject);
    procedure DBL_NIDTBXSLRChange(Sender: TObject);
    procedure DBL_NIDTAGSLRChange(Sender: TObject);
    procedure DBL_NIDTAGSLR_2Change(Sender: TObject);
    procedure DBL_NIDTAGSLR_1Change(Sender: TObject);
    procedure DBL_NIDTAGSLR_3Change(Sender: TObject);
    procedure DBM_CGRADUACAOKeyPress(Sender: TObject; var Key: Char);
    procedure CBE_NIDTBXCBOChange(Sender: TObject);
    procedure CBE_NIDTBXPCRChange(Sender: TObject);
    procedure CBE_NIDTBXCBOKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CBE_NIDTBXPCRKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CDB_NIDCADCRGButtonClick(Sender: TObject);
    procedure BTN_HORARIOClick(Sender: TObject);
  private
    procedure AlteraClasseSal(Sender: TRxDBLookupCombo; EdtValor: TLMDEdit);
    procedure AlteraNivel(Sender: TObject; EdtValor: TLMDEdit);
    procedure AlteraTabSalarial(LookupClasse,
      LookupClasse1, LookupNiveis, LookupNiveis1: TRxDBLookupCombo);
    { Private declarations }
  public
    { Public declarations }
    lDigCbo, lDigPdr : Boolean;
  end;

var
  FRM_A036RH: TFRM_A036RH;

implementation

uses D036RH, UVariaveis, MPLCtrl, DMCTRL, A039RH, D039RH, CtrlForms, A040RH,
  D040RH;

{$R *.DFM}

procedure TFRM_A036RH.AlteraNivel(Sender: TObject; EdtValor: TLMDEdit);
begin
  with DTM_A036RH do
    begin
      //se o cargo estiver em edicao
      if DTS_073.DataSet.State in [dsEdit,dsInsert] then
        //atribui o salario para o cargo
        DTS_073.DataSet.FieldByName(TRxDBLookupCombo(Sender).DataField).value :=
        TRxDBLookupCombo(Sender).LookupSource.DataSet.FieldByName('nidtagslr').value;
      EdtValor.Text :=
      TRxDBLookupCombo(Sender).LookupSource.DataSet.FieldByName('nvalorslr').DisplayText;
    end;

end;



procedure TFRM_A036RH.AlteraClasseSal(Sender: TRxDBLookupCombo; EdtValor: TLMDEdit);
begin
  with DTM_A036RH do
    begin
      //se o cargo estiver em alteração
      //e o parametro for valido
      if (DTS_073.DataSet.State in [dsEdit,dsInsert]) and
         (Sender <> nil)then
        begin
          //seleciona item em branco no dbLookup
          Sender.KeyValue := 0;
          //retira o valor salarial do movimento
          DTS_073.DataSet.FieldByName(Sender.DataField).value := null;
        end;
      if Sender.Text = '' then
        EdtValor.Text := ''
      else
        EdtValor.Text := Sender.LookupSource.DataSet.FieldByName('nvalorslr').DisplayText;
    end;
end;


procedure TFRM_A036RH.AlteraTabSalarial(LookupClasse,LookupClasse1,
      LookupNiveis,LookupNiveis1: TRxDBLookupCombo);
begin
  with DTM_A036RH do
    begin
      //se não houver um dbLookup de classe salarial
      if LookupClasse = nil then
        //sai da rotina
        exit;

      //se o cargo estiver em edição ou inserção
      if (DTS_073.DataSet.State in [dsEdit,dsInsert]) then
        begin
          //seleciona item em branco no dbLookup de classe salarial
          LookupClasse.KeyValue := 0;
          LookupClasse1.KeyValue := 0;
        end;

      //se a tabela salarial não possuir classe
      if QRY_080.FieldByName('cclasse').value = null then
        begin
          //seleciona os niveis com não possue classe
          QRY_080_1.SQL.Clear;
          QRY_080_1.SQL.Add('select nnivel, nidtagslr, nvalorslr from');
          QRY_080_1.SQL.Add('tagslr where nidtbxslr = :nidtbxslr');
          QRY_080_1.SQL.Add('and cclasse is null');
          QRY_080_3.SQL := QRY_080_1.SQL;
          QRY_080_1.ParamByName('nidtbxslr').asInteger :=
          QRY_092.FieldByName('nidtbxslr').asInteger;
          QRY_080_3.ParamByName('nidtbxslr').asInteger :=
          QRY_092.FieldByName('nidtbxslr').asInteger;
          QRY_080_1.ExecSQL;
          QRY_080_3.ExecSQL;
        end
      else
        begin
          //seleciona os niveis de uma classe
          QRY_080_1.SQL.Clear;
          QRY_080_1.SQL.Add('select nnivel, nidtagslr, nvalorslr from');
          QRY_080_1.SQL.Add('tagslr where nidtbxslr = :nidtbxslr');
          QRY_080_1.SQL.Add('and cclasse = :cclasse');
          QRY_080_1.ParamByName('nidtbxslr').asInteger :=
          QRY_092.FieldByName('nidtbxslr').asInteger;
          QRY_080_3.SQL := QRY_080_1.SQL;
          QRY_080_1.ParamByName('cclasse').asString :=
          QRY_080.FieldByName('cclasse').asString;
          QRY_080_3.ParamByName('cclasse').asString :=
          QRY_080_2.FieldByName('cclasse').asString;
          QRY_080_1.ExecSQL;
          QRY_080_3.ExecSQL;
        end;
      //chama rotina para alterar classe salarial
      AlteraClasseSal(LookupNiveis,EDT_NVALORSLR);
      AlteraClasseSal(LookupNiveis1,EDT_NVALORSLR1);
    end;

end;


procedure TFRM_A036RH.BTN_SAIRClick(Sender: TObject);
begin
  close;
end;

procedure TFRM_A036RH.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := oControlForms.Saidas(Self,[DTM_A036RH],DTM_A036RH.DTS_073.DataSet);
end;

procedure TFRM_A036RH.FormShow(Sender: TObject);
begin
 if not Acesso(nMatricula,'A036RH',DTM_A036RH) then
    close;
  Botoes(['Btn_Cancelar','Btn_Gravar'],'FRM_A036RH',false);
  DTM_A036RH.QRY_073AfterScroll(DTM_A036RH.QRY_073);
  DBL_NIDTBXSLRChange(Sender);
  FRM_A036RH.OnShow := nil;
 {é atribuido ao OnShow do Form o valor nil para que o mesmo seja executado apenas uma vez}
 {pelo fato que se outra aplicação for chamada pela tecla F3, e ao retornar da aplicação que foi chamada pela tecla}
 {o evento OnShow deste form não acontecerá, ou seja não será executado, para permanecer o mesmo status da aplicação}
 {quando o F3 foi chamado}
end;

procedure TFRM_A036RH.BTN_AVANCARClick(Sender: TObject);
begin
   DBGenerica(DTM_A036RH.DTS_073,'Conexao',0,3,NIL,false);
   DBL_NIDTBXSLRChange(Sender);
end;

procedure TFRM_A036RH.BTN_RETROCEDERClick(Sender: TObject);
begin
   DBGenerica(DTM_A036RH.DTS_073,'Conexao',0,2,NIL,false);
   DBL_NIDTBXSLRChange(Sender);
end;

procedure TFRM_A036RH.CBE_NIDTBXCBOExit(Sender: TObject);
begin
  with DTM_A036RH do
    begin
      if (DTS_073.DataSet.State in [dsEdit,dsInsert]) and (lDigCbo) then
        begin
          if Trim(CBE_NIDTBXCBO.Text) = '' then
            begin
              CBE_NIDTBXCBO.Text :=
              QRY_138.FieldByName('nnrocbo').DisplayText;
              exit;
            end;
          PrepareQryTemp('select nidtbxcbo from tbxcbo where nnrocbo = '+
                         Trim(CBE_NIDTBXCBO.Text));
          if DMControle.QryTemp.RecordCount = 0 then
            begin
              MessageDlg('Código do CBO não encontrado!',mtInformation,[mbOk],0);
              CBE_NIDTBXCBO.SetFocus;
            end
          else
            begin
              QRY_073.FieldByName('nidtbxcbo').AsInteger :=
              DMControle.QryTemp.FieldByName('nidtbxcbo').AsInteger;
              QRY_138.ParamByName('nidtbxcbo').AsInteger :=
              DMControle.QryTemp.FieldByName('nidtbxcbo').AsInteger;
              DMControle.QryTemp.Close;
              DMControle.QryTemp.SQL.Clear;
              QRY_138.ExecSQL;
              lDigCbo := false;
            end;
        end;
    end;

end;

procedure TFRM_A036RH.CBE_NIDTBXCBOButtonClick(Sender: TObject);
begin
  VerTeclas(VK_F2);
end;

procedure TFRM_A036RH.BTN_PESQUISARClick(Sender: TObject);
begin
  Pesquisa(DTM_A036RH.QRY_073,true,'','');
  DBL_NIDTBXSLRChange(Sender);
end;

procedure TFRM_A036RH.BTN_INCLUIRClick(Sender: TObject);
begin
  DED_CDESCRICRG.SetFocus;
  DBGenerica(DTM_A036RH.DTS_073,'Conexao',1,0,NIL,false);
  EDT_NVALORSLR.Text := '';
  EDT_NVALORSLR1.Text := '';
  Botoes(['Btn_Cancelar','Btn_Sair','Btn_Gravar'],'FRM_A036RH',true);
end;

procedure TFRM_A036RH.BTN_ALTERARClick(Sender: TObject);
begin
  DBGenerica(DTM_A036RH.DTS_073,'Conexao',2,0,NIL,false);
  Botoes(['Btn_Cancelar','Btn_Sair','Btn_Gravar'],'FRM_A036RH',true);
end;

procedure TFRM_A036RH.BTN_GRAVARClick(Sender: TObject);
begin
  if LiberadoGravacao(FRM_A036RH,DTM_A036RH.DTS_073) then
    begin
      DBGenerica(DTM_A036RH.DTS_073,'Conexao',4,0,NIL,false);
      if lResp then
        Botoes(['Btn_Gravar','Btn_Cancelar'],'FRM_A036RH',false);
    end;
end;

procedure TFRM_A036RH.BTN_CANCELARClick(Sender: TObject);
begin
   DBGenerica(DTM_A036RH.DTS_073,'Conexao',3, 0,NIL,false);
   Botoes(['Btn_Cancelar', 'Btn_Gravar'],'FRM_A036RH',false);
   DTM_A036RH.QRY_073AfterScroll(DTM_A036RH.QRY_073);
   DBL_NIDTBXSLRChange(Sender);
end;

procedure TFRM_A036RH.BTN_EXCLUIRClick(Sender: TObject);
begin
  DBGenerica(DTM_A036RH.DTS_073,'Conexao',5,0,NIL,false);
end;

procedure TFRM_A036RH.BTN_IMPRIMIRClick(Sender: TObject);
begin
  RelCadastro(DTM_A036RH.QRY_073,'Cadastro de Cargos');
end;

procedure TFRM_A036RH.CBE_NIDTBXPCRExit(Sender: TObject);
begin
  with DTM_A036RH do
    begin
      if (DTS_073.DataSet.State in [dsEdit,dsInsert]) and (lDigPdr) then
        begin
          if Trim(CBE_NIDTBXPCR.Text) = '' then
            exit;
          PrepareQryTemp('select nidtbxpcr from tbxpcr where cdescripcr = '+
                         QuotedStr(CBE_NIDTBXPCR.Text));
          if DMControle.QryTemp.RecordCount = 0 then
            begin
              MessageDlg('Padrão de cargo não encontrado!',mtInformation,[mbOk],0);
              CBE_NIDTBXPCR.SetFocus;
            end
          else
            begin
              QRY_073.FieldByName('nidtbxpcr').AsInteger :=
              DMControle.QryTemp.FieldByName('nidtbxpcr').AsInteger;
              QRY_122.ParamByName('nidtbxpcr').AsInteger :=
              DMControle.QryTemp.FieldByName('nidtbxpcr').AsInteger;
              DMControle.QryTemp.Close;
              DMControle.QryTemp.SQL.Clear;
              QRY_122.ExecSQL;
              lDigPdr := false;
            end;
        end;
    end;

end;



procedure TFRM_A036RH.DBL_NIDTBXSLRChange(Sender: TObject);
begin
  AlteraTabSalarial(DBL_NIDTAGSLR,DBL_NIDTAGSLR_2,DBL_NIDTAGSLR_1,DBL_NIDTAGSLR_3);
end;

procedure TFRM_A036RH.DBL_NIDTAGSLRChange(Sender: TObject);
begin
  AlteraClasseSal(DBL_NIDTAGSLR_1,EDT_NVALORSLR);
end;

procedure TFRM_A036RH.DBL_NIDTAGSLR_2Change(Sender: TObject);
begin
  AlteraClasseSal(DBL_NIDTAGSLR_3,EDT_NVALORSLR1);
end;

procedure TFRM_A036RH.DBL_NIDTAGSLR_1Change(Sender: TObject);
begin
  AlteraNivel(Sender,EDT_NVALORSLR);
end;

procedure TFRM_A036RH.DBL_NIDTAGSLR_3Change(Sender: TObject);
begin
  AlteraNivel(Sender,EDT_NVALORSLR1);
end;

procedure TFRM_A036RH.DBM_CGRADUACAOKeyPress(Sender: TObject;
  var Key: Char);
begin
  Key := UpCase(Key);
end;

procedure TFRM_A036RH.CBE_NIDTBXCBOChange(Sender: TObject);
begin
  lDigCbo := DTM_A036RH.DTS_073.DataSet.State in [dsInsert,dsEdit]; 
end;

procedure TFRM_A036RH.CBE_NIDTBXPCRChange(Sender: TObject);
begin
  lDigPdr := DTM_A036RH.DTS_073.DataSet.State in [dsEdit,dsInsert];
end;

procedure TFRM_A036RH.CBE_NIDTBXCBOKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_ESCAPE then
    begin
      (Sender as TComboEdit).Text := DTM_A036RH.DTS_138.DataSet.FieldByName('nnrocbo').DisplayText;
      lDigCbo := false;
    end;
end;

procedure TFRM_A036RH.CBE_NIDTBXPCRKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_ESCAPE then
    begin
      (Sender as TComboEdit).Text := DTM_A036RH.DTS_122.DataSet.FieldByName('cdescripcr').DisplayText;
      lDigPdr := false;
    end
end;

procedure TFRM_A036RH.CDB_NIDCADCRGButtonClick(Sender: TObject);
begin
  Application.CreateForm(TDTM_A039RH,DTM_A039RH);
  Application.CreateForm(TFRM_A039RH,FRM_A039RH);
  FRM_A039RH.nIdCargo := DTM_A036RH.DTS_073.DataSet.FieldByName('nidcadcrg').asInteger;
  oControlForms.AtivaForm('FRM_A039RH',shModal,nil);
end;

procedure TFRM_A036RH.BTN_HORARIOClick(Sender: TObject);
begin
 //chama a aplicação de quadro de horarios
 Application.CreateForm(TDTM_A040RH,DTM_A040RH);
 Application.CreateForm(TFRM_A040RH,FRM_A040RH);
 FRM_A040RH.nIdCargo :=
 DTM_A036RH.QRY_073.FieldByName('nidcadcrg').asInteger;
 oControlForms.AtivaForm('FRM_A040RH',shModal,nil);
end;

end.




