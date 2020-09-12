{*******************************************************************************
 *                                                                             *
 *  Aplicação que executa a transferencia                                      *
 *  de acessos de um usuário para outro                                        *
 *                                                                             *
 *  Data da Criação : 14/06/2004                                               *
 *  Programador Leandro Ribas                                                  *
 *  Data Finalização : 14/06/2004                                              *
 *                                                                             *
 *  Data da Ultima Atualização :                                               *
 *  Atualizado por:                                                            *
 *                                                                             *
 *******************************************************************************
}


unit A019UTAU;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, LMDCustomControl, LMDCustomPanel, LMDCustomBevelPanel,
  LMDCustomParentPanel, LMDCustomGroupBox, LMDGroupBox, RxLookup, Db,
  MemDS, DBAccess, Ora, ExtCtrls;

type
  TFRM_A019UTAU = class(TForm)
    LMDGroupBox3: TLMDGroupBox;
    Label1: TLabel;
    Label3: TLabel;
    BTN_PASS: TButton;
    BTN_CANCEL: TButton;
    DLC_ORIGEM: TRxDBLookupCombo;
    DLC_DEST: TRxDBLookupCombo;
    QRY_PASSARACESSO: TOraQuery;
    PNL_AVISO: TPanel;
    procedure BTN_CANCELClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BTN_PASSClick(Sender: TObject);
    procedure DLC_ORIGEMCloseUp(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    nIdUsu : Integer;
    nAcao : ^Integer;
  end;

var
  FRM_A019UTAU: TFRM_A019UTAU;

implementation

uses D019UTAU, UVariaveis, MPLCtrl, DMCTRL;

{$R *.DFM}

procedure TFRM_A019UTAU.BTN_CANCELClick(Sender: TObject);
begin
  close;
end;

procedure TFRM_A019UTAU.FormShow(Sender: TObject);
begin
  if Acesso(nMatricula,'A019UTAU',DTM_A019UTAU) then
    Close;

  with DTM_A019UTAU do
    begin
      if nIdUsu > 0 then
        QRY_051.ParamByName('nidtbl_u').asInteger := nIdUsu
      else
        QRY_051.SQL.Text := 'select * from tbl_u';


      QRY_051.ExecSQL;

      DLC_ORIGEM.KeyValue := nIdUsu;

    end;

  if nAcao <> nil then
    nAcao^ := mrCancel;


  FRM_A019UTAU.OnShow := nil;
 {é atribuido ao OnShow do Form o valor nil para que o mesmo seja executado apenas uma vez}
 {pelo fato que se outra aplicação for chamada pela tecla F3, e ao retornar da aplicação que foi chamada pela tecla}
 {o evento OnShow deste form não acontecerá, ou seja não será executado, para permanecer o mesmo status da aplicação}
 {quando o F3 foi chamado}

end;

procedure TFRM_A019UTAU.FormCreate(Sender: TObject);
begin
  nIdUsu := 0;
end;

procedure TFRM_A019UTAU.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:= oControlForms.Saidas(Self,[DTM_A019UTAU],nil);
end;

procedure TFRM_A019UTAU.BTN_PASSClick(Sender: TObject);
begin
  PNL_AVISO.visible := true;
  Repaint;
  DMControle.Conexao.StartTransaction;
  try
    QRY_PASSARACESSO.ParamByName('nidusuorigem').value := DLC_ORIGEM.KeyValue;
    QRY_PASSARACESSO.ParamByName('nidusudest').value := DLC_DEST.KeyValue;
    QRY_PASSARACESSO.ParamByName('nidoperador').asInteger := nMatricula;
    QRY_PASSARACESSO.ExecSQL;
    DMControle.Conexao.Commit;
    PNL_AVISO.visible := false;
    if nAcao <> nil then
      nAcao^ := mrOk;
  except
    //se houver algum erro
      on E : Exception do
        begin
          PNL_AVISO.visible := false;
          //avisa ao usuário
          MessageDlg('Não foi possivel efetuar a gravação de todos os dados,'+#13+
                     'por isso está operação será cancelada para manter a integridade'+#13+
                     'dos seus dados!'+#13+'Erro: '+E.Message,mtError,[mbOk],0);
          //desfaz as alterações nas tabelas
          DMControle.Conexao.RollBack;
        end;
  end;

  close;

end;

procedure TFRM_A019UTAU.DLC_ORIGEMCloseUp(Sender: TObject);
begin
  if DLC_ORIGEM.KeyValue = DLC_DEST.KeyValue then
    MessageDlg('Você não pode passar os acessos de um usuário para ele mesmo!',
               mtError,[mbOk],0);
end;

end.
