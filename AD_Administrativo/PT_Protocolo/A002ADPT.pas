unit A002ADPT;

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
  LMDSimplePanel, jpeg, LMDFill ;

type
  TRequerente = class
    Id: Integer;
    Nome: String;
    CpfCnpj: String;
  end;  
  TFRM_A002ADPT = class(TForm)
    Panel2: TPanel;
    BTN_ALTERAR: TSpeedButton;
    BTN_CANCELAR: TSpeedButton;
    BTN_SAIR: TSpeedButton;
    BTN_GRAVAR: TSpeedButton;
    BTN_INCLUIR: TSpeedButton;
    LMDGroupBox1: TLMDGroupBox;
    Label24: TLabel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    LMDPanelFill1: TLMDPanelFill;
    DBG_REQEFE: TDBGrid;
    DBL_NIDTBXTRQ: TRxDBLookupCombo;
    DED_NQTDFOLHAS: TDBEdit;
    DBM_CDESCRIREQ: TDBMemo;
    DBL_DAT_ID: TRxDBLookupCombo;
    DED_NNROPROT: TDBEdit;
    BTN_EMSREQ: TSpeedButton;
    BTN_EMSETQ: TSpeedButton;
    BTN_LOCALIZAR: TSpeedButton;
    BTN_AVANCAR: TSpeedButton;
    BTN_RETROCEDER: TSpeedButton;
    LBL_ORG: TLabel;
    LBL_CRG: TLabel;
    LBL_ADMISSA: TLabel;
    DED_CDESCRIORG: TDBEdit;
    DED_CDESCRICRG: TDBEdit;
    DED_DDTADMISSA: TDBEdit;
    OSR_DISTRIGGER: TOraScript;
    BTN_DOCREQ: TSpeedButton;
    DED_CSITUAREQ: TDBEdit;
    Label5: TLabel;
    LMDGroupBox3: TLMDGroupBox;
    Label6: TLabel;
    Label7: TLabel;
    BTN_INCLUPART1: TSpeedButton;
    BTN_INCLUPART2: TSpeedButton;
    CBE_CNOMEINTER: TComboEdit;
    CBE_CNOMEREQ: TComboEdit;
    BTN_RETROCEDER1: TSpeedButton;
    BTN_AVANCAR1: TSpeedButton;
    BTN_PRIMEIROREG1: TSpeedButton;
    BTN_ULTIMOREG1: TSpeedButton;
    BTN_EMSGTM: TSpeedButton;
    BTN_ATUGTM: TSpeedButton;
    DBE_DDTPROT: TDBEdit;
    Label8: TLabel;
    BTN_CANCELDOC: TSpeedButton;
    BTN_DETALHE: TSpeedButton;
    QRY_ATUAINTREQ: TOraQuery;
    BTN_ARQVA: TSpeedButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure BTN_LOCALIZARClick(Sender: TObject);
    procedure BTN_AVANCARClick(Sender: TObject);
    procedure BTN_RETROCEDERClick(Sender: TObject);
    procedure BTN_INCLUIRClick(Sender: TObject);
    procedure BTN_ALTERARClick(Sender: TObject);
    procedure BTN_GRAVARClick(Sender: TObject);
    procedure BTN_CANCELARClick(Sender: TObject);
    procedure BTN_SAIRClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DBL_NIDTBXTRQChange(Sender: TObject);
    procedure BTN_EMSREQClick(Sender: TObject);
    procedure BTN_EMSETQClick(Sender: TObject);
    procedure BTN_DOCREQClick(Sender: TObject);
    procedure BTN_PRIMEIROREG1Click(Sender: TObject);
    procedure BTN_RETROCEDER1Click(Sender: TObject);
    procedure BTN_AVANCAR1Click(Sender: TObject);
    procedure BTN_ULTIMOREG1Click(Sender: TObject);
    procedure CBE_CNOMEREQExit(Sender: TObject);
    procedure CBE_CNOMEREQButtonClick(Sender: TObject);
    procedure CBE_CNOMEINTERButtonClick(Sender: TObject);
    procedure CBE_CNOMEREQEnter(Sender: TObject);
    procedure CBE_CNOMEINTEREnter(Sender: TObject);
    procedure CBE_CNOMEREQKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CBE_CNOMEINTERKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure BTN_EMSGTMClick(Sender: TObject);
    procedure BTN_ATUGTMClick(Sender: TObject);
    procedure BTN_CANCELDOCClick(Sender: TObject);
    procedure BTN_DETALHEClick(Sender: TObject);
    procedure BTN_INCLUPART1Click(Sender: TObject);
    procedure BTN_INCLUPART2Click(Sender: TObject);
    procedure DBM_CDESCRIREQKeyPress(Sender: TObject; var Key: Char);
    procedure BTN_ARQVAClick(Sender: TObject);
  private
    { Private declarations }
    FidPessoa: Integer;
    FcCpfCnpj: String;
    FcNomegrl: String;
    FlProtAntigos: Boolean;
    FhabPesq: Boolean;
    function GetIdPessoa: Integer;
    procedure SetIdPessoa(Id: Integer);
    function GetCpfCnpj: String;
    procedure SetCpfCnpj(CpfCnpj: String);
    function GetNome: String;
    procedure SetNome(Nome: String);
    function GetHabPesquisa: Boolean;
    procedure SetHabPesquisa(valor: Boolean);
    procedure VerServidor;
  public
    { Public declarations }
    cIdRequerenteLocate : String;
    cIdInterLocate : String;
    nNroProtLocate : Integer; 
    cIdReq, cIdInter, cNomeReq, cNomeInt: String;
    lFormNorm: Boolean;
    procedure InsertRequerente(cIdReque: String; cNome: String);
    procedure InsertInteressado(cIdIntere: String; cNome: String);
    procedure VerificaProtocolo;
    procedure VerGuiaEmitida;
    property IdPessoa : Integer read GetIdPessoa write SetIdPessoa;
    property CpfCnpj: String read GetCpfCnpj write SetCpfCnpj;
    property Nome: String read GetNome write SetNome;
    property ProtAntigos: Boolean read FlProtAntigos write FlProtAntigos;
    property HabPesquisa: Boolean read GetHabPesquisa write SetHabPesquisa;
  end;

var
  FRM_A002ADPT: TFRM_A002ADPT;

implementation

uses MPLCtrl, UVariaveis, D002ADPT, A010ADPT, CtrlForms, DMCTRL, A003ADPT,
  D003ADPT, A004ADPT, D012ADPT, A012ADPT, Pesquisa, A007ADPT,
  A008ADPT, A013ADPT, D014ADPT, A014ADPT, D008ADPT;



{$R *.DFM}

procedure TFRM_A002ADPT.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 Action:= oControlForms.Saidas(Self,[DTM_A002ADPT],DTM_A002ADPT.DTS_153_1.DataSet);
 FRM_A002ADPT := nil;
 OSR_DISTRIGGER.MacroByName('status').Value := 'ENABLE';
 OSR_DISTRIGGER.Execute;
end;

procedure TFRM_A002ADPT.FormShow(Sender: TObject);
begin
 if not Acesso(nMatricula,'A002ADPT',DTM_A002ADPT) then
    close;
  Botoes(['Btn_Cancelar','Btn_Gravar','Btn_IncluPart1','Btn_IncluPart2'],'FRM_A002ADPT',false);
  with DTM_A002ADPT do
    begin
      if ProtAntigos then
        begin
          DED_NNROPROT.Color := clWhite;
          DED_NNROPROT.ReadOnly := false;
          QRY_153_2.AddWhere('cadreq.nnroprot <= 155405');
          QRY_153_2.Open;
          Caption := ' Lançamento de Requerimento Antigo';
        end
      else
        begin
          DED_NNROPROT.Color := $00D9ECEC;
          DED_NNROPROT.ReadOnly := true;
        end;
      if (cIdRequerenteLocate <> '') and (cIdInterLocate <> '') and
         (nNroProtLocate <> 0)then
        begin
          QRY_153_1.Locate('cidtbxurq;dat_idinter',
            VarArrayOf([cIdRequerenteLocate,cIdInterLocate]),[]);
          QRY_153_2.Locate('nnroprot',nNroProtLocate,[]);
        end;
    end;
  DBL_NIDTBXTRQChange(Sender);
  DTM_A002ADPT.QRY_153_2AfterScroll(DTM_A002ADPT.QRY_153_2);
  VerGuiaEmitida;
  BTN_LOCALIZAR.enabled := habPesquisa;
  if DTM_A002ADPT.QRY_153_1.RecordCount = 0 then
    BTN_CANCELDOC.Enabled := false;
  FRM_A002ADPT.OnShow := nil;
 {é atribuido ao OnShow do Form o valor nil para que o mesmo seja executado apenas uma vez}
 {pelo fato que se outra aplicação for chamada pela tecla F3, e ao retornar da aplicação que foi chamada pela tecla}
 {o evento OnShow deste form não acontecerá, ou seja não será executado, para permanecer o mesmo status da aplicação}
 {quando o F3 foi chamado}

end;

procedure TFRM_A002ADPT.BTN_LOCALIZARClick(Sender: TObject);
begin
  if FRM_A013ADPT = nil then
    oControlForms.AtivaForm('FRM_A013ADPT',shModal,Nil)
  else
    FRM_A013ADPT.ShowModal;
end;

procedure TFRM_A002ADPT.BTN_AVANCARClick(Sender: TObject);
begin
   DBGenerica(DTM_A002ADPT.DTS_153_1,'Conexao',0,3,Nil,false);
   DTM_A002ADPT.QRY_155.Locate('nidtbxtrq',DBL_NIDTBXTRQ.KeyValue,[]);
   DBL_NIDTBXTRQChange(Sender);
   VerGuiaEmitida;
   DTM_A002ADPT.QRY_153_2AfterScroll(DTM_A002ADPT.QRY_153_2);
end;

procedure TFRM_A002ADPT.BTN_RETROCEDERClick(Sender: TObject);
begin
 DBGenerica(DTM_A002ADPT.DTS_153_1,'Conexao',0,2,Nil,false);
 DTM_A002ADPT.QRY_155.Locate('nidtbxtrq',DBL_NIDTBXTRQ.KeyValue,[]);
 DBL_NIDTBXTRQChange(Sender);
 VerGuiaEmitida;
 DTM_A002ADPT.QRY_153_2AfterScroll(DTM_A002ADPT.QRY_153_2);
end;

procedure TFRM_A002ADPT.BTN_INCLUIRClick(Sender: TObject);
begin
  with DTM_A002ADPT do
    begin
      cIdInter :=
      QRY_153_1.FieldByName('dat_idinter').asString;
      cIdReq :=
      QRY_153_1.FieldByName('cidtbxurq').asString;
      DBGenerica(DTS_153_2,'Conexao',1,0,DBG_REQEFE,false);

      Botoes(['Btn_Cancelar','Btn_Sair','Btn_Gravar','Btn_IncluPart1','Btn_IncluPart2'],'FRM_A002ADPT',true);
      DED_CDESCRICRG.Enabled := false;
      DED_CDESCRIORG.Enabled := DED_CDESCRICRG.Enabled;
      DED_DDTADMISSA.Enabled := DED_CDESCRICRG.Enabled;
      LBL_ORG.Enabled := DED_CDESCRICRG.Enabled;
      LBL_CRG.Enabled := DED_CDESCRICRG.Enabled;
      LBL_ADMISSA.Enabled := DED_CDESCRICRG.Enabled;
      CBE_CNOMEREQ.SetFocus;
      CBE_CNOMEREQ.SelectAll;
      if QRY_153_2.RecordCount > 0 then
        begin
          CBE_CNOMEREQExit(CBE_CNOMEREQ);
          CBE_CNOMEREQExit(CBE_CNOMEINTER);
        end;
    end;
end;

procedure TFRM_A002ADPT.BTN_ALTERARClick(Sender: TObject);
begin
  Botoes(['Btn_Cancelar','Btn_Gravar','Btn_Sair','Btn_IncluPart1','Btn_IncluPart2'],'FRM_A002ADPT',true);
  DBGenerica(DTM_A002ADPT.DTS_153_2,'Conexao',2,0,DBG_REQEFE,false);
  cIdInter :=
  DTM_A002ADPT.QRY_153_1.FieldByName('dat_idinter').asString;
  cIdReq :=
  DTM_A002ADPT.QRY_153_1.FieldByName('cidtbxurq').asString;

end;

procedure TFRM_A002ADPT.BTN_GRAVARClick(Sender: TObject);
  var
    nIdReq : Integer;
    Estado : TDataSetState;
    lAlterRerq : Boolean;
begin
  VerificaProtocolo;
//  if CBE_CNOMEREQ.Focused then
//    CBE_CNOMEREQExit(CBE_CNOMEREQ);
//  if CBE_CNOMEINTER.Focused then
//    CBE_CNOMEREQExit(CBE_CNOMEINTER);
  if LiberadoGravacao(FRM_A002ADPT,DTM_A002ADPT.DTS_153_2) then
    if MessageDlg('Deseja salvar ?',mtConfirmation,[mbYes,mbNo],0) = mrYes then
      begin
        with DTM_A002ADPT, DMControle do
          begin
            //se for processo antigo
            if ProtAntigos then
              //desabilida a geração de sequencia
              OSR_DISTRIGGER.MacroByName('status').Value := 'DISABLE'
            else
              //habilida a geração de sequencia
              OSR_DISTRIGGER.MacroByName('status').Value := 'ENABLE';

            //executa a alteração na trigger
            OSR_DISTRIGGER.Execute;

            //retira o master detalhe
            QRY_153.DisableControls;
            QRY_153.MasterSource := nil;
            QRY_158.DisableControls;
            QRY_158.MasterSource := nil;
            try
              //abre transação com o banco
              Conexao.StartTransaction;
              try
                //se o requerimento estiver em estado de inserção
                if QRY_153_2.State = dsInsert then
                  //pega a data/hora atual
                  QRY_153_2.FieldByName('ddtprot').asDateTime := Now;
                //se o destino inicial for protocolo
                if DBL_DAT_ID.Text = 'PROTOCOLO' then
                  //estado de cancelado
                  QRY_153_2.FieldByName('csituareq').asString := 'CANCELADO';

                //pega o status atual da qry
                Estado := DTS_153_2.DataSet.State;
                //pega a id do requerimento
                nIdReq := DTS_153_2.DataSet.FieldByName('nidcadreq').asInteger;
                //grava na tabela de requerimento
                DBGenerica(DTS_153_2,'Conexao',4,1,DBG_REQEFE,false);
                lAlterRerq :=
                (cIdReq <> QRY_153_1.FieldByName('cidtbxurq').asString) or
                (cIdInter <> QRY_153_1.FieldByName('dat_idinter').asString);
                if DED_CDESCRICRG.Text <> '' then
                  begin
                    QRY_153.First;
                    QRY_153.Edit;
                    QRY_153.FieldByName('cdescriorg').asString :=
                    QRY_153_2.FieldByName('cdescriorg').asString;
                    QRY_153.FieldByName('cdescricrg').asString :=
                    QRY_153_2.FieldByName('cdescricrg').asString;
                    QRY_153.FieldByName('ddtadmissa').AsDateTime :=
                    QRY_153_2.FieldByName('ddtadmissa').AsDateTime;
                    QRY_153.Post;
                  end;
                {if Estado = dsInsert then
                  begin
                    //inseri um requerimento para o requerente
                    QRY_153.Append;
                    QRY_158.Append;
                  end
                else
                  begin
                    QRY_153.Edit;
                    QRY_158.Edit;
                  end;

                //QRY_153.FieldByName('nidcadgrl').asString :=
                //cIdReq;
                QRY_153.FieldByName('cidreq').asString :=
                cIdReq;
                QRY_153.FieldByName('cdescriorg').asString :=
                QRY_153_2.FieldByName('cdescriorg').asString;
                QRY_153.FieldByName('cdescricrg').asString :=
                QRY_153_2.FieldByName('cdescricrg').asString;
                QRY_153.FieldByName('ddtadmissa').AsDateTime :=
                QRY_153_2.FieldByName('ddtadmissa').AsDateTime;
                QRY_153.Post;
                //inseri um requerimento para o interessado

                QRY_158.FieldByName('cidreq').asString :=
                cIdInter;
                QRY_158.Post;}

                //se foi inserido um requerimento
                if Estado = dsInsert then
                  begin
                    //seleciona a id do novo requerimento
                    PrepareQryTemp('select seq_cadreq.currval as nidcadreq from dual');
                    //QRY_153.Locate('nidcadgrl',IdPessoa,[]);
                    //GravaKeyPai(DTS_153,DTS_153_1.Dataset.FieldByName('nidcadreq'));
                    //atribui o requerimento para o requerente
                    GravaKeyPai(DTS_153,QRYTEMP.FieldByName('nidcadreq'));
                    //atribui o requerimento para o interessado
                    GravaKeyPai(DTS_158,QRYTEMP.FieldByName('nidcadreq'));
                    //indica o requerente e o interessado principal do
                    //requerimento
                    QRY_ATUAINTREQ.ParamByName('nidreq').asInteger :=
                    QRYTEMP.FieldByName('nidcadreq').asInteger;
                    QRY_ATUAINTREQ.ExecSQL;
                    QRY_153_2.DisableControls;
                    //atualiza a qry de requerimento
                    QRY_153_2.Refresh;
                    //localiza o requerimento
                    QRY_153_2.Locate('nidcadreq',QRYTEMP.FieldByName('nidcadreq').asInteger,[]);
                    QRY_153_2.EnableControls;
                  end
                else
                  begin
                    //localiza o requerimento
                    DTS_153_2.DataSet.Locate('nidcadreq',nIdReq,[]);
                    //atribui o requerimento para o requerente
                    GravaKeyPai(DTS_153,QRY_153_2.FieldByName('nidcadreq'));
                    //atribui o requerimento para o interessado
                    GravaKeyPai(DTS_158,QRY_153_2.FieldByName('nidcadreq'));
                    //indica o requerente e o interessado principal do
                    //requerimento
                    QRY_ATUAINTREQ.ParamByName('nidreq').asInteger := nIdReq;
                    QRY_ATUAINTREQ.ExecSQL;
                  end;
                //altera o status dos botões para habilitar uma nova inserção/alteração
                Botoes(['Btn_Gravar','Btn_Cancelar','Btn_IncluPart1','Btn_IncluPart2'],'FRM_A002ADPT',false);
                BTN_LOCALIZAR.enabled := habPesquisa;
                //comita as informações
                Conexao.Commit;
                if lAlterRerq then
                  begin
                    QRY_153_2.DisableControls;
                    QRY_153_1.Refresh;
                    QRY_153_1.Locate('cidtbxurq;dat_idinter',VarArrayOf([cIdReq,cIdInter]),[]);
                    if Estado = dsInsert then
                      //localiza o requerimento
                      QRY_153_2.Locate('nidcadreq',QRYTEMP.FieldByName('nidcadreq').asInteger,[])
                    else
                       //localiza o requerimento
                      QRY_153_2.Locate('nidcadreq',nIdReq,[]);
                    QRY_153_2.EnableControls;
                  end;
                //atualiza
                QRY_153.Refresh;
              except
                On E: Exception do
                 begin
                   //se houve algum erro avisa ao usuario
                   MessageDlg('Erro:'+E.Message,mtError,[mbOk],0);
                   //desfaz as alterações no banco
                   Conexao.Rollback;
                 end;
              end;
            finally
              //retorna o master detalhe
              QRY_153.MasterSource := DTS_153_2;
              QRY_153.EnableControls;
              QRY_158.MasterSource := DTS_153_2;
              QRY_158.EnableControls;
              //fecha qry temporaria
              QryTemp.Close;
              QryTemp.Sql.Clear;
              //habilita a execução da trigger da sequencia
              OSR_DISTRIGGER.MacroByName('status').Value := 'ENABLE';
              OSR_DISTRIGGER.Execute;
            end;
          end;
      end;

end;

procedure TFRM_A002ADPT.BTN_CANCELARClick(Sender: TObject);
begin
  DBGenerica(DTM_A002ADPT.DTS_153_2,'Conexao',3, 0,DBG_REQEFE,false);
  Botoes(['Btn_Cancelar', 'Btn_Gravar','Btn_IncluPart1','Btn_IncluPart2'],'FRM_A002ADPT',false);
  BTN_LOCALIZAR.enabled := habPesquisa;
  DTM_A002ADPT.DTS_153.DataSet.Refresh;
  DBL_NIDTBXTRQChange(Sender);
  VerGuiaEmitida;
//  DTM_A002ADPT.QRY_153_2AfterRefresh(DTM_A002ADPT.QRY_153_2);
  DTM_A002ADPT.QRY_153_1AfterScroll(DTM_A002ADPT.QRY_153_1);
  DTM_A002ADPT.QRY_153_2AfterScroll(DTM_A002ADPT.QRY_153_2);
end;

function TFRM_A002ADPT.GetIdPessoa: Integer;
begin
  Result := FIdPessoa;
end;

procedure TFRM_A002ADPT.SetIdPessoa(Id: Integer);
begin
  FIdPessoa := Id;
end;

procedure TFRM_A002ADPT.BTN_SAIRClick(Sender: TObject);
begin
  if (FRM_A013ADPT <> nil) and (habPesquisa) then
    FRM_A013ADPT.Btn_Sair.Click;
  close;
end;

procedure TFRM_A002ADPT.InsertRequerente(cIdReque: String; cNome: String);
begin
  with DTM_A002ADPT do
    begin
      if not QRY_153.locate('cidtbxurq',cIdReque,[]) then
        begin
          QRY_153.First;
          QRY_153.Insert;
          QRY_153.FieldByName('cidtbxurq').asString := cIdReque;
          //QRY_153.FieldByName('cnome').asString := cNome;
          QRY_153.Post;
        end;
    end;
end;

function TFRM_A002ADPT.GetCpfCnpj: String;
begin
  Result := FcCpfCnpj;
end;

function TFRM_A002ADPT.GetNome: String;
begin
  Result := FcNomegrl;
end;

procedure TFRM_A002ADPT.SetCpfCnpj(CpfCnpj: String);
begin
  FcCpfCnpj := CpfCnpj;
end;

procedure TFRM_A002ADPT.SetNome(Nome: String);
begin
  FcNomegrl := Nome;
end;

procedure TFRM_A002ADPT.VerServidor;
begin
  with DTM_A002ADPT do
    begin
      QRY_029.Close;
      QRY_029.ParamByName('nidcadgrl').asInteger := IdPessoa;
      QRY_029.Open;
      if QRY_029.RecordCount > 0 then
        begin
          QRY_153_2.FieldByName('cdescricrg').asString := QRY_029.FieldByName('cdescricrg').asString;
          QRY_153_2.FieldByName('cdescriorg').asString := QRY_029.FieldByName('cdescriorg').asString;
          QRY_153_2.FieldByName('ddtadmissa').AsDateTime := QRY_029.FieldByName('ddtadmissa').AsDateTime;
        end;
      QRY_029.Close;
    end;
end;

procedure TFRM_A002ADPT.FormCreate(Sender: TObject);
begin
  cIdRequerenteLocate := '';
  cIdInterLocate := '';
  nNroProtLocate := 0;
  habPesquisa := true;
end;

procedure TFRM_A002ADPT.DBL_NIDTBXTRQChange(Sender: TObject);
begin
  with DTM_A002ADPT do
    begin
      BTN_DOCREQ.Enabled := DBL_NIDTBXTRQ.Text <> '';
      DED_CDESCRICRG.Enabled := QRY_155.FieldByName('creferenrh').asString = 'S';
      DED_CDESCRIORG.Enabled := DED_CDESCRICRG.Enabled;
      DED_DDTADMISSA.Enabled := DED_CDESCRICRG.Enabled;
      LBL_ORG.Enabled := DED_CDESCRICRG.Enabled;
      LBL_CRG.Enabled := DED_CDESCRICRG.Enabled;
      LBL_ADMISSA.Enabled := DED_CDESCRICRG.Enabled;
      if DTS_153_1.DataSet.State in [dsEdit,dsInsert] then
        if DED_CDESCRICRG.Enabled then
          VerServidor
        else
          begin
            QRY_153_2.FieldByName('cdescricrg').asString := '';
            QRY_153_2.FieldByName('cdescriorg').asString := '';
            QRY_153_2.FieldByName('ddtadmissa').value := null;
          end;

    end;

end;

procedure TFRM_A002ADPT.VerGuiaEmitida;
begin
  ///if DTM_A002ADPT.DTS_153_1.DataSet.RecordCount > 0 then
  //  begin
//      BTN_INCLUIR.Enabled :=
//      DTM_A002ADPT.DTS_153_1.DataSet.FieldByName('cemigtm').asString = 'N';
      BTN_ALTERAR.Enabled :=
      (DTM_A002ADPT.DTS_153_2.DataSet.FieldByName('cemigtm').asString = 'N') and
      (DTM_A002ADPT.DTS_153_2.DataSet.FieldByName('csituareq').asString <> 'CANCELADO');
  //  end;

end;

procedure TFRM_A002ADPT.BTN_EMSREQClick(Sender: TObject);
begin
  Application.CreateForm(TDTM_A003ADPT,DTM_A003ADPT);
  Application.CreateForm(TFRM_A003ADPT,FRM_A003ADPT);
  FRM_A003ADPT.EDT_CNOME.Text :=
  DTM_A002ADPT.QRY_153_1.FieldByName('cnome').asString;
  oControlForms.AtivaForm('FRM_A003ADPT',shModal,Nil);
end;

procedure TFRM_A002ADPT.BTN_EMSETQClick(Sender: TObject);
begin
  Application.CreateForm(TFRM_A004ADPT,FRM_A004ADPT);
  //FRM_A004ADPT.cCpfCnpj := CpfCnpj;
  FRM_A004ADPT.EDT_CNOME.Text := CBE_CNOMEREQ.Text;
  FRM_A004ADPT.CBB_SELECIONA.ItemIndex := 1;
  oControlForms.AtivaForm('FRM_A004ADPT',shModal,nil);
end;

procedure TFRM_A002ADPT.VerificaProtocolo;
begin
  with DTM_A002ADPT, DMControle do
    begin
      if ProtAntigos then
        if QRY_153_2.FieldByName('nnroprot').asInteger = 0 then
          begin
            MessageDlg('Número de protocolo deve ser informado !',mtInformation,[mbOk],0);
            DED_NNROPROT.SetFocus;
            Abort;
          end
        else
          begin
            PrepareQryTemp('select nidcadreq from cadreq where nnroprot = ' +
            QRY_153_2.FieldByName('nnroprot').asString + ' and nidcadreq <> ' +
            QRY_153_2.FieldByName('nidcadreq').asString);
            if not(QryTemp.IsEmpty) then
              begin
                MessageDlg('Número de protocolo já cadastrado !',mtInformation,[mbOk],0);
                DED_NNROPROT.SetFocus;
                QryTemp.Close;
                QryTemp.SQL.Clear;
                Abort;
              end
            else
              begin
                QryTemp.Close;
                QryTemp.SQL.Clear;
           //     QRY_153_1.FieldByName('cemitido').asString := 'S';
           //     QRY_153_1.FieldByName('cemigtm').asString := 'S';
           //     QRY_153_1.FieldByName('cemietq').asString := 'S';
              end;
          end;
    end;
end;

procedure TFRM_A002ADPT.BTN_DOCREQClick(Sender: TObject);
begin
  Application.CreateForm(TDTM_A012ADPT, DTM_A012ADPT);
  Application.CreateForm(TFRM_A012ADPT,FRM_A012ADPT);
  FRM_A012ADPT.nIdTipReq := DBL_NIDTBXTRQ.KeyValue;
  oControlForms.AtivaForm('FRM_A012ADPT',shModal,nil);
end;

procedure TFRM_A002ADPT.BTN_PRIMEIROREG1Click(Sender: TObject);
begin
  DBG_REQEFE.DataSource.DataSet.First;
end;

procedure TFRM_A002ADPT.BTN_RETROCEDER1Click(Sender: TObject);
begin
  DBG_REQEFE.DataSource.DataSet.Prior;
end;

procedure TFRM_A002ADPT.BTN_AVANCAR1Click(Sender: TObject);
begin
  DBG_REQEFE.DataSource.DataSet.Next;
end;

procedure TFRM_A002ADPT.BTN_ULTIMOREG1Click(Sender: TObject);
begin
  DBG_REQEFE.DataSource.DataSet.Last;
end;

procedure TFRM_A002ADPT.CBE_CNOMEREQExit(Sender: TObject);
begin
  with DTM_A002ADPT, DMControle do
    begin
      if (QRY_153_2.State in [dsInsert,dsEdit]) then
        begin
          if FRM_PESQUISA = nil then
            begin
              PrepareQryTemp('select cidtbxurq from tbxurq where cnome = ' + QuotedStr(TComboEdit(Sender).Text));
              if QryTemp.IsEmpty then
                begin
                  MessageDlg('Requerente não encontrado!',mtInformation,[mbOk],0);
                  QryTemp.Close;
                  QryTemp.SQL.Clear;
                  TComboEdit(Sender).SetFocus;
                  Abort;
                end
              else
                if Sender = CBE_CNOMEREQ then
                  begin
                    if cIdReq = cIdInter then
                      begin
                        cIdInter := QryTemp.FieldByName('cidtbxurq').asString;
                        CBE_CNOMEINTER.Text := CBE_CNOMEREQ.Text;
                        if QRY_158.RecordCount > 0 then
                          begin
                            QRY_158.First;
                            QRY_158.Delete;
                          end;
                        InsertInteressado(cIdInter,CBE_CNOMEINTER.Text);
                      end;
                    cIdReq := QryTemp.FieldByName('cidtbxurq').asString;
                    if QRY_153.RecordCount > 0 then
                      begin
                        QRY_153.First;
                        QRY_153.Delete;
                      end;
                    InsertRequerente(cIdReq,CBE_CNOMEREQ.Text);
                  end
                else
                  begin
                    cIdInter := QryTemp.FieldByName('cidtbxurq').asString;
                    if QRY_158.RecordCount > 0 then
                      begin
                        QRY_158.First;
                        QRY_158.Delete;
                      end;
                    InsertInteressado(cIdInter,CBE_CNOMEINTER.Text);
                  end;
            end
          else
            begin
              QRY_161_1.ParamByName('cidtbxurq').asString :=
              TComboEdit(Sender).Text;
              QRY_161_1.ExecSql;
              TComboEdit(Sender).Text :=
              QRY_161_1.FieldByName('cnome').asString;
              if Sender = CBE_CNOMEREQ then
                begin
                  if cIdReq = cIdInter then
                    begin
                      cIdInter := QRY_161_1.FieldByName('cidtbxurq').asString;
                      CBE_CNOMEINTER.Text := CBE_CNOMEREQ.Text;
                      if QRY_158.RecordCount > 0 then
                        begin
                          QRY_158.First;
                          QRY_158.Delete;
                        end;
                      InsertInteressado(cIdInter,CBE_CNOMEINTER.Text);
                    end;
                  cIdReq := QRY_161_1.FieldByName('cidtbxurq').asString;
                  if QRY_153.RecordCount > 0 then
                    begin
                      QRY_153.First;
                      QRY_153.Delete;
                    end;
                  InsertRequerente(cIdReq,CBE_CNOMEREQ.Text);
                end
              else
                begin
                  cIdInter := QRY_161_1.FieldByName('cidtbxurq').asString;
                  if QRY_158.RecordCount > 0 then
                    begin
                      QRY_158.First;
                      QRY_158.Delete;
                    end;
                  InsertInteressado(cIdInter,CBE_CNOMEINTER.Text);
                end;

            end;
        end;
    end;
end;

procedure TFRM_A002ADPT.CBE_CNOMEREQButtonClick(Sender: TObject);
begin
  VerTeclas(VK_F2);
end;

procedure TFRM_A002ADPT.CBE_CNOMEINTERButtonClick(Sender: TObject);
begin
  VerTeclas(VK_F2);
end;

procedure TFRM_A002ADPT.CBE_CNOMEREQEnter(Sender: TObject);
begin
  cNomeReq := CBE_CNOMEREQ.Text;
end;

procedure TFRM_A002ADPT.CBE_CNOMEINTEREnter(Sender: TObject);
begin
  cNomeInt := CBE_CNOMEINTER.Text;
end;

procedure TFRM_A002ADPT.CBE_CNOMEREQKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_ESCAPE then
    if DTM_A002ADPT.QRY_153_2.State in [dsInsert,dsEdit] then
      CBE_CNOMEREQ.Text := cNomeReq;
end;

procedure TFRM_A002ADPT.CBE_CNOMEINTERKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  if Key = VK_ESCAPE then
    if DTM_A002ADPT.QRY_153_2.State in [dsInsert,dsEdit] then
      CBE_CNOMEINTER.Text := cNomeInt;

end;

procedure TFRM_A002ADPT.BTN_EMSGTMClick(Sender: TObject);
begin
  Application.CreateForm(TDTM_A014ADPT,DTM_A014ADPT);
  Application.CreateForm(TFRM_A014ADPT,FRM_A014ADPT);
  FRM_A014ADPT.lRequer := true;
  oControlForms.AtivaForm('FRM_A014ADPT',shModal,Nil);
end;

procedure TFRM_A002ADPT.BTN_ATUGTMClick(Sender: TObject);
begin
  oControlForms.AtivaForm('FRM_A006ADPT',shModal,Nil);
end;

procedure TFRM_A002ADPT.BTN_CANCELDOCClick(Sender: TObject);
  var
    cMens, cStatus: String;
begin
  with DTM_A002ADPT do
    begin
      if QRY_153_2.FieldByName('csituareq').asString = 'EM PREPARACAO' then
        begin
          cMens := 'Deseja cancelar o protocolo atual?';
          cStatus := 'CANCELADO';
        end
      else
        begin
          cMens := 'Deseja colocar o protocolo em estado de preparação?';
          cStatus := 'EM PREPARACAO';
        end;
      if MessageDlg(cMens,mtConfirmation,[mbYes,mbNo],0) = mrYes then
        begin
          QRY_153_2.Edit;
          QRY_153_2.FieldByName('csituareq').asString := cStatus;
          if cStatus = 'CANCELADO' then
            begin
              QRY_153_2.FieldByName('cemitido').asString := 'S';
              QRY_153_2.FieldByName('cemigtm').asString := 'S';
              QRY_153_2.FieldByName('cemietq').asString := 'S';
            end
          else
            begin
              QRY_153_2.FieldByName('cemitido').asString := 'N';
              QRY_153_2.FieldByName('cemigtm').asString := 'N';
              QRY_153_2.FieldByName('cemietq').asString := 'N';
            end;
          QRY_153_2.Post;
        end;
    end;
end;

procedure TFRM_A002ADPT.BTN_DETALHEClick(Sender: TObject);
begin
  Application.CreateForm(TDTM_A008ADPT,DTM_A008ADPT);
  Application.CreateForm(TFRM_A008ADPT,FRM_A008ADPT);
  DTM_A008ADPT.DTS_CABECLH.DataSet :=
  DTM_A002ADPT.QRY_153_2;
  oControlForms.AtivaForm('FRM_A008ADPT',shModal,Nil);
end;

procedure TFRM_A002ADPT.InsertInteressado(cIdIntere, cNome: String);
begin
  with DTM_A002ADPT do
    begin
      if not QRY_158.locate('cidtbxurq',cIdIntere,[]) then
        begin
          QRY_158.First;
          QRY_158.Insert;
          QRY_158.FieldByName('cidtbxurq').asString := cIdIntere;
          //QRY_158.FieldByName('cnome').asString := cNome;
          QRY_158.Post;
        end;
    end;

end;

procedure TFRM_A002ADPT.BTN_INCLUPART1Click(Sender: TObject);
begin
  Application.CreateForm(TFRM_A010ADPT,FRM_A010ADPT);
  FRM_A010ADPT.lRequerente := true;
  oControlForms.AtivaForm('FRM_A010ADPT',shModal,nil);
end;

procedure TFRM_A002ADPT.BTN_INCLUPART2Click(Sender: TObject);
begin
  Application.CreateForm(TFRM_A010ADPT,FRM_A010ADPT);
  FRM_A010ADPT.lRequerente := false;
  oControlForms.AtivaForm('FRM_A010ADPT',shModal,nil);
end;

procedure TFRM_A002ADPT.DBM_CDESCRIREQKeyPress(Sender: TObject;
  var Key: Char);
begin
  Key:= Upcase(Key);
  oMetodos.ValidaEntrada(Sender,Key);
end;

procedure TFRM_A002ADPT.BTN_ARQVAClick(Sender: TObject);
begin
  oControlForms.AtivaForm('FRM_A018ADPT',shModal,Nil);
end;

function TFRM_A002ADPT.GetHabPesquisa: Boolean;
begin
  result:= FhabPesq;
end;

procedure TFRM_A002ADPT.SetHabPesquisa(valor: Boolean);
begin
  FhabPesq := valor;
end;

end.




