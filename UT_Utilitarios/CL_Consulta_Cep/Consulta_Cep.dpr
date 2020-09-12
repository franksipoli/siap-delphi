program Consulta_Cep;

uses
  Forms,
  Windows,
  Messages,
  Dialogs,
  A003UTCL in '\\192.168.0.8\mplopes\Desenvolvimento\Projetos\Siap\UT_Utilitarios\CL_Consulta_Cep\A003UTCL.pas' {Frm_MensPesq},
  A002UTCL in '\\192.168.0.8\mplopes\Desenvolvimento\Projetos\Siap\UT_Utilitarios\CL_Consulta_Cep\A002UTCL.pas' {FrmCxPostal},
  A001UTCL in '\\192.168.0.8\mplopes\Desenvolvimento\Projetos\Siap\UT_Utilitarios\CL_Consulta_Cep\A001UTCL.pas' {Frm_PesCep};

{$R *.RES}


var
  Handle : HWND;
begin
  Handle := FindWindow(nil,'Pesquisa de Cep');
  if Handle = 0 then
    begin
      Application.Initialize;
      Application.Title := 'Pesquisa de Cep';
      Application.CreateForm(TFrm_MensPesq, Frm_MensPesq);
  Application.CreateForm(TFrmCxPostal, FrmCxPostal);
  Application.CreateForm(TFrm_PesCep, Frm_PesCep);
  Application.Run;
    end
  else
    begin
      MessageBox(0,'A aplicação já está carregada','Informação', mb_OK);

      //Application.ShowMainForm := true;
//      ShowWindow(Handle,SW_SHOW);
    end;

end.


