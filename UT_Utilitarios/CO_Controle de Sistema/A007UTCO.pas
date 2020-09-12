unit A007UTCO;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  LMDCustomControl, LMDCustomPanel, LMDCustomBevelPanel,
  LMDCustomParentPanel, LMDCustomPanelFill, LMDPanelFill, StdCtrls, Buttons,
  Grids, DBGrids, A001UTCO, DB;

type
  TFRM_A007UTCO = class(TForm)
    GRD_OBJ: TDBGrid;
    Pnl_Sistema: TLMDPanelFill;
    CBB_CLASSE: TComboBox;
    Btn_Ok: TBitBtn;
    Btn_Cancel: TBitBtn;
    procedure Btn_CancelClick(Sender: TObject);
    procedure Btn_OkClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure CBB_CLASSEChange(Sender: TObject);
    procedure GRD_OBJDblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRM_A007UTCO: TFRM_A007UTCO;

implementation

uses TELAPRIN, Login, MPLCtrl, D007UTCO, UVariaveis, A003UTCO, D003UTCO;

{$R *.DFM}

procedure TFRM_A007UTCO.Btn_CancelClick(Sender: TObject);
begin
  close;
end;

procedure TFRM_A007UTCO.Btn_OkClick(Sender: TObject);
begin
  with FRM_A003UTCO.DBG_APLICOBJETOS.DataSource.DataSet do
   begin

     if not(Locate('nidtbl_o',DTM_A007UTCO.DTS_044.DataSet.FieldByName('nidtbl_o').asInteger,[])) then
       begin
         FRM_A003UTCO.DBG_APLICOBJETOS.DataSource.DataSet.Tag := 1;
         DBGenerica(FRM_A003UTCO.DBG_APLICOBJETOS.DataSource,'Conexao',1,0);
         if DTM_A003UTCO.DTS_041.DataSet.State = dsInsert then
           FieldByName('nidtbl_a').asInteger := 0;
         FieldByName('nidtbl_ao').asInteger := 0;
         FieldByName('nidtbl_o').asInteger :=
         DTM_A007UTCO.DTS_044.DataSet.FieldByName('nidtbl_o').asInteger;
         FieldByName('cnomeobj').asString :=
         DTM_A007UTCO.DTS_044.DataSet.FieldByName('cnomeobj').asString;
         FieldByName('chint').asString :=
         DTM_A007UTCO.DTS_044.DataSet.FieldByName('chint').asString;
         DBGenerica(FRM_A003UTCO.DBG_APLICOBJETOS.DataSource,'Conexao',4,1);
         FRM_A003UTCO.DBG_APLICOBJETOS.DataSource.DataSet.Tag := 0;
       end;


   end;

end;

procedure TFRM_A007UTCO.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := oControlForms.Saidas(Sender,[DTM_A007UTCO],DTM_A007UTCO.DTS_044.DataSet);
end;

procedure TFRM_A007UTCO.FormShow(Sender: TObject);
begin
   Acesso(nMatricula,'A007UTCO',DTM_A007UTCO);
   FRM_A007UTCO.OnShow := nil;
 {é atribuido ao OnShow do Form o valor nil para que o mesmo seja executado apenas uma vez}
 {pelo fato que se outra aplicação for chamada pela tecla F3, e ao retornar da aplicação que foi chamada pela tecla}
 {o evento OnShow deste form não acontecerá, ou seja não será executado, para permanecer o mesmo status da aplicação}
 {quando o F3 foi chamado}
end;

procedure TFRM_A007UTCO.CBB_CLASSEChange(Sender: TObject);
begin
  if CBB_CLASSE.Text = CBB_CLASSE.Items.Strings[0] then
    begin
      DTM_A007UTCO.QRY_044.Filtered := false;
      DTM_A007UTCO.QRY_044.Filter := '';
      DTM_A007UTCO.QRY_044.Refresh;
    end
  else
    DTM_A007UTCO.QRY_044.Filter := 'cnomecla = ' + QuotedStr(CBB_CLASSE.Text);
    DTM_A007UTCO.QRY_044.Filtered := true;
end;

procedure TFRM_A007UTCO.GRD_OBJDblClick(Sender: TObject);
begin
  Btn_OkClick(Sender);
end;

end.
