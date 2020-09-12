unit ProgLog;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Gauges, LMDSimplePanel, LMDCustomControl, LMDCustomPanel,
  LMDCustomBevelPanel, LMDCustomParentPanel, LMDCustomPanelFill,
  LMDPanelFill, LMDControl, LMDBaseControl, LMDBaseGraphicControl,
  LMDBaseLabel, LMDCustomLabel, LMDLabel, Buttons;

type
  TFRM_ProgLog = class(TForm)
    LMDPanelFill1: TLMDPanelFill;
    LMDSimplePanel1: TLMDSimplePanel;
    Gag_Ger: TGauge;
    Btn_CanGer: TButton;
    Label1: TLabel;
    Label2: TLabel;
    Lbl_Tit: TLMDLabel;
    Lbl_EstGer: TLabel;
    Lbl_DecGer: TLabel;
    LMDSimplePanel2: TLMDSimplePanel;
    Gag_Tab: TGauge;
    LMDLabel1: TLMDLabel;
    LMDLabel2: TLMDLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Btn_CanGerClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }

  end;

var
  FRM_ProgLog: TFRM_ProgLog;
implementation

uses Inicia;

{$R *.DFM}

procedure TFRM_ProgLog.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  EnableTaskWindows(pPonteiroJanela);
  Action := CaFree ;
end;

procedure TFRM_ProgLog.Btn_CanGerClick(Sender: TObject);
begin
  if (Btn_CanGer.Caption = 'Cancelar') or
     (Btn_CanGer.Caption = 'Fechar') then
    begin
      lCancelar := true;
      Frm_Inicia.Rgp_Selecao.ItemIndex := -1;
      Frm_Inicia.QRY_TABELAS.Close;
      Frm_Inicia.DTS_TABTEMP.DataSet.Close;
      Frm_Inicia.TempTabelas.Clear;
      Frm_Inicia.TempTabelas.Close;
      Frm_Inicia.DTS_TEMP.DataSet.Close;
      Frm_Inicia.BTN_EXECUTA.Enabled := false;
      Frm_Inicia.DTS_TABTEMP.DataSet.EnableControls;
      Frm_Inicia.DBGrid1.Refresh;
      Close;
    end;
end;

procedure TFRM_ProgLog.FormShow(Sender: TObject);
begin
   pPonteiroJanela := DisableTaskWindows(FRM_ProgLog.Handle);
end;

end.
