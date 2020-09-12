unit IMPDDD;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs;

type
  TFRM_IMPDDD = class(TForm)
  Procedure ImportaDados;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FRM_IMPDDD: TFRM_IMPDDD;

implementation

uses ProgForm;

{$R *.DFM}



Procedure TFRM_IMPDDD.ImportaDados;

begin

   if lAbort or lCancel then
     begin
       lTerminou := false;
       exit;
     end
   else
     begin

       TabTemp.DisableControls;

       nHoraGer := HoraSeg(TimeToStr(Now));
       Application.CreateForm(TProgresso,Progresso);
       Progresso.Visible := True;
       Progresso.Show;
       Progresso.Refresh;
       nTotGer := nTotLin;
       Progresso.Lbl_Tit.Caption := 'Importando Dados...!!';
       Progresso.Gag_Ger.MaxValue := nTotger;
       Progresso.Gag_Ger.Progress:= Progresso.Gag_Ger.Progress + 1;
       Progresso.Gag_Ger.Refresh;

       Progresso.Lbl_DecGer.Caption:= SegHora((HoraSeg(TimeToStr(Now)) - nHoraGer));
       Progresso.Lbl_EstGer.Caption:= SegHora((HoraSeg(TimeToStr(Now)) - nHoraGer) *
                            Variant(nTotGer / Progresso.Gag_Ger.Progress ));
       Progresso.Refresh;

       while not eof(arq) do
         begin
           Readln(Arq,cRegistro);
           nReg := nReg + 1;
           OraSession1.StartTransaction;
           try
             begin
               TabDestino.Append;
               TabTemp.First;
               nCampos := 0;
               while nCampos <=  (TabDestino.Fields.Count - 1) do
                 begin
                   if TabTemp.Locate('Nome',TabDestino.Fields.Fields[nCampos].FieldName,[]) then
                     begin

                       if Copy(cRegistro,TabTemp.FieldByName('Col').AsInteger,
                                         TabTemp.FieldByName('Tam').AsInteger) <> '' then
                         begin
                           vDados := TrimRight(Copy(cRegistro,TabTemp.FieldByName('Col').AsInteger,
                                                    TabTemp.FieldByName('Tam').AsInteger));
                           if TabTemp.FieldByName('Tipo').AsString = 'D' then
                             begin
                               dCampoData := StrtoDate(Strzero(StrtoInt(Copy(vDados,7,2)),2)+'/'+Copy(vDados,5,2)+'/'+Copy(vDados,1,4));
                               TabDestino.Fields.Fields[nCampos].Value := dCampoData;
                             end
                           else
                             begin
                               if vDados = '' then
                                 TabDestino.Fields.Fields[nCampos].Value := null
                               else TabDestino.Fields.Fields[nCampos].Value := vDados;
                             end;
                         end;
                     end;
                   nCampos := nCampos + 1;
                   TabTemp.Next;
                 end;
               OraSession1.Commit;
               Progresso.Gag_Ger.Progress:= Progresso.Gag_Ger.Progress + 1;
               Progresso.Gag_Ger.Refresh;

               Progresso.Lbl_DecGer.Caption:= SegHora((HoraSeg(TimeToStr(Now)) - nHoraGer));
               Progresso.Lbl_EstGer.Caption:= SegHora((HoraSeg(TimeToStr(Now)) - nHoraGer) *
                                    Variant(nTotGer  / Progresso.Gag_Ger.Progress ));
               Progresso.Refresh;
             end;
           except
             begin
               OraSession1.Rollback;
               ShowMessage('Erro ao gravar tabela destino!!');
               lTerminou := false;
               exit;
             end;
           end;
           Application.ProcessMessages;
           if lCancelar then
             begin
               lTerminou := false;
               exit;
             end;
         end;
       Reset(Arq);
       TabDestino.First;
       TabTemp.EnableControls;
       TabTemp.First;
       lTerminou := true
     end;
end;




end.
