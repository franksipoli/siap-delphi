unit A009AD;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, TeeProcs, TeEngine, Chart, Db, Ora, MemDS,
  Series, DBTables, Menus, Buttons, RxLookup;

type
  TFRM_A009AD = class(TForm)
    Chart: TChart;
    QRY_ANO1: TQuery;
    QRY_ANO2: TQuery;
    CBB_ANO1: TComboBox;
    CBB_ANO2: TComboBox;
    Label1: TLabel;
    BTN_PESQFLX: TBitBtn;
    BTN_IMPFLX: TBitBtn;
    PNL_MSG: TPanel;
    Series2: TBarSeries;
    Series1: TBarSeries;
    DBL_CCOMPOSI: TRxDBLookupCombo;
    QRY_COMPOSI: TQuery;
    DTS_COMPOSI: TDataSource;
    procedure Button1Click(Sender: TObject);
    procedure CBB_ANO1KeyPress(Sender: TObject; var Key: Char);
    procedure CBB_ANO1Change(Sender: TObject);
    procedure CBB_ANO2Change(Sender: TObject);
    procedure BTN_IMPFLXClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure DBL_CCOMPOSIChange(Sender: TObject);
    procedure DBL_CCOMPOSIKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
    function CaminhoBase(Ano : String): String;
  end;

var
  FRM_A009AD: TFRM_A009AD;

implementation

uses UVariaveis, MPLCtrl, A010AD;



{$R *.DFM}

procedure TFRM_A009AD.Button1Click(Sender: TObject);
  var
    Mes, Mes1 : array[0..12] of Double ;
    i : integer;
begin
  PNL_MSG.Visible := true;
  Chart.Series[0].Clear;
  Chart.Series[1].Clear;
  Application.ProcessMessages;
  try
    if not(QRY_ANO1.Active) then
      begin
        QRY_ANO1.DatabaseName := CaminhoBase(CBB_ANO1.Text);
        QRY_ANO1.ParamByName('nano').AsInteger := StrToInt(CBB_ANO1.Text);
        QRY_ANO1.Open;
      end;
    if not(QRY_ANO2.Active) then
      begin
        QRY_ANO2.DatabaseName := CaminhoBase(CBB_ANO2.Text);
        QRY_ANO2.ParamByName('nano').AsInteger := StrToInt(CBB_ANO2.Text);
        QRY_ANO2.Open;
      end;
    Mes[0] := 0.00;
    Mes[1] := 0.00;
    Mes[2] := 0.00;
    Mes[3] := 0.00;
    Mes[4] := 0.00;
    Mes[5] := 0.00;
    Mes[6] := 0.00;
    Mes[7] := 0.00;
    Mes[8] := 0.00;
    Mes[9] := 0.00;
    Mes[10] := 0.00;
    Mes[11] := 0.00;
    Mes[12] := 0.00;

    Mes1[0] := 0.00;
    Mes1[1] := 0.00;
    Mes1[2] := 0.00;
    Mes1[3] := 0.00;
    Mes1[4] := 0.00;
    Mes1[5] := 0.00;
    Mes1[6] := 0.00;
    Mes1[7] := 0.00;
    Mes1[8] := 0.00;
    Mes1[9] := 0.00;
    Mes1[10] := 0.00;
    Mes1[11] := 0.00;
    Mes1[12] := 0.00;
    QRY_ANO1.First;
    while not(QRY_ANO1.Eof) do
      begin
        if QRY_ANO1.FieldByName('cdescricao').asString = DBL_CCOMPOSI.Text then
         begin
           Mes[StrToInt(FormatDateTime('m',QRY_ANO1.FieldByName('ddatacred').AsDateTime))] :=
           Mes[StrToInt(FormatDateTime('m',QRY_ANO1.FieldByName('ddatacred').AsDateTime))] +
           (QRY_ANO1.FieldByName('ntotal').AsFloat + (QRY_ANO1.FieldByName('ntotreci').AsFloat -
           QRY_ANO1.FieldByName('ntotal').AsFloat));
         end;
        QRY_ANO1.Next;
      end;
    QRY_ANO2.First;
    while not(QRY_ANO2.Eof) do
      begin
        if QRY_ANO2.FieldByName('cdescricao').asString = DBL_CCOMPOSI.Text then
          begin
            Mes1[StrToInt(FormatDateTime('m',QRY_ANO2.FieldByName('ddatacred').AsDateTime))] :=
            Mes1[StrToInt(FormatDateTime('m',QRY_ANO2.FieldByName('ddatacred').AsDateTime))] +
           (QRY_ANO2.FieldByName('ntotal').AsFloat + (QRY_ANO2.FieldByName('ntotreci').AsFloat -
            QRY_ANO2.FieldByName('ntotal').AsFloat));
          end;
        QRY_ANO2.Next;
      end;
   for i := 1 to 12 do
     begin
       Chart.Series[0].Add(Trunc(Mes[i] / 1000),ShortMonthNames[i],clRed);
       Chart.Series[1].Add(Trunc(Mes1[i] / 1000),ShortMonthNames[i],clGreen);
     end;
  finally
    PNL_MSG.Visible := false;
    Application.ProcessMessages;
  end;

end;

procedure TFRM_A009AD.CBB_ANO1KeyPress(Sender: TObject; var Key: Char);
begin
 if Key <> #13 then
   key := #0;
end;

procedure TFRM_A009AD.CBB_ANO1Change(Sender: TObject);
begin
  if CBB_ANO1.Text = '' then
    Chart.Series[0].Title := ' '
  else
    Chart.Series[0].Title := CBB_ANO1.Text;
  QRY_ANO1.Close;
  QRY_ANO2.Close;
  CBB_ANO2.Text := '';
  CBB_ANO2.Items.Clear;
  CBB_ANO2.Items.AddStrings(CBB_ANO1.Items);
  CBB_ANO2.Items.Delete(CBB_ANO2.Items.IndexOf(CBB_ANO1.Text));
//  BTN_IMPFLX.Enabled := (CBB_ANO1.Text <> '') and (CBB_ANO2.Text <> '')
end;

procedure TFRM_A009AD.CBB_ANO2Change(Sender: TObject);
begin
  Chart.Series[0].Clear;
  Chart.Series[1].Clear;
  QRY_ANO1.Close;
  QRY_ANO2.Close;
  if CBB_ANO2.Text = '' then
    Chart.Series[1].Title := ' '
  else
    Chart.Series[1].Title := CBB_ANO2.Text;
  DBL_CCOMPOSIChange(Sender);
end;

procedure TFRM_A009AD.BTN_IMPFLXClick(Sender: TObject);
begin
  Application.CreateForm(TFRM_A010AD,FRM_A010AD);
  try
    FRM_A010AD.QRChart1.Chart.Series[0].Title :=
    Chart.Series[0].Title;
    FRM_A010AD.QRChart1.Chart.Series[1].Title :=
    Chart.Series[1].Title;
    FRM_A010AD.QRChart1.Chart.Title :=
    Chart.Title;
    FRM_A010AD.LBL_ANOS.Caption :=
    'Comparativo dos anos ' + CBB_ANO1.Text + ' / ' + CBB_ANO2.Text;
    FRM_A010AD.RPT_GRAFICO.Preview;
    FRM_A010AD.Close;
  finally
    FreeAndNil(FRM_A010AD);
  end;
end;

function TFRM_A009AD.CaminhoBase(Ano: String): String;
begin
  if Ano = '2005' then
    Result := 'g:\p\tmp'
  else
    Result := 'I:\wp'+ Copy(Ano,3,2);
end;

procedure TFRM_A009AD.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   Action:= oControlForms.Saidas(Self,[nil],nil);
end;

procedure TFRM_A009AD.FormShow(Sender: TObject);
begin
  if not Acesso(nMatricula,'A009AD',nil) then
    close;
  CBB_ANO2Change(Sender);
//  FRM_A007AD.OnShow := nil;
 {é atribuido ao OnShow do Form o valor nil para que o mesmo seja executado apenas uma vez}
 {pelo fato que se outra aplicação for chamada pela tecla F3, e ao retornar da aplicação que foi chamada pela tecla}
 {o evento OnShow deste form não acontecerá, ou seja não será executado, para permanecer o mesmo status da aplicação}
 {quando o F3 foi chamado}

end;

procedure TFRM_A009AD.DBL_CCOMPOSIChange(Sender: TObject);
begin
  Chart.Title.Text.Clear;
  Chart.Title.Text.Add('Comparativo ' + DBL_CCOMPOSI.Text);
  BTN_IMPFLX.Enabled := (CBB_ANO1.Text <> '') and (CBB_ANO2.Text <> '') and (DBL_CCOMPOSI.Text <> 'TRIBUTO');
  BTN_PESQFLX.Enabled := BTN_IMPFLX.Enabled;
  if QRY_ANO1.Active then
    BTN_PESQFLX.Click;
end;

procedure TFRM_A009AD.DBL_CCOMPOSIKeyPress(Sender: TObject; var Key: Char);
begin
  if Key = #13 then
    BTN_PESQFLX.Click;
end;

end.
