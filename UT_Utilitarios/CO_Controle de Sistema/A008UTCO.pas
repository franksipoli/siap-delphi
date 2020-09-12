unit A008UTCO;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, LMDCustomControl, LMDCustomPanel, LMDCustomBevelPanel,
  LMDCustomParentPanel, LMDCustomPanelFill, LMDPanelFill, ComCtrls, Grids,
  DBGrids, RxDBComb, DBCtrls, Mask, LMDCustomGroupBox, LMDGroupBox,
  ExtCtrls, DB, RxLookup;

type
  TFRM_A008UTCO = class(TForm)
    Panel2: TPanel;
    Btn_Incluir: TSpeedButton;
    Btn_Alterar: TSpeedButton;
    Btn_Gravar: TSpeedButton;
    Btn_Localizar: TSpeedButton;
    Btn_Imprimir: TSpeedButton;
    BTN_SAIR: TSpeedButton;
    Btn_Avancar: TSpeedButton;
    Btn_Retroceder: TSpeedButton;
    Btn_Cancelar: TSpeedButton;
    Btn_Excluir: TSpeedButton;
    LMDGroupBox3: TLMDGroupBox;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label20: TLabel;
    DED_NIDTBL_D: TDBEdit;
    DED_CNOMECAMPO: TDBEdit;
    DED_NTAMANHO: TDBEdit;
    DED_NDECIMAL: TDBEdit;
    DED_CTITULO: TDBEdit;
    DED_CDESCCAMPO: TDBEdit;
    DED_CMASCEDIT: TDBEdit;
    DED_CMASCDISP: TDBEdit;
    DED_CVALIDA: TDBEdit;
    DBM_MCAMPOHELP: TDBMemo;
    DBC_CALINHAR: TRxDBComboBox;
    DBC_CTIPOCAMPO: TRxDBComboBox;
    DBC_CTIPOFISIC: TRxDBComboBox;
    LMDGroupBox2: TLMDGroupBox;
    DBG_CAMPOS: TDBGrid;
    DBL_NIDTBL_T: TRxDBLookupCombo;
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Btn_AvancarClick(Sender: TObject);
    procedure Btn_RetrocederClick(Sender: TObject);
    procedure Btn_IncluirClick(Sender: TObject);
    procedure Btn_AlterarClick(Sender: TObject);
    procedure Btn_GravarClick(Sender: TObject);
    procedure Btn_CancelarClick(Sender: TObject);
    procedure Btn_ExcluirClick(Sender: TObject);
    procedure Btn_ImprimirClick(Sender: TObject);
    procedure BTN_SAIRClick(Sender: TObject);
    procedure Btn_LocalizarClick(Sender: TObject);
    procedure DBL_NIDTBL_TKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRM_A008UTCO: TFRM_A008UTCO;

implementation

uses CtrlForms, UVariaveis, MPLCtrl, D008UTCO, DMCTRL;

{$R *.DFM}

procedure TFRM_A008UTCO.FormShow(Sender: TObject);
begin
   Acesso(nMatricula,'A008UTCO',DTM_A008UTCO);
   Botoes(['Btn_Cancelar','Btn_Gravar'],'FRM_A008UTCO',False);
   DTM_A008UTCO.DTS_046.DataSet.FieldByName('ctipocampo').ValidChars := ['D','C','N'];
   FRM_A008UTCO.OnShow := nil;
 {é atribuido ao OnShow do Form o valor nil para que o mesmo seja executado apenas uma vez}
 {pelo fato que se outra aplicação for chamada pela tecla F3, e ao retornar da aplicação que foi chamada pela tecla}
 {o evento OnShow deste form não acontecerá, ou seja não será executado, para permanecer o mesmo status da aplicação}
 {quando o F3 foi chamado}
end;

procedure TFRM_A008UTCO.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := oControlForms.Saidas(Sender,[DTM_A008UTCO],DTM_A008UTCO.DTS_046.DataSet);
end;

procedure TFRM_A008UTCO.Btn_AvancarClick(Sender: TObject);
begin
  {avança registro}
   DBGenerica(DTM_A008UTCO.DTS_046,'Conexao',0,3);
end;

procedure TFRM_A008UTCO.Btn_RetrocederClick(Sender: TObject);
begin
  {retrocede registro}
  DBGenerica(DTM_A008UTCO.DTS_046,'Conexao',0,2,nil,false);
end;

procedure TFRM_A008UTCO.Btn_IncluirClick(Sender: TObject);
begin
  {inclui um registro novo para uma nova UNIT}
  DBGenerica(DTM_A008UTCO.DTS_046,'Conexao',1,0,DBG_CAMPOS,false);
  {trata os botões da aplicação}
  Botoes(['Btn_Cancelar','Btn_Gravar','Btn_Sair'],'FRM_A008UTCO',true);
  DED_CNOMECAMPO.SetFocus;
end;

procedure TFRM_A008UTCO.Btn_AlterarClick(Sender: TObject);
begin
  {trata os botões da aplicação}
  Botoes(['Btn_Cancelar','Btn_Gravar', 'Btn_Sair'],'FRM_A008UTCO',true);
  {coloca em estado de alteração o registro corrente}
  DBGenerica(DTM_A008UTCO.DTS_046,'Conexao',2,0,DBG_CAMPOS,false);
end;

procedure TFRM_A008UTCO.Btn_GravarClick(Sender: TObject);
begin
  with DTM_A008UTCO do
    begin
      if LiberadoGravacao(FRM_A008UTCO,DTS_046) then
        begin

          if DTS_046.DataSet.State = dsInsert then
            begin
              PrepareQryTemp('select max(nidtbl_d) as ID from tbl_d');
              DTS_046.DataSet.FieldByName('nidtbl_d').asInteger :=
              DMControle.QryTemp.FieldByName('id').AsInteger + 1;
              DMControle.QryTemp.Close;
              DMControle.QryTemp.SQL.Clear;
            end;
          {Grava no BD}
          DBGenerica(DTS_046,'Conexao',4,1,DBG_CAMPOS,false);
          if lResp then
          {trata os botões da aplicação}
            Botoes(['Btn_Gravar','Btn_Cancelar'],'FRM_A008UTCO',false);

        end;
    end;
end;

procedure TFRM_A008UTCO.Btn_CancelarClick(Sender: TObject);
begin
  DBGenerica(DTM_A008UTCO.DTS_046,'Conexao',3,0,DBG_CAMPOS,false);
  {trata os botões da aplicação}
  Botoes(['Btn_Gravar','Btn_Cancelar'],'FRM_A008UTCO',false);
end;

procedure TFRM_A008UTCO.Btn_ExcluirClick(Sender: TObject);
begin
  {exclui o registro corrente}
  DBGenerica(DTM_A008UTCO.DTS_046,'Conexao',5,0);
end;

procedure TFRM_A008UTCO.Btn_ImprimirClick(Sender: TObject);
begin
 {função Padrão de Impressão}
 RelCadastro(DTM_A008UTCO.QRY_046,'Dicionário de Dados');
end;

procedure TFRM_A008UTCO.BTN_SAIRClick(Sender: TObject);
begin
  close;
end;

procedure TFRM_A008UTCO.Btn_LocalizarClick(Sender: TObject);
begin
 {chama a pesquisa padrão}
 Pesquisa(DTM_A008UTCO.QRY_046,true,'','');
end;

procedure TFRM_A008UTCO.DBL_NIDTBL_TKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if DTM_A008UTCO.DTS_046.DataSet.State in [dsEdit,dsInsert] then
    if (Key = VK_DELETE) or (Key = VK_BACK) then
      DTM_A008UTCO.DTS_046.DataSet.FieldByName('ncodtabela').value := null;
end;

end.
