object DTM_A012: TDTM_A012
  OldCreateOrder = False
  Left = 192
  Top = 107
  Height = 268
  Width = 431
  object QRY_024: TOraQuery
    SQLInsert.Strings = (
      'INSERT INTO TbxErg'
      '  (NIDTBXERG, CNOMEEMIRG)'
      'VALUES'
      '  (:NIDTBXERG, :CNOMEEMIRG)')
    SQLDelete.Strings = (
      'DELETE FROM TbxErg'
      'WHERE'
      '  NIDTBXERG = :NIDTBXERG')
    SQLUpdate.Strings = (
      'UPDATE TbxErg'
      'SET'
      '  NIDTBXERG = :NIDTBXERG,'
      '  CNOMEEMIRG = :CNOMEEMIRG'
      'WHERE'
      '  NIDTBXERG = :OLD_NIDTBXERG')
    SQLLock.Strings = (
      'SELECT * FROM TbxErg'
      'WHERE'
      '  NIDTBXERG = :NIDTBXERG'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      'WHERE'
      '  NIDTBXERG = :NIDTBXERG')
    SQL.Strings = (
      'select * from TbxErg')
    Left = 40
    Top = 20
    object QRY_024NIDTBXERG: TFloatField
      FieldName = 'NIDTBXERG'
      Required = True
    end
    object QRY_024CNOMEEMIRG: TStringField
      FieldName = 'CNOMEEMIRG'
      Size = 35
    end
  end
  object DTS_024: TOraDataSource
    AutoEdit = False
    DataSet = QRY_024
    Left = 116
    Top = 20
  end
end
