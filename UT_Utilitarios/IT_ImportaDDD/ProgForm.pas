unit ProgForm;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Gauges, LMDSimplePanel, LMDCustomControl, LMDCustomPanel,
  LMDCustomBevelPanel, LMDCustomParentPanel, LMDCustomPanelFill,
  LMDPanelFill, LMDControl, LMDBaseControl, LMDBaseGraphicControl,
  LMDBaseLabel, LMDCustomLabel, LMDLabel, Buttons;

type
  TProgresso = class(TForm)
    LMDPanelFill1: TLMDPanelFill;
    LMDSimplePanel1: TLMDSimplePanel;
    Gag_Ger: TGauge;
    Btn_CanGer: TButton;
    Label1: TLabel;
    Label2: TLabel;
    Lbl_Tit: TLMDLabel;
    Lbl_EstGer: TLabel;
    Lbl_DecGer: TLabel;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Btn_CanGerClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }

  end;

var
  Progresso: TProgresso;
implementation

uses TxttoSql;

{$R *.DFM}

procedure TProgresso.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  EnableTaskWindows(pPonteiroJanela);
  Action := CaFree ;
end;

procedure TProgresso.Btn_CanGerClick(Sender: TObject);
begin
  if (Btn_CanGer.Caption = 'Fechar') or
     (Btn_CanGer.Caption = 'Cancelar') then
    with Frm_TxttoSql do
      begin
        TabDestino.Close;
        TabDestino.SQL.Clear;
        TabDestino.TableName := '';
        TabTemp.close;
        TabTemp.TableName := '';
        TempDados.Open;
        TempDados.Edit;
        TempDados.ClearFields;
        TempDados.Close;
        BTN_LAYOUT.Enabled := false;
        BTN_DADOS.Enabled := false;
        BTN_IMPORTA.Enabled := false;
        EDT_TABELADESTINO.Text := '';
        EDT_LINHAINICIO.Text := '';
        FEDT_ARQUIVO.FileName := '';
        FEDT_ARQLAY.FileName := '';
        FEDT_ARQUIVO.SetFocus;
      end
  else
    if Btn_CanGer.Caption = 'Abortar' then
      begin
        with Frm_TxttoSql do
          begin
            TabDestino.Close;
            TabDestino.SQL.Clear;
            TabDestino.TableName := '';
            TempDados.Open;
            TempDados.Edit;
            TempDados.ClearFields;
            TempDados.Close;
            BTN_IMPORTA.Enabled := false;
          end;
        lCancelar := true;
      end
    else Frm_TxttoSql.DBGrid2.SetFocus;
  Close;
end;

procedure TProgresso.FormShow(Sender: TObject);
begin
   pPonteiroJanela := DisableTaskWindows(Progresso.Handle);
end;

end.
