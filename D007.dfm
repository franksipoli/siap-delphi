object DTM_A007: TDTM_A007
  OldCreateOrder = False
  Left = 187
  Top = 164
  Height = 295
  Width = 519
  object QRY_020: TOraQuery
    SQLInsert.Strings = (
      'INSERT INTO TbxCor'
      '  (NIDTBXCOR, CNOMECOR)'
      'VALUES'
      '  (:NIDTBXCOR, :CNOMECOR)')
    SQLDelete.Strings = (
      'DELETE FROM TbxCor'
      'WHERE'
      '  NIDTBXCOR = :NIDTBXCOR')
    SQLUpdate.Strings = (
      'UPDATE TbxCor'
      'SET'
      '  NIDTBXCOR = :NIDTBXCOR,'
      '  CNOMECOR = :CNOMECOR'
      'WHERE'
      '  NIDTBXCOR = :OLD_NIDTBXCOR')
    SQLLock.Strings = (
      'SELECT * FROM TbxCor'
      'WHERE'
      '  NIDTBXCOR = :NIDTBXCOR'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      'WHERE'
      '  NIDTBXCOR = :NIDTBXCOR')
    SQL.Strings = (
      'select * from TbxCor')
    Left = 20
    Top = 20
    object QRY_020NIDTBXCOR: TFloatField
      FieldName = 'NIDTBXCOR'
      Required = True
    end
    object QRY_020CNOMECOR: TStringField
      FieldName = 'CNOMECOR'
      Required = True
    end
  end
  object DTS_020: TOraDataSource
    DataSet = QRY_020
    Left = 100
    Top = 20
  end
end
