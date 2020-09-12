unit A008RHTE;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, Grids, DBGrids, Buttons, LMDCustomParentPanel,
  LMDCustomPanelFill, LMDPanelFill, LMDCustomControl, LMDCustomPanel,
  LMDCustomBevelPanel, LMDSimplePanel;

type
  TFRM_A008RHTE = class(TForm)
    LMDSimplePanel1: TLMDSimplePanel;
    LMDPanelFill1: TLMDPanelFill;
    BTN_PRIMEIROREG: TSpeedButton;
    Btn_Retroceder1: TSpeedButton;
    Btn_UltimoReg: TSpeedButton;
    Btn_Avancar1: TSpeedButton;
    DBG_LANCTO: TDBGrid;
    LMDPanelFill2: TLMDPanelFill;
    Btn_UltimoReg1: TSpeedButton;
    Btn_Avancar2: TSpeedButton;
    Btn_Retroceder2: TSpeedButton;
    Btn_PrimeiroReg1: TSpeedButton;
    DBG_HIST: TDBGrid;
    Panel2: TPanel;
    BTN_SAIR: TSpeedButton;
    procedure BTN_SAIRClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure DBG_LANCTOMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure DBG_HISTDblClick(Sender: TObject);
    procedure BTN_PRIMEIROREGClick(Sender: TObject);
    procedure Btn_Retroceder1Click(Sender: TObject);
    procedure Btn_Avancar1Click(Sender: TObject);
    procedure Btn_UltimoRegClick(Sender: TObject);
    procedure Btn_PrimeiroReg1Click(Sender: TObject);
    procedure Btn_Retroceder2Click(Sender: TObject);
    procedure Btn_Avancar2Click(Sender: TObject);
    procedure Btn_UltimoReg1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRM_A008RHTE: TFRM_A008RHTE;

implementation

uses D008RHTE, CtrlForms, UVariaveis, MPLCtrl, A005RHTE, D005RHTE;

{$R *.DFM}

procedure TFRM_A008RHTE.BTN_SAIRClick(Sender: TObject);
begin
  close;
end;

procedure TFRM_A008RHTE.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  //libera form e datamodule da memoria
  Action:= oControlForms.Saidas(Self,[DTM_A008RHTE],DTM_A008RHTE.QRY_062);
end;

procedure TFRM_A008RHTE.FormShow(Sender: TObject);
begin
  //verifica acesso do usuario
  if Acesso(nMatricula,'A008RHTE',DTM_A008RHTE) then
    close;

  FRM_A008RHTE.OnShow := nil;
 {é atribuido ao OnShow do Form o valor nil para que o mesmo seja executado apenas uma vez}
 {pelo fato que se outra aplicação for chamada pela tecla F3, e ao retornar da aplicação que foi chamada pela tecla}
 {o evento OnShow deste form não acontecerá, ou seja não será executado, para permanecer o mesmo status da aplicação}
 {quando o F3 foi chamado}
end;

procedure TFRM_A008RHTE.DBG_LANCTOMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  //se clicou com o botao direito
  if Button = mbRight then
    //chama pesquida de grid
    ChamaPesqGrid(DTM_A008RHTE.QRY_062,nil,'cnomfun','Nome do Funcionário');
end;

procedure TFRM_A008RHTE.DBG_HISTDblClick(Sender: TObject);
begin
  //cria form de detalhes do servidor
  Application.CreateForm(TDTM_A005RHTE,DTM_A005RHTE);
  Application.CreateForm(TFRM_A005RHTE,FRM_A005RHTE);
  //passa id do servidor
  FRM_A005RHTE.nIdCadrem :=  DBG_HIST.DataSource.DataSet.FieldByName('nidcadrem').asInteger;
  //chama detalhes do servidor
  oControlForms.AtivaForm('FRM_A005RHTE',shModal,nil,false);
end;

procedure TFRM_A008RHTE.BTN_PRIMEIROREGClick(Sender: TObject);
begin
  DBG_LANCTO.DataSource.DataSet.First;
end;

procedure TFRM_A008RHTE.Btn_Retroceder1Click(Sender: TObject);
begin
  DBG_LANCTO.DataSource.DataSet.Prior;
end;

procedure TFRM_A008RHTE.Btn_Avancar1Click(Sender: TObject);
begin
  DBG_LANCTO.DataSource.DataSet.Next;
end;

procedure TFRM_A008RHTE.Btn_UltimoRegClick(Sender: TObject);
begin
  DBG_LANCTO.DataSource.DataSet.Last;
end;

procedure TFRM_A008RHTE.Btn_PrimeiroReg1Click(Sender: TObject);
begin
  DBG_HIST.DataSource.DataSet.First;
end;

procedure TFRM_A008RHTE.Btn_Retroceder2Click(Sender: TObject);
begin
    DBG_HIST.DataSource.DataSet.Prior;
end;

procedure TFRM_A008RHTE.Btn_Avancar2Click(Sender: TObject);
begin
    DBG_HIST.DataSource.DataSet.Next;
end;

procedure TFRM_A008RHTE.Btn_UltimoReg1Click(Sender: TObject);
begin
    DBG_HIST.DataSource.DataSet.Last;
end;

end.
