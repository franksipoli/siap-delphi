{*******************************************************************************
 *                                                                             *
 *  Acesso de Usuario                                                          *
 *  Aplicação para controle de acesso de usuario                               *
 *                                                                             *
 *  Data da Criação : 13/04/2004                                               *
 *  Programador Leandro Ribas                                                  *
 *  Data Finalização : 00/00/2000                                              *
 *                                                                             *
 *  Data da Ultima Atualização :19/06/2004                                     *
 *  Atualizado por: Leandro Ribas                                              *
 *  Motivo : Inclusão de check nos grupos das aplicações                       *
 *******************************************************************************
}

unit A011UTAU;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Grids, Buttons, ExtCtrls, ImgList, LMDCustomControl, LMDCustomPanel,
  LMDCustomBevelPanel, LMDCustomParentPanel, LMDCustomGroupBox, LMDGroupBox, DB,
  StdCtrls, MemDS, DBAccess, Ora, Contnrs;

type
  //objeto grupo das aplicações
  TGrupo = class
    nIdGrupo : integer;
    Checked : Boolean;
    OldChecked : Boolean;
    ImcChecked : Boolean;

    protected
      FItemsSelect : integer;
      FListaItems  : TObjectList;
      FItemsCount  : integer;
      procedure SetItemSelect(Quant : Integer);
      procedure SetItemCount(Quant : Integer);
      function GetAlter: Boolean;
    public
      constructor Create;overload;
      destructor Destroy;override;
      procedure CheckItems(State : Boolean);

    published
      property ItemsSelect:integer read FItemsSelect write SetItemSelect;
      property ItemsCount : integer read FItemsCount write SetItemCount;
      property Alter : Boolean read GetAlter;
  end;

  //classe que contem informações da aplicação que o operador tem acesso
  TAplicacao = class
    nIdAplicacao   : Integer;
    cUnit          : String;
    nIdPerfilBase  : Integer;
    Update         : TUpdateKind;
    cUsuAutor      : String;
    nIdOpa         : Integer;
    nIdOpaOperador : Integer;
    Alter          : Boolean;
    Linha          : Integer;
    Coluna         : Integer;
    protected
      FGrupo      : TGrupo;
      FChecked    : boolean;
      FOldChecked : Boolean;
      procedure SetGrupo(Grupo : TGrupo);
      procedure SetChecked(lChecked : Boolean);
    public
      destructor Destroy; override;
    published
      property Grupo : TGrupo read FGrupo write SetGrupo;
      property Checked : Boolean read FChecked write SetChecked;
      property OldChecked : Boolean read FOldChecked write FOldChecked;

  end;

 TtpCheck = (tpTrue,tpFalse,tpDefault);

  TFRM_A011UTAU = class(TForm)
    Panel2: TPanel;
    BTN_EQUIVALE: TSpeedButton;
    BTN_IMPRIMIR: TSpeedButton;
    BTN_SAIR: TSpeedButton;
    BTN_CAMPOS: TSpeedButton;
    BTN_ALTERAR: TSpeedButton;
    BTN_GRAVAR: TSpeedButton;
    BTN_CANCELAR: TSpeedButton;
    ImgList: TImageList;
    GRB_ENDEREC: TLMDGroupBox;
    STRGRD_APLUSU: TStringGrid;
    STT_SELTODOS: TStaticText;
    STT_DESTODOS: TStaticText;
    QRY_DELETAAPLUSU: TOraQuery;
    QRY_INSERIAPLUSU: TOraQuery;
    PNL_AVISO: TPanel;
    procedure BTN_SAIRClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure STRGRD_APLUSUDrawCell(Sender: TObject; ACol, ARow: Integer;
      Rect: TRect; State: TGridDrawState);
    procedure STRGRD_APLUSUSelectCell(Sender: TObject; ACol, ARow: Integer;
      var CanSelect: Boolean);
    procedure STRGRD_APLUSUMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure BTN_ALTERARClick(Sender: TObject);
    procedure BTN_GRAVARClick(Sender: TObject);
    procedure BTN_CANCELARClick(Sender: TObject);
    procedure STRGRD_APLUSUDblClick(Sender: TObject);
    procedure STT_SELTODOSClick(Sender: TObject);
    procedure STT_DESTODOSClick(Sender: TObject);
    procedure BTN_EQUIVALEClick(Sender: TObject);
    procedure BTN_CAMPOSClick(Sender: TObject);
  private
    { Private declarations }
    procedure ChangeColor(Sender : TObject; MSG : Integer);
    procedure WndProc(Var Msg : TMessage);override;
  public
    { Public declarations }
    nIdOperador : Integer;//id operador do sistema
    nIdUsuario : Integer;// id do usuario que esta sendo visto o acesso
    cNmUsu : String;//nome do usuario
    UsuarioAdmin : Boolean;//indica se o usuario que esta sendo visto o acesso e um usuario admin

    //alimenta o grid com as informações dos acessos
    procedure AlimentaStringGrid;
    //verifica se a aplicação e de equivalencia, se for
    //retorna o nome do usuario-perfil
    function PerfilEquivalencia(nIdOp: Integer): String;

    //
    //procedure VerificaChamadaBotoes(Usu: Integer; Aplic : String; Tipo : TUpdateKind);

    //verifica se as aplicações do usuario possue algum botão que
    //chama alguma aplicação que o usuario não tem acesso
    procedure VerificaBotoesChamadores;

    //atualiza os objetos TAplicacao
    procedure AtualizaObjAplic;

    //retorna no nome do usuario, atraves de sua ID
    function RetornaUsuario(nUsuario : Integer):String;

    //Verifica condições do item clicado pelo operador
    procedure VerificaClickGrid(Linha, Coluna: integer; Meng : Boolean = true; Check : TtpCheck = tpDefault);

    //
    function RetornaUsuarioAutEqv(nIdEqv: Integer): String;

    //libera os objetos instanciados que estão associado a stringgrid
    procedure LiberaObjLista;

  end;

var
  FRM_A011UTAU: TFRM_A011UTAU;

implementation

uses MPLCtrl, UVariaveis, D011UTAU, DMCTRL, A012UTAU, CtrlForms, D012UTAU,
  A006UTAU, D006UTAU, A007UTAU, D007UTAU, A017UTAU, D017UTAU;

{$R *.DFM}

procedure TFRM_A011UTAU.AlimentaStringGrid;
  var
    Aplicacao : TAplicacao;
    Grupo : TGrupo;
begin
  with STRGRD_APLUSU, DTM_A011UTAU do
    begin
      Cells[0,0] := ' Aplicações';
      Cells[1,0] := ' Equivalencia';
      Cells[2,0] := ' Autorizado por';
      QRY_056.First;
      //loop nos grupos de aplicação que o operador tem acesso
      while not(QRY_056.Eof) do
        begin


          //se não for o primeiro registro da tabela
          //inclui mas um linha no string grid
          if QRY_056.RecNo > 1 then
            RowCount := RowCount + 1;

          //cria o objeto grupo
          Grupo := TGrupo.Create;
          Rows[RowCount - 1].Objects[0] := Grupo;


          //pega o nome do perfil base
          Cells[0,RowCount - 1] := ' ' + QRY_056.FieldByName('cnomeper').asString;
          Cells[1,RowCount - 1] := ' ';
          Cells[2,RowCount - 1] := ' ';


          //filtra as aplicações do grupo
          QRY_APLOPERADOR.Filtered := false;
          QRY_APLOPERADOR.Filter := 'nidtbl_pb = ' + QRY_056.FieldByName('nidtbl_pb').asString;
          QRY_APLOPERADOR.Filtered := true;

          QRY_APLOPERADOR.First;

          //loop nas aplicações que o operador tem acesso
          while not(QRY_APLOPERADOR.Eof) do
            begin
              //cria o objeto aplicacao
              Aplicacao := TAplicacao.Create;
              Aplicacao.Grupo := Grupo;
              Aplicacao.nIdAplicacao := QRY_APLOPERADOR.FieldByName('nidtbl_a').asInteger;
              Aplicacao.cUnit := QRY_APLOPERADOR.FieldByName('cnomeunit').asString;
              Aplicacao.nIdPerfilBase :=  QRY_APLOPERADOR.FieldByName('nidtbl_pb').asInteger;
              //Aplicacao.Checked := false;
              //Aplicacao.OldChecked := false;
              Aplicacao.nIdOpaOperador := QRY_APLOPERADOR.FieldByName('nidtbl_opa').asInteger;;
              Aplicacao.Alter := true;

              //inclui uma linha no string grid para a aplicacao
              RowCount := RowCount + 1;

              Aplicacao.Linha := RowCount - 1;
              Aplicacao.Coluna := 0;

              Cells[0,RowCount - 1] := '';
              Cells[1,RowCount - 1] := '';
              Cells[2,RowCount - 1] := '';

              //coloca o nome da aplicacao na coluna do string grid
              Cells[0,RowCount - 1] := '      ' + QRY_APLOPERADOR.FieldByName('cdescapli').asString;

              //se o usario tem acesso a aplicação
              if QRY_APLUSUARIO.Locate('nidtbl_a',QRY_APLOPERADOR.FieldByName('nidtbl_a').asInteger,[]) then
                begin
                  Cells[1,RowCount-1] := '  ' ;
                  //mostra o nome do usuario que autorizou
                  Cells[2,RowCount-1] := '  ' + RetornaUsuario(QRY_APLUSUARIO.FieldByName('nidtbl_u').asInteger);
                  //verifica se a aplicação é de equivalencia
                  if QRY_APLUSUARIO.FieldByName('napliceqv').asInteger = 1 then
                    begin
                      Cells[1,RowCount-1] := Cells[1,RowCount-1] + PerfilEquivalencia(QRY_APLUSUARIO.FieldByName('nidtbl_op').asInteger);
                      Aplicacao.nIdOpa := QRY_APLUSUARIO.FieldByName('nidtbl_opa').asInteger;
                      Aplicacao.Alter := false;
                    end
                  else
                    //se quem autorizou a aplicação for diferente do operador logado e o operador
                    //não for admin ou o usuario que esta se vendo o acesso for um admin
                    //o objeto aplicacao não pode ser alterado
                    Aplicacao.Alter := not( ((Trim(Cells[2,RowCount-1]) <> cNomeUsuario) and (not(isAdmin)))
                      or (UsuarioAdmin) );



                  Aplicacao.cUsuAutor := Cells[2,RowCount-1];
                  Aplicacao.Checked := true;
                  Aplicacao.OldChecked := true;
                end;

              //associa o objeto aplicacao a linha do string grid
              Rows[RowCount - 1].Objects[0] := Aplicacao;

              QRY_APLOPERADOR.Next;
            end;

          QRY_056.Next;
        end;
     //retira o filtro das aplicacoes
     QRY_APLOPERADOR.Filtered := false;
     QRY_APLOPERADOR.Filter := '';
    end;
end;

function TFRM_A011UTAU.PerfilEquivalencia(nIdOp: Integer): String;
begin
  with DTM_A011UTAU do
    begin
      QRY_055.ParamByName('nidtbl_op').asInteger := nIdOp;
      QRY_055.ExecSQL;
      //retorna de qual perfil o aplicação pertence
      Result := QRY_055.FieldByName('cnomeper').asString;
    end;
end;

procedure TFRM_A011UTAU.BTN_SAIRClick(Sender: TObject);
begin
  close;
end;

procedure TFRM_A011UTAU.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  //tratamento de saida do form
  Action := oControlForms.Saidas(Self,[DTM_A011UTAU],nil);
end;

procedure TFRM_A011UTAU.FormShow(Sender: TObject);
begin
  if Acesso(nMatricula,'A011UTAU',DTM_A011UTAU) then
    Close;

 Caption := 'Acessos do Usuário - ' + cNmUsu;//titulo do caption passado

 with DTM_A011UTAU do
   begin
     //pega as aplicações do usuario
     QRY_APLUSUARIO.ParamByName('nidtbl_u').asInteger := nIdUsuario;
     QRY_APLUSUARIO.ExecSQL;

     //pega as aplicações do operador
     QRY_APLOPERADOR.ParamByName('nidtbl_u').asInteger := nIdOperador;
     QRY_APLOPERADOR.ExecSQL;

     //pega os perfis base que o operador tem acesso
     QRY_056.ExecSQL;

     //pega os perfis do usuario
     //QRY_055_01.ParamByName('nidtbl_u').asInteger := nIdUsuario;
     //QRY_055_01.ExecSQL;

     //pega as aplicações do usuario
     QRY_052.ParamByName('nidtbl_u').asInteger := nIdUsuario;
     QRY_052.ExecSQL;

     //pega as aplicações que estão na tabela temporaria
     QRY_TMP.ExecSQL;

   end;



 //preenche o stringgrid
 AlimentaStringGrid;

 //seleciona a segunda linha
 STRGRD_APLUSU.Row := 2;

 //muda o estado dos botões
 Botoes(['BTN_GRAVAR','BTN_CANCELAR'],'FRM_A011UTAU',false);

 if (UsuarioAdmin) or (nMatricula = nIdUsuario) then
   begin
     BTN_ALTERAR.Enabled := false;
     BTN_GRAVAR.Enabled := false;
     BTN_CANCELAR.Enabled := false;
     BTN_EQUIVALE.Enabled := false;
     BTN_CAMPOS.Enabled := false;
     BTN_IMPRIMIR.Enabled := false;
   end;

 FRM_A011UTAU.OnShow := nil;
 {é atribuido ao OnShow do Form o valor nil para que o mesmo seja executado apenas uma vez}
 {pelo fato que se outra aplicação for chamada pela tecla F3, e ao retornar da aplicação que foi chamada pela tecla}
 {o evento OnShow deste form não acontecerá, ou seja não será executado, para permanecer o mesmo status da aplicação}
 {quando o F3 foi chamado}

end;

procedure TFRM_A011UTAU.STRGRD_APLUSUDrawCell(Sender: TObject; ACol,
  ARow: Integer; Rect: TRect; State: TGridDrawState);

begin
  with STRGRD_APLUSU do
    begin
      //se a celula não estiver em branco
      if (Cells[ACol,ARow] <> '') and (Rows[ARow].objects[0] <> nil) then
        //se for linha do grupo das aplicações
        if Rows[ARow].objects[0] is TGrupo then
          begin
            Canvas.FillRect(Rect);
            Canvas.Font.Style := Canvas.Font.Style + [fsBold];
            Canvas.Brush.Color := $00E9E9D1;
            Canvas.TextRect(Rect,Rect.Left + 17,Rect.Top + 2 ,Cells[ACol,ARow]);
            if ACol = 0 then
              begin
                //desenha caixa de check do grupo
                ImgList.Draw(Canvas,Rect.Left + 3,Rect.Top + 2,0);

                if TGrupo(Rows[ARow].Objects[0]).Checked then
                  if TGrupo(Rows[ARow].Objects[0]).Alter then
                    //desenha o check na caixa
                    ImgList.Draw(Canvas,Rect.Left + 3,Rect.Top + 2,2)
                  else
                    ImgList.Draw(Canvas,Rect.Left + 3,Rect.Top + 2,5)
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
              //se o usuario tem acesso a aplicação
              if TAplicacao(Rows[ARow].Objects[0]).Checked then
                //se quem autorizou a aplicação for diferente do operador e o operador não for adimin
                //ou não for aplicação de equivalencia
                {if ((Trim(Cells[2,ARow]) <> '') and
                   (Trim(Cells[2,ARow]) <> cNomeUsuario) and
                   (not(isAdmin))) or
                   (Trim(Cells[1,ARow]) <> '') or (UsuarioAdmin) then}

                //se a aplicaçãon não pode ser alterada
                if not(TAplicacao(Rows[ARow].Objects[0]).Alter) then
                  ImgList.Draw(Canvas,Rect.Left + 15,Rect.Top + 2,5)
                else
                  ImgList.Draw(Canvas,Rect.Left + 15,Rect.Top + 2,2);


            end;
    end;
end;

procedure TFRM_A011UTAU.STRGRD_APLUSUSelectCell(Sender: TObject; ACol,
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

procedure TFRM_A011UTAU.STRGRD_APLUSUMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);

 var
   l,c : integer;//linha,coluna
   i : integer;
   TipoCheck : TtpCheck;
begin
  with STRGRD_APLUSU, DTM_A011UTAU do
    begin
      //se o usuario clicou com o botão direito do mouse
      //chama a pesquisa de grid
      if Button = mbRight then
        begin
          QRY_APLOPERADOR.ExecSql;
          QRY_TMP.Refresh;
          if ChamaPesqGrid(QRY_TMP,nil,'cdescapli','Descrição da Aplicação') then
            //seleciona na grid a aplicação localizada na pesquisa
            Row := Cols[0].IndexOf('      ' + QRY_TMP.FieldByName('cdescapli').asString);
          exit;
        end;
      //se estiver habilidado para gravar
      if BTN_GRAVAR.Enabled then
        begin
          MouseToCell(X,Y,C,L);
          //se selecionou grupo
          if Rows[l].Objects[0] is TGrupo then
            begin
              //se o grupo pode ser alterado
              if TGrupo(Rows[l].Objects[0]).Alter then
                begin
                  TGrupo(Rows[l].Objects[0]).Checked := not(TGrupo(Rows[l].Objects[0]).Checked);

                  if TGrupo(Rows[l].Objects[0]).Checked then
                    TipoCheck := tpTrue
                  else
                    TipoCheck := tpFalse;
                  for i :=0 to TGrupo(Rows[l].Objects[0]).FListaItems.Count - 1 do
                    VerificaClickGrid(TAplicacao(TGrupo(Rows[l].Objects[0]).FListaItems[i]).Linha,
                                      TAplicacao(TGrupo(Rows[l].Objects[0]).FListaItems[i]).Coluna,
                                      false,TipoCheck);
                end;
            end
          else
            //verifica o item clicada pelo usuario
            VerificaClickGrid(l,c);
          STRGRD_APLUSU.Repaint;
        end;
    end;
end;

procedure TFRM_A011UTAU.BTN_ALTERARClick(Sender: TObject);
begin
  //muda o estado dos botões
  Botoes(['BTN_GRAVAR','BTN_CANCELAR'],'FRM_A011UTAU',true);
end;

procedure TFRM_A011UTAU.BTN_GRAVARClick(Sender: TObject);
  var
    i : integer;

begin
  with DTM_A011UTAU do
    begin
      if MessageDlg('Deseja Salvar Alterações?',mtConfirmation,[mbYes,mbNo],0) = mrYes then
        begin
          PNL_AVISO.visible := true;
          Repaint;
          //inicia transação
          DMControle.Conexao.StartTransaction;
          try
            with STRGRD_APLUSU do
              begin

                for i := 0 to Cols[0].Count -1 do
                  //se contiver um objeto na linha da grid
                  if Rows[i].Objects[0] is TAplicacao then
                    with TAplicacao(Rows[i].Objects[0]) do
                      begin
                        //se a aplicação estiver checada e for uma inserção
                        if (Checked) and (Update = ukInsert) then
                          begin
                            QRY_INSERIAPLUSU.ParamByName('nidusuario').asInteger := nIdUsuario;
                            QRY_INSERIAPLUSU.ParamByName('nidoperador').asInteger := nIdOperador;
                            QRY_INSERIAPLUSU.ParamByName('nidaplic').asInteger := nIdAplicacao;
                            QRY_INSERIAPLUSU.ParamByName('cunit').asString := cUnit;
                            QRY_INSERIAPLUSU.ParamByName('nidopa').asInteger := nIdOpaOperador;
                            QRY_INSERIAPLUSU.ExecSQL;
                          end
                        else
                          //se não estiver checado e for uma deleção
                          if (not(Checked)) and (Update = ukDelete) then
                            //localiza a aplicação a ser deletada
                            if QRY_052.Locate('nidtbl_a',nIdAplicacao,[]) then
                              begin
                                //passa os parametros para a procedure de deleção de aplicação do
                                //acesso do usuario
                                QRY_DELETAAPLUSU.ParamByName('nidusuario').asInteger := nIdUsuario;
                                QRY_DELETAAPLUSU.ParamByName('nidoperador').asInteger := nIdOperador;
                                QRY_DELETAAPLUSU.ParamByName('nidaplic').asInteger :=
                                QRY_052.FieldByName('nidtbl_a').asInteger;
                                QRY_DELETAAPLUSU.ParamByName('cunit').asString :=
                                QRY_052.FieldByName('cnomeunit').asString;
                                QRY_DELETAAPLUSU.ParamByName('nidua').asInteger :=
                                QRY_052.FieldByName('nidtbl_ua').asInteger;
                                QRY_DELETAAPLUSU.ExecSQL;

                                QRY_052.Refresh;

                              end;

                      end;
              end;

            //verifica se existe algum botão nas aplicações do
            //usuario que chama alguma aplicação que o usuario não tem
            //acesso
            //VerificaBotoesChamadores;
            //deleta perfil-usuario não mais usados pelo sistema
{            DeletaPerfisNaoUsados;}
            //atualiza os objetos TAplicacao
            AtualizaObjAplic;
            //comita as informções no banco de dados
            DMControle.Conexao.Commit;
            //pega o novo acesso do usuario
            QRY_APLUSUARIO.ExecSQL;
            //busca as aplicações do operador
            QRY_APLOPERADOR.ExecSQL;
            //busca os perfis base do operador
            QRY_056.ExecSql;
            //busca as aplicaçoes do usuario
            QRY_052.ExecSql;
            //busca os perfis do usuario
            //QRY_055_01.Refresh;
            PNL_AVISO.visible := false;
            //altera o estado dos botões
            Botoes(['BTN_GRAVAR','BTN_CANCELAR'],'FRM_A011UTAU',false);
          except
            //caso ocorra algum erro, desfaz as alterações no banco de dados
            PNL_AVISO.visible := false;
            DMControle.Conexao.Rollback;
          end;
        end;
    end;
end;

procedure TFRM_A011UTAU.BTN_CANCELARClick(Sender: TObject);
  var
    i : integer;

begin
 //muda o estado dos botões
 Botoes(['BTN_GRAVAR','BTN_CANCELAR'],'FRM_A011UTAU',false);

 //retorna os objetos aplicacao ao seu estado original
 with STRGRD_APLUSU do
   begin
     for i := 0 to Cols[0].Count - 1 do
       if Rows[i].Objects[0] <> nil then
         if Rows[i].Objects[0] is TGrupo then
           TGrupo(Rows[i].Objects[0]).Checked :=
           TGrupo(Rows[i].Objects[0]).OldChecked
         else
           begin
             TAplicacao(Rows[i].Objects[0]).Checked :=
             TAplicacao(Rows[i].Objects[0]).OldChecked;
             Rows[i].Strings[2] := TAplicacao(Rows[i].Objects[0]).cUsuAutor;
             TAplicacao(Rows[i].Objects[0]).Update := Unassigned ;
           end;
     Repaint;
   end;
end;



{procedure TFRM_A011UTAU.VerificaChamadaBotoes(Usu: Integer; Aplic: String;
  Tipo: TUpdateKind);
begin

  if Tipo = ukInsert then
    begin
      //retira da tabela de usuario/aplicacao/objeto os objetos que
      //chamam a aplicação para o usuário atual.
      //Ou seja libera o acesso ao botão para o usuário
      PrepareQryTemp('delete from tbl_uao where nidtbl_uao in ' +
                     '(select tbl_uao.nidtbl_uao from tbl_upa,tbl_uao,tbl_up ' +
                     'where tbl_up.nidtbl_u = '+ IntToStr(Usu) +
                     ' and tbl_upa.nidtbl_up = tbl_up.nidtbl_up and ' +
                     'tbl_uao.nidtbl_upa = tbl_upa.nidtbl_upa and ' +
                     'tbl_uao.nidtbl_o in ' +
                     '(select tbl_o.nidtbl_o from tbl_a, tbl_ao, tbl_o ' +
                     'where tbl_ao.nidtbl_a = tbl_a.nidtbl_a and ' +
                     'tbl_o.nidtbl_o = tbl_ao.nidtbl_o and tbl_o.cnomeunit = ' +
                     QuotedStr(Aplic) + '))');

     DMControle.QryTemp.Close;
     DMControle.QryTemp.SQL.Clear;

    end
  else
    if Tipo = ukDelete then
      begin
        //inseri na tabela de usuario/aplicação/objeto
        //das aplicações a qual o usuario tem acesso
        //os objetos que chamam a aplicação
        //que esta sendo deletada
        PrepareQryTemp('insert into tbl_uao( select tbl_o.nidtbl_o, '+ QuotedStr('0') + ' as nidtbl_uao, tbl_upa.nidtbl_upa,' +
                       QuotedStr('') + ' as cherdado,  ' + QuotedStr(IntToStr(nIdOperador)) + ' as nidtbl_u ' +
                       'from tbl_a, tbl_up, tbl_upa, tbl_ao, tbl_o ' +
                       'where tbl_up.nidtbl_u = ' + IntToStr(Usu) +
                       ' and tbl_upa.nidtbl_up = tbl_up.nidtbl_up and tbl_a.nidtbl_a = tbl_upa.nidtbl_a ' +
                       'and tbl_ao.nidtbl_a = tbl_a.nidtbl_a and tbl_o.nidtbl_o = tbl_ao.nidtbl_o ' +
                       'and tbl_o.cnomeunit = ' + QuotedStr(Aplic) + ')');
        DMControle.QryTemp.Close;
        DMControle.QryTemp.SQL.Clear;
      end;
end;}

procedure TFRM_A011UTAU.VerificaBotoesChamadores;
begin
  with DTM_A011UTAU do
    begin
      QRY_052.Refresh;
      QRY_052.First;
      while not(QRY_052.Eof) do
        begin
          //inseri na tabela usuario/aplicacao/objeto
          //os objetos das aplicações que o usuario tem
          //acesso e que esses objetos chamam aplicações
          //que o usuario não tem acesso.
          //Ou seja retira o acesso ao botao que faz chamada
          //a uma aplicação que o usuario não tem acesso.

          QRY_APLOPERADOR.Locate('nidtbl_a',QRY_052.FieldByName('nidtbl_a').asInteger,[]);

          VerificaObjetosAplicacao(QRY_052.FieldByName('nidtbl_upa').asInteger,
                                   QRY_APLOPERADOR.FieldByName('cnomeunit').asString,
                                   nIdUsuario,nIdOperador);
          QRY_052.Next;
        end;

    end;
end;

procedure TFRM_A011UTAU.AtualizaObjAplic;
  var
    i : integer;
begin
  //pega os valores atuais e passa para os objetos aplicacao
  for i := 0 to STRGRD_APLUSU.Cols[0].Count - 1 do
    if STRGRD_APLUSU.Rows[i].Objects[0] <> nil then
      if STRGRD_APLUSU.Rows[i].Objects[0] is TGrupo then
        TGrupo(STRGRD_APLUSU.Rows[i].Objects[0]).OldChecked :=
        TGrupo(STRGRD_APLUSU.Rows[i].Objects[0]).Checked
      else
        begin
          TAplicacao(STRGRD_APLUSU.Rows[i].Objects[0]).OldChecked :=
          TAplicacao(STRGRD_APLUSU.Rows[i].Objects[0]).Checked;
          TAplicacao(STRGRD_APLUSU.Rows[i].Objects[0]).cUsuAutor :=
          STRGRD_APLUSU.Rows[i].Strings[2];
          TAplicacao(STRGRD_APLUSU.Rows[i].Objects[0]).Update := Unassigned;
        end;

end;

function TFRM_A011UTAU.RetornaUsuario(nUsuario: Integer): String;
begin
  //seleciona o login do usuario atraves de sua ID
  PrepareQryTemp('select cnomeusu from tbl_u where nidtbl_u = ' +
                 IntToStr(nUsuario));
  Result := DMControle.QryTemp.FieldByName('cnomeusu').asString;
  DMControle.QryTemp.Close;
  DMControle.QryTemp.SQL.Clear;
end;

procedure TFRM_A011UTAU.STRGRD_APLUSUDblClick(Sender: TObject);
var
  nRow : integer;
  nAcao : Integer;
begin
  //se não estiver em estado de alteração
  if BTN_ALTERAR.Enabled then
    begin
      Application.CreateForm(TDTM_A012UTAU,DTM_A012UTAU);
      Application.CreateForm(TFRM_A012UTAU,FRM_A012UTAU);
      FRM_A012UTAU.EnabledEdit := ((Trim(STRGRD_APLUSU.Rows[STRGRD_APLUSU.Row].Strings[2]) = cNomeUsuario)
        or (isAdmin)) and (Trim(STRGRD_APLUSU.Rows[STRGRD_APLUSU.Row].Strings[1]) = '');
      FRM_A012UTAU.AplicacaoChecked := TAplicacao(STRGRD_APLUSU.Rows[STRGRD_APLUSU.Row].Objects[0]).Checked;
      FRM_A012UTAU.nIdAplicacao := TAplicacao(STRGRD_APLUSU.Rows[STRGRD_APLUSU.Row].Objects[0]).nIdAplicacao;
      FRM_A012UTAU.nIdOpa := 0;
      FRM_A012UTAU.nIdOpaOperador := 0;
      FRM_A012UTAU.nIdOpaOperador := TAplicacao(STRGRD_APLUSU.Rows[STRGRD_APLUSU.Row].Objects[0]).nIdOpaOperador;

      //se a aplicação é de equivalencia, passa o usuario que é dono do perfil
      //que é dado como equivalencia
      if TAplicacao(STRGRD_APLUSU.Rows[STRGRD_APLUSU.Row].Objects[0]).nIdOpa > 0 then
        FRM_A012UTAU.nIdOpa := TAplicacao(STRGRD_APLUSU.Rows[STRGRD_APLUSU.Row].Objects[0]).nIdOpa;

      FRM_A012UTAU.nIdUsuario := nIdUsuario;
      FRM_A012UTAU.cNmUsu := cNmUsu;
      DTM_A011UTAU.QRY_APLUSUARIO.Locate('nidtbl_a',
      TAplicacao(STRGRD_APLUSU.Rows[STRGRD_APLUSU.Row].Objects[0]).nIdAplicacao,[]);
      FRM_A012UTAU.nIdUa := DTM_A011UTAU.QRY_APLUSUARIO.FieldByName('nidtbl_ua').asInteger;
      FRM_A012UTAU.AcaoUsu := @nAcao;
      DTM_A011UTAU.QRY_APLOPERADOR.Locate('nidtbl_a',
      TAplicacao(STRGRD_APLUSU.Rows[STRGRD_APLUSU.Row].Objects[0]).nIdAplicacao,[]);
      FRM_A012UTAU.nIdUaOperador := DTM_A011UTAU.QRY_APLOPERADOR.FieldByName('nidtbl_ua').asInteger;
      FRM_A012UTAU.cDescAplic := Trim(STRGRD_APLUSU.Rows[STRGRD_APLUSU.Row].Strings[0]);
      oControlForms.AtivaForm('FRM_A012UTAU',shModal,nil,false);
      //se o operador confirmou as alterações
      if nAcao = mrOk then
        begin
          DTM_A011UTAU.QRY_APLUSUARIO.ExecSql;
          DTM_A011UTAU.QRY_APLOPERADOR.ExecSql;
          DTM_A011UTAU.QRY_056.ExecSql;
          DTM_A011UTAU.QRY_052.ExecSql;
          nRow := STRGRD_APLUSU.Row;
          LiberaObjLista;
          STRGRD_APLUSU.RowCount := 2;
          AlimentaStringGrid;
          STRGRD_APLUSU.Row := nRow;
        end;
    end;
end;

procedure TFRM_A011UTAU.ChangeColor(Sender: TObject; MSG: Integer);
begin
  If Sender is TStaticText Then
    begin
      If (Msg = CM_MOUSELEAVE) Then
        (Sender as TStaticText).Font.Color:=clWindowText;
      If (Msg = CM_MOUSEENTER) Then
        (Sender as TStaticText).Font.Color:=clBlue;
    end;
end;

procedure TFRM_A011UTAU.WndProc(var Msg: TMessage);
var I : Integer;
begin
   For I := 0 to ComponentCount -1 do
      If MSG.LParam = Longint(Components[I]) Then ChangeColor(Components[i],Msg.Msg);
   inherited WndProc(Msg);
end;

procedure TFRM_A011UTAU.STT_SELTODOSClick(Sender: TObject);
 var
   i : integer;
begin
  //seleciona todos os items do string grid
  if BTN_GRAVAR.Enabled then
    begin
      for i := 0 to STRGRD_APLUSU.Cols[0].Count - 1 do
        VerificaClickGrid(i,0,false,tpTrue);
      STRGRD_APLUSU.Repaint;
    end;
end;

procedure TFRM_A011UTAU.VerificaClickGrid(Linha, Coluna: integer;
  Meng : Boolean = true; Check : TtpCheck = tpDefault);
begin
  with STRGRD_APLUSU do
  begin
  //se estiver em estado de alteração
    if BTN_GRAVAR.Enabled then
      begin
        if (Linha < 0) or (Linha > RowCount - 1) then
          exit;
        //se a linha não tiver um objeto
        if Rows[Linha].Objects[0] = nil then
          exit;

        //se for uma aplicação de equivalencia
        if Trim(Rows[Linha].Strings[1]) <> '' then
          begin
            if Meng then
              MessageDlg('Uma aplicação de equivalência não pode ser alterada! ',
                         mtInformation,[mbOk],0);
            exit;
          end;

        //se o usuario que autorizou a aplicação for diferente do operador
        //e o operador não for um usuario admin
        if (Trim(Rows[Linha].Strings[2]) <> '') and
           (Trim(Rows[Linha].Strings[2]) <> cNomeUsuario) and (not(isAdmin)) then
          begin
            if Meng then
              MessageDlg('Você não pode alterar o acesso de uma aplicação que' + #13 +
                         'não foi autorizada por você!',mtInformation,[mbOk],0);
              exit;
          end;

        if (Coluna = 0) then
          if Rows[Linha].Objects[0] is TAplicacao then
            begin
              with TAplicacao(Rows[Linha].Objects[0]) do
                begin
                  //o item tem que ficar checado
                  if Check = tpTrue then
                    Checked := true
                  else
                    //item tem que ficar desmarcado
                    if Check = tpFalse then
                      Checked := false
                    else
                      //apenas o valor contrario do item
                      Checked := not(Checked);

                  //se for checado
                  if Checked then
                    begin
                      //se o usuario não tinha acesso a aplicação
                      if not(OldChecked) then
                        //aplicacao em estado de insercao
                        Update := ukInsert;
                      //coloca o nome do usuario como autorizador
                      Rows[Linha].Strings[2] := '  ' + cNomeUsuario;//nome do login do operador
                    end
                  else
                    begin
                      //se o usuário tinha acesso a aplicação
                      if OldChecked then
                        //coloca o estado da aplicação para ser deletada
                        Update := ukDelete;

                      //retira o usuario que autorizou
                      Rows[Linha].Strings[2] := '  ';
                    end;

                end;

            end;

      end;
  end;
end;

procedure TFRM_A011UTAU.STT_DESTODOSClick(Sender: TObject);
 var
   i : integer;
begin
  //desmarca todos os itens do string grid
  if BTN_GRAVAR.Enabled then
    begin
      for i := 0 to STRGRD_APLUSU.Cols[0].Count - 1 do
        VerificaClickGrid(i,0,false,tpFalse);
      STRGRD_APLUSU.Repaint;
    end;
end;

procedure TFRM_A011UTAU.BTN_EQUIVALEClick(Sender: TObject);
  var
    nAcao, nRow : Integer;
begin
  Application.CreateForm(TDTM_A017UTAU,DTM_A017UTAU);
  Application.CreateForm(TFRM_A017UTAU,FRM_A017UTAU);
  FRM_A017UTAU.nIdUsuario := nIdUsuario;
  FRM_A017UTAU.cNomeUsu := cNmUsu;
  FRM_A017UTAU.nAcao := @nAcao;
  oControlForms.AtivaForm('FRM_A017UTAU',shModal,nil,false);
  if nAcao = mrOk then
    begin
      DTM_A011UTAU.QRY_APLUSUARIO.ExecSql;
      DTM_A011UTAU.QRY_APLOPERADOR.ExecSql;
      DTM_A011UTAU.QRY_056.ExecSql;
      DTM_A011UTAU.QRY_052.ExecSql;
      nRow := STRGRD_APLUSU.Row;
      LiberaObjLista;
      STRGRD_APLUSU.RowCount := 2;
      AlimentaStringGrid;
      STRGRD_APLUSU.Row := nRow;
    end;
end;

function TFRM_A011UTAU.RetornaUsuarioAutEqv(nIdEqv: Integer): String;
begin
  with DMControle do
    begin
      PrepareQryTemp('select nidtbl_u from tbl_eqv where nidtbl_eqv = ' + IntToStr(nIdEqv));
      if not(QryTemp.IsEmpty) then
        Result := RetornaUsuario(QryTemp.FieldByName('nidtbl_u').asInteger)
      else
        Result := '';

      QryTemp.Close;
      QryTemp.SQL.Clear;
    end;

end;

procedure TFRM_A011UTAU.BTN_CAMPOSClick(Sender: TObject);
begin
  Application.CreateForm(TDTM_A007UTAU,DTM_A007UTAU);
  DTM_A007UTAU.QRY_TEMP.ParamByName('nidtbl_u').asInteger := nIdUsuario;
  Application.CreateForm(TFRM_A007UTAU,FRM_A007UTAU);
  FRM_A007UTAU.nCodigoUsuario := nIdUsuario;
  FRM_A007UTAU.cNmUsu := cNmUsu;
  oControlForms.AtivaForm('FRM_A007UTAU',shModal,nil,false);
end;

{ TGrupo }

procedure TGrupo.CheckItems(State: Boolean);
  var
    i : integer;
begin
  for i := 0 to FListaItems.Count - 1 do
    TAplicacao(FListaItems[i]).Checked := State;
end;

constructor TGrupo.Create;
begin
  inherited Create;
  FListaItems := TObjectList.Create(false);
end;

destructor TGrupo.Destroy;
begin

  FListaItems.Clear;
  FListaItems.Free;
  inherited Destroy;

end;

function TGrupo.GetAlter: Boolean;
  var
    i : integer;
    ItemsAlter : integer;
begin
  ItemsAlter := 0;
   for i:=0 to FListaItems.Count - 1 do
     if TAplicacao(FListaItems[i]).Alter then
       ItemsAlter := ItemsAlter + 1;

  Result := ItemsAlter > 0;
end;

procedure TGrupo.SetItemCount(Quant: Integer);
begin
  FItemsCount := Quant;
  checked := FItemsSelect = FItemsCount;
end;

procedure TGrupo.SetItemSelect(Quant: Integer);
begin
  FItemsSelect := Quant;
  OldChecked := Checked;
  Checked := FItemsSelect = ItemsCount;
end;

{ TAplicacao }

destructor TAplicacao.Destroy;
begin
  if FGrupo.FListaItems.IndexOf(Self) <> - 1 then
    FGrupo.FListaItems.Delete(FGrupo.FListaItems.IndexOf(Self));
  //inherited Destroy;
  inherited;
end;

procedure TAplicacao.SetChecked(lChecked: Boolean);
begin

  if FChecked = lChecked then
    exit;

  FChecked := lChecked;
  if FChecked then
    FGrupo.ItemsSelect := FGrupo.ItemsSelect + 1
  else
    FGrupo.ItemsSelect := FGrupo.ItemsSelect - 1;
end;

procedure TAplicacao.SetGrupo(Grupo: TGrupo);
begin
  Grupo.ItemsCount := Grupo.ItemsCount + 1;
  FGrupo := Grupo;
  FGrupo.FListaItems.Add(Self);
end;

procedure TFRM_A011UTAU.LiberaObjLista;
  var
    i : integer;
begin
  with  STRGRD_APLUSU do
    begin
      for i:=0 to RowCount -1 do
        if Rows[i].Objects[0] is TAplicacao then
          begin
            TAplicacao(Rows[i].Objects[0]).free;
            Rows[i].Objects[0]:= nil;
          end;
      for i:=0 to RowCount - 1 do
        if Rows[i].Objects[0] is TGrupo then
          begin
            Rows[i].Objects[0].Free;
            //Rows[i].Objects[0] := nil;
          end;
    end;
end;

end.
