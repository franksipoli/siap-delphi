object DTM_A022RH: TDTM_A022RH
  OldCreateOrder = False
  Left = 175
  Top = 149
  Height = 375
  Width = 544
  object QRY_120: TOraQuery
    SQLInsert.Strings = (
      'INSERT INTO tbxfgv'
      '  (NIDTBXFGV, CFUNCAO, NCODTCE)'
      'VALUES'
      '  (:NIDTBXFGV, :CFUNCAO, :NCODTCE)')
    SQLDelete.Strings = (
      'DELETE FROM tbxfgv'
      'WHERE'
      '  NIDTBXFGV = :NIDTBXFGV')
    SQLUpdate.Strings = (
      'UPDATE tbxfgv'
      'SET'
      '  NIDTBXFGV = :NIDTBXFGV,'
      '  CFUNCAO = :CFUNCAO,'
      '  NCODTCE = :NCODTCE'
      'WHERE'
      '  NIDTBXFGV = :OLD_NIDTBXFGV')
    SQLLock.Strings = (
      'SELECT * FROM tbxfgv'
      'WHERE'
      '  NIDTBXFGV = :NIDTBXFGV'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      'WHERE'
      '  NIDTBXFGV = :NIDTBXFGV')
    Session = DMControle.Conexao
    SQL.Strings = (
      'select *'
      'from tbxfgv'
      'order by CFUNCAO')
    Left = 28
    Top = 24
    object QRY_120NIDTBXFGV: TFloatField
      FieldName = 'NIDTBXFGV'
      Required = True
    end
    object QRY_120CFUNCAO: TStringField
      FieldName = 'CFUNCAO'
      Size = 30
    end
    object QRY_120NCODTCE: TFloatField
      Alignment = taCenter
      FieldName = 'NCODTCE'
    end
  end
  object DTS_120: TOraDataSource
    AutoEdit = False
    DataSet = QRY_120
    Left = 116
    Top = 24
  end
end
