object DTM_A004RHCP: TDTM_A004RHCP
  OldCreateOrder = False
  Left = 192
  Top = 107
  Height = 375
  Width = 544
  object QRY_009: TOraQuery
    SQLInsert.Strings = (
      'INSERT INTO cadcag'
      '  (NIDCADCAG, CDESCCARGO)'
      'VALUES'
      '  (:NIDCADCAG, :CDESCCARGO)')
    SQLDelete.Strings = (
      'DELETE FROM cadcag'
      'WHERE'
      '  NIDCADCAG = :NIDCADCAG')
    SQLUpdate.Strings = (
      'UPDATE cadcag'
      'SET'
      '  NIDCADCAG = :NIDCADCAG,'
      '  CDESCCARGO = :CDESCCARGO'
      'WHERE'
      '  NIDCADCAG = :OLD_NIDCADCAG')
    SQLLock.Strings = (
      'SELECT * FROM cadcag'
      'WHERE'
      '  NIDCADCAG = :NIDCADCAG'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      'WHERE'
      '  NIDCADCAG = :NIDCADCAG')
    Session = DMControle.Conexao
    SQL.Strings = (
      'select * from cadcag')
    LockMode = lmLockImmediate
    Left = 28
    Top = 28
    object QRY_009NIDCADCAG: TFloatField
      FieldName = 'NIDCADCAG'
      Required = True
    end
    object QRY_009CDESCCARGO: TStringField
      FieldName = 'CDESCCARGO'
    end
  end
  object DTS_009: TOraDataSource
    AutoEdit = False
    DataSet = QRY_009
    OnDataChange = DTS_009DataChange
    Left = 96
    Top = 28
  end
end
