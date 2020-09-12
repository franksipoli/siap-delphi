object DTM_A044RH: TDTM_A044RH
  OldCreateOrder = False
  Left = 176
  Top = 149
  Height = 243
  Width = 479
  object QRY_141: TOraQuery
    SQLInsert.Strings = (
      'INSERT INTO tbxent'
      '  (NIDTBXENT, CDESCRIENT)'
      'VALUES'
      '  (:NIDTBXENT, :CDESCRIENT)')
    SQLDelete.Strings = (
      'DELETE FROM tbxent'
      'WHERE'
      '  NIDTBXENT = :NIDTBXENT')
    SQLUpdate.Strings = (
      'UPDATE tbxent'
      'SET'
      '  NIDTBXENT = :NIDTBXENT,'
      '  CDESCRIENT = :CDESCRIENT'
      'WHERE'
      '  NIDTBXENT = :OLD_NIDTBXENT')
    SQLLock.Strings = (
      'SELECT * FROM tbxent'
      'WHERE'
      '  NIDTBXENT = :NIDTBXENT'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      'WHERE'
      '  NIDTBXENT = :NIDTBXENT')
    SQL.Strings = (
      'select *'
      'from tbxent'
      'order by tbxent.cdescrient')
    Left = 28
    Top = 24
    object QRY_141NIDTBXENT: TFloatField
      FieldName = 'NIDTBXENT'
      Required = True
    end
    object QRY_141CDESCRIENT: TStringField
      FieldName = 'CDESCRIENT'
      Size = 40
    end
  end
  object DTS_141: TOraDataSource
    AutoEdit = False
    DataSet = QRY_141
    Left = 96
    Top = 24
  end
end
