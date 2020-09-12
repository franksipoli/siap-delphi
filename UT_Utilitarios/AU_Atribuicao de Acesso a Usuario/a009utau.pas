unit A009UTAU;

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
  LMDMessageHint, RzLstBox, RzChkLst, Gauges, Mask, ToolEdit, DBCtrls,
  RzListVw, Grids, DBGrids, PageControlEx, Db, DBClient, Ora, Provider,
  OraProvider, MemDS, DBAccess;


type
  TFRM_A009UTAU = class(TForm)
    GP_CONSULTA: TLMDGroupBox;
    PNL_CONSULTA: TLMDPanelFill;
    DBG_APLIC1: TDBGrid;
    BTN_FECHAR: TBitBtn;
    QRY_TEMP: TOraQuery;
    DTS_TEMP: TOraDataSource;
    QRY_APLIC: TOraQuery;
    QRY_APLICCNOMEUNIT: TStringField;
    QRY_APLICCDESCAPLI: TStringField;
    QRY_APLICCNOMEBMP: TStringField;
    QRY_APLICCNOMEFORM: TStringField;
    QRY_APLICCSHOWFORM: TStringField;
    QRY_APLICCITENSMENU: TStringField;
    QRY_APLICCTITAPLIC: TStringField;
    QRY_APLICCCATEGORIA: TStringField;
    QRY_APLICNIMGSAIDA: TIntegerField;
    QRY_APLICNIDTBL_A: TFloatField;
    QRY_APLICNIDTBL_G: TFloatField;
    QRY_APLICNAPLICAUX: TIntegerField;
    QRY_APLICNIDTBL_PB: TFloatField;
    QRY_APLICNIDTBL_UPA: TFloatField;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BTN_FECHARClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DBG_APLIC1DrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure QRY_TEMPAfterScroll(DataSet: TDataSet);
  private
    { Private declarations }
  public
    nPerfilBase, nUsuario : Integer;

    { Public declarations }
  end;

var
  FRM_A009UTAU: TFRM_A009UTAU;

implementation

uses MPLCtrl, UVariaveis, CtrlForms;

{$R *.DFM}

procedure TFRM_A009UTAU.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:= caFree;
end;

procedure TFRM_A009UTAU.BTN_FECHARClick(Sender: TObject);
begin
  Close;
end;

procedure TFRM_A009UTAU.FormShow(Sender: TObject);
begin
 // if not Acesso(nMatricula,'A009UTAU',nil) then
 //   close;

 // FRM_A009UTAU.OnShow := nil;
 {é atribuido ao OnShow do Form o valor nil para que o mesmo seja executado apenas uma vez}
 {pelo fato que se outra aplicação for chamada pela tecla F3, e ao retornar da aplicação que foi chamada pela tecla}
 {o evento OnShow deste form não acontecerá, ou seja não será executado, para permanecer o mesmo status da aplicação}
 {quando o F3 foi chamado}

  QRY_APLIC.ParamByName('codusu').asInteger := nUsuario;
  QRY_APLIC.ExecSQL;
  //se o operador for um ADMIN então mostra todas as aplicações
  if isAdmin then
    QRY_TEMP.SQL.Text := 'select tbl_tmp.cdescapli from tbl_tmp where nidtbl_pb = :nidtbl_pb'
  else
    //caso contrario filtro pelo operador
    QRY_TEMP.ParamByName('nidtbl_u').AsInteger := nMatricula;

  QRY_TEMP.ParamByName('nidtbl_pb').AsInteger := nPerfilBase;

  QRY_TEMP.ExecSQL;
end;

procedure TFRM_A009UTAU.DBG_APLIC1DrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  {Pinta linhas do Grid}
  oMetodos.ColorGrid(Sender,Rect,DataCol,Column,State);
end;

procedure TFRM_A009UTAU.QRY_TEMPAfterScroll(DataSet: TDataSet);
begin
  DBG_APLIC1.Repaint;
end;

end.



