program Contramais;

uses
  Forms,
  windows,
  ViewPrn in '\\MPLOPESLX\J\Desenvolvimento\Matriz\Templates\ViewPrn.pas' {FRM_VIEWPRN},
  CadSenha in '\\MPLOPESLX\J\Desenvolvimento\Matriz\Templates\CadSenha.pas' {FRM_CADSENHA},
  Fundo in '\\MPLOPESLX\J\Desenvolvimento\Matriz\Templates\Fundo.pas' {FRM_FUNDO},
  GeraRel in '\\MPLOPESLX\J\Desenvolvimento\Matriz\Templates\GeraRel.pas' {FRM_GERAREL},
  Help in '\\MPLOPESLX\J\Desenvolvimento\Matriz\Templates\Help.pas' {FRM_HELP},
  Login in '\\MPLOPESLX\J\Desenvolvimento\Matriz\Templates\Login.pas' {FRM_LOGIN},
  MPLLib in '\\MPLOPESLX\J\Desenvolvimento\Matriz\Templates\MPLLib.pas',
  MSenha in '\\MPLOPESLX\J\Desenvolvimento\Matriz\Templates\MSenha.pas' {FRM_MSENHA},
  Pesquisa in '\\MPLOPESLX\J\Desenvolvimento\Matriz\Templates\Pesquisa.pas' {FRM_PESQUISA},
  ProgImpr in '\\MPLOPESLX\J\Desenvolvimento\Matriz\Templates\ProgImpr.pas' {FRM_PROGIMPR},
  Auxil in '\\MPLOPESLX\J\Desenvolvimento\Matriz\Templates\Auxil.pas' {FRM_AUXIL},
  A001ADRA in '\\MPLOPESLX\J\Desenvolvimento\Projetos\Siap\AD_Administrativo\RA_ControleRamais\A001ADRA.pas' {FRM_A001ADRA},
  A002ADRA in '\\MPLOPESLX\J\Desenvolvimento\Projetos\Siap\AD_Administrativo\RA_ControleRamais\A002ADRA.pas' {FRM_A002ADRA},
  D001ADRA in '\\MPLOPESLX\J\Desenvolvimento\Projetos\Siap\AD_Administrativo\RA_ControleRamais\D001ADRA.pas' {DTM_A001ADRA: TDataModule},
  DMCTRL in '\\MPLOPESLX\J\Desenvolvimento\Projetos\Siap\AD_Administrativo\RA_ControleRamais\DMCTRL.pas' {DMControle: TDataModule},
  TelaPrin in '\\MPLOPESLX\J\Desenvolvimento\Projetos\Siap\AD_Administrativo\RA_ControleRamais\Telaprin.pas' {FRM_TELAPRI},
  D001 in '\\MPLOPESLX\J\Desenvolvimento\Projetos\Siap\D001.pas' {DTM_A001: TDataModule},
  D002 in '\\MPLOPESLX\J\Desenvolvimento\Projetos\Siap\D002.pas' {DTM_A002: TDataModule},
  D003 in '\\MPLOPESLX\J\Desenvolvimento\Projetos\Siap\D003.pas' {DTM_A003: TDataModule},
  A001 in '\\MPLOPESLX\J\Desenvolvimento\Projetos\Siap\A001.pas' {FRM_A001},
  A002 in '\\MPLOPESLX\J\Desenvolvimento\Projetos\Siap\A002.pas' {FRM_A002},
  A003 in '\\MPLOPESLX\J\Desenvolvimento\Projetos\Siap\A003.pas' {FRM_A003};

{$R *.RES}

var
  hwnd : THandle;
begin
   hwnd := FindWindow(nil,'Controle de Ramais');
   if hwnd = 0 then
     begin
       Application.Initialize;
       Application.Title := 'Controle de Ramais';
       Application.CreateForm(TDMControle, DMControle);
  Application.CreateForm(TFRM_LOGIN, FRM_LOGIN);
  Application.Run;
     end
   else
     begin
        ShowWindow(hwnd, SW_NORMAL);
        SetForegroundWindow(hwnd);
     end;

end.
