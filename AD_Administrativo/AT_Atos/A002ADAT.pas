unit A002ADAT;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  LMDCustomControl, LMDCustomPanel, LMDCustomBevelPanel,
  LMDCustomParentPanel, LMDCustomGroupBox, LMDGroupBox, Buttons, ExtCtrls,
  Grids, DBGrids, StdCtrls, Mask, DBCtrls;

type
  TFRM_A002ADAT = class(TForm)
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
    GRD_CAD: TDBGrid;
    DED_NIDTBXRSV: TDBEdit;
    DED_CDESCRIRSV: TDBEdit;
    Label1: TLabel;
    Label2: TLabel;
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
  FRM_A002ADAT: TFRM_A002ADAT;

implementation

uses D002ADAT, MPLCtrl, CtrlForms, UVariaveis;

{$R *.DFM}

procedure TFRM_A002ADAT.Btn_LocalizarClick(Sender: TObject);
begin
    Pesquisa(DTM_A002ADAT.QRY_070,true,'','');
end;

procedure TFRM_A002ADAT.Btn_AvancarClick(Sender: TObject);
begin
  DBGenerica(DTM_A002ADAT.DTS_070,'Conexao',0,3);
end;

procedure TFRM_A002ADAT.Btn_RetrocederClick(Sender: TObject);
begin
  DBGenerica(DTM_A002ADAT.DTS_070,'Conexao',0,2);
end;

procedure TFRM_A002ADAT.Btn_IncluirClick(Sender: TObject);
begin
 DED_CDESCRIRSV.SetFocus;
 DBGenerica(DTM_A002ADAT.DTS_070,'Conexao',1,0,GRD_CAD);
 DTM_A002ADAT.QRY_070.FieldByName('nidtbxrsv').asInteger := 0;
 Botoes(['Btn_Cancelar','Btn_Gravar','Btn_Sair'],'FRM_A002ADAT',true);
end;

procedure TFRM_A002ADAT.Btn_AlterarClick(Sender: TObject);
begin
  Botoes(['Btn_Cancelar','Btn_Gravar','Btn_Sair'],'FRM_A002ADAT',true);
  DBGenerica(DTM_A002ADAT.DTS_070,'Conexao',2,0, GRD_CAD);
end;

procedure TFRM_A002ADAT.Btn_GravarClick(Sender: TObject);
begin
  if LiberadoGravacao(FRM_A002ADAT,DTM_A002ADAT.DTS_070) then
    begin
      DBGenerica(DTM_A002ADAT.DTS_070,'Conexao',4,0,GRD_CAD);
      if lResp then
       Botoes(['Btn_Gravar','Btn_Cancelar'],'FRM_A002ADAT',false);
    end;
end;

procedure TFRM_A002ADAT.Btn_CancelarClick(Sender: TObject);
begin
   DBGenerica(DTM_A002ADAT.DTS_070,'Conexao',3, 0, GRD_CAD);
   Botoes(['Btn_Cancelar','Btn_Gravar'],'FRM_A002ADAT',false);
end;

procedure TFRM_A002ADAT.Btn_ExcluirClick(Sender: TObject);
begin
    DBGenerica(DTM_A002ADAT.DTS_070,'Conexao',5,0);
end;

procedure TFRM_A002ADAT.Btn_ImprimirClick(Sender: TObject);
begin
  RelCadastro(DTM_A002ADAT.QRY_070,'Resolve');
end;

procedure TFRM_A002ADAT.BTN_SAIRClick(Sender: TObject);
begin
  close;
end;

procedure TFRM_A002ADAT.FormClose(Sender: TObject; var Action: TCloseAction);
begin
    Action:= oControlForms.Saidas(Self,[DTM_A002ADAT],DTM_A002ADAT.DTS_070.DataSet);
end;

procedure TFRM_A002ADAT.FormShow(Sender: TObject);
begin
  if not Acesso(nMatricula,'A002ADAT',DTM_A002ADAT) then
    close;
  Botoes(['Btn_Cancelar','Btn_Gravar'],'FRM_A002ADAT',false);
  FRM_A002ADAT.OnShow := nil;
 {é atribuido ao OnShow do Form o valor nil para que o mesmo seja executado apenas uma vez}
 {pelo fato que se outra aplicação for chamada pela tecla F3, e ao retornar da aplicação que foi chamada pela tecla}
 {o evento OnShow deste form não acontecerá, ou seja não será executado, para permanecer o mesmo status da aplicação}
 {quando o F3 foi chamado}
end;

end.
