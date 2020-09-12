unit A003;

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
  TFRM_A003 = class(TForm)
    LMDGroupBox3: TLMDGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    DBC_NIDCADORG: TRxDBComboEdit;
    DED_CDESCORG: TDBEdit;
    DBC_NIDCADSET: TRxDBComboEdit;
    DED_CDESCSETOR: TDBEdit;
    LMDGroupBox2: TLMDGroupBox;
    GRD_ORGSET: TDBGrid;
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
    procedure BTN_SAIRClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure Btn_LocalizarClick(Sender: TObject);
    procedure Btn_IncluirClick(Sender: TObject);
    procedure Btn_AlterarClick(Sender: TObject);
    procedure Btn_GravarClick(Sender: TObject);
    procedure Btn_CancelarClick(Sender: TObject);
    procedure Btn_ExcluirClick(Sender: TObject);
    procedure Btn_AvancarClick(Sender: TObject);
    procedure Btn_RetrocederClick(Sender: TObject);
    procedure Btn_ImprimirClick(Sender: TObject);
    procedure DBC_NIDCADORGButtonClick(Sender: TObject);
    procedure DBC_NIDCADORGEnter(Sender: TObject);
    procedure DBC_NIDCADSETButtonClick(Sender: TObject);
    procedure DBC_NIDCADSETEnter(Sender: TObject);
    procedure DBC_NIDCADORGKeyPress(Sender: TObject; var Key: Char);
    procedure DBC_NIDCADSETKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
      cValor : String;
  end;

var
  FRM_A003: TFRM_A003;

implementation

uses D003, MPLCtrl, UVariaveis;

{$R *.DFM}

procedure TFRM_A003.BTN_SAIRClick(Sender: TObject);
begin
 close;
end;

procedure TFRM_A003.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:= oControlForms.Saidas(Self,[DTM_A003],DTM_A003.DTS_004.DataSet);
end;

procedure TFRM_A003.FormShow(Sender: TObject);
begin
  if not Acesso(nMatricula,'A003',DTM_A003) then
    close;
  Botoes(['Btn_Cancelar','Btn_Gravar'],'FRM_A003',false);
  FRM_A003.OnShow := nil;
 {é atribuido ao OnShow do Form o valor nil para que o mesmo seja executado apenas uma vez}
 {pelo fato que se outra aplicação for chamada pela tecla F3, e ao retornar da aplicação que foi chamada pela tecla}
 {o evento OnShow deste form não acontecerá, ou seja não será executado, para permanecer o mesmo status da aplicação}
 {quando o F3 foi chamado}
end;

procedure TFRM_A003.Btn_LocalizarClick(Sender: TObject);
begin
  Pesquisa(DTM_A003.QRY_004,true,'','');
end;

procedure TFRM_A003.Btn_IncluirClick(Sender: TObject);
begin
 //inclui registro no dataset
 DBGenerica(DTM_A003.DTS_004,'Conexao',1,0,GRD_ORGSET);
 Botoes(['Btn_Cancelar','Btn_Gravar','Btn_Sair'],'FRM_A003',true);
 DTM_A003.DTS_004.DataSet.FieldByName('NIDCADOST').value := 00000;
 DBC_NIDCADORG.SetFocus;
end;

procedure TFRM_A003.Btn_AlterarClick(Sender: TObject);
begin
  Botoes(['Btn_Cancelar','Btn_Gravar','Btn_Sair'],'FRM_A003',true);
  //edita o registro corrente do dataset
  DBGenerica(DTM_A003.DTS_004,'Conexao',2,0, GRD_ORGSET);
end;

procedure TFRM_A003.Btn_GravarClick(Sender: TObject);
begin
   if LiberadoGravacao(FRM_A003,DTM_A003.DTS_004) then
   begin
    DTM_A003.DTS_004.DataSet.FieldByName('NIDCADORG').value :=
    DTM_A003.DTS_002.DataSet.FieldByName('NIDCADORG').value;
    DTM_A003.DTS_004.DataSet.FieldByName('NIDCADSET').value :=
    DTM_A003.DTS_003.DataSet.FieldByName('NIDCADSET').value;
    //grava os dados do dataset
    DBGenerica(DTM_A003.DTS_004,'Conexao',4,0,GRD_ORGSET);
    if lResp then
     Botoes(['Btn_Gravar','Btn_Cancelar'],'FRM_A003',false);
   end;
end;

procedure TFRM_A003.Btn_CancelarClick(Sender: TObject);
begin
   //cancela a operação corrente do dataset
   DBGenerica(DTM_A003.DTS_004,'Conexao',3, 0, GRD_ORGSET);
   Botoes(['Btn_Cancelar','Btn_Gravar'],'FRM_A003',false);
end;

procedure TFRM_A003.Btn_ExcluirClick(Sender: TObject);
begin
  //exclui o registro corrente do dataset
  DBGenerica(DTM_A003.DTS_004,'Conexao',5,0);
end;

procedure TFRM_A003.Btn_AvancarClick(Sender: TObject);
begin
 //proximo registro do dataset
 DBGenerica(DTM_A003.DTS_004,'Conexao',0,3);
end;

procedure TFRM_A003.Btn_RetrocederClick(Sender: TObject);
begin
  //registro anterior do dataset
  DBGenerica(DTM_A003.DTS_004,'Conexao',0,2);
end;

procedure TFRM_A003.Btn_ImprimirClick(Sender: TObject);
begin
    RelCadastro(DTM_A003.QRY_004,'Orgãos e Setores');
end;

procedure TFRM_A003.DBC_NIDCADORGButtonClick(Sender: TObject);
begin
 VerTeclas(VK_F2);
end;

procedure TFRM_A003.DBC_NIDCADORGEnter(Sender: TObject);
begin
 cValor := DBC_NIDCADORG.Text;
end;

procedure TFRM_A003.DBC_NIDCADSETButtonClick(Sender: TObject);
begin
  VerTeclas(VK_F2);
end;

procedure TFRM_A003.DBC_NIDCADSETEnter(Sender: TObject);
begin
  cValor := DBC_NIDCADSET.Text;
end;

procedure TFRM_A003.DBC_NIDCADORGKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    begin
      with DTM_A003 do
        begin
          if DTS_004.DataSet.State in [dsInsert,dsEdit] then
            begin
              if Trim(DBC_NIDCADORG.Text) = '' then
                begin
                  MessageDlg('Campo deve ter um valor',mtCustom,[mbOk],0);
                  exit;
                end;
              QRY_002.Params[0].Value := StrToInt(DBC_NIDCADORG.Text);
              QRY_002.ExecSQL;
              if DTS_002.DataSet.RecordCount = 0 then
                begin
                  MessageDlg('Orgão não encontrado',mtCustom,[mbOk],0);
                  if Trim(cValor)<> '' then
                    begin
                      //DBC_NIDCADORG.Text := cValor;
                      DTS_004.DataSet.FieldByName('NIDCADORG').value := StrToInt(cValor);
                      QRY_002.Params[0].Value := StrToInt(cValor);
                      QRY_002.ExecSQL;
                      cValor := '';
                    end;
                  DBC_NIDCADORG.SetFocus;
                end;

            end;
        end;
    end;
end;

procedure TFRM_A003.DBC_NIDCADSETKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    begin
      with DTM_A003 do
        begin
          if DTS_004.DataSet.State in [dsInsert,dsEdit] then
            begin
              if Trim(DBC_NIDCADSET.Text) = '' then
                begin
                  MessageDlg('Campo deve ter um valor',mtCustom,[mbOk],0);
                  exit;
                end;
              QRY_003.Params[0].Value := StrToInt(DBC_NIDCADSET.Text);
              QRY_003.ExecSQL;
              if DTS_003.DataSet.RecordCount = 0 then
                begin
                  MessageDlg('Setor não encontrado',mtCustom,[mbOk],0);
                  if Trim(cValor)<> '' then
                    begin
                      //DBC_NIDCADSET.Text := cValor;
                      DTS_004.DataSet.FieldByName('NIDCADSET').value := StrToInt(cValor);
                      QRY_003.Params[0].Value := StrToInt(cValor);
                      QRY_003.ExecSQL;
                      cValor := '';
                    end;
                  DBC_NIDCADSET.SetFocus;
                end;

            end;
        end;
    end;
end;

end.




