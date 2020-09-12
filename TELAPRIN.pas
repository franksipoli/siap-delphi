unit TELAPRIN;

interface
uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ComCtrls, lmdctrl, lmdshapA, lmdbtn, lmdmmS, lmdextcA,  lmdextcS, lmdcctrl,
  ExtCtrls, dfsStatusBar, ImgList, lmdcompo, lmdclass, lmdnonvS, DBCtrls,
  Db, DBTables, Grids, DBGrids, Buttons, lmdctrlA, StdCtrls, LMDControl,
  LMDBaseControl, LMDBaseGraphicControl, LMDBaseLabel, LMDCustomLabel,
  LMDLabel, LMDCustomControl, LMDCustomPanel, LMDCustomBevelPanel,
  LMDCustomParentPanel, LMDCustomPanelFill, LMDPanelFill,
  LMDCustomComponent, LMDCustomHint, LMDCustomShapeHint, LMDShapeHint,
  LMDFormDisplay, LMDBaseEdit, LMDCustomEdit, LMDEdit, Enter,
  LMDMessageHint, MemDS, DBAccess, Ora, AppEvnts,
  ppRelatv, ppProd, ppClass, ppReport, ppArchiv, ppCache, ppDB,
  ppDBPipe, ppComm, CtrlForms, ActnList, RxLookup ;

type
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
    LMDPanelFill8: TLMDPanelFill;
    Btn_AtualizaAcesso: TSpeedButton;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure ApplicationEvents1ShortCut(var Msg: TWMKey;
      var Handled: Boolean);
    procedure Btn_FreeClick(Sender: TObject);
    procedure Btn_UserClick(Sender: TObject);
    procedure TMR_LoginTimer(Sender: TObject);
    procedure MenuMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Btn_AtualizaAcessoClick(Sender: TObject);
  private

    { Private declarations }

  public
    { Public declarations }

    procedure NomeAP(Sender : TObject);

  end;

var
  FRM_TELAPRI : TFRM_TELAPRI;


implementation

uses MPLCtrl, MPLLib, DMCTRL, Login, Fundo, UVariaveis, Auxil ;

{$R *.DFM}

procedure TFRM_TELAPRI.FormCreate(Sender: TObject);
begin
   LBL_NmUsuario.Caption := cNomeUsuario;

   cTituloApli:= DMControle.Qry_P.FieldByName('cTitLogin').asString;
   Caption := '  ' + DMControle.Qry_P.FieldByName('cNomeRaz').asString;
   LBL_Titulo.Caption := cTituloApli;
   MontaMenu(nMatricula);
   Screen.OnActiveFormChange := NomeAP;
end;

procedure TFRM_TELAPRI.FormClose(Sender: TObject;
var Action: TCloseAction);
begin

  if oControlForms.FormsAtivos = 0 then
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
  //ListaTab:= TStringList.Create;
  //ListaTab.Sorted:= True;
  //ListaTab.Duplicates:= dupIgnore;

  ListFocoComp := TStringList.Create;{Lista usada para voltar ao foco do ultimo}
                                     {componente depois de uma chamada pelo F3 (função VerTeclas)}
end;



procedure TFRM_TELAPRI.ApplicationEvents1ShortCut(var Msg: TWMKey;
  var Handled: Boolean);
begin
  if msg.CharCode = VK_RETURN then
    begin
      if (Screen.ActiveControl is TDBMemo) or
         (Screen.ActiveControl is TMemo) then
        exit;
      if Screen.ActiveControl is TDBGrid then
        begin
          Screen.ActiveControl.Perform(WM_KEYDOWN,VK_TAB,0);
          Handled := true;
        end
      else
      if (Screen.ActiveControl is TRXDBLookupCombo) and
         (TRXDBLookupCombo(Screen.ActiveControl).IsDropDown) then
        exit
      else
        Screen.ActiveForm.Perform(WM_NEXTDLGCTL,0,0);

      {em qualquer ponto da aplicação que o usuario digitar Enter o foco vai
      para o proximo controle " Tecla Tab por Enter "}

    end;

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
  FRM_LOGIN.EDT_CCPFCNPJ.SelectAll;
  FRM_LOGIN.EDT_CCPFCNPJ.SetFocus;
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
        oControlForms.AtivaForm(DMControle.Qry_A.FieldByName('cNomeForm').asString, CtrlForms.shDefault,Frm_Displ);
end;

procedure TFRM_TELAPRI.NomeAP(Sender: TObject);
begin
 with TScreen(Sender) do
   begin
     if ActiveForm <> nil then
       begin

         if ActiveForm = FRM_TELAPRI then
           begin
             if Frm_Displ.ActiveForm = FRM_AUXIL then
               begin
                 if FRM_AUXIL.Frm_DisplAux.ActiveForm <> nil then
                   cNomeAplicacao := Copy(FRM_AUXIL.Frm_DisplAux.ActiveForm.Name,
                                  Pos('_',FRM_AUXIL.Frm_DisplAux.ActiveForm.Name)+1,
                                  length(FRM_AUXIL.Frm_DisplAux.ActiveForm.Name));
               end
             else
               if Frm_Displ.ActiveForm <> FRM_FUNDO then
                 cNomeAplicacao := Copy(Frm_Displ.ActiveForm.Name,
                                  Pos('_',Frm_Displ.ActiveForm.Name)+1,
                                  length(Frm_Displ.ActiveForm.Name));
           end
         else
           cNomeAplicacao := Copy(TScreen(Sender).ActiveForm.Name,
                             Pos('_',TScreen(Sender).ActiveForm.Name)+1,
                             length(TScreen(Sender).ActiveForm.Name));

       end;
   end;
end;

procedure TFRM_TELAPRI.Btn_AtualizaAcessoClick(Sender: TObject);
begin
  Menu.Visible := false;
  Menu.Items.Clear;
  DMControle.AtualizaTabelasControle;
  MontaMenu(nMatricula);
  Menu.Visible := true;
end;

end.



