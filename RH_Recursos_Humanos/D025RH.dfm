object DTM_A025RH: TDTM_A025RH
  OldCreateOrder = False
  Left = 207
  Top = 151
  Height = 265
  Width = 499
  object QRY_106: TOraQuery
    SQLInsert.Strings = (
      'INSERT INTO tbxspt'
      '  (NIDTBXSPT, CDESCRSPT, NCODTCE)'
      'VALUES'
      '  (:NIDTBXSPT, :CDESCRSPT, :NCODTCE)')
    SQLDelete.Strings = (
      'DELETE FROM tbxspt'
      'WHERE'
      '  NIDTBXSPT = :NIDTBXSPT')
    SQLUpdate.Strings = (
      'UPDATE tbxspt'
      'SET'
      '  NIDTBXSPT = :NIDTBXSPT,'
      '  CDESCRSPT = :CDESCRSPT,'
      '  NCODTCE = :NCODTCE'
      'WHERE'
      '  NIDTBXSPT = :OLD_NIDTBXSPT')
    SQLLock.Strings = (
      'SELECT * FROM tbxspt'
      'WHERE'
      '  NIDTBXSPT = :NIDTBXSPT'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      'WHERE'
      '  NIDTBXSPT = :NIDTBXSPT')
    SQL.Strings = (
      'select * '
      'from tbxspt'
      'order by tbxspt.cdescrspt')
    Left = 44
    Top = 20
    object QRY_106NIDTBXSPT: TFloatField
      FieldName = 'NIDTBXSPT'
      Required = True
    end
    object QRY_106CDESCRSPT: TStringField
      FieldName = 'CDESCRSPT'
      Size = 30
    end
    object QRY_106NCODTCE: TFloatField
      Alignment = taCenter
      FieldName = 'NCODTCE'
    end
  end
  object DTS_106: TOraDataSource
    AutoEdit = False
    DataSet = QRY_106
    Left = 128
    Top = 20
  end
end
