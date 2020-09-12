object DTM_A034RH: TDTM_A034RH
  OldCreateOrder = False
  Left = 176
  Top = 149
  Height = 243
  Width = 479
  object QRY_097: TOraQuery
    SQLInsert.Strings = (
      'INSERT INTO tbxtps'
      '  (NIDTBXTPS, CDESCRITPS, NCODTCE)'
      'VALUES'
      '  (:NIDTBXTPS, :CDESCRITPS, :NCODTCE)')
    SQLDelete.Strings = (
      'DELETE FROM tbxtps'
      'WHERE'
      '  NIDTBXTPS = :NIDTBXTPS')
    SQLUpdate.Strings = (
      'UPDATE tbxtps'
      'SET'
      '  NIDTBXTPS = :NIDTBXTPS,'
      '  CDESCRITPS = :CDESCRITPS,'
      '  NCODTCE = :NCODTCE'
      'WHERE'
      '  NIDTBXTPS = :OLD_NIDTBXTPS')
    SQLLock.Strings = (
      'SELECT * FROM tbxtps'
      'WHERE'
      '  NIDTBXTPS = :NIDTBXTPS'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      'WHERE'
      '  NIDTBXTPS = :NIDTBXTPS')
    SQL.Strings = (
      'select *'
      'from tbxtps'
      'order by tbxtps.cdescritps')
    Left = 28
    Top = 24
    object QRY_097NIDTBXTPS: TFloatField
      FieldName = 'NIDTBXTPS'
      Required = True
    end
    object QRY_097CDESCRITPS: TStringField
      FieldName = 'CDESCRITPS'
      Required = True
      Size = 30
    end
    object QRY_097NCODTCE: TFloatField
      Alignment = taCenter
      FieldName = 'NCODTCE'
    end
  end
  object DTS_097: TOraDataSource
    AutoEdit = False
    DataSet = QRY_097
    Left = 100
    Top = 24
  end
end
