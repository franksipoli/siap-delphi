unit A011RH;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  RxLookup, StdCtrls, RxDBComb, Grids, DBGrids, DBCtrls, Mask, ToolEdit,
  RXDBCtrl, LMDCustomControl, LMDCustomPanel, LMDCustomBevelPanel,
  LMDCustomParentPanel, LMDCustomPanelFill, LMDPanelFill, Buttons, ExtCtrls,
  LMDCustomGroupBox, LMDGroupBox, DB, LMDSimplePanel, ComCtrls,
  PageControlEx, ImgList, MemDS, DBAccess, Ora;

type
  TFRM_A011RH = class(TForm)
    Panel2: TPanel;
    BTN_ALTERAR: TSpeedButton;
    BTN_GRAVAR: TSpeedButton;
    BTN_SAIR: TSpeedButton;
    BTN_CANCELAR: TSpeedButton;
    BTN_IMPRIMIR: TSpeedButton;
    BTN_INCLUIR: TSpeedButton;
    BTN_PESQUISAR: TSpeedButton;
    BTN_AVANCAR: TSpeedButton;
    BTN_RETROCEDER: TSpeedButton;
    LMDGroupBox3: TLMDGroupBox;
    Label1: TLabel;
    DBL_NIDTBXTPM: TRxDBLookupCombo;
    DBD_DDTINICIAL: TDBDateEdit;
    DBD_DDTFINAL: TDBDateEdit;
    Label2: TLabel;
    Label3: TLabel;
    DBGrid1: TDBGrid;
    BTN_EXCLUIR: TSpeedButton;
    QRY_DELRVG: TOraQuery;
    QRY_UPDRVG: TOraQuery;
    procedure BTN_SAIRClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BTN_AVANCARClick(Sender: TObject);
    procedure BTN_RETROCEDERClick(Sender: TObject);
    procedure BTN_INCLUIRClick(Sender: TObject);
    procedure BTN_ALTERARClick(Sender: TObject);
    procedure BTN_GRAVARClick(Sender: TObject);
    procedure BTN_CANCELARClick(Sender: TObject);
    procedure BTN_EXCLUIRClick(Sender: TObject);
    procedure BTN_PESQUISARClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
    nIdFicha : Integer;
    dDataProv : TDate;
    dDataDeslig : Variant;
    nIdGrpRvg : Integer;
  end;

var
  FRM_A011RH: TFRM_A011RH;

implementation

uses UVariaveis, MPLCtrl, D011RH, DMCTRL;

{$R *.DFM}

procedure TFRM_A011RH.BTN_SAIRClick(Sender: TObject);
begin
    close;
end;

procedure TFRM_A011RH.FormShow(Sender: TObject);
begin
  //verifica o acesso do usuário a objetos e campos da aplicação
  if not Acesso(nMatricula,'A011RH',DTM_A011RH) then
    close;

  //muda o estado dos botõe da aplicação
  Botoes(['Btn_Cancelar','Btn_Gravar'],'FRM_A011RH',false);

  //pega todos os movimentos da ficha
  DTM_A011RH.QRY_108.ParamByName('nidtagffu').asInteger :=
  nIdFicha;
  DTM_A011RH.QRY_108.ExecSql;

  //pega todos os tipos de movimentos
  //menos os do mesmo grupo do movimento
  //inicial da ficha
  DTM_A011RH.QRY_096.ParamByName('nidtagffu').asInteger :=
  nIdFicha;
  DTM_A011RH.QRY_096.ExecSql;

  FRM_A011RH.OnShow := nil;

 {é atribuido ao OnShow do Form o valor nil para que o mesmo seja executado apenas uma vez}
 {pelo fato que se outra aplicação for chamada pela tecla F3, e ao retornar da aplicação que foi chamada pela tecla}
 {o evento OnShow deste form não acontecerá, ou seja não será executado, para permanecer o mesmo status da aplicação}
 {quando o F3 foi chamado}

end;

procedure TFRM_A011RH.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  //fecha os datasets do DataModule e libera o form e o DataModule da memoria
  Action:= oControlForms.Saidas(Self,[DTM_A011RH],DTM_A011RH.DTS_108.DataSet);
end;

procedure TFRM_A011RH.BTN_AVANCARClick(Sender: TObject);
begin
  //avanca para o proximo movimento
  DBGenerica(DTM_A011RH.DTS_108,'Conexao',0,3);
end;

procedure TFRM_A011RH.BTN_RETROCEDERClick(Sender: TObject);
begin
  //retrocede para o movimento anterior
  DBGenerica(DTM_A011RH.DTS_108,'Conexao',0,2);
end;

procedure TFRM_A011RH.BTN_INCLUIRClick(Sender: TObject);
begin
  {inclui um novo movimento}
  DBGenerica(DTM_A011RH.DTS_108,'Conexao',1,0);
  DTM_A011RH.DTS_108.DataSet.FieldByName('nidtagmvf').asInteger := 0;
  DTM_A011RH.DTS_108.DataSet.FieldByName('nidtagffu').asInteger := nIdFicha;
  Botoes(['Btn_Cancelar','Btn_Sair','Btn_Gravar'],'FRM_A011RH',true);

end;

procedure TFRM_A011RH.BTN_ALTERARClick(Sender: TObject);
begin
   //edita o movimento atual
  DBGenerica(DTM_A011RH.DTS_108,'Conexao',2,0,nil);
  Botoes(['Btn_Cancelar','Btn_Sair','Btn_Gravar'],'FRM_A011RH',true);
end;

procedure TFRM_A011RH.BTN_GRAVARClick(Sender: TObject);
  var
    oReg : TBookMark;
    lDelRvg : Boolean;
    lMenorData, lMaiorData : Boolean;
begin
  with DTM_A011RH, DMControle do
    begin
      DTS_108.DataSet.UpdateRecord;
      //se a ficha possui uma data de desligamento
      if (dDataDeslig <> null) and
         (dDataDeslig <> StrToDate('30/12/1899'))  then
        begin
          //se a data incial do movimento for
          //maoir ou igual a data desligamento
          if (DBD_DDTINICIAL.Date >= dDataDeslig) then
            begin
              //avisa ao usuário
              MessageDlg('Data inicial não pode ser maior ou' + #13 +
                         'igual a data de desligamento',mtInformation,[mbOk],0);
              //retorno o focus para o campo
              DBD_DDTINICIAL.SetFocus;
              //sai da rotina
              exit;
            end;
          //se a data final do movimento for maior que a
          //data de desligamento
          if (DBD_DDTFINAL.Date > dDataDeslig) then
            begin
              //avisa ao usuário
              MessageDlg('Data final não pode ser maior a data de desligamento',
                         mtInformation,[mbOk],0);
              //retorno o focus para o campo
              DBD_DDTFINAL.SetFocus;
              //sai da rotina
              exit;
            end;
        end;
      //se a data inicial do lançamento for menor que a data
      //de admissao
      if DBD_DDTINICIAL.Date < dDataProv then
        begin
          //avisa ao usuário
          MessageDlg('Data inicial do lançamento, não pode ser menor que a data de admissão!',mtInformation,[mbOk],0);
          //retorna o focus ao campo
          DBD_DDTINICIAL.SetFocus;
          //sai da rotina
          exit;
        end;
      //se a data final do movimento não for nula
      if not(DTS_108.DataSet.FieldByName('ddtfinal').IsNull) then
        //se a data final for menor que a data inicial
        if DBD_DDTFINAL.Date < DBD_DDTINICIAL.Date then
          begin
            //avisa ao usuário
            MessageDlg('Data final não pode ser menor que a data inicial!',mtWarning,[mbOk],0);
            //retorna o focus para o campo
            DBD_DDTFINAL.SetFocus;
            //sai da rotina
            exit;
          end;

      //se já existir movimentos para a ficha
      if DTS_108.DataSet.RecordCount > 0 then
        // se o usuário estiver editando o primeiro registro
        if (DTS_108.DataSet.RecordCount = 1) and (DTS_108.DataSet.State = dsEdit) then
        //não faz nada
        //senao
        else
          begin
            //verifica se a data inicial esta no intervalo das datas dos outros movimentos
            QRY_CONSULTA.ParamByName('dataini').AsDate := DBD_DDTINICIAL.Date;
            QRY_CONSULTA.ParamByName('datafim').AsDate := DBD_DDTINICIAL.Date;
            QRY_CONSULTA.ParamByName('nidtagffu').asInteger := nIdFicha;
            QRY_CONSULTA.ParamByName('nidtagmvf').asInteger :=
            DTS_108.DataSet.FieldByName('nidtagmvf').asInteger;
            QRY_CONSULTA.ExecSql;
            //se estiver no intervalo
            if not(QRY_CONSULTA.IsEmpty) then
              begin
                 //avisa ao usuário
                 MessageDlg('Data inicial esta no intervalo de outro lancamento!',mtInformation,[mbOk],0);
                 //retorna o focus para o campo
                 DBD_DDTINICIAL.SetFocus;
                 //sai da rotina
                 exit;
              end;
            //verifica se a data final do movimento esta no intervalo das datas dos outros movimentos
            QRY_CONSULTA.ParamByName('dataini').AsDate := DBD_DDTFINAL.Date;
            QRY_CONSULTA.ParamByName('datafim').AsDate := DBD_DDTFINAL.Date;
            QRY_CONSULTA.ParamByName('nidtagffu').asInteger := nIdFicha;
            QRY_CONSULTA.ParamByName('nidtagmvf').asInteger :=
            DTS_108.DataSet.FieldByName('nidtagmvf').asInteger;
            QRY_CONSULTA.ExecSql;
            //se estiver no intervalo
            if not(QRY_CONSULTA.IsEmpty) then
              begin
                 //avisa ao usuário
                 MessageDlg('Data final esta no intervalo de outro lancamento!',mtInformation,[mbOk],0);
                 //retorna o focus para o campo
                 DBD_DDTINICIAL.SetFocus;
                 //sai da rotina
                 exit;
              end;
            //prepara consulta
            PrepareQryTemp('select nidtagmvf from tagmvf where ctipolacto = ' + QuotedStr('M') +
                           ' and nidtagffu = ' + IntToStr(nIdFicha) +
                           ' and ddtinicial < ' + QuotedStr(DateToStr(DBD_DDTINICIAL.Date)) +
                           ' and nidtagmvf <> ' + DTS_108.DataSet.FieldByName('nidtagmvf').asString);

            lMenorData := QryTemp.IsEmpty;
            QryTemp.Close;
            QryTemp.SQL.Clear;
            PrepareQryTemp('select nidtagmvf from tagmvf where ctipolacto = ' + QuotedStr('M') +
                           ' and nidtagffu = ' + IntToStr(nIdFicha) +
                           ' and ddtfinal > ' + QuotedStr(DateToStr(DBD_DDTFINAL.Date))+
                           ' and nidtagmvf <> ' + DTS_108.DataSet.FieldByName('nidtagmvf').asString);

            lMaiorData := QryTemp.IsEmpty;
            QryTemp.Close;
            QryTemp.SQL.Clear;

            if lMenorData then
              if (DTS_108.DataSet.FieldByName('ddtfinal').isNull) or
                 (lMaiorData) then
                begin
                  MessageDlg('Intervalo da data sobreponhe intervalo da data de outro lançamento!',
                             mtInformation,[mbOk],0);
                  DBD_DDTINICIAL.SetFocus;
                  Exit;
                end;
          end;

       if nIdGrpRvg <> 0 then
        if nIdGrpRvg = DTS_096.DataSet.FieldByName('nidtbxgmv').asInteger then
          begin
            PrepareQryTemp('select nidtagmvf from tagmvf where ' +
                           ' nidtagffu = ' + IntToStr(nIdFicha) +
                           ' and nidtagmvf <> ' + DTS_108.DataSet.FieldByName('nidtagmvf').asString +
                           ' and (ddtinicial >= ' +
                           QuotedStr(DateToStr(DBD_DDTINICIAL.Date)) +
                           ' or ddtfinal >=' + QuotedStr(DateToStr(DBD_DDTINICIAL.Date))+')');
            if not(QryTemp.IsEmpty) then
              begin
                MessageDlg('Existe lançamentos com a data maior ou igual a data de desligamento! ' + #13 +
                           'Favor Verifique!',mtInformation,[mbOk],0);
                DBD_DDTINICIAL.SetFocus;
                QryTemp.Close;
                QryTemp.SQL.Clear;
                exit;
              end;
            QryTemp.Close;
            QryTemp.SQL.Clear;
          end;


       if not(LiberadoGravacao(FRM_A011RH,DTS_108)) then
         exit;

       if (DTS_096.DataSet.FieldByName('ctiporvg').asString = 'A') and
          (DTS_108.DataSet.FieldByName('ddtfinal').isNull) then
         begin
           MessageDlg('Este movimento necessida de uma data de termino!',mtInformation,[mbOk],0);
           DBD_DDTFINAL.SetFocus;
           exit;
         end;

      if MessageDlg('Deseja Salvar Alterações?',mtConfirmation,[mbYes,mbNo],0) = mrYes then
        begin
          Conexao.StartTransaction;
          try
            if nIdGrpRvg <> 0 then
              if nIdGrpRvg = DTS_096.DataSet.FieldByName('nidtbxgmv').asInteger then
                begin
                  PrepareQryTemp('update tagffu set ddtdesliga = ' + QuotedStr(DateToStr(DBD_DDTINICIAL.Date))+
                                 'where nidtagffu = ' + IntToStr(nIdFicha));
                  QryTemp.Close;
                  QryTemp.SQL.Clear;
                end;

            lDelRvg := (DTS_108.DataSet.Modified) and
              (DTS_108.DataSet.FieldByName('cprocautom').asString = 'S');


            DBGenerica(DTS_108,'Conexao',4,1,NIL,false);

            if lDelRvg then
              begin
                QRY_DELRVG.ParamByName('nidtagffu').asInteger := nIdFicha;
                QRY_DELRVG.ParamByName('nidtagmvf').asInteger :=
                DTS_108.DataSet.FieldByName('nidtagmvf').asInteger;
                QRY_DELRVG.ExecSQL;

                QRY_UPDRVG.ParamByName('nidtagffu').asInteger := nIdFicha;
                QRY_UPDRVG.ParamByName('nidtagmvf').asInteger :=
                DTS_108.DataSet.FieldByName('nidtagmvf').asInteger;
                QRY_UPDRVG.ExecSQL;
              end;

            SPR_RVGAUTOM.ParamByName('nidficha').asInteger :=
            nIdFicha;
            SPR_RVGAUTOM.ParamByName('nmes').asInteger :=
            Qry_P.FieldByName('nmespgto').asInteger;
            SPR_RVGAUTOM.ParamByName('nano').asInteger :=
            Qry_P.FieldByName('nanopgto').asInteger;
            SPR_RVGAUTOM.ExecProc;

            SPR_ATUASTATUS.ParamByName('nidficha').asInteger :=
            nIdFicha;
            SPR_ATUASTATUS.ParamByName('nmes').asInteger :=
            Qry_P.FieldByName('nmespgto').asInteger;
            SPR_ATUASTATUS.ParamByName('nano').asInteger :=
            Qry_P.FieldByName('nanopgto').asInteger;
            SPR_ATUASTATUS.ExecProc;

            Conexao.Commit;

            oReg := QRY_108.GetBookmark;
            QRY_108.Refresh;
            QRY_108.GotoBookmark(oReg);
            QRY_108.FreeBookmark(oReg);

            //if lResp then
              Botoes(['Btn_Gravar','Btn_Cancelar'],'FRM_A011RH',false);

          except
            Conexao.Rollback;
          end;
        end;
    end;
end;

procedure TFRM_A011RH.BTN_CANCELARClick(Sender: TObject);
begin
  //cancela o operação
  DBGenerica(DTM_A011RH.DTS_108,'Conexao',3, 0,NIL,false);
  Botoes(['Btn_Cancelar', 'Btn_Gravar'],'FRM_A011RH',false);

end;

procedure TFRM_A011RH.BTN_EXCLUIRClick(Sender: TObject);
begin
  with DTM_A011RH, DMControle do
    begin
      if MessageDlg('Apagar registro?',mtInformation,[mbYes, mbNo],0) = mrYes then
        begin
          Conexao.StartTransaction;
          try
            PrepareQryTemp('delete from tagmvf where nidmvfori = ' +
            DTS_108.DataSet.FieldByName('nidtagmvf').asString);
            QryTemp.Close;
            QryTemp.SQL.Clear;

            if nIdGrpRvg <> 0 then
              if nIdGrpRvg = DTS_096.DataSet.FieldByName('nidtbxgmv').asInteger then
                begin
                  PrepareQryTemp('update tagffu set ddtdesliga = null ' + 
                                 'where nidtagffu = ' + IntToStr(nIdFicha));
                  QryTemp.Close;
                  QryTemp.SQL.Clear;
                end;

            //exclui o movimento
            DBGenerica(DTS_108,'Conexao',5,1,NIL,false);
            if not(DTS_108.DataSet.isEmpty) then
              begin
                DTS_108.DataSet.Edit;
                DTS_108.DataSet.FieldByName('cprocautom').asString := 'N';
                DTS_108.DataSet.Post;
              end;

            SPR_RVGAUTOM.ParamByName('nidficha').asInteger :=
            nIdFicha;
            SPR_RVGAUTOM.ParamByName('nmes').asInteger :=
            Qry_P.FieldByName('nmespgto').asInteger;
            SPR_RVGAUTOM.ParamByName('nano').asInteger :=
            Qry_P.FieldByName('nanopgto').asInteger;
            SPR_RVGAUTOM.ExecProc;

            SPR_ATUASTATUS.ParamByName('nidficha').asInteger :=
            nIdFicha;
            SPR_ATUASTATUS.ParamByName('nmes').asInteger :=
            Qry_P.FieldByName('nmespgto').asInteger;
            SPR_ATUASTATUS.ParamByName('nano').asInteger :=
            Qry_P.FieldByName('nanopgto').asInteger;
            SPR_ATUASTATUS.ExecProc;
            Conexao.Commit;
          except
            Conexao.Rollback;
          end;
        end;
    end;

end;

procedure TFRM_A011RH.BTN_PESQUISARClick(Sender: TObject);
begin
  //chama pesquisa padrão para a tabela de movimentos
  MPLCtrl.Pesquisa(DTM_A011RH.QRY_108,true,'','');

end;

procedure TFRM_A011RH.FormCreate(Sender: TObject);
begin
 nIdGrpRvg := 0;
end;

end.



