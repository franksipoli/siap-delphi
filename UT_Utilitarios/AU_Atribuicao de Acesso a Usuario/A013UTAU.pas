{*******************************************************************************
 *                                                                             *
 *  Aplicação de atribuição de aplicações para                                 *
 *  o perfil do operador                                                       *
 *                                                                             *
 *                                                                             *
 *  Data da Criação : 02/06/2004                                               *
 *  Programador Leandro Ribas                                                  *
 *  Data Finalização : 07/06/2004                                              *
 *                                                                             *
 *  Data da Ultima Atualização :                                               *
 *  Atualizado por:                                                            *
 *  Motivo da Atualização :                                                    *
 *                                                                             *
 *                                                                             *
 *******************************************************************************
}



unit A013UTAU;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Buttons, ExtCtrls, StdCtrls, Grids, DBCtrls, LMDCustomControl,
  LMDCustomPanel, LMDCustomBevelPanel, LMDCustomParentPanel,
  LMDCustomGroupBox, LMDGroupBox, ImgList, DB, MemDS, DBAccess, Ora,
  RxLookup, LMDCustomPanelFill, LMDStaticText;

type
  //objeto aplicacao
  TAplicacao = class
    nIdAplicacao : Integer;//id aplicacao
    nIdOpa : Integer;//id perfil aplicacao
    nIdEqv : Integer;//id perfil aplicacao da equivalencia
    nIdUa  : Integer;//id usuario aplicacao
    Checked : boolean;//indica se a aplicacao esta checada
    OldChecked : boolean;//estado anterior da aplicacao
    Update : TUpdateKind;//tipo de acao que será executada na gravação
  end;

  TtpCheck = (tpTrue,tpFalse,tpDefault);

  TFRM_A013UTAU = class(TForm)
    Panel2: TPanel;
    BTN_USUAPER: TSpeedButton;
    BTN_SAIR: TSpeedButton;
    BTN_ALTERAR: TSpeedButton;
    BTN_GRAVAR: TSpeedButton;
    BTN_CANCELAR: TSpeedButton;
    Btn_Excluir: TSpeedButton;
    LMDGroupBox3: TLMDGroupBox;
    BTN_ADDPER: TButton;
    LMDGroupBox1: TLMDGroupBox;
    STRGRD_APLUSU: TStringGrid;
    ImgList: TImageList;
    QRY_INSERIAPLICPERFIL: TOraQuery;
    QRY_REMOVEAPLICPERFIL: TOraQuery;
    QRY_REMOVEPERFILOP: TOraQuery;
    BTN_ALTPER: TButton;
    DLC_CNOMEPER: TRxDBLookupCombo;
    LMDStaticText1: TLMDStaticText;
    LMDStaticText2: TLMDStaticText;
    procedure FormShow(Sender: TObject);
    procedure BTN_SAIRClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BTN_ALTERARClick(Sender: TObject);
    procedure BTN_GRAVARClick(Sender: TObject);
    procedure BTN_CANCELARClick(Sender: TObject);
    procedure BTN_ADDPERClick(Sender: TObject);
    procedure STRGRD_APLUSUDrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure STRGRD_APLUSUSelectCell(Sender: TObject; ACol, ARow: Integer;
      var CanSelect: Boolean);
    procedure DLC_CNOMEPER1CloseUp(Sender: TObject);
    procedure STRGRD_APLUSUMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure Btn_ExcluirClick(Sender: TObject);
    procedure BTN_USUAPERClick(Sender: TObject);
    procedure STRGRD_APLUSUDblClick(Sender: TObject);
    procedure BTN_ALTPERClick(Sender: TObject);
    procedure LMDStaticText1Click(Sender: TObject);
    procedure LMDStaticText2Click(Sender: TObject);
  private
    { Private declarations }
    procedure ChangeColor(Sender : TObject; MSG : Integer);
    procedure WndProc(Var Msg : TMessage);override;
  public
    { Public declarations }
    //monta stringgrid
    procedure AlimentaLista;

    //Atualiza as informações do stringgrid
    procedure AtualizaLista;

    //Cancela as alterações na lista
    procedure CancelaAltLista;

    //valida o clique no string grid
    procedure VerificaClickGrid(Linha: integer; Check : TtpCheck = tpDefault);

    //grava as alterações feitas no string grid
    procedure GravaAlteracoes;

    //atualiza o estado dos objetos aplicacao
    procedure AtualizaObjAplic;
  end;

var
  FRM_A013UTAU: TFRM_A013UTAU;

implementation

uses
  MPLCtrl, UVariaveis, CtrlForms, D013UTAU, DMCTRL, A014UTAU, D014UTAU,
  A015UTAU, D015UTAU;

{$R *.DFM}

procedure TFRM_A013UTAU.FormShow(Sender: TObject);
begin
  //verifica acesso do usuario
  if Acesso(nMatricula,'A013UTAU',DTM_A013UTAU) then
    Close;

 //abre as querys
 with DTM_A013UTAU do
   begin
     //busca os perfil criados pelo operador
     QRY_055.ParamByName('nidtbl_u').asInteger := nMatricula;
     QRY_055.ExecSQL;

     //se não existir perfil criado
     if QRY_055.IsEmpty then
       begin
         //desabilida os botões
         Botoes(['Btn_Alterar','Btn_Cancelar','Btn_Gravar','Btn_Excluir','Btn_UsuAper','Btn_AltPer'],'FRM_A013UTAU',False);
         Btn_AltPer.Enabled := false;
       end
     else
        //disabilida somente dois botões
        Botoes(['Btn_Cancelar','Btn_Gravar'],'FRM_A013UTAU',False);

     //busca as aplicação que o operador tem acesso
     QRY_APLICUSU.ParamByName('codusu').asInteger := nMatricula;
     QRY_APLICUSU.ParamByName('orderapli').asInteger := 1;
     QRY_APLICUSU.ExecSQL;
     //busca os perfis bases do sistema
     QRY_056.ExecSQL;

     Caption := Caption + ' ' + cNomeUsuario;

     //monsta string grid
     AlimentaLista;

     //passa o valor do perfil do operador
     DLC_CNOMEPER.KeyValue := QRY_055.FieldByName('nidtbl_op').asInteger;
   end;




 FRM_A013UTAU.OnShow := nil;
 {é atribuido ao OnShow do Form o valor nil para que o mesmo seja executado apenas uma vez}
 {pelo fato que se outra aplicação for chamada pela tecla F3, e ao retornar da aplicação que foi chamada pela tecla}
 {o evento OnShow deste form não acontecerá, ou seja não será executado, para permanecer o mesmo status da aplicação}
 {quando o F3 foi chamado}

end;

procedure TFRM_A013UTAU.BTN_SAIRClick(Sender: TObject);
begin
  close;
end;

procedure TFRM_A013UTAU.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := oControlForms.Saidas(Self,[DTM_A013UTAU],nil);
end;

procedure TFRM_A013UTAU.BTN_ALTERARClick(Sender: TObject);
begin
  //habilida gravaçao e cancelamento da operação
  Botoes(['BTN_GRAVAR','BTN_CANCELAR'],'FRM_A013UTAU',true);
  //desablida a troca de perfil
  DLC_CNOMEPER.Enabled := false;
  //desabilida a inclusao perfil
  BTN_ADDPER.Enabled := false;
  //desalibida a alteração de perfil
  BTN_ALTPER.Enabled := false;
end;

procedure TFRM_A013UTAU.BTN_GRAVARClick(Sender: TObject);
begin

  if MessageDlg('Deseja Salvar Alterações?',mtConfirmation,[mbYes,mbNo],0) = mrYes then
    begin
      //grava as alterações feita no stringgrid
      GravaAlteracoes;
      //desabilida gravação e cancelamento
      Botoes(['BTN_GRAVAR','BTN_CANCELAR'],'FRM_A013UTAU',false);
      //habilida a troca de perfil
      DLC_CNOMEPER.Enabled := true;
      //habilida a inclusao de perfil
      BTN_ADDPER.Enabled := true;
      //habilida a alteração de perfil
      BTN_ALTPER.Enabled := true;
    end;
end;

procedure TFRM_A013UTAU.BTN_CANCELARClick(Sender: TObject);
begin
  //cancela as alterações na lista de aplicações
  Botoes(['BTN_GRAVAR','BTN_CANCELAR'],'FRM_A013UTAU',false);
  //cancela as alterações no stringrid
  CancelaAltLista;
  //habilida a troca de perfil
  DLC_CNOMEPER.Enabled := true;
  //habilida a inclusao de perfil
  BTN_ADDPER.Enabled := true;
  //habilida a alteração de perfil
  BTN_ALTPER.Enabled := true;
end;

procedure TFRM_A013UTAU.BTN_ADDPERClick(Sender: TObject);
  var
    cNomePer : String;
    Label NomePer;

begin
  //nome para goto
  NomePer:
  //mostra tela para informar o nome do perfil
  if InputQuery('Nome Perfil','Nome Perfil', cNomePer) then
    begin
      //coloca o nome do perfil em caixa alta
      cNomePer := UpperCase(cNomePer);
      //se o nome for maior que 15 caracteres
      if Length(cNomePer) > 15 then
        begin
          //avisa ao usuario
          MessageDlg('Nome do Perfil pode possuir no máximo 15 caracteres!' + #13 +
                     'Favor escolher outro!',mtInformation,[mbOk],0);
          //retorna para NomePer
          goto NomePer;
        end;
      with DTM_A013UTAU.QRY_055 do
        begin
          //se o usuario ja possue perfil criado com o mesmo nome
          if Locate('cnomeper;nidtbl_u',VarArrayOf([cNomePer,nMatricula]),[]) then
            begin
              //avisa ao usuario
              MessageDlg('Você já possue um perfil com este nome!' + #13 +
                         'Favor escolher outro!',mtInformation,[mbOk],0);
              //retorna para NomePer
              goto NomePer;
            end;

          //inseri registro na tabela de perfil no operador
          DBGenerica(DTM_A013UTAU.DTS_055,'Conexao',1,0,nil);
          FieldByName('nidtbl_op').asInteger := 0;
          FieldByName('cnomeper').asString := cNomePer;
          FieldByName('nidtbl_u').asInteger := nMatricula;
          //grava o novo perfil
          DBGenerica(DTM_A013UTAU.DTS_055,'Conexao',4,1,nil);
          Refresh;
          //localiza a id do novo perfil
          Locate('cnomeper;nidtbl_u',VarArrayOf([cNomePer,nMatricula]),[]);

          //passa a id do novo perfil para o combo
          DLC_CNOMEPER.KeyValue := FieldByName('nidtbl_op').AsInteger;
          //atualiza as informaçõe na lista
          AtualizaLista;

        end;
    end;
  //se não houver perfil criado
  if DTM_A013UTAU.QRY_055.IsEmpty then
    begin
      //desabilida os botões
      Botoes(['Btn_Alterar','Btn_Cancelar','Btn_Gravar','Btn_Excluir','Btn_UsuAper','Btn_AltPer'],'FRM_A013UTAU',False);
      Btn_AltPer.enabled := false;
    end
  else
    begin
      //habilita botões
      Botoes(['Btn_Cancelar','Btn_Gravar'],'FRM_A013UTAU',False);
      Btn_AltPer.enabled := true;
    end;


end;

procedure TFRM_A013UTAU.AlimentaLista;
var
  Aplicacao : TAplicacao;
begin
  with STRGRD_APLUSU,DTM_A013UTAU do
    begin
      //pega a id do perfil atual
      QRY_058.ParamByName('nidtbl_op').asInteger :=
      QRY_055.FieldByName('nidtbl_op').asInteger;
      //busca as aplicações do perfil atual
      QRY_058.ExecSQL;
      Cells[0,0] := ' Aplicações';
      //posiciona no primeiro registro dos perfis do sistema
      QRY_056.First;
      //loop dos perfis do sistema
      while not(QRY_056.Eof) do
        begin
          //se o registro passou da segunda posição
          if QRY_056.RecNo > 1 then
            //adiciona linha no stringgrid
            RowCount := RowCount + 1;
          //coloca a descrição do perfil no stringgrid
          Cells[0,RowCount-1] := ' ' + QRY_056.FieldByName('cnomeper').asString;

          //filtra as aplicações que o usuario tem acesso
          //que pertecem ao perfil
          QRY_APLICUSU.Filtered := false;
          QRY_APLICUSU.Filter := 'nidtbl_pb = ' + QRY_056.FieldByName('nidtbl_pb').asString;
          QRY_APLICUSU.Filtered := true;

          QRY_APLICUSU.First;
          //loop nas aplicações que o operador tem acesso
          while not(QRY_APLICUSU.Eof) do
            begin
              //adiciona linha na stringgrid
              RowCount := RowCount + 1;

              //se já houver algum objeto criado para a lista
              if Rows[RowCount - 1].Objects[0] <> nil then
                begin
                  //limpa a descrição da aplicação
                  Cells[0,RowCount - 1] := '';
                  //retira o objeto da memoria
                  Rows[RowCount - 1].Objects[0].Free;
                end;
              //cria o objeto aplicacão
              Aplicacao := TAplicacao.Create;
              Aplicacao.nIdAplicacao := QRY_APLICUSU.FieldByName('nidtbl_a').asInteger;
              Aplicacao.nIdOpa := 0;
              Aplicacao.nIdEqv := QRY_APLICUSU.FieldByName('nidtbl_opa').asInteger;
              Aplicacao.nIdUa := QRY_APLICUSU.FieldByName('nidtbl_ua').asInteger; ;

              //coloca a descrição da aplicacão no stringgrid
              Cells[0,RowCount - 1] := '      ' + QRY_APLICUSU.FieldByName('cdescapli').asstring;

              //se o perfil do operador possue a aplicação
              if QRY_058.Locate('nidtbl_a',QRY_APLICUSU.FieldByName('nidtbl_a').asstring,[]) then
                begin
                  //pega a id da aplicação no perfil do operador
                  Aplicacao.nIdOpa := QRY_058.FieldByName('nidtbl_opa').asInteger;
                  //marca a aplicação como checada
                  Aplicacao.Checked := true;
                  //atualiza o valor anterior
                  Aplicacao.OldChecked := true
                end;
              //proxima aplicação
              QRY_APLICUSU.Next;

              //passa o objeto para a linha do stringgrid
              Rows[RowCount - 1].Objects[0] := Aplicacao;

            end;
          //proximo perfil
          QRY_056.Next;
        end;
      //seleciona a segunda linha do stirnggrid
      Row := 2;
      //retira o filtro das aplicações do operador
      QRY_APLICUSU.Filtered := false;
      QRY_APLICUSU.Filter := '';
    end;



end;

procedure TFRM_A013UTAU.STRGRD_APLUSUDrawCell(Sender: TObject; ACol,
  ARow: Integer; Rect: TRect; State: TGridDrawState);
begin
  with STRGRD_APLUSU do
    begin
      //se a celula não estiver em branco
      if Cells[ACol,ARow] <> '' then
        //se for linha do grupo das aplicações
        if Cells[ACol,ARow][2] <> ' ' then
          begin
            //se não for o titulo da grid
            if ARow <> 0 then
              begin
                Canvas.FillRect(Rect);
                Canvas.Font.Style := Canvas.Font.Style + [fsBold];
                Canvas.Brush.Color := $00E9E9D1;
                Canvas.TextRect(Rect,Rect.Left,Rect.Top + 2 ,Cells[ACol,ARow]);
              end;
          end
        else
          if ACol = 0 then
            begin
              Canvas.FillRect(Rect);
              //desenha o texto na grid
              Canvas.TextRect(Rect,Rect.Left + 18,Rect.Top + 3,Cells[ACol,ARow]);
              //desenha figura na grid
              ImgList.Draw(Canvas,Rect.Left + 15,Rect.Top + 2,0);
              //se o perfil possue a aplicação
              if TAplicacao(Rows[ARow].Objects[0]).Checked then
                ImgList.Draw(Canvas,Rect.Left + 15,Rect.Top + 2,2);


            end;
    end;
end;

procedure TFRM_A013UTAU.STRGRD_APLUSUSelectCell(Sender: TObject; ACol,
  ARow: Integer; var CanSelect: Boolean);
begin
  //não seleciona as linhas que são de grupo de aplicações
  with STRGRD_APLUSU do
    begin
      if Cells[ACol,ARow] <> '' then
        if Cells[ACol,ARow][2] <> ' ' then
          begin
            if ARow = 1 then
              begin
                CanSelect := false;
                exit;
              end;
            CanSelect := false;
            if Row > ARow then
              Row := ARow - 1
            else
              Row := ARow + 1;
          end;
    end;
end;

procedure TFRM_A013UTAU.AtualizaLista;
  var
    i : integer;
begin

  with STRGRD_APLUSU, DTM_A013UTAU do
    begin
      QRY_058.ParamByName('nidtbl_op').value :=
      DLC_CNOMEPER.KeyValue;
      QRY_058.ExecSQL;
      for i:= 0 to RowCount -1 do
        if Rows[i].Objects[0] <> nil then
          begin
            if QRY_058.Locate('nidtbl_a',TAplicacao(Rows[i].Objects[0]).nIdAplicacao,[]) then
              begin
                TAplicacao(Rows[i].Objects[0]).Checked := true;
                TAplicacao(Rows[i].Objects[0]).nIdOpa :=
                QRY_058.FieldByName('nidtbl_opa').asInteger;
              end
            else
              begin
                TAplicacao(Rows[i].Objects[0]).Checked := false;
                TAplicacao(Rows[i].Objects[0]).nIdOpa := 0;
              end;

            TAplicacao(Rows[i].Objects[0]).OldChecked :=
            TAplicacao(Rows[i].Objects[0]).Checked;
          end;
      STRGRD_APLUSU.Repaint;
    end;
end;

procedure TFRM_A013UTAU.DLC_CNOMEPER1CloseUp(Sender: TObject);
begin
   //atualiza a lista para o perfil escolhido
  AtualizaLista;
end;

procedure TFRM_A013UTAU.VerificaClickGrid(Linha: integer;
  Check: TtpCheck);
begin
  with STRGRD_APLUSU do
    begin
      //se a linha não possuir o objeto aplicacao
      if Rows[Linha].Objects[0] = nil then
        //sai da rotina
        exit;

      //se for tpTrue
      if Check = tpTrue then
        //coloca a aplicação como checada
        TAplicacao(Rows[Linha].Objects[0]).Checked := true
      else
        //se fro tpFalse
        if Check = tpFalse then
          //desmarca a aplicação
          TAplicacao(Rows[Linha].Objects[0]).Checked := false
        else
          //pega o valor inverso que a aplicação possue
          TAplicacao(Rows[Linha].Objects[0]).Checked := not(TAplicacao(Rows[Linha].Objects[0]).Checked);

      //se a aplicação foi seleciona
      if TAplicacao(Rows[Linha].Objects[0]).Checked then
        begin
          //se o perfil não possue a aplicação
          if not(TAplicacao(Rows[Linha].Objects[0]).OldChecked) then
           //coloca a aplicação em estado de inserção
            TAplicacao(Rows[Linha].Objects[0]).Update := ukInsert;
        end
      else
        //se o perfil possue a aplicação
        if TAplicacao(Rows[Linha].Objects[0]).OldChecked then
          //coloca a aplicação em estado de deleção
          TAplicacao(Rows[Linha].Objects[0]).Update := ukDelete;

    end;
end;

procedure TFRM_A013UTAU.STRGRD_APLUSUMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);

  var
    c,l : integer; //coluna,linha
begin
  with STRGRD_APLUSU,DTM_A013UTAU do
    begin
      //se foi clicado com o botão
      if Button = mbRight then
        begin
          //busca as aplicações que o operador tem acesso
          QRY_APLICUSU.ParamByName('codusu').asInteger := nMatricula;
          QRY_APLICUSU.ParamByName('orderapli').asInteger := 1;
          QRY_APLICUSU.ExecSql;
          //seleciona as aplicações
          QRY_TEMP.Refresh;
          //chama pesquisa de grid
          if ChamaPesqGrid(QRY_TEMP,nil,'cdescapli','Descrição da Aplicação') then
            //seleciona na grid a aplicação localizada na pesquisa
            Row := Cols[0].IndexOf('      ' + QRY_TEMP.FieldByName('cdescapli').asString);
          exit;
        end;

      if BTN_GRAVAR.Enabled then
        begin
          MouseToCell(X,Y,C,L);
          //verifica o item clicada pelo usuario
          VerificaClickGrid(l);
          STRGRD_APLUSU.Repaint;
        end;
    end;
end;

procedure TFRM_A013UTAU.Btn_ExcluirClick(Sender: TObject);
  var
    cAux : String;
begin
  with DTM_A013UTAU do
    begin
      //seleciona quandos usuarios usam o perfil
      QRY_EQV.ParamByName('nidtbl_op').value :=
      DLC_CNOMEPER.KeyValue;
      QRY_EQV.ExecSql;
      //se for maior que zero
      if QRY_EQV.FieldByName('total').asInteger > 0 then
        cAux := 'Existe ' + QRY_EQV.FieldByName('total').asString +
          ' usuários que utilizam o perfil como equivalencia!' + #13 +
          'Deseja deletar o perfil?'
      else
        cAux := 'Deseja deletar o perfil?';

      //pergunta ao usuario
      if MessageDlg(cAux,mtInformation,[mbYes,mbNo],0) = mrYes then
        begin
          //abre transação
          DMControle.Conexao.StartTransaction;
          try
            //remove perfil
            QRY_REMOVEPERFILOP.ParamByName('nidopperfil').asInteger :=
            DLC_CNOMEPER.KeyValue;
            QRY_REMOVEPERFILOP.ExecSql;
            //grava as informaçõe no banco
            DMControle.Conexao.Commit;
          except
            //se houve erro desfaz as alterações
            DMControle.Conexao.Rollback;
          end;
        end;

      QRY_055.Refresh;
      //se não existir mais perfil
      if QRY_055.IsEmpty then
        begin
          //desabilita os botões
          Botoes(['Btn_Alterar','Btn_Cancelar','Btn_Gravar','Btn_Excluir','Btn_UsuAper'],'FRM_A013UTAU',False);
          Btn_AltPer.Enabled := false;
          DLC_CNOMEPER.KeyValue := 0;
        end
      else
        begin
          //habilida os botões
          Botoes(['Btn_Cancelar','Btn_Gravar'],'FRM_A013UTAU',False);
          DLC_CNOMEPER.KeyValue :=
          QRY_055.FieldByName('nidtbl_op').value;
        end;

      AtualizaLista;
    end;
end;

procedure TFRM_A013UTAU.CancelaAltLista;
  var
    i : integer;
begin
  with STRGRD_APLUSU do
   begin
     for i:=0 to RowCount - 1 do
       if Rows[i].Objects[0] <> nil then
         begin
           TAplicacao(Rows[i].Objects[0]).Checked :=
           TAplicacao(Rows[i].Objects[0]).OldChecked;
           TAplicacao(Rows[i].Objects[0]).Update := Unassigned;
         end;
     STRGRD_APLUSU.Repaint;
   end;
end;

procedure TFRM_A013UTAU.GravaAlteracoes;
var
  i : integer;
begin

  with STRGRD_APLUSU,DTM_A013UTAU do
    begin
      DMControle.Conexao.StartTransaction;
      try
        //loop na linhas do string grid
        for i:=0 to RowCount - 1 do
          begin
            //se a linha não contiver objeto
            if Rows[i].Objects[0] = nil then
              //proxima linha
              continue;

            //com objeto aplicacao
            with TAplicacao(Rows[i].Objects[0]) do
              begin
                //se estiver checado e em estado de inserção
                if (Checked) and (Update =ukInsert) then
                  begin
                    //inseri a aplicação no perfil
                    QRY_INSERIAPLICPERFIL.ParamByName('nidusuario').asInteger:=
                    nMatricula;
                    QRY_INSERIAPLICPERFIL.ParamByName('nidopperfil').asInteger:=
                    DLC_CNOMEPER.KeyValue;
                    QRY_INSERIAPLICPERFIL.ParamByName('nidaplic').asInteger:=
                    nIdAplicacao;
                    QRY_INSERIAPLICPERFIL.ParamByName('napliceqv').asInteger :=
                    nIdEqv;
                    QRY_INSERIAPLICPERFIL.ExecSql;
                    //atualiza o valor antigo
                    OldChecked := Checked;

                    Update := Unassigned;
                  end
                else
                  //se não estiver checado e estiver em estado de deleção
                  if (not(Checked)) and (Update =ukDelete) then
                    begin
                      //remove a aplicação do perfil
                      QRY_REMOVEAPLICPERFIL.ParamByName('nidopperfil').asInteger :=
                      DLC_CNOMEPER.KeyValue;
                      QRY_REMOVEAPLICPERFIL.ParamByName('nidaplic').asInteger :=
                      nIdAplicacao;
                      QRY_REMOVEAPLICPERFIL.ParamByName('nidopa').asInteger :=
                      nIdOpa;
                      QRY_REMOVEAPLICPERFIL.ExecSql;
                      //atualiza o valor antigo
                      OldChecked := Checked;
                      Update := Unassigned;
                    end;

              end;
          end;
        //grava as informações no banco de dados
        DMControle.Conexao.Commit;
        //atualiza os objetos aplicacão
        AtualizaObjAplic;
      except
        {caso ocorra algum erro é avisado ao usuário e desfeitas as alterações
         aplicadas nesta transação, nas tabelas do bando de dados}
          on E : Exception do
            begin
              MessageDlg('Não foi possivel efetuar a gravação de todos os dados,'+#13+
                         'por isso está operação será cancelada para manter a integridade'+#13+
                         'dos seus dados!'+#13+'Erro: '+E.Message,mtError,[mbOk],0);
              DMControle.Conexao.RollBack;
              Btn_CancelarClick(Btn_Cancelar);
            end;

      end;
    end;
end;

procedure TFRM_A013UTAU.AtualizaObjAplic;
  var
    i : integer;
begin
  with STRGRD_APLUSU,DTM_A013UTAU do
    begin
      QRY_058.Refresh;
      for i:=0 to RowCount -1 do
        if Rows[i].Objects[0] <> nil then
          if TAplicacao(Rows[i].Objects[0]).Checked then
            begin
              QRY_058.Locate('nidtbl_a',TAplicacao(Rows[i].Objects[0]).nIdAplicacao,[]);
              TAplicacao(Rows[i].Objects[0]).nIdOpa :=
              QRY_058.FieldByName('nidtbl_opa').asInteger;
            end;

    end;
end;

procedure TFRM_A013UTAU.BTN_USUAPERClick(Sender: TObject);
begin
//mostra os usuarios que usam o perfil
  Application.CreateForm(TFRM_A014UTAU,FRM_A014UTAU);
  Application.CreateForm(TDTM_A014UTAU,DTM_A014UTAU);
  FRM_A014UTAU.nIdPerfil := DLC_CNOMEPER.KeyValue;
  oControlForms.AtivaForm('FRM_A014UTAU',shModal,NIL,false);
end;

procedure TFRM_A013UTAU.STRGRD_APLUSUDblClick(Sender: TObject);
 var
   nRow : integer;
   nAcao : Integer;
begin
  if (not(Btn_Gravar.Enabled)) and (not(Btn_Alterar.Enabled)) then
    exit;
  //se estiver em estado de browser
  if not(Btn_Gravar.Enabled) then
    begin

      Application.CreateForm(TDTM_A015UTAU,DTM_A015UTAU);
      Application.CreateForm(TFRM_A015UTAU,FRM_A015UTAU);

      with FRM_A015UTAU, STRGRD_APLUSU do
        begin
          //passa a id da aplicacao
          nIdAplicacao := TAplicacao(Rows[Row].Objects[0]).nIdAplicacao;
          //passa a id da aplicação no perfil
          nIdOpa := TAplicacao(Rows[Row].Objects[0]).nIdOpa;
          //passa o valor da aplicacao usuario
          nIdUa := TAplicacao(Rows[Row].Objects[0]).nIdUa;
          //passa o valor do perfil atual
          nIdOpPerfil := DLC_CNOMEPER.KeyValue;
          //indica se a aplicação esta checada
          AplicCheck := TAplicacao(Rows[Row].Objects[0]).Checked;
          AcaoUsu := @nAcao;
          //passa a id da aplicação na equivalencia
          nIdEqv := TAplicacao(Rows[Row].Objects[0]).nIdEqv;
          //passa o titulo da aplicacao
          cNomeAplic := Rows[Row].Strings[0];
          //chama o aplicativo de permissoes nas ações
          oControlForms.AtivaForm('FRM_A015UTAU',shModal,nil,false);
          if nAcao = mrOk then
            begin
              //guarda a linha atual do grid
              nRow := Row;
              //limpa a lista
              RowCount := 2;
              //refaz a lista
              AlimentaLista;
              //retorna na na linha que se encontrava
              Row := nRow;
            end;

        end;

    end;

end;

procedure TFRM_A013UTAU.BTN_ALTPERClick(Sender: TObject);
  var
    cNomePer : String;
    Label NomePer;
begin
  with DTM_A013UTAU do
    begin
      cNomePer := DLC_CNOMEPER.Text;
      NomePer:
      if InputQuery('Alteração Nome Perfil','Nome Perfil',cNomePer) then
        begin
          cNomePer := UpperCase(cNomePer);
          if Length(cNomePer) > 15 then
            begin
              MessageDlg('Nome do Perfil pode possuir no máximo 15 caracteres!' + #13 +
                         'Favor escolher outro!',mtInformation,[mbOk],0);
              goto NomePer;
            end;
          if QRY_055.Locate('cnomeper;nidtbl_u',VarArrayOf([cNomePer,nMatricula]),[]) then
            begin
              MessageDlg('Você já possue um perfil com este nome!' + #13 +
                         'Favor escolher outro!',mtInformation,[mbOk],0);
              goto NomePer;
            end;

          QRY_055.Locate('nidtbl_op',DLC_CNOMEPER.KeyValue,[]);

          //altera o perfil para o novo nome
          DBGenerica(DTS_055,'Conexao',2,0,nil);
          DTS_055.DataSet.FieldByName('cnomeper').asString := cNomePer;
          DBGenerica(DTM_A013UTAU.DTS_055,'Conexao',4,1,nil);
          QRY_055.FieldByName('nidtbl_op').asInteger;
          DLC_CNOMEPER.ResetField;
          DLC_CNOMEPER.KeyValue := QRY_055.FieldByName('nidtbl_op').asInteger;
          DLC_CNOMEPER.Refresh;
          AtualizaLista;

        end;



    end;
end;

procedure TFRM_A013UTAU.ChangeColor(Sender: TObject; MSG: Integer);
begin
  If Sender is TLMDStaticText Then
  begin
    If (Msg = CM_MOUSELEAVE) Then
      (Sender as TLMDStaticText).Font.Color:=clWindowText;
    If (Msg = CM_MOUSEENTER) Then
      (Sender as TLMDStaticText).Font.Color:=clBlue;
  end;

end;

procedure TFRM_A013UTAU.WndProc(var Msg: TMessage);
var I : Integer;
begin
   For I := 0 to ComponentCount -1 do
      If MSG.LParam = Longint(Components[I]) Then ChangeColor(Components[i],Msg.Msg);
   inherited WndProc(Msg);
end;

procedure TFRM_A013UTAU.LMDStaticText1Click(Sender: TObject);
  var
     i : integer;
begin
  if BTN_GRAVAR.Enabled then
    begin
      for i:=0 to STRGRD_APLUSU.RowCount - 1 do
        VerificaClickGrid(i,tpTrue);
      STRGRD_APLUSU.Repaint;
    end;

end;

procedure TFRM_A013UTAU.LMDStaticText2Click(Sender: TObject);
  var
     i : integer;
begin
  if BTN_GRAVAR.Enabled then
    begin
      for i:=0 to STRGRD_APLUSU.RowCount - 1 do
        VerificaClickGrid(i,tpFalse);
      STRGRD_APLUSU.Repaint;
    end;

end;
end.
