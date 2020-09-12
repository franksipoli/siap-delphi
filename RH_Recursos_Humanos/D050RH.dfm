object DTM_A050RH: TDTM_A050RH
  OldCreateOrder = False
  Left = 176
  Top = 149
  Height = 243
  Width = 479
  object QRY_113: TOraQuery
    SQLInsert.Strings = (
      'INSERT INTO tbxund'
      '  (NIDTBXUND, CDESCRIUND, NCODCONTAB)'
      'VALUES'
      '  (:NIDTBXUND, :CDESCRIUND, :NCODCONTAB)')
    SQLDelete.Strings = (
      'DELETE FROM tbxund'
      'WHERE'
      '  NIDTBXUND = :NIDTBXUND')
    SQLUpdate.Strings = (
      'UPDATE tbxund'
      'SET'
      '  NIDTBXUND = :NIDTBXUND,'
      '  CDESCRIUND = :CDESCRIUND,'
      '  NCODCONTAB = :NCODCONTAB'
      'WHERE'
      '  NIDTBXUND = :OLD_NIDTBXUND')
    SQLLock.Strings = (
      'SELECT * FROM tbxund'
      'WHERE'
      '  NIDTBXUND = :NIDTBXUND'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      'WHERE'
      '  NIDTBXUND = :NIDTBXUND')
    SQL.Strings = (
      'select tbxund.*, initcap(tbxund.cdescriund) as dat_und '
      'from tbxund'
      'order by tbxund.cdescriund')
    Left = 28
    Top = 24
    object QRY_113NIDTBXUND: TFloatField
      FieldName = 'NIDTBXUND'
      Required = True
    end
    object QRY_113CDESCRIUND: TStringField
      FieldName = 'CDESCRIUND'
      Required = True
      Size = 40
    end
    object QRY_113NCODCONTAB: TFloatField
      FieldName = 'NCODCONTAB'
      OnSetText = QRY_113NCODCONTABSetText
    end
    object QRY_113DAT_UND: TStringField
      FieldName = 'DAT_UND'
      Size = 40
    end
  end
  object DTS_113: TOraDataSource
    AutoEdit = False
    DataSet = QRY_113
    Left = 96
    Top = 24
  end
end
