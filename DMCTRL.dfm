object DMControle: TDMControle
  OldCreateOrder = False
  OnDestroy = DataModuleDestroy
  Left = 28
  Top = 155
  Height = 234
  Width = 741
  object Conexao: TOraSession
    ConnectPrompt = False
    Options.DateFormat = 'DD/MM/YYYY'
    Options.Net = True
    Username = 'pmg'
    Password = 'pmg'
    Server = '192.168.1.246:1521:orcl'
    Connected = True
    Left = 424
    Top = 100
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
    Left = 290
    Top = 96
    Data = {
      0100050004004974656D0300000007007375626974656D01000A00060061706C
      6963610100140006004174616C686F010001000400466F726D01001400000000
      000000}
  end
  object QryTemp: TSmartQuery
    CheckMode = cmNone
    Session = Conexao
    FetchRows = 20
    CachedUpdates = False
    LockMode = lmLockImmediate
    Left = 344
    Top = 96
  end
  object Qry_T: TOraQuery
    SQL.Strings = (
      'Select cnometbl,'
      '       cnomeform,'
      '       lindice,'
      '       InitCap(cdescrtbl) as cdescrtbl,'
      '       corderrel,'
      '       cseqbrowse,'
      '       nidtbl_t'
      'from Tbl_T')
    FetchAll = True
    Left = 380
    Top = 8
  end
  object Qry_AO: TOraQuery
    SQL.Strings = (
      'Select nidtbl_a,'
      '       nidtbl_o,'
      '       lrequerido,'
      '       nidtbl_ao,'
      '       InitCap(cfuncao) as cfuncao'
      'from Tbl_AO')
    FetchAll = True
    Left = 64
    Top = 8
  end
  object Qry_G: TOraQuery
    SQL.Strings = (
      'Select InitCap(cnomegrupo) as cnomegrupo,'
      '       nsequencia,'
      '       nidtbl_g'
      'from Tbl_G order by nidtbl_g')
    FetchAll = True
    Left = 240
    Top = 8
  end
  object Qry_U: TOraQuery
    SQLInsert.Strings = (
      'INSERT INTO Tbl_U'
      '  (CNOMEUSU, CSENHA, LBLOQUEADO, NIDTBL_U, NIDCADGRL)'
      'VALUES'
      '  (:CNOMEUSU, :CSENHA, :LBLOQUEADO, :NIDTBL_U, :NIDCADGRL)')
    SQLDelete.Strings = (
      'DELETE FROM Tbl_U'
      'WHERE'
      '  NIDTBL_U = :NIDTBL_U')
    SQLUpdate.Strings = (
      'UPDATE Tbl_U'
      'SET'
      '  CNOMEUSU = :CNOMEUSU,'
      '  CSENHA = :CSENHA,'
      '  LBLOQUEADO = :LBLOQUEADO,'
      '  NIDTBL_U = :NIDTBL_U,'
      '  NIDCADGRL = :NIDCADGRL'
      'WHERE'
      '  NIDTBL_U = :OLD_NIDTBL_U')
    SQLLock.Strings = (
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      'WHERE'
      '  NIDTBL_U = :NIDTBL_U')
    SQL.Strings = (
      'Select * from Tbl_U')
    FetchAll = True
    Left = 424
    Top = 8
  end
  object Qry_AT: TOraQuery
    SQL.Strings = (
      'Select * from Tbl_AT')
    FetchAll = True
    Left = 112
    Top = 8
    object Qry_ATCTBLCOMPO: TStringField
      FieldName = 'CTBLCOMPO'
      Size = 10
    end
    object Qry_ATCORDER: TStringField
      FieldName = 'CORDER'
      FixedChar = True
      Size = 40
    end
    object Qry_ATCMASTERF: TStringField
      FieldName = 'CMASTERF'
      Size = 10
    end
    object Qry_ATCMASTERS: TStringField
      FieldName = 'CMASTERS'
      Size = 10
    end
    object Qry_ATMSELECT: TMemoField
      FieldName = 'MSELECT'
      BlobType = ftMemo
    end
    object Qry_ATNIDTBL_AT: TFloatField
      FieldName = 'NIDTBL_AT'
      Required = True
    end
    object Qry_ATNIDTBL_T: TFloatField
      FieldName = 'NIDTBL_T'
      Required = True
    end
    object Qry_ATNIDTBL_A: TFloatField
      FieldName = 'NIDTBL_A'
      Required = True
    end
  end
  object Qry_UA: TOraQuery
    SQL.Strings = (
      'Select * from Tbl_UA')
    FetchAll = True
    Left = 16
    Top = 56
  end
  object Qry_D: TOraQuery
    SQL.Strings = (
      'Select cnomecampo,'
      '       ctipocampo,'
      '       ntamanho,'
      '       ndecimal,'
      '       InitCap(ctitulo) as ctitulo,'
      '       InitCap(cdesccampo) as cdesccampo,'
      '       cmascedit,'
      '       cmascdisp,'
      '       ncodtabela,'
      '       mcampohelp,'
      '       calinhar,'
      '       cvalida,'
      '       ctipofisic,'
      '       nidtbl_d'
      'from Tbl_D')
    FetchAll = True
    Left = 153
    Top = 8
  end
  object Qry_O: TOraQuery
    SQL.Strings = (
      'Select cnomeobj,'
      '       cnomecla,'
      '       InitCap(ccaption) as ccaption,'
      '       InitCap(chint) as chint,'
      '       ctipocur,'
      '       lenable,'
      '       lvisible,'
      '       ltratado,'
      '       cnomebmp,'
      '       cnomeunit,'
      '       ncodcampo,'
      '       ccampopesq,'
      '       luppercase,'
      '       lcarinvali,'
      '       nidtbl_o '
      'from Tbl_O')
    FetchAll = True
    Left = 289
    Top = 8
  end
  object Qry_UAD: TOraQuery
    SQL.Strings = (
      'Select * from Tbl_UD')
    FetchAll = True
    Left = 65
    Top = 56
  end
  object Qry_ET: TOraQuery
    SQL.Strings = (
      'Select * from Tbl_ET order by nidtbl_t')
    FetchAll = True
    Left = 194
    Top = 8
  end
  object Qry_P: TOraQuery
    SQL.Strings = (
      'Select * from Tbl_P')
    FetchAll = True
    Left = 336
    Top = 7
  end
  object Qry_UAO: TOraQuery
    Session = Conexao
    SQL.Strings = (
      'select '
      '  tbl_uao.nidtbl_o as nidtbl_o,'
      '  tbl_uao.nidtbl_u as nidtbl_u,'
      '  tbl_uao.npermiti as npermiti,'
      '  tbl_uao.nidtbl_ua as nidtbl_ua,'
      '  0 as nidtbl_opa '
      'from '
      '  tbl_uao,'
      '  tbl_ua'
      'where '
      '  tbl_ua.nidtbl_u = :nidtbl_u and'
      '  tbl_uao.nidtbl_ua = tbl_ua.nidtbl_ua and'
      '  tbl_uao.npermiti = 0'
      'union'
      'select'
      '  tbl_apa.nidtbl_o as nidtbl_o,'
      '  tbl_apa.nidtbl_u as nidtbl_u,'
      '  tbl_apa.npermiti as npermiti,'
      '  0 as nidtbl_ua,'
      '  tbl_apa.nidtbl_opa as nidtbl_opa'
      'from'
      '  tbl_apa,'
      '  tbl_opa,'
      '  tbl_eqv  '
      'where'
      '  tbl_eqv.nidtbl_u = :nidtbl_u and'
      '  tbl_opa.nidtbl_op = tbl_eqv.nidtbl_op and'
      '  tbl_apa.nidtbl_opa = tbl_opa.nidtbl_opa and'
      '  tbl_apa.npermiti = 0'
      '    ')
    FetchAll = True
    Left = 114
    Top = 56
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'nidtbl_u'
      end>
  end
  object Dts_P: TOraDataSource
    DataSet = Qry_P
    Left = 235
    Top = 96
  end
  object Qry_A: TOraQuery
    Session = Conexao
    SQL.Strings = (
      'begin'
      '  :RESULT := MPL_EQUIV.GETAPLICACOESUSU(:CODUSU, :ORDERAPLI);'
      'end;')
    AutoCommit = False
    Left = 16
    Top = 8
    ParamData = <
      item
        DataType = ftCursor
        Name = 'RESULT'
        ParamType = ptOutput
        Value = 'Object'
      end
      item
        DataType = ftFloat
        Name = 'CODUSU'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ORDERAPLI'
        ParamType = ptInput
      end>
  end
end
