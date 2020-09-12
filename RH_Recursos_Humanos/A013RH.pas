unit A013RH;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  RxLookup, StdCtrls, RxDBComb, Grids, DBGrids, DBCtrls, Mask, ToolEdit,
  RXDBCtrl, LMDCustomControl, LMDCustomPanel, LMDCustomBevelPanel,
  LMDCustomParentPanel, LMDCustomPanelFill, LMDPanelFill, Buttons, ExtCtrls,
  LMDCustomGroupBox, LMDGroupBox, DB, LMDSimplePanel, ComCtrls,
  PageControlEx, ImgList;

type
  TFRM_A013RH = class(TForm)
    LMDGroupBox2: TLMDGroupBox;
    LMDPanelFill1: TLMDPanelFill;
    SpeedButton6: TSpeedButton;
    SpeedButton16: TSpeedButton;
    DBGrid1: TDBGrid;
    SpeedButton1: TSpeedButton;
    Panel2: TPanel;
    BTN_IMPRIMIR: TSpeedButton;
    BTN_SAIR: TSpeedButton;
    procedure BTN_SAIRClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton16Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
    nIdFicha : Integer;
    nSalFicha : Double;
  end;

var
  FRM_A013RH: TFRM_A013RH;

implementation

uses UVariaveis, MPLCtrl, CtrlForms, D013RH, A014RH, D014RH;

{$R *.DFM}



procedure TFRM_A013RH.BTN_SAIRClick(Sender: TObject);
begin
   Close ;
end;

procedure TFRM_A013RH.FormClose(Sender: TObject; var Action: TCloseAction);
begin
    //fecha os datasets do DataModule e libera o form e o DataModule da memoria
  Action:= oControlForms.Saidas(Self,[DTM_A013RH],DTM_A013RH.DTS_119.DataSet);
end;

procedure TFRM_A013RH.FormShow(Sender: TObject);
begin
   //verifica o acesso do usuário a objetos e campos da aplicação
  if not Acesso(nMatricula,'A013RH',DTM_A013RH) then
    close;

  DTM_A013RH.QRY_119.ParamByName('nidtagffu').asInteger :=
  nIdFicha;
  DTM_A013RH.QRY_119.ParamByName('nvalorsal').asFloat :=
  nSalFicha;
  DTM_A013RH.QRY_119.ExecSql;
  FRM_A013RH.OnShow := nil;

 {é atribuido ao OnShow do Form o valor nil para que o mesmo seja executado apenas uma vez}
 {pelo fato que se outra aplicação for chamada pela tecla F3, e ao retornar da aplicação que foi chamada pela tecla}
 {o evento OnShow deste form não acontecerá, ou seja não será executado, para permanecer o mesmo status da aplicação}
 {quando o F3 foi chamado}

end;

procedure TFRM_A013RH.SpeedButton1Click(Sender: TObject);
begin
  Application.CreateForm(TDTM_A014RH,DTM_A014RH);
  Application.CreateForm(TFRM_A014RH,FRM_A014RH);
  FRM_A014RH.nIdFicha := nIdFicha;
  FRM_A014RH.nSalBase := nSalFicha;
  oControlForms.AtivaForm('FRM_A014RH',shModal,NIL);
  DTM_A013RH.QRY_119.Refresh;
end;

procedure TFRM_A013RH.SpeedButton16Click(Sender: TObject);
begin
  DTM_A013RH.DTS_119.DataSet.Next;
end;

procedure TFRM_A013RH.SpeedButton6Click(Sender: TObject);
begin
  DTM_A013RH.DTS_119.DataSet.Prior;
end;

end.



