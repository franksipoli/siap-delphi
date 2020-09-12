object DTM_A023RH: TDTM_A023RH
  OldCreateOrder = False
  Left = 181
  Top = 152
  Height = 264
  Width = 507
  object QRY_126: TOraQuery
    SQLInsert.Strings = (
      'INSERT INTO tbxcat'
      '  (NIDTBXCAT, CDESCRICAT, NCODTCE)'
      'VALUES'
      '  (:NIDTBXCAT, :CDESCRICAT, :NCODTCE)')
    SQLDelete.Strings = (
      'DELETE FROM tbxcat'
      'WHERE'
      '  NIDTBXCAT = :NIDTBXCAT')
    SQLUpdate.Strings = (
      'UPDATE tbxcat'
      'SET'
      '  NIDTBXCAT = :NIDTBXCAT,'
      '  CDESCRICAT = :CDESCRICAT,'
      '  NCODTCE = :NCODTCE'
      'WHERE'
      '  NIDTBXCAT = :OLD_NIDTBXCAT')
    SQLLock.Strings = (
      'SELECT * FROM tbxcat'
      'WHERE'
      '  NIDTBXCAT = :NIDTBXCAT'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      'WHERE'
      '  NIDTBXCAT = :NIDTBXCAT')
    Session = DMControle.Conexao
    SQL.Strings = (
      'select *'
      'from tbxcat'
      'order by cdescricat')
    Left = 36
    Top = 24
    object QRY_126NIDTBXCAT: TFloatField
      FieldName = 'NIDTBXCAT'
      Required = True
    end
    object QRY_126CDESCRICAT: TStringField
      FieldName = 'CDESCRICAT'
      Required = True
      Size = 30
    end
    object QRY_126NCODTCE: TFloatField
      Alignment = taCenter
      FieldName = 'NCODTCE'
      Required = True
    end
  end
  object DTS_126: TOraDataSource
    DataSet = QRY_126
    Left = 120
    Top = 24
  end
end
