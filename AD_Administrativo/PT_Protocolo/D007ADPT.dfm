object DTM_A007ADPT: TDTM_A007ADPT
  OldCreateOrder = False
  Left = 192
  Top = 139
  Height = 269
  Width = 544
  object QRY_A151: TOraQuery
    SQLInsert.Strings = (
      'INSERT INTO cadreq'
      '  (CEMITIDO)'
      'VALUES'
      '  (:CEMITIDO)')
    SQLDelete.Strings = (
      'DELETE FROM cadreq'
      'WHERE'
      '  NIDCADREQ = :NIDCADREQ')
    SQLUpdate.Strings = (
      'UPDATE cadreq'
      'SET'
      '  CEMITIDO = :CEMITIDO'
      'WHERE'
      '  NIDCADREQ = :OLD_NIDCADREQ')
    SQLLock.Strings = (
      'SELECT * FROM cadreq'
      'WHERE'
      '  NIDCADREQ = :NIDCADREQ'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      'WHERE'
      '  CADREQ.NIDCADREQ = :NIDCADREQ')
    SQL.Strings = (
      'select * from tbl_p')
    CachedUpdates = True
    AfterOpen = QRY_A151AfterOpen
    AfterClose = QRY_A151AfterClose
    AfterScroll = QRY_A151AfterScroll
    Left = 36
    Top = 92
  end
  object DTS_A151: TOraDataSource
    AutoEdit = False
    DataSet = QRY_A151
    Left = 108
    Top = 92
  end
end
