{*******************************************************************************
 *                                                                             *
 *  Aplicação para montagem do Salario Familia em relação ao parentesco        *
 *  Data da Criação : 01/03/2006                                               *
 *  Programador Leandro Ribas                                                  *
 *  Data Finalização : 01/03/2006                                              *
 *                                                                             *
 *                                                                             *
 *******************************************************************************
}
unit A053RH;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  RxLookup, StdCtrls, RxDBComb, Grids, DBGrids, DBCtrls, Mask, ToolEdit,
  RXDBCtrl, LMDCustomControl, LMDCustomPanel, LMDCustomBevelPanel,
  LMDCustomParentPanel, LMDCustomPanelFill, LMDPanelFill, Buttons, ExtCtrls,
  LMDCustomGroupBox, LMDGroupBox, DB, LMDSimplePanel, ComCtrls,
  PageControlEx, ImgList;

type
  TFRM_A053RH = class(TForm)
    GRB_GRP: TLMDGroupBox;
    Panel2: TPanel;
    BTN_ALTERAR: TSpeedButton;
    BTN_SAIR: TSpeedButton;
    LMDPanelFill3: TLMDPanelFill;
    BTN_RETROCEDER1: TSpeedButton;
    BTN_AVANCAR1: TSpeedButton;
    DBG_DISP: TDBGrid;
    BTN_ADITEM: TSpeedButton;
    BTN_ADDTODOS: TSpeedButton;
    BTN_RENITEM: TSpeedButton;
    BTN_RENTODOS: TSpeedButton;
    BTN_DSF: TSpeedButton;
    LMDPanelFill1: TLMDPanelFill;
    BTN_RETROCEDER2: TSpeedButton;
    BTN_AVANCAR2: TSpeedButton;
    DBG_AUT: TDBGrid;
    BTN_GRAVAR: TSpeedButton;
    BTN_CANCELAR: TSpeedButton;
    procedure BTN_SAIRClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BTN_ALTERARClick(Sender: TObject);
    procedure BTN_CANCELARClick(Sender: TObject);
    procedure BTN_GRAVARClick(Sender: TObject);
    procedure BTN_ADITEMClick(Sender: TObject);
    procedure BTN_RENITEMClick(Sender: TObject);
    procedure BTN_ADDTODOSClick(Sender: TObject);
    procedure BTN_RENTODOSClick(Sender: TObject);
    procedure BTN_AVANCAR1Click(Sender: TObject);
    procedure BTN_RETROCEDER1Click(Sender: TObject);
    procedure BTN_AVANCAR2Click(Sender: TObject);
    procedure BTN_RETROCEDER2Click(Sender: TObject);
    procedure BTN_DSFClick(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }

    nIdGrupo : integer;//id do parentesco
    cNomeGrupo : string;//descrição do parentesco

    //atualiza os status dos botões de navegação
    procedure atualizaNav;
  end;

var
  FRM_A053RH: TFRM_A053RH;

implementation

uses D053RH, MPLCtrl, UVariaveis, DMCTRL, MPLLib, CtrlForms;

{$R *.DFM}

procedure TFRM_A053RH.BTN_SAIRClick(Sender: TObject);
begin
   Close ;
end;

procedure TFRM_A053RH.FormShow(Sender: TObject);
begin
  //verifica se o usuário tem acesso a aplicação
  if not Acesso(nMatricula,'A053RH',DTM_A053RH) then
    close;
  FRM_A053RH.OnShow := nil;
 {é atribuido ao OnShow do Form o valor nil para que o mesmo seja executado apenas uma vez}
 {pelo fato que se outra aplicação for chamada pela tecla F3, e ao retornar da aplicação que foi chamada pela tecla}
 {o evento OnShow deste form não acontecerá, ou seja não será executado, para permanecer o mesmo status da aplicação}
 {quando o F3 foi chamado}
 Botoes(['BTN_CANCELAR','BTN_GRAVAR',
         'BTN_ADITEM','BTN_RENITEM',
         'BTN_ADDTODOS','BTN_RENTODOS'],'FRM_A053RH',false);
 GRB_GRP.Caption := ' '+ cNomeGrupo +' ';

 //passa a id do parentesco para as qrys
 with DTM_A053RH do
   begin
     QRY_028.ParamByName('nidtbxgrp').Value := nIdGrupo;
     QRY_028.Close;
     QRY_028.Open;
     QRY_170.ParamByName('nidtbxgrp').Value := nIdGrupo;
     QRY_170.Close;
     QRY_170.Open;
   end;

end;

procedure TFRM_A053RH.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  //libera a aplicação da memoria
  Action:= oControlForms.Saidas(Self,[DTM_A053RH],DTM_A053RH.DTS_170.DataSet);
end;

procedure TFRM_A053RH.BTN_ALTERARClick(Sender: TObject);
begin
 Botoes(['BTN_SAIR','BTN_ALTERAR','BTN_DSF'],'FRM_A053RH',false);
 atualizaNav;
 //DTM_A053RH.QRY_028.Edit;
 //DTM_A053RH.QRY_170.Edit;

end;

procedure TFRM_A053RH.BTN_CANCELARClick(Sender: TObject);
begin
 Botoes(['BTN_CANCELAR','BTN_GRAVAR',
         'BTN_ADITEM','BTN_RENITEM',
         'BTN_ADDTODOS','BTN_RENTODOS'],'FRM_A053RH',false);
 //cancela as alterações feitas nas qrys
 with DTM_A053RH do
   begin
     QRY_028.CancelUpdates;
     QRY_028.Refresh;
     DBG_AUT.Refresh;
     QRY_170.CancelUpdates;
     QRY_170.Refresh;
     DBG_DISP.Refresh;
     atualizaNav;
   end;
end;

procedure TFRM_A053RH.BTN_GRAVARClick(Sender: TObject);
begin
  {Inicia uma Transação no Banco}
  DMControle.Conexao.StartTransaction;
  DBG_AUT.DataSource.DataSet.DisableControls;
  DBG_DISP.DataSource.DataSet.DisableControls;
  try
    {Aplica as modificações}
    with DTM_A053RH do
      begin
        QRY_170.ApplyUpdates;
        QRY_170.Refresh;
        QRY_028.CancelUpdates;
        QRY_028.Refresh;
      end;
    {Comita no Banco}
    DMControle.Conexao.Commit;
  except
    {Se houve erro...}
    on E : Exception do
      begin
        MessageDlg('Não foi possivel efetuar a gravação de todos os dados,'+#13+
                   'por isso está operação será cancelada para manter a integridade'+#13+
                   'dos seus dados!'+#13+'Erro: '+E.Message,mtError,[mbOk],0);
        DMControle.Conexao.RollBack;
      end;
  end;
 DBG_AUT.DataSource.DataSet.EnableControls;
 DBG_DISP.DataSource.DataSet.EnableControls;
 atualizaNav;
 Botoes(['BTN_CANCELAR','BTN_GRAVAR',
         'BTN_ADITEM','BTN_RENITEM',
         'BTN_ADDTODOS','BTN_RENTODOS'],'FRM_A053RH',false);
end;

procedure TFRM_A053RH.BTN_ADITEMClick(Sender: TObject);
begin
  AdicionaRemoveTabela(DBG_DISP,DBG_AUT,'nidtaggsf','nidtbxgrp','nidtbxdsf',
                       'cnomedsf',nIdGrupo);
  atualizaNav;
end;

procedure TFRM_A053RH.BTN_RENITEMClick(Sender: TObject);
begin
  AdicionaRemoveTabela(DBG_AUT,DBG_DISP,'nidtaggsf','nidtbxgrp','nidtbxdsf',
                       'cnomedsf',nIdGrupo);
  atualizaNav;
end;

procedure TFRM_A053RH.BTN_ADDTODOSClick(Sender: TObject);
begin
  SelTodosRegsGrid(DBG_DISP);
  AdicionaRemoveTabela(DBG_DISP,DBG_AUT,'nidtaggsf','nidtbxgrp','nidtbxdsf',
                       'cnomedsf',nIdGrupo);
  atualizaNav;
end;

procedure TFRM_A053RH.BTN_RENTODOSClick(Sender: TObject);
begin
  SelTodosRegsGrid(DBG_AUT);
  AdicionaRemoveTabela(DBG_AUT,DBG_DISP,'nidtaggsf','nidtbxgrp','nidtbxdsf',
                       'cnomedsf',nIdGrupo);
  atualizaNav;
end;

procedure TFRM_A053RH.BTN_AVANCAR1Click(Sender: TObject);
begin
  DBGenerica(DBG_DISP.DataSource,'Conexao',0,3,nil,false);
end;

procedure TFRM_A053RH.BTN_RETROCEDER1Click(Sender: TObject);
begin
  DBGenerica(DBG_DISP.DataSource,'Conexao',0,2,nil,false);
end;

procedure TFRM_A053RH.BTN_AVANCAR2Click(Sender: TObject);
begin
  DBGenerica(DBG_AUT.DataSource,'Conexao',0,3,nil,false);
end;

procedure TFRM_A053RH.BTN_RETROCEDER2Click(Sender: TObject);
begin
  DBGenerica(DBG_AUT.DataSource,'Conexao',0,2,nil,false);
end;

procedure TFRM_A053RH.atualizaNav;
begin
 DBG_AUT.DataSource.DataSet.AfterScroll(DBG_AUT.DataSource.DataSet);
 DBG_DISP.DataSource.DataSet.AfterScroll(DBG_DISP.DataSource.DataSet);
end;

procedure TFRM_A053RH.BTN_DSFClick(Sender: TObject);
begin

  oControlForms.AtivaForm('FRM_A003RH',shModal,NIL);

  DBG_DISP.DataSource.DataSet.Refresh;

end;

end.



