unit D011;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, Ora, MemDS, DBAccess;

type
  TDTM_A011 = class(TDataModule)
    QRY_026: TOraQuery;
    DTS_026: TOraDataSource;
    QRY_026NIDTBXGRP: TFloatField;
    QRY_026CNOMEGRP: TStringField;
    QRY_026NIDTBXVPR: TFloatField;
    QRY_026NIDRELMASC: TFloatField;
    QRY_026NIDRELFEMI: TFloatField;
    QRY_026CSEXO: TStringField;
    QRY_026_1: TOraQuery;
    DTS_026_1: TOraDataSource;
    QRY_026_2: TOraQuery;
    DTS_026_2: TOraDataSource;
    QRY_026DAT_RELMASC: TStringField;
    QRY_026DAT_RELFEMI: TStringField;
    procedure QRY_026CSEXOGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure QRY_026CSEXOSetText(Sender: TField; const Text: String);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DTM_A011: TDTM_A011;

implementation

{$R *.DFM}

procedure TDTM_A011.QRY_026CSEXOGetText(Sender: TField; var Text: String;
  DisplayText: Boolean);
begin
  if Sender.AsString = 'M' then
    Text := 'MASCULINO'
  else
    if Sender.AsString = 'F' then
      Text := 'FEMININO'
    else
      Text := '';

end;

procedure TDTM_A011.QRY_026CSEXOSetText(Sender: TField;
  const Text: String);
begin
  if Text = 'MASCULINO' then
    Sender.AsString := 'M'
  else
    if Text = 'FEMININO' then
      Sender.AsString := 'F'
    else
      Sender.AsString := '';
end;

end.
