unit D039RH;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, Ora, MemDS, DBAccess;

type
  TDTM_A039RH = class(TDataModule)
    QRY_077: TOraQuery;
    DTS_077: TOraDataSource;
    QRY_077CNOMEGRL: TStringField;
    QRY_077DDTADMISSA: TDateTimeField;
    QRY_077CDESCRICRG: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DTM_A039RH: TDTM_A039RH;

implementation

{$R *.DFM}

end.
