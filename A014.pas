unit A014;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, DB, Grids, DBGrids, Ora, MemDS, DBAccess;

type
  TPesqRapida = record
    Query : TOraQuery;
    CampoPesq,
    CampoRetorno,
    TituloCampo,
    ValorRetorn : String;
    AcaoUsu : Integer;
  end;
  TFRM_A014 = class(TForm)
    EDT_VALOR: TEdit;
    DBG_LOCALIZA: TDBGrid;
    QRY_LOCALIZA: TOraQuery;
    DTS_LOCALIZA: TOraDataSource;
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure FormShow(Sender: TObject);
    procedure DBG_LOCALIZADblClick(Sender: TObject);
    procedure EDT_VALORKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure DBG_LOCALIZADrawColumnCell(Sender: TObject;
      const Rect: TRect; DataCol: Integer; Column: TColumn;
      State: TGridDrawState);
  private
    { Private declarations }
  public
    { Public declarations }
    PesqRapida : TPesqRapida;
  end;

var
  FRM_A014: TFRM_A014;

implementation

uses UVariaveis;

{$R *.DFM}

procedure TFRM_A014.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if (Key = VK_ESCAPE) then
    close;

end;

procedure TFRM_A014.FormShow(Sender: TObject);

begin
  QRY_LOCALIZA.SQL.Add(PesqRapida.Query.SQL.Text);
  QRY_LOCALIZA.AddWhere(PesqRapida.CampoPesq + ' like :parametro');
  QRY_LOCALIZA.Params.Assign(PesqRapida.Query.Params);
  QRY_LOCALIZA.Macros.Assign(PesqRapida.Query.Macros);
  QRY_LOCALIZA.Open;
  DBG_LOCALIZA.Columns[0].FieldName := PesqRapida.CampoPesq;
  DBG_LOCALIZA.Columns[0].Title.Caption := PesqRapida.TituloCampo;
  DBG_LOCALIZA.Update;
  PesqRapida.AcaoUsu := mrCancel;
end;

procedure TFRM_A014.DBG_LOCALIZADblClick(Sender: TObject);
begin
  PesqRapida.ValorRetorn := QRY_LOCALIZA.FieldByName(PesqRapida.CampoRetorno).AsString;
  PesqRapida.AcaoUsu := mrOk;
  close;
end;

procedure TFRM_A014.EDT_VALORKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_RETURN then
    begin
      QRY_LOCALIZA.ParamByName('parametro').asString := '%' + UpperCase(EDT_VALOR.Text) + '%';
      QRY_LOCALIZA.ExecSQL;
      EDT_VALOR.SetFocus;
    end;
end;

procedure TFRM_A014.DBG_LOCALIZADrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
{Pinta linhas do Grid}
  oMetodos.ColorGrid(Sender,Rect,DataCol,Column,State);
end;

end.
