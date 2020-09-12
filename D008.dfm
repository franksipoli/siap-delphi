object DTM_A008: TDTM_A008
  OldCreateOrder = False
  Left = 197
  Top = 180
  Height = 226
  Width = 400
  object QRY_023: TOraQuery
    SQLInsert.Strings = (
      'INSERT INTO TbxNac'
      '  (NIDTBXNAC, CNOMENAC)'
      'VALUES'
      '  (:NIDTBXNAC, :CNOMENAC)')
    SQLDelete.Strings = (
      'DELETE FROM TbxNac'
      'WHERE'
      '  NIDTBXNAC = :NIDTBXNAC')
    SQLUpdate.Strings = (
      'UPDATE TbxNac'
      'SET'
      '  NIDTBXNAC = :NIDTBXNAC,'
      '  CNOMENAC = :CNOMENAC'
      'WHERE'
      '  NIDTBXNAC = :OLD_NIDTBXNAC')
    SQLLock.Strings = (
      'SELECT * FROM TbxNac'
      'WHERE'
      '  NIDTBXNAC = :NIDTBXNAC'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      'WHERE'
      '  NIDTBXNAC = :NIDTBXNAC')
    SQL.Strings = (
      'select * from TbxNac')
    Left = 28
    Top = 16
    object QRY_023NIDTBXNAC: TFloatField
      FieldName = 'NIDTBXNAC'
      Required = True
    end
    object QRY_023CNOMENAC: TStringField
      FieldName = 'CNOMENAC'
      Required = True
      Size = 30
    end
  end
  object DTS_023: TOraDataSource
    AutoEdit = False
    DataSet = QRY_023
    Left = 108
    Top = 16
  end
end
