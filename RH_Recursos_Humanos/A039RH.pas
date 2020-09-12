unit A039RH;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  RxLookup, StdCtrls, RxDBComb, Grids, DBGrids, DBCtrls, Mask, ToolEdit,
  RXDBCtrl, LMDCustomControl, LMDCustomPanel, LMDCustomBevelPanel,
  LMDCustomParentPanel, LMDCustomPanelFill, LMDPanelFill, Buttons, ExtCtrls,
  LMDCustomGroupBox, LMDGroupBox, DB, LMDSimplePanel, ComCtrls,
  PageControlEx, ImgList;

type
  TFRM_A039RH = class(TForm)
    LMDGroupBox2: TLMDGroupBox;
    LMDPanelFill1: TLMDPanelFill;
    DBGrid1: TDBGrid;
    Panel2: TPanel;
    BTN_IMPRIMIR: TSpeedButton;
    BTN_SAIR: TSpeedButton;
    BTN_PRIMEIROREG1: TSpeedButton;
    BTN_RETROCEDER1: TSpeedButton;
    BTN_AVANCAR1: TSpeedButton;
    BTN_ULTIMOREG1: TSpeedButton;
    procedure BTN_SAIRClick(Sender: TObject);
    procedure BTN_AVANCAR1Click(Sender: TObject);
    procedure BTN_ULTIMOREG1Click(Sender: TObject);
    procedure BTN_RETROCEDER1Click(Sender: TObject);
    procedure BTN_PRIMEIROREG1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBGrid1MouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);

  private
    { Private declarations }
  public
    { Public declarations }
    nIdCargo : Integer;
  end;

var
  FRM_A039RH: TFRM_A039RH;

implementation

{$R *.DFM}

Uses A014RH, D039RH, UVariaveis, MPLCtrl ;

procedure TFRM_A039RH.BTN_SAIRClick(Sender: TObject);
begin
   Close ;
end;

procedure TFRM_A039RH.BTN_AVANCAR1Click(Sender: TObject);
begin
  DTM_A039RH.DTS_077.DataSet.Next;
end;

procedure TFRM_A039RH.BTN_ULTIMOREG1Click(Sender: TObject);
begin
  DTM_A039RH.DTS_077.DataSet.Last;
end;

procedure TFRM_A039RH.BTN_RETROCEDER1Click(Sender: TObject);
begin
  DTM_A039RH.DTS_077.DataSet.Prior;
end;

procedure TFRM_A039RH.BTN_PRIMEIROREG1Click(Sender: TObject);
begin
  DTM_A039RH.DTS_077.DataSet.First;
end;

procedure TFRM_A039RH.FormShow(Sender: TObject);
begin
  if not Acesso(nMatricula,'A039RH',DTM_A039RH) then
    close;
  with DTM_A039RH do
    begin
      QRY_077.ParamByName('nidcadcrg').asInteger :=
      nIdCargo;
      QRY_077.ExecSQL;
      Caption := '  ' + QRY_077.FieldByName('cdescricrg').asString;
    end;
  FRM_A039RH.OnShow := nil;
 {é atribuido ao OnShow do Form o valor nil para que o mesmo seja executado apenas uma vez}
 {pelo fato que se outra aplicação for chamada pela tecla F3, e ao retornar da aplicação que foi chamada pela tecla}
 {o evento OnShow deste form não acontecerá, ou seja não será executado, para permanecer o mesmo status da aplicação}
 {quando o F3 foi chamado}
end;

procedure TFRM_A039RH.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:= oControlForms.Saidas(Self,[DTM_A039RH],DTM_A039RH.DTS_077.DataSet);
end;

procedure TFRM_A039RH.DBGrid1MouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
  //chama pesquisa de grid
  if Button = mbRight then
    ChamaPesqGrid(DTM_A039RH.QRY_077,nil,'cnomegrl','Nome do Servidor');
end;

end.



