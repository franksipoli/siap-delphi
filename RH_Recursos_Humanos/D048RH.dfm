object DTM_A048RH: TDTM_A048RH
  OldCreateOrder = False
  Left = 207
  Top = 151
  Height = 265
  Width = 499
  object QRY_093: TOraQuery
    SQLInsert.Strings = (
      'INSERT INTO tbxsts'
      '  (NIDTBXSTS, CDESCRISTS, CDISPCRG)'
      'VALUES'
      '  (:NIDTBXSTS, :CDESCRISTS, :CDISPCRG)')
    SQLDelete.Strings = (
      'DELETE FROM tbxsts'
      'WHERE'
      '  NIDTBXSTS = :NIDTBXSTS')
    SQLUpdate.Strings = (
      'UPDATE tbxsts'
      'SET'
      '  NIDTBXSTS = :NIDTBXSTS,'
      '  CDESCRISTS = :CDESCRISTS,'
      '  CDISPCRG = :CDISPCRG'
      'WHERE'
      '  NIDTBXSTS = :OLD_NIDTBXSTS')
    SQLLock.Strings = (
      'SELECT * FROM tbxsts'
      'WHERE'
      '  NIDTBXSTS = :NIDTBXSTS'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      'WHERE'
      '  NIDTBXSTS = :NIDTBXSTS')
    SQL.Strings = (
      'select * '
      'from tbxsts'
      'order by tbxsts.cdescrists')
    Left = 44
    Top = 20
    object QRY_093NIDTBXSTS: TFloatField
      FieldName = 'NIDTBXSTS'
      Required = True
    end
    object QRY_093CDESCRISTS: TStringField
      FieldName = 'CDESCRISTS'
      Required = True
      Size = 30
    end
    object QRY_093CDISPCRG: TStringField
      Alignment = taCenter
      FieldName = 'CDISPCRG'
      OnGetText = QRY_093CDISPCRGGetText
      Size = 1
    end
  end
  object DTS_093: TOraDataSource
    AutoEdit = False
    DataSet = QRY_093
    Left = 128
    Top = 20
  end
end
