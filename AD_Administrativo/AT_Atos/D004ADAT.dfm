object DTM_A004ADAT: TDTM_A004ADAT
  OldCreateOrder = False
  Left = 192
  Top = 107
  Height = 375
  Width = 544
  object QRY_072: TOraQuery
    SQLInsert.Strings = (
      'INSERT INTO tbxvpb'
      '  (NIDTBXVPB, CDESCRIVPB)'
      'VALUES'
      '  (:NIDTBXVPB, :CDESCRIVPB)')
    SQLDelete.Strings = (
      'DELETE FROM tbxvpb'
      'WHERE'
      '  NIDTBXVPB = :NIDTBXVPB')
    SQLUpdate.Strings = (
      'UPDATE tbxvpb'
      'SET'
      '  NIDTBXVPB = :NIDTBXVPB,'
      '  CDESCRIVPB = :CDESCRIVPB'
      'WHERE'
      '  NIDTBXVPB = :OLD_NIDTBXVPB')
    SQLLock.Strings = (
      'SELECT * FROM tbxvpb'
      'WHERE'
      '  NIDTBXVPB = :NIDTBXVPB'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      'WHERE'
      '  NIDTBXVPB = :NIDTBXVPB')
    SQL.Strings = (
      'select * from tbxvpb')
    Left = 24
    Top = 28
    object QRY_072NIDTBXVPB: TFloatField
      FieldName = 'NIDTBXVPB'
      Required = True
    end
    object QRY_072CDESCRIVPB: TStringField
      FieldName = 'CDESCRIVPB'
      Required = True
      Size = 40
    end
  end
  object DTS_072: TOraDataSource
    AutoEdit = False
    DataSet = QRY_072
    Left = 108
    Top = 28
  end
end
