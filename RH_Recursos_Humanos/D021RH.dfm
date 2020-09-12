object DTM_A021RH: TDTM_A021RH
  OldCreateOrder = False
  Left = 162
  Top = 158
  Height = 261
  Width = 476
  object QRY_080: TOraQuery
    SQLInsert.Strings = (
      'INSERT INTO tagslr'
      '  (NIDTAGSLR, CCLASSE, NNIVEL, NVALORSLR, NIDTBXSLR)'
      'VALUES'
      '  (:NIDTAGSLR, :CCLASSE, :NNIVEL, :NVALORSLR, :NIDTBXSLR)')
    SQLDelete.Strings = (
      'DELETE FROM tagslr'
      'WHERE'
      '  NIDTAGSLR = :NIDTAGSLR')
    SQLUpdate.Strings = (
      'UPDATE tagslr'
      'SET'
      '  NIDTAGSLR = :NIDTAGSLR,'
      '  CCLASSE = :CCLASSE,'
      '  NNIVEL = :NNIVEL,'
      '  NVALORSLR = :NVALORSLR,'
      '  NIDTBXSLR = :NIDTBXSLR'
      'WHERE'
      '  NIDTAGSLR = :OLD_NIDTAGSLR')
    SQLLock.Strings = (
      'SELECT * FROM tagslr'
      'WHERE'
      '  NIDTAGSLR = :NIDTAGSLR'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      'WHERE'
      '  NIDTAGSLR = :NIDTAGSLR')
    Session = DMControle.Conexao
    SQL.Strings = (
      'select * '
      'from tagslr'
      'where tagslr.nidtbxslr = :nidtbxslr'
      'order by cclasse,nnivel')
    CachedUpdates = True
    Left = 28
    Top = 24
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'nidtbxslr'
      end>
    object QRY_080NIDTAGSLR: TFloatField
      FieldName = 'NIDTAGSLR'
      Required = True
    end
    object QRY_080CCLASSE: TStringField
      Alignment = taCenter
      FieldName = 'CCLASSE'
      Size = 3
    end
    object QRY_080NNIVEL: TFloatField
      Alignment = taCenter
      FieldName = 'NNIVEL'
      Required = True
    end
    object QRY_080NVALORSLR: TFloatField
      FieldName = 'NVALORSLR'
      Required = True
      currency = True
    end
    object QRY_080NIDTBXSLR: TFloatField
      FieldName = 'NIDTBXSLR'
      Required = True
    end
  end
  object DTS_080: TOraDataSource
    AutoEdit = False
    DataSet = QRY_080
    Left = 112
    Top = 24
  end
end
