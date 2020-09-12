unit A009RH;

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
  TFRM_A009RH = class(TForm)
    Panel2: TPanel;
    Btn_Alterar: TSpeedButton;
    Btn_Gravar: TSpeedButton;
    BTN_SAIR: TSpeedButton;
    Btn_Cancelar: TSpeedButton;
    LMDGroupBox2: TLMDGroupBox;
    GRP_BASE: TLMDGroupBox;
    Label19: TLabel;
    Label2: TLabel;
    DBL_NIDTAGSLR: TRxDBLookupCombo;
    Label6: TLabel;
    Label7: TLabel;
    DBL_NIDTAGSLR_1: TRxDBLookupCombo;
    Label8: TLabel;
    DBC_NVALORSLR: TRxDBComboEdit;
    GRP_DOTACAO: TLMDGroupBox;
    DBL_NIDTBXORG: TRxDBLookupCombo;
    DBL_NIDTAGUNO: TRxDBLookupCombo;
    DBL_NIDTAGUPJ: TRxDBLookupCombo;
    GRP_PAGTO: TLMDGroupBox;
    Label14: TLabel;
    DBL_NIDTAGFPG: TRxDBLookupCombo;
    Label15: TLabel;
    DED_NAGENCIA: TDBEdit;
    DED_NCONTA: TDBEdit;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label20: TLabel;
    Label21: TLabel;
    Label22: TLabel;
    Label23: TLabel;
    DBL_NIDTBXBCO: TRxDBLookupCombo;
    DED_LKP_AGENCIA: TDBEdit;
    DED_LKP_CONTA: TDBEdit;
    DBL_NIDTAGBOR: TRxDBLookupCombo;
    DBL_NIDTAGOCT: TRxDBLookupCombo;
    SpeedButton1: TSpeedButton;
    CBE_NIDTBXBCO: TComboEdit;
    DED_NDIGITO: TDBEdit;
    Label3: TLabel;
    LMDFill1: TLMDFill;
    LMDFill2: TLMDFill;
    LMDFill3: TLMDFill;
    LMDFill7: TLMDFill;
    GRP_PAG: TLMDGroupBox;
    LMDFill4: TLMDFill;
    LMDFill5: TLMDFill;
    LMDFill6: TLMDFill;
    LMDFill8: TLMDFill;
    RxDBComboEdit3: TRxDBComboEdit;
    DBC_DAT_VALOR: TRxDBComboEdit;
    DED_CLC_REMUNE: TDBEdit;
    Label9: TLabel;
    DED_CDESCRITSL: TDBEdit;
    DED_NHORASMES: TDBEdit;
    DED_NHORASSEM: TDBEdit;
    Label10: TLabel;
    Label1: TLabel;
    DBL_NIDTBXSLR: TRxDBLookupCombo;
    DED_CDESCBANCO: TDBEdit;
    Label11: TLabel;
    BTN_PGTOEFT: TSpeedButton;
    Label4: TLabel;
    Label5: TLabel;
    DED_NDIGAGE: TDBEdit;
    procedure BTN_SAIRClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Btn_AlterarClick(Sender: TObject);
    procedure Btn_GravarClick(Sender: TObject);
    procedure Btn_CancelarClick(Sender: TObject);
    procedure DBL_NIDTAGSLRChange(Sender: TObject);
    procedure DBL_NIDTAGSLR_1Change(Sender: TObject);
    procedure DBL_NIDTBXORGChange(Sender: TObject);
    procedure DBL_NIDTAGUNOChange(Sender: TObject);
    procedure DBL_NIDTBXBCOChange(Sender: TObject);
    procedure DBL_NIDTAGBORChange(Sender: TObject);
    procedure CBE_NIDTBXBCOButtonClick(Sender: TObject);
    procedure CBE_NIDTBXBCOExit(Sender: TObject);
    procedure DBC_NVALORSLRButtonClick(Sender: TObject);
    procedure DBC_DAT_VALORButtonClick(Sender: TObject);
    procedure DBC_DAT_VALORChange(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure DBL_NIDTBXSLRChange(Sender: TObject);
    procedure BTN_PGTOEFTClick(Sender: TObject);

  private
    procedure AlteraTabSalarial(LookupClasse,
      LookupNiveis: TRxDBLookupCombo);
    procedure AlteraClasseSal(Sender: TRxDBLookupCombo);
    procedure AlteraNivel(Sender: TObject);
    { Private declarations }
  public
    { Public declarations }
    nIdFicha : Integer;
    cNomeGrl: String;

  end;

var
  FRM_A009RH: TFRM_A009RH;

implementation

uses MPLCtrl, UVariaveis, D009RH, DMCTRL, CtrlForms, D012RH, A012RH, A013RH,
  D013RH, A014RH, D014RH, A038RH, D038RH;

{$R *.DFM}



procedure TFRM_A009RH.BTN_SAIRClick(Sender: TObject);
begin
    close;
end;

procedure TFRM_A009RH.FormShow(Sender: TObject);
  var
    cAux : String;
begin
 //verifica o acesso do usuário a objetos e campos da aplicação
  if not Acesso(nMatricula,'A009RH',DTM_A009RH) then
    close;

  //muda o estado dos botõe da aplicação
  Botoes(['Btn_Cancelar','Btn_Gravar'],'FRM_A009RH',false);
  with DTM_A009RH, DMControle do
    begin
      QRY_077.ParamByName('nidtagffu').asInteger := nIdFicha;
      QRY_077.ExecSQL;
      if QRY_077.FieldByName('nidtagobt').isNull then
        DBC_NVALORSLR.ButtonWidth := 0;
      Caption := '  ' + QRY_077.FieldByName('nmatricula').DisplayText + ' - ' +
        cNomeGrl;
      GRP_BASE.Caption := '  Cargo ' +
        QRY_073.FieldByName('cdescritcr').asString + ' de ' +
        QRY_073.FieldByName('cdescricrg').asString + '  ';

      cAux := LongMonthNames[Qry_P.FieldByName('nmespgto').asInteger];
      GRP_PAG.Caption := '  Mês de ' +
        UpperCase(cAux[1])+Copy(cAux,2,length(cAux)-1) + ' / ' +
        Qry_P.FieldByName('nanopgto').asString + '  ';


      AlteraTabSalarial(DBL_NIDTAGSLR,DBL_NIDTAGSLR_1);
      CBE_NIDTBXBCO.Text := QRY_029.FieldByName('ncodbanco').asString;
      //QRY_119.ParamByName('nvalorsal').asFloat :=
      //QRY_077.ParamByName('lkp_sal').asFloat;
      QRY_077.Refresh;
    end;

  DBL_NIDTBXORGChange(DBL_NIDTBXORG);
  DBL_NIDTAGUNOChange(DBL_NIDTAGUNO);
  DBL_NIDTBXBCOChange(DBL_NIDTBXBCO);
  DBL_NIDTAGBORChange(DBL_NIDTAGBOR);
  FRM_A009RH.OnShow := nil;

 {é atribuido ao OnShow do Form o valor nil para que o mesmo seja executado apenas uma vez}
 {pelo fato que se outra aplicação for chamada pela tecla F3, e ao retornar da aplicação que foi chamada pela tecla}
 {o evento OnShow deste form não acontecerá, ou seja não será executado, para permanecer o mesmo status da aplicação}
 {quando o F3 foi chamado}

end;

procedure TFRM_A009RH.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  //fecha os datasets do DataModule e libera o form e o DataModule da memoria
  Action:= oControlForms.Saidas(Self,[DTM_A009RH],DTM_A009RH.DTS_077.DataSet);
end;

procedure TFRM_A009RH.AlteraTabSalarial(LookupClasse, LookupNiveis: TRxDBLookupCombo);
begin
  with DTM_A009RH do
    begin
      //se não houver um dbLookup de classe salarial
      if LookupClasse = nil then
        //sai da rotina
        exit;
      //se a ficha estiver em edição
      if (DTS_077.DataSet.State = dsEdit) then
        //seleciona item em branco no dbLookup de classe salarial
        LookupClasse.KeyValue := 0;
      {**nivel inicial e final do cargo}
      //QRY_080.ParamByName('nidini').asInteger :=
      //QRY_073.FieldByName('nidtagslr').asInteger;
      //QRY_080.ParamByName('nidfim').asInteger :=
      //QRY_073.FieldByName('nidslrfim').asInteger;
      //QRY_080.ExecSQL;

      //se a tabela salarial não possuir classe
      if QRY_080.FieldByName('cclasse').value = null then
        begin
          //seleciona os niveis com não possue classe
          QRY_080_1.SQL.Clear;
          QRY_080_1.SQL.Add('select nnivel, nidtagslr, nvalorslr from');
          QRY_080_1.SQL.Add('tagslr where nidtbxslr = :nidtbxslr');
          //QRY_080_1.SQL.Add('and nidtagslr between :nidini and :nidfim');
          QRY_080_1.SQL.Add('and cclasse is null');
          QRY_080_1.ParamByName('nidtbxslr').asInteger :=
          QRY_092.FieldByName('nidtbxslr').asInteger;
          //QRY_080_1.ParamByName('nidini').asInteger :=
          //QRY_073.FieldByName('nidtagslr').asInteger;
          //QRY_080_1.ParamByName('nidfim').asInteger :=
          //QRY_073.FieldByName('nidslrfim').asInteger;
          QRY_080_1.ExecSQL;
        end
      else
        begin
          //seleciona os niveis de uma classe
          QRY_080_1.SQL.Clear;
          QRY_080_1.SQL.Add('select nnivel, nidtagslr, nvalorslr from');
          QRY_080_1.SQL.Add('tagslr where nidtbxslr = :nidtbxslr');
          //QRY_080_1.SQL.Add('and nidtagslr between :nidini and :nidfim');
          QRY_080_1.SQL.Add('and cclasse = :cclasse');
          QRY_080_1.ParamByName('nidtbxslr').asInteger :=
          QRY_092.FieldByName('nidtbxslr').asInteger;
          QRY_080_1.ParamByName('cclasse').asString :=
          QRY_080.FieldByName('cclasse').asString;
          //QRY_080_1.ParamByName('nidini').asInteger :=
          //QRY_073.FieldByName('nidtagslr').asInteger;
          //QRY_080_1.ParamByName('nidfim').asInteger :=
          //QRY_073.FieldByName('nidslrfim').asInteger;
          QRY_080_1.ExecSQL;
        end;
      //chama rotina para alterar classe salarial
      AlteraClasseSal(LookupNiveis);
    end;

end;

procedure TFRM_A009RH.AlteraClasseSal(Sender: TRxDBLookupCombo);
begin
  with DTM_A009RH do
    begin
      //se a ficha estiver em alteração
      //e o parametro for valido
      if (DTS_077.DataSet.State = dsEdit) and
         (Sender <> nil)then
        begin
          //seleciona item em branco no dbLookup
          Sender.KeyValue := 0;
          //retira o valor salarial do movimento
          DTS_077.DataSet.FieldByName('nidtagslr').value := null;
        end;
    end;
end;

procedure TFRM_A009RH.AlteraNivel(Sender: TObject);
begin
  with DTM_A009RH do
    begin
      //se a ficha estiver em edicao
      if DTS_077.DataSet.State = dsEdit then
        //atribui o salario para a ficha funcional
        DTS_077.DataSet.FieldByName('nidtagslr').value :=
        DTS_080_1.DataSet.FieldByName('nidtagslr').value;
    end;

end;



procedure TFRM_A009RH.Btn_AlterarClick(Sender: TObject);
begin
  //coloca em estado de alteração a ficha e a tabela de servidores
  DBGenerica(DTM_A009RH.DTS_077,'Conexao',2,0,NIL,false);
  DBGenerica(DTM_A009RH.DTS_029,'Conexao',2,0,NIL,false);
  Botoes(['Btn_Cancelar','Btn_Gravar','Btn_Sair'],'FRM_A009RH',true);
end;

procedure TFRM_A009RH.Btn_GravarClick(Sender: TObject);
begin
  if LiberadoGravacao(FRM_A009RH,DTM_A009RH.DTS_077) then
    begin
      CBE_NIDTBXBCOExit(Sender);
      
      if MessageDlg('Deseja Salvar Alterações?',mtConfirmation,[mbYes,mbNo],0) = mrYes then
        begin
          DMControle.Conexao.StartTransaction;
          try
            DBGenerica(DTM_A009RH.Dts_029,'Conexao',4,1,nil,false);
            DBGenerica(DTM_A009RH.Dts_077,'Conexao',4,1,nil,false);
            Botoes(['Btn_Gravar','Btn_Cancelar'],'FRM_A009RH',false);
            DMControle.Conexao.Commit;
          except
            On E: Exception do
              begin
                DMControle.Conexao.Rollback;
                MessageDlg('Houve um erro ! A operação será cancelada!',mtError,[mboK],0);

              end;
          end;
        end;

    end;
end;

procedure TFRM_A009RH.Btn_CancelarClick(Sender: TObject);
begin
   DBGenerica(DTM_A009RH.DTS_029,'Conexao',3, 0,NIL,false);
   DBGenerica(DTM_A009RH.DTS_077,'Conexao',3, 0,NIL,false);
   Botoes(['Btn_Cancelar', 'Btn_Gravar'],'FRM_A009RH',false);
   DBL_NIDTBXORGChange(DBL_NIDTBXORG);
   DBL_NIDTAGUNOChange(DBL_NIDTAGUNO);
   DBL_NIDTBXBCOChange(DBL_NIDTBXBCO);
   DBL_NIDTAGBORChange(DBL_NIDTAGBOR);
   //DBL_NIDTBXSLRChange(DBL_NIDTBXSLR);
   DTM_A009RH.DTS_077.DataSet.Refresh;
end;

procedure TFRM_A009RH.DBL_NIDTAGSLRChange(Sender: TObject);
begin
  AlteraClasseSal(DBL_NIDTAGSLR_1);
end;

procedure TFRM_A009RH.DBL_NIDTAGSLR_1Change(Sender: TObject);
begin
  AlteraNivel(Sender);
end;

procedure TFRM_A009RH.DBL_NIDTBXORGChange(Sender: TObject);
begin
  DBL_NIDTAGUNO.Enabled := DBL_NIDTBXORG.Text <> '';
  if DTM_A009RH.DTS_077.DataSet.State = dsEdit then
    DBL_NIDTAGUNO.KeyValue := 0
end;

procedure TFRM_A009RH.DBL_NIDTAGUNOChange(Sender: TObject);
begin
  DBL_NIDTAGUPJ.Enabled := DBL_NIDTBXORG.Text <> '';
  if DTM_A009RH.DTS_077.DataSet.State = dsEdit then
    DBL_NIDTAGUPJ.KeyValue := 0
end;

procedure TFRM_A009RH.DBL_NIDTBXBCOChange(Sender: TObject);
begin
  DBL_NIDTAGBOR.Enabled := DBL_NIDTBXBCO.Text <> '';
  DBL_NIDTAGFPG.Enabled := DBL_NIDTBXBCO.Text <> '';
  if DTM_A009RH.DTS_077.DataSet.State = dsEdit then
    begin
      DBL_NIDTAGBOR.KeyValue := 0;
      DBL_NIDTAGOCT.KeyValue := 0;
      DBL_NIDTAGFPG.KeyValue := 0;
    end;
end;

procedure TFRM_A009RH.DBL_NIDTAGBORChange(Sender: TObject);
begin
  DBL_NIDTAGOCT.Enabled := DBL_NIDTAGBOR.Text <> '';
  if DTM_A009RH.DTS_077.DataSet.State = dsEdit then
    DBL_NIDTAGOCT.KeyValue := 0
end;

procedure TFRM_A009RH.CBE_NIDTBXBCOButtonClick(Sender: TObject);
begin
  VerTeclas(VK_F2);
end;

procedure TFRM_A009RH.CBE_NIDTBXBCOExit(Sender: TObject);
begin
  with DTM_A009RH, DMCONTROLE do
    begin
      if (DTS_029.DataSet.State = dsEdit) and
         (Trim(CBE_NIDTBXBCO.Text) <> '') then
        begin
          PrepareQryTemp('select nidtbxbco, cdescbanco from tbxbco where ncodbanco = ' + CBE_NIDTBXBCO.Text);
          if QryTemp.IsEmpty then
            begin
              MessageDlg('Código de banco não encontrado!',mtWarning,[mbOk],0);
              CBE_NIDTBXBCO.SetFocus;
              QryTemp.Close;
              QryTemp.SQL.Clear;
              Abort;
            end
          else
            begin
              DTS_029.DataSet.FieldByName('nidtbxbco').asInteger :=
              QryTemp.FieldByName('nidtbxbco').asInteger;
              DTS_029.DataSet.FieldByName('cdescbanco').asString :=
              QryTemp.FieldByName('cdescbanco').asString;
            end;
          QryTemp.Close;
          QryTemp.SQL.Clear;
        end;
    end;
end;



procedure TFRM_A009RH.DBC_NVALORSLRButtonClick(Sender: TObject);
begin
  Application.CreateForm(TDTM_A012RH,DTM_A012RH);
  Application.CreateForm(TFRM_A012RH,FRM_A012RH);
  FRM_A012RH.nIdObito := DTM_A009RH.DTS_077.DataSet.FieldByName('nidtagobt').asInteger;
  oControlForms.AtivaForm('FRM_A012RH',shModal,NIL);
end;

procedure TFRM_A009RH.DBC_DAT_VALORButtonClick(Sender: TObject);
begin
  Application.CreateForm(TDTM_A013RH,DTM_A013RH);
  Application.CreateForm(TFRM_A013RH,FRM_A013RH);
  FRM_A013RH.nIdFicha := DTM_A009RH.DTS_077.DataSet.FieldByName('nidtagffu').asInteger;
  FRM_A013RH.nSalFicha := DTM_A009RH.DTS_077.DataSet.FieldByName('lkp_sal').asFloat;
  oControlForms.AtivaForm('FRM_A013RH',shModal,NIL);
  DTM_A009RH.QRY_119.Refresh;
end;

procedure TFRM_A009RH.DBC_DAT_VALORChange(Sender: TObject);
begin
  if DTM_A009RH.DTS_119 <> nil then
    if DTM_A009RH.DTS_119.DataSet.FieldByName('dat_valor').asFloat > 0 then
      DBC_DAT_VALOR.ButtonWidth := 21
    else
      DBC_DAT_VALOR.ButtonWidth := 0;
end;

procedure TFRM_A009RH.SpeedButton1Click(Sender: TObject);
begin
  Application.CreateForm(TDTM_A014RH,DTM_A014RH);
  Application.CreateForm(TFRM_A014RH,FRM_A014RH);
  FRM_A014RH.nIdFicha := DTM_A009RH.DTS_077.DataSet.FieldByName('nidtagffu').asInteger;
  FRM_A014RH.nSalBase := DTM_A009RH.DTS_077.DataSet.FieldByName('lkp_sal').asFloat;
  oControlForms.AtivaForm('FRM_A014RH',shModal,NIL);
  DTM_A009RH.QRY_119.Refresh;
end;

procedure TFRM_A009RH.DBL_NIDTBXSLRChange(Sender: TObject);
begin
  AlteraTabSalarial(DBL_NIDTAGSLR,DBL_NIDTAGSLR_1);
end;
procedure TFRM_A009RH.BTN_PGTOEFTClick(Sender: TObject);
begin
  //chama o form de pagamentos efetuados
  Application.CreateForm(TDTM_A038RH,DTM_A038RH);
  Application.CreateForm(TFRM_A038RH,FRM_A038RH);
  FRM_A038RH.nIdServidor :=
  DTM_A009RH.DTS_029.DataSet.FieldByName('nidcadser').asInteger;
  oControlForms.AtivaForm('FRM_A038RH',shModal,nil);
end;

end.



