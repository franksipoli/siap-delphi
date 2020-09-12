unit DMCTRL;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, Ora, MemDS, OraSmart, DBAccess, VirtualTable;

type
  TDMControle = class(TDataModule)
    TempMenu: TVirtualTable;
    QryTemp: TSmartQuery;
    Qry_A: TOraQuery;
    Qry_FB: TOraQuery;
    Qry_T: TOraQuery;
    Qry_AO: TOraQuery;
    Qry_G: TOraQuery;
    Qry_U: TOraQuery;
    Qry_AT: TOraQuery;
    Qry_I: TOraQuery;
    Qry_UA: TOraQuery;
    Qry_D: TOraQuery;
    Qry_O: TOraQuery;
    Qry_UAD: TOraQuery;
    Qry_ET: TOraQuery;
    Qry_P: TOraQuery;
    Qry_UAO: TOraQuery;
    Upd_A: TOraUpdateSQL;
    Upd_FB: TOraUpdateSQL;
    Upd_T: TOraUpdateSQL;
    Upd_AO: TOraUpdateSQL;
    Upd_G: TOraUpdateSQL;
    Upd_U: TOraUpdateSQL;
    Upd_AT: TOraUpdateSQL;
    Upd_I: TOraUpdateSQL;
    Upd_UA: TOraUpdateSQL;
    Upd_D: TOraUpdateSQL;
    Upd_O: TOraUpdateSQL;
    Upd_UAD: TOraUpdateSQL;
    Upd_ET: TOraUpdateSQL;
    Upd_P: TOraUpdateSQL;
    Upd_UAO: TOraUpdateSQL;
    Dts_P: TOraDataSource;
    Qry_INCODTABELA: TIntegerField;
    Qry_ICNOMEIND: TStringField;
    Qry_IMCHAVEIND: TMemoField;
    Qry_ILPESQUISA: TIntegerField;
    Qry_ICTXTPESQ: TStringField;
    Qry_INCODCAMPO: TIntegerField;
    Qry_ICSEQBROWSE: TStringField;
    Qry_INTIPOCHAVE: TIntegerField;
    Qry_ICCONDICAO: TStringField;
    Controle: TOraSession;
    Conexao: TOraSession;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DMControle: TDMControle;

implementation

{$R *.DFM}




procedure TDMControle.DataModuleCreate(Sender: TObject);
begin
  {$IFDEF PRODUCAO}
    Controle.Username := 'PMG';
    Controle.Password := 'PMG';
    Controle.Server := '192.168.0.1';
    Controle.Connected := True;
    Qry_A.Open;
    Qry_AO.Open;
    Qry_AT.Open;
    Qry_D.Open;
    Qry_ET.Open;
    Qry_FB.Open;
    Qry_G.Open;
    Qry_I.Open;
    Qry_O.Open;
    Qry_P.Open;
    Qry_T.Open;
    Qry_U.Open;
    Qry_UA.Open;
    Qry_UAD.Open;
    Qry_UAO.Open;
  {$ENDIF}
  Conexao.Username := Qry_P.FieldByName('CUSERORA').AsString;
  Conexao.Password := Qry_P.FieldByName('cSenhaOra').AsString;
  Conexao.Server   := Qry_P.FieldByName('cServOra').AsString;
  Conexao.Connected := True;
end;

end.

