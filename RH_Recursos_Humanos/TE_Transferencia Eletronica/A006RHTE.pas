unit A006RHTE;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  lmdcctrl, lmdctrl, StdCtrls, Mask, ToolEdit, Grids, DBGrids, RXDBCtrl,
  lmdstdcS, ExtCtrls, Buttons, ImgList, ComCtrls, lmdextcS, lmdeditb,
  lmdeditc, LMDEdit, RxLookup, DBCtrls, lmdbredt, RzTreeVw, RzListVw,
  lmdextcA, LMDShadowFill, LMDCustomPanelFill, LMDPanelFill,
  LMDGraphicControl, LMDBaseMeter, LMDCustomProgress, LMDProgress,
  LMDControl, LMDBaseControl, LMDBaseGraphicControl, LMDBaseLabel,
  LMDCustomSimpleLabel, LMDSimpleLabel, LMDCustomControl, LMDCustomPanel,
  LMDCustomBevelPanel, LMDCustomParentPanel, LMDCustomGroupBox, LMDGroupBox,
  Db, DBTables, AppEvnts, ActnList, LMDCustomComponent, LMDApplicationCtrl,
  LMDGlobalHotKey, LMDWndProcComponent, LMDMouseBaseCtrl,
  LMDMousePositioner, lmdformA, LMDCustomHint, LMDHint,
  LMDContainerComponent, LMDBaseDialog, LMDTipDlg, LMDCustomShapeHint,
  LMDMessageHint, RxDBComb, PageControlEx, Ora, MemDS, DBAccess, CurrEdit,
  OraScript, delmenu, DBClient, MConnect, SConnect,
  LMDSimplePanel, jpeg, LMDBaseGraphicButton, LMDCustomSpeedButton,
  LMDSpeedButton, LMDFill, Gauges, FileCtrl ;

type
  TPath = class
    cPath : String;
  public
    constructor Create(Path : String);  
  end;
  TFRM_A006RHTE = class(TForm)
    DelSysMenuItems1: TDelSysMenuItems;
    LMDSimplePanel1: TLMDSimplePanel;
    GAU_REG: TGauge;
    BTN_VALIDAR: TBitBtn;
    BTN_SAIR: TBitBtn;
    LSV_ARQ: TListView;
    FileList: TFileListBox;
    procedure BTN_SAIRClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure BTN_VALIDARClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure Validar;
  end;

var
  FRM_A006RHTE: TFRM_A006RHTE;

implementation

uses A001RHTE, MPLCtrl, CtrlForms, UVariaveis, D006RHTE, DMCTRL ;

{$R *.DFM}

procedure TFRM_A006RHTE.BTN_SAIRClick(Sender: TObject);
begin
   close ;
end;

procedure TFRM_A006RHTE.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:= oControlForms.Saidas(Self,[DTM_A006RHTE],DTM_A006RHTE.QRY_063);
end;

procedure TFRM_A006RHTE.FormShow(Sender: TObject);
  var
    i : integer;
    Item : TListItem;
begin
  if Acesso(nMatricula,'A006RHTE',DTM_A006RHTE) then
    close;

  with DTM_A006RHTE do
    begin
      QRY_063.First;
      while not(QRY_063.Eof) do
        begin
          FileList.Directory := QRY_063.FieldByName('cpasta').asString + '\retorno';
          FileList.Update;
          for i:=0 to FileList.Items.Count -1 do
            begin
              Item := LSV_ARQ.Items.Add;
              Item.Caption := QRY_063.FieldByName('ncodbco').asString;
              Item.SubItems.Add(FileList.Items.Strings[i]);
              Item.SubItems.Objects[0] := TPath.Create(FileList.Directory);
            end;
          QRY_063.Next;
        end;
    end;

  BTN_VALIDAR.Enabled := LSV_ARQ.Items.Count > 0;

  FRM_A006RHTE.OnShow := nil;
 {é atribuido ao OnShow do Form o valor nil para que o mesmo seja executado apenas uma vez}
 {pelo fato que se outra aplicação for chamada pela tecla F3, e ao retornar da aplicação que foi chamada pela tecla}
 {o evento OnShow deste form não acontecerá, ou seja não será executado, para permanecer o mesmo status da aplicação}
 {quando o F3 foi chamado}
end;

{ TPath }

constructor TPath.Create(Path: String);
begin
  inherited Create;
  cPath := Path; 
end;

procedure TFRM_A006RHTE.Validar;
 var
   Arq : TextFile;
   cArquivo : String;
   cArqBkp : String;
   i : integer;
   nTotReg : integer;
   cRegArq : String;
   cTipoReg : String;
   cHoraRet : String;
   cDataRet : String;
   cErro : String;
   cSeuNro : String;
   ListErro : TStringList;
   nErr : integer;
   nPos : Integer;
begin
   ListErro := TStringList.Create;
   DMControle.Conexao.StartTransaction;
   with DTM_A006RHTE do
     begin
       try
         for i:=0 to LSV_ARQ.Items.Count -1 do
           begin
             nTotReg := 0;
             cArquivo := TPath(LSV_ARQ.Items[i].SubItems.Objects[0]).cPath + '\'+
             LSV_ARQ.Items[i].SubItems[0];
             cArqBkp := TPath(LSV_ARQ.Items[i].SubItems.Objects[0]).cPath + '\Bkp\' +
             LSV_ARQ.Items[i].SubItems[0];
             LSV_ARQ.Items[i].SubItems.Add('Atualizando');
             FRM_A006RHTE.Repaint;
             AssignFile(Arq,cArquivo);
             Reset(Arq);
             //pega o total de registros do arquivos
             while not(Eof(Arq)) do
               begin
                 nTotReg := nTotReg + 1;
                 ReadLn(Arq,cRegArq);
               end;

             GAU_REG.Progress := 0;
             GAU_REG.MaxValue := nTotReg;

             Reset(Arq);

             //loop nos registro do arquivo
             //para validar as informações
             while not(Eof(Arq)) do
               begin

                 GAU_REG.Progress := GAU_REG.Progress + 1;
                 Readln(Arq,cRegArq);
                 cTipoReg := Copy(cRegArq,8,1);
                 if cTipoReg = '0' then
                   begin
                     cDataRet := Copy(cRegArq,144,2)+'/'+
                                 Copy(cRegArq,146,2)+'/'+
                                 Copy(cRegArq,148,4);

                     cHoraRet := Copy(cRegArq,152,6);
                   end
                 else
                   if cTipoReg <> '3' then
                     continue
                   else
                     begin
                       cErro := Copy(cRegArq,231,2);
                       if cErro = '' then
                         continue
                       else
                         begin
                           cSeuNro := Trim(Copy(cRegArq,74,20));
                           nPos := 231;
                           ListErro.Clear;

                           for nErr:=1 to 5 do
                             begin
                               if Copy(cRegArq,nPos,2) = '  ' then
                                 continue;
                               ListErro.Add(Copy(cRegArq,nPos,2));
                               nPos := nPos + 2;
                             end;
                           QRY_062.ParamByName('cseunro').asString := cSeuNro;
                           QRY_062.ExecSQL;
                           if QRY_062.RecordCount < 1 then
                             continue;
                           QRY_062.Edit;
                           if cErro = 'BD' then
                             begin
                               QRY_062.FieldByName('cnossonro').asString := Copy(cRegArq,135,15);
                               QRY_062.FieldByName('ddatapagto').asDateTime :=
                               StrToDate(Copy(cRegArq,155,2)+'/'+Copy(cRegArq,157,2)+'/'+Copy(cRegArq,159,4));
                               QRY_062.FieldByName('nvlrpago').asFloat := StrToFloat(Copy(cRegArq,163,15))/100;
                               QRY_062.FieldByName('nnrodoc').asString := Copy(cRegArq,198,6);
                               QRY_062.FieldByName('csituacao').asString := 'PAG';
                             end
                           else
                             if cErro = '00' then
                               QRY_062.FieldByName('csituacao').asString := 'PEF'
                             else
                               if cErro = 'CE' then
                                 QRY_062.FieldByName('csituacao').asString := 'PCC'
                               else
                                 if cErro = 'RJ' then
                                   begin
                                     QRY_062.FieldByName('cflagerro').asString := 'ERR';
                                     QRY_062.FieldByName('csituacao').asString := 'AEV';
                                   end;

                           QRY_062.FieldByName('cretorno').asString := LSV_ARQ.Items[i].SubItems[0];
                           QRY_062.FieldByName('ddataRet').AsDateTime := StrToDate(cDataRet);
                           QRY_062.FieldByName('choraret').AsString := cHoraRet;
                           QRY_062.Post;

                           for nErr:= 0 to ListErro.Count - 1 do
                             begin
                               PrepareQryTemp('select nidtbxerr from tbxerr where ccoderro = ' + QuotedStr(ListErro.Strings[nErr]));
                               QRY_065.Insert;
                               QRY_065.FieldByName('nidtagprc').asInteger := 0;
                               QRY_065.FieldByName('nidtbxerr').asInteger :=
                               DMControle.QryTemp.FieldByName('nidtbxerr').asInteger;
                               DMControle.QryTemp.Close;
                               QRY_065.FieldByName('nidcadrem').asInteger :=
                               QRY_062.FieldByName('nidcadrem').asInteger;
                               QRY_065.FieldByName('cretorno').asString :=
                               LSV_ARQ.Items[i].SubItems[0];
                               QRY_065.FieldByName('ddataret').asDateTime := StrToDate(cDataRet);
                               QRY_065.FieldByName('choraret').asString := cHoraRet;
                               QRY_065.Post;
                             end;

                         end;
                     end;

               end;//loop arquivo, tratamento das informações

             CloseFile(Arq);
             //move arquivo para area de bakup
             MoveFile(PChar(cArquivo),PChar(cArqBkp));
             LSV_ARQ.Items[i].SubItems[1] := 'Processado';
             FRM_A001RHTE.Repaint;
           end;
         DMControle.Conexao.Commit;
       except
         on E : Exception do
           begin
             DMControle.Conexao.Rollback;
             for nErr:=0 to LSV_ARQ.Items.Count - 1 do
               if FileExists(TPath(LSV_ARQ.Items[i].SubItems.Objects[0]).cPath + '\Bkp\' +
                             LSV_ARQ.Items[i].SubItems[0]) then
                 MoveFile(PChar(TPath(LSV_ARQ.Items[i].SubItems.Objects[0]).cPath+'\Bkp\'+LSV_ARQ.Items[i].SubItems[0]),
                     PChar(TPath(LSV_ARQ.Items[i].SubItems.Objects[0]).cPath+'\'+LSV_ARQ.Items[i].SubItems[0]));

             MessageDlg('Erro no processamento!' + #13 +
               'Erro :' + E.Message,mtError,[mbOk],0);

           end;

       end;
       BTN_VALIDAR.Enabled := false;
     end;
end;

procedure TFRM_A006RHTE.BTN_VALIDARClick(Sender: TObject);
begin
  Validar;
end;

end.




