object DTM_A003AD: TDTM_A003AD
  OldCreateOrder = False
  Height = 0
  Width = 0
  object QRY_032: TOraQuery
    SQLInsert.Strings = (
      'INSERT INTO CadGdc'
      '  (NIDCADGDC, CGRUPODOC)'
      'VALUES'
      '  (:NIDCADGDC, :CGRUPODOC)')
    SQLDelete.Strings = (
      'DELETE FROM CadGdc'
      'WHERE'
      '  NIDCADGDC = :NIDCADGDC')
    SQLUpdate.Strings = (
      'UPDATE CadGdc'
      'SET'
      '  NIDCADGDC = :NIDCADGDC,'
      '  CGRUPODOC = :CGRUPODOC'
      'WHERE'
      '  NIDCADGDC = :OLD_NIDCADGDC')
    SQLLock.Strings = (
      'SELECT * FROM CadGdc'
      'WHERE'
      '  NIDCADGDC = :NIDCADGDC'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      'WHERE'
      '  NIDCADGDC = :NIDCADGDC')
    SQL.Strings = (
      'select * from CadGdc')
    Left = 24
    Top = 12
  end
  object DTS_032: TOraDataSource
    DataSet = QRY_032
    Left = 84
    Top = 12
  end
end
