unit D001ADAT;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, MemDS, DBAccess, Ora;

type
  TDTM_A001ADAT = class(TDataModule)
    QRY_069: TOraQuery;
    DTS_069: TOraDataSource;
    QRY_071: TOraQuery;
    DTS_071: TOraDataSource;
    QRY_070: TOraQuery;
    DTS_070: TOraDataSource;
    QRY_072: TOraQuery;
    DTS_072: TOraDataSource;
    procedure QRY_069AfterScroll(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DTM_A001ADAT: TDTM_A001ADAT;

implementation

uses A001ADAT;

{$R *.DFM}

procedure TDTM_A001ADAT.QRY_069AfterScroll(DataSet: TDataSet);
begin
  FRM_A001ADAT.BTN_ALTERAR.Enabled := not(DataSet.FieldByName('cEnviadoTC').asString = 'S');
  FRM_A001ADAT.BTN_EXCLUIR.Enabled := FRM_A001ADAT.BTN_ALTERAR.Enabled;
end;

end.
