object DTM_A010: TDTM_A010
  OldCreateOrder = False
  Left = 192
  Top = 107
  Height = 268
  Width = 409
  object QRY_021: TOraQuery
    SQLInsert.Strings = (
      'INSERT INTO TbxEci'
      '  (NIDTBXECI, CNOMEECI)'
      'VALUES'
      '  (:NIDTBXECI, :CNOMEECI)')
    SQLDelete.Strings = (
      'DELETE FROM TbxEci'
      'WHERE'
      '  NIDTBXECI = :NIDTBXECI')
    SQLUpdate.Strings = (
      'UPDATE TbxEci'
      'SET'
      '  NIDTBXECI = :NIDTBXECI,'
      '  CNOMEECI = :CNOMEECI'
      'WHERE'
      '  NIDTBXECI = :OLD_NIDTBXECI')
    SQLLock.Strings = (
      'SELECT * FROM TbxEci'
      'WHERE'
      '  NIDTBXECI = :NIDTBXECI'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      'WHERE'
      '  NIDTBXECI = :NIDTBXECI')
    SQL.Strings = (
      'select * from TbxEci')
    Left = 24
    Top = 24
    object QRY_021NIDTBXECI: TFloatField
      FieldName = 'NIDTBXECI'
      Required = True
    end
    object QRY_021CNOMEECI: TStringField
      FieldName = 'CNOMEECI'
      Required = True
      Size = 15
    end
  end
  object DTS_021: TOraDataSource
    AutoEdit = False
    DataSet = QRY_021
    Left = 96
    Top = 24
  end
end
