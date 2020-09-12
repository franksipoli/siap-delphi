program IniciaLog;

uses
  Forms,
  Inicia in 'Inicia.pas' {Frm_Inicia},
  ProgLog in 'ProgLog.pas' {FRM_ProgLog};

{$R *.RES}

begin
  Application.Initialize;
  Application.Title := 'Inicializa LOG';
  Application.CreateForm(TFrm_Inicia, Frm_Inicia);
  Application.Run;
end.
