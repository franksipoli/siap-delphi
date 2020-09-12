unit A005;

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
  OraScript, MPLCtrl ;

type
  TFRM_A005 = class(TForm)
    LMDGroupBox3: TLMDGroupBox;
    Label2: TLabel;
    LMDGroupBox2: TLMDGroupBox;
    GRD_BAIRRO: TDBGrid;
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
    Label4: TLabel;
    Label5: TLabel;
    DED_CNOMEBAI: TDBEdit;
    CBE_CNOMELOC: TComboEdit;
    EDT_UFLOC: TEdit;
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
    procedure CBE_CNOMELOCButtonClick(Sender: TObject);
    procedure CBE_CNOMELOCExit(Sender: TObject);
    procedure CBE_CNOMELOCEnter(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
      cValor : String;
      lExit : boolean;
  end;

var
  FRM_A005: TFRM_A005;
  nCodLoc : Integer;
  dbStatus : TDbStatus;
  lFecha : Boolean;

implementation

uses D005, DMCTRL, Pesquisa, A004, UVariaveis;

{$R *.DFM}

procedure TFRM_A005.BTN_SAIRClick(Sender: TObject);
begin
 lFecha := true;
 close;
end;

procedure TFRM_A005.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:= oControlForms.Saidas(Self,[DTM_A005],DTM_A005.DTS_011.DataSet);
end;

procedure TFRM_A005.FormShow(Sender: TObject);
begin
  lFecha := false;
  if not Acesso(nMatricula,'A005',DTM_A005) then
   close;
  Botoes(['Btn_Cancelar','Btn_Gravar'],'FRM_A005',false);
  FRM_A005.OnShow := nil;
 {é atribuido ao OnShow do Form o valor nil para que o mesmo seja executado apenas uma vez}
 {pelo fato que se outra aplicação for chamada pela tecla F3, e ao retornar da aplicação que foi chamada pela tecla}
 {o evento OnShow deste form não acontecerá, ou seja não será executado, para permanecer o mesmo status da aplicação}
 {quando o F3 foi chamado}
end;

procedure TFRM_A005.Btn_LocalizarClick(Sender: TObject);
begin
  MplCtrl.Pesquisa(DTM_A005.QRY_011,true,'','tbxloc.ncep is not null');
end;

procedure TFRM_A005.Btn_IncluirClick(Sender: TObject);
  var
    nCodLoc : Integer;
begin
  CBE_CNOMELOC.ReadOnly := False;
  DED_CNOMEBAI.SetFocus;
  Botoes(['Btn_Cancelar','Btn_Gravar','Btn_Sair'],'FRM_A005',true);
  nCodLoc := DTM_A005.DTS_011.DataSet.FieldByName('nidtbxloc').asInteger;
  //inclui registro no dataset
  DBGenerica(DTM_A005.DTS_011,'Conexao',1,0,GRD_BAIRRO);
  DTM_A005.DTS_011.DataSet.FieldByName('nidtbxloc').asInteger := nCodLoc;
  DTM_A005.DTS_011.DataSet.FieldByName('NIDTBXBAI').value := 00000;
  dbStatus := dbInsert;
end;

procedure TFRM_A005.Btn_AlterarClick(Sender: TObject);
begin
  Botoes(['Btn_Cancelar','Btn_Gravar','Btn_Sair'],'FRM_A005',true);
  //edita registro do dataset
  DBGenerica(DTM_A005.DTS_011,'Conexao',2,0, GRD_BAIRRO);
  dbStatus := dbEdit;
  DED_CNOMEBAI.SetFocus;
end;

procedure TFRM_A005.Btn_GravarClick(Sender: TObject);
begin
   if not(lExit) then
     CBE_CNOMELOCExit(Sender);
   if LiberadoGravacao(FRM_A005,DTM_A005.DTS_011) then
     begin
      //grava dados no dataset
      DBGenerica(DTM_A005.DTS_011,'Conexao',4,0,GRD_BAIRRO);
      if lResp then
        begin
          Botoes(['Btn_Gravar','Btn_Cancelar'],'FRM_A005',false);
          dbStatus := dbBrowse;
          CBE_CNOMELOC.ReadOnly := True;
        end;
     end;
end;

procedure TFRM_A005.Btn_CancelarClick(Sender: TObject);
begin
  //cancela a operação corrente do dataset
  DBGenerica(DTM_A005.DTS_011,'Conexao',3, 0, GRD_BAIRRO);
  Botoes(['Btn_Cancelar','Btn_Gravar'],'FRM_A005',false);
  CBE_CNOMELOC.ReadOnly := True;
end;

procedure TFRM_A005.Btn_ExcluirClick(Sender: TObject);
begin
  //exclui registro do dataset
  DBGenerica(DTM_A005.DTS_011,'Conexao',5,0);
end;

procedure TFRM_A005.Btn_AvancarClick(Sender: TObject);
begin
  //proximo registro do dataset
  DBGenerica(DTM_A005.DTS_011,'Conexao',0,3);
end;

procedure TFRM_A005.Btn_RetrocederClick(Sender: TObject);
begin
  //registro anterior do dataset
  DBGenerica(DTM_A005.DTS_011,'Conexao',0,2);
end;

procedure TFRM_A005.Btn_ImprimirClick(Sender: TObject);
begin
  RelCadastro(DTM_A005.QRY_011,'Bairros',
              'tbxbai.nidtbxloc =tbxloc.nidtbxloc and tbxloc.ncep is not null');
end;

procedure TFRM_A005.CBE_CNOMELOCButtonClick(Sender: TObject);
begin
  VerTeclas(VK_F2);
end;

procedure TFRM_A005.CBE_CNOMELOCExit(Sender: TObject);

begin
  if DTM_A005.DTS_011.DataSet.State = dsInsert then
    begin
      if TrimRight(CBE_CNOMELOC.Text) <> '' then
        begin
          if FRM_PESQUISA <> nil then
            ProcLocalRepit(CBE_CNOMELOC,true,true)
          else
            ProcLocalRepit(CBE_CNOMELOC,false,true);

          with DMControle do
            begin
              EDT_UFLOC.Text := QryTemp.FieldByName('ufloc').DisplayText;
              DTM_A005.QRY_011.FieldByName('nidtbxloc').asInteger := QryTemp.FieldByName('nidtbxloc').asInteger;
              QryTemp.Close;
              QryTemp.SQL.Clear;
            end;

        end
      else
        begin
          MessageDlg('Favor Informar a Localidade..!!',mtInformation,[mbOk],0);
          CBE_CNOMELOC.SelectAll;
          CBE_CNOMELOC.SetFocus;
          Abort;
        end;

      lExit := true;
    end;
end;

procedure TFRM_A005.CBE_CNOMELOCEnter(Sender: TObject);
begin
  lExit := false;
end;

end.




