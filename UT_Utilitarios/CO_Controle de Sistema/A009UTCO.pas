unit A009UTCO;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, DBGrids, StdCtrls, Buttons, LMDCustomControl, LMDCustomPanel,
  LMDCustomBevelPanel, LMDCustomParentPanel, LMDCustomGroupBox, LMDGroupBox, DB;

type
  TFRM_A009UTCO = class(TForm)
    GRD_OBJ: TDBGrid;
    BTN_ADD: TBitBtn;
    BTN_CADCAMPO: TBitBtn;
    Btn_Sair2: TBitBtn;
    LMDGroupBox1: TLMDGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    EDT_NIDTBL_D: TEdit;
    EDT_CNOMECAMPO: TEdit;
    procedure Btn_Sair2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure EDT_NIDTBL_DChange(Sender: TObject);
    procedure EDT_CNOMECAMPOChange(Sender: TObject);
    procedure EDT_NIDTBL_DKeyPress(Sender: TObject; var Key: Char);
    procedure BTN_CADCAMPOClick(Sender: TObject);
    procedure GRD_OBJTitleClick(Column: TColumn);
    procedure BTN_ADDClick(Sender: TObject);
    procedure GRD_OBJDblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRM_A009UTCO: TFRM_A009UTCO;

implementation

uses MPLCtrl, D009UTCO, UVariaveis, CtrlForms, MPLLib, A005UTCO;

{$R *.DFM}

procedure TFRM_A009UTCO.Btn_Sair2Click(Sender: TObject);
begin
  close;
end;

procedure TFRM_A009UTCO.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action:= oControlForms.Saidas(Sender,[DTM_A009UTCO],DTM_A009UTCO.DTS_046.DataSet);
end;

procedure TFRM_A009UTCO.FormShow(Sender: TObject);
begin
  Acesso(nMatricula,'A009UTCO',DTM_A009UTCO);
  FRM_A009UTCO.OnShow := nil;
 {é atribuido ao OnShow do Form o valor nil para que o mesmo seja executado apenas uma vez}
 {pelo fato que se outra aplicação for chamada pela tecla F3, e ao retornar da aplicação que foi chamada pela tecla}
 {o evento OnShow deste form não acontecerá, ou seja não será executado, para permanecer o mesmo status da aplicação}
 {quando o F3 foi chamado}
end;

procedure TFRM_A009UTCO.EDT_NIDTBL_DChange(Sender: TObject);
begin
  if EDT_NIDTBL_D.GetTextLen > 0 then
    DTM_A009UTCO.DTS_046.DataSet.Locate('nidtbl_d',StrToInt(EDT_NIDTBL_D.Text),[loPartialKey]);
end;

procedure TFRM_A009UTCO.EDT_CNOMECAMPOChange(Sender: TObject);
begin
  DTM_A009UTCO.DTS_046.DataSet.Locate('cnomecampo',EDT_CNOMECAMPO.Text,[loPartialKey,loCaseInsensitive]);
end;

procedure TFRM_A009UTCO.EDT_NIDTBL_DKeyPress(Sender: TObject;
  var Key: Char);
begin
  Key  := ValEditNumerico(Key);
end;

procedure TFRM_A009UTCO.BTN_CADCAMPOClick(Sender: TObject);
begin
  //chama o cadastro de Dicionário
  oControlForms.AtivaForm('FRM_A008UTCO',shModal,nil);
  DTM_A009UTCO.DTS_046.DataSet.Refresh;
end;

procedure TFRM_A009UTCO.GRD_OBJTitleClick(Column: TColumn);
begin
  DTM_A009UTCO.QRY_046.SetOrderBy(Column.FieldName);
  DTM_A009UTCO.QRY_046.Open;
end;

procedure TFRM_A009UTCO.BTN_ADDClick(Sender: TObject);
begin
  if not(FRM_A005UTCO.GRD_CAMPOS.DataSource.DataSet.Locate('nidtbl_d',
         DTM_A009UTCO.DTS_046.DataSet.FieldByName('nidtbl_d').asInteger,[])) then
    begin
      //inseri registro na tabela de estrutura de tabelas
      DBGenerica(FRM_A005UTCO.GRD_CAMPOS.DataSource,'Conexao',1,0);
      with FRM_A005UTCO.GRD_CAMPOS.DataSource.DataSet do
        begin
          FieldByName('nidtbl_et').AsInteger := 0;
          //FieldByName('nidtbl_t')
          FieldByName('nidtbl_d').AsInteger :=
          DTM_A009UTCO.DTS_046.DataSet.FieldByName('nidtbl_d').asInteger;
          FieldByName('cnomecampo').asString :=
          DTM_A009UTCO.DTS_046.DataSet.FieldByName('cnomecampo').asString;
          FieldByName('ctipocampo').asString :=
          DTM_A009UTCO.DTS_046.DataSet.FieldByName('ctipocampo').asString;
          FieldByName('ntamanho').asInteger :=
          DTM_A009UTCO.DTS_046.DataSet.FieldByName('ntamanho').asInteger;
          FieldByName('ndecimal').asInteger :=
          DTM_A009UTCO.DTS_046.DataSet.FieldByName('ndecimal').asInteger;
          FieldByName('ctitulo').asString :=
          DTM_A009UTCO.DTS_046.DataSet.FieldByName('ctitulo').asString;
          FieldByName('ncodtabela').value :=
          DTM_A009UTCO.DTS_046.DataSet.FieldByName('ncodtabela').value;
        end;
      //grava o novo registro em cahe na tabela de estrutura de tabela
      DBGenerica(FRM_A005UTCO.GRD_CAMPOS.DataSource,'Conexao',4,1);
    end;  
end;

procedure TFRM_A009UTCO.GRD_OBJDblClick(Sender: TObject);
begin
  BTN_ADDClick(Sender);
end;

end.
