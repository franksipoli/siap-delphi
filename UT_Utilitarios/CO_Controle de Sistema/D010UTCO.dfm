object DTM_A010UTCO: TDTM_A010UTCO
  OldCreateOrder = False
  Left = 249
  Top = 214
  Height = 200
  Width = 424
  object QRY_056: TOraQuery
    SQLInsert.Strings = (
      'INSERT INTO tbl_pb'
      '  (NIDTBL_PB, CSIGLAPER, CNOMEPER)'
      'VALUES'
      '  (:NIDTBL_PB, :CSIGLAPER, :CNOMEPER)')
    SQLDelete.Strings = (
      'DELETE FROM tbl_pb'
      'WHERE'
      '  NIDTBL_PB = :NIDTBL_PB')
    SQLUpdate.Strings = (
      'UPDATE tbl_pb'
      'SET'
      '  NIDTBL_PB = :NIDTBL_PB,'
      '  CSIGLAPER = :CSIGLAPER,'
      '  CNOMEPER = :CNOMEPER'
      'WHERE'
      '  NIDTBL_PB = :OLD_NIDTBL_PB')
    SQLLock.Strings = (
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      'WHERE'
      '  NIDTBL_PB = :NIDTBL_PB')
    SQL.Strings = (
      'select * from tbl_pb ')
    Left = 20
    Top = 13
    object QRY_056NIDTBL_PB: TFloatField
      FieldName = 'NIDTBL_PB'
      Required = True
    end
    object QRY_056CSIGLAPER: TStringField
      FieldName = 'CSIGLAPER'
      Size = 4
    end
    object QRY_056CNOMEPER: TStringField
      FieldName = 'CNOMEPER'
      Size = 30
    end
  end
  object DTS_056: TOraDataSource
    DataSet = QRY_056
    OnDataChange = DTS_056DataChange
    Left = 84
    Top = 12
  end
end
