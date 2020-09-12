object DTM_A047RH: TDTM_A047RH
  OldCreateOrder = False
  Left = 176
  Top = 149
  Height = 243
  Width = 479
  object QRY_086: TOraQuery
    SQLInsert.Strings = (
      'INSERT INTO tbxgro'
      '  (NIDTBXGRO, CDESCRIGRO)'
      'VALUES'
      '  (:NIDTBXGRO, :CDESCRIGRO)')
    SQLDelete.Strings = (
      'DELETE FROM tbxgro'
      'WHERE'
      '  NIDTBXGRO = :NIDTBXGRO')
    SQLUpdate.Strings = (
      'UPDATE tbxgro'
      'SET'
      '  NIDTBXGRO = :NIDTBXGRO,'
      '  CDESCRIGRO = :CDESCRIGRO'
      'WHERE'
      '  NIDTBXGRO = :OLD_NIDTBXGRO')
    SQLLock.Strings = (
      'SELECT * FROM tbxgro'
      'WHERE'
      '  NIDTBXGRO = :NIDTBXGRO'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      'WHERE'
      '  NIDTBXGRO = :NIDTBXGRO')
    SQL.Strings = (
      'select *'
      'from tbxgro'
      'order by tbxgro.cdescrigro')
    Left = 28
    Top = 28
    object QRY_086NIDTBXGRO: TFloatField
      FieldName = 'NIDTBXGRO'
      Required = True
    end
    object QRY_086CDESCRIGRO: TStringField
      FieldName = 'CDESCRIGRO'
      Required = True
      Size = 30
    end
  end
  object DTS_086: TOraDataSource
    AutoEdit = False
    DataSet = QRY_086
    Left = 96
    Top = 32
  end
end
