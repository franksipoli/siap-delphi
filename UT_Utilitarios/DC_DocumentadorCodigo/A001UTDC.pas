unit A001UTDC;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ComCtrls, RzTreeVw, RzFilSys, StdCtrls, FileCtrl, LMDCustomParentPanel,
  LMDCustomGroupBox, LMDGroupBox, LMDControl, LMDBaseControl,
  LMDBaseGraphicControl, LMDGraphicControl, LMDFill, LMDCustomControl,
  LMDCustomPanel, LMDCustomBevelPanel, LMDSimplePanel, Menus, Buttons,
  RzCmboBx, ShellApi, ExtCtrls, Db, DBAccess, Ora, Enter,
  LMDCustomPanelFill, LMDPanelFill;

type
  TFRM_A001UTDC = class(TForm)
    PM_MENU: TPopupMenu;
    AbreCodigo1: TMenuItem;
    Documenta1: TMenuItem;
    Cancelar1: TMenuItem;
    Panel2: TPanel;
    BTN_CADDOC: TSpeedButton;
    BTN_SAIR: TSpeedButton;
    LMDGroupBox1: TLMDGroupBox;
    RZD_DIRETORIO: TRzDirectoryListBox;
    RZF_ARQUIVO: TRzFileListBox;
    LMDPanelFill5: TLMDPanelFill;
    LMDPanelFill1: TLMDPanelFill;
    StatusBar1: TStatusBar;
    procedure FormShow(Sender: TObject);
    procedure AbreCodigo1Click(Sender: TObject);
    procedure Documenta1Click(Sender: TObject);
    procedure BTN_SAIRClick(Sender: TObject);
    procedure RZD_DIRETORIOChange(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure RZF_ARQUIVODblClick(Sender: TObject);
    procedure BTN_CADDOCClick(Sender: TObject);
    procedure RZF_ARQUIVOChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRM_A001UTDC: TFRM_A001UTDC;

implementation

uses A002UTDC, A003UTDC, D001UTDC, UVariaveis, MPLCtrl, CtrlForms;

{$R *.DFM}

procedure TFRM_A001UTDC.FormShow(Sender: TObject);
begin
  RZF_ARQUIVO.Drive := 'J';
  RZF_ARQUIVO.Directory := '\DESENVOLVIMENTO\PROJETOS';
  if not Acesso(nMatricula,'A001UTDC',nil) then
    close;
  Botoes(['BTN_CADDOC','BTN_SAIR'],'FRM_A001UTDC',true);
  FRM_A001UTDC.OnShow := nil;
 {é atribuido ao OnShow do Form o valor nil para que o mesmo seja executado apenas uma vez}
 {pelo fato que se outra aplicação for chamada pela tecla F3, e ao retornar da aplicação que foi chamada pela tecla}
 {o evento OnShow deste form não acontecerá, ou seja não será executado, para permanecer o mesmo status da aplicação}
 {quando o F3 foi chamado}
end;

procedure TFRM_A001UTDC.AbreCodigo1Click(Sender: TObject);
begin
  ShellExecute(0,nil,Pchar(RZF_ARQUIVO.FileName),nil, nil, SW_SHOWNORMAL);
end;

procedure TFRM_A001UTDC.Documenta1Click(Sender: TObject);
begin
  vLocaliza := Copy(ExtractFileName(RZF_ARQUIVO.FileName),1,Pos('.',ExtractFileName(RZF_ARQUIVO.FileName))-1);
  oControlForms.AtivaForm('FRM_A002UTDC',SHMODAL,nil,False)
end;

procedure TFRM_A001UTDC.BTN_SAIRClick(Sender: TObject);
begin
  Close;
end;

procedure TFRM_A001UTDC.RZD_DIRETORIOChange(Sender: TObject);
begin
  if Pos('PROJETOS',RZD_DIRETORIO.Directory) = 0 then
    RZD_DIRETORIO.Directory := 'J:\DESENVOLVIMENTO\PROJETOS';
end;

procedure TFRM_A001UTDC.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := oControlForms.Saidas(Sender,[nil],nil);
end;

procedure TFRM_A001UTDC.RZF_ARQUIVODblClick(Sender: TObject);
begin
  vLocaliza := Copy(ExtractFileName(RZF_ARQUIVO.FileName),1,Pos('.',ExtractFileName(RZF_ARQUIVO.FileName))-1);
  oControlForms.AtivaForm('FRM_A002UTDC',SHMODAL,nil,False)
end;

procedure TFRM_A001UTDC.BTN_CADDOCClick(Sender: TObject);
begin
  oControlForms.AtivaForm('FRM_A002UTDC',SHMODAL,nil,False)
end;

procedure TFRM_A001UTDC.RZF_ARQUIVOChange(Sender: TObject);
begin
  StatusBar1.Panels[1].Text := ' '+RZF_ARQUIVO.FileName;
end;

end.
