{*******************************************************************************
 *                                                                             *
 *  Programador Leandro Ribas                                                  *
 *  04 de Abril de 2005, M P Lopes Sistemas de Informação LTDA.                *
 *  Aplicação para envio de protocolos, gerando a guia de tramitação           *
 *  automaticamente                                                            *
 *  Data de inicio : 04/04/2005                                                *
 *  Data da Finalização : 07/04/2005                                           *
 *                                                                "vamo nessa" *
 *******************************************************************************
}


unit A014ADPT;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  ExtCtrls, RxLookup, Buttons, LMDCustomPanelFill, LMDPanelFill, Grids,
  DBGrids, StdCtrls, LMDCustomControl, LMDCustomPanel, LMDCustomBevelPanel,
  LMDCustomParentPanel, LMDCustomGroupBox, LMDGroupBox, ImgList, ppDB,
  ppDBPipe, ppBands, ppVar, ppCtrls, ppReport, ppStrtch, ppSubRpt, RxGIF,
  ppPrnabl, ppClass, ppCache, ppComm, ppRelatv, ppProd, db, ppViewr, Mask,
  ToolEdit, MemDS, DBAccess, Ora;

type
  TFRM_A014ADPT = class(TForm)
    LMDGroupBox1: TLMDGroupBox;
    Label24: TLabel;
    DBG_REQ: TDBGrid;
    LMDPanelFill1: TLMDPanelFill;
    BTN_RETROCEDER1: TSpeedButton;
    BTN_AVANCAR1: TSpeedButton;
    BTN_MARCTODO: TSpeedButton;
    BTN_DESMARCA: TSpeedButton;
    DBL_DESTINO: TRxDBLookupCombo;
    Panel2: TPanel;
    BTN_IMPRIMIR: TSpeedButton;
    BTN_SAIR: TSpeedButton;
    Label1: TLabel;
    DBL_LOCAL: TRxDBLookupCombo;
    ImageList: TImageList;
    RPT_GTM: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    ppImage2: TppImage;
    ppShape5: TppShape;
    ppShape4: TppShape;
    ppShape2: TppShape;
    ppSubReport1: TppSubReport;
    ppChildReport1: TppChildReport;
    ppTitleBand1: TppTitleBand;
    ppDetailBand2: TppDetailBand;
    ppShape7: TppShape;
    ppShape1: TppShape;
    DBT_ASSUNTO: TppDBText;
    ppShape8: TppShape;
    DBT_PROT: TppDBText;
    ppLine6: TppLine;
    ppLine7: TppLine;
    DBT_FOLHAS: TppDBText;
    ppSummaryBand1: TppSummaryBand;
    ppShape11: TppShape;
    ppLine8: TppLine;
    ppShape12: TppShape;
    ppLine9: TppLine;
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
    ppLine4: TppLine;
    ppLine5: TppLine;
    ppImage1: TppImage;
    ppDBText1: TppDBText;
    IMG_LOGO: TppImage;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLine1: TppLine;
    ppLine2: TppLine;
    ppLabel4: TppLabel;
    ppShape3: TppShape;
    ppLine3: TppLine;
    ppLabel5: TppLabel;
    ppSystemVariable1: TppSystemVariable;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppShape6: TppShape;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    IMG_VIA: TppImage;
    ppLine11: TppLine;
    ppFooterBand1: TppFooterBand;
    DPP_DESTINO: TppDBPipeline;
    DPP_PROT: TppDBPipeline;
    ppLabel13: TppLabel;
    DBP_DESTINOS: TppDBPipeline;
    DBP_ORIGENS: TppDBPipeline;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    QRY_ATUADESTPROT: TOraQuery;
    BTN_ATUGTM: TSpeedButton;
    ppDBText5: TppDBText;
    DBP_P: TppDBPipeline;
    procedure BTN_SAIRClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure DBG_REQDrawColumnCell(Sender: TObject; const Rect: TRect;
      DataCol: Integer; Column: TColumn; State: TGridDrawState);
    procedure DBG_REQCellClick(Column: TColumn);
    procedure BTN_AVANCAR1Click(Sender: TObject);
    procedure BTN_RETROCEDER1Click(Sender: TObject);
    procedure BTN_MARCTODOClick(Sender: TObject);
    procedure DBL_DESTINOChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure BTN_IMPRIMIRClick(Sender: TObject);
    procedure ppSummaryBand1BeforeGenerate(Sender: TObject);
    procedure DBT_ASSUNTOGetText(Sender: TObject; var Text: String);
    procedure IMG_VIAPrint(Sender: TObject);
    procedure ppLine11Print(Sender: TObject);
    procedure DBL_LOCALChange(Sender: TObject);
    procedure RPT_GTMBeforePrint(Sender: TObject);
    procedure RPT_GTMPreviewFormCreate(Sender: TObject);
    procedure RPT_GTMPrintingComplete(Sender: TObject);
    procedure DBG_REQKeyPress(Sender: TObject; var Key: Char);
    procedure DBG_REQColEnter(Sender: TObject);
    procedure BTN_ATUGTMClick(Sender: TObject);
    procedure DBG_REQMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
  private
    { Private declarations }
  public
    { Public declarations }
    //indica quandos protocolos estão selecionados para impressão
    nCountImpri : Integer;
    //indica que a chamada veio da aplicação de requerimento
    lRequer : Boolean;
    //filtra os protocolos de um determinado grupo
    //controle para geração da guia de tramitação
    procedure FiltraRequeTmp(DataSet: TDataSet);
    //executa a pesquisa que retorna os protocolos
    procedure ExecutePesp;
  end;

var
  FRM_A014ADPT: TFRM_A014ADPT;

implementation

uses D014ADPT, UVariaveis, MPLCtrl, DMCTRL, CtrlForms ;

{$R *.DFM}

{------------------------------------------------------------------------------}

//filtra os protocolos de um determinado grupo
//controle para geração da guia de tramitação
procedure TFRM_A014ADPT.FiltraRequeTmp(DataSet: TDataSet);
begin
  with DTM_A014ADPT do
    begin
      //fecha a tabela temporaria
      VTB_PROTOCOLO.Active := false;
      //filtra somente os protocolos de um grupo
      VTB_PROTOCOLO.Filter :=
      ' grupo = ' + QuotedStr(DataSet.FieldByName('grupo').asString);
      //ativa o filtro
      VTB_PROTOCOLO.Filtered := true;
      //abre a tabela temporaria
      VTB_PROTOCOLO.Active := true;
    end;
end;
{------------------------------------------------------------------------------}
procedure TFRM_A014ADPT.BTN_SAIRClick(Sender: TObject);
begin
  close;
end;
{------------------------------------------------------------------------------}
procedure TFRM_A014ADPT.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
 //fecha e libera a aplicação da memoria
 Action:= oControlForms.Saidas(Self,[DTM_A014ADPT],nil);
end;
{------------------------------------------------------------------------------}
procedure TFRM_A014ADPT.FormShow(Sender: TObject);
begin
  //verifica o acesso do usuário na aplicação
  if not Acesso(nMatricula,'A014ADPT',DTM_A014ADPT) then
    close;
  //inicializa a aplicação
  BTN_IMPRIMIR.Enabled := false;
  nCountImpri := 0;
  //se a aplicação foi chamada da aplicação
  //de requerimento
  if lRequer then
    begin
      //desabilida a lista de origem
      DBL_LOCAL.Enabled := false;
      //seta a lista com a origem "protocolo"
      DBL_LOCAL.KeyValue := '199D';
    end
  else
  //foi chamada do menu
    begin
      with DTM_A014ADPT do
        begin
          //seleciona todos os locais para destino
          QRY_DESTINOS.Close;
          QRY_DESTINOS.SQL.Clear;
          QRY_DESTINOS.SQL.Add('select tbxulc.cidtbxulc, tbxulc.cdescriulc');
          QRY_DESTINOS.SQL.Add('from tbxulc');
          QRY_DESTINOS.SQL.Add('where cidtbxulc not in');
          QRY_DESTINOS.SQL.Add('(select cidtbxulc from tbxulc where');
          QRY_DESTINOS.SQL.Add('ctipo = ' + QuotedStr('DEPARTAMENTO'));
          QRY_DESTINOS.SQL.Add('and cdescriulc like ' + QuotedStr('GABINETE%')+ ')');
          QRY_DESTINOS.SQL.Add('order by tbxulc.cdescriulc');
          QRY_DESTINOS.Open;
          QRY_151AfterScroll(QRY_151);
        end;
      //DBG_REQ.Options := DBG_REQ.Options + [dgEditing]
    end;

  FRM_A014ADPT.OnShow := nil;
 {é atribuido ao OnShow do Form o valor nil para que o mesmo seja executado apenas uma vez}
 {pelo fato que se outra aplicação for chamada pela tecla F3, e ao retornar da aplicação que foi chamada pela tecla}
 {o evento OnShow deste form não acontecerá, ou seja não será executado, para permanecer o mesmo status da aplicação}
 {quando o F3 foi chamado}

end;
{------------------------------------------------------------------------------}
procedure TFRM_A014ADPT.DBG_REQDrawColumnCell(Sender: TObject;
  const Rect: TRect; DataCol: Integer; Column: TColumn;
  State: TGridDrawState);
begin
  //desenha as cores nas linhas do grid
  oMetodos.ColorGrid(Sender,Rect,DataCol,Column,State);
  //se o campo for dat_imprimir
  if Column.FieldName = 'DAT_IMPRIMIR' then
    begin
      //desenha uma caixa na celula
      ImageList.Draw(DBG_REQ.Canvas,Rect.left + 1, Rect.top + 1, 0);
      //se o capo estiver marcado com "sim"
      if Column.Field.AsString = 'S' then
        //desenha um check dentro da caixa
        ImageList.Draw(DBG_REQ.Canvas,Rect.left + 1, Rect.top + 1, 1);
    end;

end;
{------------------------------------------------------------------------------}
procedure TFRM_A014ADPT.DBG_REQCellClick(Column: TColumn);
begin
  with DTM_A014ADPT do
    begin
      //se o campo for dat_imprimir
      //e existir protocolos no grid
      if (Column.FieldName = 'DAT_IMPRIMIR') and
         (QRY_151.RecordCount > 0) then
        begin
          //edita a tabela de protocolos
          QRY_151.Edit;
          //se o valor atual do campo = "N"
          if QRY_151.FieldByName('dat_imprimir').asString = 'N' then
            begin
              //muda o valor para "S"
              QRY_151.FieldByName('dat_imprimir').asString := 'S';
              //adiciona mais um protocolo selecionado
              nCountImpri := nCountImpri + 1;
              if not(lRequer) then
                QRY_151.FieldByName('nqtdfolhas').FocusControl;
            end
          else
            begin
              //muda o valor para "N"
              QRY_151.FieldByName('dat_imprimir').asString := 'N';
              //subtrai um protocolo selecionado
              nCountImpri := nCountImpri - 1;
            end;
          //grava na qry de protocols
          QRY_151.Post;
          //se existir algum protocolo selecionado
          //habilida o botão para imprimir
          BTN_IMPRIMIR.Enabled := nCountImpri > 0;

        end;
    end;

end;
{------------------------------------------------------------------------------}
procedure TFRM_A014ADPT.BTN_AVANCAR1Click(Sender: TObject);
begin
  //proximo protocolo
  DTM_A014ADPT.QRY_151.Next;
end;
{------------------------------------------------------------------------------}
procedure TFRM_A014ADPT.BTN_RETROCEDER1Click(Sender: TObject);
begin
  //protocolo anterior
  DTM_A014ADPT.QRY_151.Prior;
end;
{------------------------------------------------------------------------------}
procedure TFRM_A014ADPT.BTN_MARCTODOClick(Sender: TObject);
begin
 with DTM_A014ADPT do
    begin
      //desabilita a atualização visual
      QRY_151.DisableControls;
      //posiciona no primeiro protocolo
      QRY_151.First;
      //indica que não existe nenhum protocolo selecionado
      nCountImpri := 0;
      try
        //loop na tabela de protocolos
        while not(QRY_151.Eof) do
          begin
            //edita qry de protocolos
            QRY_151.Edit;
            //se o botão que clicado for para marcar todos
            if Sender = BTN_MARCTODO then
              begin
                //marca o protocolo para impressao
                QRY_151.FieldByName('dat_imprimir').asString := 'S';
                //adiciona protocolo selecionado
                nCountImpri := nCountImpri + 1;
              end
            else
              //desmarca o protocolo para impressao
              QRY_151.FieldByName('dat_imprimir').asString := 'N';

            //grava qry de protocolo
            QRY_151.Post;
            //proximo protocolo
            QRY_151.Next;
          end;
        //pocisiona no primeiro protocolo
        QRY_151.First;
      finally
        //habilita a atualização visual dos compomentes dataware
        QRY_151.EnableControls;
        //se estiver algum protocolo selecionado para impressao
        //habilita o botão de impressao
        BTN_IMPRIMIR.Enabled := nCountImpri > 0;
      end;
    end;
end;
{------------------------------------------------------------------------------}
procedure TFRM_A014ADPT.DBL_DESTINOChange(Sender: TObject);
begin
  //se a aplicação foi chamada pelo requerimento
  if lRequer then
    begin
      //fecha qry de protocolos
      DBG_REQ.DataSource.DataSet.Close;
      //executa a busca dos protocolos
      ExecutePesp;
    end
  else
    //não foi chamada pelo requerimento e
    //o local de origem for diferente de branco
    if DBL_LOCAL.Text <> '' then
      begin
        //fecha a qry protocolo
        DBG_REQ.DataSource.DataSet.Close;
        //executa a busca dos protocolos
        ExecutePesp;
      end;

end;
{------------------------------------------------------------------------------}
procedure TFRM_A014ADPT.FormCreate(Sender: TObject);
begin
  //inicializa a variavel
  lRequer := false;
end;
{------------------------------------------------------------------------------}
procedure TFRM_A014ADPT.BTN_IMPRIMIRClick(Sender: TObject);
  var
    nCount, nContr: Integer;

begin
  with DTM_A014ADPT do
    begin
      try
        if QRY_151.State = dsEdit then
          QRY_151.Post;
        //deslbilita a atualização visual dos componentes dataware
        QRY_151.DisableControls;
        //seleciona somente os protocolos marcados para impressao
        QRY_151.Filter := 'dat_imprimir = ' + QuotedStr('S');
        //ativa o filtro
        QRY_151.Filtered := true;
        //limpa a tabela temporaria de protocolos
        VTB_PROTOCOLO.Clear;
        //limpa a tabela temporaria de destino
        VTB_DESTINO.Clear;
        //se houver registro na qry de protocolo
        if QRY_151.RecordCount > 0 then
          begin
            //incializa variavies
            //para controle de grupos
            nCount:= 0;
            nContr := 1;
            //loop na qry de protocolo
            while not(QRY_151.Eof) do
              begin
                nCount := nCount + 1;
                //se já passou mais de 6 protocolos
                if nCount > 6 then
                  begin
                    //inicializa o contador
                    nCount := 1;
                    //adiciona mais um grupo
                    nContr := nContr + 1;
                  end;

                with VTB_PROTOCOLO do
                  begin
                    //inseri um protocolo na tabela
                    //temporaria e pega os valores da
                    //qry de protocolos
                    Append;
                    FieldByName('nidcadreq').asInteger :=
                    QRY_151.FieldByName('nidcadreq').asInteger;
                    FieldByName('nnroprot').asInteger :=
                    QRY_151.FieldByName('nnroprot').asInteger;
                    FieldByName('cidtbxulc').asString :=
                    QRY_151.FieldByName('cidtbxulc').asString;
                    FieldByName('nidtbxtrq').asInteger :=
                    QRY_151.FieldByName('nidtbxtrq').asInteger;
                    FieldByName('cemigtm').asString :=
                    QRY_151.FieldByName('cemigtm').asString;
                    FieldByName('cdescritrq').asString :=
                    QRY_151.FieldByName('cdescritrq').asString;
                    FieldByName('dat_lugar').asString :=
                    QRY_151.FieldByName('dat_lugar').asString;
                    FieldByName('dat_imprimir').asString :=
                    QRY_151.FieldByName('dat_imprimir').asString;
                    FieldByName('nqtdfolhas').asInteger :=
                    QRY_151.FieldByName('nqtdfolhas').asInteger;
                    //atribui a qual grupo o protocolo pertence
                    FieldByName('grupo').asString :=
                    QRY_151.FieldByName('dat_lugar').asString +
                    IntToStr(nContr);
                    //grava o novo protocolo na tabela temporaria
                    Post;
                    //se o grupo não estiver cadastrado
                    if not(VTB_DESTINO.Locate('GRUPO',FieldByName('grupo').asString,[])) then
                      begin
                        //inseri um novo grupo de protocolos
                        VTB_DESTINO.Append;
                        //nome do grupo
                        VTB_DESTINO.FieldByName('dat_lugar').asString :=
                        FieldByName('dat_lugar').asString;
                        //id do grupo
                        VTB_DESTINO.FieldByName('grupo').asString :=
                        FieldByName('grupo').asString;
                        //grava o novo grupo na tabela temporaria
                        VTB_DESTINO.Post;
                      end;
                  end;
                //proximo protocolo
                QRY_151.Next;
              end;

          end;
        //adiciona o filtro para que a cada
        //posicimanento de registro
        //seja filtrado apenas os protocolos
        //do grupo na tabela temporaria de protocolo
        VTB_DESTINO.AfterScroll := FiltraRequeTmp;
        //retira o filtro da qry de protocolos
        QRY_151.Filtered := false;
        if not(DBL_LOCAL.Enabled)  then
          ppDetailBand1.BandsPerRecord := 2
        else
          ppDetailBand1.BandsPerRecord := 3;

        //carrega o logo da entidade
        IMG_LOGO.Picture.LoadFromFile('logo.bmp');
        //chama o preview da guia de tramitação
        RPT_GTM.Print;
        //retira o "Master/Detalhe" da tabela de grupos
        VTB_DESTINO.AfterScroll := nil;
        //retira o filtro da tabela temporaria de protocolos
        VTB_PROTOCOLO.Filtered := false;
      finally
        //habilita a atualização dos componentes dataware
        QRY_151.EnableControls;
      end;
    end;

end;
{------------------------------------------------------------------------------}
procedure TFRM_A014ADPT.ppSummaryBand1BeforeGenerate(Sender: TObject);
  var
    i : integer;
begin
  //antes de imprimir a banda de Sumario
  //faz um for para a quantidade de protocolos
  //impressos no detalhe
  //caso a quantidade seja menor que 6 força
  //a geração das linha restantes até completar 6 linhas
  for i := 1 to 6 - ppDetailBand2.Count  do
    begin
      //controle para o componente não imprimir o seu conteudo
      DBT_ASSUNTO.Tag := 1;
      //gera uma banda de detalhe
      ppDetailBand2.Generate;
      DBT_ASSUNTO.Tag := 0;
    end;
  //força o reposicionamento da banda de sumario
  ppSummaryBand1.CalcPrintPosition;
end;
{------------------------------------------------------------------------------}
procedure TFRM_A014ADPT.DBT_ASSUNTOGetText(Sender: TObject;
  var Text: String);
begin
  //se a tag = 1
  if DBT_ASSUNTO.Tag = 1 then
    //não imprime o seu conteudo
    Text := '';
end;
{------------------------------------------------------------------------------}
procedure TFRM_A014ADPT.IMG_VIAPrint(Sender: TObject);
begin
  if not(DBL_LOCAL.Enabled) then
    begin
      //se for a primeira guia de tramitação
      if Odd(ppDetailBand1.Count) then
        //carrega a imagem que indica que a guia e do destino
        IMG_VIA.Picture.LoadFromFile(cPathImg + '2via.jpg')
      else
        //carrega a imagem que indica que a guia e do protocolo
        IMG_VIA.Picture.LoadFromFile(cPathImg + '3via.jpg');
    end
  else
    begin
      IMG_VIA.Picture.LoadFromFile(cPathImg + IntToStr(ppDetailBand1.BandsPerRecordCount) + 'via.jpg');
    end;
end;
{------------------------------------------------------------------------------}
procedure TFRM_A014ADPT.ppLine11Print(Sender: TObject);
begin
  //imprime a linha do meio do relatorio
  //uma vez sim e outra não
  //isso foi feito pelo fato de que quando
  //o relatorio tenta imprimir a segunda fez a linha
  //o gerador fica perdido
//  ppLine11.Visible := not(ppLine11.Visible);
   ppLine11.Visible := Odd(ppDetailBand1.Count);
end;
{------------------------------------------------------------------------------}
procedure TFRM_A014ADPT.DBL_LOCALChange(Sender: TObject);
begin
  //se não for chamado pelo requerimento
  //e houver algum destino
  if (not(lRequer)) and (DBL_DESTINO.Text <> '') then
    //executa a pesquisa
    ExecutePesp;
end;
{------------------------------------------------------------------------------}
procedure TFRM_A014ADPT.ExecutePesp;
begin
  with DTM_A014ADPT do
    begin
      //fecha a qry de pesquisa de protocolo
      QRY_151.Close;
      //se a aplicação foi chamada do requerimento
      //apenas passa como parametro o destino escolhido
      //pelo usuario
      if lRequer then
        begin
          QRY_151.ParamByName('cidtbxulc').asString :=
          QRY_DESTINOS.FieldByName('cidtbxulc').asString;
        end
      else
        //se não foi chamada pela aplicação de requerimento
        begin
          //limpa o sql da qry de pesquisa
          QRY_151.SQL.Clear;
          //adiciona novo sql
          QRY_151.SQL.Add('select cadreq.nidcadreq, cadreq.nnroprot, cadreq.nidtbxtrq, tbxulc.cidtbxulc,');
          QRY_151.SQL.Add('cadreq.cemigtm, cadreq.csituareq, taggtm.nqtdfolhas, tbxtrq.cdescritrq,');
          QRY_151.SQL.Add(QuotedStr('N') + 'as dat_imprimir ');
          QRY_151.SQL.Add('from cadreq, tbxtrq, tbxulc, tbxgtm, taggtm');
          QRY_151.SQL.Add('where tbxgtm.nidtbxgtm = cadreq.nidtbxgtm and ');
          QRY_151.SQL.Add('tbxulc.cidtbxulc = tbxgtm.ciddestino and ');
          QRY_151.SQL.Add('tbxulc.cidtbxulc = :cidtbxulc and');
          QRY_151.SQL.Add('cadreq.csituareq = '+QuotedStr('EM ANDAMENTO')+' and');
          QRY_151.SQL.Add('tbxtrq.nidtbxtrq = cadreq.nidtbxtrq and ');
          QRY_151.SQL.Add('taggtm.nidtbxgtm = tbxgtm.nidtbxgtm and');
          QRY_151.SQL.Add('taggtm.nidcadreq = cadreq.nidcadreq');
          QRY_151.SQL.Add('order by cadreq.nnroprot desc');
          //passa a origem escolhida pelo usuário
          DTM_A014ADPT.QRY_151.ParamByName('cidtbxulc').asString :=
          DTM_A014ADPT.QRY_ORIGENS.FieldByName('cidtbxulc').asString;
        end;
        //abre a pesquisa
        DTM_A014ADPT.QRY_151.Open;
    end;
end;
{------------------------------------------------------------------------------}
procedure TFRM_A014ADPT.RPT_GTMBeforePrint(Sender: TObject);
begin
  //se o relatorio esta sendo enviado para a impressora
  if RPT_GTM.DeviceType = 'Printer' then
    begin
      with DTM_A014ADPT, DMControle do
        begin
          //abre uma transação com o banco de dados
          Conexao.StartTransaction;
          try
            //indica qual é a aplicação para o log
            cNomeAplicacao := 'A014ADPT';
            //posiciona no primeiro registro dos grupos de protocolo
            VTB_DESTINO.First;
            //loop nos grupos de protocolo
            while not(VTB_DESTINO.Eof) do
              begin
                //inseri nova guia de tramitação
                DBGenerica(DTS_154,'Conexao',1,0,Nil,false);
                QRY_154.FieldByName('cidtbxulc').asString :=
                QRY_ORIGENS.FieldByName('cidtbxulc').asString;
                QRY_154.FieldByName('ddtorigem').AsDateTime := Now;
                QRY_154.FieldByName('ciddestino').asString :=
                QRY_DESTINOS.FieldByName('cidtbxulc').asString;
                QRY_154.FieldByName('ddtdestino').AsDateTime := Now;
                //grava a nova guia
                DBGenerica(DTS_154,'Conexao',4,1,Nil,false);
                //edita a tabela de grupos temporaria
                VTB_DESTINO.Edit;
                //pega o número gerado para a guia
                //para ser mostrado no relatorio
                VTB_DESTINO.FieldByName('cnroguia').asString :=
                QRY_154.FieldByName('cnroguia').asString;
                //grava na tabela temporiria
                VTB_DESTINO.Post;
                //posiciona no primeiro protocolo do grupo
                VTB_PROTOCOLO.First;
                while not(VTB_PROTOCOLO.Eof) do
                  begin
                    //inseri protocolo na guia de tramitação
                    //gravada a cima
                    DBGenerica(DTS_152,'Conexao',1,0,Nil,false);
                    QRY_152.FieldByName('nqtdfolhas').asInteger :=
                    VTB_PROTOCOLO.FieldByName('nqtdfolhas').asInteger;
                    QRY_152.FieldByName('nidcadreq').asInteger :=
                    VTB_PROTOCOLO.FieldByName('nidcadreq').asInteger;
                    QRY_152.FieldByName('nidtbxgtm').asInteger :=
                    QRY_154.FieldByName('nidtbxgtm').asInteger;
                    //grava a nova os protocolos para a guia
                    DBGenerica(DTS_152,'Conexao',4,1,Nil,false);
                    //localiza o requerimento (protocolo)
                    QRY_151.Locate('nidcadreq',VTB_PROTOCOLO.FieldByName('nidcadreq').asInteger,[]);
                    //edita o requerimento
                    QRY_151.Edit;
                    //indica que já foi emitida a guia de tramitação para o processo
                    QRY_151.FieldByName('cemigtm').asString := 'S';
                    //altera o status do processo
                    QRY_151.FieldByName('csituareq').asString := 'EM TRANSITO';
                    //grava as informações para o protocolo atual
                    QRY_151.Post;
                    QRY_ATUADESTPROT.ParamByName('idprot').asInteger :=
                    VTB_PROTOCOLO.FieldByName('nidcadreq').asInteger;
                    QRY_ATUADESTPROT.ExecSQL;
                    //proximo protocolo
                    VTB_PROTOCOLO.Next;
                  end;
                //proximo grupo de protocolo
                VTB_DESTINO.Next;
              end;
            //grava as alterações no requerimento
            QRY_151.ApplyUpdates;
            //comita as informações no banco
            Conexao.Commit;
          except
            on E : Exception do
              begin
                //se houve erro
                //desfaz as atualizações no banco
                Conexao.Rollback;
                //avisa ao usuario
                MessageDlg('Erro na criação da guia de tramitação!'+ #13 +
                           'Erro : ' + E.Message,mtError,[mbOk],0);
              end;
          end;

        end;
    end;

end;
{------------------------------------------------------------------------------}
procedure TFRM_A014ADPT.RPT_GTMPreviewFormCreate(Sender: TObject);
begin
  //mostra a tela de preview maximizada
  RPT_GTM.PreviewForm.WindowState:= wsMaximized;
  //altera o zoom do relatorio
  TppViewer(RPT_GTM.PreviewForm.Viewer).ZoomSetting:= zsPageWidth;
end;
{------------------------------------------------------------------------------}
procedure TFRM_A014ADPT.RPT_GTMPrintingComplete(Sender: TObject);
begin
  //fecha o form de preview
  RPT_GTM.PreviewForm.Close;
  //executa a pesquisa novamente
  ExecutePesp;
end;
{------------------------------------------------------------------------------}
procedure TFRM_A014ADPT.DBG_REQKeyPress(Sender: TObject; var Key: Char);
begin
  //se o usuario pressionou a barra de espaço
  //e o campo selecionado no grid for o de impressao
  if (DBG_REQ.SelectedField.FieldName = 'DAT_IMPRIMIR') then
    if (Key = ' ') then
      //executa click na coluna
      DBG_REQCellClick(DBG_REQ.Columns[0]);


end;
{------------------------------------------------------------------------------}
procedure TFRM_A014ADPT.DBG_REQColEnter(Sender: TObject);
begin
  //se a gt não foi chamado pelo requerimento
  if not(lRequer) then
    //se a coluna que esta recebendo o foco for
    //a de qtd. de folhas
    if DBG_REQ.SelectedField.FieldName = 'NQTDFOLHAS' then
      //permite a edição do grid
      DBG_REQ.Options := DBG_REQ.Options + [dgEditing]
    else
      //não permite a edição do grid
      DBG_REQ.Options := DBG_REQ.Options - [dgEditing];
end;

procedure TFRM_A014ADPT.BTN_ATUGTMClick(Sender: TObject);
begin
  oControlForms.AtivaForm('FRM_A017ADPT',shModal,Nil);
end;

procedure TFRM_A014ADPT.DBG_REQMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  //chama pesquisa de grid
  if Button = mbRight then
    //chama a pesquisa de gird
    ChamaPesqGrid(DTM_A014ADPT.QRY_151,nil,'nnroprot','Protocolo');

end;

end.
