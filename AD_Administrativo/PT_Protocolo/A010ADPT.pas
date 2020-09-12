unit A010ADPT;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Buttons, LMDCustomControl, LMDCustomPanel, LMDCustomBevelPanel,
  LMDCustomParentPanel, LMDCustomPanelFill, LMDPanelFill, DBCtrls,
  StdCtrls, Mask, ToolEdit, RXDBCtrl, Grids, DBGrids;

type
  TFRM_A010ADPT = class(TForm)
    LMDPanelFill5: TLMDPanelFill;
    Btn_Retroceder1: TSpeedButton;
    Btn_Avancar1: TSpeedButton;
    Btn_Excluir1: TSpeedButton;
    DBGrid1: TDBGrid;
    Label1: TLabel;
    Label9: TLabel;
    BTN_SAIR: TSpeedButton;
    CBE_CNOMEREQ: TComboEdit;
    procedure CBE_CCPFCNPJExit(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BTN_SAIRClick(Sender: TObject);
    procedure Btn_Excluir1Click(Sender: TObject);
    procedure Btn_Avancar1Click(Sender: TObject);
    procedure Btn_Retroceder1Click(Sender: TObject);
    procedure CBE_CNOMEREQButtonClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
    FProtocolo: Integer;
    procedure SetProtocolo(Numero: Integer);
    function GetProtocolo: Integer;
  public
    { Public declarations }
     lRequerente: Boolean;
     property Protocolo: Integer read GetProtocolo write SetProtocolo;
  end;

var
  FRM_A010ADPT: TFRM_A010ADPT;

implementation

uses D002ADPT, DMCTRL, MPLCtrl, UVariaveis, A002ADPT, Pesquisa, A006;

{$R *.DFM}

function TFRM_A010ADPT.GetProtocolo: Integer;
begin
  Result := FProtocolo;
end;

procedure TFRM_A010ADPT.SetProtocolo(Numero: Integer);
begin
  FProtocolo := Numero;
end;

procedure TFRM_A010ADPT.CBE_CCPFCNPJExit(Sender: TObject);
  var
    cId: String;
begin
  cId := '';
  if CBE_CNOMEREQ.Text <> '' then
    begin

      with DMControle do
        begin
          if FRM_PESQUISA <> nil then
            begin
              cId := CBE_CNOMEREQ.Text;
              PrepareQryTemp('select cnome from reqproto where cidreq = :cidreq');
              QryTemp.ParamByName('cidreq').asString := CBE_CNOMEREQ.Text;
              QryTemp.ExecSQL;
              CBE_CNOMEREQ.Text := QryTemp.FieldByName('cnome').asString;
            end
          else
            begin
              PrepareQryTemp('select cidreq from reqproto where cnome = :cnome');
              QryTemp.ParamByName('cnome').asString := CBE_CNOMEREQ.Text;
              QryTemp.ExecSQL;
              if QryTemp.RecordCount = 0 then
                begin
                  MessageDlg('Nome não cadastrado',mtInformation,[mbOk],0);
                  CBE_CNOMEREQ.SetFocus;
                end
              else
                cId := QryTemp.FieldByName('cidreq').asString;
            end;
          QryTemp.Close;
          QryTemp.SQL.Clear;
          if cId <> '' then
            begin
              DTM_A002ADPT.QRY_161.Refresh;
              if lRequerente then
                FRM_A002ADPT.InsertRequerente(cId,CBE_CNOMEREQ.Text)
              else
                FRM_A002ADPT.InsertInteressado(cId,CBE_CNOMEREQ.Text);
              CBE_CNOMEREQ.Text := '';
            end;

        end;
    end;

end;

procedure TFRM_A010ADPT.FormShow(Sender: TObject);
begin
  if not Acesso(nMatricula,'A010ADPT',nil) then
    close;
  if not(lRequerente) then
    DBGrid1.DataSource := DTM_A002ADPT.DTS_158;
  FRM_A002ADPT.OnShow := nil;
 {é atribuido ao OnShow do Form o valor nil para que o mesmo seja executado apenas uma vez}
 {pelo fato que se outra aplicação for chamada pela tecla F3, e ao retornar da aplicação que foi chamada pela tecla}
 {o evento OnShow deste form não acontecerá, ou seja não será executado, para permanecer o mesmo status da aplicação}
 {quando o F3 foi chamado}
end;

procedure TFRM_A010ADPT.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 Action:= oControlForms.Saidas(Self,[nil],nil);
end;

procedure TFRM_A010ADPT.BTN_SAIRClick(Sender: TObject);
begin
 close;
end;

procedure TFRM_A010ADPT.Btn_Excluir1Click(Sender: TObject);
begin
  if MessageDlg('Deseja retirar o participante ?',mtConfirmation,[mbYes,mbNo],0) = mrYes then
    begin
      if lRequerente then
        DTM_A002ADPT.QRY_153.Delete
      else
        DTM_A002ADPT.QRY_158.Delete;
    end;
end;

procedure TFRM_A010ADPT.Btn_Avancar1Click(Sender: TObject);
begin
  if lRequerente then
    DTM_A002ADPT.QRY_153.Next
  else
    DTM_A002ADPT.QRY_158.Next;
end;

procedure TFRM_A010ADPT.Btn_Retroceder1Click(Sender: TObject);
begin
  if lRequerente then
    DTM_A002ADPT.QRY_153.Prior
  else
    DTM_A002ADPT.QRY_158.Prior;
end;

procedure TFRM_A010ADPT.CBE_CNOMEREQButtonClick(Sender: TObject);
begin
  VerTeclas(VK_F2);
end;

procedure TFRM_A010ADPT.FormCreate(Sender: TObject);
begin
  lRequerente := false;
end;

end.
