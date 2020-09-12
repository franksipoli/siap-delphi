unit A008RH;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Buttons, ExtCtrls, LMDCustomControl, LMDCustomPanel, LMDCustomBevelPanel,
  LMDCustomParentPanel, LMDCustomGroupBox, LMDGroupBox, DBCtrls, StdCtrls,
  Mask, ToolEdit, RXDBCtrl, RxLookup, DB;

type
  TFRM_A008RH = class(TForm)
    Panel2: TPanel;
    Btn_Alterar: TSpeedButton;
    Btn_Gravar: TSpeedButton;
    Btn_Excluir: TSpeedButton;
    BTN_SAIR: TSpeedButton;
    Btn_Cancelar: TSpeedButton;
    LMDGroupBox5: TLMDGroupBox;
    CBE_CCPFCNPJ: TComboEdit;
    Label1: TLabel;
    DED_CNOMEGRL: TDBEdit;
    Label2: TLabel;
    DED_CULTIMOCRG: TDBEdit;
    DED_CMOTIVO: TDBEdit;
    DBD_DDTOBITO: TDBDateEdit;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label52: TLabel;
    Label62: TLabel;
    Label63: TLabel;
    Label64: TLabel;
    DED_NBSPENSAO: TDBEdit;
    DBL_NIDTAGSLR_5: TRxDBLookupCombo;
    DBL_NIDTAGSLR_4: TRxDBLookupCombo;
    DBL_NIDTBXSLR_2: TRxDBLookupCombo;
    DBL_NIDTBXTBI: TRxDBLookupCombo;
    Label54: TLabel;
    procedure CBE_CCPFCNPJExit(Sender: TObject);
    procedure Btn_GravarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure BTN_SAIRClick(Sender: TObject);
    procedure DBL_NIDTBXSLR_2Change(Sender: TObject);
    procedure DBL_NIDTAGSLR_4Change(Sender: TObject);
    procedure DBL_NIDTAGSLR_5Change(Sender: TObject);
    procedure Btn_AlterarClick(Sender: TObject);
    procedure Btn_CancelarClick(Sender: TObject);
    procedure Btn_ExcluirClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure CBE_CCPFCNPJButtonClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    
    cCpfCnpj : String;
    procedure AlteraTabSalarial(LookupClasse,
      LookupNiveis: TRxDBLookupCombo);
    procedure AlteraClasseSal(Sender: TRxDBLookupCombo);
    procedure AlteraNivel(Sender: TObject);
  
  end;

var
  FRM_A008RH: TFRM_A008RH;

implementation

uses D008RH, UVariaveis, MPLCtrl, CtrlForms, DMCTRL, MplLib;



{$R *.DFM}

procedure TFRM_A008RH.CBE_CCPFCNPJExit(Sender: TObject);
begin
  with DTM_A008RH do
    begin
        Botoes(['Btn_Cancelar','Btn_Gravar'],'FRM_A008RH',true);
      //if (DTS_103.DataSet.State in  [dsInsert,dsEdit]) then
        begin
          if Trim(LimpaMask(CBE_CCPFCNPJ.Text)) = '' then
            begin
              MessageDlg('Número de CPF deve ser preenchido!',mtInformation,[mbOk],0);
              CBE_CCPFCNPJ.SetFocus;
              exit;
            end;
          if not(ValidaCpf(LimpaMask(CBE_CCPFCNPJ.Text))) then
            begin
              MessageDlg('Número de CPF invalido!',mtInformation,[mbOk],0);
              CBE_CCPFCNPJ.SetFocus;
              exit;
            end;
          //busca o cpf no cadastro geral
          QRY_016.ParamByName('ccpfcnpj').AsString :=
          LimpaMask(CBE_CCPFCNPJ.Text);
          QRY_016.ExecSQL;
          //caso não exista
          if QRY_016.IsEmpty then
            begin
              //inseri um novo registro na tabela de cadastro geral
              DBGenerica(DTS_016,'Conexao',1,0,nil,false);
              QRY_016.FieldByName('ccpfcnpj').AsString :=
              LimpaMask(CBE_CCPFCNPJ.Text);
              //inseri um novo registro na tabela de pessoas fisicas
              DBGenerica(DTS_019,'Conexao',1,0,nil,false);
              //inseri um novo registro na tabela de servidores
              DBGenerica(DTS_029,'Conexao',1,0,nil,false);
              //inseri um novo registro na tabela de obito
              DBGenerica(DTS_103,'Conexao',1,0,nil,false);
            end
          else
            begin
              //coloca em alteração o registro do cadastro geral
              DBGenerica(Dts_016,'Conexao',2,0,nil,false);
              //se a pessoa não e um servidor
              if QRY_029.IsEmpty then
                begin
                 //inseri um novo registro na tabela de servidores
                 DBGenerica(DTS_029,'Conexao',1,0,nil,false);
                 //inseri um novo registro na tabela de obito
                 DBGenerica(DTS_103,'Conexao',1,0,nil,false);
                end
              else
                if QRY_103.IsEmpty then
                  //inseri um novo registro na tabela de obito
                 DBGenerica(DTS_103,'Conexao',1,0,nil,false)
                else
                  //coloca em alteração o registro na tabela de obto
                  DBGenerica(DTS_103,'Conexao',2,0,nil,false);
            end;
        end;
      DED_CNOMEGRL.SetFocus;  
      if QRY_103.State = dsInsert then
        QRY_103.FieldByName('nidtagobt').asInteger := 0;
    end;
end;

procedure TFRM_A008RH.Btn_GravarClick(Sender: TObject);
begin
  with DTM_A008RH,DMControle do
    begin
      if LiberadoGravacao(FRM_A008RH,DTS_103) then
        begin
          Conexao.StartTransaction;
          try
            //se o cadastro geral estiver em edição
            if QRY_016.State = dsEdit then
              begin
                if QRY_103.State = dsEdit then
                  begin
                    //grava as informações na tabela de obto
                    DBGenerica(DTS_103,'Conexao',4,1,NIL,true);
                  end
                else
                  //se o cadastro de servidor estiver em inserção
                  if QRY_029.State = dsInsert then
                    begin
                      QRY_103.MasterSource := nil;
                      //grava as informações na tabela de servidores
                      DBGenerica(Dts_029,'Conexao',4,1,NIL,true);
                      QRY_029.Refresh;
                      QRY_103.FieldByName('nidcadser').asInteger:=
                      QRY_029.FieldByName('nidcadser').asInteger;
                      //grava as informações na tabela de obto
                      DBGenerica(DTS_103,'Conexao',4,1,NIL,true);
                      QRY_103.MasterSource := dts_029;
                      QRY_029.Refresh;
                    end
                  else
                    begin
                      //grava as informações na tabela de obto
                      DBGenerica(DTS_103,'Conexao',4,1,NIL,true);
                      //grava as informações na tabela de servidores
                      DBGenerica(Dts_029,'Conexao',4,1,NIL,true);
                    end;
                //grava as informações no cadastro geral
                DBGenerica(Dts_016,'Conexao',4,1,NIL,false);
              end
            else
              begin
                QRY_019.MasterSource := nil;
                QRY_029.MasterSource := nil;
                QRY_103.MasterSource := nil;
                //grava as informações no cadastro geral
                DBGenerica(DTS_016,'Conexao',4,1,NIL,false);
                //QRY_016.Refresh;
                QRY_016.ParamByName('ccpfcnpj').asString :=
                LimpaMask(CBE_CCPFCNPJ.Text);
                QRY_016.ExecSql;
                QRY_019.FieldByName('nidcadgrl').asInteger :=
                QRY_016.FieldByName('nidcadgrl').asInteger;
                QRY_029.FieldByName('nidcadgrl').asInteger :=
                QRY_016.FieldByName('nidcadgrl').asInteger;
                //grava as informações no cadastro pessoas fisicas
                DBGenerica(DTS_019,'Conexao',4,1,NIL,true);
                //grava as informações no cadastro de servidores
                DBGenerica(DTS_029,'Conexao',4,1,NIL,true);
                QRY_029.ParamByName('nidcadgrl').asInteger :=
                QRY_016.FieldByName('nidcadgrl').asInteger;
                QRY_029.ExecSql;
                QRY_103.FieldByName('nidcadser').asInteger :=
                QRY_029.FieldByName('nidcadser').asInteger;
                //grava as informações na tabela de obitos
                DBGenerica(DTS_103,'Conexao',4,1,NIL,true);
                QRY_019.MasterSource := DTS_016;
                QRY_029.MasterSource := DTS_016;
                QRY_103.MasterSource := DTS_029;
                QRY_016.Refresh;
              end;
            QRY_103.Refresh;  
            Conexao.Commit;
            Botoes(['Btn_Gravar','Btn_Cancelar'],'FRM_A008RH',false);
          except
            On E: Exception do
              begin
                Conexao.Rollback;
                MessageDlg(E.Message,mtError,[mbOk],0);
              end;
          end;
        end;
    end;
end;

procedure TFRM_A008RH.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:= oControlForms.Saidas(Self,[DTM_A008RH],DTM_A008RH.DTS_103.DataSet);
end;

procedure TFRM_A008RH.FormShow(Sender: TObject);
begin
  if not Acesso(nMatricula,'A008RH',DTM_A008RH) then
    close;
  Botoes(['Btn_Cancelar','Btn_Gravar'],'FRM_A008RH',false);
  if cCpfCnpj <> '' then
    begin
      CBE_CCPFCNPJ.Text := cCpfCnpj;
      CBE_CCPFCNPJExit(Sender);
    end;
  FRM_A008RH.OnShow := nil;
 {é atribuido ao OnShow do Form o valor nil para que o mesmo seja executado apenas uma vez}
 {pelo fato que se outra aplicação for chamada pela tecla F3, e ao retornar da aplicação que foi chamada pela tecla}
 {o evento OnShow deste form não acontecerá, ou seja não será executado, para permanecer o mesmo status da aplicação}
 {quando o F3 foi chamado}

end;

procedure TFRM_A008RH.BTN_SAIRClick(Sender: TObject);
begin
  close;
end;
procedure TFRM_A008RH.AlteraTabSalarial(LookupClasse, LookupNiveis: TRxDBLookupCombo);
begin
  with DTM_A008RH do
    begin
      if LookupClasse = nil then
        exit;
      LookupClasse.KeyValue := 0;
      if QRY_080.FieldByName('cclasse').value = null then
        begin
          QRY_080_1.SQL.Clear;
          QRY_080_1.SQL.Add('select nnivel, nidtagslr, nvalorslr from');
          QRY_080_1.SQL.Add('tagslr where nidtbxslr = :nidtbxslr');
          QRY_080_1.SQL.Add('and cclasse is null');
          QRY_080_1.ParamByName('nidtbxslr').asInteger :=
          QRY_092.FieldByName('nidtbxslr').asInteger;
          QRY_080_1.ExecSQL;
        end
      else
        begin
          QRY_080_1.SQL.Clear;
          QRY_080_1.SQL.Add('select nnivel, nidtagslr, nvalorslr from');
          QRY_080_1.SQL.Add('tagslr where nidtbxslr = :nidtbxslr');
          QRY_080_1.SQL.Add('and cclasse = :cclasse');
          QRY_080_1.ParamByName('nidtbxslr').asInteger :=
          QRY_092.FieldByName('nidtbxslr').asInteger;
          QRY_080_1.ParamByName('cclasse').asString :=
          QRY_080.FieldByName('cclasse').asString;
          QRY_080_1.ExecSQL;
        end;
      AlteraClasseSal(LookupNiveis);
    end;

end;

procedure TFRM_A008RH.AlteraClasseSal(Sender: TRxDBLookupCombo);
begin
  with DTM_A008RH do
    begin
      if (DTS_103.DataSet.State in [dsEdit,dsInsert]) and
         (Sender <> nil)then
        begin
          Sender.KeyValue := 0;
          DTS_103.DataSet.FieldByName('nbspensao').value := null;
        end;
    end;
end;

procedure TFRM_A008RH.AlteraNivel(Sender: TObject);
begin
  with DTM_A008RH do
    begin
      if DTS_103.DataSet.State in [dsEdit,dsInsert] then
        DTS_103.DataSet.FieldByName('nbspensao').value :=
        DTS_080_1.DataSet.FieldByName('nvalorslr').value;
    end;

end;



procedure TFRM_A008RH.DBL_NIDTBXSLR_2Change(Sender: TObject);
begin
  AlteraTabSalarial(DBL_NIDTAGSLR_4,DBL_NIDTAGSLR_5);
end;

procedure TFRM_A008RH.DBL_NIDTAGSLR_4Change(Sender: TObject);
begin
  AlteraClasseSal(DBL_NIDTAGSLR_5);
end;

procedure TFRM_A008RH.DBL_NIDTAGSLR_5Change(Sender: TObject);
begin
 AlteraNivel(Sender);
end;

procedure TFRM_A008RH.Btn_AlterarClick(Sender: TObject);
begin
  with DTM_A008RH do
    begin
      Botoes(['Btn_Cancelar','Btn_Gravar','Btn_Sair'],'FRM_A008RH',true);
      //coloca em estado de alteração a tabela de cad.geral
      DBGenerica(Dts_016,'Conexao',2,0,nil,false);
      //coloca em estado de alteração a tabela de obito
      DBGenerica(Dts_103,'Conexao',2,0,nil,false);
    end;
end;

procedure TFRM_A008RH.Btn_CancelarClick(Sender: TObject);
begin
  with DTM_A008RH do
    begin
      //cancela a operação na tabela de obito
      DBGenerica(Dts_103,'Conexao',3, 0,nil,true);
      //cancela a operação na tabela de servidores
      DBGenerica(Dts_029,'Conexao',3, 0,nil,true);
      //cancela a operação na tabela de pessoas fisicas
      DBGenerica(Dts_019,'Conexao',3, 0,nil,true);
      //cancela a operação na tabela de cad. geral
      DBGenerica(Dts_016,'Conexao',3, 0,nil,false);
      Botoes(['Btn_Cancelar', 'Btn_Gravar'],'FRM_A008RH',false);

    end;
end;

procedure TFRM_A008RH.Btn_ExcluirClick(Sender: TObject);
begin
  if MessageDlg('Deseja realmente deletar o registro?',mtConfirmation,[mbYes,mbNo],0)= mrYes then
    begin
      with DMControle,DTM_A008RH do
        begin
          PrepareQryTemp('select nidcadmov from cadmov where nidtagobt = ' + DTS_103.DataSet.FieldByName('nidtagobt').asString);
          if QryTemp.IsEmpty then
            begin
              try
                //deleta a pessoa da tabela de obito
                QRY_103.Delete;
                //atualiza a tabela de obtos
                QRY_103.ApplyUpdates;
                //deleta a pessoa do cad. servidor se possivel
                QRY_029.Delete;
                //atualiza a tabela de servidor
                QRY_029.ApplyUpdates;
                //deleta a pessoa do cad. geral se possivel
                QRY_016.Delete;
              except

              end;
            end;
          QryTemp.Close;
          QryTemp.SQL.Clear
        end;
    end;
end;

procedure TFRM_A008RH.FormCreate(Sender: TObject);
begin
  cCpfCnpj := '';
end;

procedure TFRM_A008RH.CBE_CCPFCNPJButtonClick(Sender: TObject);
begin
  VerTeclas(VK_F2);
end;

end.
