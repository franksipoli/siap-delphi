unit A001;

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
  OraScript;

type
  TFRM_A001 = class(TForm)
    LMDGroupBox3: TLMDGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    EDT_NIDCADORG: TEdit;
    DED_CDESCORG: TDBEdit;
    LMDGroupBox2: TLMDGroupBox;
    GRD_ORGAOS: TDBGrid;
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
    procedure EDT_NIDCADORGKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRM_A001: TFRM_A001;

implementation

uses  D001, MPLCtrl, DMCTRL, MPLLib, UVariaveis;

{$R *.DFM}

procedure TFRM_A001.BTN_SAIRClick(Sender: TObject);
begin
  Close;

end;

procedure TFRM_A001.FormClose(Sender: TObject; var Action: TCloseAction);
begin
//  Action := caFree;
 Action:= oControlForms.Saidas(Self,[DTM_A001],DTM_A001.DTS_002.DataSet);
end;

procedure TFRM_A001.FormShow(Sender: TObject);
begin
  if not Acesso(nMatricula,'A001',DTM_A001) then
    close;
  Botoes(['Btn_Cancelar','Btn_Gravar'],'Frm_A001',false);
  FRM_A001.OnShow := nil;
 {é atribuido ao OnShow do Form o valor nil para que o mesmo seja executado apenas uma vez}
 {pelo fato que se outra aplicação for chamada pela tecla F3, e ao retornar da aplicação que foi chamada pela tecla}
 {o evento OnShow deste form não acontecerá, ou seja não será executado, para permanecer o mesmo status da aplicação}
 {quando o F3 foi chamado}
end;







procedure TFRM_A001.Btn_LocalizarClick(Sender: TObject);
begin
  Pesquisa(DTM_A001.Qry_002,true,'','');
end;

procedure TFRM_A001.Btn_IncluirClick(Sender: TObject);
begin
  EDT_NIDCADORG.Enabled:=False;
  EDT_NIDCADORG.Text:='00000';
  DED_CDESCORG.SetFocus;
  DBGenerica(DTM_A001.Dts_002,'Conexao',1,0,GRD_ORGAOS,false);
  DTM_A001.DTS_002.DataSet.FieldByName('nidcadorg').Value:=00000;
  Botoes(['Btn_Cancelar','Btn_Sair','Btn_Gravar'],'Frm_A001',true);
end;

procedure TFRM_A001.Btn_AlterarClick(Sender: TObject);
begin
  EDT_NIDCADORG.Enabled:=False;
  Botoes(['Btn_Cancelar','Btn_Gravar','Btn_Sair'],'Frm_A001',true);
  DBGenerica(DTM_A001.Dts_002,'Conexao',2,0,GRD_ORGAOS,false);
end;

procedure TFRM_A001.Btn_GravarClick(Sender: TObject);
begin
  if LiberadoGravacao(Frm_A001,DTM_A001.DTS_002) then
    begin
      DBGenerica(DTM_A001.Dts_002,'Conexao',4,0,GRD_ORGAOS,false);
      if lResp then
        begin
           EDT_NIDCADORG.Enabled:=True;
           Botoes(['Btn_Gravar','Btn_Cancelar'],'Frm_A001',false);
        end;
    end;
end;

procedure TFRM_A001.Btn_CancelarClick(Sender: TObject);
begin
   DBGenerica(DTM_A001.Dts_002,'Conexao',3, 0,GRD_ORGAOS,false);
   Botoes(['Btn_Cancelar', 'Btn_Gravar'],'Frm_A001',false);
   EDT_NIDCADORG.Enabled:=True;
end;

procedure TFRM_A001.Btn_ExcluirClick(Sender: TObject);
begin
 DBGenerica(DTM_A001.Dts_002,'Conexao',5,0,GRD_ORGAOS,false);
end;

procedure TFRM_A001.Btn_AvancarClick(Sender: TObject);
begin
   DBGenerica(DTM_A001.Dts_002,'Conexao',0,3,GRD_ORGAOS,false);
end;

procedure TFRM_A001.Btn_RetrocederClick(Sender: TObject);
begin
 DBGenerica(DTM_A001.Dts_002,'Conexao',0,2,GRD_ORGAOS,false);
end;

procedure TFRM_A001.Btn_ImprimirClick(Sender: TObject);
begin
 RelCadastro(DTM_A001.Qry_002,'Cadastro de Orgão');
end;

procedure TFRM_A001.EDT_NIDCADORGKeyPress(Sender: TObject; var Key: Char);
begin
  if Key =#13 then
   If not (DTM_A001.DTS_002.DataSet.State in [dsEdit,dsInsert]) then
     begin
       with DTM_A001.DTS_002.DataSet do
         begin
           If not locate('nidcadorg', strtoint(EDT_NIDCADORG.Text),[]) then
             begin
                MessageDlg('Código do setor não encontrado',mtInformation,[mbOk],0);
                EDT_NIDCADORG.Text:=FieldByName('nidcadorg').value;
                EDT_NIDCADORG.SetFocus;
             end;
         end;
       exit;

     end;
   Key:=ValEditNumerico(Key);
end;

end.




