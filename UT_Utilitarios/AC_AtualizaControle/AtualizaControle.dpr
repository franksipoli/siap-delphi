program AtualizaControle;

uses
  Forms,
  UTAC001 in 'UTAC001.pas' {FRM_UTAC001},
  MPLLib in '\\mplopeslx\mplopes\Desenvolvimento\Matriz\Templates\MPLLib.pas';

{$R *.RES}

begin
// Para compilar este projeto use diretivas e um arquivo "DprConverteTexto.bat"
// está no diretório deste projeto. Usá-lo no Diretório "Home_Delphi"/bin.
  Application.Initialize;
  Application.Title := 'Atualiza Controle';
  Application.CreateForm(TFRM_UTAC001, FRM_UTAC001);
  Application.Run;
end.
