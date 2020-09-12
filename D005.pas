unit D005;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, Ora, MemDS, DBAccess;

type
  TDTM_A005 = class(TDataModule)
    QRY_011: TOraQuery;
    DTS_011: TOraDataSource;
    QRY_011NIDTBXBAI: TFloatField;
    QRY_011CNOMEBAI: TStringField;
    QRY_011NIDTBXLOC: TFloatField;
    QRY_011CNOMELOC: TStringField;
    QRY_011UFLOC: TStringField;
    procedure DTS_011DataChange(Sender: TObject; Field: TField);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DTM_A005: TDTM_A005;

implementation

uses A005 ;

{$R *.DFM}

procedure TDTM_A005.DTS_011DataChange(Sender: TObject; Field: TField);
begin
  if DTS_011.DataSet.State = dsbrowse then
    begin
      FRM_A005.CBE_CNOMELOC.Text := DTS_011.DataSet.FieldByName('CNOMELOC').AsString;
      FRM_A005.EDT_UFLOC.Text := DTS_011.DataSet.FieldByName('UFLOC').AsString;
    end;
end;

end.
