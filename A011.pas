unit A011;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  LMDCustomControl, LMDCustomPanel, LMDCustomBevelPanel,
  LMDCustomParentPanel, LMDCustomGroupBox, LMDGroupBox, Buttons, ExtCtrls,
  Grids, DBGrids, StdCtrls, Mask, DBCtrls, RxLookup, ToolEdit, RXDBCtrl,
  RxDBComb;

type
  TFRM_A011 = class(TForm)
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
    LMDGroupBox3: TLMDGroupBox;
    LMDGroupBox2: TLMDGroupBox;
    GRD_GRP: TDBGrid;
    Label1: TLabel;
    DED_CNOMEGRP: TDBEdit;
    Label17: TLabel;
    DBL_NIDTBXGRP: TRxDBLookupCombo;
    DBL_NIDTBXGRP_1: TRxDBLookupCombo;
    Label2: TLabel;
    Label3: TLabel;
    DBC_CSEXO: TRxDBComboBox;
    BTN_SF: TSpeedButton;
    BTN_IR: TSpeedButton;
    procedure Btn_LocalizarClick(Sender: TObject);
    procedure Btn_AvancarClick(Sender: TObject);
    procedure Btn_RetrocederClick(Sender: TObject);
    procedure Btn_IncluirClick(Sender: TObject);
    procedure Btn_AlterarClick(Sender: TObject);
    procedure Btn_GravarClick(Sender: TObject);
    procedure Btn_CancelarClick(Sender: TObject);
    procedure Btn_ExcluirClick(Sender: TObject);
    procedure Btn_ImprimirClick(Sender: TObject);
    procedure BTN_SAIRClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure BTN_SFClick(Sender: TObject);
    procedure BTN_IRClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRM_A011: TFRM_A011;

implementation

uses D011, MPLCtrl, UVariaveis, A053RH, D053RH, CtrlForms, D054RH, A054RH;

{$R *.DFM}

procedure TFRM_A011.Btn_LocalizarClick(Sender: TObject);
begin
    Pesquisa(DTM_A011.QRY_026,true,'','');
end;

procedure TFRM_A011.Btn_AvancarClick(Sender: TObject);
begin
  //proximo registro do datset
  DBGenerica(DTM_A011.DTS_026,'Conexao',0,3);
end;

procedure TFRM_A011.Btn_RetrocederClick(Sender: TObject);
begin
  //registro anterior do dataset
  DBGenerica(DTM_A011.DTS_026,'Conexao',0,2);
end;

procedure TFRM_A011.Btn_IncluirClick(Sender: TObject);
begin
 //inclui registro no dataset
 DBGenerica(DTM_A011.DTS_026,'Conexao',1,0,GRD_GRP);
 Botoes(['Btn_Cancelar','Btn_Gravar','Btn_Sair'],'FRM_A011',true);
 DTM_A011.DTS_026.DataSet.FieldByName('nIdTbxGrp').asInteger := 0;
 DED_CNOMEGRP.SetFocus;
 DBL_NIDTBXGRP.Enabled := false;
 DBL_NIDTBXGRP_1.Enabled := false;
end;

procedure TFRM_A011.Btn_AlterarClick(Sender: TObject);
begin
  Botoes(['Btn_Cancelar','Btn_Gravar','Btn_Sair'],'FRM_A011',true);
  //edita registro do dataset
  DBGenerica(DTM_A011.DTS_026,'Conexao',2,0, GRD_GRP);
  DED_CNOMEGRP.SetFocus;
  DBL_NIDTBXGRP.Enabled := true;
  DBL_NIDTBXGRP_1.Enabled := true;

end;

procedure TFRM_A011.Btn_GravarClick(Sender: TObject);
begin
  if LiberadoGravacao(FRM_A011,DTM_A011.DTS_026) then
    begin
      //grava os dados do dataset
      DBGenerica(DTM_A011.DTS_026,'Conexao',4,0,GRD_GRP);
      if lResp then
        begin
          Botoes(['Btn_Gravar','Btn_Cancelar'],'FRM_A011',false);
          DBL_NIDTBXGRP.Enabled := true;
          DBL_NIDTBXGRP_1.Enabled := true;
          DTM_A011.QRY_026_1.Refresh;
          DTM_A011.QRY_026_2.Refresh;
        end;
    end;
end;

procedure TFRM_A011.Btn_CancelarClick(Sender: TObject);
begin
   //cancela a operação atual no dataset
   DBGenerica(DTM_A011.DTS_026,'Conexao',3, 0, GRD_GRP);
   Botoes(['Btn_Cancelar','Btn_Gravar'],'FRM_A011',false);
   DBL_NIDTBXGRP.Enabled := true;
   DBL_NIDTBXGRP_1.Enabled := true;
end;

procedure TFRM_A011.Btn_ExcluirClick(Sender: TObject);
begin
    //exclui registro atual do dataset
    DBGenerica(DTM_A011.DTS_026,'Conexao',5,0);
end;

procedure TFRM_A011.Btn_ImprimirClick(Sender: TObject);
begin
  RelCadastro(DTM_A011.QRY_026,'Cadastro de Grau de Parentesco');
end;

procedure TFRM_A011.BTN_SAIRClick(Sender: TObject);
begin
  close;
end;

procedure TFRM_A011.FormClose(Sender: TObject; var Action: TCloseAction);
begin
    Action:= oControlForms.Saidas(Self,[DTM_A011],DTM_A011.DTS_026.DataSet);
end;

procedure TFRM_A011.FormShow(Sender: TObject);
begin
  if not Acesso(nMatricula,'A011',DTM_A011) then
    close;
  Botoes(['Btn_Cancelar','Btn_Gravar'],'FRM_A011',false);
  FRM_A011.OnShow := nil;
 {é atribuido ao OnShow do Form o valor nil para que o mesmo seja executado apenas uma vez}
 {pelo fato que se outra aplicação for chamada pela tecla F3, e ao retornar da aplicação que foi chamada pela tecla}
 {o evento OnShow deste form não acontecerá, ou seja não será executado, para permanecer o mesmo status da aplicação}
 {quando o F3 foi chamado}
end;

procedure TFRM_A011.BTN_SFClick(Sender: TObject);
begin
  Application.CreateForm(TDTM_A053RH,DTM_A053RH);
  Application.CreateForm(TFRM_A053RH,FRM_A053RH);
  FRM_A053RH.cNomeGrupo := DTM_A011.DTS_026.DataSet.FieldByName('cnomegrp').asString;
  FRM_A053RH.nIdGrupo := DTM_A011.DTS_026.DataSet.FieldByName('nidtbxgrp').asInteger;
  oControlForms.AtivaForm('FRM_A053RH',shModal,NIL);
end;

procedure TFRM_A011.BTN_IRClick(Sender: TObject);
begin
  Application.CreateForm(TDTM_A054RH,DTM_A054RH);
  Application.CreateForm(TFRM_A054RH,FRM_A054RH);
  FRM_A054RH.cNomeGrupo := DTM_A011.DTS_026.DataSet.FieldByName('cnomegrp').asString;
  FRM_A054RH.nIdGrupo := DTM_A011.DTS_026.DataSet.FieldByName('nidtbxgrp').asInteger;
  oControlForms.AtivaForm('FRM_A054RH',shModal,NIL);
end;

end.
