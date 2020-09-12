object DTM_A035RH: TDTM_A035RH
  OldCreateOrder = False
  Left = 176
  Top = 149
  Height = 243
  Width = 479
  object QRY_104: TOraQuery
    SQLInsert.Strings = (
      'INSERT INTO tbxacr'
      '  (NIDTBXACR, CDESCRACR, NCODTCE)'
      'VALUES'
      '  (:NIDTBXACR, :CDESCRACR, :NCODTCE)')
    SQLDelete.Strings = (
      'DELETE FROM tbxacr'
      'WHERE'
      '  NIDTBXACR = :NIDTBXACR')
    SQLUpdate.Strings = (
      'UPDATE tbxacr'
      'SET'
      '  NIDTBXACR = :NIDTBXACR,'
      '  CDESCRACR = :CDESCRACR,'
      '  NCODTCE = :NCODTCE'
      'WHERE'
      '  NIDTBXACR = :OLD_NIDTBXACR')
    SQLLock.Strings = (
      'SELECT * FROM tbxacr'
      'WHERE'
      '  NIDTBXACR = :NIDTBXACR'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      'WHERE'
      '  NIDTBXACR = :NIDTBXACR')
    SQL.Strings = (
      'select *'
      'from tbxacr'
      'order by tbxacr.cdescracr')
    Left = 28
    Top = 24
    object QRY_104NIDTBXACR: TFloatField
      FieldName = 'NIDTBXACR'
      Required = True
    end
    object QRY_104CDESCRACR: TStringField
      FieldName = 'CDESCRACR'
      Size = 30
    end
    object QRY_104NCODTCE: TFloatField
      Alignment = taCenter
      FieldName = 'NCODTCE'
    end
  end
  object DTS_104: TOraDataSource
    AutoEdit = False
    DataSet = QRY_104
    Left = 100
    Top = 24
  end
end
