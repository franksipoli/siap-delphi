unit MsgAlerta;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  RxGIF, ExtCtrls, Buttons, LMDCustomControl, LMDCustomPanel,
  LMDCustomBevelPanel, LMDCustomParentPanel, LMDCustomGroupBox, LMDGroupBox,
  LMDControl, LMDBaseControl, LMDBaseGraphicControl, LMDBaseLabel,
  LMDCustomLabel, LMDLabel;

type
  TFrm_MsgAlerta = class(TForm)
    LMDGroupBox1: TLMDGroupBox;
    BTN_SOBRE: TSpeedButton;
    BTN_ADIC: TSpeedButton;
    BTN_CANC: TSpeedButton;
    Image1: TImage;
    LMDLabel1: TLMDLabel;
    LMDLabel2: TLMDLabel;
    LMDLabel3: TLMDLabel;
    LMDLabel4: TLMDLabel;
    LMDLabel5: TLMDLabel;
    procedure BTN_SOBREClick(Sender: TObject);
    procedure BTN_ADICClick(Sender: TObject);
    procedure BTN_CANCClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Frm_MsgAlerta: TFrm_MsgAlerta;

implementation

uses TxttoSql;

{$R *.DFM}

procedure TFrm_MsgAlerta.BTN_SOBREClick(Sender: TObject);
begin
  lSobrepoe := true;
  Close;
end;

procedure TFrm_MsgAlerta.BTN_ADICClick(Sender: TObject);
begin
  lAdiciona := true;
  Close;
end;

procedure TFrm_MsgAlerta.BTN_CANCClick(Sender: TObject);
begin
  lCancel := true;
  Close;
end;

procedure TFrm_MsgAlerta.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
end;

end.
