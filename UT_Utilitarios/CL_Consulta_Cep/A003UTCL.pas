unit A003UTCL;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, StdCtrls;

type
  TFrm_MensPesq = class(TForm)
    Button1: TButton;
    Lbl_Localidade: TLabel;
    Label2: TLabel;
    Image1: TImage;
    Lbl_Cep: TLabel;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_MensPesq: TFrm_MensPesq;

implementation

{$R *.DFM}

procedure TFrm_MensPesq.Button1Click(Sender: TObject);
begin
  close;
end;

end.
