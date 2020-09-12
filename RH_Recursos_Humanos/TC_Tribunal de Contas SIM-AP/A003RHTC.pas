unit A003RHTC;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  lmdcctrl, lmdctrl, StdCtrls,lmdstdcS, ExtCtrls, Buttons,
  ImgList, ComCtrls, lmdextcS, lmdeditb,lmdeditc, LMDEdit, lmdbredt,
  lmdextcA, LMDShadowFill, LMDCustomPanelFill, LMDPanelFill,
  LMDGraphicControl, LMDBaseMeter, LMDCustomProgress, LMDProgress,
  LMDControl, LMDBaseControl, LMDBaseGraphicControl, LMDBaseLabel,
  LMDCustomSimpleLabel, LMDSimpleLabel, LMDCustomControl, LMDCustomPanel,
  LMDCustomBevelPanel, LMDCustomParentPanel, LMDCustomGroupBox, LMDGroupBox,
  AppEvnts, ActnList, LMDCustomComponent, LMDApplicationCtrl,
  LMDGlobalHotKey, LMDWndProcComponent, LMDMouseBaseCtrl,
  LMDMousePositioner, lmdformA, LMDCustomHint, LMDHint,
  LMDContainerComponent, LMDBaseDialog, LMDTipDlg, LMDCustomShapeHint,
  LMDMessageHint, RzLstBox, RzChkLst, Gauges, Mask, ToolEdit, LMDFill,
  RxLookup, Grids, DBGrids, FileCtrl, Ora;


type
  TFRM_A003RHTC = class(TForm)
    ImageList1: TImageList;
    LMDGroupBox1: TLMDGroupBox;
    Label2: TLabel;
    Label3: TLabel;
    DIR_TXTTCE: TDirectoryEdit;
    LKP_MESANO: TRxDBLookupCombo;
    LMDGroupBox4: TLMDGroupBox;
    lsv_tabelas: TListView;
    Panel2: TPanel;
    BTN_EXPORTATCE: TSpeedButton;
    BTN_SAIR: TSpeedButton;
    BTN_CANCELAR: TSpeedButton;
    procedure BTN_SAIRClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure BTN_EXPORTATCEClick(Sender: TObject);
    procedure LKP_MESANOExit(Sender: TObject);
    procedure BTN_CANCELARClick(Sender: TObject);
    procedure LKP_MESANOChange(Sender: TObject);
  private
    procedure MontaLista;
    function ListaTabelas: TStringList;
    procedure CriaDir;
    procedure GravaTxt(var cArq : TextFile; cNomeArq : String; cLinha : String);
    procedure GravaTabelas(var oQry : TOraQuery; cArqTxt : String; var oTxtFile : TextFile; nPosicao : Integer);    procedure InsereSituacao(cSitua: String; noItem: Integer);
    procedure LimpaSituacao;
    procedure Historico;
    procedure TabQuery(lRetorno : Boolean);
    function ParaExp: Boolean;
    procedure GravaTabLotacao(var oQry : TOraQuery; cArqTxt : String; var oTxtFile : TextFile; nPosicao : Integer);
    {Private declarations}
  public
    vPessoa, vAposen, vPensao, vLotacao, vCargo, vClasseCrg : TextFile;
    vEndereco, vAlocMes, vVlrMes, vPublica, vAtoMovPes, vEdital : TextFile;
    vMovim, vAtoCrg, vHistCrg : TextFile;
    cLocalDir : String;
    nNumImporta : Integer;
    lCancelaExp : Boolean;
    { Public declarations }
  end;

var
  FRM_A003RHTC: TFRM_A003RHTC;

implementation

uses MPLCtrl, UVariaveis, DMCTRL, A001RHTC, D001RHTC, MPLLib;

{$R *.DFM}

procedure TFRM_A003RHTC.BTN_SAIRClick(Sender: TObject);
begin
  Close;
end;

procedure TFRM_A003RHTC.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  TabQuery(True);
  Action := oControlForms.Saidas(Self,[NIL],NIL);
end;

procedure TFRM_A003RHTC.FormShow(Sender: TObject);
begin
  If not Acesso(nMatricula,'A003RHTC',NIL) then
    close;
  Botoes(['BTN_CANCELAR'],'',False);
  FRM_A003RHTC.OnShow := nil;
 {é atribuido ao OnShow do Form o valor nil para que o mesmo seja executado apenas uma vez}
 {pelo fato que se outra aplicação for chamada pela tecla F3, e ao retornar da aplicação que foi chamada pela tecla}
 {o evento OnShow deste form não acontecerá, ou seja não será executado, para permanecer o mesmo status da aplicação}
 {quando o F3 foi chamado}
 lCancelaExp := false;
 DTM_A001RHTC.QRY_CADTCE.Refresh;
 if not DTM_A001RHTC.QRY_CADTCE.FieldByName('DAT_CHAVE').IsNull then
   LKP_MESANO.KeyValue := DTM_A001RHTC.QRY_CADTCE.FieldByName('DAT_CHAVE').Value;
 MontaLista;
 CriaDir;
 nNumImporta := DTM_A001RHTC.QRY_CADTCE.FieldByName('NIDCADTCE').AsInteger;
 TabQuery(False);
end;

procedure TFRM_A003RHTC.GravaTxt(var cArq : TextFile; cNomeArq : String; cLinha : String);
begin
  try
     if FileExists(cLocalDir+'\'+cNomeArq) then
       begin
         Writeln(cArq,cLinha);
       end
     else
       begin
         Rewrite(cArq, cLocalDir+'\'+cNomeArq);
         Writeln(cArq,cLinha);
       end;
   Except
     begin
       CloseFile(cArq);
       if FileExists(cLocalDir+'\'+cNomeArq) then
         DeleteFile(cLocalDir+'\'+cNomeArq);
     end;
   end;
end;

procedure TFRM_A003RHTC.BTN_EXPORTATCEClick(Sender: TObject);
begin
  // Arquivos textos... Local e Abertura dos mesmos para gravação.
  if DIR_TXTTCE.InitialDir <> '' then
     cLocalDir := DIR_TXTTCE.InitialDir
  else
    begin
      MessageDlg('Favor informar o local de Gravação!',mtInformation,[mbOk],0);
      DIR_TXTTCE.SetFocus;
      Exit;
    end;

  try
    with DTM_A001RHTC do
      begin
        GravaTabelas(QRY_AMPPESSOAPUBLICA,'ampPessoaPublica.txt',vPessoa,0);
        if ParaExp then
          Exit;
        GravaTabelas(QRY_AMPAPOSENTADORIA,'ampAposentadoria.txt',vAposen,1);
        if ParaExp then
          Exit;
        GravaTabelas(QRY_AMPPENSAO,'ampPensao.txt',vPensao,2);
        if ParaExp then
          Exit;
        GravaTabLotacao(QRY_AMPLOTACAO,'ampUnidadeLotacao.txt',vLotacao,3);
        if ParaExp then
          Exit;
        GravaTabelas(QRY_AMPCARGO,'ampCargo.txt',vCargo,4);
        if ParaExp then
          Exit;
        GravaTabelas(QRY_AMPCLASSECARGO,'ampClasseCargo.txt',vClasseCrg,5);
        if ParaExp then
          Exit;
        GravaTabelas(QRY_AMPENDERECO,'ampEndereco.txt',vEndereco,6);
        if ParaExp then
          Exit;
        GravaTabelas(QRY_AMPALOCACAOMENSAL,'ampAlocacaoMensal.txt',vAlocMes,7);
        if ParaExp then
          Exit;
        GravaTabelas(QRY_AMPVALORESMENSAIS,'ampValoresMensais.txt',vVlrMes,8);
        if ParaExp then
          Exit;
        GravaTabelas(QRY_AMPVEICULOPUBLICACAO,'ampVeiculoPublicacao.txt',vPublica,9);
        if ParaExp then
          Exit;
        GravaTabelas(QRY_AMPATOMVTPESSOAL,'ampAtoMovimentacaoPessoal.txt',vAtoMovPes,10);
        if ParaExp then
          Exit;
        GravaTabelas(QRY_AMPEDITAL,'ampEdital.txt',vEdital,11);
        if ParaExp then
          Exit;
        GravaTabelas(QRY_AMPMOVIMENTACAO,'ampMovimentacao.txt',vMovim,12);
        if ParaExp then
          Exit;
        GravaTabelas(QRY_AMPATOSCARGOS,'ampAtosCargo.txt',vAtoCrg,13);
        if ParaExp then
          Exit;
        GravaTabelas(QRY_AMPHISTORICOATOSCARGO,'ampHistoricoAtosCargo.txt',vHistCrg,14);
        if ParaExp then
          Exit;
        Historico;
        MessageDlg('Processamento Concluido com Sucesso!',mtInformation,[mbOk],0);
        LimpaSituacao;
      end;
  except
    begin
      MessageDlg('Não foi possível exportar os dados.'+#10#13+
      'Processamento Cancelado.???',mtInformation,[mbOk],0);
       DeleteFile(cLocalDir+'\*.txt');
    end;
  end;
end;


procedure TFRM_A003RHTC.MontaLista;
  var
    ListaTab : TStringList;
    procedure AlimentaView(Situacao: String);
      var
        i : integer;
        item : TListItem;
    begin
      for i:= 0 to ListaTab.Count - 1 do
        begin
          item := lsv_tabelas.Items.Add;
          item.Caption := ListaTab.Strings[i];
        end;
    end;
begin
  ListaTab := TStringList.Create;

  Application.ProcessMessages;

  ListaTab := ListaTabelas;
  AlimentaView('Exportando...');
  ListaTab.Clear;

end;

function TFRM_A003RHTC.ListaTabelas: TStringList;
var nNumRow : Integer;
begin
  Result := TStringList.Create;
    begin
      for nNumRow := 0 to FRM_A001RHTC.SG_TABELAS.RowCount -1 do
        begin
          Result.Add(FRM_A001RHTC.SG_TABELAS.Cells[0,nNumRow]);
        end;
    end;
end;

procedure TFRM_A003RHTC.CriaDir;
var cDir : String;
begin
  cDir := DIR_TXTTCE.InitialDir+'\'+'ENT'+
  DTM_A001RHTC.QRY_TBXENT.FieldByName('nCodTce').AsString+'\'+
  StrZero(DTM_A001RHTC.QRY_TBL_P.FieldByName('nMesPgto').AsInteger,2)+
  StrZero(DTM_A001RHTC.QRY_TBL_P.FieldByName('nAnoPgto').AsInteger,4);
  if not DirectoryExists(cDir) then
    ForceDirectories(cDir);
  DIR_TXTTCE.InitialDir := cDir;
  DIR_TXTTCE.Text := cDir;
end;


procedure TFRM_A003RHTC.GravaTabelas(var oQry : TOraQuery; cArqTxt : String; var oTxtFile : TextFile; nPosicao : Integer);
var cDados : String;
    nCampos : Integer;
begin
  if FileExists(cLocalDir+'\'+cArqTxt) then
     DeleteFile(cLocalDir+'\'+cArqTxt);
  AssignFile(oTxtFile, cLocalDir+'\'+cArqTxt);
//  if oQry.Name = 'QRY_AMPLOTACAO' then
//    begin
//      oQry.Close;
//      oQry.SQL.Add(' order by NIDLOTAREC');
//      oQry.Open;
//    end;
  oQry.First;
  InsereSituacao('Exportando...',nPosicao);
  while not oQry.Eof do
    begin
      cDados := '';
      for nCampos := 0 to oQry.Fields.Count - 1 do
        begin
          if oQry.Fields.Fields[nCampos].FieldName <> 'NIDCADTCE' then
            begin
              if cDados <> '' then
                cDados := cDados + '|';
              cDados := cDados + oQry.Fields.Fields[nCampos].AsString;
            end;
        end;
      GravaTxt(oTxtFile,cArqTxt,cDados);
      oQry.Next;
    end;
 if FileExists(cLocalDir+'\'+cArqTxt) then
    CloseFile(oTxtFile);
 InsereSituacao('Exportado...',nPosicao);
end;

procedure TFRM_A003RHTC.GravaTabLotacao(var oQry : TOraQuery; cArqTxt : String; var oTxtFile : TextFile; nPosicao : Integer);
var cDados : String;
    nCampos : Integer;
    lGravou : Boolean;
begin
  lGravou := false;
  if FileExists(cLocalDir+'\'+cArqTxt) then
     DeleteFile(cLocalDir+'\'+cArqTxt);
  AssignFile(oTxtFile, cLocalDir+'\'+cArqTxt);
  oQry.Close;
  oQry.DeleteWhere;
  oQry.AddWhere('nidcadtce = '+IntToStr(nNumImporta));
  oQry.AddWhere('nidlotarec = '+DTM_A001RHTC.QRY_TBXENT.FieldByName('nCodTce').AsString);
  oQry.Open;
  oQry.First;
  InsereSituacao('Exportando...',nPosicao);
  while not oQry.Eof do
    begin
      lGravou := true;
      cDados := '';
      for nCampos := 0 to oQry.Fields.Count - 1 do
        begin
          if oQry.Fields.Fields[nCampos].FieldName <> 'NIDCADTCE' then
            begin
              if cDados <> '' then
                cDados := cDados + '|';
              cDados := cDados + oQry.Fields.Fields[nCampos].AsString;
            end;
        end;
      GravaTxt(oTxtFile,cArqTxt,cDados);
      oQry.Next;
    end;
  oQry.Close;
  oQry.DeleteWhere;
  oQry.AddWhere('nidcadtce = '+IntToStr(nNumImporta));
  oQry.AddWhere('nidlotarec <> '+DTM_A001RHTC.QRY_TBXENT.FieldByName('nCodTce').AsString);
  oQry.Open;
  oQry.First;
  InsereSituacao('Exportando...',nPosicao);
  while not oQry.Eof do
    begin
      lGravou := true;
      cDados := '';
      for nCampos := 0 to oQry.Fields.Count - 1 do
        begin
          if oQry.Fields.Fields[nCampos].FieldName <> 'NIDCADTCE' then
            begin
              if cDados <> '' then
                cDados := cDados + '|';
              cDados := cDados + oQry.Fields.Fields[nCampos].AsString;
            end;
        end;
      GravaTxt(oTxtFile,cArqTxt,cDados);
      oQry.Next;
    end;
  if lGravou then
   if FileExists(cLocalDir+'\'+cArqTxt) then
      CloseFile(oTxtFile);
  InsereSituacao('Exportado...',nPosicao);
end;


procedure TFRM_A003RHTC.InsereSituacao(cSitua : String; noItem : Integer);
begin
  if lsv_tabelas.Items[noItem].SubItems.Count <> 0 then
    lsv_tabelas.Items[noItem].SubItems.Strings[0] := cSitua
  else lsv_tabelas.Items[noItem].SubItems.Add(cSitua);
  Application.ProcessMessages;
end;

procedure TFRM_A003RHTC.LimpaSituacao;
var nQtSitua : Integer;
begin
  for nQtSitua := lsv_tabelas.Items.count -1 downto 0 do
    begin
      if lsv_tabelas.Items[nQtSitua].SubItems.Count <> 0 then
         lsv_tabelas.Items[nQtSitua].SubItems.Strings[0] := '';
      Application.ProcessMessages;
    end;
end;

procedure TFRM_A003RHTC.Historico;
var nRegistroImp : String;
begin
  DTM_A001RHTC.QRY_TAGTXT.Insert;
  DTM_A001RHTC.QRY_TAGTXT.FieldByName('NIDTAGTXT').AsInteger := 0;
  DTM_A001RHTC.QRY_TAGTXT.FieldByName('NIDCADTCE').AsInteger := nNumImporta;
  DTM_A001RHTC.QRY_TAGTXT.FieldByName('DDTENVIO').AsDateTime := Now;
  DTM_A001RHTC.QRY_TAGTXT.FieldByName('CUSUARIO').AsString := cNomeUsuario;
  DTM_A001RHTC.QRY_TAGTXT.Post;
  nRegistroImp := DTM_A001RHTC.QRY_CADTCE.FieldByName('DAT_CHAVE').AsString;
  DTM_A001RHTC.QRY_CADTCE.Refresh;
  DTM_A001RHTC.QRY_CADTCE.Locate('DAT_CHAVE',nRegistroImp,[]);
end;


procedure TFRM_A003RHTC.TabQuery(lRetorno : Boolean);
var nTab : integer;
begin
    for nTab:=0 to DTM_A001RHTC.ComponentCount-1 do
      begin
        if (DTM_A001RHTC.Components[nTab] is TOraQuery)  and
           (Copy(DTM_A001RHTC.Components[nTab].Name,1,7) = 'QRY_AMP') then
          with TOraQuery(DTM_A001RHTC.Components[nTab])do
            begin
               Close;
               DeleteWhere;
               if not lRetorno then
                 AddWhere('nidcadtce = '+IntToStr(nNumImporta));
//                 SQL.Add(' where nidcadtce = '+IntToStr(nNumImporta))
               Open;
            end;
      end;
end;


procedure TFRM_A003RHTC.LKP_MESANOExit(Sender: TObject);
begin
  nNumImporta := DTM_A001RHTC.QRY_CADTCE.FieldByName('NIDCADTCE').AsInteger;
  TabQuery(false);
end;


procedure TFRM_A003RHTC.BTN_CANCELARClick(Sender: TObject);
begin
  lCancelaExp := true;
end;

function TFRM_A003RHTC.ParaExp:Boolean;
begin
  Result := false;
  Application.ProcessMessages;
  if lCancelaExp then
    begin
      MessageDlg('Processamento Cancelado!!',mtInformation,[mbOk],0);
      DMControle.Conexao.Rollback;
      LimpaSituacao;
      lCancelaExp := false;
      Result := true;
    end;
end;
procedure TFRM_A003RHTC.LKP_MESANOChange(Sender: TObject);
begin
  nNumImporta := DTM_A001RHTC.QRY_CADTCE.FieldByName('NIDCADTCE').AsInteger;
  TabQuery(false);
end;

end.


