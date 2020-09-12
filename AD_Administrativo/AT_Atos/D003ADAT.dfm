object DTM_A003ADAT: TDTM_A003ADAT
  OldCreateOrder = False
  Left = 192
  Top = 107
  Height = 375
  Width = 544
  object QRY_071: TOraQuery
    SQLInsert.Strings = (
      'INSERT INTO tbxtat'
      '  (NIDTBXTAT, CDESCRITAT, CPATHARQ)'
      'VALUES'
      '  (:NIDTBXTAT, :CDESCRITAT, :CPATHARQ)')
    SQLDelete.Strings = (
      'DELETE FROM tbxtat'
      'WHERE'
      '  NIDTBXTAT = :NIDTBXTAT')
    SQLUpdate.Strings = (
      'UPDATE tbxtat'
      'SET'
      '  NIDTBXTAT = :NIDTBXTAT,'
      '  CDESCRITAT = :CDESCRITAT,'
      '  CPATHARQ = :CPATHARQ'
      'WHERE'
      '  NIDTBXTAT = :OLD_NIDTBXTAT')
    SQLLock.Strings = (
      'SELECT * FROM tbxtat'
      'WHERE'
      '  NIDTBXTAT = :NIDTBXTAT'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      'WHERE'
      '  NIDTBXTAT = :NIDTBXTAT')
    SQL.Strings = (
      'select * from tbxtat')
    Left = 28
    Top = 28
    object QRY_071NIDTBXTAT: TFloatField
      FieldName = 'NIDTBXTAT'
      Required = True
    end
    object QRY_071CDESCRITAT: TStringField
      FieldName = 'CDESCRITAT'
      Required = True
      Size = 40
    end
    object QRY_071CPATHARQ: TStringField
      FieldName = 'CPATHARQ'
      Size = 250
    end
  end
  object DTS_071: TOraDataSource
    AutoEdit = False
    DataSet = QRY_071
    Left = 108
    Top = 28
  end
end
