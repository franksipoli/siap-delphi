//inicio 22/06/2004
unit A002RHTE;

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
  LMDSpeedButton, LMDFill, Gauges ;

type
  TFRM_A002RHTE = class(TForm)
    DelSysMenuItems1: TDelSysMenuItems;
    LMDSimplePanel1: TLMDSimplePanel;
    GAU_PASTAS: TGauge;
    GAU_REGS: TGauge;
    LBL_IMPORTA: TLabel;
    BTN_IMPORTAR: TBitBtn;
    BTN_SAIR: TBitBtn;
    procedure BTN_SAIRClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BTN_IMPORTARClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRM_A002RHTE: TFRM_A002RHTE;

implementation

uses A001RHTE, D002RHTE, DMCTRL, MPLCtrl, UVariaveis, CtrlForms ;

{$R *.DFM}

procedure TFRM_A002RHTE.BTN_SAIRClick(Sender: TObject);
begin
   close ;
end;

procedure TFRM_A002RHTE.FormClose(Sender: TObject; var Action: TCloseAction);
begin
   Action:= oControlForms.Saidas(Self,[DTM_A002RHTE],DTM_A002RHTE.QRY_062);
end;

procedure TFRM_A002RHTE.BTN_IMPORTARClick(Sender: TObject);
  var
    i : integer;
    ListPath : TStringList;
    cmesref : String;
begin
  BTN_IMPORTAR.Enabled := false;
  BTN_SAIR.Enabled := false;

  ListPath := TStringList.Create;
  ListPath.Add('');
  ListPath.Add('CLT');
  ListPath.Add('PROF');
  ListPath.Add('SELETIVO');
//  ListPath.Add('INATIVOS');
//  ListPath.Add('FUN_PENS');
  ListPath.Add('PENSIONI');
  ListPath.Add('PENSIJUD');
//  ListPath.Add('clt\compl04');
//  ListPath.Add('prof\compl04');
//  ListPath.Add('CLT\compl10');
//  ListPath.Add('CLT\compl0705');
//  ListPath.Add('CLT\compl09');

//  ListPath.Add('CLT\Comp1305');
//  ListPath.Add('PROF\Comp1305');

//  ListPath.Add('CLT\Comp0106');
//  ListPath.Add('SELETIVO\Comp0106');


  with DTM_A002RHTE do
    begin
      for i:= 1 to 2 do
//      for i:= 1 to 5 do
//      for i:= 1 to 1 do
        begin
          if not(Session.IsAlias(IntToStr(i))) then
           Session.AddStandardAlias(IntToStr(i),'n:\fp\'+ListPath.Strings[i],'dBASE');

          LBL_IMPORTA.Caption := '';
          case i of
//             1 : LBL_IMPORTA.Caption := 'COMPLEMENTAR';
//            1 : LBL_IMPORTA.Caption := 'PROPRIO';
//            2 : LBL_IMPORTA.Caption := 'FUNDEF';
//            3 : LBL_IMPORTA.Caption := 'SELETIVOS';
//            4 : LBL_IMPORTA.Caption := 'BENEFICIO SOCIAL';
//            5 : LBL_IMPORTA.Caption := 'PENSÃO JUDICIAL';
//            4 : LBL_IMPORTA.Caption := 'INATIVOS';
//            5 : LBL_IMPORTA.Caption := 'PENSAO-FPM';
//            6 : LBL_IMPORTA.Caption := 'BENEFICIO SOCIAL';
//            7 : LBL_IMPORTA.Caption := 'PENSÃO JUDICIAL';
            1 : LBL_IMPORTA.Caption := 'INATIVOS';
//            1 : LBL_IMPORTA.Caption := 'COMPLEMENTAR PRÓPRIO';
//            2 : LBL_IMPORTA.Caption := 'COMPLEMENTAR SELETIVOS';
//            2 : LBL_IMPORTA.Caption := 'COMPLEMENTAR PROF';
            2 : LBL_IMPORTA.Caption := 'FUN-PENS';
          end;

          QRY_PAGTO.Close;
          QRY_PAGTO.DatabaseName := IntToStr(i);
          GAU_PASTAS.Progress := i;
          QRY_PAGTO.Open;
          GAU_REGS.Progress := 0;
          GAU_REGS.MaxValue := QRY_PAGTO.RecordCount;
          QRY_PAGTO.First;

          FRM_A002RHTE.Repaint;

          DMControle.Conexao.StartTransaction;
          try

            while not(QRY_PAGTO.Eof) do
              begin
                GAU_REGS.Progress := QRY_PAGTO.RecNo;
                cmesref := QRY_PAGTO.FieldByName('nmesref').asString;
                {2º PARCELA DO 13º SALARIO}
                if cmesref = '13' then
                  cmesref := '14';

                if QRY_062.Locate('cseunro',
                 QRY_PAGTO.FieldByName('nContr').asString+
                  QRY_PAGTO.FieldByName('nCodFun').DisplayText +
                  cmesref+
                  IntToStr(QRY_PAGTO.FieldByName('nanoref').asInteger + 2000),[]) then
                  begin
                     if (QRY_062.FieldByName('ctiporem').asString = 'P') and
                       ((QRY_062.FieldByName('csituacao').isNull) or (QRY_062.FieldByName('csituacao').asString = 'AEV')) then
                       //edita registro
                       DBGenerica(DTS_062,'Conexao',2,0)
                     else
                       begin
                         QRY_PAGTO.Next;
                         continue;
                       end;
                  end
                else
                  begin
                    //inclui registro
                    DBGenerica(DTS_062,'Conexao',1,0);
                    QRY_062.FieldByName('nidcadrem').asInteger := 0;
                    QRY_062.FieldByName('ctiporem').asString := 'P';
                  end;

                with QRY_062 do
                  begin
                    FieldByName('nmesref').asString := cmesref;
                    FieldByName('nanoref').asInteger := QRY_PAGTO.FieldByName('nanoref').asInteger + 2000;
                    FieldByName('ncodfun').asInteger := StrToInt(QRY_PAGTO.FieldByName('nContr').asString+
                      QRY_PAGTO.FieldByName('nCodFun').DisplayText);

                    FieldByName('cseunro').asString := QRY_PAGTO.FieldByName('nContr').asString+
                      QRY_PAGTO.FieldByName('nCodFun').DisplayText +
                      cmesref +
                      FieldByName('nanoref').asString;
                    FieldByName('cnomfun').asString := QRY_PAGTO.FieldByName('cnomfun').asString;
                    FieldByName('nnumcic').value := QRY_PAGTO.FieldByName('cnumcic').value;
                    FieldByName('nbcopgt').asInteger := QRY_PAGTO.FieldByName('nbcopgt').asInteger;
                    FieldByName('nagepgt').asInteger := QRY_PAGTO.FieldByName('nagepgt').asInteger;
                    FieldByName('ndigage').asInteger := QRY_PAGTO.FieldByName('ndigage').asInteger;
                    if QRY_PAGTO.FieldByName('nctapgt').asInteger = 0 then
                      begin
                        FieldByName('nctapgt').asInteger := 0;
                        FieldByName('cdigcta').asInteger := 0;
                      end
                    else
                      begin
                        FieldByName('nctapgt').asInteger := QRY_PAGTO.FieldByName('nctapgt').asInteger;
                        //StrToFloat(Copy(QRY_PAGTO.FieldByName('nctapgt').asString,1,
                          //length(QRY_PAGTO.FieldByName('nctapgt').asString)-1));
                        FieldByName('cdigcta').asString := QRY_PAGTO.FieldByName('cdigcta').asString;
                        //StrToInt(Copy(QRY_PAGTO.FieldByName('nctapgt').asString,
                        //length(QRY_PAGTO.FieldByName('nctapgt').asString),1));
                      end;

                    if QRY_PAGTO.FieldByName('ccodori').asString = '002' then
                      FieldByName('ccodori').asString := '001'
                    else
                      FieldByName('ccodori').asString := QRY_PAGTO.FieldByName('ccodori').asString;


                    if i > 2 then
                      FieldByName('cctlori').asString := LBL_IMPORTA.Caption
                    else
                     FieldByName('cctlori').asString := QRY_PAGTO.FieldByName('cctlori').asString;

                    FieldByName('nvlrliq').AsCurrency := QRY_PAGTO.FieldByName('nvlrliq').AsCurrency;
                    FieldByName('ntipopgto').asInteger := 30;
                    if (FieldByName('nbcopgt').asInteger = 0) and
                      (FieldByName('nagepgt').asInteger = 0) and
                      (FieldByName('nctapgt').asInteger = 0) then
                      begin
                       /// if (i = 4) or (i = 5) then
                          FieldByName('nformapgto').asInteger := 20 //IPG
                        //else
                        //FieldByName('nformapgto').asInteger := 10 //PMG
                      end
                    else
                      FieldByName('nformapgto').asInteger := 1;
                    FieldByName('cflagerro').asString :='   ';
                    FieldByName('ntipomovto').asInteger := 0;
                    //grava tabela de remessa
                    DBGenerica(DTS_062,'Conexao',4,1,nil,false);
                  end;

                QRY_PAGTO.Next;
              end;
            DMControle.Conexao.Commit;
          except
            on E : Exception do
              begin
                DMControle.Conexao.Rollback;
                MessageDlg('Erro na importação, processo interrompido.'+#13+
                   'Erro :' + E.Message,mtError,[mbOk],0);
                QRY_PAGTO.Close;
                close;

              end;
          end;
        end;
      BTN_IMPORTAR.Enabled := true;
      BTN_SAIR.Enabled := true;
    end;
end;

procedure TFRM_A002RHTE.FormShow(Sender: TObject);
begin
  if Acesso(nMatricula,'A002RHTE',DTM_A002RHTE) then
    close;

  FRM_A002RHTE.OnShow := nil;
 {é atribuido ao OnShow do Form o valor nil para que o mesmo seja executado apenas uma vez}
 {pelo fato que se outra aplicação for chamada pela tecla F3, e ao retornar da aplicação que foi chamada pela tecla}
 {o evento OnShow deste form não acontecerá, ou seja não será executado, para permanecer o mesmo status da aplicação}
 {quando o F3 foi chamado}
end;

end.




