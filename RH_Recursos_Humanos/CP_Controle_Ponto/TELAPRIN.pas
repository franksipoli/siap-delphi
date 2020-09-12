unit TELAPRIN;

interface
uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ComCtrls, PageControlEx, lmdctrl, lmdshapA, lmdbtn, lmdmmS, lmdextcA,
  lmdextcS, lmdcctrl, Menus, ExtCtrls, dfsStatusBar, RxMenus,
  ImgList, Tabs, Tabnotbk, ToolWin, lmdcompo, lmdclass, lmdnonvS, DBCtrls,
  Db, DBTables, Grids, DBGrids, Buttons, lmdctrlA, StdCtrls, LblEffct, Mask,
  RxLogin, Psock, NMFngr, LMDCustomComponent, LMDCustomHint,
  LMDCustomShapeHint, LMDShapeHint, LMDFormDisplay, LMDCustomControl,
  LMDCustomPanel, LMDCustomBevelPanel, LMDCustomParentPanel,
  LMDCustomPanelFill, LMDPanelFill, LMDBaseEdit, LMDCustomEdit, LMDEdit,
  Enter, LMDMessageHint, ppCache, ppDB, ppDBPipe,
  ppComm, ppRelatv, ppProd, ppClass, ppReport, ppArchiv, MemDS, DBAccess,
  Ora, AppEvnts, LMDControl, LMDBaseControl, LMDBaseGraphicControl,
  LMDBaseLabel, LMDCustomLabel, LMDLabel ;

type
  TpShow = (shDefault,shModal,shNormal,shDisplay);// tipo usado para definir o modo do show de um form
  TFRM_TELAPRI = class(TForm)
    Tmr_Hora: TTimer;
    Img_IconesDoSistema: TImageList;
    Frm_Displ: TLMDFormDisplay;
    Hin_Hint: TLMDShapeHint;
    Msg_Hint: TLMDMessageHint;
    ApplicationEvents1: TApplicationEvents;
    LBL_Titulo: TLMDLabel;
    PNL_Menu: TPanel;
    Menu: TTreeView;
    TMR_Login: TTimer;
    LBL_TpAcesso: TLMDLabel;
    LBL_NmUsuario: TLMDLabel;
    Btn_User: TSpeedButton;
    LMDPanelFill2: TLMDPanelFill;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);

    procedure ClickItem (Sender : TObject);
    procedure FormShow(Sender: TObject);
    procedure ClickGenerico(Sender : TObject);
    procedure ClickTreeView(Sender : TObject);
    procedure ApplicationEvents1ShortCut(var Msg: TWMKey;
      var Handled: Boolean);
    procedure ValidaEntrada(Sender: TObject; var Key: Char);
    procedure EditAcesso(Sender:TObject);
    procedure Btn_FreeClick(Sender: TObject);
    procedure Btn_UserClick(Sender: TObject);
    procedure TMR_LoginTimer(Sender: TObject);
    procedure MenuMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
  private
    { Private declarations }

  public
    { Public declarations }

    procedure ScrollGrid(Data: TDataSet);

    procedure ColorGrid(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
  end;

var
  VerEnter : TWMKey;
  FRM_TELAPRI: TFRM_TELAPRI;
  nClickPub : integer;
  cNomeForm  : array [0..25] of String;
  cNomeAplic : array [0..100, 0..100] of String;
  ListBotao  : TStringList;
  cTipCampo, cOrder : String;
  LisTipoShow, TipoCampo, ListaTab  : TStringList;
  cNomeTab, cTextCamp, cSelecSql, cWhereSql : String;
  FrmComp : TCustomForm;
  cListBrowser, Tecla : String;
  FormCust, nContaErro, nFormAtiv  : Integer;
  TipoIndc : array [0..5] of TIndexOption;
  TipoTblInd : array [0..4] of TIndexOption;
  cCamnh, cTabNome, cCampCom : String;
  lFrmAuxiliar : Boolean;
  Lista, ListCampos, ListFocoComp : TStringList;
  lBotaoPesq : Boolean;
  TabelaPesq : TOraQuery;
  QryRelatorio  : TOraQuery; {variavel usada para geração de relatórios usada na função Imprimir}
  lFinal : Boolean;
  lResp : Boolean; {resposta da mensagem de gravação da função DBGenerica}
  rbRelatorio : TppReport;
  rbArchive : TppArchiveReader;
  cNomeAplicacao, cTituloRel, cTituloApli  : String;
  oLocal : TBookMark;
  FocoCompo : TComponent;
  cFiltroRel : String;
  ListCompoReq : TStringList;// lista que armazemará componentes cujo conteúdo não pode ser nulo,
                             // para validação no momento da gravação no Banco de Dados
 // oBotaoMouse : tagMSG;
  procedure AtivaForm(NomeForm : String; Show : TpShow; FormDisplay : TLMDFormDisplay);
  procedure ClickGlobal(Indice : Integer );



implementation

uses MPLLib, Login, Fundo, AUXIL, MSenha, A001RHCP, D001RHCP, DMCTRL,
  A002RHCP, D002RHCP, A003RHCP, D003RHCP, A004RHCP, D004RHCP, A005RHCP,
  D005RHCP;

{$R *.DFM}

procedure TFRM_TELAPRI.EditAcesso(Sender:TObject);
begin
  TCharCase(Sender).Text := '*************';
end;
procedure TFRM_TELAPRI.ValidaEntrada(Sender: TObject; var Key: Char);
  var
    nCarac : Integer;
    cCaracteres : String;
begin
  cCaracteres := DMControle.Qry_P.FieldByName('cCaracInva').asString;
  for nCarac:=0 to Length(cCaracteres)-1 do
    if Key = cCaracteres[nCarac] then
      begin
        MessageDlg('Este "'+cCaracteres[nCarac]+'" caracter é inválido para digitação!',
                   mtError,[mbOk],0);
        Key:=#0;
      end;


end;

//UDF by Frank Sipoli (Desenvolvimento)
// procedimento para chamadas de forms referente ao Click do Menu TreeView
procedure TFRM_TELAPRI.ClickTreeView(Sender : TObject);

begin

   
end;


//UDF by Leandro Ribas (Desenvolvimento)
// procedimento para chamadas de forms referente ao botão que recebeu o click do mouse
procedure TFRM_TELAPRI.ClickGenerico(Sender : TObject);
var
 Nome : String;
 x : Integer;
begin
  If Sender is TSpeedButton then {verifica se o objeto que recebeu o click do mouse é um SpeedButton}
   with Sender as TSpeedButton do
     begin
       Nome:= TSpeedButton(Sender).Name;
       If DMControle.Qry_O.Locate('cNomeObj',Nome,[])then
        begin
          if not DMControle.Qry_O.FieldByName('cNomeUnit').IsNull then
            begin
             if DMControle.Qry_A.Locate('cNomeUnit',DMControle.Qry_O.FieldByName('cNomeUnit').value,[])then
             AtivaForm(DMControle.Qry_A.FieldByName('cNomeForm').asString, shDefault,Frm_Displ);
            end;
        end;
     end;
  if Sender is TToolButton then
    begin
      with Sender as TToolButton do
        begin
          x:= Index;
          clickGlobal(X);
        end;

    end;
end;

procedure ClickGlobal(Indice : Integer );
begin
  AtivaForm(CNomeForm[indice],shDefault,FRM_TELAPRI.Frm_Displ);
end;

//UDF by Leandro Ribas (Desenvolvimento)
//procedimento para chamar forms dependento do item do menu
procedure TFRM_TELAPRI.ClickItem (Sender : TObject);
var cSubItem : String;
begin
   with TMenuItem(Sender)do
    begin
      cSubItem := Copy(Name,2,Length(Name)-1);
      DMControle.TempMenu.Locate('subitem',cSubItem,[]);
      AtivaForm(Trim(DMControle.TempMenu.FieldByName('Form').AsString),shDefault,Frm_Displ);
    end;
end;

//UDF by Leandro Ribas (Desenvolvimento)
// procedimento para Criar ou Ativar Forms
//Parametros :
//NomeForm : tipo string, onde exige o nome do form a ser ativado
//Show : pode ser 4 tipos: shDefault,shModal,shNormal,shDisplay
//shDefault : neste modo o show do form será o que estiver definido na base de dados de Controle do Sistema.
//shModal : neste modo o show do form será Modal.
//shNormal : neste modo o show será inverso ao Modal, ou seja uma janela não modal.
//shDisplay : neste modo o form será controlado pelo componente Form Display, que está sendo passado como parametro.
//FormDisplay : componente do tipo TLMDFormDisplay no qual será incluido o form caso o tipo do show seja  shDisplay.
// para os tipos diferentes do shDisplay o parametro FormDisplay pode ser passado com o valor Nil.
procedure AtivaForm(NomeForm : String; Show : TpShow; FormDisplay : TLMDFormDisplay);
var                 {Nome do form que deverá ser criado ou ativado, e que modo será feito o show do form}
 nForm, nQtdForm : Integer;
  bDForm, lShow : Boolean;
begin
 lShow:= false;
 if DMControle.Qry_A.Locate('cNomeForm',NomeForm,[]) then
   begin
     bdForm := False ;
     for nForm:=0 to Screen.FormCount-1 do
       begin
        if Screen.Forms[nForm].Name = NomeForm then
          Begin
            bdForm := True ;           {este bloco de comando verifica se o form já foi criado}
            break ;
          end
       end ;
     // criação dos forms
     if not bdForm  then
       begin

         nQtdForm := Screen.FormCount;
         if NomeForm = 'FRM_AUXIL' then
           begin
             Application.CreateForm(TFRM_AUXIL,FRM_AUXIL);
           end;
         if NomeForm = 'FRM_A001RHCP' then
           begin
             Application.CreateForm(TFRM_A001RHCP,FRM_A001RHCP);
             Application.CreateForm(TDTM_A001RHCP,DTM_A001RHCP);
           end;
         if NomeForm = 'FRM_MSENHA' then
           begin
             Application.CreateForm(TFRM_MSENHA,FRM_MSENHA);
           end;
         if NomeForm = 'FRM_A002RHCP' then
           begin
             Application.CreateForm(TFRM_A002RHCP,FRM_A002RHCP);
             Application.CreateForm(TDTM_A002RHCP,DTM_A002RHCP);
           end;
         if NomeForm = 'FRM_A003RHCP' then
           begin
             Application.CreateForm(TFRM_A003RHCP,FRM_A003RHCP);
             Application.CreateForm(TDTM_A003RHCP,DTM_A003RHCP);
           end;
         if NomeForm = 'FRM_A004RHCP' then
           begin
             Application.CreateForm(TFRM_A004RHCP,FRM_A004RHCP);
             Application.CreateForm(TDTM_A004RHCP,DTM_A004RHCP);
           end;
         if NomeForm = 'FRM_A005RHCP' then
           begin
             Application.CreateForm(TFRM_A005RHCP,FRM_A005RHCP);
             Application.CreateForm(TDTM_A005RHCP,DTM_A005RHCP);
           end;
         if nQtdForm = Screen.FormCount then
           begin
             ShowMessage('Aplicação não Encontrada!!!');
             exit;
           end;
         if lFrmAuxiliar then
           FRM_AUXIL.BTN_SAIR.Enabled := false;
       end ;

     if Show = shDefault then //modo de show será o que estiver definido na base de dados
       if AnsiUpperCase(DMControle.Qry_A.FieldByName('cShowForm').asString) = 'N' then
         Show := shNormal
       else
         if AnsiUpperCase(DMControle.Qry_A.FieldByName('cShowForm').asString) = 'M' then
           Show := shModal
         else
           Show := shDisplay;
     Frm_TelaPri.Btn_User.Enabled := false;
     //Frm_TelaPri.Btn_Free.Enabled := false;
     Frm_TelaPri.PNL_Menu.Enabled := false;
     if Show in [shNormal,shModal] then
       begin
        nFormAtiv:= nFormAtiv + 1;
        Screen.Forms[nForm].BorderStyle := bsSingle;
        Screen.Forms[nForm].BorderIcons := [biSystemMenu];
        Screen.Forms[nForm].ClientHeight := Screen.Forms[nForm].ClientHeight + 25;
        Screen.Forms[nForm].ClientWidth := Screen.Forms[nForm].ClientWidth + 6;
        Screen.forms[nform].Caption := DMControle.Qry_A.FieldByName('cTitAplic').asString;
        if Trim(DMControle.Qry_A.FieldByName('cNomeBmp').asString) <> '' then
          if FileExists(DMControle.Qry_P.FieldByName('cPathImg').asString+
                        DMControle.Qry_A.FieldByName('cNomeBmp').asString) then
            Screen.Forms[nForm].Icon.LoadFromFile(DMControle.Qry_P.FieldByName('cPathImg').asString+
                                                  DMControle.Qry_A.FieldByName('cNomeBmp').asString);
        FormCust:=0;
        LisTipoShow.Add(Screen.forms[nform].Name);
        if Show = shNormal then
          begin
            LisTipoShow.Add('N');
            Screen.Forms[nForm].show;
          end
        else
          begin
            LisTipoShow.Add('M');
            Screen.Forms[nForm].ShowModal;
          end;
        lShow:= true;
       end //Show in [shNormal,shModal]
     else
       if Show = shDisplay then // com este modo o form é adicionado em um componente FormDisplay
         begin                  // passado como parametro
           if FormDisplay = Nil then
             begin
               MessageDlg('Foi escolhido o modo display para o show do form,'+#13+
                          'mas não fou especificado nenhum FormDisplay.',mtError,[mbOk],0);
               exit;
             end;
           nFormAtiv:= nFormAtiv + 1;
           //coloca o titulo da aplicação no label da tela principal
           Frm_TelaPri.LBL_Titulo.Caption := DMControle.Qry_A.FieldByName('cTitAplic').asString;
           if not bdForm then
            begin
              FormDisplay.AddForm(Screen.CustomForms[nForm], true);
              if Tecla = 'F3' then
                begin
                   Screen.CustomForms[nForm -1].Tag:=0;
                   FormCust:= FormCust +1;
                end;
              Screen.CustomForms[nForm].Tag:=9;
              LisTipoShow.Add(Screen.forms[nform].Name);
              LisTipoShow.Add('D');
              tecla:='';
            end
           else
             begin
                FormDisplay.ActiveForm := Screen.CustomForms[nForm] ;{caso o form já estiver criado, ele só é ativa dentro do Frm_Displ}
                if Tecla = 'F3' then
                  begin
                    Screen.CustomForms[nForm -1 ].Tag:=0;
                    FormCust:= FormCust +1;
                  end;
                Screen.CustomForms[nForm].Tag:=9;
                LisTipoShow.Add(Screen.forms[nform].Name);
                LisTipoShow.Add('D');
                tecla:='';
             end;
         end ; //Show = shDisplay
   end;//DMControle.Qry_A.Locate('cNomeForm',NomeForm,[])
   if not lShow then
     lFinal := True;

end;

//procedimento para redesenhar o Grid quando for feita alguma navegação
//do Dataset ligado ao Grid
procedure TFRM_TELAPRI.ScrollGrid(Data : TDataSet);
  var
    i : integer;
    FormAtivo : TForm;
begin

  if Screen.ActiveForm <> nil then
    begin
      if Screen.ActiveForm = Self then
        begin
          FormAtivo := TForm(Frm_Displ.ActiveForm);
          if FormAtivo = FRM_AUXIL then
            FormAtivo := TForm(FRM_AUXIL.Frm_DisplAux.ActiveForm);
        end
      else
        FormAtivo := Screen.ActiveForm;

      for i := 0 to FormAtivo.ComponentCount -1 do
        if FormAtivo.Components[i] is TDBGrid then
          if TDBGrid(FormAtivo.Components[i]).DataSource.DataSet = Data then
            begin
              TDBGrid(FormAtivo.Components[i]).Repaint;
              Break;
            end;
    end;

end;


//procedimento para colorir as linhas do Grid e destacar a linha selecionada
procedure TFRM_TELAPRI.ColorGrid(Sender: TObject; const Rect: TRect;
  DataCol: Integer; Column: TColumn; State: TGridDrawState);
  var
    nRow : Integer;
begin
   nRow := Rect.Top div (Rect.Bottom - Rect.Top);
   if nRow > 16 then
     nRow := nRow +1;
   if Odd(nRow) then
     TDBGrid(Sender).Canvas.Brush.color := $00E9E9D1
   else
     TDBGrid(Sender).Canvas.Brush.color := $00EFFAFA;
   if  (State <> []) then
     begin
       TDBGrid(Sender).Canvas.Font.Color := clwhite;
       TDBGrid(Sender).Canvas.Brush.color := $00C08000;
     end;

   TDBGrid(Sender).Canvas.FillRect(Rect);
   TDBGrid(Sender).DefaultDrawDataCell(Rect, Column.Field, State);
end;


procedure TFRM_TELAPRI.FormCreate(Sender: TObject);
begin
   LBL_NmUsuario.Caption := cNomeUsuario;

   cTituloApli:= DMControle.Qry_P.FieldByName('cTitLogin').asString;
   Caption := DMControle.Qry_P.FieldByName('cNomeRaz').asString;
   LBL_Titulo.Caption := cTituloApli;
   LisTipoShow:= TStringList.Create;
   MontaMenu(nMatricula);
end;

procedure TFRM_TELAPRI.FormClose(Sender: TObject;
var Action: TCloseAction);
begin
  if not lFinal then
   begin
    Frm_Login.Close;
    Application.Terminate;
    Action := caFree ;
   end
  else Action := caNone;
end;


procedure TFRM_TELAPRI.FormShow(Sender: TObject);
begin
  Frm_Displ.AddFormClass(TFrm_Fundo,true);
  cCamnh:= DmControle.Qry_P.FieldByName('cPathInd').asString;

  ListaTab:= TStringList.Create;
  ListaTab.Sorted:= True;
  ListaTab.Duplicates:= dupIgnore;

  ListCompoReq := TStringList.Create;
  ListFocoComp := TStringList.Create;{Lista usada para voltar ao foco do ultimo}
                                     {componente depois de uma chamada pelo F3 (função VerTeclas)}
end;



procedure TFRM_TELAPRI.ApplicationEvents1ShortCut(var Msg: TWMKey;
  var Handled: Boolean);
begin
 VerEnter := Msg;
  if msg.CharCode = VK_RETURN then
   Screen.ActiveForm.Perform(WM_NEXTDLGCTL,0,0);
   {em qualquer ponto da aplicação que o usuario digitar Enter o foco vai
   para o proximo controle " Tecla Tab por Enter " }

  if msg.CharCode = VK_F1 then
    begin
      if (FindWindow('TFrm_Help','Ajuda') = 0) and (FindWindow('TFrm_Pesquisa','Pesquisa') = 0) then
        begin
          VerTeclas( VK_F1);
          exit;
        end
      else
        exit;
    end;

  if msg.CharCode = VK_F2 then
    begin
      if FindWindow('TFrm_Help','Ajuda')<> 0 then
        exit;
      if (FindWindow('TFrm_Pesquisa','Pesquisa') = 0) and (FindWindow(nil,'Informação') = 0)then
        begin
          VerTeclas(VK_F2);
          exit;
        end
      else
        exit;
    end;

  if msg.CharCode = VK_F3 then
    if (FindWindow('TFrm_Help','Ajuda') = 0) and (FindWindow('TFrm_Pesquisa','Pesquisa') = 0) then
       VerTeclas( VK_F3);
end;

procedure TFRM_TELAPRI.Btn_FreeClick(Sender: TObject);
begin
  Close;
end;

procedure TFRM_TELAPRI.Btn_UserClick(Sender: TObject);
begin
  WindowList := DisableTaskWindows(Frm_Login.Handle);
  Frm_Login.Visible := true;
  Frm_Login.Show;
  Frm_Login.dfsStatusBar1.Panels[1].GaugeAttrs.Position := 0;
  Frm_Login.LMDEdMatricula.SelectAll;
  Frm_Login.LMDEdMatricula.SetFocus;
end;

procedure TFRM_TELAPRI.TMR_LoginTimer(Sender: TObject);
begin
  LBL_TpAcesso.Caption := SegHora((HoraSeg(TimeToStr(Now)) - nHora));
  LBL_TpAcesso.Refresh;
end;

procedure TFRM_TELAPRI.MenuMouseUp(Sender: TObject; Button: TMouseButton;
  Shift: TShiftState; X, Y: Integer);
begin
   if TTreeView(Sender).GetNodeAt(X,Y) <> nil then
     if not(TTreeView(Sender).GetNodeAt(X,Y).HasChildren) then
       if DMControle.Qry_A.Locate('cDescApli',TTreeView(Sender).Selected.Text,[])then
         AtivaForm(DMControle.Qry_A.FieldByName('cNomeForm').asString, shDefault,Frm_Displ);
end;

end.



