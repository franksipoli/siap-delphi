unit D002AD;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ppDB, Db, Ora, ppDBPipe, MemDS, DBAccess, ppBands, ppClass, myChkBox,
  ppCtrls, ppReport, ppStrtch, ppSubRpt, ppPrnabl, ppCache, ppComm,
  ppRelatv, ppProd;

type
  TDTM_A002AD = class(TDataModule)
    QRY_031: TOraQuery;
    QRY_034: TOraQuery;
    Fornecedor: TppDBPipeline;
    DTS_031: TOraDataSource;
    DocFor: TppDBPipeline;
    DTS_034: TOraDataSource;
    DBP_Parametros: TppDBPipeline;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DTM_A002AD: TDTM_A002AD;

implementation

{$R *.DFM}

end.
