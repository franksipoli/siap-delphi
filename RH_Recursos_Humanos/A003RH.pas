unit A003RH;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  LMDCustomControl, LMDCustomPanel, LMDCustomBevelPanel,
  LMDCustomParentPanel, LMDCustomGroupBox, LMDGroupBox, Buttons, ExtCtrls,
  Grids, DBGrids, StdCtrls, Mask, DBCtrls;

type
  TFRM_A003RH = class(TForm)
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
    GRD_DSF: TDBGrid;
    Label1: TLabel;
    DED_CNOMEDSF: TDBEdit;
    DED_NIDADE: TDBEdit;
    Label3: TLabel;
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
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRM_A003RH: TFRM_A003RH;

implementation

uses MPLCtrl, D003RH, UVariaveis, CtrlForms;

{$R *.DFM}

procedure TFRM_A003RH.Btn_LocalizarClick(Sender: TObject);
begin
    Pesquisa(DTM_A003RH.QRY_028,true,'','');
end;

procedure TFRM_A003RH.Btn_AvancarClick(Sender: TObject);
begin
  //proximo registro do dataset
  DBGenerica(DTM_A003RH.DTS_028,'Conexao',0,3);
end;

procedure TFRM_A003RH.Btn_RetrocederClick(Sender: TObject);
begin
  //registro anterior do dataset
  DBGenerica(DTM_A003RH.DTS_028,'Conexao',0,2);
end;

procedure TFRM_A003RH.Btn_IncluirClick(Sender: TObject);
begin
 //inclui um registro no dataset
 DBGenerica(DTM_A003RH.DTS_028,'Conexao',1,0,GRD_DSF);
 Botoes(['Btn_Cancelar','Btn_Gravar','Btn_Sair'],'FRM_A003RH',true);
 DTM_A003RH.DTS_028.DataSet.FieldByName('nIdTbxDsf').asInteger := 0;
 DED_CNOMEDSF.SetFocus;
end;

procedure TFRM_A003RH.Btn_AlterarClick(Sender: TObject);
begin
  Botoes(['Btn_Cancelar','Btn_Gravar','Btn_Sair'],'FRM_A003RH',true);
  //edita registro do dataset
  DBGenerica(DTM_A003RH.DTS_028,'Conexao',2,0, GRD_DSF);
  DED_CNOMEDSF.SetFocus;
end;

procedure TFRM_A003RH.Btn_GravarClick(Sender: TObject);
begin
  if LiberadoGravacao(FRM_A003RH,DTM_A003RH.DTS_028) then
    begin
      //grava os dados do dataset
      DBGenerica(DTM_A003RH.DTS_028,'Conexao',4,0,GRD_DSF);
      if lResp then
       Botoes(['Btn_Gravar','Btn_Cancelar'],'FRM_A003RH',false);
    end;
end;

procedure TFRM_A003RH.Btn_CancelarClick(Sender: TObject);
begin
   //cancela operação corrente do dataset
   DBGenerica(DTM_A003RH.DTS_028,'Conexao',3, 0, GRD_DSF);
   Botoes(['Btn_Cancelar','Btn_Gravar'],'FRM_A003RH',false);
end;

procedure TFRM_A003RH.Btn_ExcluirClick(Sender: TObject);
begin
    //exclui registro do dataset
    DBGenerica(DTM_A003RH.DTS_028,'Conexao',5,0);
end;

procedure TFRM_A003RH.Btn_ImprimirClick(Sender: TObject);
begin
  RelCadastro(DTM_A003RH.QRY_028,'Cadastro Tipo Salário Família');
end;

procedure TFRM_A003RH.BTN_SAIRClick(Sender: TObject);
begin
  close;
end;

procedure TFRM_A003RH.FormClose(Sender: TObject; var Action: TCloseAction);
begin
    Action:= oControlForms.Saidas(Self,[DTM_A003RH],DTM_A003RH.DTS_028.DataSet);
end;

procedure TFRM_A003RH.FormShow(Sender: TObject);
begin
  if not Acesso(nMatricula,'A003RH',DTM_A003RH) then
    close;
  Botoes(['Btn_Cancelar','Btn_Gravar'],'FRM_A003RH',false);
  FRM_A003RH.OnShow := nil;
 {é atribuido ao OnShow do Form o valor nil para que o mesmo seja executado apenas uma vez}
 {pelo fato que se outra aplicação for chamada pela tecla F3, e ao retornar da aplicação que foi chamada pela tecla}
 {o evento OnShow deste form não acontecerá, ou seja não será executado, para permanecer o mesmo status da aplicação}
 {quando o F3 foi chamado}
end;

end.
