unit D006AD;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Ora, MemDS, VirtualTable, ppComm, ppRelatv, ppCache, ppDB, ppDBPipe, Db,
  DBTables, DBAccess;

type
  TDTM_A006AD = class(TDataModule)
    QRY_PRECEBIM: TQuery;
    QRY_PRECEBIMddatavenci: TDateField;
    QRY_PRECEBIMcdescricao: TStringField;
    QRY_PRECEBIMvalor: TFloatField;
    DTS_PRECEBIM: TDataSource;
    DBP_DIAS: TppDBPipeline;
    VTB_GERAL: TVirtualTable;
    VTB_GERALddatavenci: TDateTimeField;
    VTB_GERALcdescricao: TStringField;
    VTB_GERALvalor: TFloatField;
    QRY_IPTU: TQuery;
    DTS_GERAL: TOraDataSource;
    VTB_DIAS: TVirtualTable;
    DTS_DIAS: TOraDataSource;
    DBP_P: TppDBPipeline;
    VTB_DIASddatavenci: TDateTimeField;
    VTB_DIASvalor: TFloatField;
    DBP_GERAL: TppDBPipeline;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DTM_A006AD: TDTM_A006AD;

implementation

uses DMCTRL, A006AD;



{$R *.DFM}


end.
