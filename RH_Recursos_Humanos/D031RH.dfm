object DTM_A031RH: TDTM_A031RH
  OldCreateOrder = False
  Left = 176
  Top = 149
  Height = 243
  Width = 479
  object QRY_105: TOraQuery
    SQLInsert.Strings = (
      'INSERT INTO tbxmvp'
      '  (NIDTBXMVP, CDESCRMVP, NCODTCE)'
      'VALUES'
      '  (:NIDTBXMVP, :CDESCRMVP, :NCODTCE)')
    SQLDelete.Strings = (
      'DELETE FROM tbxmvp'
      'WHERE'
      '  NIDTBXMVP = :NIDTBXMVP')
    SQLUpdate.Strings = (
      'UPDATE tbxmvp'
      'SET'
      '  NIDTBXMVP = :NIDTBXMVP,'
      '  CDESCRMVP = :CDESCRMVP,'
      '  NCODTCE = :NCODTCE'
      'WHERE'
      '  NIDTBXMVP = :OLD_NIDTBXMVP')
    SQLLock.Strings = (
      'SELECT * FROM tbxmvp'
      'WHERE'
      '  NIDTBXMVP = :NIDTBXMVP'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      'WHERE'
      '  NIDTBXMVP = :NIDTBXMVP')
    SQL.Strings = (
      'select *'
      'from tbxmvp'
      'order by tbxmvp.cdescrmvp')
    Left = 28
    Top = 24
    object QRY_105NIDTBXMVP: TFloatField
      FieldName = 'NIDTBXMVP'
      Required = True
    end
    object QRY_105CDESCRMVP: TStringField
      FieldName = 'CDESCRMVP'
      Size = 50
    end
    object QRY_105NCODTCE: TFloatField
      Alignment = taCenter
      FieldName = 'NCODTCE'
    end
  end
  object DTS_105: TOraDataSource
    AutoEdit = False
    DataSet = QRY_105
    Left = 96
    Top = 24
  end
end
