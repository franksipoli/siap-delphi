{*******************************************************************************
 *                                                                             *
 *  Programador Leandro Ribas                                                  *
 *  16 de agosto de 2002, MPLOpes Sistemas de Informação LTDA.                 *
 *  Aplicação de consulta de Ramais internos.                                  *
 *  Aplicação com o objetivo de agilizar a consulta de Ramais, podendo ser     *
 *  localizado pelo nome do Servidor que tem um ramal ou pelo setor que possui *
 *  números de ramais divulgados.                                              *
 *  Carregada ao se iniciar o Windows e se mantem ativa com um icone no        *
 *  SysTray.                                                                   *
 *                                                                             *
 *******************************************************************************
}


unit A001UTCR;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, DBGrids, StdCtrls, Mask, ToolEdit, ExtCtrls, Buttons, DBCtrls,
  LMDCustomControl, LMDCustomPanel, LMDCustomBevelPanel,
  LMDCustomParentPanel, LMDCustomPanelFill, LMDPanelFill, Db, Ora, MemDS,
  DBAccess, RXShell, Menus, ImgList;

type
  TFRM_PesRamal = class(TForm)
    CED_NOMESRV: TComboEdit;
    Pnl_Pesq: TLMDPanelFill;
    BTN_RETROCEDER: TSpeedButton;
    BTN_AVANCAR: TSpeedButton;
    BTN_PRIMEIRO: TSpeedButton;
    BTN_ULTIMO: TSpeedButton;
    Image1: TImage;
    LMDPanelFill1: TLMDPanelFill;
    DBG_RAMAL: TDBGrid;
    SessionRamal: TOraSession;
    QRY_PESRAMAL: TOraQuery;
    DTS_PESRAMAL: TOraDataSource;
    RxTrayIcon1: TRxTrayIcon;
    PopupMenu1: TPopupMenu;
    Fechar1: TMenuItem;
    N1: TMenuItem;
    Fechar2: TMenuItem;
    ImageList1: TImageList;
    CHK_NOMSERV: TCheckBox;
    CHK_DESCSETOR: TCheckBox;
    LMDPanelFill2: TLMDPanelFill;
    Image2: TImage;
    LMDPanelFill3: TLMDPanelFill;
    Image3: TImage;
    Bevel1: TBevel;
    QRY_PESRAMALCCONTRAMAL: TStringField;
    QRY_PESRAMALNNUMRAMAL: TFloatField;
    QRY_PESRAMALCDESCSETOR: TStringField;
    procedure SpeedButton1Click(Sender: TObject);
    procedure CED_NOMESRVKeyPress(Sender: TObject; var Key: Char);
    procedure BTN_PRIMEIROClick(Sender: TObject);
    procedure BTN_ULTIMOClick(Sender: TObject);
    procedure BTN_AVANCARClick(Sender: TObject);
    procedure BTN_RETROCEDERClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure RxTrayIcon1DblClick(Sender: TObject);
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure CED_NOMESRVButtonClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Fechar2Click(Sender: TObject);
    procedure Fechar1Click(Sender: TObject);
    procedure CHK_NOMSERVClick(Sender: TObject);
    procedure DBG_RAMALDrawDataCell(Sender: TObject; const Rect: TRect;
      Field: TField; State: TGridDrawState);
    procedure QRY_PESRAMALAfterScroll(DataSet: TDataSet);
    procedure DBG_RAMALDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
  private
    { Private declarations }
   {procedimento que intercepta a mensagem no momento em que o  Windows está
    sendo desligado }
   procedure WMQueryEndSession(var Msg : TWMQueryEndSession);
   message WM_QueryEndSession;

  public
    { Public declarations }
    function WidthText(Text: String): Integer;
  end;

var
  FRM_PesRamal: TFRM_PesRamal;

implementation

{$R *.DFM}

//-------------------------------------//-------------------------------------//

procedure TFRM_PesRamal.SpeedButton1Click(Sender: TObject);
begin
 close;
end;
//-------------------------------------//-------------------------------------//
procedure TFRM_PesRamal.CED_NOMESRVKeyPress(Sender: TObject; var Key: Char);
var
  cMensagem : String[35];
begin
  {verifica se a tecla digita é diferente das que estão entre colchetes}
 if not(Key in ['A'..'Z','a'..'z',#13,' ',#8,#9]) then
   begin
     MessageDlg('Este caracter não é válido.',mtInformation,[mbOk],0);
     Key := #0;//tira a tecla digita, ficando a tecla sem efeito
     exit; // sai deste procedimento
   end;

 {verifica se foi pressionado enter para executar a pesquisa}
 if Key = #13 then
   begin
     {verifica se o usuário digitou alguma coisa para ser pesquisada}
     if Trim(CED_NOMESRV.Text) = '' then
       Begin
         MessageDlg('Primeiro você tem que informar um valor a ser consultado.',
                     mtInformation,[mbOk],0);
         exit;//sai deste procedimento
       end;
     {atribui o valor digitado pelo usuário e executa a Qry}
     QRY_PESRAMAL.Params[0].AsString := '%'+CED_NOMESRV.Text+'%';
     QRY_PESRAMAL.FieldByName('CCONTRAMAL').Tag := 0;
     QRY_PESRAMAL.FieldByName('NNUMRAMAL').Tag := 0;
     QRY_PESRAMAL.FieldByName('CDESCSETOR').Tag := 0;
     QRY_PESRAMAL.ExecSQL;



     {verifica se a pesquisa não retornou nenhum registro}
     if QRY_PESRAMAL.IsEmpty then
       begin
         if CHK_NOMSERV.Checked then
           cMensagem := 'Nome de Servidor não encontrado.'
         else
           cMensagem := 'Setor não encontrado.';
         MessageDlg(String(cMensagem),mtInformation,[mbOk],0);
         BTN_AVANCAR.Enabled := false;
         BTN_PRIMEIRO.Enabled := false;
         BTN_RETROCEDER.Enabled := false;
         BTN_ULTIMO.Enabled := false;
         CED_NOMESRV.SetFocus;
         CED_NOMESRV.SelectAll;

       end// if QRY_PESRAMAL.IsEmpty then
     else
       begin
         BTN_AVANCAR.Enabled := true;
         BTN_PRIMEIRO.Enabled := true;
         BTN_RETROCEDER.Enabled := true;
         BTN_ULTIMO.Enabled := true;
         DBG_RAMAL.SetFocus;
         DTS_PESRAMAL.DataSet.First;
       end;//else (if QRY_PESRAMAL.IsEmpty then)
   end;
end;//procedure CED_NOMESRVKeyPress(Sender: TObject; var Key: Char);

//-------------------------------------//-------------------------------------//

procedure TFRM_PesRamal.BTN_PRIMEIROClick(Sender: TObject);
begin
  //posiciona no primeiro registro do DataSet
  DTS_PESRAMAL.DataSet.First;
  DBG_RAMAL.SetFocus;
end;

//-------------------------------------//-------------------------------------//

procedure TFRM_PesRamal.BTN_ULTIMOClick(Sender: TObject);
begin
  //posiciona no ultimo registro do DataSet
  DTS_PESRAMAL.DataSet.Last;
  DBG_RAMAL.SetFocus;
end;

//-------------------------------------//-------------------------------------//

procedure TFRM_PesRamal.BTN_AVANCARClick(Sender: TObject);
begin
  //posiciona no proximo registro do DataSet
  DTS_PESRAMAL.DataSet.Next;
  DBG_RAMAL.SetFocus;
end;

//-------------------------------------//-------------------------------------//

procedure TFRM_PesRamal.BTN_RETROCEDERClick(Sender: TObject);
begin
  //posiciona no registro anterior do DataSet
  DTS_PESRAMAL.DataSet.Prior;
  DBG_RAMAL.SetFocus;
end;

//-------------------------------------//-------------------------------------//

procedure TFRM_PesRamal.FormCreate(Sender: TObject);
begin
  {Deixa a aplicação escondida}
  Application.ShowMainForm := false;
end;

//-------------------------------------//-------------------------------------//

procedure TFRM_PesRamal.RxTrayIcon1DblClick(Sender: TObject);
begin
  if Application.ShowMainForm then
    // coloca a aplicação como ativa, na frente das outras
    SetForegroundWindow(Handle)
  else
    begin
      //mostra a aplicação
      Application.ShowMainForm := true;
      SessionRamal.Connect;
      Self.Visible := true;
      SetForegroundWindow(Handle);
    end;
end;

//-------------------------------------//-------------------------------------//

procedure TFRM_PesRamal.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
 {desabilita o fechamento do Form e esconde a aplicação}
 CanClose:= false;
 Self.Visible := false;
 Application.ShowMainForm := false;
 QRY_PESRAMAL.Close;
 SessionRamal.Disconnect;
 CED_NOMESRV.Text := '';

end;

//-------------------------------------//-------------------------------------//

procedure TFRM_PesRamal.CED_NOMESRVButtonClick(Sender: TObject);
  var
    cKey : Char;
begin
  {executa o mesmo procedimento do OnKeyPress, quando for Enter }
  cKey := #13;
  CED_NOMESRVKeyPress(Sender,cKey);
end;

//-------------------------------------//-------------------------------------//

procedure TFRM_PesRamal.FormShow(Sender: TObject);
begin
  {desabilita os botões de navegação dos registros}
  BTN_AVANCAR.Enabled := false;
  BTN_PRIMEIRO.Enabled := false;
  BTN_RETROCEDER.Enabled := false;
  BTN_ULTIMO.Enabled := false;
end;

//-------------------------------------//-------------------------------------//

procedure TFRM_PesRamal.Fechar2Click(Sender: TObject);
begin
  {desativa o icone do SysTray, fecha a Query, termina a conexão com o Banco
   e fecha a aplicação}
  RxTrayIcon1.Active := false;
  close;
  QRY_PESRAMAL.Close;
  SessionRamal.Connected := false;
  Application.Terminate;
end;

//-------------------------------------//-------------------------------------//

procedure TFRM_PesRamal.Fechar1Click(Sender: TObject);
begin
  RxTrayIcon1DblClick(RxTrayIcon1);
end;

//-------------------------------------//-------------------------------------//

procedure TFRM_PesRamal.CHK_NOMSERVClick(Sender: TObject);
begin
  {verifica qual componente acionou o evento}
  if TComponent(Sender).Name = 'CHK_NOMSERV' then
    CHK_DESCSETOR.Checked := not(CHK_NOMSERV.Checked)
  else
    CHK_NOMSERV.Checked := not(CHK_DESCSETOR.Checked);

  {muda o codigo da Sql para pesquisa conforme o item escolhido pelo usuário}
  if CHK_NOMSERV.Checked then
    begin
      QRY_PESRAMAL.SQL[2] := 'CadRamal.cContRamal LIKE :Contato';
      QRY_PESRAMAL.SQL[3] := 'order by CadRamal.cContRamal ';
    end
  else
    begin
      QRY_PESRAMAL.SQL[2] :='CadSetor.cDescSetor LIKE :Setor';
      QRY_PESRAMAL.SQL[3] := 'order by CadSetor.cDescSetor ';
    end;

  CED_NOMESRV.Text := '';
  CED_NOMESRV.SetFocus;
end; //procedure CHK_NOMSERVClick(Sender: TObject);

//-------------------------------------//-------------------------------------//
{procedimento que intercepta a mensagem no momento em que o  Windows está sendo
desligado }
procedure TFRM_PesRamal.WMQueryEndSession(var Msg: TWMQueryEndSession);
begin
  Fechar2Click(Fechar2);
  Msg.Result := 1;
  inherited;
end;

//-------------------------------------//-------------------------------------//

procedure TFRM_PesRamal.DBG_RAMALDrawDataCell(Sender: TObject;
  const Rect: TRect; Field: TField; State: TGridDrawState);
 var
   nRow : Integer;
begin
  {calculo para saber qual linha esta passando no momento
  em que ocorre este evento}
  nRow := Rect.Top div (Rect.Bottom - Rect.Top);

  {verifica se a linha é impar}
  if Odd(nRow) then
    DBG_RAMAL.Canvas.Brush.color := $00E9E9D1
  else
    DBG_RAMAL.Canvas.Brush.color := $00EFFAFA;

  {verifica se a linha está selecionada para mudar a cor e a fonte}
  if  (State <> []) then
   begin
     DBG_RAMAL.Canvas.Font.Color := clwhite;
     DBG_RAMAL.Canvas.Brush.color := clBlack;
   end;

  {Limpa o canvas do Grid com as medidas que estão no Rect}
  DBG_RAMAL.Canvas.FillRect(Rect);
  {redesenha o grid, para as novas mudanças}
  DBG_RAMAL.DefaultDrawDataCell(Rect, Field, State);
end;

//-------------------------------------//-------------------------------------//

procedure TFRM_PesRamal.QRY_PESRAMALAfterScroll(DataSet: TDataSet);
begin
  {redesenha o grid}
  DBG_RAMAL.Repaint;
end;

//-------------------------------------//-------------------------------------//

procedure TFRM_PesRamal.DBG_RAMALDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
  var
    nTam: Integer;
begin
 {pega o tamanho do texto em Width que está na linha da coluna}
 nTam := WidthText(Column.Field.Text);

 if Column.Field.Tag = 0 then
   begin
     {pega o tamanho do Titulo em Width da coluna}
     Column.Width := WidthText(Column.Title.Caption)+8;
     Column.Field.Tag := 1;
   end;

 if nTam >= Column.Width then
   Column.Width := nTam + 8 ;

end;

//-------------------------------------//-------------------------------------//

{Função para retornar o tamanho de um texto em width}
function TFRM_PesRamal.WidthText(Text : String):Integer;
  var
    Texto : TLabel;
begin
  Result := 0;
  if Trim(Text) = '' then
    exit;

  Texto := TLabel.Create(nil);
  Texto.AutoSize := true;

  Texto.Caption := Text;
  Result := Texto.Width;

end;



end.
