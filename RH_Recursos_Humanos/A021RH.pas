unit A021RH;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ToolEdit, RxLookup, DBCtrls, Grids, DBGrids, LMDCustomPanelFill,
  LMDPanelFill, StdCtrls, Mask, RXDBCtrl, LMDCustomControl, LMDCustomPanel,
  LMDCustomBevelPanel, LMDCustomParentPanel, LMDCustomGroupBox,
  LMDGroupBox, Buttons, ExtCtrls;

type
  TFRM_A021RH = class(TForm)
    Panel2: TPanel;
    Btn_Alterar: TSpeedButton;
    Btn_Gravar: TSpeedButton;
    Btn_Excluir: TSpeedButton;
    BTN_SAIR: TSpeedButton;
    Btn_Avancar: TSpeedButton;
    Btn_Retroceder: TSpeedButton;
    Btn_Cancelar: TSpeedButton;
    Btn_Imprimir: TSpeedButton;
    GPB_SALARIO: TLMDGroupBox;
    DBG_VLR: TDBGrid;
    procedure BTN_SAIRClick(Sender: TObject);
    procedure Btn_AvancarClick(Sender: TObject);
    procedure Btn_RetrocederClick(Sender: TObject);
    procedure Btn_AlterarClick(Sender: TObject);
    procedure Btn_GravarClick(Sender: TObject);
    procedure Btn_CancelarClick(Sender: TObject);
    procedure Btn_ExcluirClick(Sender: TObject);
    procedure Btn_ImprimirClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure DBG_VLRMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRM_A021RH: TFRM_A021RH;

implementation

uses D021RH, D020RH, MPLCtrl, MPLLib, DMCTRL, D018RH, UVariaveis;

{$R *.DFM}

procedure TFRM_A021RH.BTN_SAIRClick(Sender: TObject);
begin
   close;
end;

procedure TFRM_A021RH.Btn_AvancarClick(Sender: TObject);
begin
   //proximo registro do dataset
  DBGenerica(DTM_A021RH.DTS_080,'Conexao',0,3);
end;

procedure TFRM_A021RH.Btn_RetrocederClick(Sender: TObject);
begin
  //registro anterior do dataset
  DBGenerica(DTM_A021RH.DTS_080,'Conexao',0,2);
end;

procedure TFRM_A021RH.Btn_AlterarClick(Sender: TObject);
begin
 Botoes(['Btn_Cancelar','Btn_Gravar'],'FRM_A021RH',true);
 DTM_A021RH.QRY_080.Edit;
end;

procedure TFRM_A021RH.Btn_GravarClick(Sender: TObject);
begin
  {Inicia uma Transação no Banco}
  DMControle.Conexao.StartTransaction;
  DBG_VLR.DataSource.DataSet.DisableControls;
  try
    {Aplica as modificações na TBL_UPA}
    DTM_A021RH.QRY_080.ApplyUpdates;
    DTM_A021RH.QRY_080.Refresh;
    {Comita no Banco}
    DMControle.Conexao.Commit;
  except
    {Se houve erro...}
    on E : Exception do
      begin
        MessageDlg('Não foi possivel efetuar a gravação de todos os dados,'+#13+
                   'por isso está operação será cancelada para manter a integridade'+#13+
                   'dos seus dados!'+#13+'Erro: '+E.Message,mtError,[mbOk],0);
        DMControle.Conexao.RollBack;
      end;
  end;
 DBG_VLR.DataSource.DataSet.EnableControls;
 Botoes(['Btn_Gravar','Btn_Cancelar'],'FRM_A021RH',false);
end;

procedure TFRM_A021RH.Btn_CancelarClick(Sender: TObject);
begin
   Botoes(['Btn_Cancelar','Btn_Gravar'],'FRM_A021RH',false);
   DTM_A021RH.QRY_080.CancelUpdates;
end;

procedure TFRM_A021RH.Btn_ExcluirClick(Sender: TObject);
begin
  DTM_A021RH.QRY_080.Delete;
  Btn_GravarClick(Sender);
end;

procedure TFRM_A021RH.Btn_ImprimirClick(Sender: TObject);
begin
  RelCadastro(DTM_A021RH.QRY_080,'Valores Salariais');
end;

procedure TFRM_A021RH.FormClose(Sender: TObject; var Action: TCloseAction);
begin
    Action:= oControlForms.Saidas(Self,[DTM_A021RH],DTM_A021RH.DTS_080.DataSet);
end;

procedure TFRM_A021RH.FormShow(Sender: TObject);
begin
  if not Acesso(nMatricula,'A021RH',DTM_A021RH) then
    close;
  Botoes(['Btn_Cancelar','Btn_Gravar'],'FRM_A021RH',false);
  FRM_A021RH.OnShow := nil;
 {é atribuido ao OnShow do Form o valor nil para que o mesmo seja executado apenas uma vez}
 {pelo fato que se outra aplicação for chamada pela tecla F3, e ao retornar da aplicação que foi chamada pela tecla}
 {o evento OnShow deste form não acontecerá, ou seja não será executado, para permanecer o mesmo status da aplicação}
 {quando o F3 foi chamado}
 GPB_SALARIO.Caption := ' '+DTM_A020RH.QRY_092.FieldByName('DAT_TABELA').AsString+' ';
 DTM_A021RH.QRY_080.Close;
 DTM_A021RH.QRY_080.ParamByName('nidtbxslr').AsInteger :=
 DTM_A020RH.QRY_092.FieldByName('nidtbxslr').AsInteger;
 DTM_A021RH.QRY_080.Open;
end;

procedure TFRM_A021RH.DBG_VLRMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  //chama pesquisa de grid
  if Button = mbRight then
    ChamaPesqGrid(DTM_A021RH.QRY_080,nil,'cclasse','Descrição da Classe');
end;



end.
