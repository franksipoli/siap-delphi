unit A010AD;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  TeEngine, Series, TeeProcs, Chart, DBChart, QrTee, QuickRpt, ExtCtrls,
  Qrctrls;

type
  TFRM_A010AD = class(TForm)
    RPT_GRAFICO: TQuickRep;
    DetailBand1: TQRBand;
    QRChart1: TQRChart;
    QRDBChart1: TQRDBChart;
    TitleBand1: TQRBand;
    QRLabel1: TQRLabel;
    QRShape1: TQRShape;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRSysData1: TQRSysData;
    QRSysData2: TQRSysData;
    QRLabel4: TQRLabel;
    LBL_ANOS: TQRLabel;
    QRLabel6: TQRLabel;
    QRSysData3: TQRSysData;
    QRLabel7: TQRLabel;
    Series1: TBarSeries;
    Series2: TBarSeries;
    procedure QRSysData1Print(sender: TObject; var Value: String);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRM_A010AD: TFRM_A010AD;

implementation

uses A009AD;

{$R *.DFM}

procedure TFRM_A010AD.QRSysData1Print(sender: TObject; var Value: String);
begin
  Value := FormatDateTime('dd/mm/yyy',StrToDate(Value));

end;

end.
