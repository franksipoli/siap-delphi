object DTM_A049RH: TDTM_A049RH
  OldCreateOrder = False
  Left = 176
  Top = 149
  Height = 243
  Width = 479
  object QRY_111: TOraQuery
    SQLInsert.Strings = (
      'INSERT INTO tbxpja'
      '  (NIDTBXPJA, CDESCRIPJA, NCODCONTAB)'
      'VALUES'
      '  (:NIDTBXPJA, :CDESCRIPJA, :NCODCONTAB)')
    SQLDelete.Strings = (
      'DELETE FROM tbxpja'
      'WHERE'
      '  NIDTBXPJA = :NIDTBXPJA')
    SQLUpdate.Strings = (
      'UPDATE tbxpja'
      'SET'
      '  NIDTBXPJA = :NIDTBXPJA,'
      '  CDESCRIPJA = :CDESCRIPJA,'
      '  NCODCONTAB = :NCODCONTAB'
      'WHERE'
      '  NIDTBXPJA = :OLD_NIDTBXPJA')
    SQLLock.Strings = (
      'SELECT * FROM tbxpja'
      'WHERE'
      '  NIDTBXPJA = :NIDTBXPJA'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      'WHERE'
      '  NIDTBXPJA = :NIDTBXPJA')
    SQL.Strings = (
      'select *'
      'from tbxpja'
      'order by tbxpja.cdescripja')
    Left = 28
    Top = 24
    object QRY_111NIDTBXPJA: TFloatField
      FieldName = 'NIDTBXPJA'
      Required = True
    end
    object QRY_111CDESCRIPJA: TStringField
      FieldName = 'CDESCRIPJA'
      Required = True
      Size = 40
    end
    object QRY_111NCODCONTAB: TFloatField
      Alignment = taCenter
      FieldName = 'NCODCONTAB'
      OnSetText = QRY_111NCODCONTABSetText
    end
  end
  object DTS_111: TOraDataSource
    AutoEdit = False
    DataSet = QRY_111
    Left = 96
    Top = 24
  end
end
