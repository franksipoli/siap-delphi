object DTM_A001: TDTM_A001
  OldCreateOrder = False
  Left = 164
  Top = 196
  Height = 200
  Width = 404
  object QRY_002: TOraQuery
    SQLInsert.Strings = (
      'INSERT INTO CADORG'
      '  (CDESCORG, NIDCADORG)'
      'VALUES'
      '  (:CDESCORG, :NIDCADORG)')
    SQLDelete.Strings = (
      'DELETE FROM CADORG'
      'WHERE'
      '  NIDCADORG = :NIDCADORG')
    SQLUpdate.Strings = (
      'UPDATE CADORG'
      'SET'
      '  CDESCORG = :CDESCORG,'
      '  NIDCADORG = :NIDCADORG'
      'WHERE'
      '  NIDCADORG = :OLD_NIDCADORG')
    SQLLock.Strings = (
      'SELECT * FROM CADORG'
      'WHERE'
      '  NIDCADORG = :NIDCADORG'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      'WHERE'
      '  NIDCADORG = :NIDCADORG')
    Session = DMControle.Conexao
    SQL.Strings = (
      'select * from CADORG')
    Left = 20
    Top = 16
    object QRY_002NIDCADORG: TFloatField
      FieldName = 'NIDCADORG'
      Required = True
    end
    object QRY_002CDESCORG: TStringField
      FieldName = 'CDESCORG'
      Required = True
      FixedChar = True
      Size = 40
    end
  end
  object DTS_002: TOraDataSource
    AutoEdit = False
    DataSet = QRY_002
    OnDataChange = DTS_002DataChange
    Left = 84
    Top = 16
  end
end
