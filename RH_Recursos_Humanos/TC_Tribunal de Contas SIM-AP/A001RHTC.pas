unit A001RHTC;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  lmdcctrl, lmdctrl, StdCtrls,lmdstdcS, ExtCtrls, Buttons,
  ImgList, ComCtrls, lmdextcS, lmdeditb,lmdeditc, LMDEdit, lmdbredt,
  lmdextcA, LMDShadowFill, LMDCustomPanelFill, LMDPanelFill,
  LMDGraphicControl, LMDBaseMeter, LMDCustomProgress, LMDProgress,
  LMDControl, LMDBaseControl, LMDBaseGraphicControl, LMDBaseLabel,
  LMDCustomSimpleLabel, LMDSimpleLabel, LMDCustomControl, LMDCustomPanel,
  LMDCustomBevelPanel, LMDCustomParentPanel, LMDCustomGroupBox, LMDGroupBox,
  AppEvnts, ActnList, LMDCustomComponent, LMDApplicationCtrl,
  LMDGlobalHotKey, LMDWndProcComponent, LMDMouseBaseCtrl,
  LMDMousePositioner, lmdformA, LMDCustomHint, LMDHint,
  LMDContainerComponent, LMDBaseDialog, LMDTipDlg, LMDCustomShapeHint,
  LMDMessageHint, RzLstBox, RzChkLst, Gauges, Mask, ToolEdit, LMDFill,
  RxLookup, Grids, DBGrids;


type
  TFRM_A001RHTC = class(TForm)
    Panel2: TPanel;
    BTN_SAIR: TSpeedButton;
    BTN_IMPORTATCE: TSpeedButton;
    BTN_EXPORTATCE: TSpeedButton;
    LMDGroupBox2: TLMDGroupBox;
    DBGrid1: TDBGrid;
    LMDGroupBox1: TLMDGroupBox;
    SG_TABELAS: TStringGrid;
    LMDGroupBox3: TLMDGroupBox;
    CBE_ENTIDADE: TComboEdit;
    procedure BTN_SAIRClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure BTN_IMPORTATCEClick(Sender: TObject);
    procedure BTN_EXPORTATCEClick(Sender: TObject);
    procedure CBE_ENTIDADEButtonClick(Sender: TObject);
    procedure CBE_ENTIDADEChange(Sender: TObject);
    procedure CBE_ENTIDADEKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    vPessoaTxt : TextFile;
    cLocalDir : String;
    { Public declarations }
  end;

var
  FRM_A001RHTC: TFRM_A001RHTC;

implementation

uses MPLCtrl, UVariaveis, DMCTRL, A002RHTC, A003RHTC, D001RHTC, CtrlForms;

{$R *.DFM}

procedure TFRM_A001RHTC.BTN_SAIRClick(Sender: TObject);
begin
  Close;
end;

procedure TFRM_A001RHTC.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := oControlForms.Saidas(Self,[DTM_A001RHTC],NIL);
end;

procedure TFRM_A001RHTC.FormShow(Sender: TObject);
begin
  if not Acesso(nMatricula,'A001RHTC',DTM_A001RHTC,False) then
    close;
  Botoes(['BTN_CANCELAR'],'',False);
  FRM_A001RHTC.OnShow := nil;
 {é atribuido ao OnShow do Form o valor nil para que o mesmo seja executado apenas uma vez}
 {pelo fato que se outra aplicação for chamada pela tecla F3, e ao retornar da aplicação que foi chamada pela tecla}
 {o evento OnShow deste form não acontecerá, ou seja não será executado, para permanecer o mesmo status da aplicação}
 {quando o F3 foi chamado}

  SG_TABELAS.Cols[0].Strings[0] := 'ampPessoaPublica.txt';
  SG_TABELAS.Cols[0].Strings[1] := 'ampAposentadoria.txt';
  SG_TABELAS.Cols[0].Strings[2] := 'ampPensao.txt';
  SG_TABELAS.Cols[0].Strings[3] := 'ampUnidadeLotacao.txt';
  SG_TABELAS.Cols[0].Strings[4] := 'ampCargo.txt';
  SG_TABELAS.Cols[0].Strings[5] := 'ampClasseCargo.txt';
  SG_TABELAS.Cols[0].Strings[6] := 'ampEndereco.txt';
  SG_TABELAS.Cols[0].Strings[7] := 'ampAlocacaoMensal.txt';
  SG_TABELAS.Cols[0].Strings[8] := 'ampValoresMensais.txt';
  SG_TABELAS.Cols[0].Strings[9] := 'ampVeiculoPublicacao.txt';
  SG_TABELAS.Cols[0].Strings[10] := 'ampAtoMovimentacaoPessoal.txt';
  SG_TABELAS.Cols[0].Strings[11] := 'ampEdital.txt';
  SG_TABELAS.Cols[0].Strings[12] := 'ampMovimentacoes.txt';
  SG_TABELAS.Cols[0].Strings[13] := 'ampAtosCargo.txt';
  SG_TABELAS.Cols[0].Strings[14] := 'ampHistoricoCargo.txt';

  SG_TABELAS.ColWidths[1] := 350;

  SG_TABELAS.Cols[1].Strings[0] := 'Novas Pessoas e Mudanças em Dados Cadastrais';
  SG_TABELAS.Cols[1].Strings[1] := 'Novas Aposentadorias e Data de Término da Aposentadoria';
  SG_TABELAS.Cols[1].Strings[2] := 'Novas Pensões e Data de Dérmino da Pensão';
  SG_TABELAS.Cols[1].Strings[3] := 'Todas as Unidades de Lotação da Unidade Municipal';
  SG_TABELAS.Cols[1].Strings[4] := 'Todos os Cargos da Entidade Municipal';
  SG_TABELAS.Cols[1].Strings[5] := 'Todas as Classes de Cargos da Entidade Municipal';
  SG_TABELAS.Cols[1].Strings[6] := 'Novos Endereços e Complementações dos Antigos';
  SG_TABELAS.Cols[1].Strings[7] := 'Todos os Pagamentos do Mês';
  SG_TABELAS.Cols[1].Strings[8] := 'Vantagens e Descontos por Pagamento do Mês';
  SG_TABELAS.Cols[1].Strings[9] := 'Novos Veículos. Os Antigos Permanecem Inalterados';
  SG_TABELAS.Cols[1].Strings[10] := 'Novos Atos de Movimentações Pessoal e Complementações';
  SG_TABELAS.Cols[1].Strings[11] := 'Novos Editais e Complementações nos Editais já Cadastrados';
  SG_TABELAS.Cols[1].Strings[12] := 'Novas Movimentações de Pessoal. As Antigas Não Mudam';
  SG_TABELAS.Cols[1].Strings[13] := 'Novos Atos de Cargo e Complementações nos já Cadastrados';
  SG_TABELAS.Cols[1].Strings[14] := 'Novos Históricos. Os Antigos Permanecem Inalterados';
end;

procedure TFRM_A001RHTC.BTN_IMPORTATCEClick(Sender: TObject);
begin
  if CBE_ENTIDADE.Text <> '' then
    oControlForms.AtivaForm('FRM_A002RHTC',shModal,nil,false);
end;

procedure TFRM_A001RHTC.BTN_EXPORTATCEClick(Sender: TObject);
begin
  if CBE_ENTIDADE.Text <> '' then
    oControlForms.AtivaForm('FRM_A003RHTC',shModal,nil,false);
end;

procedure TFRM_A001RHTC.CBE_ENTIDADEButtonClick(Sender: TObject);
begin
  DTM_A001RHTC.Tabelas(False);
  CBE_ENTIDADE.OnChange := nil;
  CBE_ENTIDADE.Clear;
  CBE_ENTIDADE.OnChange := CBE_ENTIDADEChange;
  VerTeclas(VK_F2);
end;

procedure TFRM_A001RHTC.CBE_ENTIDADEChange(Sender: TObject);
begin
  DTM_A001RHTC.QRY_TBXENT.ParamByName('NIDTBXENT').AsInteger :=
  StrToInt(CBE_ENTIDADE.Text);
  DTM_A001RHTC.QRY_CADTCE.ParamByName('NIDTBXENT').AsInteger :=
  StrToInt(CBE_ENTIDADE.Text);
  DTM_A001RHTC.QRY_TAGTXT.ParamByName('NIDTBXENT').AsInteger :=
  StrToInt(CBE_ENTIDADE.Text);
  DTM_A001RHTC.Tabelas(False);
  DTM_A001RHTC.Tabelas(True);
  CBE_ENTIDADE.OnChange := nil;
  CBE_ENTIDADE.Text := DTM_A001RHTC.QRY_TBXENT.FieldByName('CDESCRIENT').AsString;
  DBGrid1.DataSource := DTM_A001RHTC.DTS_TAGTXT;
  CBE_ENTIDADE.OnChange := CBE_ENTIDADEChange;
end;

procedure TFRM_A001RHTC.CBE_ENTIDADEKeyPress(Sender: TObject;
  var Key: Char);
begin
  if (Key <> #9) and (Key <> #13) then
    Key := #0;

end;

end.


