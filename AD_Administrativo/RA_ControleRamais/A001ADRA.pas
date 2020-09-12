unit A001ADRA;

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
  OraScript ;

type
  TFRM_A001ADRA = class(TForm)
    Panel2: TPanel;
    Btn_Incluir: TSpeedButton;
    Btn_Gravar: TSpeedButton;
    Btn_Localizar: TSpeedButton;
    Btn_Excluir: TSpeedButton;
    BTN_SAIR: TSpeedButton;
    LMDGroupBox1: TLMDGroupBox;
    Btn_Avancar: TSpeedButton;
    Btn_Retroceder: TSpeedButton;
    Btn_Cancelar: TSpeedButton;
    Btn_Imprimir: TSpeedButton;
    Btn_Demons: TSpeedButton;
    Label6: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label8: TLabel;
    Label3: TLabel;
    Label2: TLabel;
    Label1: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label7: TLabel;
    DED_NPREFSETOR: TDBEdit;
    DED_NNUMRAMAL: TDBEdit;
    DLC_CSTATRAMAL: TRxDBComboBox;
    DED_CCONTRARAM: TDBEdit;
    DLC_CDIVURAMAL: TRxDBComboBox;
    DED_CCONTRAMAL: TDBEdit;
    DLC_NIDCADSET: TRxDBLookupCombo;
    DLC_NIDCADORG: TRxDBLookupCombo;
    DED_LKP_CENDSETOR: TDBEdit;
    DED_LKP_CBAIRROSET: TDBEdit;
    DED_CMAILRAMAL: TDBEdit;
    LMDGroupBox3: TLMDGroupBox;
    GRD_RAMAIS: TDBGrid;
    LMDPanelFill4: TLMDPanelFill;
    Lblativo: TLabel;
    LMDPanelFill5: TLMDPanelFill;
    Lblinativo: TLabel;
    LMDPanelFill8: TLMDPanelFill;
    Lbldivul: TLabel;
    LMDPanelFill6: TLMDPanelFill;
    Lbltotal: TLabel;
    Btn_Alterar: TSpeedButton;
    procedure BTN_SAIRClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure DLC_NIDCADORGChange(Sender: TObject);
    procedure DLC_NIDCADORGEnter(Sender: TObject);
    procedure DLC_CSTATRAMALChange(Sender: TObject);
    procedure GRD_RAMAISTitleClick(Column: TColumn);
    procedure Btn_LocalizarClick(Sender: TObject);
    procedure Btn_IncluirClick(Sender: TObject);
    procedure Btn_AlterarClick(Sender: TObject);
    procedure Btn_GravarClick(Sender: TObject);
    procedure Btn_CancelarClick(Sender: TObject);
    procedure Btn_ExcluirClick(Sender: TObject);
    procedure Btn_AvancarClick(Sender: TObject);
    procedure Btn_RetrocederClick(Sender: TObject);
    procedure Btn_ImprimirClick(Sender: TObject);
    procedure Btn_DemonsClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    cValor : String;
  end;

var
  FRM_A001ADRA: TFRM_A001ADRA;

implementation

uses MPLCtrl, D001ADRA, A002ADRA, MPLLib, UVariaveis;



{$R *.DFM}

procedure TFRM_A001ADRA.BTN_SAIRClick(Sender: TObject);
begin
  Close;
end;

procedure TFRM_A001ADRA.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := oControlForms.Saidas(Sender,[DTM_A001ADRA],DTM_A001ADRA.DTS_001.DataSet);
end;

procedure TFRM_A001ADRA.FormShow(Sender: TObject);

begin
  Acesso(nMatricula,'A001ADRA',DTM_A001ADRA);{trata acesso do usuário}
  Botoes(['Btn_Cancelar','Btn_Gravar'],'FRM_A001ADRA',False);{Trata os botões da aplicação}
  with DTM_A001ADRA do
    begin
      if QRY_001.SQL[1] <> ' ' then
        begin
          QryInativa.SQL.Add(' and '+QRY_001.SQL[1]);
          QryInativa.ExecSQL;
        end;
      Lblativo.Caption := StrZero(QryAtiva.RecordCount,4);
      Lblinativo.Caption := StrZero(QryInativa.RecordCount,4);
      Lbldivul.Caption := StrZero(QryDivulgado.RecordCount,4);
      Lbltotal.caption:=StrZero(StrToInt(Lblativo.Caption)+ StrToInt(Lblinativo.Caption),4);

      if DTM_A001ADRA.DTS_002.DataSet.RecordCount < 10 then
        DLC_NIDCADORG.DropDownCount := DTS_002.DataSet.RecordCount;
      if DTM_A001ADRA.DTS_004.DataSet.RecordCount < 10 then
        DLC_NIDCADSET.DropDownCount := DTS_004.DataSet.RecordCount;
    end;
  FRM_A001ADRA.OnShow := nil;
 {é atribuido ao OnShow do Form o valor nil para que o mesmo seja executado apenas uma vez}
 {pelo fato que se outra aplicação for chamada pela tecla F3, e ao retornar da aplicação que foi chamada pela tecla}
 {o evento OnShow deste form não acontecerá, ou seja não será executado, para permanecer o mesmo status da aplicação}
 {quando o F3 foi chamado}
end;

procedure TFRM_A001ADRA.DLC_NIDCADORGChange(Sender: TObject);
begin
  if DTM_A001ADRA.DTS_001.DataSet.State in [dsEdit,dsInsert] then
    if DTM_A001ADRA.DTS_004.DataSet.RecordCount < 10 then
      DLC_NIDCADSET.DropDownCount := DTM_A001ADRA.DTS_004.DataSet.RecordCount;
end;

procedure TFRM_A001ADRA.DLC_NIDCADORGEnter(Sender: TObject);
begin
  cValor := DLC_NIDCADORG.Value;
end;

procedure TFRM_A001ADRA.DLC_CSTATRAMALChange(Sender: TObject);
begin
  if DTM_A001ADRA.DTS_001.DataSet.State in [dsInsert,dsEdit] then
    if DLC_CSTATRAMAL.Text = 'INATIVO' then
      begin
        DED_CCONTRAMAL.Enabled := false;
        DED_CCONTRARAM.Enabled := false;
        DED_CMAILRAMAL.Enabled := false;
        DLC_NIDCADORG.Enabled := false;
        DLC_CDIVURAMAL.Enabled := false;
        DLC_NIDCADSET.Enabled := false;
      end
    else
      begin
        DED_CCONTRAMAL.Enabled := true;
        DED_CCONTRARAM.Enabled := true;
        DED_CMAILRAMAL.Enabled := true;
        DLC_NIDCADORG.Enabled := true;
        DLC_CDIVURAMAL.Enabled := true;
        DLC_NIDCADSET.Enabled := true;
      end;
end;

procedure TFRM_A001ADRA.GRD_RAMAISTitleClick(Column: TColumn);
begin
   if (Column.FieldName = 'NNUMRAMAL') or (Column.FieldName = 'CCONTRAMAL')then
    begin
      DTM_A001ADRA.QRY_001.SQL[3]:= Column.FieldName;
      DTM_A001ADRA.QRY_001.ExecSQL;
    end;
end;

procedure TFRM_A001ADRA.Btn_LocalizarClick(Sender: TObject);
begin
  Pesquisa(DTM_A001ADRA.Qry_001,true,'','');
end;

procedure TFRM_A001ADRA.Btn_IncluirClick(Sender: TObject);
begin
  DTM_A001ADRA.DTS_002.DataSet.Refresh;
  DED_NNUMRAMAL.Setfocus;
  DBGenerica(DTM_A001ADRA.Dts_001,'Conexao',1,0,GRD_RAMAIS);
  Botoes(['Btn_Cancelar','Btn_Gravar','Btn_Sair'],'FRM_A001ADRA',true);
  DTM_A001ADRA.DTS_001.DataSet.FieldByName('NIDCADRAM').value:=00000;
  DLC_NIDCADSET.LookupDisplay := '';
  DLC_NIDCADSET.LookupSource := DTM_A001ADRA.DTS_004;
  DLC_NIDCADSET.LookupDisplay := 'LKP_CDESCSETOR';
  DLC_NIDCADSET.ReadOnly := false;
  DLC_NIDCADSET.Refresh;
  DLC_NIDCADORG.ReadOnly := false;
  DLC_NIDCADORG.Refresh;
end;

procedure TFRM_A001ADRA.Btn_AlterarClick(Sender: TObject);
begin
  Botoes(['Btn_Cancelar','Btn_Gravar', 'Btn_Sair'],'FRM_A001ADRA',true);
  DBGenerica(DTM_A001ADRA.Dts_001,'Conexao',2,0,GRD_RAMAIS);
  DLC_NIDCADSET.LookupDisplay := '';
  DLC_NIDCADSET.LookupSource := DTM_A001ADRA.DTS_004;
  DLC_NIDCADSET.LookupDisplay := 'LKP_CDESCSETOR';
  DLC_NIDCADSET.ReadOnly := false;
  DLC_NIDCADSET.Refresh;
  DLC_NIDCADORG.ReadOnly := false;
  DLC_NIDCADORG.Refresh;
  if DLC_CSTATRAMAL.Text = 'INATIVO' then
    begin
      DED_CCONTRAMAL.Enabled := false;
      DED_CCONTRARAM.Enabled := false;
      DED_CMAILRAMAL.Enabled := false;
      DLC_NIDCADORG.Enabled := false;
      DLC_CDIVURAMAL.Enabled := false;
      DLC_NIDCADSET.Enabled := false;
    end
  else
    begin
      DED_CCONTRAMAL.Enabled := true;
      DED_CCONTRARAM.Enabled := true;
      DED_CMAILRAMAL.Enabled := true;
      DLC_NIDCADORG.Enabled := true;
      DLC_CDIVURAMAL.Enabled := true;
      DLC_NIDCADSET.Enabled := true;
    end;
end;

procedure TFRM_A001ADRA.Btn_GravarClick(Sender: TObject);
begin
  with DTM_A001ADRA do
    begin
    if LiberadoGravacao(FRM_A001ADRA,DTS_001) then
      begin
         if (((DTS_001.DataSet.FieldByName('NIDCADORG').value = null) or
            (DTS_001.DataSet.FieldByName('NIDCADSET').value = null)) and
            (DLC_CSTATRAMAL.Text = 'ATIVO'))then
           begin
             MessageDlg('Descrição do Orgão e Descrição do Setor devem conter um valor.',
                         mtInformation,[mbOk],0);
             exit;
           end;
        DBGenerica(Dts_001,'Conexao',4,0,GRD_RAMAIS);
        if lResp then
          begin
             DED_CCONTRAMAL.Enabled := true;
             DED_CCONTRARAM.Enabled := true;
             DED_CMAILRAMAL.Enabled := true;
             DLC_NIDCADORG.Enabled := true;
             DLC_CDIVURAMAL.Enabled := true;
             DLC_NIDCADSET.Enabled := true;
             QryAtiva.Refresh;
             QryDivulgado.Refresh;
             QryInativa.Refresh;
             Lblativo.Caption := StrZero(QryAtiva.RecordCount,4);
             Lblinativo.Caption := StrZero(QryInativa.RecordCount,4);
             Lbldivul.Caption := StrZero(QryDivulgado.RecordCount,4);
             Lbltotal.caption:=StrZero(StrToInt(Lblativo.Caption)+ StrToInt(Lblinativo.Caption),4);
             Botoes(['Btn_Gravar','Btn_Cancelar'],'FRM_A001ADRA',false);
             DLC_NIDCADORG.LookupSource := DTS_002;
             DLC_NIDCADSET.LookupDisplay := '';
             DLC_NIDCADSET.LookupSource := DTS_003;
             DLC_NIDCADSET.LookupDisplay := 'CDESCSETOR';
             DLC_NIDCADSET.ReadOnly := true;
             DLC_NIDCADSET.Refresh;
             DLC_NIDCADORG.ReadOnly := true;
             DLC_NIDCADORG.Refresh;
          end;
      end;
    end;
end;

procedure TFRM_A001ADRA.Btn_CancelarClick(Sender: TObject);
begin
  //cancela a operação no dataset
  DBGenerica(DTM_A001ADRA.Dts_001,'Conexao',3, 0,GRD_RAMAIS);
  Botoes(['Btn_Cancelar', 'Btn_Gravar'],'FRM_A001ADRA',false);
  DED_CCONTRAMAL.Enabled := true;
  DED_CCONTRARAM.Enabled := true;
  DED_CMAILRAMAL.Enabled := true;
  DLC_NIDCADORG.Enabled := true;
  DLC_CDIVURAMAL.Enabled := true;
  DLC_NIDCADSET.Enabled := true;
  DLC_NIDCADORG.LookupSource := DTM_A001ADRA.DTS_002;
  DLC_NIDCADSET.LookupDisplay := '';
  DLC_NIDCADSET.LookupSource := DTM_A001ADRA.DTS_003;
  DLC_NIDCADSET.LookupDisplay := 'CDESCSETOR';
  DLC_NIDCADSET.ReadOnly := true;
  DLC_NIDCADSET.Refresh;
  DLC_NIDCADORG.ReadOnly := true;
  DLC_NIDCADORG.Refresh;
end;

procedure TFRM_A001ADRA.Btn_ExcluirClick(Sender: TObject);
begin
  with DTM_A001ADRA do
    begin
      //exclui registro do dataset
      DBGenerica(Dts_001,'Conexao',5,0);
      QryAtiva.Refresh;
      QryDivulgado.Refresh;
      QryInativa.Refresh;
      Lblativo.Caption := StrZero(QryAtiva.RecordCount,4);
      Lblinativo.Caption := StrZero(QryInativa.RecordCount,4);
      Lbldivul.Caption := StrZero(QryDivulgado.RecordCount,4);
      Lbltotal.caption:=StrZero(StrToInt(Lblativo.Caption)+ StrToInt(Lblinativo.Caption),4);
    end;
end;

procedure TFRM_A001ADRA.Btn_AvancarClick(Sender: TObject);
begin
  //avanca registro no dataset
  DBGenerica(DTM_A001ADRA.Dts_001,'Conexao',0,3);
  DTM_A001ADRA.QRY_004LKP_CDESCSETOR.RefreshLookupList;
end;

procedure TFRM_A001ADRA.Btn_RetrocederClick(Sender: TObject);
begin
   DBGenerica(DTM_A001ADRA.Dts_001,'Conexao',0,2);
   DTM_A001ADRA.QRY_004LKP_CDESCSETOR.RefreshLookupList;
end;

procedure TFRM_A001ADRA.Btn_ImprimirClick(Sender: TObject);
begin
  RelCadastro(DTM_A001ADRA.Qry_001,'Cadastro de Ramais');
end;

procedure TFRM_A001ADRA.Btn_DemonsClick(Sender: TObject);
begin
  Application.CreateForm(TFRM_A002ADRA,FRM_A002ADRA);
  FRM_A002ADRA.ShowModal;
  FRM_A002ADRA.free;
end;

end.




