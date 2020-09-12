unit A013;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  LMDCustomControl, LMDCustomPanel, LMDCustomBevelPanel,
  LMDCustomParentPanel, LMDCustomGroupBox, LMDGroupBox, StdCtrls, Buttons,
  ToolEdit, Mask, DBCtrls, DB;

type
  TFRM_A013 = class(TForm)
    GRB_ENDEREC: TLMDGroupBox;
    Label10: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label17: TLabel;
    Label24: TLabel;
    Label5: TLabel;
    Label32: TLabel;
    DED_CNUMERO: TDBEdit;
    DED_CNOMELOC: TDBEdit;
    DED_CCOMPLEMEN: TDBEdit;
    DED_CNOMEBAI: TDBEdit;
    DED_CSIGLAUF: TDBEdit;
    CBE_NCEP: TComboEdit;
    DED_CNOMEPAIS: TDBEdit;
    DED_CNOMELOG: TDBEdit;
    GRP_ENDCORRES: TLMDGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    DED_CNUMEROEC: TDBEdit;
    DED_CNOMELOC_1: TDBEdit;
    DED_COMPLEEC: TDBEdit;
    DED_CNOMEBAI_1: TDBEdit;
    DED_CSIGLAUF_1: TDBEdit;
    CBE_NCEP_1: TComboEdit;
    DED_CNOMEPAIS_1: TDBEdit;
    DED_CNOMELOG_1: TDBEdit;
    BTN_OKEND: TSpeedButton;
    BTN_CANCELEND: TSpeedButton;
    BTN_TIRAEC: TSpeedButton;
    procedure BTN_CANCELENDClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure CBE_NCEPChange(Sender: TObject);
    procedure CBE_NCEPButtonClick(Sender: TObject);
    procedure CBE_NCEPExit(Sender: TObject);
    procedure CBE_NCEPKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CBE_NCEPKeyPress(Sender: TObject; var Key: Char);
    procedure CBE_NCEP_1Exit(Sender: TObject);
    procedure CBE_NCEP_1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure CBE_NCEP_1KeyPress(Sender: TObject; var Key: Char);
    procedure BTN_OKENDClick(Sender: TObject);
    procedure BTN_TIRAECClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    IdCadGrl : Integer;
    lDigCepEnd : Boolean;
    cNome : String;
  end;

var
  FRM_A013: TFRM_A013;

implementation

uses CtrlForms, D013, MPLCtrl, Login, DMCTRL, UVariaveis, MPLLib;

{$R *.DFM}

procedure TFRM_A013.BTN_CANCELENDClick(Sender: TObject);
begin
  close;
end;

procedure TFRM_A013.FormClose(Sender: TObject; var Action: TCloseAction);
begin

  //cancela as alterações no dataset da tageec(endereço de correspondencia)
  DBGenerica(DTM_A013.DTS_018,'Conexao',3,0,nil,true);

  //cancela a operação corrente do dataset da cadgrl(cadastro geral)
  DBGenerica(DTM_A013.DTS_016,'Conexao',3, 0, nil);

  //fecha os Datasets do DataModule e libera o form da memoria
  Action:= oControlForms.Saidas(Self,[DTM_A013],nil);
end;

procedure TFRM_A013.FormShow(Sender: TObject);
begin
  if not Acesso(nMatricula,'A013',DTM_A013) then
    close;

  DTM_A013.QRY_016.ParamByName('nidcadgrl').asInteger := IdCadGrl;

  DTM_A013.QRY_016.ExecSql;
  DTM_A013.QRY_013.ExecSql;

  //edita registro no dataset da cadgrl(cadastro geral)
  DBGenerica(DTM_A013.DTS_016,'Conexao',2,0,nil);
  if DTM_A013.DTS_018.DataSet.FieldByName('nidtageec').IsNull then
    begin
      //inclui registro no dataset da tageec(endereço de correspondencia)
      DBGenerica(DTM_A013.DTS_018,'Conexao',1,0,nil);
      DTM_A013.DTS_018.DataSet.FieldByName('nidtageec').AsInteger := 0;
    end
  else
    //edita registro no dataset da tageec(endereço de correspondencia)
    DBGenerica(DTM_A013.DTS_018,'Conexao',2,0,nil);

  //nome do dono do endereço
  Caption := Caption + ' - ' + cNome;

  FRM_A013.OnShow := nil;

 {é atribuido ao OnShow do Form o valor nil para que o mesmo seja executado apenas uma vez}
 {pelo fato que se outra aplicação for chamada pela tecla F3, e ao retornar da aplicação que foi chamada pela tecla}
 {o evento OnShow deste form não acontecerá, ou seja não será executado, para permanecer o mesmo status da aplicação}
 {quando o F3 foi chamado}

end;

procedure TFRM_A013.CBE_NCEPChange(Sender: TObject);
begin
  lDigCepEnd := DTM_A013.DTS_016.DataSet.State in [dsInsert,dsEdit];
end;

procedure TFRM_A013.CBE_NCEPButtonClick(Sender: TObject);
begin
  //força a chamada da pesquisa para o campo que contem o foco
  VerTeclas(VK_F2);
end;

procedure TFRM_A013.CBE_NCEPExit(Sender: TObject);
begin
  //se cadastro geral estiver em edição ou inserção
  if DTM_A013.DTS_016.DataSet.State in [dsEdit,dsInsert] then
    if Trim(TComboEdit(Sender).Text) = '' then
      begin
        TComboEdit(Sender).Text :=
        DTM_A013.DTS_013.DataSet.FieldByName('ncep').DisplayText;
        lDigCepEnd := false;
      end
    else
      //se o usuario digitou um CEP de endereço
      if lDigCepEnd then
        begin
          //localiza o logradouro informado pelo usuário
          lDigCepEnd := not(LocalizaLogradouro( TComboEdit(Sender), DTM_A013.QRY_013 ));
          //passa a ID do logradouro para o cadastro geral
          DTM_A013.DTS_016.DataSet.FieldByName('nidcadlog').asInteger :=
          DTM_A013.DTS_013.DataSet.FieldByName('nidcadlog').asInteger;
        end;
end;

procedure TFRM_A013.CBE_NCEPKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  //se o usuario pressionar ESC
  if Key = VK_ESCAPE then
    begin
      //busca os dados que estão no dataset
      CBE_NCEP.Text := DTM_A013.QRY_013.FieldByName('nCep').DisplayText;
      lDigCepEnd := false;
    end


end;

procedure TFRM_A013.CBE_NCEPKeyPress(Sender: TObject; var Key: Char);
begin
 Key := ValEditNumerico(Key);
end;

procedure TFRM_A013.CBE_NCEP_1Exit(Sender: TObject);
begin
 //se cadastro geral estiver em edição ou inserção
  if DTM_A013.DTS_016.DataSet.State in [dsEdit,dsInsert] then
    if Trim(TComboEdit(Sender).Text) = '' then
      begin
        TComboEdit(Sender).Text :=
        DTM_A013.DTS_013_01.DataSet.FieldByName('ncep').DisplayText;
        lDigCepEnd := false;
      end
    else
      //se o usuário digitou algum CEP para o endereço de correspondecia
      if lDigCepEnd then
        begin
          //tenta localizar o logradouro
          lDigCepEnd := not(LocalizaLogradouro( TComboEdit(Sender), DTM_A013.QRY_013_01 ));
          //passa a ID encontrada do logradouro para a tabela de
          //endereços de correpondencia
          DTM_A013.DTS_018.DataSet.FieldByName('nidcadlog').asInteger :=
          DTM_A013.DTS_013_01.DataSet.FieldByName('nidcadlog').asInteger;
        end;
end;

procedure TFRM_A013.CBE_NCEP_1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  //se o usuario pressionar ESC
  if Key = VK_ESCAPE then
    begin
      //busca os dados que estão no dataset
      CBE_NCEP_1.Text := DTM_A013.QRY_013_01.FieldByName('nCep').DisplayText;
      lDigCepEnd := false;
    end;

end;

procedure TFRM_A013.CBE_NCEP_1KeyPress(Sender: TObject; var Key: Char);
begin
 Key := ValEditNumerico(Key);
end;

procedure TFRM_A013.BTN_OKENDClick(Sender: TObject);
begin

  DTM_A013.DTS_016.DataSet.UpdateRecord;
  DTM_A013.DTS_018.DataSet.UpdateRecord;

  if (DTM_A013.DTS_016.DataSet.FieldByName('nidcadlog').asInteger <> 0) and
     (DTM_A013.DTS_016.DataSet.FieldByName('cnumero').IsNull) then
    begin
      MessageDlg('Favor informar o número do endereço!',mtInformation,[mbOk],0);
      DED_CNUMERO.SetFocus;
      exit;
    end;


  if DTM_A013.DTS_018.DataSet.FieldByName('nidcadlog').IsNull then
    //cancela as alterações no dataset da tageec(endereço de correspondencia)
    DBGenerica(DTM_A013.DTS_018,'Conexao',3,0);

  if (not(DTM_A013.DTS_018.DataSet.FieldByName('nidcadlog').IsNull)) and
     (DTM_A013.DTS_018.DataSet.FieldByName('cnumeroec').IsNull) then
    begin
      MessageDlg('Favor informar o número para endereço de correspondência!',mtInformation,[mbOk],0);
      DED_CNUMEROEC.SetFocus;
      exit;
    end;



  //grava os dados na tabela de endereço de correspondência
  DBGenerica(DTM_A013.DTS_018,'Conexao',4,1,nil,true);



  //grava os dados na tabela de cadastro geral;
  DBGenerica(DTM_A013.DTS_016,'Conexao',4,1);

  close;
end;

procedure TFRM_A013.BTN_TIRAECClick(Sender: TObject);
begin
  if MessageDlg('Deseja retirar o endereço de correspondência ?',
                mtConfirmation,[mbYes,mbNo],0) = mrYes then
    begin
      //limpa o número de CEP do endereço de correspondencia
      CBE_NCEP_1.Text := '';
      with DTM_A013 do
        begin
          //cancela operação corrente no dataset da tageec
          DBGenerica(DTS_018,'Conexao',3,0);

          if not(DTS_018.DataSet.IsEmpty) then
            //deleta o registro do dataset da tageec
            DBGenerica(DTS_018,'Conexao',5,1);

          //inseri registro no dataset da tageec
          DBGenerica(DTS_018,'Conexao',1,0);
          DTS_018.DataSet.FieldByName('nidTagEec').AsInteger := 0;
        end;
    end;
end;

end.
