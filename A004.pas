unit A004;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, DBGrids, StdCtrls, ToolEdit, RxLookup, Mask, DBCtrls,
  LMDCustomControl, LMDCustomPanel, LMDCustomBevelPanel, DB,
  LMDCustomParentPanel, LMDCustomGroupBox, LMDGroupBox, Buttons, ExtCtrls;

type
  TFRM_A004 = class(TForm)
    Panel2: TPanel;
    Btn_Incluir: TSpeedButton;
    Btn_Gravar: TSpeedButton;
    Btn_Localizar: TSpeedButton;
    Btn_Excluir: TSpeedButton;
    BTN_SAIR: TSpeedButton;
    Btn_Avancar: TSpeedButton;
    Btn_Retroceder: TSpeedButton;
    Btn_Cancelar: TSpeedButton;
    Btn_Imprimir: TSpeedButton;
    Btn_Alterar: TSpeedButton;
    LMDGroupBox1: TLMDGroupBox;
    Label3: TLabel;
    Label4: TLabel;
    Label7: TLabel;
    Label9: TLabel;
    DED_CNOMELOG: TDBEdit;
    EDT_UFLOC: TEdit;
    CBE_CNOMETPL: TComboEdit;
    DBL_NIDTBXBAI: TRxDBLookupCombo;
    CBE_CNOMELOC: TComboEdit;
    Label1: TLabel;
    LMDGroupBox2: TLMDGroupBox;
    GRD_LOGRADO: TDBGrid;
    procedure CBE_CNOMELOCButtonClick(Sender: TObject);
    procedure CBE_CNOMETPLButtonClick(Sender: TObject);
    procedure DED_CNOMELOGEnter(Sender: TObject);
    procedure Btn_LocalizarClick(Sender: TObject);
    procedure Btn_AvancarClick(Sender: TObject);
    procedure Btn_RetrocederClick(Sender: TObject);
    procedure Btn_IncluirClick(Sender: TObject);
    procedure Btn_AlterarClick(Sender: TObject);
    procedure Btn_GravarClick(Sender: TObject);
    procedure Btn_CancelarClick(Sender: TObject);
    procedure Btn_ExcluirClick(Sender: TObject);
    procedure Btn_ImprimirClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BTN_SAIRClick(Sender: TObject);
    procedure CBE_CNOMELOCExit(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRM_A004: TFRM_A004;

implementation

uses D004, MPLLib, MPLCtrl, UVariaveis, TELAPRIN, DMCTRL, Pesquisa;

{$R *.DFM}

procedure TFRM_A004.CBE_CNOMELOCButtonClick(Sender: TObject);
begin
  VerTeclas(VK_F2);
end;

procedure TFRM_A004.CBE_CNOMETPLButtonClick(Sender: TObject);
begin
  VerTeclas(VK_F2);
end;

procedure TFRM_A004.DED_CNOMELOGEnter(Sender: TObject);
begin
  if DTM_A004.DTS_013.DataSet.State = dsInsert then
    if not DTM_A004.DTS_014.DataSet.Locate('CNOMETPL',TrimRight(CBE_CNOMETPL.Text),[]) then
      begin
        MessageDlg('Tipo Não Cadastrado !!',mtError,[mbOk],0);
        CBE_CNOMETPL.SelectAll;
        CBE_CNOMETPL.SetFocus;
      end;
end;

procedure TFRM_A004.Btn_LocalizarClick(Sender: TObject);
begin
 MplCtrl.Pesquisa(DTM_A004.QRY_013,true,'','Cadlog.cTipoReg = '+QuotedStr('U'));
end;

procedure TFRM_A004.Btn_AvancarClick(Sender: TObject);
begin
  //proximo registro
  DBGenerica(DTM_A004.DTS_013,'Conexao',0,3);
end;

procedure TFRM_A004.Btn_RetrocederClick(Sender: TObject);
begin
  //registro anterior
  DBGenerica(DTM_A004.DTS_013,'Conexao',0,2);

end;

procedure TFRM_A004.Btn_IncluirClick(Sender: TObject);
var
  nIdBai, nIdLoc, nCep : Integer;

begin
  CBE_CNOMELOC.ReadOnly := false;
  CBE_CNOMETPL.ReadOnly := false;
  DED_CNOMELOG.SetFocus;

  nIdBai := DTM_A004.DTS_013.DataSet.FieldByName('NIDTBXBAI').asInteger;
  nIdLoc := DTM_A004.DTS_013.DataSet.FieldByName('NIDTBXLOC').asInteger;
  nCep   := DTM_A004.DTS_013.DataSet.FieldByName('NCEP').asInteger;

  DTM_A004.DTS_014.DataSet.Locate('NIDTBXTPL',
  DTM_A004.DTS_013.DataSet.FieldByName('NIDTBXTPL').Value,[]);
  Botoes(['Btn_Cancelar','Btn_Gravar','Btn_Sair'],'FRM_A004',true);
  //inclui registro no dataset
  DBGenerica(DTM_A004.DTS_013,'Conexao',1,0,GRD_LOGRADO);
  DTM_A004.DTS_013.DataSet.FieldByName('NIDCADLOG').value := 00000;
  DTM_A004.DTS_013.DataSet.FieldByName('NIDTBXLOC').AsInteger := nIdLoc;
  DTM_A004.DTS_013.DataSet.FieldByName('NCEP').AsInteger := nCep;
  DTM_A004.QRY_011.ParamByName('nidtbxloc').asInteger:=
  DTM_A004.DTS_013.DataSet.FieldByName('NIDTBXLOC').asInteger;
  DTM_A004.QRY_011.ExecSQL;
  //DBL_NIDTBXBAI.DataSource.DataSet.FieldByName('NIDTBXBAI').asInteger := nIdBai;

end;

procedure TFRM_A004.Btn_AlterarClick(Sender: TObject);
begin
  Botoes(['Btn_Cancelar','Btn_Gravar','Btn_Sair'],'FRM_A004',true);
  //edita registro do dataset
  DBGenerica(DTM_A004.DTS_013,'Conexao',2,0, GRD_LOGRADO);
  DED_CNOMELOG.SetFocus;

end;

procedure TFRM_A004.Btn_GravarClick(Sender: TObject);
begin
  DED_CNOMELOG.SetFocus;
  if CBE_CNOMETPL.Focused then
    exit;
  if LiberadoGravacao(FRM_A004,DTM_A004.DTS_013) then
    begin
      if DTM_A004.DTS_013.DataSet.State = dsInsert then
        begin
          DTM_A004.DTS_013.DataSet.FieldByName('nIdTbxTpl').value :=
          DTM_A004.DTS_014.DataSet.FieldByName('nIdTbxTpl').value;
          DTM_A004.DTS_013.DataSet.FieldByName('nIdTbxBai').value :=
          DTM_A004.DTS_011.DataSet.FieldByName('nIdTbxBai').value;
          //DTM_A004.DTS_013.DataSet.FieldByName('nIdTbxLoc').value :=
          //DTM_A004.DTS_012.DataSet.FieldByName('nIdTbxLoc').Value;
          DTM_A004.DTS_013.DataSet.FieldByName('cTipoReg').value := 'U';
          DTM_A004.DTS_013.DataSet.FieldByName('cTabOrigem').value := '2';
          //DTM_A004.DTS_013.DataSet.FieldByName('nCep').value :=
          //DTM_A004.DTS_012.DataSet.FieldByName('nCep').value;
        end;
      //grava os dados no dataset
      DBGenerica(DTM_A004.DTS_013,'Conexao',4,0,GRD_LOGRADO);
      if lResp then
        begin
          Botoes(['Btn_Gravar','Btn_Cancelar'],'FRM_A004',false);
          CBE_CNOMELOC.ReadOnly := true;
          CBE_CNOMETPL.ReadOnly := true;
        end;
    end;
end;

procedure TFRM_A004.Btn_CancelarClick(Sender: TObject);
begin
  //cancela a operação corrente no dataset
  DBGenerica(DTM_A004.DTS_013,'Conexao',3, 0, GRD_LOGRADO);
  Botoes(['Btn_Cancelar','Btn_Gravar'],'FRM_A004',false);
  CBE_CNOMELOC.ReadOnly := true;
  CBE_CNOMETPL.ReadOnly := true;
end;

procedure TFRM_A004.Btn_ExcluirClick(Sender: TObject);
begin
  //exclui registro atual do dataset
  DBGenerica(DTM_A004.DTS_013,'Conexao',5,0);
end;

procedure TFRM_A004.Btn_ImprimirClick(Sender: TObject);
begin
  RelCadastro(DTM_A004.QRY_013,'Logradouros','Cadlog.cTipoReg = '+QuotedStr('U'));
end;

procedure TFRM_A004.FormShow(Sender: TObject);
begin
  //if not Acesso(nMatricula,'A004',DTM_A004) then
  // close;
  Acesso(nMatricula,'A004',DTM_A004);
  Botoes(['Btn_Cancelar','Btn_Gravar'],'FRM_A004',false);
  FRM_A004.OnShow := nil;
  CBE_CNOMELOC.ReadOnly := true;
  CBE_CNOMETPL.ReadOnly := true;

 {é atribuido ao OnShow do Form o valor nil para que o mesmo seja executado apenas uma vez}
 {pelo fato que se outra aplicação for chamada pela tecla F3, e ao retornar da aplicação que foi chamada pela tecla}
 {o evento OnShow deste form não acontecerá, ou seja não será executado, para permanecer o mesmo status da aplicação}
 {quando o F3 foi chamado}
end;

procedure TFRM_A004.FormDestroy(Sender: TObject);
begin
  FRM_TELAPRI.Perform(WM_NEXTDLGCTL,0,0);
  FRM_A004 := nil;
end;

procedure TFRM_A004.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:= oControlForms.Saidas(Self,[DTM_A004],DTM_A004.DTS_013.DataSet);
end;

procedure TFRM_A004.BTN_SAIRClick(Sender: TObject);
begin
  close;
end;

procedure TFRM_A004.CBE_CNOMELOCExit(Sender: TObject);
begin
  if DTM_A004.DTS_013.DataSet.State = dsInsert then
    begin
      if Trim(CBE_CNOMELOC.Text) <> '' then
        begin
          if FRM_PESQUISA <> nil then
            ProcLocalRepit(CBE_CNOMELOC,true,true)
          else
            ProcLocalRepit(CBE_CNOMELOC,false,true);

          with DMControle, DTM_A004 do
            begin
              EDT_UFLOC.Text := QryTemp.FieldByName('ufloc').DisplayText;
              QRY_011.ParamByName('nidtbxloc').AsInteger := QryTemp.FieldByName('nidtbxloc').asInteger;
              QRY_011.ExecSQL;
              DTS_013.DataSet.FieldByName('nIdTbxLoc').value := QryTemp.FieldByName('nidtbxloc').asInteger;
              DTS_013.DataSet.FieldByName('nCep').value := QryTemp.FieldByName('nCep').AsInteger;
              DBL_NIDTBXBAI.SetFocus;
              DBL_NIDTBXBAI.DropDown;
              QryTemp.Close;
              QryTemp.SQL.Clear;
            end;
        end
      else
        begin
          MessageDlg('Favor informar uma localidade!',mtInformation,[mbOk],0);
          CBE_CNOMELOC.SetFocus;
        end;

    end;

end;

end.
