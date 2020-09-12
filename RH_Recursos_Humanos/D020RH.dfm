object DTM_A020RH: TDTM_A020RH
  OldCreateOrder = False
  Left = 193
  Top = 185
  Height = 255
  Width = 492
  object QRY_092: TOraQuery
    SQLInsert.Strings = (
      'INSERT INTO tbxslr'
      '  (NIDTBXSLR, CDESCRISLR)'
      'VALUES'
      '  (:NIDTBXSLR, :CDESCRISLR)')
    SQLDelete.Strings = (
      'DELETE FROM tbxslr'
      'WHERE'
      '  NIDTBXSLR = :NIDTBXSLR')
    SQLUpdate.Strings = (
      'UPDATE tbxslr'
      'SET'
      '  NIDTBXSLR = :NIDTBXSLR,'
      '  CDESCRISLR = :CDESCRISLR'
      'WHERE'
      '  NIDTBXSLR = :OLD_NIDTBXSLR')
    SQLLock.Strings = (
      'SELECT * FROM tbxslr'
      'WHERE'
      '  NIDTBXSLR = :NIDTBXSLR'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      'WHERE'
      '  NIDTBXSLR = :NIDTBXSLR')
    Session = DMControle.Conexao
    SQL.Strings = (
      'select tbxslr.*, initcap(tbxslr.cdescrislr) as dat_tabela'
      'from tbxslr'
      'order by tbxslr.cdescrislr')
    Left = 28
    Top = 24
    object QRY_092NIDTBXSLR: TFloatField
      FieldName = 'NIDTBXSLR'
      Required = True
    end
    object QRY_092CDESCRISLR: TStringField
      FieldName = 'CDESCRISLR'
      Required = True
      Size = 30
    end
    object QRY_092DAT_TABELA: TStringField
      FieldName = 'DAT_TABELA'
      Size = 30
    end
  end
  object DTS_092: TOraDataSource
    AutoEdit = False
    DataSet = QRY_092
    Left = 104
    Top = 24
  end
end
