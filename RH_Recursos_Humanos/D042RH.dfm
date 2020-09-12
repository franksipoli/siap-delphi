object DTM_A042RH: TDTM_A042RH
  OldCreateOrder = False
  Left = 213
  Top = 168
  Height = 286
  Width = 400
  object QRY_087: TOraQuery
    SQLInsert.Strings = (
      'INSERT INTO tbxltb'
      '  (NIDTBXLTB, CDESCRILTB, CCODANT)'
      'VALUES'
      '  (:NIDTBXLTB, :CDESCRILTB, :CCODANT)')
    SQLDelete.Strings = (
      'DELETE FROM tbxltb'
      'WHERE'
      '  NIDTBXLTB = :NIDTBXLTB')
    SQLUpdate.Strings = (
      'UPDATE tbxltb'
      'SET'
      '  NIDTBXLTB = :NIDTBXLTB,'
      '  CDESCRILTB = :CDESCRILTB,'
      '  CCODANT = :CCODANT'
      'WHERE'
      '  NIDTBXLTB = :OLD_NIDTBXLTB')
    SQLLock.Strings = (
      'SELECT * FROM tbxltb'
      'WHERE'
      '  NIDTBXLTB = :NIDTBXLTB'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      'WHERE'
      '  NIDTBXLTB = :NIDTBXLTB')
    SQL.Strings = (
      'select * '
      'from tbxltb')
    Left = 36
    Top = 20
  end
  object DTS_087: TOraDataSource
    AutoEdit = False
    DataSet = QRY_087
    Left = 96
    Top = 20
  end
end
