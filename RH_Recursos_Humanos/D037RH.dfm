object DTM_A037RH: TDTM_A037RH
  OldCreateOrder = False
  Left = 176
  Top = 149
  Height = 243
  Width = 479
  object QRY_081: TOraQuery
    SQLInsert.Strings = (
      'INSERT INTO tbxagi'
      '  (NIDTBXAGI, CDESCRIAGI, NCODTCE)'
      'VALUES'
      '  (:NIDTBXAGI, :CDESCRIAGI, :NCODTCE)')
    SQLDelete.Strings = (
      'DELETE FROM tbxagi'
      'WHERE'
      '  NIDTBXAGI = :NIDTBXAGI')
    SQLUpdate.Strings = (
      'UPDATE tbxagi'
      'SET'
      '  NIDTBXAGI = :NIDTBXAGI,'
      '  CDESCRIAGI = :CDESCRIAGI,'
      '  NCODTCE = :NCODTCE'
      'WHERE'
      '  NIDTBXAGI = :OLD_NIDTBXAGI')
    SQLLock.Strings = (
      'SELECT * FROM tbxagi'
      'WHERE'
      '  NIDTBXAGI = :NIDTBXAGI'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      'WHERE'
      '  NIDTBXAGI = :NIDTBXAGI')
    SQL.Strings = (
      'select *'
      'from tbxagi'
      'order by tbxagi.cdescriagi')
    Left = 28
    Top = 24
    object QRY_081NIDTBXAGI: TFloatField
      FieldName = 'NIDTBXAGI'
      Required = True
    end
    object QRY_081CDESCRIAGI: TStringField
      FieldName = 'CDESCRIAGI'
      Required = True
      Size = 30
    end
    object QRY_081NCODTCE: TFloatField
      Alignment = taCenter
      FieldName = 'NCODTCE'
    end
  end
  object DTS_081: TOraDataSource
    AutoEdit = False
    DataSet = QRY_081
    Left = 100
    Top = 24
  end
end
