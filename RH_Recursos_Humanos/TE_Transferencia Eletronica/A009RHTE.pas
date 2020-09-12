unit A009RHTE;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, CheckLst, LMDCustomControl, LMDCustomPanel,
  LMDCustomBevelPanel, LMDCustomParentPanel, LMDCustomGroupBox, LMDGroupBox,
  Buttons;

type
  TFRM_A009RHTE = class(TForm)
    LMDGroupBox2: TLMDGroupBox;
    CLB_ORIGEM: TCheckListBox;
    Btn_Visuali: TBitBtn;
    BTN_FECHAR: TBitBtn;
    procedure FormShow(Sender: TObject);
    procedure BTN_FECHARClick(Sender: TObject);
    procedure Btn_VisualiClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
    cSqlOri: String;
  end;

var
  FRM_A009RHTE: TFRM_A009RHTE;

implementation

uses D001RHTE, A001RHTE, MPLCtrl, UVariaveis;

{$R *.DFM}

procedure TFRM_A009RHTE.FormShow(Sender: TObject);
begin
  //verifica o acesso do usuario na aplicação
  if Acesso(nMatricula,'A009RHTE',NIL) then
    close;

  with DTM_A001RHTE.QRY_062_19 do
    begin
      cSqlOri := SQL.Text;
      ParamByName('nmesref').asInteger := DTM_A001RHTE.QRY_062.FieldByName('nmesref').asInteger;
      ParamByName('nanoref').asInteger := DTM_A001RHTE.QRY_062.FieldByName('nanoref').asInteger;
      ExecSQL;
      First;
      while not(Eof) do
        begin
          if CLB_ORIGEM.Items.IndexOf(FieldByName('cdescricao').asString) = -1 then
            CLB_ORIGEM.Items.Add(FieldByName('cdescricao').asString);
          Next;
        end;
    end;
end;

procedure TFRM_A009RHTE.BTN_FECHARClick(Sender: TObject);
begin
  close;
end;

procedure TFRM_A009RHTE.Btn_VisualiClick(Sender: TObject);
  var
    corigens: String;
    i: integer;
begin
  with DTM_A001RHTE do
    begin
      for i:=0 to CLB_ORIGEM.Items.Count - 1 do
        if CLB_ORIGEM.Checked[i] then
          corigens := corigens +
          QuotedStr(CLB_ORIGEM.Items.Strings[i]) + ',';

      Delete(corigens,Length(corigens),1);
      QRY_062_19.Close;
      QRY_062_19.SQL.Text := cSqlOri;
      QRY_062_19.ParamByName('nmesref').asInteger := QRY_062.FieldByName('nmesref').asInteger;
      QRY_062_19.ParamByName('nanoref').asInteger := QRY_062.FieldByName('nanoref').asInteger;
      QRY_062_19.AddWhere('tbxori.cdescricao in ('+corigens+')');
      QRY_062_19.Open;
      Imprimir(FRM_A001RHTE.Report,QRY_062_19,nil);
    end;
end;

procedure TFRM_A009RHTE.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 //libera aplicação da memoria
 Action:= oControlForms.Saidas(Self,[NIL],NIL);
// DTM_A001RHTE.QRY_062_19.Close;
 DTM_A001RHTE.QRY_062_19.SQL.Text := cSqlOri;
end;

end.
