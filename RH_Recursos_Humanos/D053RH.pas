unit D053RH;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, MemDS, DBAccess, Ora;

type
  TDTM_A053RH = class(TDataModule)
    QRY_028: TOraQuery;
    QRY_170: TOraQuery;
    DTS_028: TOraDataSource;
    DTS_170: TOraDataSource;
    QRY_028NIDTBXDSF: TFloatField;
    QRY_028CNOMEDSF: TStringField;
    QRY_170NIDTBXDSF: TFloatField;
    QRY_170CNOMEDSF: TStringField;
    QRY_170NIDTBXGRP: TFloatField;
    QRY_170NIDTAGGSF: TFloatField;
    QRY_028NIDTAGGSF: TFloatField;
    QRY_028NIDTBXGRP: TFloatField;
    procedure QRY_028AfterScroll(DataSet: TDataSet);
    procedure QRY_028AfterOpen(DataSet: TDataSet);
    procedure QRY_170AfterScroll(DataSet: TDataSet);
    procedure QRY_170AfterOpen(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DTM_A053RH: TDTM_A053RH;

implementation

uses MPLLib, A053RH;

{$R *.DFM}

procedure TDTM_A053RH.QRY_028AfterScroll(DataSet: TDataSet);
begin
  NavBtn(DataSet,FRM_A053RH.BTN_RETROCEDER1,FRM_A053RH.BTN_AVANCAR1);
end;

procedure TDTM_A053RH.QRY_028AfterOpen(DataSet: TDataSet);
begin
  QRY_028AfterScroll(DataSet);
end;

procedure TDTM_A053RH.QRY_170AfterScroll(DataSet: TDataSet);
begin
  NavBtn(DataSet,FRM_A053RH.BTN_RETROCEDER2,FRM_A053RH.BTN_AVANCAR2);
end;

procedure TDTM_A053RH.QRY_170AfterOpen(DataSet: TDataSet);
begin
  QRY_170AfterScroll(DataSet);
end;

end.
