{*******************************************************************************
 *                                                                             *
 *  Programador Leandro Ribas                                                  *
 *  16 de Outubro de 2002, MPLOpes Sistemas de Informação LTDA.                *
 *  Aplicação de consulta de Cep.                                              *
 *  Aplicação que faz consulta para localização de Cep, podendo ser localizado *
 *  por logradouro, caixa postal, ou informa o logradouro do Cep informado     *
 *  Carregada ao se iniciar o Windows e se mantem ativa com um icone no        *
 *  SysTray.                                                                   *
 *                                                                             *
 *******************************************************************************
}

unit A001UTCL;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, ExtCtrls, Grids, DBGrids, Db, DBTables, Ora, MemDS, DBAccess,
  Buttons, LMDCustomControl, LMDCustomPanel, LMDCustomBevelPanel,
  LMDCustomParentPanel, LMDCustomPanelFill, LMDPanelFill, ComCtrls, Mask,
  DBCtrls, DBCGrids, RXShell, Menus,  ImgList;

type
  TFrm_PesCep = class(TForm)
    Conexao: TOraSession;
    Qry_CadLog: TOraQuery;
    Dts_CadLog: TOraDataSource;
    GRB_PesqCep: TGroupBox;
    CtrlGrid_Cep: TDBCtrlGrid;
    Shape1: TShape;
    Shape2: TShape;
    Shape3: TShape;
    DBE_Cep: TDBEdit;
    DBE_Logradouro: TDBEdit;
    DBE_Complemento: TDBEdit;
    DBE_Localidade: TDBEdit;
    DBE_BaiIni: TDBEdit;
    DBE_BaiFim: TDBEdit;
    HDC_PesCep: THeaderControl;
    SHP_PesqCep: TShape;
    DBE_Cliente: TDBEdit;
    RxTrayIcon1: TRxTrayIcon;
    PopupMenu1: TPopupMenu;
    ImageList1: TImageList;
    Abrir1: TMenuItem;
    Fechar1: TMenuItem;
    Fechar2: TMenuItem;
    Pnl_Pesq: TLMDPanelFill;
    BTN_RETROCEDER: TSpeedButton;
    BTN_AVANCAR: TSpeedButton;
    BTN_PRIMEIRO: TSpeedButton;
    BTN_ULTIMO: TSpeedButton;
    Image2: TImage;
    LMDPanelFill5: TLMDPanelFill;
    EDT_CxPostal: TEdit;
    LMDPanelFill4: TLMDPanelFill;
    LMDPanelFill1: TLMDPanelFill;
    LMDPanelFill2: TLMDPanelFill;
    Edt_Localidade: TEdit;
    MDT_Cep: TMaskEdit;
    Edt_Logradouro: TEdit;
    LMDPanelFill6: TLMDPanelFill;
    EDT_UF: TEdit;
    Btn_Pesquisar: TSpeedButton;
    Qry_CadLogCep: TIntegerField;
    Qry_CadLogLogradouro: TStringField;
    Qry_CadLogComplemento: TStringField;
    Qry_CadLogIndentificacao: TStringField;
    Qry_CadLogLocalidade: TStringField;
    Qry_CadLogBairroInicial: TStringField;
    Qry_CadLogBairroFinal: TStringField;
    EDT_Bairro: TEdit;
    LMDPanelFill3: TLMDPanelFill;
    Qry_CadLogCepLoc: TIntegerField;
    Qry_TbxLoc: TOraQuery;
    Qry_TbxLocNCEP: TIntegerField;
    Qry_TbxLocCNOMELOC: TStringField;
    Qry_TbxLocUFLOC: TStringField;
    SpeedButton1: TSpeedButton;
    procedure Btn_PesquisarClick(Sender: TObject);
    procedure BTN_AVANCARClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BTN_RETROCEDERClick(Sender: TObject);
    procedure BTN_PRIMEIROClick(Sender: TObject);
    procedure BTN_ULTIMOClick(Sender: TObject);
    procedure RxTrayIcon1DblClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure Fechar1Click(Sender: TObject);
    procedure Abrir1Click(Sender: TObject);
    procedure EDT_CxPostalKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure MDT_CepChange(Sender: TObject);
    procedure EDT_CxPostalChange(Sender: TObject);
    procedure EDT_CxPostalExit(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure SpeedButton1Click(Sender: TObject);
    procedure MDT_CepKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure Edt_LocalidadeKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }

    {prodecimento que detecta a finalização do Windows}
    procedure WMQueryEndSession( var Msg : TWMQueryEndSession);
    message WM_QUERYENDSESSION;
  public
    { Public declarations }
    {procedimento para mostrar mesagem de uma localidade que contenha cep unico}
    procedure ShowMensPesq(Localidade, Cep : String);
  end;

var
  Frm_PesCep: TFrm_PesCep;
  SqlTexto : String;

implementation

uses A002UTCL, A003UTCL;

{$R *.DFM}

{Clique do Botão para acionar a pesquisa}
procedure TFrm_PesCep.Btn_PesquisarClick(Sender: TObject);
var
  nLinha : Integer;
  PesqMessage : TForm;
begin
 {verifica se o usuario preencheu algum campo}
 if (Trim(Edt_Logradouro.Text) = '') and
    (Trim(Edt_Localidade.Text) = '') and
    (Trim(EDT_UF.Text )        = '') and
    (Trim(EDT_Bairro.text)     = '') and
    (Trim(EDT_CxPostal.Text)   = '') and
    (not (MDT_Cep.Text[1] in ['0'..'9'])) then
   begin
     MessageDlg('Primeiro você deve informar algum valor para executar a pesquisa.',
                mtInformation,[mbOk],0);
     exit;
   end;

 {verifica se foi preechido o campo de Caixa Postal, caso sim obriga
  o preencimento da UF e da Localidade}
 if Trim(EDT_CxPostal.Text) <> '' then
   if (Trim(Edt_Localidade.text)='') or (Trim(EDT_UF.text)='') then
     begin
       MessageDlg('Para localizar por uma caixa postal você deve'+#13+
                  'informar a Localidade e o Estado',mtInformation,[mbOk],0);

       if Trim(EDT_UF.text) = '' then
         EDT_UF.SetFocus
       else
         Edt_Localidade.SetFocus;
       exit;
     end;

 {Verifica se foi preenchido a Localidade e o Estado}
 if (Trim(Edt_Localidade.Text) <> '') and (Trim(EDT_UF.Text) = '') then
   begin
     MessageDlg('Você deve informar a Unidade da Federação(UF).',mtInformation,[mbOk],0);
     EDT_UF.SetFocus;
     exit;
   end;
 {Verifica se o Bairro foi preenchido caso sim obriga o preenchimento da Localidade}
 if (Trim(EDT_Bairro.Text) <> '') and (Trim(Edt_Localidade.Text) = '') then
   begin
     MessageDlg('Você deve informar a Localidade e Unidade da Federação!',mtInformation,[mbOk],0);
     Edt_Localidade.SetFocus;
     exit;

   end;
 {Abre a tabela de Localidade}
 Qry_TbxLoc.Open;

 {verifica se o usuario predente fazer a pesquisa por Localidade}
 if (Trim(Edt_Localidade.Text) <> '') and (Trim(EDT_UF.Text) <> '') and (Edt_Logradouro.Enabled) and (Trim(Edt_Logradouro.Text) = '') then
   begin
     if Qry_TbxLoc.Locate('cNomeLoc;UfLoc',VarArrayOf([Edt_Localidade.Text,EDT_UF.Text]),[]) then
       begin
         {verifica se a localidade tem Cep unico, caso não obriga o usuario a digitar o logradouro}
         if not(Qry_TbxLoc.FieldByName('nCep').asInteger > 0) then
           begin
             MessageDlg('Você deve informar um Logradouro para ser pesquisado nesta localidade!',mtInformation,[mbOK],0);
             Edt_Logradouro.SetFocus;
             Exit;
           end
         else
           begin
             {mostra uma mensagem com a as informações sobre o Localidade com Cep unico}
             ShowMensPesq(Edt_Localidade.Text+' - '+EDT_UF.Text,Qry_TbxLoc.FieldByName('nCep').DisplayText);
             Exit;
           end;
       end
     else
       begin
         MessageDlg('Localidade não econtrada!',mtInformation,[mbOK],0);
         Edt_Localidade.SetFocus;
         Exit;
       end;
   end;

 {executa o procedimento de saida da caixa postal}
 EDT_CxPostalExit(EDT_CxPostal);

 CtrlGrid_Cep.Visible := true;

  with Qry_CadLog do
    begin
      Close;
      SQL.Clear;
      SQL.Add(SqlTexto);
      nLinha:= SQL.Add('from CadLog, TbxLoc ,TbxUFD');
      SQL.Add('where CadLog.nIdTbxLoc = TbxLoc.nIdTbxLoc and TbxLoc.nIdTbxUfd = TbxUfd.nIdTbxUfd');
      if (Trim(EDT_Bairro.Text) <> '') and (EDT_Bairro.Enabled) then
        begin
          SQL[nLinha] := SQL[nLinha]+', TbxBai';
          SQL.Add('and CadLog.nIdTbxBai = TbxBai.nIdTbxBai');
          SQL.Add('and TbxBai.cNomeBai Like '+QuotedStr('%'+EDT_Bairro.Text+'%'));
        end;
      if (Trim(Edt_Logradouro.Text) <> '') and (Edt_Logradouro.Enabled) then
        SQL.Add('and CadLog.cNomeLog Like '+QuotedStr('%'+Edt_Logradouro.Text+'%'));
      if (Trim(Edt_Localidade.Text) <> '') and (Edt_Localidade.Enabled) then
        SQL.Add('and TbxLoc.cNomeLoc Like '+QuotedStr('%'+Edt_Localidade.Text+'%'));
      if (MDT_Cep.Text[1] in ['0'..'9']) and (MDT_Cep.Enabled) then
        SQL.Add('and CadLog.nCep = '+Copy(MDT_Cep.Text,1,Pos('-',MDT_Cep.Text)-1)+
                                       Copy(MDT_Cep.Text,Pos('-',MDT_Cep.Text)+1,3));
      if (Trim(EDT_CxPostal.Text) <> '') and (EDT_CxPostal.Enabled) then
        begin
          SQL.Add('and( '+EDT_CxPostal.Text+' between CadLog.nCxp1Ini and CadLog.nCpx1fim ');
          SQL.Add('or '+EDT_CxPostal.Text+' between CadLog.nCpx2Ini and CadLog.nCpx2Fim ');
          SQL.Add('or '+EDT_CxPostal.Text+' between CadLog.nCpx3Ini and CadLog.nCpx3Fim )');
          if FrmCxPostal.Chk_AgPostal.Checked and FrmCxPostal.Chk_CxPCom.Checked then
            SQL.Add('and (CadLog.cTabOrigem = '+QuotedStr('3')+' or CadLog.cTabOrigem = '+QuotedStr('4')+ ')')
          else
            if FrmCxPostal.Chk_AgPostal.Checked then
              SQL.Add('and CadLog.cTabOrigem = '+QuotedStr('3'))
            else
              SQL.Add('and CadLog.cTabOrigem = '+QuotedStr('4'));

        end;
      if (Trim(EDT_UF.Text) <> '') and (EDT_UF.Enabled) then
        SQL.Add('and TbxUFD.cSiglaUf = '+QuotedStr(EDT_UF.Text));

      SQL.Add('order by Cadlog.cTabOrigem,CadLog.cNomeLog,CadLog.nTrechoIni');
      open;

      if IsEmpty then
        if (MDT_Cep.Text[1] in ['0'..'9']) then
          begin
            if Qry_TbxLoc.Locate('nCep',Copy(MDT_Cep.Text,1,Pos('-',MDT_Cep.Text)-1)+
                                 Copy(MDT_Cep.Text,Pos('-',MDT_Cep.Text)+1,3),[]) then
              begin
                if Qry_TbxLoc.FieldByName('nCep').AsInteger > 0 then
                  ShowMensPesq(Qry_TbxLoc.FieldByName('cNomeLoc').asString+' - '+
                               Qry_TbxLoc.FieldByName('Ufloc').asString,MDT_Cep.Text);
              end
            else
              MessageDlg('Nenhum registro encontrado!',mtInformation,[mbOk],0);
          end
        else
          MessageDlg('Nenhum registro encontrado!',mtInformation,[mbOk],0);

        BTN_AVANCAR.Enabled    := not(IsEmpty);
        BTN_PRIMEIRO.Enabled   := not(IsEmpty);
        BTN_RETROCEDER.Enabled := not(IsEmpty);
        BTN_ULTIMO.Enabled     := not(IsEmpty);

        Qry_TbxLoc.Close;

    end;
end;

//-------------------------------------//-------------------------------------//

procedure TFrm_PesCep.BTN_AVANCARClick(Sender: TObject);
begin
  {coloca o cursor da tabela no proximo registro}
  Qry_CadLog.Next;
  DBE_Logradouro.SetFocus;
end;

//-------------------------------------//-------------------------------------//

procedure TFrm_PesCep.FormCreate(Sender: TObject);
begin
  {esconde a aplicação}
  Application.ShowMainForm := false;
  {pega o conteudo do código Sql}
  SqlTexto := Qry_CadLog.SQL.Text;
end;

//-------------------------------------//-------------------------------------//

procedure TFrm_PesCep.BTN_RETROCEDERClick(Sender: TObject);
begin
  {coloca o cursor da tabela no registro anterior}
  Qry_CadLog.Prior;
  DBE_Logradouro.SetFocus;
end;

//-------------------------------------//-------------------------------------//

procedure TFrm_PesCep.BTN_PRIMEIROClick(Sender: TObject);
begin
  {coloca o cursor da tabela no primeiro registro}
  Qry_CadLog.First;
  DBE_Logradouro.SetFocus;
end;

//-------------------------------------//-------------------------------------//

procedure TFrm_PesCep.BTN_ULTIMOClick(Sender: TObject);
begin
  {coloca o cursor da tabela no ultimo registro}
  Qry_CadLog.Last;
  DBE_Logradouro.SetFocus;
end;

//-------------------------------------//-------------------------------------//

procedure TFrm_PesCep.RxTrayIcon1DblClick(Sender: TObject);
begin
  {verifica se aplicação não está escondida}
  if Application.ShowMainForm then
    {coloca a tela principal da aplicação na frente das outras}
    SetForegroundWindow(Handle)
  else
    begin
      {verifica qual a resolução do video}
      if (Monitor.Width = 640) and (Monitor.Height = 480) then
        begin
          MessageDlg('Favor ajustar a resolução do seu video para 600 x 800',mtInformation,[mbOk],0);
          Abort;
        end;

      {show na aplicação}
      Application.ShowMainForm := true;
      {conecta ao banco}
      Conexao.Connect;
      Self.Visible := true;
      {coloca a tela principal da aplicação na frente das outras}
      SetForegroundWindow(Handle);
    end;
end;

//-------------------------------------//-------------------------------------//

procedure TFrm_PesCep.FormCloseQuery(Sender: TObject;
  var CanClose: Boolean);
begin
  {cancela o fechamento do form}
  CanClose := false;
  {esconde a aplicação}
  Application.ShowMainForm := false;
  Self.Visible := false;

  {fecha as tabelas e a conexão com o banco}
  Qry_CadLog.Close;
  Qry_TbxLoc.Close;
  Conexao.Disconnect;

  CtrlGrid_Cep.Visible := false;

  {atualiza os estados dos botões de navegação}
  BTN_AVANCAR.Enabled    := false;
  BTN_PRIMEIRO.Enabled   := false;
  BTN_RETROCEDER.Enabled := false;
  BTN_ULTIMO.Enabled     := false;

end;

//-------------------------------------//-------------------------------------//

procedure TFrm_PesCep.WMQueryEndSession(var Msg: TWMQueryEndSession);
begin
  {executa o procedimento OnClick do item fechar do MenuPopup}
  Fechar2.Click;
  Msg.Result := 1;
  {chama o procedimento de onde estã chamada foi derivada}
  inherited;
end;

//-------------------------------------//-------------------------------------//

procedure TFrm_PesCep.Fechar1Click(Sender: TObject);
begin
  {tira o icone do SysTray}
  RxTrayIcon1.Active := false;

  FrmCxPostal.close;
  close;

  {fecha a tabela e desconecta do banco}
  Qry_CadLog.Close;
  Conexao.Connected := false;
  {fecha totalmente a aplicação}
  Application.Terminate;
end;

//-------------------------------------//-------------------------------------//

procedure TFrm_PesCep.Abrir1Click(Sender: TObject);
begin
  {chama o DoubleClick do RxTrayIcon1}
  RxTrayIcon1DblClick(RxTrayIcon1);
end;

//-------------------------------------//-------------------------------------//

procedure TFrm_PesCep.EDT_CxPostalKeyPress(Sender: TObject; var Key: Char);

begin
    {verifica se o usuario digitou algum caracter invalido para a Cx. Postal}
    if not(Key in ['0'..'9',#13,#9,#8,#27]) then
      begin
        MessageDlg('Este campo aceita somente números!',mtInformation,[mbOk],0);
        Key := #0;
      end;
end;

//-------------------------------------//-------------------------------------//

procedure TFrm_PesCep.FormShow(Sender: TObject);
begin
  {limpa as caixas de edição}
  EDT_CxPostal.text   := '';
  Edt_Localidade.text := '';
  Edt_Logradouro.text := '';
  EDT_UF.Text         := '';
  MDT_Cep.text        := '';
  EDT_Bairro.text     := '';


  MDT_Cep.SetFocus;
end;

//-------------------------------------//-------------------------------------//

procedure TFrm_PesCep.MDT_CepChange(Sender: TObject);
begin
  if Length(Trim(MDT_Cep.Text)) = 1 then
    begin
      EDT_CxPostal.Enabled   := true;
      Edt_Localidade.Enabled := true;
      Edt_Logradouro.Enabled := true;
      EDT_UF.Enabled         := true;
      EDT_Bairro.Enabled     := true;

      EDT_CxPostal.Color   := clWindow;
      Edt_Localidade.Color := clWindow;
      Edt_Logradouro.Color := clWindow;
      EDT_UF.Color         := clWindow;
      EDT_Bairro.Color     := clWindow;

    end
    else
      begin
        EDT_CxPostal.Enabled   := false;
        Edt_Localidade.Enabled := false;
        Edt_Logradouro.Enabled := false;
        EDT_UF.Enabled         := false;
        EDT_Bairro.Enabled     := false;

        EDT_CxPostal.Text   := '';
        Edt_Localidade.Text := '';
        Edt_Logradouro.Text := '';
        EDT_UF.Text         := '';
        EDT_Bairro.Text     := '';

        EDT_CxPostal.Color   := $00E7F8F8;
        Edt_Localidade.Color := $00E7F8F8;
        Edt_Logradouro.Color := $00E7F8F8;
        EDT_UF.Color         := $00E7F8F8;
        EDT_Bairro.Color     := $00E7F8F8;
      end;
end;

//-------------------------------------//-------------------------------------//

procedure TFrm_PesCep.EDT_CxPostalChange(Sender: TObject);
begin
  if Length(Trim(EDT_CxPostal.Text)) = 0 then
    begin
      Edt_Logradouro.Enabled := true;
      MDT_Cep.Enabled        := true;
      EDT_Bairro.Enabled     := true;

      Edt_Logradouro.Color   := clWindow;
      MDT_Cep.Color          := clWindow;
      EDT_Bairro.Color       := clWindow;
    end
    else
      begin
        Edt_Logradouro.Enabled := false;
        MDT_Cep.Enabled        := false;
        EDT_Bairro.Enabled     := false;

        Edt_Logradouro.Text := '';
        MDT_Cep.Text        := '';
        EDT_Bairro.Text     := '';

        Edt_Logradouro.Color   := $00E7F8F8;
        MDT_Cep.Color          := $00E7F8F8;
        EDT_Bairro.Color       := $00E7F8F8;
      end;
end;

//-------------------------------------//-------------------------------------//

procedure TFrm_PesCep.EDT_CxPostalExit(Sender: TObject);
begin
  if (EDT_CxPostal.GetTextLen <> 0) and
     ((not FrmCxPostal.Chk_AgPostal.Checked) and (not FrmCxPostal.Chk_CxPCom.Checked)) then
          FrmCxPostal.ShowModal;
end;

//-------------------------------------//-------------------------------------//

procedure TFrm_PesCep.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_ESCAPE then
    begin
      {Limpa os campos de edição}
      EDT_CxPostal.text   := '';
      Edt_Localidade.text := '';
      Edt_Logradouro.text := '';
      EDT_UF.Text         := '';
      MDT_Cep.text        := '';
      EDT_Bairro.text     := '';

      Refresh;
      {fecha a tabela de pesquisa}
      Qry_CadLog.Close;
      MDT_Cep.setfocus;
    end
  else
    {verifica se o usuario digitou a tecla enter para mudar o foco}
    if Key = VK_RETURN then
      begin
        {caso o usuario tenha digitado enter em cima da caixa de edição da Cx Postal,
         e chamado uma tela de opções de consulta sobre a Cx Postal}
        if (EDT_CxPostal.Focused) and (Trim(EDT_CxPostal.text)<>'')  then
          FrmCxPostal.ShowModal;

        {muda o foco para o proximo componente}
        Perform(WM_NEXTDLGCTL,0,0);
      end;
end;

//-------------------------------------//-------------------------------------//

procedure TFrm_PesCep.SpeedButton1Click(Sender: TObject);
  var
    Tecla : Word;
begin
  Tecla := VK_ESCAPE;
  {chama o procedimento KeyDown do form}
  FormKeyDown(Sender,Tecla,[ssShift]);

end;

//-------------------------------------//-------------------------------------//

procedure TFrm_PesCep.MDT_CepKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_RETURN then
    if (MDT_Cep.Text[1] in ['0'..'9']) then
      Btn_Pesquisar.Click;
end;

//-------------------------------------//-------------------------------------//

procedure TFrm_PesCep.Edt_LocalidadeKeyPress(Sender: TObject;
  var Key: Char);
begin
  {verifica se o usuario digitou um caracter invalido no campo de edição}
  if not(Key in ['A'..'Z','a'..'z','0'..'9',#13,#8,#27,' ']) then
    begin
      MessageDlg('Este campo não aceita caracteres especiais!',mtInformation,[mbOk],0);
      Key := #0;
    end;
end;

//-------------------------------------//-------------------------------------//
{procedimento para mostrar um mensagem formatada}
procedure TFrm_PesCep.ShowMensPesq(Localidade, Cep: String);
begin
  Application.CreateForm(TFrm_MensPesq,Frm_MensPesq);
  Frm_MensPesq.Lbl_Localidade.Caption := Localidade;
  Frm_MensPesq.Lbl_Cep.Caption := Cep;

  Frm_MensPesq.ShowModal;
  Frm_MensPesq.Free;
end;

end.
