unit D054RH;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, Ora, MemDS, DBAccess;

type
  TDTM_A054RH = class(TDataModule)
    QRY_027: TOraQuery;
    DTS_027: TOraDataSource;
    QRY_169: TOraQuery;
    DTS_169: TOraDataSource;
    QRY_169NIDTAGGIR: TFloatField;
    QRY_169CNOMEDIR: TStringField;
    QRY_169NIDTBXGRP: TFloatField;
    QRY_169NIDTBXDIR: TFloatField;
    QRY_027NIDTBXDIR: TFloatField;
    QRY_027CNOMEDIR: TStringField;
    QRY_027NIDTAGGIR: TFloatField;
    QRY_027NIDTBXGRP: TFloatField;
    procedure QRY_027AfterScroll(DataSet: TDataSet);
    procedure QRY_169AfterScroll(DataSet: TDataSet);
    procedure QRY_027AfterOpen(DataSet: TDataSet);
    procedure QRY_169AfterOpen(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DTM_A054RH: TDTM_A054RH;

implementation

uses A054RH, MPLLib;

{$R *.DFM}

procedure TDTM_A054RH.QRY_027AfterScroll(DataSet: TDataSet);
begin
  NavBtn(DataSet,FRM_A054RH.BTN_RETROCEDER1,FRM_A054RH.BTN_AVANCAR1);
end;

procedure TDTM_A054RH.QRY_169AfterScroll(DataSet: TDataSet);
begin
    NavBtn(DataSet,FRM_A054RH.BTN_RETROCEDER2,FRM_A054RH.BTN_AVANCAR2);
end;

procedure TDTM_A054RH.QRY_027AfterOpen(DataSet: TDataSet);
begin
  QRY_027AfterScroll(DataSet);
end;

procedure TDTM_A054RH.QRY_169AfterOpen(DataSet: TDataSet);
begin
  QRY_169AfterScroll(DataSet);
end;

end.
