unit A014RH;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  RxLookup, StdCtrls, RxDBComb, Grids, DBGrids, DBCtrls, Mask, ToolEdit,
  RXDBCtrl, LMDCustomControl, LMDCustomPanel, LMDCustomBevelPanel,
  LMDCustomParentPanel, LMDCustomPanelFill, LMDPanelFill, Buttons, ExtCtrls,
  LMDCustomGroupBox, LMDGroupBox, DB, LMDSimplePanel, ComCtrls,
  PageControlEx, ImgList;

type
  TFRM_A014RH = class(TForm)
    LMDGroupBox2: TLMDGroupBox;
    GRD_VTG: TDBGrid;
    Panel2: TPanel;
    BTN_IMPRIMIR: TSpeedButton;
    BTN_SAIR: TSpeedButton;
    BTN_AVANCAR: TSpeedButton;
    BTN_RETROCEDER: TSpeedButton;
    BTN_INCLUIR: TSpeedButton;
    BTN_ALTERAR: TSpeedButton;
    BTN_GRAVAR: TSpeedButton;
    BTN_CANCELAR: TSpeedButton;
    BTN_EXCLUIR: TSpeedButton;
    Label2: TLabel;
    DBL_NIDTBXVTG: TRxDBLookupCombo;
    DED_NPERCVGC: TDBEdit;
    Label1: TLabel;
    Label3: TLabel;
    DED_NVALORSLR: TDBEdit;
    DBD_DDATAINI: TDBDateEdit;
    Label4: TLabel;
    Label5: TLabel;
    DBD_DDATAFIM: TDBDateEdit;
    procedure BTN_SAIRClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure BTN_AVANCARClick(Sender: TObject);
    procedure BTN_RETROCEDERClick(Sender: TObject);
    procedure BTN_INCLUIRClick(Sender: TObject);
    procedure BTN_ALTERARClick(Sender: TObject);
    procedure BTN_GRAVARClick(Sender: TObject);
    procedure BTN_CANCELARClick(Sender: TObject);
    procedure BTN_EXCLUIRClick(Sender: TObject);
    procedure DBL_NIDTBXVTGChange(Sender: TObject);
    procedure BTN_IMPRIMIRClick(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
    nIdFicha : Integer;
    nSalBase : Double;
   
  end;

var
  FRM_A014RH: TFRM_A014RH;

implementation

uses UVariaveis, MPLCtrl, CtrlForms, D014RH;

{$R *.DFM}

procedure TFRM_A014RH.BTN_SAIRClick(Sender: TObject);
begin
   Close ;
end;

procedure TFRM_A014RH.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  //fecha os datasets do DataModule e libera o form e o DataModule da memoria
  Action:= oControlForms.Saidas(Self,[DTM_A014RH],DTM_A014RH.DTS_119.DataSet);

end;

procedure TFRM_A014RH.FormShow(Sender: TObject);
begin
  //verifica o acesso do usuário a objetos e campos da aplicação
  if not Acesso(nMatricula,'A014RH',DTM_A014RH) then
    close;

  //muda o estado dos botõe da aplicação
  Botoes(['Btn_Cancelar','Btn_Gravar'],'FRM_A014RH',false);

  DTM_A014RH.QRY_119.ParamByName('nidtagffu').asInteger := nIdFicha;
  DTM_A014RH.QRY_119.ParamByName('nvalorsal').asFloat := nSalBase;
  DTM_A014RH.QRY_119.ExecSql;
  DTM_A014RH.QRY_119AfterScroll(DTM_A014RH.QRY_119);
  DBL_NIDTBXVTGChange(Sender);
  FRM_A014RH.OnShow := nil;

 {é atribuido ao OnShow do Form o valor nil para que o mesmo seja executado apenas uma vez}
 {pelo fato que se outra aplicação for chamada pela tecla F3, e ao retornar da aplicação que foi chamada pela tecla}
 {o evento OnShow deste form não acontecerá, ou seja não será executado, para permanecer o mesmo status da aplicação}
 {quando o F3 foi chamado}
end;

procedure TFRM_A014RH.BTN_AVANCARClick(Sender: TObject);
begin
  DBGenerica(DTM_A014RH.DTS_119,'Conexao',0,3,GRD_VTG,false);
  DBL_NIDTBXVTGChange(Sender);
end;

procedure TFRM_A014RH.BTN_RETROCEDERClick(Sender: TObject);
begin
  DBGenerica(DTM_A014RH.DTS_119,'Conexao',0,2,GRD_VTG,false);
  DBL_NIDTBXVTGChange(Sender);
end;

procedure TFRM_A014RH.BTN_INCLUIRClick(Sender: TObject);
begin
  DBGenerica(DTM_A014RH.DTS_119,'Conexao',1,0,GRD_VTG,false);
  DTM_A014RH.DTS_119.DataSet.FieldByName('nidtagvgc').asInteger :=0;
  DTM_A014RH.DTS_119.DataSet.FieldByName('nidtagffu').asInteger := nidFicha;
  Botoes(['Btn_Cancelar','Btn_Sair','Btn_Gravar'],'FRM_A014RH',true);
  DBL_NIDTBXVTGChange(Sender);
end;

procedure TFRM_A014RH.BTN_ALTERARClick(Sender: TObject);
begin
  Botoes(['Btn_Cancelar','Btn_Gravar','Btn_Sair'],'FRM_A014RH',true);
  DBGenerica(DTM_A014RH.DTS_119,'Conexao',2,0,GRD_VTG,false);
end;

procedure TFRM_A014RH.BTN_GRAVARClick(Sender: TObject);
begin
  with DTM_A014RH do
    begin
      if LiberadoGravacao(FRM_A014RH,DTS_119) then
        begin
          DTS_119.DataSet.UpdateRecord;
          if (DTS_119.DataSet.FieldByName('npercvgc').value < DTS_098.DataSet.FieldByName('nperinic').value) or
             (DTS_119.DataSet.FieldByName('npercvgc').value > DTS_098.DataSet.FieldByName('nperfim').value) then
            begin
              //avisa ao usuário
              MessageDlg('Percentual fora da faixa do percentual da vantagem!',mtInformation,[mbOk],0);
              //retorna o focus para o campo de % vantagem
              DED_NPERCVGC.SetFocus;
              exit;
            end;

          if not(DBD_DDATAFIM.Field.IsNull) then
            if DBD_DDATAFIM.Date < DBD_DDATAINI.Date then
              begin
                MessageDlg('Data Final da vantagem deve ser maior que a data inicial!',
                mtInformation,[mbok],0);
                DBD_DDATAFIM.SetFocus;
                exit;
              end;
          DBGenerica(DTM_A014RH.DTS_119,'Conexao',4,0,GRD_VTG,false);
          if lResp then
            begin
              Botoes(['Btn_Gravar','Btn_Cancelar'],'FRM_A014RH',false);
              DTM_A014RH.QRY_119AfterScroll(DTM_A014RH.QRY_119);
            end;

        end;
    end;
end;

procedure TFRM_A014RH.BTN_CANCELARClick(Sender: TObject);
begin
   DBGenerica(DTM_A014RH.DTS_119,'Conexao',3, 0,GRD_VTG,false);
   Botoes(['Btn_Cancelar', 'Btn_Gravar'],'FRM_A014RH',false);
   DTM_A014RH.QRY_119AfterScroll(DTM_A014RH.QRY_119);
   DBL_NIDTBXVTGChange(Sender);
end;

procedure TFRM_A014RH.BTN_EXCLUIRClick(Sender: TObject);
begin
  DBGenerica(DTM_A014RH.DTS_119,'Conexao',5,0,GRD_VTG,false);
  DTM_A014RH.QRY_119AfterScroll(DTM_A014RH.QRY_119);
  DBL_NIDTBXVTGChange(Sender);
end;

procedure TFRM_A014RH.DBL_NIDTBXVTGChange(Sender: TObject);
begin
  if DBL_NIDTBXVTG.Text <> '' then
    DED_NPERCVGC.Hint := 'Percentual de ' +
    DTM_A014RH.DTS_098.DataSet.FieldByName('nperinic').asString + ' ate ' +
    DTM_A014RH.DTS_098.DataSet.FieldByName('nperfim').asString
  else
    DED_NPERCVGC.Hint := 'Percentual de ... ate ...';

  if DTM_A014RH.DTS_119.DataSet.State in [dsInsert,dsEdit] then
    if DBL_NIDTBXVTG.Text <> '' then
      begin
        if DTM_A014RH.DTS_098.DataSet.FieldByName('nvalorslr').IsNull then
          DTM_A014RH.DTS_119.DataSet.FieldByName('nvalorslr').AsFloat := nSalBase
        else
          DTM_A014RH.DTS_119.DataSet.FieldByName('nvalorslr').AsFloat :=
          DTM_A014RH.DTS_098.DataSet.FieldByName('nvalorslr').AsFloat;
      end
    else
      DTM_A014RH.DTS_119.DataSet.FieldByName('nvalorslr').AsFloat := 0.00;

end;

procedure TFRM_A014RH.BTN_IMPRIMIRClick(Sender: TObject);
begin
  RelCadastro(DTM_A014RH.QRY_119,'Vantagens Concedidas','tagvgc.nidtagffu = ' +
  DTM_A014RH.QRY_119.FieldByName('nidtagffu').asString);
end;

end.



