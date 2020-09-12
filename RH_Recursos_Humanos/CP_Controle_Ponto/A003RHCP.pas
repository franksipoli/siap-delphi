unit A003RHCP;

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
  LMDMessageHint, Mask, DBCtrls, ToolEdit, RXDBCtrl, RxLookup, Grids,
  DBGrids, DB;


type
  TFRM_A003RHCP = class(TForm)
    Panel2: TPanel;
    Btn_Incluir: TSpeedButton;
    Btn_Alterar: TSpeedButton;
    Btn_Gravar: TSpeedButton;
    Btn_Localizar: TSpeedButton;
    Btn_Imprimir: TSpeedButton;
    Btn_Sair: TSpeedButton;
    Btn_Avancar: TSpeedButton;
    Btn_Retroceder: TSpeedButton;
    Btn_Cancelar: TSpeedButton;
    Btn_Excluir: TSpeedButton;
    LMDGroupBox3: TLMDGroupBox;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label1: TLabel;
    Label6: TLabel;
    DED_CNOMESRV: TDBEdit;
    DED_NCRTPS: TDBEdit;
    DED_NSERIE: TDBEdit;
    DBL_NIDCADHOR: TRxDBLookupCombo;
    DBC_NIDCADCAG: TRxDBComboEdit;
    DED_CDESCCARGO: TDBEdit;
    EDT_NMATRICULA: TEdit;
    LMDGroupBox1: TLMDGroupBox;
    GRD_SERVIDORES: TDBGrid;
    procedure Btn_SairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure Btn_LocalizarClick(Sender: TObject);
    procedure Btn_AvancarClick(Sender: TObject);
    procedure Btn_RetrocederClick(Sender: TObject);
    procedure Btn_IncluirClick(Sender: TObject);
    procedure Btn_AlterarClick(Sender: TObject);
    procedure Btn_ExcluirClick(Sender: TObject);
    procedure Btn_GravarClick(Sender: TObject);
    procedure Btn_CancelarClick(Sender: TObject);
    procedure Btn_ImprimirClick(Sender: TObject);
    procedure DBC_NIDCADCAGButtonClick(Sender: TObject);
    procedure DBC_NIDCADCAGEnter(Sender: TObject);
    procedure DBC_NIDCADCAGExit(Sender: TObject);
    procedure EDT_NMATRICULAEnter(Sender: TObject);
    procedure EDT_NMATRICULAKeyPress(Sender: TObject; var Key: Char);
    procedure DBC_NIDCADCAGKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
    cValor, cValor2 : String;
  end;

var
  FRM_A003RHCP: TFRM_A003RHCP;

implementation

uses MPLCtrl, D003RHCP, DMCTRL, MPLLib, UVariaveis;

{$R *.DFM}

procedure TFRM_A003RHCP.Btn_SairClick(Sender: TObject);
begin
  Close;
end;

procedure TFRM_A003RHCP.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := oControlForms.Saidas(Sender,[DTM_A003RHCP],DTM_A003RHCP.DTS_006.DataSet);
end;

procedure TFRM_A003RHCP.FormShow(Sender: TObject);
begin
  Acesso(nMatricula,'A003RHCP',DTM_A003RHCP);
  Botoes(['Btn_Cancelar', 'Btn_Gravar'],'FRM_A003RHCP',false);
  if DTM_A003RHCP.DTS_010.DataSet.RecordCount < 16 then
    DBL_NIDCADHOR.DropDownCount := DTM_A003RHCP.DTS_010.DataSet.RecordCount;
  FRM_A003RHCP.OnShow := nil;
 {é atribuido ao OnShow do Form o valor nil para que o mesmo seja executado apenas uma vez}
 {pelo fato que se outra aplicação for chamada pela tecla F3, e ao retornar da aplicação que foi chamada pela tecla}
 {o evento OnShow deste form não acontecerá, ou seja não será executado, para permanecer o mesmo status da aplicação}
 {quando o F3 foi chamado}
end;

procedure TFRM_A003RHCP.Btn_LocalizarClick(Sender: TObject);
begin
 Pesquisa(DTM_A003RHCP.QRY_006,true,'','');
end;

procedure TFRM_A003RHCP.Btn_AvancarClick(Sender: TObject);
begin
 //proximo registro do dataset
 DBGenerica(DTM_A003RHCP.DTS_006,'Conexao',0,3);
end;

procedure TFRM_A003RHCP.Btn_RetrocederClick(Sender: TObject);
begin
 //registro anterior do dataset
 DBGenerica(DTM_A003RHCP.DTS_006,'Conexao',0,2);
end;

procedure TFRM_A003RHCP.Btn_IncluirClick(Sender: TObject);
begin
  //inclui um registro no dataset
  DBGenerica(DTM_A003RHCP.DTS_006,'Conexao',1,0,GRD_SERVIDORES);
  Botoes(['Btn_Cancelar','Btn_Gravar','Btn_Sair'],'FRM_A003RHCP',true);
  DTM_A003RHCP.DTS_006.DataSet.FieldByName('nidcadsev').AsInteger := 0;
  EDT_NMATRICULA.Text := '';
  EDT_NMATRICULA.SetFocus;

end;

procedure TFRM_A003RHCP.Btn_AlterarClick(Sender: TObject);
begin
  cValor := EDT_NMATRICULA.Text;
  Botoes(['Btn_Cancelar','Btn_Gravar', 'Btn_Sair'],'FRM_A003RHCP',true);
  //edita registro do dataset
  DBGenerica(DTM_A003RHCP.DTS_006,'Conexao',2,0,GRD_SERVIDORES);
  if not lResp then
    Botoes(['Btn_Cancelar', 'Btn_Gravar'],'FRM_A003RHCP',false);
end;

procedure TFRM_A003RHCP.Btn_ExcluirClick(Sender: TObject);
begin
  //exclui registro do dataset
  DBGenerica(DTM_A003RHCP.DTS_006,'Conexao',5,0);
end;

procedure TFRM_A003RHCP.Btn_GravarClick(Sender: TObject);
  var
    cKey : Char;
begin
  if LiberadoGravacao(FRM_A003RHCP,DTM_A003RHCP.DTS_006) then
    begin
      cKey := #13;
      EDT_NMATRICULAKeyPress(EDT_NMATRICULA,cKey);
      if EDT_NMATRICULA.Tag = 1 then
        begin
          EDT_NMATRICULA.Tag := 0;
          exit;
        end;
      DTM_A003RHCP.DTS_006.DataSet.FieldByName('NMATRICULA').AsInteger := StrToInt(EDT_NMATRICULA.Text);
      //grava dados no dataset
      DBGenerica(DTM_A003RHCP.DTS_006,'Conexao',4,0,GRD_SERVIDORES);
      if lResp then
        Botoes(['Btn_Gravar','Btn_Cancelar'],'FRM_A003RHCP',false);


    end;
end;

procedure TFRM_A003RHCP.Btn_CancelarClick(Sender: TObject);
begin
 //cancela a operação corrente do dataset
 DBGenerica(DTM_A003RHCP.DTS_006,'Conexao',3, 0,GRD_SERVIDORES);
 Botoes(['Btn_Cancelar', 'Btn_Gravar'],'FRM_A003RHCP',false);
end;

procedure TFRM_A003RHCP.Btn_ImprimirClick(Sender: TObject);
begin
 RelCadastro(DTM_A003RHCP.QRY_006,'Cadastro de Servidores');
end;

procedure TFRM_A003RHCP.DBC_NIDCADCAGButtonClick(Sender: TObject);
begin
  VerTeclas(VK_F2);
end;

procedure TFRM_A003RHCP.DBC_NIDCADCAGEnter(Sender: TObject);
begin
  cValor2 := DBC_NIDCADCAG.Text;
end;

procedure TFRM_A003RHCP.DBC_NIDCADCAGExit(Sender: TObject);
begin
{  with DTM_A003RHCP do
    begin
      if DTS_006.DataSet.State in [dsInsert,dsEdit] then
        if (cValor <> DBC_NIDCADCAG.Text) and (Trim(DBC_NIDCADCAG.Text)<> '') then
          begin
            QRY_009.ParamByName('nidcadcag').AsInteger := StrToInt(DBC_NIDCADCAG.Text);
            QRY_009.ExecSQL;
            if QRY_009.RecordCount = 0 then
              begin
                MessageDlg('Cargo não encontrado!',mtInformation,[mbOk],0);
                if Trim(cValor) <> '' then
                  begin
                    DTS_006.DataSet.FieldByName('nidcadcag').AsInteger := StrToInt(cValor);
                    QRY_009.ParamByName('nidcadcag').AsInteger := StrToInt(cValor);
                    QRY_009.ExecSQL;
                    cValor:='';
                   // DBC_NIDCADCAG.Text := cValor;
                  end;
                DBC_NIDCADCAG.SetFocus;
              end;

          end;
    end;
}
end;

procedure TFRM_A003RHCP.EDT_NMATRICULAEnter(Sender: TObject);
begin
  cValor := EDT_NMATRICULA.Text;
end;

procedure TFRM_A003RHCP.EDT_NMATRICULAKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
    begin
      with DTM_A003RHCP do
        begin
          if DTS_006.DataSet.State = dsBrowse then
            begin
              if not(DTS_006.DataSet.Locate('nMatricula',StrToInt(EDT_NMATRICULA.Text),[])) then
                begin
                  MessageDlg('Servidor não encontrado!',mtInformation,[mbOk],0);
                  if DTS_006.DataSet.FieldByName('nMatricula').AsInteger <> null then
                    EDT_NMATRICULA.Text := IntToStr(DTS_006.DataSet.FieldByName('nMatricula').AsInteger);
                  EDT_NMATRICULA.SetFocus;
               end;
            end
          else
            begin
              EDT_NMATRICULA.Tag := 0;
              if DTS_006.DataSet.State = dsInsert then
                cValor := '00000';
              if StrToInt(EDT_NMATRICULA.Text) <> StrToInt(cValor) then
                begin
                  with DMControle do
                    begin
                      QryTemp.SQL.Clear;
                      QryTemp.SQL.Add('select * from Servidor where nMatricula = :nMatricula');
                      QryTemp.Params[0].AsInteger := StrToInt(EDT_NMATRICULA.Text);
                      QryTemp.Open;
                      if QryTemp.RecordCount <> 0 then
                        begin
                          MessageDlg('Matricula já cadastrada. Favor escolher outra.',mtInformation,[mbOk],0);
                          if DTS_006.DataSet.State = dsEdit then
                            EDT_NMATRICULA.Text := IntToStr(DTS_006.DataSet.FieldByName('nMatricula').AsInteger);
                          EDT_NMATRICULA.SetFocus;
                          EDT_NMATRICULA.Tag := 1;
                        end;
                      QryTemp.Close;
                      QryTemp.SQL.Clear;
                    end;
                end;
              end;
        end;
      exit;
    end;
  Key := ValEditNumerico(Key);
end;

procedure TFRM_A003RHCP.DBC_NIDCADCAGKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key = #13 then
    begin
       with DTM_A003RHCP do
        begin
          if DTS_006.DataSet.State in [dsInsert,dsEdit] then
            if (cValor2 <> DBC_NIDCADCAG.Text) and (Trim(DBC_NIDCADCAG.Text)<> '') then
              begin
                QRY_009.ParamByName('nidcadcag').AsInteger := StrToInt(DBC_NIDCADCAG.Text);
                QRY_009.ExecSQL;
                if QRY_009.RecordCount = 0 then
                  begin
                    MessageDlg('Cargo não encontrado!',mtInformation,[mbOk],0);
                    if Trim(cValor2) <> '' then
                      begin
                        DTS_006.DataSet.FieldByName('nidcadcag').AsInteger := StrToInt(cValor2);
                        QRY_009.ParamByName('nidcadcag').AsInteger := StrToInt(cValor2);
                        QRY_009.ExecSQL;
                        cValor2:='';
                       // DBC_NIDCADCAG.Text := cValor2;
                      end;
                    DBC_NIDCADCAG.SetFocus;
                  end;

              end;
        end;
    end;
end;

end.




