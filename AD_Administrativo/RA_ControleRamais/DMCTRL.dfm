object DMControle: TDMControle
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 14
  Top = 72
  Height = 479
  Width = 741
  object Conexao: TOraSession
    ConnectPrompt = False
    Options.Net = True
    Username = 'mpl'
    Password = 'mpl'
    Server = '200.193.140.50'
    Connected = True
    Left = 140
    Top = 184
  end
  object TempMenu: TVirtualTable
    Options = [voPersistentData, voStored]
    FieldDefs = <
      item
        Name = 'Item'
        DataType = ftInteger
      end
      item
        Name = 'subitem'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'aplica'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'Atalho'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'Form'
        DataType = ftString
        Size = 20
      end>
    Left = 244
    Top = 184
    Data = {
      0100050004004974656D0300000007007375626974656D01000A00060061706C
      6963610100140006004174616C686F010001000400466F726D01001400000000
      000000}
  end
  object QryTemp: TSmartQuery
    CheckMode = cmNone
    Session = Conexao
    FetchRows = 1
    CachedUpdates = False
    LockMode = lmLockImmediate
    Left = 297
    Top = 184
  end
  object Qry_A: TOraQuery
    Session = Controle
    SQL.Strings = (
      'Select * from Tbl_A')
    UpdateObject = Upd_A
    Active = True
    Left = 12
    Top = 8
  end
  object Qry_FB: TOraQuery
    Session = Controle
    SQL.Strings = (
      'Select * from Tbl_FB')
    UpdateObject = Upd_FB
    Active = True
    Left = 12
    Top = 60
  end
  object Qry_T: TOraQuery
    Session = Controle
    SQL.Strings = (
      'Select * from Tbl_T')
    UpdateObject = Upd_T
    Active = True
    Left = 12
    Top = 112
  end
  object Qry_AO: TOraQuery
    Session = Controle
    SQL.Strings = (
      'Select * from Tbl_AO')
    UpdateObject = Upd_AO
    Active = True
    Left = 116
    Top = 8
  end
  object Qry_G: TOraQuery
    Session = Controle
    SQL.Strings = (
      'Select * from Tbl_G')
    UpdateObject = Upd_G
    Active = True
    Left = 116
    Top = 60
  end
  object Qry_U: TOraQuery
    Session = Controle
    SQL.Strings = (
      'Select * from Tbl_U')
    UpdateObject = Upd_U
    Active = True
    Left = 116
    Top = 112
  end
  object Qry_AT: TOraQuery
    Session = Controle
    SQL.Strings = (
      'Select * from Tbl_AT')
    UpdateObject = Upd_AT
    Active = True
    Left = 212
    Top = 8
  end
  object Qry_I: TOraQuery
    Session = Controle
    SQL.Strings = (
      'Select * from Tbl_I')
    UpdateObject = Upd_I
    Active = True
    Left = 212
    Top = 60
    object Qry_INCODTABELA: TIntegerField
      FieldName = 'NCODTABELA'
    end
    object Qry_ICNOMEIND: TStringField
      FieldName = 'CNOMEIND'
      Size = 7
    end
    object Qry_IMCHAVEIND: TMemoField
      FieldName = 'MCHAVEIND'
      BlobType = ftMemo
    end
    object Qry_ILPESQUISA: TIntegerField
      FieldName = 'LPESQUISA'
    end
    object Qry_ICTXTPESQ: TStringField
      FieldName = 'CTXTPESQ'
      Size = 30
    end
    object Qry_INCODCAMPO: TIntegerField
      FieldName = 'NCODCAMPO'
    end
    object Qry_ICSEQBROWSE: TStringField
      FieldName = 'CSEQBROWSE'
      Size = 50
    end
    object Qry_INTIPOCHAVE: TIntegerField
      FieldName = 'NTIPOCHAVE'
    end
    object Qry_ICCONDICAO: TStringField
      FieldName = 'CCONDICAO'
      Size = 50
    end
  end
  object Qry_UA: TOraQuery
    Session = Controle
    SQL.Strings = (
      'Select * from Tbl_UA')
    UpdateObject = Upd_UA
    Active = True
    Left = 212
    Top = 112
  end
  object Qry_D: TOraQuery
    Session = Controle
    SQL.Strings = (
      'Select * from Tbl_D')
    UpdateObject = Upd_D
    Active = True
    Left = 313
    Top = 8
  end
  object Qry_O: TOraQuery
    Session = Controle
    SQL.Strings = (
      'Select * from Tbl_O')
    UpdateObject = Upd_O
    Active = True
    Left = 313
    Top = 60
  end
  object Qry_UAD: TOraQuery
    Session = Controle
    SQL.Strings = (
      'Select * from Tbl_UAD')
    UpdateObject = Upd_UAD
    Active = True
    Left = 313
    Top = 112
  end
  object Qry_ET: TOraQuery
    Session = Controle
    SQL.Strings = (
      'Select * from Tbl_ET')
    UpdateObject = Upd_ET
    Active = True
    Left = 410
    Top = 8
  end
  object Qry_P: TOraQuery
    Session = Controle
    SQL.Strings = (
      'Select * from Tbl_P')
    UpdateObject = Upd_P
    Active = True
    Left = 412
    Top = 63
  end
  object Qry_UAO: TOraQuery
    Session = Controle
    SQL.Strings = (
      'Select * from Tbl_UAO')
    UpdateObject = Upd_UAO
    Active = True
    Left = 414
    Top = 112
  end
  object Controle: TOraSession
    ConnectPrompt = False
    Options.Net = True
    Username = 'MPL'
    Password = 'MPL'
    Server = '200.193.140.50'
    Connected = True
    Left = 355
    Top = 187
  end
  object Upd_A: TOraUpdateSQL
    RefreshSQL.Strings = (
      'SELECT * FROM Tbl_A'
      'WHERE'
      '  CNOMEUNIT = :CNOMEUNIT')
    ModifySQL.Strings = (
      'UPDATE Tbl_A'
      'SET'
      '  CNOMEUNIT = :CNOMEUNIT,'
      '  CDESCAPLI = :CDESCAPLI,'
      '  NCODGRUPO = :NCODGRUPO,'
      '  CNOMEBMP = :CNOMEBMP,'
      '  CNOMEFORM = :CNOMEFORM,'
      '  CSHOWFORM = :CSHOWFORM,'
      '  CITENSMENU = :CITENSMENU'
      'WHERE'
      '  CNOMEUNIT = :OLD_CNOMEUNIT')
    InsertSQL.Strings = (
      'INSERT INTO Tbl_A'
      
        '  (CNOMEUNIT, CDESCAPLI, NCODGRUPO, CNOMEBMP, CNOMEFORM, CSHOWFO' +
        'RM, CITENSMENU)'
      'VALUES'
      
        '  (:CNOMEUNIT, :CDESCAPLI, :NCODGRUPO, :CNOMEBMP, :CNOMEFORM, :C' +
        'SHOWFORM, :CITENSMENU)')
    DeleteSQL.Strings = (
      'DELETE FROM Tbl_A'
      'WHERE'
      '  CNOMEUNIT = :CNOMEUNIT')
    Left = 60
    Top = 8
  end
  object Upd_FB: TOraUpdateSQL
    RefreshSQL.Strings = (
      'SELECT * FROM Tbl_FB'
      'WHERE'
      '  CNOMEBMP = :CNOMEBMP')
    ModifySQL.Strings = (
      'UPDATE Tbl_FB'
      'SET'
      '  CNOMEBMP = :CNOMEBMP,'
      '  NCODIGOBMP = :NCODIGOBMP'
      'WHERE'
      '  CNOMEBMP = :OLD_CNOMEBMP')
    InsertSQL.Strings = (
      'INSERT INTO Tbl_FB'
      '  (CNOMEBMP, NCODIGOBMP)'
      'VALUES'
      '  (:CNOMEBMP, :NCODIGOBMP)')
    DeleteSQL.Strings = (
      'DELETE FROM Tbl_FB'
      'WHERE'
      '  CNOMEBMP = :CNOMEBMP')
    Left = 61
    Top = 60
  end
  object Upd_T: TOraUpdateSQL
    RefreshSQL.Strings = (
      'SELECT * FROM Tbl_T'
      'WHERE'
      '  NCODTABELA = :NCODTABELA')
    ModifySQL.Strings = (
      'UPDATE Tbl_T'
      'SET'
      '  NCODTABELA = :NCODTABELA,'
      '  CNOMETBL = :CNOMETBL,'
      '  CNOMEFORM = :CNOMEFORM,'
      '  LINDICE = :LINDICE,'
      '  CDESCRTBL = :CDESCRTBL,'
      '  CORDERREL = :CORDERREL,'
      '  CSEQBROWSE = :CSEQBROWSE'
      'WHERE'
      '  NCODTABELA = :OLD_NCODTABELA')
    InsertSQL.Strings = (
      'INSERT INTO Tbl_T'
      
        '  (NCODTABELA, CNOMETBL, CNOMEFORM, LINDICE, CDESCRTBL, CORDERRE' +
        'L, CSEQBROWSE)'
      'VALUES'
      
        '  (:NCODTABELA, :CNOMETBL, :CNOMEFORM, :LINDICE, :CDESCRTBL, :CO' +
        'RDERREL, :CSEQBROWSE)')
    DeleteSQL.Strings = (
      'DELETE FROM Tbl_T'
      'WHERE'
      '  NCODTABELA = :NCODTABELA')
    Left = 62
    Top = 112
  end
  object Upd_AO: TOraUpdateSQL
    RefreshSQL.Strings = (
      'SELECT * FROM Tbl_AO'
      'WHERE'
      '  CNOMEUNIT = :CNOMEUNIT')
    ModifySQL.Strings = (
      'UPDATE Tbl_AO'
      'SET'
      '  CNOMEUNIT = :CNOMEUNIT,'
      '  CNOMEOBJ = :CNOMEOBJ,'
      '  LREQUERIDO = :LREQUERIDO'
      'WHERE'
      '  CNOMEUNIT = :OLD_CNOMEUNIT')
    InsertSQL.Strings = (
      'INSERT INTO Tbl_AO'
      '  (CNOMEUNIT, CNOMEOBJ, LREQUERIDO)'
      'VALUES'
      '  (:CNOMEUNIT, :CNOMEOBJ, :LREQUERIDO)')
    DeleteSQL.Strings = (
      'DELETE FROM Tbl_AO'
      'WHERE'
      '  CNOMEUNIT = :CNOMEUNIT')
    Left = 164
    Top = 8
  end
  object Upd_G: TOraUpdateSQL
    RefreshSQL.Strings = (
      'SELECT * FROM Tbl_G'
      'WHERE'
      '  NCODGRUPO = :NCODGRUPO')
    ModifySQL.Strings = (
      'UPDATE Tbl_G'
      'SET'
      '  NCODGRUPO = :NCODGRUPO,'
      '  CNOMEGRUPO = :CNOMEGRUPO,'
      '  NSEQUENCIA = :NSEQUENCIA'
      'WHERE'
      '  NCODGRUPO = :OLD_NCODGRUPO')
    InsertSQL.Strings = (
      'INSERT INTO Tbl_G'
      '  (NCODGRUPO, CNOMEGRUPO, NSEQUENCIA)'
      'VALUES'
      '  (:NCODGRUPO, :CNOMEGRUPO, :NSEQUENCIA)')
    DeleteSQL.Strings = (
      'DELETE FROM Tbl_G'
      'WHERE'
      '  NCODGRUPO = :NCODGRUPO')
    Left = 165
    Top = 60
  end
  object Upd_U: TOraUpdateSQL
    RefreshSQL.Strings = (
      'SELECT * FROM Tbl_U'
      'WHERE'
      '  NMATRICULA = :NMATRICULA')
    ModifySQL.Strings = (
      'UPDATE Tbl_U'
      'SET'
      '  NMATRICULA = :NMATRICULA,'
      '  CNOMEUSU = :CNOMEUSU,'
      '  CSENHA = :CSENHA,'
      '  LBLOQUEADO = :LBLOQUEADO'
      'WHERE'
      '  NMATRICULA = :OLD_NMATRICULA')
    InsertSQL.Strings = (
      'INSERT INTO Tbl_U'
      '  (NMATRICULA, CNOMEUSU, CSENHA, LBLOQUEADO)'
      'VALUES'
      '  (:NMATRICULA, :CNOMEUSU, :CSENHA, :LBLOQUEADO)')
    DeleteSQL.Strings = (
      'DELETE FROM Tbl_U'
      'WHERE'
      '  NMATRICULA = :NMATRICULA')
    Left = 166
    Top = 112
  end
  object Upd_AT: TOraUpdateSQL
    RefreshSQL.Strings = (
      'SELECT * FROM Tbl_AT'
      'WHERE'
      '  CNOMEUNIT = :CNOMEUNIT')
    ModifySQL.Strings = (
      'UPDATE Tbl_AT'
      'SET'
      '  CNOMEUNIT = :CNOMEUNIT,'
      '  CTBLCOMPO = :CTBLCOMPO,'
      '  CORDER = :CORDER,'
      '  CMASTERF = :CMASTERF,'
      '  CMASTERS = :CMASTERS,'
      '  NCODTABELA = :NCODTABELA,'
      '  MSELECT = :MSELECT'
      'WHERE'
      '  CNOMEUNIT = :OLD_CNOMEUNIT and CTBLCOMPO = :OLD_CTBLCOMPO')
    InsertSQL.Strings = (
      'INSERT INTO Tbl_AT'
      
        '  (CNOMEUNIT, CTBLCOMPO, CORDER, CMASTERF, CMASTERS, NCODTABELA,' +
        ' MSELECT)'
      'VALUES'
      
        '  (:CNOMEUNIT, :CTBLCOMPO, :CORDER, :CMASTERF, :CMASTERS, :NCODT' +
        'ABELA, :MSELECT)')
    DeleteSQL.Strings = (
      'DELETE FROM Tbl_AT'
      'WHERE'
      '  CNOMEUNIT = :CNOMEUNIT')
    Left = 264
    Top = 8
  end
  object Upd_I: TOraUpdateSQL
    RefreshSQL.Strings = (
      'SELECT * FROM Tbl_I'
      'WHERE'
      '  NCODTABELA = :NCODTABELA')
    ModifySQL.Strings = (
      'UPDATE Tbl_I'
      'SET'
      '  NCODTABELA = :NCODTABELA,'
      '  CNOMEIND = :CNOMEIND,'
      '  MCHAVEIND = :MCHAVEIND,'
      '  LPESQUISA = :LPESQUISA,'
      '  CTXTPESQ = :CTXTPESQ,'
      '  NCODCAMPO = :NCODCAMPO,'
      '  CSEQBROWSE = :CSEQBROWSE,'
      '  NTIPOCHAVE = :NTIPOCHAVE,'
      '  CCONDICAO = :CCONDICAO'
      'WHERE'
      '  NCODTABELA = :OLD_NCODTABELA')
    InsertSQL.Strings = (
      'INSERT INTO Tbl_I'
      
        '  (NCODTABELA, CNOMEIND, MCHAVEIND, LPESQUISA, CTXTPESQ, NCODCAM' +
        'PO, CSEQBROWSE, NTIPOCHAVE, CCONDICAO)'
      'VALUES'
      
        '  (:NCODTABELA, :CNOMEIND, :MCHAVEIND, :LPESQUISA, :CTXTPESQ, :N' +
        'CODCAMPO, :CSEQBROWSE, :NTIPOCHAVE, :CCONDICAO)')
    DeleteSQL.Strings = (
      'DELETE FROM Tbl_I'
      'WHERE'
      '  NCODTABELA = :NCODTABELA')
    Left = 265
    Top = 60
  end
  object Upd_UA: TOraUpdateSQL
    RefreshSQL.Strings = (
      'SELECT * FROM Tbl_UA'
      'WHERE'
      '  NMATRICULA = :NMATRICULA')
    ModifySQL.Strings = (
      'UPDATE Tbl_UA'
      'SET'
      '  NMATRICULA = :NMATRICULA,'
      '  CNOMEUNIT = :CNOMEUNIT,'
      '  LBTNATALHO = :LBTNATALHO,'
      '  CTABELAS = :CTABELAS'
      'WHERE'
      '  NMATRICULA = :OLD_NMATRICULA')
    InsertSQL.Strings = (
      'INSERT INTO Tbl_UA'
      '  (NMATRICULA, CNOMEUNIT, LBTNATALHO, CTABELAS)'
      'VALUES'
      '  (:NMATRICULA, :CNOMEUNIT, :LBTNATALHO, :CTABELAS)')
    DeleteSQL.Strings = (
      'DELETE FROM Tbl_UA'
      'WHERE'
      '  NMATRICULA = :NMATRICULA')
    Left = 266
    Top = 112
  end
  object Upd_D: TOraUpdateSQL
    RefreshSQL.Strings = (
      'SELECT * FROM Tbl_D'
      'WHERE'
      '  NCODCAMPO = :NCODCAMPO')
    ModifySQL.Strings = (
      'UPDATE Tbl_D'
      'SET'
      '  NCODCAMPO = :NCODCAMPO,'
      '  CNOMECAMPO = :CNOMECAMPO,'
      '  CTIPOCAMPO = :CTIPOCAMPO,'
      '  NTAMANHO = :NTAMANHO,'
      '  NDECIMAL = :NDECIMAL,'
      '  CTITULO = :CTITULO,'
      '  CDESCCAMPO = :CDESCCAMPO,'
      '  CMASCEDIT = :CMASCEDIT,'
      '  CMASCDISP = :CMASCDISP,'
      '  NCODTABELA = :NCODTABELA,'
      '  MCAMPOHELP = :MCAMPOHELP,'
      '  CALINHAR = :CALINHAR'
      'WHERE'
      '  NCODCAMPO = :OLD_NCODCAMPO')
    InsertSQL.Strings = (
      'INSERT INTO Tbl_D'
      
        '  (NCODCAMPO, CNOMECAMPO, CTIPOCAMPO, NTAMANHO, NDECIMAL, CTITUL' +
        'O, CDESCCAMPO, CMASCEDIT, CMASCDISP, NCODTABELA, MCAMPOHELP, CAL' +
        'INHAR)'
      'VALUES'
      
        '  (:NCODCAMPO, :CNOMECAMPO, :CTIPOCAMPO, :NTAMANHO, :NDECIMAL, :' +
        'CTITULO, :CDESCCAMPO, :CMASCEDIT, :CMASCDISP, :NCODTABELA, :MCAM' +
        'POHELP, :CALINHAR)')
    DeleteSQL.Strings = (
      'DELETE FROM Tbl_D'
      'WHERE'
      '  NCODCAMPO = :NCODCAMPO')
    Left = 360
    Top = 8
  end
  object Upd_O: TOraUpdateSQL
    RefreshSQL.Strings = (
      'SELECT * FROM Tbl_O'
      'WHERE'
      '  CNOMEOBJ = :CNOMEOBJ')
    ModifySQL.Strings = (
      'UPDATE Tbl_O'
      'SET'
      '  CNOMEOBJ = :CNOMEOBJ,'
      '  CNOMECLA = :CNOMECLA,'
      '  CCAPTION = :CCAPTION,'
      '  CHINT = :CHINT,'
      '  CTIPOCUR = :CTIPOCUR,'
      '  LENABLE = :LENABLE,'
      '  LVISIBLE = :LVISIBLE,'
      '  LTRATADO = :LTRATADO,'
      '  CNOMEBMP = :CNOMEBMP,'
      '  CNOMEUNIT = :CNOMEUNIT,'
      '  NCODCAMPO = :NCODCAMPO,'
      '  CCAMPOPESQ = :CCAMPOPESQ,'
      '  LUPPERCASE = :LUPPERCASE,'
      '  LCARINVALI = :LCARINVALI'
      'WHERE'
      '  CNOMEOBJ = :OLD_CNOMEOBJ')
    InsertSQL.Strings = (
      'INSERT INTO Tbl_O'
      
        '  (CNOMEOBJ, CNOMECLA, CCAPTION, CHINT, CTIPOCUR, LENABLE, LVISI' +
        'BLE, LTRATADO, CNOMEBMP, CNOMEUNIT, NCODCAMPO, CCAMPOPESQ, LUPPE' +
        'RCASE, LCARINVALI)'
      'VALUES'
      
        '  (:CNOMEOBJ, :CNOMECLA, :CCAPTION, :CHINT, :CTIPOCUR, :LENABLE,' +
        ' :LVISIBLE, :LTRATADO, :CNOMEBMP, :CNOMEUNIT, :NCODCAMPO, :CCAMP' +
        'OPESQ, :LUPPERCASE, :LCARINVALI)')
    DeleteSQL.Strings = (
      'DELETE FROM Tbl_O'
      'WHERE'
      '  CNOMEOBJ = :CNOMEOBJ')
    Left = 361
    Top = 60
  end
  object Upd_UAD: TOraUpdateSQL
    RefreshSQL.Strings = (
      'SELECT * FROM Tbl_UAD'
      'WHERE'
      '  NMATRICULA = :NMATRICULA')
    ModifySQL.Strings = (
      'UPDATE Tbl_UAD'
      'SET'
      '  NMATRICULA = :NMATRICULA,'
      '  NCODCAMPO = :NCODCAMPO,'
      '  CTRATAMENT = :CTRATAMENT,'
      '  CTIPOMASCA = :CTIPOMASCA'
      'WHERE'
      '  NMATRICULA = :OLD_NMATRICULA')
    InsertSQL.Strings = (
      'INSERT INTO Tbl_UAD'
      '  (NMATRICULA, NCODCAMPO, CTRATAMENT, CTIPOMASCA)'
      'VALUES'
      '  (:NMATRICULA, :NCODCAMPO, :CTRATAMENT, :CTIPOMASCA)')
    DeleteSQL.Strings = (
      'DELETE FROM Tbl_UAD'
      'WHERE'
      '  NMATRICULA = :NMATRICULA')
    Left = 362
    Top = 112
  end
  object Upd_ET: TOraUpdateSQL
    RefreshSQL.Strings = (
      'SELECT * FROM Tbl_ET'
      'WHERE'
      '  NCODTABELA = :NCODTABELA')
    ModifySQL.Strings = (
      'UPDATE Tbl_ET'
      'SET'
      '  NCODTABELA = :NCODTABELA,'
      '  NCODCAMPO = :NCODCAMPO'
      'WHERE'
      '  NCODTABELA = :OLD_NCODTABELA')
    InsertSQL.Strings = (
      'INSERT INTO Tbl_ET'
      '  (NCODTABELA, NCODCAMPO)'
      'VALUES'
      '  (:NCODTABELA, :NCODCAMPO)')
    DeleteSQL.Strings = (
      'DELETE FROM Tbl_ET'
      'WHERE'
      '  NCODTABELA = :NCODTABELA')
    Left = 465
    Top = 8
  end
  object Upd_P: TOraUpdateSQL
    RefreshSQL.Strings = (
      'SELECT * FROM Tbl_P'
      'WHERE'
      '  CPATHIMG = :CPATHIMG')
    ModifySQL.Strings = (
      'UPDATE Tbl_P'
      'SET'
      '  CPATHIMG = :CPATHIMG,'
      '  NSENHAVZ = :NSENHAVZ,'
      '  CPATHBASE = :CPATHBASE,'
      '  CPATHIND = :CPATHIND,'
      '  CNOMERAZ = :CNOMERAZ,'
      '  CPATHLOGO = :CPATHLOGO,'
      '  CSENHAORA = :CSENHAORA,'
      '  CUSERORA = :CUSERORA,'
      '  CSERVORA = :CSERVORA,'
      '  CTITLOGIN = :CTITLOGIN,'
      '  CCARACINVA = :CCARACINVA,'
      '  NMATSERV = :NMATSERV'
      'WHERE'
      '  CPATHIMG = :OLD_CPATHIMG')
    InsertSQL.Strings = (
      'INSERT INTO Tbl_P'
      
        '  (CPATHIMG, NSENHAVZ, CPATHBASE, CPATHIND, CNOMERAZ, CPATHLOGO,' +
        ' CSENHAORA, CUSERORA, CSERVORA, CTITLOGIN, CCARACINVA, NMATSERV)'
      'VALUES'
      
        '  (:CPATHIMG, :NSENHAVZ, :CPATHBASE, :CPATHIND, :CNOMERAZ, :CPAT' +
        'HLOGO, :CSENHAORA, :CUSERORA, :CSERVORA, :CTITLOGIN, :CCARACINVA' +
        ', :NMATSERV)')
    DeleteSQL.Strings = (
      'DELETE FROM Tbl_P'
      'WHERE'
      '  CPATHIMG = :CPATHIMG')
    Left = 466
    Top = 60
  end
  object Upd_UAO: TOraUpdateSQL
    RefreshSQL.Strings = (
      'SELECT * FROM Tbl_UAO'
      'WHERE'
      '  NMATRICULA = :NMATRICULA')
    ModifySQL.Strings = (
      'UPDATE Tbl_UAO'
      'SET'
      '  NMATRICULA = :NMATRICULA,'
      '  CNOMEUNIT = :CNOMEUNIT,'
      '  CNOMEOBJ = :CNOMEOBJ'
      'WHERE'
      '  NMATRICULA = :OLD_NMATRICULA')
    InsertSQL.Strings = (
      'INSERT INTO Tbl_UAO'
      '  (NMATRICULA, CNOMEUNIT, CNOMEOBJ)'
      'VALUES'
      '  (:NMATRICULA, :CNOMEUNIT, :CNOMEOBJ)')
    DeleteSQL.Strings = (
      'DELETE FROM Tbl_UAO'
      'WHERE'
      '  NMATRICULA = :NMATRICULA')
    Left = 467
    Top = 112
  end
  object Dts_P: TOraDataSource
    DataSet = Qry_P
    Left = 196
    Top = 184
  end
end
