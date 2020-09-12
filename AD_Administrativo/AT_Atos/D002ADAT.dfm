object DTM_A002ADAT: TDTM_A002ADAT
  OldCreateOrder = False
  Left = 192
  Top = 107
  Height = 375
  Width = 544
  object QRY_070: TOraQuery
    SQLInsert.Strings = (
      'INSERT INTO tbxrsv'
      '  (NIDTBXRSV, CDESCRIRSV)'
      'VALUES'
      '  (:NIDTBXRSV, :CDESCRIRSV)')
    SQLDelete.Strings = (
      'DELETE FROM tbxrsv'
      'WHERE'
      '  NIDTBXRSV = :NIDTBXRSV')
    SQLUpdate.Strings = (
      'UPDATE tbxrsv'
      'SET'
      '  NIDTBXRSV = :NIDTBXRSV,'
      '  CDESCRIRSV = :CDESCRIRSV'
      'WHERE'
      '  NIDTBXRSV = :OLD_NIDTBXRSV')
    SQLLock.Strings = (
      'SELECT * FROM tbxrsv'
      'WHERE'
      '  NIDTBXRSV = :NIDTBXRSV'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      'WHERE'
      '  NIDTBXRSV = :NIDTBXRSV')
    SQL.Strings = (
      'select * from tbxrsv')
    Left = 24
    Top = 28
    object QRY_070NIDTBXRSV: TFloatField
      FieldName = 'NIDTBXRSV'
      Required = True
    end
    object QRY_070CDESCRIRSV: TStringField
      FieldName = 'CDESCRIRSV'
      Required = True
      Size = 40
    end
  end
  object DTS_070: TOraDataSource
    AutoEdit = False
    DataSet = QRY_070
    Left = 108
    Top = 28
  end
end
