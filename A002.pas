unit A002;

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
  TFRM_A002 = class(TForm)
    LMDGroupBox3: TLMDGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label5: TLabel;
    Label4: TLabel;
    Label3: TLabel;
    EDT_NIDCADSET: TEdit;
    DED_CDESCSETOR: TDBEdit;
    DED_NPREFSETOR: TDBEdit;
    DED_CBAIRROSET: TDBEdit;
    DED_CENDSETOR: TDBEdit;
    LMDGroupBox2: TLMDGroupBox;
    GRD_SETOR: TDBGrid;
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
    procedure EDT_NIDCADSETKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRM_A002: TFRM_A002;

implementation

uses D002, MPLCtrl, MPLLib, UVariaveis;

{$R *.DFM}

procedure TFRM_A002.BTN_SAIRClick(Sender: TObject);
begin
  close;
end;

procedure TFRM_A002.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  EDT_NIDCADSET.OnExit := nil;
  Action:= oControlForms.Saidas(Self,[DTM_A002],DTM_A002.DTS_003.DataSet);
end;

procedure TFRM_A002.FormShow(Sender: TObject);
begin
  if not Acesso(nMatricula,'A002',DTM_A002) then
    close;
  Botoes(['Btn_Cancelar','Btn_Gravar'],'FRM_A002',false);
  FRM_A002.OnShow := nil;
 {é atribuido ao OnShow do Form o valor nil para que o mesmo seja executado apenas uma vez}
 {pelo fato que se outra aplicação for chamada pela tecla F3, e ao retornar da aplicação que foi chamada pela tecla}
 {o evento OnShow deste form não acontecerá, ou seja não será executado, para permanecer o mesmo status da aplicação}
 {quando o F3 foi chamado}
end;

procedure TFRM_A002.Btn_LocalizarClick(Sender: TObject);
begin
 Pesquisa(DTM_A002.QRY_003,true,'','');
end;

procedure TFRM_A002.Btn_IncluirClick(Sender: TObject);
begin
 DBGenerica(DTM_A002.DTS_003,'Conexao',1,0,GRD_SETOR);
 Botoes(['Btn_Cancelar','Btn_Gravar','Btn_Sair'],'FRM_A002',true);
 EDT_NIDCADSET.Enabled := false;
 DTM_A002.DTS_003.DataSet.FieldByName('NIDCADSET').value := 0000;
 EDT_NIDCADSET.Text := '00000';
end;

procedure TFRM_A002.Btn_AlterarClick(Sender: TObject);
begin
  Botoes(['Btn_Cancelar','Btn_Gravar','Btn_Sair'],'FRM_A002',true);
  DBGenerica(DTM_A002.DTS_003,'Conexao',2,0,GRD_SETOR);
  EDT_NIDCADSET.Enabled := false;
end;

procedure TFRM_A002.Btn_GravarClick(Sender: TObject);
begin
 if LiberadoGravacao(FRM_A002,DTM_A002.DTS_003) then
  begin
    DBGenerica(DTM_A002.DTS_003,'Conexao',4,0,GRD_SETOR);
    if lResp then
      begin
       Botoes(['Btn_Gravar','Btn_Cancelar'],'FRM_A002',false);
       EDT_NIDCADSET.Enabled := true;
      end;
  end;
end;

procedure TFRM_A002.Btn_CancelarClick(Sender: TObject);
begin
   DBGenerica(DTM_A002.DTS_003,'Conexao',3, 0, GRD_SETOR);
   Botoes(['Btn_Cancelar', 'Btn_Gravar'],'FRM_A002',false);
   EDT_NIDCADSET.Enabled := true;
end;

procedure TFRM_A002.Btn_ExcluirClick(Sender: TObject);
begin
  DBGenerica(DTM_A002.DTS_003,'Conexao',5,0);
end;

procedure TFRM_A002.Btn_AvancarClick(Sender: TObject);
begin
  DBGenerica(DTM_A002.DTS_003,'Conexao',0,3);
end;

procedure TFRM_A002.Btn_RetrocederClick(Sender: TObject);
begin
 DBGenerica(DTM_A002.DTS_003,'Conexao',0,2);
end;

procedure TFRM_A002.Btn_ImprimirClick(Sender: TObject);
begin
 RelCadastro(DTM_A002.QRY_003,'Cadastro de Setores');
end;

procedure TFRM_A002.EDT_NIDCADSETKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
   If not (DTM_A002.DTS_003.DataSet.State in [dsEdit,dsInsert]) then
     begin
       with DTM_A002.DTS_003.DataSet do
         begin
           If not locate('NIDCADSET', strtoint(EDT_NIDCADSET.Text),[]) then
             begin
                MessageDlg('Código do setor não encontrado',mtInformation,[mbOk],0);
                EDT_NIDCADSET.Text:=FieldByName('NIDCADSET').value;
                EDT_NIDCADSET.SetFocus;
             end;
         end;
       exit;
     end;
  Key:=ValEditNumerico(Key);
end;

end.




