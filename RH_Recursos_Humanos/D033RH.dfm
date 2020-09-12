object DTM_A033RH: TDTM_A033RH
  OldCreateOrder = False
  Left = 176
  Top = 149
  Height = 243
  Width = 479
  object QRY_127: TOraQuery
    SQLInsert.Strings = (
      'INSERT INTO tbxvpd'
      '  (NIDTBXVPD, CDESCRVPD, NCODTCE)'
      'VALUES'
      '  (:NIDTBXVPD, :CDESCRVPD, :NCODTCE)')
    SQLDelete.Strings = (
      'DELETE FROM tbxvpd'
      'WHERE'
      '  NIDTBXVPD = :NIDTBXVPD')
    SQLUpdate.Strings = (
      'UPDATE tbxvpd'
      'SET'
      '  NIDTBXVPD = :NIDTBXVPD,'
      '  CDESCRVPD = :CDESCRVPD,'
      '  NCODTCE = :NCODTCE'
      'WHERE'
      '  NIDTBXVPD = :OLD_NIDTBXVPD')
    SQLLock.Strings = (
      'SELECT * FROM tbxvpd'
      'WHERE'
      '  NIDTBXVPD = :NIDTBXVPD'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      'WHERE'
      '  NIDTBXVPD = :NIDTBXVPD')
    SQL.Strings = (
      'select *'
      'from tbxvpd'
      'order by tbxvpd.cdescrvpd')
    Left = 28
    Top = 24
    object QRY_127NIDTBXVPD: TFloatField
      FieldName = 'NIDTBXVPD'
      Required = True
    end
    object QRY_127CDESCRVPD: TStringField
      FieldName = 'CDESCRVPD'
      Size = 30
    end
    object QRY_127NCODTCE: TFloatField
      Alignment = taCenter
      FieldName = 'NCODTCE'
    end
  end
  object DTS_127: TOraDataSource
    AutoEdit = False
    DataSet = QRY_127
    Left = 100
    Top = 24
  end
end
