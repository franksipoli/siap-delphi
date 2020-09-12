unit A003UTDC;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Buttons, StdCtrls, FileCtrl, RzFilSys, LMDCustomControl, LMDCustomPanel,
  LMDCustomBevelPanel, LMDCustomParentPanel, LMDCustomGroupBox, LMDGroupBox;

type
  TFRM_A003UTDC = class(TForm)
    LMDGroupBox1: TLMDGroupBox;
    RZDL_LOCAL: TRzDirectoryListBox;
    procedure RZDL_LOCALChange(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure RZDL_LOCALKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRM_A003UTDC: TFRM_A003UTDC;

implementation

uses A002UTDC;

{$R *.DFM}

procedure TFRM_A003UTDC.RZDL_LOCALChange(Sender: TObject);
begin
  if Pos('Projetos',RZDL_LOCAL.Directory) = 0 then
    RZDL_LOCAL.Directory := 'J:\Desenvolvimento\Projetos';
end;

procedure TFRM_A003UTDC.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  FRM_A002UTDC.DED_CCAMINHO.Text := RZDL_LOCAL.Directory;
  Action := caFree;
end;

procedure TFRM_A003UTDC.RZDL_LOCALKeyPress(Sender: TObject; var Key: Char);
begin
  if key = char(13) then
    close;
end;

end.
