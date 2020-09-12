unit DMCTRL;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, DBTables, Ora, MemDS, OraSmart, DBAccess, VirtualTable;

type
  TDMControle = class(TDataModule)
    Conexao: TOraSession;
    TempMenu: TVirtualTable;
    QryTemp: TSmartQuery;
    Qry_T: TOraQuery;
    Qry_AO: TOraQuery;
    Qry_G: TOraQuery;
    Qry_U: TOraQuery;                        
    Qry_AT: TOraQuery;
    Qry_UA: TOraQuery;
    Qry_D: TOraQuery;
    Qry_O: TOraQuery;
    Qry_UAD: TOraQuery;
    Qry_ET: TOraQuery;
    Qry_P: TOraQuery;
    Qry_UAO: TOraQuery;
    Dts_P: TOraDataSource;
    Qry_A: TOraQuery;
    Qry_ATCTBLCOMPO: TStringField;
    Qry_ATCORDER: TStringField;
    Qry_ATCMASTERF: TStringField;
    Qry_ATCMASTERS: TStringField;
    Qry_ATMSELECT: TMemoField;
    Qry_ATNIDTBL_AT: TFloatField;
    Qry_ATNIDTBL_T: TFloatField;
    Qry_ATNIDTBL_A: TFloatField;
    procedure DataModuleDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    function Conecta : boolean;
    procedure AtualizaTabelasControle;
  end;

var
  DMControle: TDMControle;

implementation

uses Login, UVariaveis;

{$R *.DFM}




procedure TDMControle.AtualizaTabelasControle;
begin
    Qry_A.ExecSql;
    Qry_AO.ExecSql;
    Qry_AT.ExecSql;
    Qry_D.ExecSql;
    Qry_ET.ExecSql;
    Qry_G.ExecSql;
    Qry_O.ExecSql;
    Qry_P.ExecSql;
    Qry_T.ExecSql;
    Qry_U.ExecSql;
    Qry_UAD.ExecSql;
    Qry_UAO.ExecSql;
end;

function TDMControle.Conecta: boolean;
begin
  result := false;
  try
    if FRM_LOGIN.CHK_REMOTO.Checked then
      begin
        cPathImg := Copy(FRM_LOGIN.cipremoto,length(FRM_LOGIN.cipremoto),1);
        Delete(FRM_LOGIN.cipremoto,length(FRM_LOGIN.cipremoto),1);
        Conexao.Server   := FRM_LOGIN.cipremoto + ':1521:orcl';
      end
    else
      begin
        cPathImg := Copy(FRM_LOGIN.cip,length(FRM_LOGIN.cip),1);
        Delete(FRM_LOGIN.cip,length(FRM_LOGIN.cip),1);
        Conexao.Server   := FRM_LOGIN.cip + ':1521:orcl' ;
      end;
    FRM_LOGIN.CHK_REMOTO.Enabled := false;

    Conexao.Connected := True;
    //Qry_A.Open;
    Qry_AO.Open;
    Qry_AT.Open;
    Qry_D.Open;
    Qry_ET.Open;
    Qry_G.Open;
    Qry_O.Open;
    Qry_P.Open;
    Qry_T.Open;
    Qry_U.Open;
//    Qry_UA.Open;
    Qry_UAD.Open;
    //Qry_UAO.Open;
    cPathImg := cPathImg+Qry_P.FieldByName('cPathImg').asString;
    result := true;
  except
    raise;
  end;

end;

procedure TDMControle.DataModuleDestroy(Sender: TObject);
begin
  Conexao.Disconnect;
  //Controle.Disconnect;
end;

end.
