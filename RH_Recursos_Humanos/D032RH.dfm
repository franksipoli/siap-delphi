object DTM_A032RH: TDTM_A032RH
  OldCreateOrder = False
  Left = 176
  Top = 149
  Height = 243
  Width = 479
  object QRY_122: TOraQuery
    SQLInsert.Strings = (
      'INSERT INTO tbxpcr'
      '  (NIDTBXPCR, CDESCRIPCR, NCODTCE)'
      'VALUES'
      '  (:NIDTBXPCR, :CDESCRIPCR, :NCODTCE)')
    SQLDelete.Strings = (
      'DELETE FROM tbxpcr'
      'WHERE'
      '  NIDTBXPCR = :NIDTBXPCR')
    SQLUpdate.Strings = (
      'UPDATE tbxpcr'
      'SET'
      '  NIDTBXPCR = :NIDTBXPCR,'
      '  CDESCRIPCR = :CDESCRIPCR,'
      '  NCODTCE = :NCODTCE'
      'WHERE'
      '  NIDTBXPCR = :OLD_NIDTBXPCR')
    SQLLock.Strings = (
      'SELECT * FROM tbxpcr'
      'WHERE'
      '  NIDTBXPCR = :NIDTBXPCR'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      'WHERE'
      '  NIDTBXPCR = :NIDTBXPCR')
    SQL.Strings = (
      'select *'
      'from tbxpcr'
      'order by tbxpcr.cdescripcr')
    Left = 28
    Top = 24
    object QRY_122NIDTBXPCR: TFloatField
      FieldName = 'NIDTBXPCR'
      Required = True
    end
    object QRY_122CDESCRIPCR: TStringField
      FieldName = 'CDESCRIPCR'
      Required = True
      Size = 30
    end
    object QRY_122NCODTCE: TFloatField
      Alignment = taCenter
      FieldName = 'NCODTCE'
      Required = True
    end
  end
  object DTS_122: TOraDataSource
    AutoEdit = False
    DataSet = QRY_122
    Left = 100
    Top = 24
  end
end
