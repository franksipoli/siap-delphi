object DTM_A011ADPT: TDTM_A011ADPT
  OldCreateOrder = False
  Left = 193
  Top = 216
  Height = 219
  Width = 488
  object QRY_155: TOraQuery
    SQLInsert.Strings = (
      'INSERT INTO tbxtrq'
      '  (NIDTBXTRQ, CDESCRITRQ, CDOCUMENTO, NDIASATEND, CREFERENRH)'
      'VALUES'
      
        '  (:NIDTBXTRQ, :CDESCRITRQ, :CDOCUMENTO, :NDIASATEND, :CREFERENR' +
        'H)')
    SQLDelete.Strings = (
      'DELETE FROM tbxtrq'
      'WHERE'
      '  NIDTBXTRQ = :NIDTBXTRQ')
    SQLUpdate.Strings = (
      'UPDATE tbxtrq'
      'SET'
      '  NIDTBXTRQ = :NIDTBXTRQ,'
      '  CDESCRITRQ = :CDESCRITRQ,'
      '  CDOCUMENTO = :CDOCUMENTO,'
      '  NDIASATEND = :NDIASATEND,'
      '  CREFERENRH = :CREFERENRH'
      'WHERE'
      '  NIDTBXTRQ = :OLD_NIDTBXTRQ')
    SQLLock.Strings = (
      'SELECT * FROM tbxtrq'
      'WHERE'
      '  NIDTBXTRQ = :NIDTBXTRQ'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      'WHERE'
      '  NIDTBXTRQ = :NIDTBXTRQ')
    SQL.Strings = (
      'select'
      '  *'
      'from'
      '  tbxtrq')
    Left = 28
    Top = 20
    object QRY_155NIDTBXTRQ: TFloatField
      DefaultExpression = '0'
      FieldName = 'NIDTBXTRQ'
      Required = True
    end
    object QRY_155CDESCRITRQ: TStringField
      FieldName = 'CDESCRITRQ'
      Required = True
      Size = 40
    end
    object QRY_155CDOCUMENTO: TStringField
      FieldName = 'CDOCUMENTO'
      Size = 2000
    end
    object QRY_155NDIASATEND: TFloatField
      DefaultExpression = '0'
      FieldName = 'NDIASATEND'
      Required = True
    end
    object QRY_155CREFERENRH: TStringField
      DefaultExpression = 'N'
      FieldName = 'CREFERENRH'
      Required = True
      FixedChar = True
      Size = 1
    end
  end
  object DTS_155: TOraDataSource
    AutoEdit = False
    DataSet = QRY_155
    Left = 104
    Top = 20
  end
  object QRY_155_1: TOraQuery
    SQL.Strings = (
      'select'
      '  *'
      'from'
      '  tbxtrq'
      'where'
      '  nidtbxtrq = :nidtbxtrq')
    MasterSource = DTS_155
    Left = 24
    Top = 84
    ParamData = <
      item
        DataType = ftInteger
        Name = 'nidtbxtrq'
      end>
  end
  object DTS_155_1: TOraDataSource
    AutoEdit = False
    DataSet = QRY_155_1
    Left = 108
    Top = 84
  end
end
