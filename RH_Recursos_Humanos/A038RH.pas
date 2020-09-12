unit A038RH;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  RxLookup, StdCtrls, RxDBComb, Grids, DBGrids, DBCtrls, Mask, ToolEdit,
  RXDBCtrl, LMDCustomControl, LMDCustomPanel, LMDCustomBevelPanel,
  LMDCustomParentPanel, LMDCustomPanelFill, LMDPanelFill, Buttons, ExtCtrls,
  LMDCustomGroupBox, LMDGroupBox, DB, LMDSimplePanel, ComCtrls,
  PageControlEx, ImgList, LMDButtonControl, LMDRadioButton, LMDControl,
  LMDBaseControl, LMDBaseGraphicControl, LMDGraphicControl, LMDBaseMeter,
  LMDCustomProgress, LMDProgress;

type
  TFRM_A038RH = class(TForm)
    Panel2: TPanel;
    Btn_Imprimir: TSpeedButton;
    BTN_SAIR: TSpeedButton;
    LMDGroupBox1: TLMDGroupBox;
    LMDPanelFill1: TLMDPanelFill;
    BTN_RETROCEDER1: TSpeedButton;
    BTN_AVANCAR2: TSpeedButton;
    DBG_LANCA: TDBGrid;
    LMDPanelFill3: TLMDPanelFill;
    DBG_BASE: TDBGrid;
    DBL_NIDTAGFFU: TRxDBLookupCombo;
    DBL_DAT_REF: TRxDBLookupCombo;
    Label1: TLabel;
    Label2: TLabel;
    LMDPanelFill5: TLMDPanelFill;
    LMDPanelFill6: TLMDPanelFill;
    DED_VENC: TDBEdit;
    DED_DESCON: TDBEdit;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    procedure BTN_SAIRClick(Sender: TObject);
    procedure DBL_DAT_REFChange(Sender: TObject);
    procedure BTN_AVANCAR2Click(Sender: TObject);
    procedure BTN_RETROCEDER1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure DBL_NIDTAGFFUChange(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
    nIdServidor : integer;
  end;

var
  FRM_A038RH: TFRM_A038RH;

implementation

uses UVariaveis, MPLCtrl, D038RH;



{$R *.DFM}

procedure TFRM_A038RH.BTN_SAIRClick(Sender: TObject);
begin
   Close ;
end;

procedure TFRM_A038RH.DBL_DAT_REFChange(Sender: TObject);
  var
    nFicha, nMes, nAno, nTipFp : Integer;

begin
  with DTM_A038RH do
    begin
      if DBL_DAT_REF.Text = '' then
        begin
          nFicha := 0;
          nMes := 0;
          nAno := 0;
          nTipFp := 0;
        end
      else
        begin
          nFicha := QRY_077.FieldByName('nidtagffu').asInteger;
          nMes   := QRY_118.FieldByName('nmesref').asInteger;
          nAno   := QRY_118.FieldByName('nanoref').asInteger;
          nTipFp := QRY_118.FieldByName('nidtbxtfp').asInteger;
        end;

      QRY_118_1.ParamByName('nidtagffu').asInteger := nFicha;
      QRY_118_1.ParamByName('nmesref').asInteger := nMes;
      QRY_118_1.ParamByName('nanoref').asInteger := nAno;
      QRY_118_1.ParamByName('nidtbxtfp').asInteger := nTipFp;
      QRY_118_1.ExecSql;

      QRY_118_2.ParamByName('nidtagffu').asInteger := nFicha;
      QRY_118_2.ParamByName('nmesref').asInteger := nMes;
      QRY_118_2.ParamByName('nanoref').asInteger := nAno;
      QRY_118_2.ParamByName('nidtbxtfp').asInteger := nTipFp;
      QRY_118_2.ExecSql;

      QRY_118_3.ParamByName('nidtagffu').asInteger := nFicha;
      QRY_118_3.ParamByName('nmesref').asInteger := nMes;
      QRY_118_3.ParamByName('nanoref').asInteger := nAno;
      QRY_118_3.ParamByName('nidtbxtfp').asInteger := nTipFp;
      QRY_118_3.ExecSql;

    end;
end;

procedure TFRM_A038RH.BTN_AVANCAR2Click(Sender: TObject);
begin
  DTM_A038RH.QRY_118_1.Next;
end;

procedure TFRM_A038RH.BTN_RETROCEDER1Click(Sender: TObject);
begin
  DTM_A038RH.QRY_118_1.Prior;
end;

procedure TFRM_A038RH.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:= oControlForms.Saidas(Self,[DTM_A038RH],DTM_A038RH.DTS_077.DataSet);
end;

procedure TFRM_A038RH.FormShow(Sender: TObject);
begin
  if not Acesso(nMatricula,'A038RH',DTM_A038RH) then
    close;

  with DTM_A038RH do
    begin
      QRY_029.ParamByName('nidcadser').asInteger := nIdServidor;
      QRY_029.ExecSql;
      Caption := QRY_029.FieldByName('cnomegrl').asString;      
    end;


  FRM_A038RH.OnShow := nil;
 {é atribuido ao OnShow do Form o valor nil para que o mesmo seja executado apenas uma vez}
 {pelo fato que se outra aplicação for chamada pela tecla F3, e ao retornar da aplicação que foi chamada pela tecla}
 {o evento OnShow deste form não acontecerá, ou seja não será executado, para permanecer o mesmo status da aplicação}
 {quando o F3 foi chamado}
end;

procedure TFRM_A038RH.DBL_NIDTAGFFUChange(Sender: TObject);
begin
  DBL_DAT_REF.KeyValue := 0;
end;

procedure TFRM_A038RH.SpeedButton1Click(Sender: TObject);
begin
  DTM_A038RH.QRY_118_2.Prior;
end;

procedure TFRM_A038RH.SpeedButton2Click(Sender: TObject);
begin
  DTM_A038RH.QRY_118_2.Next;
end;

end.



