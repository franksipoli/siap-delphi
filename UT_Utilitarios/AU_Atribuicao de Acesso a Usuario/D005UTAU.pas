unit D005UTAU;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, Ora, MemDS, DBAccess;

type
  TDTM_A005UTAU = class(TDataModule)
    QRY_016: TOraQuery;
    DTS_016: TOraDataSource;
    DTS_051: TOraDataSource;
    QRY_016NIDCADGRL: TFloatField;
    QRY_016CNOMEGRL: TStringField;
    QRY_016CCPFCNPJ: TStringField;
    QRY_016CPESSOAFJ: TFloatField;
    QRY_051: TOraQuery;
    QRY_051NIDTBL_U: TFloatField;
    QRY_051NIDCADGRL: TFloatField;
    QRY_051CNOMEUSU: TStringField;
    QRY_051CSENHA: TStringField;
    QRY_051NADMIN: TFloatField;
    QRY_051CNOMEGRL: TStringField;
    QRY_051CCPFCNPJ: TStringField;
    QRY_051CPESSOAFJ: TFloatField;
    QRY_051LBLOQUEADO: TIntegerField;
    QRY_051NSUPERUSU: TFloatField;
    QRY_061: TOraQuery;
    DTS_061: TOraDataSource;
    procedure QRY_051LBLOQUEADOGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure QRY_051LBLOQUEADOSetText(Sender: TField; const Text: String);
    procedure QRY_051AfterScroll(DataSet: TDataSet);
    procedure DTS_051StateChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DTM_A005UTAU: TDTM_A005UTAU;

implementation

uses DMCTRL, A005UTAU, UVariaveis, MPLCtrl;

{$R *.DFM}

procedure TDTM_A005UTAU.QRY_051LBLOQUEADOGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  if Sender.AsString = '0' then
    Text := 'Não';
  if Sender.AsString = '1' then
    Text := 'Sim';
end;

procedure TDTM_A005UTAU.QRY_051LBLOQUEADOSetText(Sender: TField;
  const Text: String);
begin
  if Text = 'Sim' then
    Sender.AsString := '1';
  if Text = 'Não' then
    Sender.AsString := '0';
end;

procedure TDTM_A005UTAU.QRY_051AfterScroll(DataSet: TDataSet);
begin
  if FRM_A005UTAU = nil then
    exit;
  with FRM_A005UTAU do
    begin
      CBE_CCPFCNPJ.Text      := DTS_051.DataSet.FieldByName('cCpfCnpj').DisplayText;
      if DTS_051.DataSet.FieldByName('cPessoaFJ').AsString = '2' then
        CBE_CCPFCNPJ.EditMask := '99.999.999/9999-99;0;*'
      else
        CBE_CCPFCNPJ.EditMask := '999.999.999-99;0;*';


       if not(DTS_051.DataSet.State = dsInsert) then
         //se o operador for o mesmo usuario selecionado
         if DTS_051.DataSet.FieldByName('nidtbl_u').asInteger = nMatricula then
           begin
             //desabilida indicação de admin
             DBC_ADMIN.Enabled := false;
             //desabilida indicação de bloqueado
             DBC_LBLOQUEADO.Enabled := false;
             Btn_Excluir.Enabled := false;
           end
         else
           begin
             DBC_ADMIN.Enabled := isSuperUsu;
             DBC_LBLOQUEADO.Enabled := true;
             Botoes(['Btn_Cancelar','Btn_Gravar'],'FRM_A005UTAU',False);
           end;

    end;
end;

procedure TDTM_A005UTAU.DTS_051StateChange(Sender: TObject);
begin
  if FRM_A005UTAU <> nil then
    FRM_A005UTAU.CBE_CCPFCNPJ.ReadOnly := not(DTS_051.DataSet.State = dsInsert);
end;

end.
