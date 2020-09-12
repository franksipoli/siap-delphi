object DTM_A045RH: TDTM_A045RH
  OldCreateOrder = False
  Left = 176
  Top = 149
  Height = 243
  Width = 479
  object QRY_143: TOraQuery
    SQLInsert.Strings = (
      'INSERT INTO tbxgev'
      '  (NIDTBXGEV, CDESCRIGEV)'
      'VALUES'
      '  (:NIDTBXGEV, :CDESCRIGEV)')
    SQLDelete.Strings = (
      'DELETE FROM tbxgev'
      'WHERE'
      '  NIDTBXGEV = :NIDTBXGEV')
    SQLUpdate.Strings = (
      'UPDATE tbxgev'
      'SET'
      '  NIDTBXGEV = :NIDTBXGEV,'
      '  CDESCRIGEV = :CDESCRIGEV'
      'WHERE'
      '  NIDTBXGEV = :OLD_NIDTBXGEV')
    SQLLock.Strings = (
      'SELECT * FROM tbxgev'
      'WHERE'
      '  NIDTBXGEV = :NIDTBXGEV'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      'WHERE'
      '  NIDTBXGEV = :NIDTBXGEV')
    SQL.Strings = (
      'select *'
      'from tbxgev'
      'order by tbxgev.cdescrigev')
    Left = 28
    Top = 28
    object QRY_143NIDTBXGEV: TFloatField
      FieldName = 'NIDTBXGEV'
      Required = True
    end
    object QRY_143CDESCRIGEV: TStringField
      FieldName = 'CDESCRIGEV'
      Required = True
      Size = 40
    end
  end
  object DTS_143: TOraDataSource
    AutoEdit = False
    DataSet = QRY_143
    Left = 96
    Top = 24
  end
end
