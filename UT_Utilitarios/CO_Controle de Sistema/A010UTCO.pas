unit A010UTCO;

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
  TFRM_A010UTCO = class(TForm)
    LMDGroupBox3: TLMDGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    EDT_CSIGLAPER: TEdit;
    DED_CNOMEPER: TDBEdit;
    LMDGroupBox2: TLMDGroupBox;
    GRD_PERFIL: TDBGrid;
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
    procedure EDT_CSIGLAPERKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRM_A010UTCO: TFRM_A010UTCO;

implementation

uses  MPLCtrl, DMCTRL, MPLLib, UVariaveis, D010UTCO;

{$R *.DFM}

procedure TFRM_A010UTCO.BTN_SAIRClick(Sender: TObject);
begin
  Close;
end;

procedure TFRM_A010UTCO.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 Action:= oControlForms.Saidas(Self,[DTM_A010UTCO],DTM_A010UTCO.DTS_056.DataSet);
end;

procedure TFRM_A010UTCO.FormShow(Sender: TObject);
begin
  if not Acesso(nMatricula,'A010UTCO',DTM_A010UTCO) then
    close;
  Botoes(['Btn_Cancelar','Btn_Gravar'],'Frm_A010UTCO',false);
  FRM_A010UTCO.OnShow := nil;
 {é atribuido ao OnShow do Form o valor nil para que o mesmo seja executado apenas uma vez}
 {pelo fato que se outra aplicação for chamada pela tecla F3, e ao retornar da aplicação que foi chamada pela tecla}
 {o evento OnShow deste form não acontecerá, ou seja não será executado, para permanecer o mesmo status da aplicação}
 {quando o F3 foi chamado}
end;







procedure TFRM_A010UTCO.Btn_LocalizarClick(Sender: TObject);
begin
  Pesquisa(DTM_A010UTCO.Qry_056,true,'','');
end;

procedure TFRM_A010UTCO.Btn_IncluirClick(Sender: TObject);
begin
  EDT_CSIGLAPER.SetFocus;
  DBGenerica(DTM_A010UTCO.Dts_056,'Conexao',1,0,GRD_PERFIL,false);
  DTM_A010UTCO.DTS_056.DataSet.FieldByName('nidtbl_pb').Value:=00000;
  Botoes(['Btn_Cancelar','Btn_Sair','Btn_Gravar'],'Frm_A010UTCO',true);
end;

procedure TFRM_A010UTCO.Btn_AlterarClick(Sender: TObject);
begin
  Botoes(['Btn_Cancelar','Btn_Gravar','Btn_Sair'],'Frm_A010UTCO',true);
  DBGenerica(DTM_A010UTCO.Dts_056,'Conexao',2,0,GRD_PERFIL,false);
end;

procedure TFRM_A010UTCO.Btn_GravarClick(Sender: TObject);
begin
if LiberadoGravacao(Frm_A010UTCO,DTM_A010UTCO.DTS_056) then
    begin
      DBGenerica(DTM_A010UTCO.Dts_056,'Conexao',4,0,GRD_PERFIL,false);
      if lResp then
        begin
           Botoes(['Btn_Gravar','Btn_Cancelar'],'Frm_A010UTCO',false);
        end;
    end;
end;

procedure TFRM_A010UTCO.Btn_CancelarClick(Sender: TObject);
begin
   DBGenerica(DTM_A010UTCO.Dts_056,'Conexao',3, 0,GRD_PERFIL,false);
   Botoes(['Btn_Cancelar', 'Btn_Gravar'],'Frm_A010UTCO',false);
end;

procedure TFRM_A010UTCO.Btn_ExcluirClick(Sender: TObject);
begin
 DBGenerica(DTM_A010UTCO.DTS_056,'Conexao',5,0,GRD_PERFIL,false);
end;

procedure TFRM_A010UTCO.Btn_AvancarClick(Sender: TObject);
begin
   DBGenerica(DTM_A010UTCO.DTS_056,'Conexao',0,3,GRD_PERFIL,false);
end;

procedure TFRM_A010UTCO.Btn_RetrocederClick(Sender: TObject);
begin
 DBGenerica(DTM_A010UTCO.DTS_056,'Conexao',0,2,GRD_PERFIL,false);
end;

procedure TFRM_A010UTCO.Btn_ImprimirClick(Sender: TObject);
begin
 RelCadastro(DTM_A010UTCO.Qry_056,'Cadastro de Perfil Base');
end;

procedure TFRM_A010UTCO.EDT_CSIGLAPERKeyPress(Sender: TObject; var Key: Char);
begin
  if Key =#13 then
   If not (DTM_A010UTCO.DTS_056.DataSet.State in [dsEdit,dsInsert]) then
     begin
       with DTM_A010UTCO.DTS_056.DataSet do
         begin
           If not locate('csiglaper', TRIM(EDT_CSIGLAPER.Text),[]) then
             begin
                MessageDlg('Perfil Base não encontrado',mtInformation,[mbOk],0);
                EDT_CSIGLAPER.Text:=FieldByName('csiglaper').value;
                EDT_CSIGLAPER.SetFocus;
             end;
         end;
       exit;

     end;
end;

end.




