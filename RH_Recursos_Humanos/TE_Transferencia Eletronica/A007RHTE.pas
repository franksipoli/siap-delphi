unit A007RHTE;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, RxLookup, LMDCustomControl, LMDCustomPanel,
  LMDCustomBevelPanel, LMDCustomParentPanel, LMDCustomGroupBox, LMDGroupBox,
  FileCtrl;

type
  TFRM_A007RHTE = class(TForm)
    GRB_DET: TLMDGroupBox;
    DLC_REF: TRxDBLookupCombo;
    Label1: TLabel;
    BTN_TRB: TBitBtn;
    BTN_SAIR: TBitBtn;
    FileList: TFileListBox;
    procedure BTN_TRBClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BTN_SAIRClick(Sender: TObject);
  private

    { Private declarations }
  public
    { Public declarations }
    function WinExecAndWait32(FileName: string;
      Visibility: integer): integer;
  end;

var
  FRM_A007RHTE: TFRM_A007RHTE;

implementation

uses D007RHTE, MPLCtrl, UVariaveis, CtrlForms;

{$R *.DFM}


function TFRM_A007RHTE.WinExecAndWait32(FileName: string; Visibility: integer): integer;
{ returns -1 if the Exec failed, otherwise returns the process' exit
   code when the process terminates }
var
  zAppName: array[0..512] of char;
  zCurDir: array[0..255] of char;
  WorkDir: string;
  StartupInfo: TStartupInfo;
  ProcessInfo: TProcessInformation;
  i : dWORD;
begin
  StrPCopy(zAppName, FileName);
  GetDir(0, WorkDir);
  StrPCopy(zCurDir, WorkDir);
  FillChar(StartupInfo, Sizeof(StartupInfo), #0);
  StartupInfo.cb := Sizeof(StartupInfo);
  StartupInfo.dwFlags := STARTF_USESHOWWINDOW;
  StartupInfo.wShowWindow := Visibility;
  if not CreateProcess(nil,
    zAppName, { pointer to command line string }
    nil, { pointer to process security attributes }
    nil, { pointer to thread security attributes }
    False, { handle inheritance flag }
    CREATE_NEW_CONSOLE or { creation flags }
    NORMAL_PRIORITY_CLASS,
    nil, { pointer to new environment block }
    nil, { pointer to current directory name }
    StartupInfo, { pointer to STARTUPINFO }
    ProcessInfo) then { pointer to PROCESS_INF }
    Result := -1
  else
  begin
    WaitforSingleObject(ProcessInfo.hProcess, INFINITE);
    GetExitCodeProcess(ProcessInfo.hProcess, i);
    result := i;
    CloseHandle(ProcessInfo.hProcess);
    CloseHandle(ProcessInfo.hThread);
  end;
end;

procedure TFRM_A007RHTE.BTN_TRBClick(Sender: TObject);
  var
    i : Integer;
begin
  if DLC_REF.Text = '' then
    begin
      MessageDlg('Você deve escolher um banco.',mtInformation,[mbOk],0);
      exit;
    end;
  WinExecAndWait32('C:\Arquivos de programas\Internet Explorer\iexplore.exe ' +
    DTM_A007RHTE.QRY_063.FieldByName('curlbco').asString ,SW_NORMAL);
  if MessageDlg('Todos os arquivos foram transferidos com sucesso?',mtConfirmation,[mbYes,mbNo],0) = mrYes then
    begin
      FileList.Directory := DTM_A007RHTE.QRY_063.FieldByName('cpasta').asString + '\remessa';
      FileList.Update;
      for i:=0 to FileList.Items.Count - 1 do
        MoveFile(PChar(DTM_A007RHTE.QRY_063.FieldByName('cpasta').asString + '\remessa\'+FileList.Items.Strings[i]),
          PChar(DTM_A007RHTE.QRY_063.FieldByName('cpasta').asString + '\remessa\bkp\'+FileList.Items.Strings[i]));
    end;
  
end;

procedure TFRM_A007RHTE.FormShow(Sender: TObject);
begin
  if Acesso(nMatricula,'A007RHTE',DTM_A007RHTE) then
    close;

 FRM_A007RHTE.OnShow := nil;
 {é atribuido ao OnShow do Form o valor nil para que o mesmo seja executado apenas uma vez}
 {pelo fato que se outra aplicação for chamada pela tecla F3, e ao retornar da aplicação que foi chamada pela tecla}
 {o evento OnShow deste form não acontecerá, ou seja não será executado, para permanecer o mesmo status da aplicação}
 {quando o F3 foi chamado}
end;

procedure TFRM_A007RHTE.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:= oControlForms.Saidas(Self,[DTM_A007RHTE],DTM_A007RHTE.QRY_063);
end;

procedure TFRM_A007RHTE.BTN_SAIRClick(Sender: TObject);
begin
  close;
end;

end.
