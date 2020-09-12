{*******************************************************************************
 *                                                                             *
 *  Aplicação para operador indicar se deseja                                  *
 *  fazer tranferencia de acesso                                               *
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

unit A018UTAU;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, LMDCustomControl, LMDCustomPanel, LMDCustomBevelPanel,
  LMDCustomParentPanel, LMDCustomGroupBox, LMDGroupBox, ExtCtrls;

type
  TFRM_A018UTAU = class(TForm)
    BTN_OK: TButton;
    BTN_PASS: TButton;
    BTN_CANCEL: TButton;
    Image1: TImage;
    lbl_msg: TLabel;
    procedure BTN_PASSClick(Sender: TObject);
    procedure BTN_CANCELClick(Sender: TObject);
    procedure BTN_OKClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
    nIdUsu : Integer;
    cNomeUsu : String;
    nResult : Integer;
  end;

var
  FRM_A018UTAU: TFRM_A018UTAU;

implementation

uses A019UTAU, D019UTAU, MPLCtrl, UVariaveis, CtrlForms;

{$R *.DFM}

procedure TFRM_A018UTAU.BTN_PASSClick(Sender: TObject);
  var
    nAcao : Integer;
begin
   Application.CreateForm(TDTM_A019UTAU,DTM_A019UTAU);
   Application.CreateForm(TFRM_A019UTAU,FRM_A019UTAU);
   FRM_A019UTAU.nIdUsu := nIdUsu;
   FRM_A019UTAU.nAcao := @nAcao;
   oControlForms.AtivaForm('FRM_A019UTAU',ShModal,nil,false);
   if nAcao = mrOk then
     ModalResult := mrOk;
end;

procedure TFRM_A018UTAU.BTN_CANCELClick(Sender: TObject);
begin
  ModalResult := mrCancel;
  close;
end;

procedure TFRM_A018UTAU.BTN_OKClick(Sender: TObject);
begin
  ModalResult := mrIgnore;
end;

procedure TFRM_A018UTAU.FormShow(Sender: TObject);
begin
  lbl_msg.Caption :=
  cNomeUsu + ' atribuiu acesso para outro(s) usuário(s).'#13#10'Você pod' +
  'e transferir o acesso e suas atribuições '#13#10'para outro usuário.'#13#10 +
  'Caso não faça isso todos que receberam '#13#10'acesso do ' +
  cNomeUsu + ', perderam os acessos.'
end;

procedure TFRM_A018UTAU.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

end.
