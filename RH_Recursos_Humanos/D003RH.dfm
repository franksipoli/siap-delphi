object DTM_A003RH: TDTM_A003RH
  OldCreateOrder = False
  Left = 203
  Top = 98
  Height = 315
  Width = 410
  object QRY_028: TOraQuery
    SQLInsert.Strings = (
      'INSERT INTO TbxDsf'
      '  (NIDTBXDSF, CNOMEDSF, NIDADE)'
      'VALUES'
      '  (:NIDTBXDSF, :CNOMEDSF, :NIDADE)')
    SQLDelete.Strings = (
      'DELETE FROM TbxDsf'
      'WHERE'
      '  NIDTBXDSF = :NIDTBXDSF')
    SQLUpdate.Strings = (
      'UPDATE TbxDsf'
      'SET'
      '  NIDTBXDSF = :NIDTBXDSF,'
      '  CNOMEDSF = :CNOMEDSF,'
      '  NIDADE = :NIDADE'
      'WHERE'
      '  NIDTBXDSF = :OLD_NIDTBXDSF')
    SQLLock.Strings = (
      'SELECT * FROM TbxDsf'
      'WHERE'
      '  NIDTBXDSF = :NIDTBXDSF'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      'WHERE'
      '  NIDTBXDSF = :NIDTBXDSF')
    SQL.Strings = (
      'select * from TbxDsf')
    Left = 28
    Top = 20
    object QRY_028NIDTBXDSF: TFloatField
      FieldName = 'NIDTBXDSF'
      Required = True
    end
    object QRY_028CNOMEDSF: TStringField
      FieldName = 'CNOMEDSF'
      Size = 35
    end
    object QRY_028NIDADE: TFloatField
      Alignment = taCenter
      FieldName = 'NIDADE'
      Required = True
      DisplayFormat = '000'
    end
  end
  object DTS_028: TOraDataSource
    AutoEdit = False
    DataSet = QRY_028
    Left = 108
    Top = 20
  end
end
