program ConverteTexto;

uses
  Forms,
  TxttoSql in 'TxttoSql.pas' {Frm_TxttoSql},
  MsgAlerta in 'MsgAlerta.pas' {Frm_MsgAlerta},
  ProgTxt in 'ProgTxt.pas' {FRM_ProgTxt};

{$R *.RES}

begin
// Para compilar este projeto use diretivas e um arquivo "DprConverteTexto.bat"
// est� no diret�rio deste projeto. Us�-lo no Diret�rio "Home_Delphi"/bin.
  Application.Initialize;
  Application.Title := 'Converte Texto';
  Application.CreateForm(TFrm_TxttoSql, Frm_TxttoSql);
  Application.Run;
end.
