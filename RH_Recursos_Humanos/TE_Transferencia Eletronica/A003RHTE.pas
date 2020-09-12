unit A003RHTE;

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
  LMDSpeedButton, LMDFill, Gauges, ppComm, ppRelatv, ppProd, ppClass,
  ppReport, ppVar, ppCtrls, ppPrnabl, ppBands, ppCache, ppStrtch, ppSubRpt ;

type
  TFRM_A003RHTE = class(TForm)
    LMDSimplePanel1: TLMDSimplePanel;
    LMDPanelFill1: TLMDPanelFill;
    DBG_LANCTO: TDBGrid;
    LMDPanelFill2: TLMDPanelFill;
    DBG_ERROS: TDBGrid;
    BTN_PRIMEIROREG: TSpeedButton;
    Btn_Retroceder1: TSpeedButton;
    Btn_UltimoReg: TSpeedButton;
    Btn_Avancar1: TSpeedButton;
    Btn_UltimoReg1: TSpeedButton;
    Btn_Avancar2: TSpeedButton;
    Btn_Retroceder2: TSpeedButton;
    Btn_PrimeiroReg1: TSpeedButton;
    Report: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    Shp_Titul: TppShape;
    Db_Razao: TppDBText;
    Lbl_Pag: TppLabel;
    Var_NumPag: TppSystemVariable;
    Lbl_Aplic: TppLabel;
    Lbl_Data: TppLabel;
    ppSystemVariable2: TppSystemVariable;
    Lbl_Hora: TppLabel;
    ppSystemVariable3: TppSystemVariable;
    Lbl_RelTiul: TppLabel;
    Lbl_TitOpc: TppLabel;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppLabel10: TppLabel;
    ppLabel12: TppLabel;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppDBText9: TppDBText;
    ppDBText10: TppDBText;
    ppLabel9: TppLabel;
    ppSubReport1: TppSubReport;
    ppChildReport1: TppChildReport;
    ppTitleBand1: TppTitleBand;
    ppDetailBand2: TppDetailBand;
    ppSummaryBand1: TppSummaryBand;
    ppDBText11: TppDBText;
    ppLabel11: TppLabel;
    ppDBText12: TppDBText;
    ppLabel4: TppLabel;
    ppDBText4: TppDBText;
    Panel2: TPanel;
    BTN_SAIR: TSpeedButton;
    BTN_IMPRIMIR: TSpeedButton;
    procedure BTN_SAIRClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure Btn_Avancar1Click(Sender: TObject);
    procedure Btn_Retroceder1Click(Sender: TObject);
    procedure Btn_UltimoRegClick(Sender: TObject);
    procedure BTN_PRIMEIROREGClick(Sender: TObject);
    procedure Btn_PrimeiroReg1Click(Sender: TObject);
    procedure Btn_Retroceder2Click(Sender: TObject);
    procedure Btn_Avancar2Click(Sender: TObject);
    procedure Btn_UltimoReg1Click(Sender: TObject);
    procedure DBG_LANCTOMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure DBG_LANCTODblClick(Sender: TObject);
    procedure BTN_IMPRIMIRClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    cTipoDetalhe : String;
    nMesRef : Integer;
    nAnoRef : Integer;
  end;

var
  FRM_A003RHTE: TFRM_A003RHTE;

implementation

uses A001RHTE, MPLCtrl, UVariaveis, CtrlForms, D003RHTE, D005RHTE, A005RHTE ;

{$R *.DFM}

procedure TFRM_A003RHTE.BTN_SAIRClick(Sender: TObject);
begin
   close ;
end;

procedure TFRM_A003RHTE.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action:= oControlForms.Saidas(Self,[DTM_A003RHTE],DTM_A003RHTE.QRY_062);
end;

procedure TFRM_A003RHTE.FormShow(Sender: TObject);
begin
  if Acesso(nMatricula,'A003RHTE',DTM_A003RHTE) then
  close;

  Caption := 'Detalhes de ';

  if Trim(cTipoDetalhe) = '' then
    begin
      Caption := Caption + 'Não Enviados';
      DTM_A003RHTE.QRY_062.Close;
      DTM_A003RHTE.QRY_062.SQL.Clear;
      DTM_A003RHTE.QRY_062.SQL.Text :=
      'select nidcadrem,cseunro,ncodfun,cnomfun,' +
      'ctiporem,nbcopgt,nagepgt,nctapgt||'+QuotedStr('-') + '||cdigcta as DAT_nctapgt,nvlrliq ' +
      'from cadrem where csituacao is null and nmesref = :nmesref and nanoref = :nanoref ' +
      ' order by cnomfun';
    end
  else
    if cTipoDetalhe = 'AEV' then
      Caption := Caption + 'A Enviar'
    else
      if cTipoDetalhe = 'AGR' then
        Caption := Caption + 'Aguardando Retorno do Banco'
      else
        if cTipoDetalhe = 'PAG' then
          Caption := Caption + 'Pagamento(s) Agendado(s)'
        else
          if cTipoDetalhe = 'PEF' then
            Caption := Caption + 'Pagamento(s) Efetuado(s)'
          else
            if cTipoDetalhe = 'PCC' then
              Caption := Caption + 'Pagamento(s) Cancelado(s)'
            else
              if cTipoDetalhe = 'ERR' then
                begin
                  Caption := Caption + 'Erros(s) de Processamento(s)';
                  DTM_A003RHTE.QRY_062.Close;
                  DTM_A003RHTE.QRY_062.SQL.Clear;
                  DTM_A003RHTE.QRY_062.SQL.Text :=
                  'select nidcadrem,cseunro,ncodfun,cnomfun,' +
                  'ctiporem,nbcopgt,nagepgt,nctapgt||'+QuotedStr('-') + '||cdigcta as DAT_nctapgt,nvlrliq ' +
                  'from cadrem where cflagerro = :psituacao and nmesref = :nmesref and nanoref = :nanoref ' +
                  'order by cnomfun';
                end
              else
                Caption := Caption + 'Pagamento(s) Bloqueado(s)';

  if trim(cTipoDetalhe) <> '' then
    DTM_A003RHTE.QRY_062.ParamByName('psituacao').asString := cTipoDetalhe;


  DTM_A003RHTE.QRY_062.ParamByName('nmesref').asInteger := nMesRef;
  DTM_A003RHTE.QRY_062.ParamByName('nanoref').asInteger := nAnoRef;
  DTM_A003RHTE.QRY_062.Close;
  DTM_A003RHTE.QRY_062.open;
  FRM_A003RHTE.OnShow := nil;
 {é atribuido ao OnShow do Form o valor nil para que o mesmo seja executado apenas uma vez}
 {pelo fato que se outra aplicação for chamada pela tecla F3, e ao retornar da aplicação que foi chamada pela tecla}
 {o evento OnShow deste form não acontecerá, ou seja não será executado, para permanecer o mesmo status da aplicação}
 {quando o F3 foi chamado}
end;

procedure TFRM_A003RHTE.Btn_Avancar1Click(Sender: TObject);
begin
DTM_A003RHTE.DTS_062.DataSet.Next;
end;

procedure TFRM_A003RHTE.Btn_Retroceder1Click(Sender: TObject);
begin
DTM_A003RHTE.DTS_062.DataSet.Prior;
end;

procedure TFRM_A003RHTE.Btn_UltimoRegClick(Sender: TObject);
begin
  DTM_A003RHTE.DTS_062.DataSet.Last;
end;

procedure TFRM_A003RHTE.BTN_PRIMEIROREGClick(Sender: TObject);
begin
DTM_A003RHTE.DTS_062.DataSet.First;
end;

procedure TFRM_A003RHTE.Btn_PrimeiroReg1Click(Sender: TObject);
begin
DTM_A003RHTE.DTS_066.DataSet.First;
end;

procedure TFRM_A003RHTE.Btn_Retroceder2Click(Sender: TObject);
begin
DTM_A003RHTE.DTS_066.DataSet.Prior;
end;

procedure TFRM_A003RHTE.Btn_Avancar2Click(Sender: TObject);
begin
DTM_A003RHTE.DTS_066.DataSet.Next;
end;

procedure TFRM_A003RHTE.Btn_UltimoReg1Click(Sender: TObject);
begin
DTM_A003RHTE.DTS_066.DataSet.Last;
end;

procedure TFRM_A003RHTE.DBG_LANCTOMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
    if Button = mbRight then
      ChamaPesqGrid(DTM_A003RHTE.QRY_062,nil,'cnomfun','Nome do Funcionário');

end;

procedure TFRM_A003RHTE.DBG_LANCTODblClick(Sender: TObject);
begin
  Application.CreateForm(TDTM_A005RHTE,DTM_A005RHTE);
  Application.CreateForm(TFRM_A005RHTE,FRM_A005RHTE);
  FRM_A005RHTE.nIdCadrem :=  DBG_LANCTO.DataSource.DataSet.FieldByName('nidcadrem').asInteger;
  oControlForms.AtivaForm('FRM_A005RHTE',shModal,nil,false);
end;

procedure TFRM_A003RHTE.BTN_IMPRIMIRClick(Sender: TObject);
  var
    cMes : String;
begin
  with DTM_A003RHTE do
    begin
      if cTipoDetalhe = '' then
        begin
           QRY_062_01.Close;
           QRY_062_01.SQL.Clear;
           QRY_062_01.SQL.Add('select cadrem.nidcadrem,cadrem.cseunro,cadrem.cnossonro,cadrem.ncodfun,' +
             'InitCap(cadrem.cnomfun) as cnomfun, cadrem.nbcopgt,cadrem.nagepgt,cadrem.nctapgt||'+QuotedStr('-')+
             '||cadrem.cdigcta as dat_nctapgt,' +
             'cadrem.nvlrliq,cadrem.dprevpagto,cadrem.ddatapagto,InitCap(cadrem.cctlori) as cctlori,' +
             'InitCap(tbxori.cdescricao) as dat_origem,InitCap(tbxfpg.cdescricao) as dat_formapgto ' +
             'from cadrem, tbxori, tbxfpg ' +
             'where cadrem.cSituacao is null and ' +
             'nmesref = :nmesref and nanoref = :nanoref and ' +
             'tbxori.ccodori = cadrem.ccodori and ' +
             'tbxfpg.ncodnobco = cadrem.nformapgto ' +
             'order by cadrem.cnomfun ' );
           QRY_062_01.Open;
        end
      else
        if cTipoDetalhe = 'ERR' then
          begin
            QRY_062_01.Close;
            QRY_062_01.SQL.Clear;
            QRY_062_01.SQL.Add('select cadrem.nidcadrem,cadrem.cseunro,cadrem.cnossonro,cadrem.ncodfun,' +
             'InitCap(cadrem.cnomfun) as cnomfun, cadrem.nbcopgt,cadrem.nagepgt,cadrem.nctapgt||'+QuotedStr('-')+
             '||cadrem.cdigcta as dat_nctapgt,' +
             'cadrem.nvlrliq,cadrem.dprevpagto,cadrem.ddatapagto,InitCap(cadrem.cctlori) as cctlori,' +
             'InitCap(tbxori.cdescricao) as dat_origem,InitCap(tbxfpg.cdescricao) as dat_formapgto ' +
             'from cadrem, tbxori, tbxfpg ' +
             'where cadrem.cflagerro = :psituacao and ' +
             'nmesref = :nmesref and nanoref = :nanoref and ' +
             'tbxori.ccodori = cadrem.ccodori and ' +
             'tbxfpg.ncodnobco = cadrem.nformapgto '+
             'order by cadrem.cnomfun ' );
           QRY_062_01.Open;
          end;
      if cTipoDetalhe <> '' then
        QRY_062_01.ParamByName('psituacao').asString := cTipoDetalhe;

      QRY_062_01.ParamByName('nmesref').asInteger := nMesRef;
      QRY_062_01.ParamByName('nanoref').asInteger := nAnoRef;

      QRY_062_01.ExecSQL;

    if nMesRef = 13 then
      cMes := '1ª Parc 13º'
    else
      if nMesRef = 14 then
        cMes := '13º Salário'
      else
        cMes := UpperCase(LongMonthNames[nMesRef]);

    cMes := cMes + '/' + IntToStr(nAnoRef);

    Lbl_TitOpc.Caption := 'RELAÇÃO DE OCORRÊNCIAS DE '+ UpperCase(Copy(Caption, 13, length(Caption) - 12)) + ' - ' +
      cMes;

    Imprimir(Report,Qry_062_01 ,nil);
  end;
end;

end.




