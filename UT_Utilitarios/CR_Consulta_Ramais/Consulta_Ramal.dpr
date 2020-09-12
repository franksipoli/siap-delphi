program Consulta_Ramal;

uses
  Forms,
  Windows,
  Messages,
  Dialogs,
  A001UTCR in '\\Mplopeslx\mplopes\Desenvolvimento\Projetos\Siap\UT_Utilitarios\CR_Consulta_Ramais\A001UTCR.pas' {FRM_PesRamal};

{$R *.RES}


var
  Handle : HWND;

begin
  Handle := FindWindow(nil,'Consulta de Ramais');
  if Handle = 0  then
    begin
      Application.Initialize;
      Application.Title := 'Consulta de Ramais';
  Application.CreateForm(TFRM_PesRamal, FRM_PesRamal);
  Application.Run;
    end
  else
    begin
      //SendMessage(Handle,WM_TESTE,WM_TESTE,WM_TESTE);
      //ShowMessage('A aplicação já está carregada')
      MessageBox(0,'A aplicação já está carregada','Informação', mb_OK);
    end;
end.
