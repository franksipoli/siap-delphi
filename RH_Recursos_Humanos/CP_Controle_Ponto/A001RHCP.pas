unit A001RHCP;

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
  OraScript, Gauges, LMDSimplePanel ;

type
  TFRM_A001RHCP = class(TForm)
    LMDGroupBox1: TLMDGroupBox;
    Panel14: TPanel;
    LMDGroupBox2: TLMDGroupBox;
    Label2: TLabel;
    EDF_ARQATUALI: TFilenameEdit;
    Panel2: TPanel;
    Panel17: TPanel;
    EDT_ARQNOME: TEdit;
    EDT_TAMANHO: TEdit;
    Panel18: TPanel;
    Panel19: TPanel;
    EDT_TOTREG: TEdit;
    Panel22: TPanel;
    EDT_DESTINO: TEdit;
    EDT_TOTPROC: TEdit;
    Panel25: TPanel;
    Panel26: TPanel;
    EDT_TOTCORRET: TEdit;
    EDT_TOTERRO: TEdit;
    Panel27: TPanel;
    LMDSimplePanel4: TLMDSimplePanel;
    Gag_Atu: TGauge;
    Panel16: TPanel;
    GRD_HISTCP: TDBGrid;
    Panel13: TPanel;
    Panel1: TPanel;
    Btn_Erro: TSpeedButton;
    Btn_Atualizar: TSpeedButton;
    Btn_CartPont: TSpeedButton;
    BTN_SAIR: TSpeedButton;
    Btn_Cancelar: TSpeedButton;
    GRD_HISTERR: TDBGrid;
    SpeedButton3: TSpeedButton;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton9: TSpeedButton;
    SpeedButton10: TSpeedButton;
    SpeedButton11: TSpeedButton;
    SpeedButton12: TSpeedButton;
    SpeedButton13: TSpeedButton;
    SpeedButton14: TSpeedButton;
    SpeedButton15: TSpeedButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure EDF_ARQATUALIAfterDialog(Sender: TObject; var Name: String;
      var Action: Boolean);
    procedure Btn_AtualizarClick(Sender: TObject);
    procedure BTN_SAIRClick(Sender: TObject);
    procedure Btn_CancelarClick(Sender: TObject);
    procedure Btn_ErroClick(Sender: TObject);
    procedure Btn_CartPontClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    lCancelar : Boolean;
    Arq : TextFile;
  end;

var
  FRM_A001RHCP: TFRM_A001RHCP;

implementation

uses MPLCtrl, D001RHCP, DMCTRL, A002RHCP, D002RHCP, MPLLib, CtrlForms,
  UVariaveis ;

{$R *.DFM}

procedure TFRM_A001RHCP.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 Action := oControlForms.Saidas(Sender,[DTM_A001RHCP],DTM_A001RHCP.DTS_005.DataSet);
end;

procedure TFRM_A001RHCP.FormShow(Sender: TObject);
begin
  Acesso(nMatricula,'A001RHCP',DTM_A001RHCP);
  Botoes(['Btn_Cancelar'],'FRM_A001RHCP',False);
  lCancelar := False;
  FRM_A001RHCP.OnShow := nil;
  EDF_ARQATUALI.InitialDir := DMControle.QRY_P.FieldByName('cPontoRem').asString;
 {é atribuido ao OnShow do Form o valor nil para que o mesmo seja executado apenas uma vez}
 {pelo fato que se outra aplicação for chamada pela tecla F3, e ao retornar da aplicação que foi chamada pela tecla}
 {o evento OnShow deste form não acontecerá, ou seja não será executado, para permanecer o mesmo status da aplicação}
 {quando o F3 foi chamado}
end;

procedure TFRM_A001RHCP.EDF_ARQATUALIAfterDialog(Sender: TObject;
  var Name: String; var Action: Boolean);
var
    cReg : String;
    nReg : Integer;
    Stream : TFileStream;
begin
   nReg:= 0;
   if Action then
     begin
       EDT_TOTPROC.Text := '00000000';
       EDT_TOTCORRET.Text := '00000000';
       EDT_TOTERRO.Text := '00000000';
       EDT_DESTINO.Clear;
       Stream := TFileStream.Create(Name,fmOpenRead or fmShareDenyWrite);
       EDT_TAMANHO.Text := IntToStr(stream.Size div 1024) + ' Kb';
       Stream.Free;
       AssignFile(Arq,Name);
       Reset(Arq);
       while not(Eof(Arq)) do
        begin
         Readln(Arq,cReg);
         nReg := nReg+1;
        end;
       Gag_Atu.MaxValue := nReg;
       EDT_ARQNOME.Text := ExtractFileName(Name);
       EDT_TOTREG.Text := StrZero(nReg,8);
       Reset(Arq);
      // CloseFile(Arq);
     end;

end;

procedure TFRM_A001RHCP.Btn_AtualizarClick(Sender: TObject);
var
  Reg, cMov, cHora, cRelogio, cFlag, cNmNew : String;
  dData : TDateTime ;
  lErro : Boolean;
  nMat, nReg, nidServidor, nIdHist : Integer;
//  oReg : TBookmark;
  Stream : TFileStream;

begin
  lErro := false;
  if Trim(EDF_ARQATUALI.Text) = '' then
    begin
      MessageDlg('Primeiro selecione um arquivo.',mtInformation,[mbOk],0);
      EDF_ARQATUALI.SetFocus;
      exit;
    end;
 // AssignFile(Arq,EDF_ARQATUALI.FileName);
  Reset(Arq);
  Botoes(['Btn_Cancelar'],'FRM_A001RHCP',true);
  nReg := 0;
  DMControle.Conexao.StartTransaction;
  try
    with DTM_A001RHCP do
      begin
        if QRY_006.Locate('nMatricula',nMatricula,[]) then
          nidServidor := QRY_006.FieldByName('nidCadSev').value;
        //inseri registro no dataset cadacp
        DBGenerica(DTS_007,'Conexao',1,0);
        DTS_007.DataSet.FieldByName('nidCadAcp').value := 00000;
        DTS_007.DataSet.FieldByName('nidCadSev').Value := nidServidor;
        DTS_007.DataSet.FieldByName('cNomeArqui').AsString := 'Gerando';
        DTS_007.DataSet.FieldByName('dDataAtu').AsDateTime := Date;
        DTS_007.DataSet.FieldByName('cHoraAtu').AsString := '00:00';
        DTS_007.DataSet.FieldByName('nErro').Value := 00000;
        //grava os dados no dataset cadacp
        DBGenerica(DTS_007,'Conexao',4,1);
//        oReg := DTS_007.DataSet.GetBookmark;
        DTS_007.DataSet.Refresh;
        DTS_007.DataSet.Locate('cNomeArqui','Gerando',[]);
        nIdHist := DTS_007.DataSet.FieldByName('nidCadAcp').value;

//        DTS_007.DataSet.GotoBookmark(OReg);

       // DTS_008.DataSet.Refresh;
      end;
    while not (Eof(Arq)) do
      begin
        nReg := nReg +1;
        if nReg = 50 then
          begin
            Application.ProcessMessages;
            nReg := 0;
            if lCancelar then
              break;
          end;
        Readln(Arq,Reg);
        if (Reg[4] <> ' ') or (Reg[13] <> ' ')or
           (Reg[19] <> ' ') or (Reg[25] <> ' ') then
          begin
            lErro := true;
            with DTM_A001RHCP do
                begin
                  EDT_TOTERRO.Text := StrZero((StrToInt(EDT_TOTERRO.Text)+1),8);
                  //iseri registro no dataset cadecp
                  DBGenerica(DTS_008,'Conexao',1,0);
                  DTS_008.DataSet.FieldByName('nidCadEcp').value := 00000;
                  DTS_008.DataSet.FieldByName('nidCadAcp').value := nIdHist;
                  DTS_008.DataSet.FieldByName('cNomeArqui').asString := 'Gerando';
                  DTS_008.DataSet.FieldByName('cRegerro').AsString := Reg;
                  DTS_008.DataSet.FieldByName('nLinerro').Value := Gag_Atu.Progress + 1;
                  //grava os dados no dataset cadecp
                  DBGenerica(DTS_008,'Conexao',4,1);
                end;
          end
        else
          begin
            try
              cMov := Copy(Reg,1,3);
              Delete(Reg,1,4);
              dData := StrToDate(Copy(Reg,1,Pos(' ',Reg)-1));
              Delete(Reg,1,Pos(' ',Reg));
              cHora := Copy(Reg,1,Pos(' ',Reg)-1);
              Delete(Reg,1,Pos(' ',Reg));
              nMat := strtoint(Copy(Reg,1,Pos(' ',Reg)-1));
              Delete(Reg,1,Pos(' ',Reg));
              cRelogio := Copy(Reg,1,length(Reg));
            except
              lErro := true;
              with DTM_A001RHCP do
                begin
                  EDT_TOTERRO.Text := IntToStr(StrToInt(EDT_TOTERRO.Text)+1);
                  //inseri registro no dataset de cadecp
                  DBGenerica(DTS_008,'Conexao',1,0);
                  DTS_008.DataSet.FieldByName('nidCadEcp').value := 00000;
                  DTS_008.DataSet.FieldByName('nidCadAcp').value := DTS_007.DataSet.FieldByName('nidCadAcp').value;
                  DTS_008.DataSet.FieldByName('cNomeArqui').asString := DTS_007.DataSet.FieldByName('cNomeArqui').asString;
                  DTS_008.DataSet.FieldByName('cRegerro').AsString := Reg;
                  DTS_008.DataSet.FieldByName('nLinerro').Value := Gag_Atu.Progress + 1;
                  //grava registro no dataset de cadecp
                  DBGenerica(DTS_007,'Conexao',4,1);
                end;
            end;
          end;
        if not(lErro) then
          begin
            with DTM_A001RHCP do
              begin
                if not(QRY_005.Locate('cMovimen;dDataPto;cHora;nMatricula',
                                      VarArrayOf([cMov,dData,cHora,nMat]),[])) then
                  begin
                    if QRY_006.Locate('nMatricula',nMat,[]) then
                      cFlag := 'S'
                    else
                      cFlag := 'N';
                    //inseri registro no dataset do cadcpt
                    DBGenerica(DTS_005,'Conexao',1,0);
                    DTS_005.DataSet.FieldByName('nIdCadCpt').value := 0000;
                    DTS_005.DataSet.FieldByName('cMovimen').AsString := cMov;
                    DTS_005.DataSet.FieldByName('dDataPto').AsDateTime := dData;
                    DTS_005.DataSet.FieldByName('cHora').AsString := cHora;
                    DTS_005.DataSet.FieldByName('nMatricula').value := nMat;
                    DTS_005.DataSet.FieldByName('cRelogio').asString := cRelogio;
                    DTS_005.DataSet.FieldByName('cServidor').AsString := cFlag;
                 end;
              end;//final with
            end
          else
            lErro := false;
        Gag_Atu.Progress :=  Gag_Atu.Progress + 1;
        Gag_Atu.Refresh;
        EDT_TOTPROC.Text :=  StrZero(Gag_Atu.Progress,8);
        EDT_TOTPROC.Update;
      end;//final While

      if lCancelar then
         begin
           DMControle.Conexao.Rollback;
           Gag_Atu.Progress := 0;
           closefile(arq);// fecha o arquivo txt
         end
      else
        begin
          cNmNew := FormatDateTime('yyyymmdd',Date)+'_'+FormatDateTime('hhmm',time);
          // verifica se existe arquivo com o mesmo nome, caso sim o nome é mudado
          while FileExists(DMControle.QRY_P.FieldByName('cPontoRem').AsString+cNmNew+'.txt') do
            cNmNew := FormatDateTime('yyyymmdd',Date)+'_'+
            IntToStr(StrToInt(FormatDateTime('hhmm',time))+1);

          //copia o arquivo txt para o path padrão
          CopyFile(PChar(EDF_ARQATUALI.FileName),
                   Pchar(DMControle.QRY_P.FieldByName('cPontoRem').AsString+cNmNew+'.txt'),false);

          EDT_DESTINO.Text := cNmNew;

          with DTM_A001RHCP do
            begin
              if DTS_005.DataSet.State = dsInsert then
                //grava os dados no dataset na tabela cadcpt
                DBGenerica(DTS_005,'Conexao',4,1);

              if DTS_007.DataSet.Locate('nidCadAcp',nIdHist,[]) then
                begin
                  //edita registro no dataset da tabela cadacp
                  DBGenerica(DTS_007,'Conexao',2,0);
                  DTS_007.DataSet.FieldByName('cNomeArqui').AsString := cNmNew;
                  DTS_007.DataSet.FieldByName('cHoraAtu').AsString := TimeToStr(time);
                  DTS_007.DataSet.FieldByName('nErro').Value := StrToInt(EDT_TOTERRO.Text);
                  //grava dados no dataset da tabela cadacp
                  DBGenerica(DTS_007,'Conexao',4,1);
                end;
              // atualiza historico
            end; //final with

          // criação de um TFileStrean para pegar o tamanho do arquivo
          Stream := TFileStream.Create(DMControle.QRY_P.FieldByName('cPontoRem').AsString+cNmNew+'.txt',
                                       fmOpenRead  or fmShareDenyWrite);
          Stream.Free;
          EDT_TOTCORRET.Text := StrZero((StrToInt(EDT_TOTPROC.Text))-(StrToInt(EDT_TOTERRO.Text)),8);
          closefile(arq);// fecha o arquivo txt
          DeleteFile(PChar(EDF_ARQATUALI.FileName)); //deleta o arquivo q o relogio gerou

          DMControle.Conexao.Commit;//atualiza banco de dados,fecha transação

          MessageDlg('Os Dados foram atualizados com sucesso!',mtInformation,[mbOk],0);

          EDF_ARQATUALI.Clear;
          EDT_ARQNOME.Clear;
        end;
  except
    // fecha transação, e retorna as tabelas
    //com os mesmos registros que estavam antes de começar a atualização
    DMControle.Conexao.Rollback;
    MessageDlg('Não foi possível atualizar os Dados!',mtError,[mbOk],0);
  end;
  DTM_A001RHCP.DTS_008.DataSet.Refresh;
  DTM_A001RHCP.DTS_007.DataSet.Refresh;
  lCancelar := false;
  Gag_Atu.Progress := 0;
  Botoes(['Btn_Cancelar'],'FRM_A001RHCP',false);
end;

procedure TFRM_A001RHCP.BTN_SAIRClick(Sender: TObject);
begin
    close;
end;

procedure TFRM_A001RHCP.Btn_CancelarClick(Sender: TObject);
begin
  lCancelar := true;
  EDF_ARQATUALI.Text := '';
  EDT_ARQNOME.Text := '';
  EDT_DESTINO.Text := '';
  EDT_TAMANHO.Text := '';
  EDT_TOTREG.Text := '';
  EDT_TOTCORRET.Text := '00000000';
  EDT_TOTERRO.Text := '00000000';
  EDT_TOTPROC.Text := '00000000';

end;

procedure TFRM_A001RHCP.Btn_ErroClick(Sender: TObject);
begin
  RelCadastro(DTM_A001RHCP.Qry_008,'Relatório de Erros');
end;

procedure TFRM_A001RHCP.Btn_CartPontClick(Sender: TObject);
begin
  oControlForms.AtivaForm('FRM_A002RHCP',shModal,nil);
end;

end.




