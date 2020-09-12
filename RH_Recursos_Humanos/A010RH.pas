unit A010RH;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  RxLookup, StdCtrls, RxDBComb, Grids, DBGrids, DBCtrls, Mask, ToolEdit,
  RXDBCtrl, LMDCustomControl, LMDCustomPanel, LMDCustomBevelPanel,
  LMDCustomParentPanel, LMDCustomPanelFill, LMDPanelFill, Buttons, ExtCtrls,
  LMDCustomGroupBox, LMDGroupBox, DB, LMDSimplePanel, ComCtrls,
  PageControlEx, ImgList;

type
  TFRM_A010RH = class(TForm)
    LMDGroupBox2: TLMDGroupBox;
    LMDPanelFill1: TLMDPanelFill;
    SpeedButton6: TSpeedButton;
    SpeedButton16: TSpeedButton;
    DBGrid1: TDBGrid;
    BTN_MOV: TSpeedButton;
    Panel2: TPanel;
    Btn_Alterar: TSpeedButton;
    BTN_SAIR: TSpeedButton;
    SpeedButton20: TSpeedButton;
    SpeedButton17: TSpeedButton;
    procedure BTN_SAIRClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure SpeedButton17Click(Sender: TObject);
    procedure SpeedButton16Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure SpeedButton20Click(Sender: TObject);
    procedure BTN_MOVClick(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
    nIdFicha : Integer; 
    nMatriculaFicha : Integer;
  end;

var
  FRM_A010RH: TFRM_A010RH;

implementation

uses MPLCtrl, UVariaveis, D010RH, A007RH, D007RH, CtrlForms;

{$R *.DFM}

procedure TFRM_A010RH.BTN_SAIRClick(Sender: TObject);
begin
   Close ;
end;

procedure TFRM_A010RH.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  //fecha os datasets do DataModule e libera o form e o DataModule da memoria
  Action:= oControlForms.Saidas(Self,[DTM_A010RH],DTM_A010RH.DTS_099.DataSet);
end;

procedure TFRM_A010RH.FormShow(Sender: TObject);
begin
 //verifica o acesso do usuário a objetos e campos da aplicação
  if not Acesso(nMatricula,'A010RH',DTM_A010RH) then
    close;

  DTM_A010RH.QRY_099.ParamByName('nidtagffu').asInteger := nidFicha;
  DTM_A010RH.QRY_099.ExecSql;

  FRM_A010RH.OnShow := nil;

 {é atribuido ao OnShow do Form o valor nil para que o mesmo seja executado apenas uma vez}
 {pelo fato que se outra aplicação for chamada pela tecla F3, e ao retornar da aplicação que foi chamada pela tecla}
 {o evento OnShow deste form não acontecerá, ou seja não será executado, para permanecer o mesmo status da aplicação}
 {quando o F3 foi chamado}

end;

procedure TFRM_A010RH.SpeedButton17Click(Sender: TObject);
begin
  DTM_A010RH.DTS_099.DataSet.Last;
end;

procedure TFRM_A010RH.SpeedButton16Click(Sender: TObject);
begin
  DTM_A010RH.DTS_099.DataSet.Next;
end;

procedure TFRM_A010RH.SpeedButton6Click(Sender: TObject);
begin
  DTM_A010RH.DTS_099.DataSet.Prior;
end;

procedure TFRM_A010RH.SpeedButton20Click(Sender: TObject);
begin
  DTM_A010RH.DTS_099.DataSet.First;
end;

procedure TFRM_A010RH.BTN_MOVClick(Sender: TObject);
begin
  Application.CreateForm(TDTM_A007RH,DTM_A007RH);
  Application.CreateForm(TFRM_A007RH,FRM_A007RH);
  FRM_A007RH.nIdFichaFun := nIdFicha;
  FRM_A007RH.nMatriculaFicha := nMatriculaFicha;
  if Sender = Btn_Alterar then
    FRM_A007RH.nIdMov := DTM_A010RH.DTS_099.DataSet.FieldByName('nidcadmov').asInteger;  
  oControlForms.AtivaForm('FRM_A007RH',shModal,NIL);
  DTM_A010RH.QRY_099.Refresh;
end;

end.



