unit A006UTCO;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  LMDCustomControl, LMDCustomPanel, LMDCustomBevelPanel,
  LMDCustomParentPanel, LMDCustomPanelFill, LMDPanelFill, StdCtrls, Buttons,
  Grids, DBGrids, Db, Ora, VirtualTable;

type
  TFRM_A006UTCO = class(TForm)
    BTN_RENTODOS: TSpeedButton;
    BTN_RENITEM: TSpeedButton;
    BTN_ADDTODOS: TSpeedButton;
    BTN_ADITEM: TSpeedButton;
    DBG_APLIC1: TDBGrid;
    Pnl_Sistema: TLMDPanelFill;
    CB_CAT1: TComboBox;
    DBG_APLIC2: TDBGrid;
    LMDPanelFill1: TLMDPanelFill;
    CB_CAT2: TComboBox;
    Btn_Ok: TBitBtn;
    Btn_Cancel: TBitBtn;
    Pnl_Titulo: TLMDPanelFill;
    DTS_LIST1: TOraDataSource;
    DTS_LIST2: TOraDataSource;
    procedure BTN_ADITEMClick(Sender: TObject);
    procedure BTN_RENITEMClick(Sender: TObject);
    procedure Btn_CancelClick(Sender: TObject);
    procedure Btn_OkClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure CB_CAT1Change(Sender: TObject);
    procedure CB_CAT2Change(Sender: TObject);
    procedure CB_CAT1KeyPress(Sender: TObject; var Key: Char);
    procedure BTN_ADDTODOSClick(Sender: TObject);
    procedure BTN_RENTODOSClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    oTabList1, oTabList2 : TVirtualTable;
    function TabVirtualFields(oBase : TOraDataSource; cNomeTab : String): TVirtualTable;
    procedure TabVirtualValues(oBase : TOraDataSource; oTabV : TVirtualTable);
    procedure InsereCategoria(oComboCat : TComboBox);
  end;

var
  FRM_A006UTCO: TFRM_A006UTCO;

implementation

uses D006UTCO, TELAPRIN, Login, MPLCtrl, UVariaveis, DMCTRL, D002UTCO;

{$R *.DFM}

procedure TFRM_A006UTCO.BTN_ADITEMClick(Sender: TObject);
 var
    i : integer;
begin
  with DBG_APLIC1.DataSource.DataSet do
    begin
      {desabilita controle visuais na origem}
      DisableControls;
      {Posiciona Tabela de origem}
      First;
      {Abre tabela de destino}
      oTabList2.Open;
      while not Eof do
        begin
          {Se o item estiver selecionado}
          if DBG_APLIC1.SelectedRows.CurrentRowSelected then
            begin
              {inclui um registro novo para um novo item}
              oTabList2.Insert;
              {Adiciona campos e valores selecionados}
              for i := 0 to  Fields.Count -1  do
                begin
                  {Passo o Grupo definido aneriormente}
                  if oTabList2.Fields.Fields[i].FieldName = 'ncodgrupo' then
                    oTabList2.Fields.Fields[i].Value :=
                    DTM_A002UTCO.QRY_041.ParamByName('ncodgrupo').asInteger
                  else oTabList2.Fields.Fields[i].Value :=
                       Fields.Fields[i].Value; {Passa o valor do campo corrente}
                  {Com o Campo Categoria}
                  if Fields.Fields[i].FieldName = 'CCATEGORIA' then
                    {Verifica se a categoria já está no Combo}
                    if CB_CAT2.Items.IndexOf(Trim(Fields.Fields[i].AsString)) = -1 then
                      {Se for diferente de branco}
                      if Trim(Fields.Fields[i].AsString) <> '' then
                        CB_CAT2.Items.Add(Trim(Fields.Fields[i].AsString));
                end;
              {Grava no destino}
              oTabList2.Post;
            end;
          {Próximo Registro}
          Next;
        end;
      {Limpa seleção e deleta registros adicionados}
      DBG_APLIC1.SelectedRows.Delete;
      {Volta origem no primeiro registro}
      First;
      {Habilita controle visuais da origem}
      EnableControls;
    end;
end;

procedure TFRM_A006UTCO.BTN_RENITEMClick(Sender: TObject);
 var
    i, nCat : integer;
begin
  with DBG_APLIC2.DataSource.DataSet do
    begin
      {desabilita controle visuais na origem}
      DisableControls;
      {Posiciona Tabela de origem}
      First;
      {Abre tabela de destino}
      oTabList1.Open;
      while not Eof do
        begin
          {Se o item estiver selecionado}
          if DBG_APLIC2.SelectedRows.CurrentRowSelected then
            begin
              {inclui um registro novo para um novo item}
              oTabList1.Insert;
              {Adiciona campos e valores selecionados}
              for i := 0 to  Fields.Count -1  do
                begin
                  {Passo o Grupo definido aneriormente}
                  if oTabList1.Fields.Fields[i].FieldName = 'ncodgrupo' then
                    oTabList1.Fields.Fields[i].Value :=
                    DTM_A002UTCO.QRY_041.ParamByName('ncodgrupo').asInteger
                  else oTabList1.Fields.Fields[i].Value :=
                       Fields.Fields[i].Value; {Passa o valor do campo corrente}
                end;
              {Grava no destino}
              oTabList1.Post;
            end;
          {Próximo Registro}
          Next;
        end;
      {Desmarca seleção e delete registros selecionados}
      DBG_APLIC2.SelectedRows.Delete;
      {Retira as Categorias não mais selecionadas}
      for i := CB_CAT2.Items.Count -1 downto 0 do
        begin
          if (not Locate('CCATEGORIA',CB_CAT2.Items.Strings[i],[])) then
            if CB_CAT2.Items.Strings[i] <> 'Todos' then
              CB_CAT2.Items.Delete(i);
        end;
      {Volta origem no primeiro registro}
      First;
      {Habilita controle visuais da origem}
      EnableControls;
      {Aponta unica categoria}
      CB_CAT2.ItemIndex := CB_CAT2.Items.IndexOf('Todos');
    end;
end;

procedure TFRM_A006UTCO.Btn_CancelClick(Sender: TObject);
begin

  close;
end;

procedure TFRM_A006UTCO.Btn_OkClick(Sender: TObject);
var i : integer;
begin
  with DTM_A002UTCO.DTS_041.DataSet do
    begin
      DisableControls;
      for i := RecordCount -1 downto 0 do
        Delete;
      DTS_LIST2.DataSet.DisableControls;
      DTS_LIST2.DataSet.First;
      While not DTS_LIST2.DataSet.Eof do
        begin
          Insert;
          for i := 0 to DTS_LIST2.DataSet.Fields.Count -1 do
            Fields.Fields[i].Value :=
            DTS_LIST2.DataSet.Fields.Fields[i].Value;
          Post;
          DTS_LIST2.DataSet.Next;
        end;
      First;
      EnableControls;
    end;
  close;
end;

procedure TFRM_A006UTCO.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := oControlForms.Saidas(Sender,[DTM_A006UTCO],DTM_A006UTCO.DTS_041.DataSet);
end;

procedure TFRM_A006UTCO.FormShow(Sender: TObject);
begin
   {Libera acesso a Aplicação}
   Acesso(nMatricula,'A006UTCO',DTM_A006UTCO);
   FRM_A006UTCO.OnShow := nil;
   {é atribuido ao OnShow do Form o valor nil para que o mesmo seja executado apenas uma vez}
   {pelo fato que se outra aplicação for chamada pela tecla F3, e ao retornar da aplicação que foi chamada pela tecla}
   {o evento OnShow deste form não acontecerá, ou seja não será executado, para permanecer o mesmo status da aplicação}
   {quando o F3 foi chamado}

   {Insere todas as Categorias no Combo Geral}
   InsereCategoria(CB_CAT1);
   CB_CAT1.ItemIndex := CB_CAT1.Items.IndexOf('Todos');

   {Adiciona somente Todos a Categoria no Combo Seleção}
   CB_CAT2.Items.Add('Todos');
   CB_CAT2.ItemIndex := CB_CAT2.Items.IndexOf('Todos');

   {Libera Datasource do Grid 1}
   DBG_APLIC1.DataSource := nil;

   {Cria tabela virtual para o Grid 1 e Passa os Valores}
   oTabList1 := TabVirtualFields(DTM_A006UTCO.DTS_041,'aplica');
   TabVirtualValues(DTM_A006UTCO.DTS_041,oTabList1);

   {Aponta a Tabela virtual no Datasource e depois no Grid1}
   DTS_LIST1.DataSet := oTabList1;
   DBG_APLIC1.DataSource :=  DTS_LIST1;

   {Libera Datasource do Grid 2}
   DBG_APLIC2.DataSource := nil;

   {Cria tabela virtual para o Grid 2}
   oTabList2 := TabVirtualFields(DTM_A006UTCO.DTS_041,'aplica2');
   TabVirtualValues(DTM_A002UTCO.DTS_041,oTabList2);

   {Aponta a Tabela virtual no Datasource e depois no Grid2}
   DTS_LIST2.DataSet := oTabList2;
   DBG_APLIC2.DataSource := DTS_LIST2;

end;


function TFRM_A006UTCO.TabVirtualFields(oBase : TOraDataSource; cNomeTab : String): TVirtualTable;
var
   x : integer;
   oTab : TVirtualTable;
begin
    oTab := TVirtualTable.Create(nil);
    oTab.Name := cNomeTab;
    begin
      for x := 0 to oBase.DataSet.Fields.Count -1 do
        if oBase.DataSet.Fields.Fields[x].DataType in [ftInteger,ftString,ftDate] then
           oTab.AddField(oBase.DataSet.Fields.Fields[x].FieldName,
                               oBase.DataSet.Fields.Fields[x].DataType,
                               oBase.DataSet.Fields.Fields[x].Size);
    end;
    result := oTab;
end;

procedure TFRM_A006UTCO.TabVirtualValues(oBase : TOraDataSource; oTabV : TVirtualTable);
var
   x : integer;
begin
    begin
      oTabV.Open;
      oBase.DataSet.DisableControls;
      oBase.DataSet.First;
      while not oBase.DataSet.Eof do
        begin
          oTabV.Insert;
          for x := 0 to oBase.DataSet.Fields.Count -1 do
            if oBase.DataSet.Fields.Fields[x].FieldName =
               oTabV.Fields.Fields[x].FieldName then
               oTabV.Fields.Fields[x].Value :=
               oBase.DataSet.Fields.Fields[x].Value;
          oTabV.Post;
          oBase.DataSet.Next;
        end;
      oBase.DataSet.First;
      oBase.DataSet.EnableControls;
    end;
end;

procedure TFRM_A006UTCO.InsereCategoria(oComboCat : TComboBox);
var
    nVez, nTotVez : integer;
begin
  oComboCat.Items.Add('Todos');
  with DTM_A006UTCO.DTS_041.DataSet do
    begin
      DisableControls;
      First;
      while not Eof do
        begin
          nTotVez := oComboCat.Items.Count;
          for nVez := 0 to nTotVez - 1 do
            if oComboCat.Items.IndexOf(Trim(FieldByName('CCATEGORIA').AsString)) = -1 then
              if Trim(FieldByName('CCATEGORIA').AsString) <> '' then
                begin
                  oComboCat.Items.Add(Trim(FieldByName('CCATEGORIA').AsString));
                  break;
                end;
          Next;
        end;
      First;
      EnableControls;
      oComboCat.Sorted := true;
    end;
end;

procedure TFRM_A006UTCO.CB_CAT1Change(Sender: TObject);
begin
  if Trim(CB_CAT1.Items.Strings[CB_CAT1.ItemIndex]) = 'Todos' then
    begin
      oTabList1.Filtered := false;
      oTabList1.Filter := '';
      oTabList1.Filtered := true;
    end
  else
    begin
      oTabList1.Filtered := false;
      oTabList1.Filter := 'CCATEGORIA = '+
      QuotedStr(Trim(CB_CAT1.Items.Strings[CB_CAT1.ItemIndex]));
      oTabList1.Filtered := true;
    end;
end;

procedure TFRM_A006UTCO.CB_CAT2Change(Sender: TObject);
begin
  if Trim(CB_CAT2.Items.Strings[CB_CAT2.ItemIndex]) = 'Todos' then
    begin
      oTabList2.Filtered := false;
      oTabList2.Filter := '';
      oTabList2.Filtered := true;
    end
  else
    begin
      oTabList2.Filtered := false;
      oTabList2.Filter := 'CCATEGORIA = '+
      QuotedStr(Trim(CB_CAT2.Items.Strings[CB_CAT2.ItemIndex]));
      oTabList2.Filtered := true;
    end;
end;

procedure TFRM_A006UTCO.CB_CAT1KeyPress(Sender: TObject; var Key: Char);
begin
  if Key <> #13 then
    Key := #0;
end;

procedure TFRM_A006UTCO.BTN_ADDTODOSClick(Sender: TObject);
begin
  with DBG_APLIC1.DataSource.DataSet do
    begin
      {desabilita controle visuais na origem}
      DisableControls;
      {Posiciona Tabela de origem}
      First;
      {Seleciona todos}
      while not Eof do
        begin
          DBG_APLIC1.SelectedRows.CurrentRowSelected := true;
          Next;
        end;
      {Executa adição de item}
      BTN_ADITEM.Click;
      {Volta origem no primeiro registro}
      First;
      {Habilita controle visuais da origem}
      EnableControls;
    end;
end;

procedure TFRM_A006UTCO.BTN_RENTODOSClick(Sender: TObject);
begin
  with DBG_APLIC2.DataSource.DataSet do
    begin
      {desabilita controle visuais na origem}
      DisableControls;
      {Posiciona Tabela de origem}
      First;
      {Seleciona todos}
      while not Eof do
        begin
          DBG_APLIC2.SelectedRows.CurrentRowSelected := true;
          Next;
        end;
      {Executa Retorno de item}
      BTN_RENITEM.Click;
      {Volta origem no primeiro registro}
      First;
      {Habilita controle visuais da origem}
      EnableControls;
    end;
end;

end.
