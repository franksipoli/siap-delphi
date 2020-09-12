unit A005RHCP;

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
  TFRM_A005RHCP = class(TForm)
    LMDGroupBox2: TLMDGroupBox;
    GRD_HORARIOS: TDBGrid;
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
    LMDGroupBox5: TLMDGroupBox;
    LMDGroupBox4: TLMDGroupBox;
    LMDGroupBox1: TLMDGroupBox;
    Label2: TLabel;
    Label3: TLabel;
    DED_CENTRMANHA: TDBEdit;
    DED_CSAIRMANHA: TDBEdit;
    LMDGroupBox3: TLMDGroupBox;
    Label4: TLabel;
    Label5: TLabel;
    DED_CENTRTARDE: TDBEdit;
    DED_CSAIRTARDE: TDBEdit;
    Hora: TDBText;
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
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRM_A005RHCP: TFRM_A005RHCP;

implementation

uses MPLCtrl, D005RHCP, UVariaveis;

{$R *.DFM}

procedure TFRM_A005RHCP.BTN_SAIRClick(Sender: TObject);
begin
  Close;
end;

procedure TFRM_A005RHCP.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   Action:= oControlForms.Saidas(Self,[DTM_A005RHCP],DTM_A005RHCP.DTS_010.DataSet);
end;

procedure TFRM_A005RHCP.FormShow(Sender: TObject);
begin
  if not Acesso(nMatricula,'A005RHCP',DTM_A005RHCP) then
    close;
  Botoes(['Btn_Cancelar','Btn_Gravar'],'FRM_A005RHCP',false);
  FRM_A005RHCP.OnShow := nil;
 {é atribuido ao OnShow do Form o valor nil para que o mesmo seja executado apenas uma vez}
 {pelo fato que se outra aplicação for chamada pela tecla F3, e ao retornar da aplicação que foi chamada pela tecla}
 {o evento OnShow deste form não acontecerá, ou seja não será executado, para permanecer o mesmo status da aplicação}
 {quando o F3 foi chamado}
end;

procedure TFRM_A005RHCP.Btn_LocalizarClick(Sender: TObject);
begin
  Pesquisa(DTM_A005RHCP.QRY_010,true,'','');
end;

procedure TFRM_A005RHCP.Btn_IncluirClick(Sender: TObject);
begin
  //inclui registro no dataset
  DBGenerica(DTM_A005RHCP.DTS_010,'Conexao',1,0,GRD_HORARIOS);
  Botoes(['Btn_Cancelar','Btn_Sair','Btn_Gravar'],'FRM_A005RHCP',true);
  DTM_A005RHCP.DTS_010.DataSet.FieldByName('NIDCADHOR').AsInteger := 0;
  DED_CENTRMANHA.SetFocus;

end;

procedure TFRM_A005RHCP.Btn_AlterarClick(Sender: TObject);
begin
  Botoes(['Btn_Cancelar','Btn_Gravar','Btn_Sair'],'FRM_A005RHCP',true);
  //edita o registro no dataset
  DBGenerica(DTM_A005RHCP.DTS_010,'Conexao',2,0,GRD_HORARIOS);
   if not lResp then
     Botoes(['Btn_Cancelar', 'Btn_Gravar'],'FRM_A005RHCP',false)

end;

procedure TFRM_A005RHCP.Btn_GravarClick(Sender: TObject);
begin
  if LiberadoGravacao(FRM_A005RHCP,DTM_A005RHCP.DTS_010) then
    begin
      //grava registro no dataset
      DBGenerica(DTM_A005RHCP.DTS_010,'Conexao',4,0,GRD_HORARIOS);
      if lResp then
        Botoes(['Btn_Gravar','Btn_Cancelar'],'FRM_A005RHCP',false);

    end;
end;

procedure TFRM_A005RHCP.Btn_CancelarClick(Sender: TObject);
begin
   //cancela operação corrente no dataset
   DBGenerica(DTM_A005RHCP.DTS_010,'Conexao',3, 0,GRD_HORARIOS);
   Botoes(['Btn_Cancelar', 'Btn_Gravar'],'FRM_A005RHCP',false);

end;

procedure TFRM_A005RHCP.Btn_ExcluirClick(Sender: TObject);
begin
 //exclui registro no dataset
 DBGenerica(DTM_A005RHCP.DTS_010,'Conexao',5,0);
end;

procedure TFRM_A005RHCP.Btn_AvancarClick(Sender: TObject);
begin
   //proximo registro
   DBGenerica(DTM_A005RHCP.DTS_010,'Conexao',0,3);
end;

procedure TFRM_A005RHCP.Btn_RetrocederClick(Sender: TObject);
begin
 //registro anterior no dataset
 DBGenerica(DTM_A005RHCP.DTS_010,'Conexao',0,2);
end;

procedure TFRM_A005RHCP.Btn_ImprimirClick(Sender: TObject);
begin
  RelCadastro(DTM_A005RHCP.QRY_010,'Relatório de Horários');
end;

end.




