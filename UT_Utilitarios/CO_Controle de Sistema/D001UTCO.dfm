object DTM_A001UTCO: TDTM_A001UTCO
  OldCreateOrder = False
  Left = 208
  Top = 198
  Height = 205
  Width = 506
  object QRY_040: TOraQuery
    SQLInsert.Strings = (
      'INSERT INTO tbl_g'
      '  (CNOMEGRUPO, NSEQUENCIA, NIDTBL_G)'
      'VALUES'
      '  (:CNOMEGRUPO, :NSEQUENCIA, :NIDTBL_G)')
    SQLDelete.Strings = (
      'DELETE FROM tbl_g'
      'WHERE'
      '  NIDTBL_G = :NIDTBL_G')
    SQLUpdate.Strings = (
      'UPDATE tbl_g'
      'SET'
      '  CNOMEGRUPO = :CNOMEGRUPO,'
      '  NSEQUENCIA = :NSEQUENCIA,'
      '  NIDTBL_G = :NIDTBL_G'
      'WHERE'
      '  NIDTBL_G = :OLD_NIDTBL_G')
    SQLLock.Strings = (
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      'WHERE'
      '  NIDTBL_G = :NIDTBL_G')
    SQL.Strings = (
      'select * from tbl_g')
    Left = 20
    Top = 20
    object QRY_040CNOMEGRUPO: TStringField
      FieldName = 'CNOMEGRUPO'
      Size = 15
    end
    object QRY_040NSEQUENCIA: TIntegerField
      FieldName = 'NSEQUENCIA'
      Required = True
    end
    object QRY_040NIDTBL_G: TFloatField
      FieldName = 'NIDTBL_G'
      Required = True
    end
  end
  object DTS_040: TOraDataSource
    AutoEdit = False
    DataSet = QRY_040
    Left = 92
    Top = 20
  end
end
