unit A005AD;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  StdCtrls, Buttons, ppCache, ppDB, ppDBPipe, ppComm, ppRelatv, ppProd,
  ppClass, ppReport, LMDCustomControl, LMDCustomPanel, LMDCustomBevelPanel,
  LMDCustomParentPanel, LMDCustomPanelFill, LMDPanelFill, Grids, DBGrids,
  DBCtrls, Mask, ToolEdit, Db, Ora, MemDS, DBAccess, ppCtrls, jpeg,
  ppStrtch, ppRichTx, ppBands, ppPrnabl, ppVar, ExtCtrls,
  LMDCustomGroupBox, LMDGroupBox, LMDCustomButtonGroup,
  LMDCustomRadioGroup, LMDRadioGroup, ppMemo, DateUtil, VirtualTable;

type
  TFRM_A005AD = class(TForm)
    QRY_031: TOraQuery;
    DTS_031: TOraDataSource;
    Label2: TLabel;
    GRD_FORNEC: TDBGrid;
    LMDPanelFill5: TLMDPanelFill;
    Btn_Retroceder1: TSpeedButton;
    Btn_Avancar1: TSpeedButton;
    ReportCertFornec: TppReport;
    DBP_FORNEC: TppDBPipeline;
    Btn_Fechar: TBitBtn;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    LBL_CNPJ: TppLabel;
    LBL_INSCESTAT: TppLabel;
    LBL_INSMUNI: TppLabel;
    ppLabel13: TppLabel;
    ppLabel14: TppLabel;
    ppLabel15: TppLabel;
    ppLabel16: TppLabel;
    ppRichText1: TppRichText;
    ppLabel17: TppLabel;
    ppLabel18: TppLabel;
    ppLine1: TppLine;
    ppImage1: TppImage;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    DBT_cCpfCnpj: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    DBT_CINSEST: TppDBText;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppDBText9: TppDBText;
    DBT_CTELCOM: TppDBText;
    QRY_025: TOraQuery;
    DTS_025: TOraDataSource;
    DBP_CadJur: TppDBPipeline;
    DBP_Parametros: TppDBPipeline;
    QRY_P: TOraQuery;
    DTS_P: TOraDataSource;
    ppDBText3: TppDBText;
    ppDBText12: TppDBText;
    ppDBText13: TppDBText;
    ppDBText14: TppDBText;
    ppDBText15: TppDBText;
    QRY_031_01: TOraQuery;
    DTS_031_01: TOraDataSource;
    QRY_031_01CCPFCNPJ: TStringField;
    QRY_031_01CNOMEGRL: TStringField;
    QRY_031_01CPESSOAFJ: TFloatField;
    QRY_031_01NIDCADGRL: TFloatField;
    QRY_031_01DDTVALIDAD: TDateTimeField;
    Lbl_Emissao: TppLabel;
    MDT_VALIDADE: TDateEdit;
    ppDBMemo1: TppDBMemo;
    Btn_Gerar: TSpeedButton;
    Lbl_nCertifica: TppLabel;
    Lbl_DtValidade: TppLabel;
    QRY_031_01DDTEMISSAO: TDateTimeField;
    QRY_031_01CCERTIFICA: TStringField;
    GRD_TODFOR: TDBGrid;
    LMDPanelFill1: TLMDPanelFill;
    Btn_Retroceder2: TSpeedButton;
    Btn_Avancar2: TSpeedButton;
    RDB_TODOS: TRadioButton;
    RDB_VENCIDOS: TRadioButton;
    RDB_VENCE: TRadioButton;
    EDT_CNOMEGRL: TEdit;
    VTB_FORNEC: TVirtualTable;
    DTS_FORNEC: TOraDataSource;
    QRY_031CULTEMITID: TStringField;
    QRY_031CCERTIFICA: TStringField;
    QRY_031DDTVALIDAD: TDateTimeField;
    QRY_031DDTEMISSAO: TDateTimeField;
    QRY_031NIDCADFOR: TFloatField;
    QRY_031CNOMEGRL: TStringField;
    QRY_031NIDCADGRL: TFloatField;
    QRY_031CPESSOAFJ: TFloatField;
    QRY_031CATIVIDADE: TStringField;
    QRY_031LKP_LOGRADO: TStringField;
    QRY_031CNOMELOC: TStringField;
    QRY_031UFLOC: TStringField;
    QRY_031CCPFCNPJ: TStringField;
    QRY_031CRGIE: TStringField;
    QRY_031NCAPSOCIAL: TFloatField;
    QRY_031NCEP: TIntegerField;
    QRY_031CTELCOM: TStringField;
    Btn_Retirar: TSpeedButton;
    Label1: TLabel;
    LBL_CCERTIFICA: TLabel;
    ppDBText6: TppDBText;
    ppDBText10: TppDBText;
    ppDBText11: TppDBText;
    VTB_FORNECCCPFCNPJ: TStringField;
    VTB_FORNECCNOMEGRL: TStringField;
    VTB_FORNECLKP_logrado: TStringField;
    VTB_FORNECCCERTIFICA: TStringField;
    VTB_FORNECDDTVALIDAD: TDateTimeField;
    VTB_FORNECDDTEMISSAO: TDateTimeField;
    VTB_FORNECCNOMELOC: TStringField;
    VTB_FORNECUFLOC: TStringField;
    VTB_FORNECCRGIE: TStringField;
    VTB_FORNECNCAPSOCIAL: TIntegerField;
    VTB_FORNECNCEP: TIntegerField;
    VTB_FORNECCTELCOM: TStringField;
    VTB_FORNECCATIVIDADE: TStringField;
    VTB_FORNECCPESSOAFJ: TStringField;
    VTB_FORNECNIDCADGRL: TIntegerField;
    procedure DBT_cCpfCnpjPrint(Sender: TObject);
    procedure DBT_CTELCOMPrint(Sender: TObject);
    procedure Btn_Retroceder1Click(Sender: TObject);
    procedure Btn_Avancar1Click(Sender: TObject);
    procedure Btn_GerarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure Btn_FecharClick(Sender: TObject);
    procedure EDT_CNOMEGRLChange(Sender: TObject);
    procedure GRD_TODFORKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure GRD_FORNECDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure VTB_FORNECDDTEMISSAOValidate(Sender: TField);
    procedure GRD_FORNECColExit(Sender: TObject);
    procedure GRD_FORNECDblClick(Sender: TObject);
    procedure GRD_TODFORDblClick(Sender: TObject);
    procedure VTB_FORNECAfterInsert(DataSet: TDataSet);
    procedure Btn_Avancar2Click(Sender: TObject);
    procedure Btn_Retroceder2Click(Sender: TObject);
    procedure DTS_FORNECDataChange(Sender: TObject; Field: TField);
    procedure VTB_FORNECCCPFCNPJGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure RDB_TODOSClick(Sender: TObject);
    procedure RDB_VENCIDOSClick(Sender: TObject);
    procedure MDT_VALIDADEExit(Sender: TObject);
    procedure RDB_VENCEClick(Sender: TObject);
    procedure MDT_VALIDADEChange(Sender: TObject);
    procedure VTB_FORNECDDTVALIDADValidate(Sender: TField);
    procedure ppDBText1Print(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure AtualizaCertiEmitido;
  end;

var
  FRM_A005AD: TFRM_A005AD;
  ListaFornec : TStringList;
  cSql3101, cSql31 : String;
implementation

uses DMCTRL, MPLCtrl, MPLLib, UVariaveis;

{$R *.DFM}

procedure TFRM_A005AD.DBT_cCpfCnpjPrint(Sender: TObject);
begin
  if VTB_FORNEC.FieldByName('cpessoafj').asInteger = 1 then
    begin
      LBL_CNPJ.Caption := 'RG : ';
      DBT_cCpfCnpj.DataField := 'CRGIE';
      DBT_cCpfCnpj.DisplayFormat := '';
      LBL_INSCESTAT.Caption := 'CPF :';
      DBT_CINSEST.DataField := 'CCPFCNPJ';
      DBT_CINSEST.DisplayFormat := '999.999.999-99;0';
      LBL_INSMUNI.Visible := false;
    end
  else
    begin
      LBL_CNPJ.Caption := 'CNPJ : ';
      DBT_cCpfCnpj.DataField := 'CCPFCNPJ';
      LBL_INSCESTAT.Caption := 'INSCR.EST.:';
      DBT_CINSEST.DataField := 'CRGIE';
      DBT_CINSEST.DisplayFormat := '';
      DBT_cCpfCnpj.DisplayFormat := '99.999.999/9999-99;0';
      LBL_INSMUNI.Visible := true;
    end;
end;

procedure TFRM_A005AD.DBT_CTELCOMPrint(Sender: TObject);
begin
  DBT_CTELCOM.DisplayFormat := '';
  if Length(TRIM(DBT_CTELCOM.Text)) = 7 then
    DBT_CTELCOM.DisplayFormat := '000-0000;0'
  else
    DBT_CTELCOM.DisplayFormat := '0000-0000;0'
end;

procedure TFRM_A005AD.Btn_Retroceder1Click(Sender: TObject);
begin

  if DTS_031.DataSet.Active then
    //registro anterior
    DBGenerica(DTS_031,'Conexao',0,2);
end;

procedure TFRM_A005AD.Btn_Avancar1Click(Sender: TObject);
begin
  if DTS_031.DataSet.Active then
    //proximo registro
    DBGenerica(DTS_031,'Conexao',0,3);

end;

procedure TFRM_A005AD.Btn_GerarClick(Sender: TObject);
  var
    lAux : boolean;
    cMens : String;
    oLocal : TBookmark;
begin

  lAux := false;
  with VTB_FORNEC do
    begin
      try
        if State = dsEdit then
          begin
            UpdateRecord;
            Post;
          end;
        oLocal := VTB_FORNEC.GetBookmark;
        DisableControls;
        First;
        while not(VTB_FORNEC.Eof) do
          begin
            if trim(FieldByName('CCERTIFICA').AsString) = '' then
              begin
                lAux := true;
                cMens := 'número de certificado!';
              end
            else
              if FieldByName('DDTEMISSAO').isNull then
                begin
                  lAux := true;
                  cMens := 'data de emissão!';
                end;
            if lAux then
              begin
                MessageDlg('O fornecedor '+FieldByName('CNOMEGRL').asString + #13 +
                           'está sem ' + cMens, mtInformation, [mbOk], 0);
                Break;
              end;
            VTB_FORNEC.Next;
          end;

      finally
        if not(lAux) then
          GotoBookmark(oLocal);
        EnableControls;
      end;
      if not(lAux) then
        Imprimir(ReportCertFornec,QRY_031,nil);

    end;
end;

procedure TFRM_A005AD.FormCreate(Sender: TObject);
begin
  ListaFornec := TStringList.Create;
  cSql31 := QRY_031.SQL.Text;
  cSql3101 := QRY_031_01.SQL.Text;
  AtualizaCertiEmitido;
end;

procedure TFRM_A005AD.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := oControlForms.Saidas(Sender,[NIL],NIL);
end;

procedure TFRM_A005AD.FormShow(Sender: TObject);
begin
  if not(Acesso(nMatricula,'A005AD',NIL)) then
    close;
  QRY_031.Open;
  QRY_025.Open;
  VTB_FORNEC.Active := true;
  FRM_A005AD.OnShow := nil;
 {é atribuido ao OnShow do Form o valor nil para que o mesmo seja executado apenas uma vez}
 {pelo fato que se outra aplicação for chamada pela tecla F3, e ao retornar da aplicação que foi chamada pela tecla}
 {o evento OnShow deste form não acontecerá, ou seja não será executado, para permanecer o mesmo status da aplicação}
 {quando o F3 foi chamado}


end;

procedure TFRM_A005AD.Btn_FecharClick(Sender: TObject);
begin
  MDT_VALIDADE.CheckOnExit := false;
  MDT_VALIDADE.OnExit := nil;
  VTB_FORNECDDTVALIDAD.OnValidate := nil;
  close;
end;

procedure TFRM_A005AD.EDT_CNOMEGRLChange(Sender: TObject);
begin
 DTS_031.DataSet.Locate('CNOMEGRL',EDT_CNOMEGRL.Text,[loPartialKey]);
end;

procedure TFRM_A005AD.GRD_TODFORKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
 if (Shift = [ssCtrl]) and (Key = 46) Then
    KEY := 0 //não permite que seja deletado o registro
  else
    if (Key = 45) or (Key = 27) then
      Key := 0;
end;

procedure TFRM_A005AD.GRD_FORNECDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
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
   if Column.FieldName = 'DDATAVALID' then
     if Column.Field.AsDateTime < Now then
       TDBGrid(Sender).Canvas.Font.Color := clRed;

   TDBGrid(Sender).Canvas.FillRect(Rect);
   TDBGrid(Sender).DefaultDrawDataCell(Rect, Column.Field, State);
end;//TFRM_A001AD.DBG_DOCDrawColumnCell
procedure TFRM_A005AD.VTB_FORNECDDTEMISSAOValidate(Sender: TField);
begin
  if not(Sender.isNull) then
    VTB_FORNEC.FieldByName('DDTVALIDAD').value :=
    FormatDateTime('dd/mm/yyyy',IncYear(Sender.Value,1));
end;

procedure TFRM_A005AD.GRD_FORNECColExit(Sender: TObject);
  var
    oLocal : TBookmark;
    lAux : Boolean;
    cCertificado : String;
begin
 if (GRD_FORNEC.SelectedIndex = 1) and (VTB_FORNEC.State = dsEdit) then
   begin
     if trim(GRD_FORNEC.SelectedField.AsString) <> '' then
       begin
         try
           oLocal := VTB_FORNEC.GetBookmark;
           cCertificado := GRD_FORNEC.SelectedField.AsString;
           VTB_FORNEC.DisableControls;
           VTB_FORNEC.Filter := 'CCERTIFICA = ' + QuotedStr(cCertificado);
           VTB_FORNEC.Filtered := true;
           if VTB_FORNEC.RecordCount > 1 then
             lAux := true
           else
             begin
               PrepareQryTemp('select f.ccertifica, g.ccpfcnpj from Cadfor f, cadgrl g '+
                          'where g.nidcadgrl = f.nidcadgrl and f.ccertifica = ' + QuotedStr(cCertificado));
               lAux := (DMControle.QryTemp.RecordCount > 0) and (DMControle.QryTemp.FieldByName('CCPFCNPJ').asString <>
                        VTB_FORNEC.FieldByName('CCPFCNPJ').asString);

               DMControle.QryTemp.Close;
               DMControle.QryTemp.SQL.Clear;
             end;
         finally
           VTB_FORNEC.Filtered := false;
           VTB_FORNEC.GotoBookmark(oLocal);
           VTB_FORNEC.Edit;
           VTB_FORNEC.EnableControls;
           if lAux then
             begin
               MessageDlg('Este número de certificado já esta sendo usado por outro fornecedor!',mtInformation,
                          [mbOk],0);
               Abort;
             end;
         end;
       end;
   end;
end;

procedure TFRM_A005AD.GRD_FORNECDblClick(Sender: TObject);
begin
  if not(VTB_FORNEC.IsEmpty) then
    VTB_FORNEC.Delete;
end;

procedure TFRM_A005AD.GRD_TODFORDblClick(Sender: TObject);
begin
   try
     VTB_FORNEC.DisableControls;
     if not(VTB_FORNEC.Locate('CCPFCNPJ',DTS_031.DataSet.FieldByName('CCPFCNPJ').AsString,[])) then
       begin
         VTB_FORNEC.Tag := 1;
         VTB_FORNEC.Append;
         VTB_FORNEC.FieldByName('NIDCADGRL').asInteger :=
         DTS_031.DataSet.FieldByName('NIDCADGRL').asInteger;
         VTB_FORNEC.FieldByName('CCPFCNPJ').asString :=
         DTS_031.DataSet.FieldByName('CCPFCNPJ').asString;
         VTB_FORNEC.FieldByName('CNOMEGRL').asString :=
         DTS_031.DataSet.FieldByName('CNOMEGRL').asString;
         VTB_FORNEC.FieldByName('LKP_LOGRADO').asString :=
         DTS_031.DataSet.FieldByName('LKP_LOGRADO').asString;
         VTB_FORNEC.FieldByName('CCERTIFICA').asString :=
         DTS_031.DataSet.FieldByName('CCERTIFICA').asString;
         VTB_FORNEC.FieldByName('DDTEMISSAO').value :=
         DTS_031.DataSet.FieldByName('DDTEMISSAO').value;
         VTB_FORNEC.FieldByName('DDTVALIDAD').value :=
         DTS_031.DataSet.FieldByName('DDTVALIDAD').value;
         VTB_FORNEC.FieldByName('CNOMELOC').AsString :=
         DTS_031.DataSet.FieldByName('CNOMELOC').AsString;
         VTB_FORNEC.FieldByName('UFLOC').AsString :=
         DTS_031.DataSet.FieldByName('UFLOC').AsString;
         VTB_FORNEC.FieldByName('CRGIE').AsString :=
         DTS_031.DataSet.FieldByName('CRGIE').AsString;
         VTB_FORNEC.FieldByName('NCAPSOCIAL').AsInteger :=
         DTS_031.DataSet.FieldByName('NCAPSOCIAL').AsInteger;
         VTB_FORNEC.FieldByName('NCEP').AsInteger :=
         DTS_031.DataSet.FieldByName('NCEP').AsInteger;
         VTB_FORNEC.FieldByName('CTELCOM').AsString :=
         DTS_031.DataSet.FieldByName('CTELCOM').AsString;
         VTB_FORNEC.FieldByName('CATIVIDADE').AsString :=
         DTS_031.DataSet.FieldByName('CATIVIDADE').AsString;
         VTB_FORNEC.FieldByName('CPESSOAFJ').AsString :=
         DTS_031.DataSet.FieldByName('CPESSOAFJ').AsString;
         VTB_FORNEC.Post;
       end;
   finally
     VTB_FORNEC.Tag := 0;
     VTB_FORNEC.EnableControls;
   end;
end;

procedure TFRM_A005AD.VTB_FORNECAfterInsert(DataSet: TDataSet);
begin
  if VTB_FORNEC.Tag = 0 then
    VTB_FORNEC.Cancel;
end;

procedure TFRM_A005AD.AtualizaCertiEmitido;
begin
  PrepareQryTemp('select f.ccertifica, g.cnomegrl from cadfor f, cadgrl g where g.nidcadgrl = f.nidcadgrl and cultemitid = ' + QuotedStr('S'));
  LBL_CCERTIFICA.Caption := DMControle.QryTemp.FieldByName('ccertifica').DisplayText;
  LBL_CCERTIFICA.Hint := 'O último certificado foi emitido para o fornecedor:'+#13+
                         DMControle.QryTemp.FieldByName('cnomegrl').DisplayText;
  DMControle.QryTemp.Close;
  DMControle.QryTemp.SQL.Clear;
end;

procedure TFRM_A005AD.Btn_Avancar2Click(Sender: TObject);
begin
  //proximo registro da tabela virtual
  VTB_FORNEC.Next;
end;

procedure TFRM_A005AD.Btn_Retroceder2Click(Sender: TObject);
begin
  //registro anterior da tabela virtual
  VTB_FORNEC.Prior;
end;

procedure TFRM_A005AD.DTS_FORNECDataChange(Sender: TObject; Field: TField);
begin
  Btn_Gerar.Enabled := not(VTB_FORNEC.IsEmpty);
end;

procedure TFRM_A005AD.VTB_FORNECCCPFCNPJGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  if VTB_FORNEC.FieldByName('cpessoafj').asInteger = 1 then
    begin
      Text := FormatMaskText('999.999.999-99;0;*',Sender.AsString)
    end
  else
    Text := FormatMaskText('99.999.999/9999-99;0;*',Sender.AsString);
end;

procedure TFRM_A005AD.RDB_TODOSClick(Sender: TObject);
begin
  if RDB_TODOS.Checked then
    begin
      MDT_VALIDADE.Text := '';
      QRY_031.Filtered := false;
    end;
end;

procedure TFRM_A005AD.RDB_VENCIDOSClick(Sender: TObject);
begin
  if RDB_VENCIDOS.Checked then
    begin
      MDT_VALIDADE.Text := '';
      QRY_031.Filter := 'DDTVALIDAD < ' + QuotedStr(DateToStr(Now));
      QRY_031.Filtered := true;
    end;
end;

procedure TFRM_A005AD.MDT_VALIDADEExit(Sender: TObject);
begin

  if RDB_VENCE.Checked then
    begin
      if Trim(LimpaMask(MDT_VALIDADE.Text))='' then
        begin
          if QRY_031.Filtered then
            begin
              RDB_VENCIDOS.Checked := true;
              RDB_VENCIDOS.SetFocus;
            end
          else
            begin
              RDB_TODOS.Checked := true;
              RDB_TODOS.SetFocus;
            end;
        end
      else
        begin
          QRY_031.Filter := 'DDTVALIDAD = ' + QuotedStr(MDT_VALIDADE.Text);
          QRY_031.Filtered := true;
        end;

    end;

end;

procedure TFRM_A005AD.RDB_VENCEClick(Sender: TObject);
begin
    MDT_VALIDADE.SetFocus;
end;

procedure TFRM_A005AD.MDT_VALIDADEChange(Sender: TObject);
begin
  if MDT_VALIDADE.Focused then
    RDB_VENCE.Checked := true;
end;

procedure TFRM_A005AD.VTB_FORNECDDTVALIDADValidate(Sender: TField);
begin
  if not(Sender.IsNull) then
    if Sender.AsDateTime < VTB_FORNEC.FieldByName('DDTEMISSAO').AsDateTime then
      begin
        MessageDlg('Data de validade do certificado é menor que a data de emissão!',mtInformation,[mbOk],0);
        Abort;
      end
    else
      if Sender.AsDateTime = VTB_FORNEC.FieldByName('DDTEMISSAO').AsDateTime then
        begin
          MessageDlg('Data de validade do certificado é igual a data de emissão!',mtInformation,[mbOk],0);
          Abort;
        end;
end;

procedure TFRM_A005AD.ppDBText1Print(Sender: TObject);
  var
    oLocal : TBookmark;
begin
  if ReportCertFornec.DeviceType = 'Printer' then
    begin
      with QRY_031 do
        begin
          try
            oLocal := GetBookmark;
            DisableControls;
            Locate('CCPFCNPJ',VTB_FORNEC.FieldByName('CCPFCNPJ').AsString,[]);
            if (FieldByName('CCERTIFICA').asString <> VTB_FORNEC.FieldByName('CCERTIFICA').AsString) or
               (FieldByName('DDTEMISSAO').value <> VTB_FORNEC.FieldByName('DDTEMISSAO').value) or
               (FieldByName('DDTVALIDAD').value <> VTB_FORNEC.FieldByName('DDTVALIDAD').value) then
              begin
                //edita registro do dataset
                DBGenerica(DTS_031,'Conexao',2,0);
                if Trim(FieldByName('CCERTIFICA').asString) <> Trim(VTB_FORNEC.FieldByName('CCERTIFICA').AsString) then
                  begin
                    PrepareQryTemp('update cadfor set cultemitid = ' + QuotedStr('N') + ' where cultemitid = ' + QuotedStr('S'));
                    DMControle.QryTemp.close;
                    DMControle.QryTemp.SQL.Clear;
                    FieldByName('CCERTIFICA').asString :=
                    VTB_FORNEC.FieldByName('CCERTIFICA').AsString;
                    QRY_031.FieldByName('cultemitid').asString := 'S';
                  end;
                FieldByName('DDTEMISSAO').value :=
                VTB_FORNEC.FieldByName('DDTEMISSAO').value;
                FieldByName('DDTVALIDAD').value :=
                VTB_FORNEC.FieldByName('DDTVALIDAD').value;
                //grava os dados no dataset
                DBGenerica(DTS_031,'Conexao',4,1);
                AtualizaCertiEmitido;
              end;

          finally
            GotoBookmark(oLocal);
            EnableControls;
          end;
        end;
    end;
end;
end.
