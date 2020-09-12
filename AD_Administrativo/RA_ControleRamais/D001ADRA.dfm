object DTM_A001ADRA: TDTM_A001ADRA
  OldCreateOrder = False
  Left = 248
  Top = 56
  Height = 414
  Width = 431
  object QRY_003: TOraQuery
    Session = DMControle.Conexao
    SQL.Strings = (
      'select * from CADSET ')
    Active = True
    Left = 16
    Top = 140
    object QRY_003NIDCADSET: TFloatField
      FieldName = 'NIDCADSET'
      Required = True
    end
    object QRY_003CDESCSETOR: TStringField
      FieldName = 'CDESCSETOR'
      Required = True
      FixedChar = True
      Size = 40
    end
    object QRY_003CENDSETOR: TStringField
      FieldName = 'CENDSETOR'
      Required = True
      FixedChar = True
      Size = 40
    end
    object QRY_003CBAIRROSET: TStringField
      FieldName = 'CBAIRROSET'
      Required = True
      FixedChar = True
      Size = 30
    end
    object QRY_003NPREFSETOR: TFloatField
      FieldName = 'NPREFSETOR'
    end
  end
  object DTS_003: TOraDataSource
    AutoEdit = False
    DataSet = QRY_003
    Left = 72
    Top = 140
  end
  object QRY_002: TOraQuery
    Session = DMControle.Conexao
    SQL.Strings = (
      'select * from CADORG ')
    FetchAll = True
    Active = True
    Left = 16
    Top = 68
    object QRY_002NIDCADORG: TFloatField
      FieldName = 'NIDCADORG'
      Required = True
    end
    object QRY_002CDESCORG: TStringField
      FieldName = 'CDESCORG'
      Required = True
      FixedChar = True
      Size = 40
    end
  end
  object DTS_002: TOraDataSource
    AutoEdit = False
    DataSet = QRY_002
    Left = 72
    Top = 68
  end
  object QRY_001: TOraQuery
    SQLInsert.Strings = (
      'INSERT INTO CADRAM'
      
        '  (NIDCADRAM, NNUMRAMAL, CSTATRAMAL, CCONTRARAM, CDIVURAMAL, CCO' +
        'NTRAMAL, CMAILRAMAL, NIDCADORG, NIDCADSET)'
      'VALUES'
      
        '  (:NIDCADRAM, :NNUMRAMAL, :CSTATRAMAL, :CCONTRARAM, :CDIVURAMAL' +
        ', :CCONTRAMAL, :CMAILRAMAL, :NIDCADORG, :NIDCADSET)')
    SQLDelete.Strings = (
      'DELETE FROM CADRAM'
      'WHERE'
      '  NIDCADRAM = :NIDCADRAM')
    SQLUpdate.Strings = (
      'UPDATE CADRAM'
      'SET'
      '  NIDCADRAM = :NIDCADRAM,'
      '  NNUMRAMAL = :NNUMRAMAL,'
      '  CSTATRAMAL = :CSTATRAMAL,'
      '  CCONTRARAM = :CCONTRARAM,'
      '  CDIVURAMAL = :CDIVURAMAL,'
      '  CCONTRAMAL = :CCONTRAMAL,'
      '  CMAILRAMAL = :CMAILRAMAL,'
      '  NIDCADORG = :NIDCADORG,'
      '  NIDCADSET = :NIDCADSET'
      'WHERE'
      '  NIDCADRAM = :OLD_NIDCADRAM')
    SQLLock.Strings = (
      'SELECT * FROM CADRAM'
      'WHERE'
      '  NIDCADRAM = :NIDCADRAM'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      'WHERE'
      '  NIDCADRAM = :NIDCADRAM')
    Session = DMControle.Conexao
    SQL.Strings = (
      'select * from CADRAM')
    FetchAll = True
    Left = 19
    Top = 12
    object QRY_001NIDCADRAM: TFloatField
      FieldName = 'NIDCADRAM'
      Required = True
    end
    object QRY_001NNUMRAMAL: TFloatField
      FieldName = 'NNUMRAMAL'
      Required = True
    end
    object QRY_001CSTATRAMAL: TStringField
      FieldName = 'CSTATRAMAL'
      Required = True
      FixedChar = True
      Size = 7
    end
    object QRY_001CCONTRARAM: TStringField
      FieldName = 'CCONTRARAM'
      FixedChar = True
    end
    object QRY_001CDIVURAMAL: TStringField
      FieldName = 'CDIVURAMAL'
      FixedChar = True
      Size = 3
    end
    object QRY_001CCONTRAMAL: TStringField
      FieldName = 'CCONTRAMAL'
      FixedChar = True
      Size = 25
    end
    object QRY_001CMAILRAMAL: TStringField
      FieldName = 'CMAILRAMAL'
      FixedChar = True
      Size = 30
    end
    object QRY_001NIDCADORG: TFloatField
      FieldName = 'NIDCADORG'
    end
    object QRY_001NIDCADSET: TFloatField
      FieldName = 'NIDCADSET'
    end
    object QRY_001LKP_CENDSETOR: TStringField
      FieldKind = fkLookup
      FieldName = 'LKP_CENDSETOR'
      LookupDataSet = QRY_003
      LookupKeyFields = 'NIDCADSET'
      LookupResultField = 'CENDSETOR'
      KeyFields = 'NIDCADSET'
      Lookup = True
    end
    object QRY_001LKP_CBAIRROSET: TStringField
      FieldKind = fkLookup
      FieldName = 'LKP_CBAIRROSET'
      LookupDataSet = QRY_003
      LookupKeyFields = 'NIDCADSET'
      LookupResultField = 'CBAIRROSET'
      KeyFields = 'NIDCADSET'
      Lookup = True
    end
    object QRY_001LKP_NPREFSETOR: TStringField
      FieldKind = fkLookup
      FieldName = 'LKP_NPREFSETOR'
      LookupDataSet = QRY_003
      LookupKeyFields = 'NIDCADSET'
      LookupResultField = 'NPREFSETOR'
      KeyFields = 'NIDCADSET'
      Lookup = True
    end
    object QRY_001LKP_CDESCORGAO: TStringField
      FieldKind = fkLookup
      FieldName = 'LKP_CDESCORGAO'
      LookupDataSet = QRY_002
      LookupKeyFields = 'NIDCADORG'
      LookupResultField = 'CDESCORG'
      KeyFields = 'NIDCADORG'
      Size = 30
      Lookup = True
    end
    object QRY_001LKP_CDESCSETOR: TStringField
      FieldKind = fkLookup
      FieldName = 'LKP_CDESCSETOR'
      LookupDataSet = QRY_003
      LookupKeyFields = 'NIDCADSET'
      LookupResultField = 'CDESCSETOR'
      KeyFields = 'NIDCADSET'
      Size = 40
      Lookup = True
    end
  end
  object DTS_001: TOraDataSource
    AutoEdit = False
    DataSet = QRY_001
    Left = 76
    Top = 12
  end
  object QRY_004: TOraQuery
    Session = DMControle.Conexao
    SQL.Strings = (
      'select * from CADOST where nidcadorg = :nidcadorg')
    MasterSource = DTS_002
    Left = 16
    Top = 212
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'nidcadorg'
      end>
    object QRY_004NIDCADOST: TFloatField
      FieldName = 'NIDCADOST'
      Required = True
    end
    object QRY_004NIDCADORG: TFloatField
      FieldName = 'NIDCADORG'
      Required = True
    end
    object QRY_004NIDCADSET: TFloatField
      FieldName = 'NIDCADSET'
      Required = True
    end
    object QRY_004LKP_CDESCSETOR: TStringField
      FieldKind = fkLookup
      FieldName = 'LKP_CDESCSETOR'
      LookupDataSet = QRY_003
      LookupKeyFields = 'NIDCADSET'
      LookupResultField = 'CDESCSETOR'
      KeyFields = 'NIDCADSET'
      LookupCache = True
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Size = 40
      Lookup = True
    end
  end
  object DTS_004: TOraDataSource
    AutoEdit = False
    DataSet = QRY_004
    Left = 72
    Top = 212
  end
  object QryDivulgado: TOraQuery
    Session = DMControle.Conexao
    SQL.Strings = (
      'select cDivuRamal from CADRAM'
      'where cDivuRamal = '#39'SIM'#39)
    FetchAll = True
    Left = 140
    Top = 272
  end
  object QryAtiva: TOraQuery
    Session = DMControle.Conexao
    SQL.Strings = (
      'select cStatRamal from CADRAM'
      'where cStatRamal = '#39'ATIVO'#39)
    FetchAll = True
    Left = 16
    Top = 272
  end
  object QryInativa: TOraQuery
    Session = DMControle.Conexao
    SQL.Strings = (
      'select cStatRamal from CADRAM '
      'where cstatramal = '#39'INATIVO'#39)
    FetchAll = True
    Left = 68
    Top = 272
  end
end
