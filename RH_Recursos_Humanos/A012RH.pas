unit A012RH;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  RxLookup, StdCtrls, RxDBComb, Grids, DBGrids, DBCtrls, Mask, ToolEdit,
  RXDBCtrl, LMDCustomControl, LMDCustomPanel, LMDCustomBevelPanel,
  LMDCustomParentPanel, LMDCustomPanelFill, LMDPanelFill, Buttons, ExtCtrls,
  LMDCustomGroupBox, LMDGroupBox, DB, LMDSimplePanel, ComCtrls,
  PageControlEx, ImgList;

type
  TFRM_A012RH = class(TForm)
    Panel2: TPanel;
    Btn_Alterar: TSpeedButton;
    Btn_Gravar: TSpeedButton;
    BTN_SAIR: TSpeedButton;
    Btn_Cancelar: TSpeedButton;
    LMDGroupBox2: TLMDGroupBox;
    GRP_BASE: TLMDGroupBox;
    Label19: TLabel;
    Label3: TLabel;
    Label7: TLabel;
    DBL_NIDTBXSLR: TRxDBLookupCombo;
    DBL_NIDTAGSLR: TRxDBLookupCombo;
    DBL_NIDTAGSLR_1: TRxDBLookupCombo;
    DED_LKP_SAL: TDBEdit;
    Label4: TLabel;
    GRP_OBITO: TLMDGroupBox;
    Label1: TLabel;
    DBD_DDTOBITO: TDBDateEdit;
    DED_CMOTIVO: TDBEdit;
    Label5: TLabel;
    Label6: TLabel;
    DED_CULTIMOCRG: TDBEdit;
    LMDPanelFill1: TLMDPanelFill;
    BTN_RETROCEDER1: TSpeedButton;
    BTN_AVANCAR1: TSpeedButton;
    DBG_PENS: TDBGrid;
    procedure BTN_SAIRClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure DBL_NIDTBXSLRChange(Sender: TObject);
    procedure DBL_NIDTAGSLRChange(Sender: TObject);
    procedure Btn_AlterarClick(Sender: TObject);
    procedure Btn_GravarClick(Sender: TObject);
    procedure Btn_CancelarClick(Sender: TObject);
    procedure DBL_NIDTAGSLR_1Change(Sender: TObject);
    procedure BTN_AVANCAR1Click(Sender: TObject);
    procedure BTN_RETROCEDER1Click(Sender: TObject);

  private
    procedure AlteraTabSalarial(LookupClasse,
      LookupNiveis: TRxDBLookupCombo);
    procedure AlteraClasseSal(Sender: TRxDBLookupCombo);
    { Private declarations }
  public
    { Public declarations }
    nIdObito : integer;
  end;

var
  FRM_A012RH: TFRM_A012RH;

implementation

{$R *.DFM}

Uses UVariaveis, MPLCtrl, D012RH;

procedure TFRM_A012RH.BTN_SAIRClick(Sender: TObject);
begin
    close;
end;

procedure TFRM_A012RH.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  //fecha os datasets do DataModule e libera o form e o DataModule da memoria
  Action:= oControlForms.Saidas(Self,[DTM_A012RH],DTM_A012RH.DTS_103.DataSet);
end;

procedure TFRM_A012RH.FormShow(Sender: TObject);
begin
 //verifica o acesso do usuário a objetos e campos da aplicação
  if not Acesso(nMatricula,'A012RH',DTM_A012RH) then
    close;

  //muda o estado dos botõe da aplicação
  Botoes(['Btn_Cancelar','Btn_Gravar'],'FRM_A012RH',false);

  DTM_A012RH.QRY_103.ParamByName('nidtagobt').asInteger := nIdObito;
  DTM_A012RH.QRY_103.ExecSql;

  Caption := 'Óbito de ' + DTM_A012RH.QRY_103.FieldByName('cnomegrl').asString;


  FRM_A012RH.OnShow := nil;

 {é atribuido ao OnShow do Form o valor nil para que o mesmo seja executado apenas uma vez}
 {pelo fato que se outra aplicação for chamada pela tecla F3, e ao retornar da aplicação que foi chamada pela tecla}
 {o evento OnShow deste form não acontecerá, ou seja não será executado, para permanecer o mesmo status da aplicação}
 {quando o F3 foi chamado}

end;

procedure TFRM_A012RH.AlteraTabSalarial(LookupClasse, LookupNiveis: TRxDBLookupCombo);
begin
  with DTM_A012RH do
    begin
      //se não houver um dbLookup de classe salarial
      if LookupClasse = nil then
        //sai da rotina
        exit;
      //se a origem de pensao estiver em edicao
      if (DTS_103.DataSet.State = dsEdit) then
        //seleciona item em branco no dbLookup de classe salarial
        LookupClasse.KeyValue := 0;
      //se a tabela salarial não possuir classe
      if QRY_080.FieldByName('cclasse').value = null then
        begin
          //seleciona os niveis com não possue classe
          QRY_080_1.SQL.Clear;
          QRY_080_1.SQL.Add('select nnivel, nidtagslr, nvalorslr from');
          QRY_080_1.SQL.Add('tagslr where nidtbxslr = :nidtbxslr');
          QRY_080_1.SQL.Add('and cclasse is null');
          QRY_080_1.ParamByName('nidtbxslr').asInteger :=
          QRY_092.FieldByName('nidtbxslr').asInteger;
          QRY_080_1.ExecSQL;
        end
      else
        begin
          //seleciona os niveis de uma classe
          QRY_080_1.SQL.Clear;
          QRY_080_1.SQL.Add('select nnivel, nidtagslr, nvalorslr from');
          QRY_080_1.SQL.Add('tagslr where nidtbxslr = :nidtbxslr');
          QRY_080_1.SQL.Add('and cclasse = :cclasse');
          QRY_080_1.ParamByName('nidtbxslr').asInteger :=
          QRY_092.FieldByName('nidtbxslr').asInteger;
          QRY_080_1.ParamByName('cclasse').asString :=
          QRY_080.FieldByName('cclasse').asString;
          QRY_080_1.ExecSQL;
        end;
      //chama rotina para alterar classe salarial
      AlteraClasseSal(LookupNiveis);
    end;

end;



procedure TFRM_A012RH.AlteraClasseSal(Sender: TRxDBLookupCombo);
begin
  with DTM_A012RH do
    begin
      //se a orgiem de pensao estiver em edição
      //e o parametro for valido
      if (DTS_103.DataSet.State = dsEdit) and
         (Sender <> nil)then
        begin
          //seleciona item em branco no dbLookup
          Sender.KeyValue := 0;
          //retira o valor salarial da origem de pensao
          DTS_103.DataSet.FieldByName('nidtagslr').value := null;
        end;
    end;
end;


procedure TFRM_A012RH.DBL_NIDTBXSLRChange(Sender: TObject);
begin
  AlteraTabSalarial(DBL_NIDTAGSLR,DBL_NIDTAGSLR_1);
end;

procedure TFRM_A012RH.DBL_NIDTAGSLRChange(Sender: TObject);
begin
  AlteraClasseSal(DBL_NIDTAGSLR_1);
end;

procedure TFRM_A012RH.Btn_AlterarClick(Sender: TObject);
begin
  //coloca em estado de alteração a tabela de obito
  DBGenerica(DTM_A012RH.DTS_103,'Conexao',2,0,NIL,false);
  Botoes(['Btn_Cancelar','Btn_Gravar','Btn_Sair'],'FRM_A012RH',true);
end;

procedure TFRM_A012RH.Btn_GravarClick(Sender: TObject);
begin
  if LiberadoGravacao(FRM_A012RH,DTM_A012RH.DTS_103) then
    begin
      DBGenerica(DTM_A012RH.DTS_103,'Conexao',4,0,nil,false);
      if lResp then
        Botoes(['Btn_Gravar','Btn_Cancelar'],'FRM_A012RH',false);
    end;
end;

procedure TFRM_A012RH.Btn_CancelarClick(Sender: TObject);
begin
   DBGenerica(DTM_A012RH.DTS_103,'Conexao',3, 0,NIL,false);
   Botoes(['Btn_Cancelar', 'Btn_Gravar'],'FRM_A012RH',false);
   DTM_A012RH.DTS_077.DataSet.Refresh;
end;

procedure TFRM_A012RH.DBL_NIDTAGSLR_1Change(Sender: TObject);
begin
  if DTM_A012RH.DTS_103.DataSet.State = dsEdit then
    DTM_A012RH.DTS_077.DataSet.Refresh;
end;

procedure TFRM_A012RH.BTN_AVANCAR1Click(Sender: TObject);
begin
  DTM_A012RH.DTS_077.DataSet.Next;
end;

procedure TFRM_A012RH.BTN_RETROCEDER1Click(Sender: TObject);
begin
  DTM_A012RH.DTS_077.DataSet.Prior;
end;

end.



