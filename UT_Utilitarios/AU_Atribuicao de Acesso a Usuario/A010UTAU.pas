unit A010UTAU;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, LMDCustomControl, LMDCustomPanel, LMDCustomBevelPanel,
  LMDCustomParentPanel, LMDCustomGroupBox, LMDGroupBox, Buttons,  UVariaveis;

type
  TCampo = Record
    Descricao,
    Tipo,
    Tratamento,
    Condicao : String;
  end;
  TFRM_A010UTAU = class(TForm)
    BTN_OKCON: TSpeedButton;
    BTN_CANCELCOND: TSpeedButton;
    LMDGroupBox5: TLMDGroupBox;
    CBB_TRATAMENTO: TComboBox;
    LMDGroupBox1: TLMDGroupBox;
    CBB_COND: TComboBox;
    EDT_VALOR: TEdit;
    Label1: TLabel;
    Label3: TLabel;
    LMDGroupBox2: TLMDGroupBox;
    EDT_CAMPO: TEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BTN_OKCONClick(Sender: TObject);
    procedure BTN_CANCELCONDClick(Sender: TObject);
    procedure CBB_TRATAMENTOKeyPress(Sender: TObject; var Key: Char);
    procedure CBB_CONDChange(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    Campo : TCampo;
    ListCond : TStringList;
    Condicoes : ^TCondicaoCampo;
  end;

var
  FRM_A010UTAU: TFRM_A010UTAU;

implementation

uses MPLCtrl;

{$R *.DFM}

procedure TFRM_A010UTAU.FormClose(Sender: TObject;
  var Action: TCloseAction);

begin
  Action := oControlForms.Saidas(Self,[nil],nil);
end;

procedure TFRM_A010UTAU.FormShow(Sender: TObject);
  var
    cAux : String;
begin
  if not Acesso(nMatricula,'A010UTAU',nil) then
    close;

  EDT_CAMPO.Text := Campo.Descricao;

  if Campo.Tratamento = 'M' then
    CBB_TRATAMENTO.ItemIndex := 0
  else
    if Campo.Tratamento = 'R' then
      CBB_TRATAMENTO.ItemIndex := 1;

  ListCond.Add('');
  ListCond.Add('=');
  ListCond.Add('<>');
  Condicoes.Condicao := Campo.Condicao;
  Condicoes.Tratamento := Campo.Tratamento;
  if (Campo.Tipo = 'N') or (Campo.Tipo = 'D') then
    begin
      CBB_COND.Items.Add('Maior que');
      CBB_COND.Items.Add('Menor que');
      CBB_COND.Items.Add('Maior igual');
      CBB_COND.Items.Add('Menor igual');
      ListCond.Add('>');
      ListCond.Add('<');
      ListCond.Add('>=');
      ListCond.Add('<=');
    end;
  if Campo.Condicao <> '' then
    begin
      cAux := Campo.Condicao;
      if Campo.Condicao[2] in ['=','>'] then
        begin
          CBB_COND.ItemIndex := ListCond.IndexOf(Copy(Campo.Condicao,1,2));
          Delete(cAux,1,2);
        end
      else
        begin
          CBB_COND.ItemIndex := ListCond.IndexOf(String(Campo.Condicao[1]));
          Delete(cAux,1,1);
        end;
      cAux := Trim(cAux);
      if Campo.Tipo = 'C' then
        begin
          Delete(cAux,1,1);
          Delete(cAux,length(cAux),1);
          EDT_VALOR.Text := cAux;
        end
      else
        EDT_VALOR.Text := cAux ;
    end;

  FRM_A010UTAU.OnShow := nil;
 {é atribuido ao OnShow do Form o valor nil para que o mesmo seja executado apenas uma vez}
 {pelo fato que se outra aplicação for chamada pela tecla F3, e ao retornar da aplicação que foi chamada pela tecla}
 {o evento OnShow deste form não acontecerá, ou seja não será executado, para permanecer o mesmo status da aplicação}
 {quando o F3 foi chamado}
end;

procedure TFRM_A010UTAU.FormCreate(Sender: TObject);
begin
  ListCond := TStringList.Create;
end;

procedure TFRM_A010UTAU.BTN_OKCONClick(Sender: TObject);
begin
  if (CBB_COND.Text <> '') and (EDT_VALOR.Text = '') then
    begin
      MessageDlg('Você deve informar o valor para condição!', mtError,[mbOk],0);
      EDT_VALOR.SetFocus;
      exit;
    end;
  if CBB_TRATAMENTO.Text = 'Mascarado' then
    Condicoes^.Tratamento := 'M'
  else
    if CBB_TRATAMENTO.Text = 'Somente Leitura' then
      Condicoes^.Tratamento := 'R'
    else
      Condicoes^.Tratamento := '';

  if CBB_COND.Text = '' then
    Condicoes^.Condicao := ''
  else
    if (Campo.Tipo = 'C') or (Campo.Tipo = 'D') then
      Condicoes^.Condicao := ListCond.Strings[CBB_COND.ItemIndex] + ' ' + QuotedStr(EDT_VALOR.Text)
    else
      Condicoes^.Condicao := ListCond.Strings[CBB_COND.ItemIndex] + ' ' + EDT_VALOR.Text ;

 close;
end;

procedure TFRM_A010UTAU.BTN_CANCELCONDClick(Sender: TObject);
begin
  close;
end;

procedure TFRM_A010UTAU.CBB_TRATAMENTOKeyPress(Sender: TObject;
  var Key: Char);
begin
  if Key in ['a' ..'z','A'..'Z','0'..'9'] then
    Key := #0;
end;

procedure TFRM_A010UTAU.CBB_CONDChange(Sender: TObject);
begin
  if CBB_COND.text = '' then
    EDT_VALOR.Text := '';
end;

end.
