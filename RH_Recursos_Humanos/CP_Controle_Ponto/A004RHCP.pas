unit A004RHCP;

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
  TFRM_A004RHCP = class(TForm)
    LMDGroupBox3: TLMDGroupBox;
    LMDGroupBox2: TLMDGroupBox;
    GRD_CARGOS: TDBGrid;
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
    DED_CDESCCARGO: TDBEdit;
    Label1: TLabel;
    Label2: TLabel;
    EDT_NIDCADCAG: TEdit;
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
    procedure EDT_NIDCADCAGKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRM_A004RHCP: TFRM_A004RHCP;

implementation

uses MPLCtrl, D004RHCP, MPLLib, UVariaveis;

{$R *.DFM}

procedure TFRM_A004RHCP.BTN_SAIRClick(Sender: TObject);
begin
  Close;

end;

procedure TFRM_A004RHCP.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   Action:= oControlForms.Saidas(Self,[DTM_A004RHCP],DTM_A004RHCP.DTS_009.DataSet);
end;

procedure TFRM_A004RHCP.FormShow(Sender: TObject);
begin
  if not Acesso(nMatricula,'A004RHCP',DTM_A004RHCP) then
    close;
  Botoes(['Btn_Cancelar','Btn_Gravar'],'FRM_A004RHCP',false);
  FRM_A004RHCP.OnShow := nil;
 {é atribuido ao OnShow do Form o valor nil para que o mesmo seja executado apenas uma vez}
 {pelo fato que se outra aplicação for chamada pela tecla F3, e ao retornar da aplicação que foi chamada pela tecla}
 {o evento OnShow deste form não acontecerá, ou seja não será executado, para permanecer o mesmo status da aplicação}
 {quando o F3 foi chamado}
end;

procedure TFRM_A004RHCP.Btn_LocalizarClick(Sender: TObject);
begin
  Pesquisa(DTM_A004RHCP.QRY_009,true,'','');
end;

procedure TFRM_A004RHCP.Btn_IncluirClick(Sender: TObject);
begin
  //inclui registro no dataset
  DBGenerica(DTM_A004RHCP.DTS_009,'Conexao',1,0,GRD_CARGOS);
  Botoes(['Btn_Cancelar','Btn_Sair','Btn_Gravar'],'FRM_A004RHCP',true);
  DTM_A004RHCP.DTS_009.DataSet.FieldByName('NIDCADCAG').AsInteger := 0;
  EDT_NIDCADCAG.Text := '00000';
  EDT_NIDCADCAG.Enabled := false;
  DED_CDESCCARGO.SetFocus;

end;

procedure TFRM_A004RHCP.Btn_AlterarClick(Sender: TObject);
begin
  Botoes(['Btn_Cancelar','Btn_Gravar','Btn_Sair'],'FRM_A004RHCP',true);
  //edita registro do dataset
  DBGenerica(DTM_A004RHCP.DTS_009,'Conexao',2,0,GRD_CARGOS);
  if not lResp then
    Botoes(['Btn_Cancelar', 'Btn_Gravar'],'FRM_A004RHCP',false)
  else
    EDT_NIDCADCAG.Enabled := false;
    DED_CDESCCARGO.SetFocus;
end;

procedure TFRM_A004RHCP.Btn_GravarClick(Sender: TObject);
begin
  if LiberadoGravacao(FRM_A004RHCP,DTM_A004RHCP.DTS_009) then
    begin
      //grava dados no dataset
      DBGenerica(DTM_A004RHCP.DTS_009,'Conexao',4,0,GRD_CARGOS);
      if lResp then
        begin
          EDT_NIDCADCAG.Enabled := true;
          Botoes(['Btn_Gravar','Btn_Cancelar'],'FRM_A004RHCP',false);
        end;
    end;
end;

procedure TFRM_A004RHCP.Btn_CancelarClick(Sender: TObject);
begin
   //cancela operação no dataset
   DBGenerica(DTM_A004RHCP.DTS_009,'Conexao',3, 0,GRD_CARGOS);
   Botoes(['Btn_Cancelar', 'Btn_Gravar'],'FRM_A004RHCP',false);
   EDT_NIDCADCAG.Enabled := true;
   GRD_CARGOS.Enabled := true;
end;

procedure TFRM_A004RHCP.Btn_ExcluirClick(Sender: TObject);
begin
 //exclui registro do dataset
 DBGenerica(DTM_A004RHCP.DTS_009,'Conexao',5,0);
end;

procedure TFRM_A004RHCP.Btn_AvancarClick(Sender: TObject);
begin
   //proximo registro do dataset
   DBGenerica(DTM_A004RHCP.DTS_009,'Conexao',0,3);
end;

procedure TFRM_A004RHCP.Btn_RetrocederClick(Sender: TObject);
begin
 //registro anterior do dataset
 DBGenerica(DTM_A004RHCP.DTS_009,'Conexao',0,2);
end;

procedure TFRM_A004RHCP.Btn_ImprimirClick(Sender: TObject);
begin
  RelCadastro(DTM_A004RHCP.QRY_009,'Relatório de Cargos');
end;

procedure TFRM_A004RHCP.EDT_NIDCADCAGKeyPress(Sender: TObject;
  var Key: Char);
begin
  if key = #13 then
    begin
      if Trim(EDT_NIDCADCAG.Text)<> '' then
        if not(DTM_A004RHCP.DTS_009.DataSet.Locate('NIDCADCAG',StrToInt(EDT_NIDCADCAG.Text),[])) then
          MessageDlg('Código de Cargos não encontrado.',mtInformation,[mbOk],0);
    end;
  Key := ValEditNumerico(Key);
end;

end.




