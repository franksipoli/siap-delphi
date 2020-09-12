object DTM_A009: TDTM_A009
  OldCreateOrder = False
  Left = 192
  Top = 107
  Height = 375
  Width = 544
  object QRY_022: TOraQuery
    SQLInsert.Strings = (
      'INSERT INTO TbxGri'
      '  (NIDTBXGRI, CNOMEGRI)'
      'VALUES'
      '  (:NIDTBXGRI, :CNOMEGRI)')
    SQLDelete.Strings = (
      'DELETE FROM TbxGri'
      'WHERE'
      '  NIDTBXGRI = :NIDTBXGRI')
    SQLUpdate.Strings = (
      'UPDATE TbxGri'
      'SET'
      '  NIDTBXGRI = :NIDTBXGRI,'
      '  CNOMEGRI = :CNOMEGRI'
      'WHERE'
      '  NIDTBXGRI = :OLD_NIDTBXGRI')
    SQLLock.Strings = (
      'SELECT * FROM TbxGri'
      'WHERE'
      '  NIDTBXGRI = :NIDTBXGRI'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      'WHERE'
      '  NIDTBXGRI = :NIDTBXGRI')
    SQL.Strings = (
      'select * from TbxGri')
    Left = 28
    Top = 32
    object QRY_022NIDTBXGRI: TFloatField
      FieldName = 'NIDTBXGRI'
      Required = True
    end
    object QRY_022CNOMEGRI: TStringField
      FieldName = 'CNOMEGRI'
      Required = True
      Size = 40
    end
  end
  object DTS_022: TOraDataSource
    AutoEdit = False
    DataSet = QRY_022
    Left = 112
    Top = 36
  end
end
