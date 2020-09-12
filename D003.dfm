object DTM_A003: TDTM_A003
  OldCreateOrder = False
  Left = 216
  Top = 175
  Height = 299
  Width = 400
  object QRY_004: TOraQuery
    SQLInsert.Strings = (
      'INSERT INTO CADOST'
      '  (NIDCADORG, NIDCADOST, NIDCADSET)'
      'VALUES'
      '  (:NIDCADORG, :NIDCADOST, :NIDCADSET)')
    SQLDelete.Strings = (
      'DELETE FROM CADOST'
      'WHERE'
      '  NIDCADOST = :NIDCADOST')
    SQLUpdate.Strings = (
      'UPDATE CADOST'
      'SET'
      '  NIDCADORG = :NIDCADORG,'
      '  NIDCADOST = :NIDCADOST,'
      '  NIDCADSET = :NIDCADSET'
      'WHERE'
      '  NIDCADOST = :OLD_NIDCADOST')
    SQLLock.Strings = (
      'SELECT * FROM CADOST'
      'WHERE'
      '  NIDCADOST = :NIDCADOST'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      'WHERE'
      '  NIDCADOST = :NIDCADOST')
    SQL.Strings = (
      'select * from CADOST')
    Left = 20
    Top = 16
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
      Size = 40
      Lookup = True
    end
    object QRY_004LKP_CDESCORGAO: TStringField
      FieldKind = fkLookup
      FieldName = 'LKP_CDESCORGAO'
      LookupDataSet = QRY_002
      LookupKeyFields = 'NIDCADORG'
      LookupResultField = 'CDESCORG'
      KeyFields = 'NIDCADORG'
      LookupCache = True
      Size = 40
      Lookup = True
    end
  end
  object DTS_004: TOraDataSource
    AutoEdit = False
    DataSet = QRY_004
    Left = 84
    Top = 16
  end
  object QRY_003: TOraQuery
    SQL.Strings = (
      'select * from CADSET')
    MasterSource = DTS_004
    Left = 20
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
    Left = 84
    Top = 136
  end
  object QRY_002: TOraQuery
    SQL.Strings = (
      'select * from CADORG')
    MasterSource = DTS_004
    Left = 20
    Top = 83
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
    Left = 84
    Top = 79
  end
end
