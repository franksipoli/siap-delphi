unit A004ADAT;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  LMDCustomControl, LMDCustomPanel, LMDCustomBevelPanel,
  LMDCustomParentPanel, LMDCustomGroupBox, LMDGroupBox, Buttons, ExtCtrls,
  Grids, DBGrids, StdCtrls, Mask, DBCtrls;

type
  TFRM_A004ADAT = class(TForm)
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
    DED_NIDTBXVPB: TDBEdit;
    DED_CDESCRIVPB: TDBEdit;
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
  FRM_A004ADAT: TFRM_A004ADAT;

implementation

uses D002ADAT, MPLCtrl, CtrlForms, UVariaveis, A002ADAT, D004ADAT;

{$R *.DFM}

procedure TFRM_A004ADAT.Btn_LocalizarClick(Sender: TObject);
begin
    Pesquisa(DTM_A004ADAT.QRY_072,true,'','');
end;

procedure TFRM_A004ADAT.Btn_AvancarClick(Sender: TObject);
begin
  DBGenerica(DTM_A004ADAT.DTS_072,'Conexao',0,3);
end;

procedure TFRM_A004ADAT.Btn_RetrocederClick(Sender: TObject);
begin
  DBGenerica(DTM_A004ADAT.DTS_072,'Conexao',0,2);
end;

procedure TFRM_A004ADAT.Btn_IncluirClick(Sender: TObject);
begin
 DED_CDESCRIVPB.SetFocus;
 DBGenerica(DTM_A004ADAT.DTS_072,'Conexao',1,0,GRD_CAD);
 DTM_A004ADAT.QRY_072.FieldByName('nidtbxvpb').asInteger := 0;
 Botoes(['Btn_Cancelar','Btn_Gravar','Btn_Sair'],'FRM_A004ADAT',true);
end;

procedure TFRM_A004ADAT.Btn_AlterarClick(Sender: TObject);
begin
  Botoes(['Btn_Cancelar','Btn_Gravar','Btn_Sair'],'FRM_A004ADAT',true);
  DBGenerica(DTM_A004ADAT.DTS_072,'Conexao',2,0, GRD_CAD);
end;

procedure TFRM_A004ADAT.Btn_GravarClick(Sender: TObject);
begin
  if LiberadoGravacao(FRM_A004ADAT,DTM_A004ADAT.DTS_072) then
    begin
      DBGenerica(DTM_A004ADAT.DTS_072,'Conexao',4,0,GRD_CAD);
      if lResp then
       Botoes(['Btn_Gravar','Btn_Cancelar'],'FRM_A004ADAT',false);
    end;
end;

procedure TFRM_A004ADAT.Btn_CancelarClick(Sender: TObject);
begin
   DBGenerica(DTM_A004ADAT.DTS_072,'Conexao',3, 0, GRD_CAD);
   Botoes(['Btn_Cancelar','Btn_Gravar'],'FRM_A004ADAT',false);
end;

procedure TFRM_A004ADAT.Btn_ExcluirClick(Sender: TObject);
begin
    DBGenerica(DTM_A004ADAT.DTS_072,'Conexao',5,0);
end;

procedure TFRM_A004ADAT.Btn_ImprimirClick(Sender: TObject);
begin
  RelCadastro(DTM_A004ADAT.QRY_072,'Veiculos de Publicação');
end;

procedure TFRM_A004ADAT.BTN_SAIRClick(Sender: TObject);
begin
  close;
end;

procedure TFRM_A004ADAT.FormClose(Sender: TObject; var Action: TCloseAction);
begin
    Action:= oControlForms.Saidas(Self,[DTM_A004ADAT],DTM_A004ADAT.DTS_072.DataSet);
end;

procedure TFRM_A004ADAT.FormShow(Sender: TObject);
begin
  if not Acesso(nMatricula,'A004ADAT',DTM_A004ADAT) then
    close;
  Botoes(['Btn_Cancelar','Btn_Gravar'],'FRM_A004ADAT',false);
  FRM_A004ADAT.OnShow := nil;
 {é atribuido ao OnShow do Form o valor nil para que o mesmo seja executado apenas uma vez}
 {pelo fato que se outra aplicação for chamada pela tecla F3, e ao retornar da aplicação que foi chamada pela tecla}
 {o evento OnShow deste form não acontecerá, ou seja não será executado, para permanecer o mesmo status da aplicação}
 {quando o F3 foi chamado}
end;

end.
