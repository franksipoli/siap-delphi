unit A002UTCL;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ExtCtrls;

type
  TFrmCxPostal = class(TForm)
    Shape1: TShape;
    SpeedButton1: TSpeedButton;
    Chk_CxPCom: TCheckBox;
    Chk_AgPostal: TCheckBox;
    procedure FormShow(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmCxPostal: TFrmCxPostal;

implementation

uses A001UTCL;

{$R *.DFM}

procedure TFrmCxPostal.FormShow(Sender: TObject);

begin

  Left := Frm_PesCep.Left + 91;
  Top  := Frm_PesCep.Top + 75 ;
  FrmCxPostal.Chk_AgPostal.Checked := false;
  FrmCxPostal.Chk_CxPCom.Checked := false;
end;

procedure TFrmCxPostal.SpeedButton1Click(Sender: TObject);
begin
  if (not(Chk_AgPostal.Checked)) and (not(Chk_CxPCom.Checked)) then
    MessageDlg('Você deve escolher qual(is) tipo(s) de caixa postal quer pesquisar',
                mtInformation,[mbOK],0)
  else
    close;
end;

procedure TFrmCxPostal.FormKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    if Chk_AgPostal.Focused then
      Chk_AgPostal.Checked := not(Chk_AgPostal.Checked)
    else
      if Chk_CxPCom.Focused then
        Chk_CxPCom.Checked := not(Chk_CxPCom.Checked);

end;

end.
