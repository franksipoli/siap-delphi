object DTM_A046RH: TDTM_A046RH
  OldCreateOrder = False
  Left = 176
  Top = 149
  Height = 243
  Width = 479
  object QRY_084: TOraQuery
    SQLInsert.Strings = (
      'INSERT INTO tbxgmv'
      '  (NIDTBXGMV, CDESCRIGMV, CTIPOMVT, NIDGMVRVG)'
      'VALUES'
      '  (:NIDTBXGMV, :CDESCRIGMV, :CTIPOMVT, :NIDGMVRVG)')
    SQLDelete.Strings = (
      'DELETE FROM tbxgmv'
      'WHERE'
      '  NIDTBXGMV = :NIDTBXGMV')
    SQLUpdate.Strings = (
      'UPDATE tbxgmv'
      'SET'
      '  NIDTBXGMV = :NIDTBXGMV,'
      '  CDESCRIGMV = :CDESCRIGMV,'
      '  CTIPOMVT = :CTIPOMVT,'
      '  NIDGMVRVG = :NIDGMVRVG'
      'WHERE'
      '  NIDTBXGMV = :OLD_NIDTBXGMV')
    SQLLock.Strings = (
      'SELECT * FROM tbxgmv'
      'WHERE'
      '  NIDTBXGMV = :NIDTBXGMV'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      'WHERE'
      '  NIDTBXGMV = :NIDTBXGMV')
    SQL.Strings = (
      'select *'
      'from tbxgmv'
      'order by tbxgmv.cdescrigmv')
    Left = 32
    Top = 28
    object QRY_084NIDTBXGMV: TFloatField
      FieldName = 'NIDTBXGMV'
      Required = True
    end
    object QRY_084CDESCRIGMV: TStringField
      FieldName = 'CDESCRIGMV'
      Required = True
      Size = 30
    end
    object QRY_084CTIPOMVT: TStringField
      FieldName = 'CTIPOMVT'
      Required = True
      FixedChar = True
      Size = 9
    end
    object QRY_084NIDGMVRVG: TFloatField
      FieldName = 'NIDGMVRVG'
    end
  end
  object DTS_084: TOraDataSource
    AutoEdit = False
    DataSet = QRY_084
    Left = 108
    Top = 28
  end
  object QRY_084_1: TOraQuery
    Session = DMControle.Conexao
    SQL.Strings = (
      'select'
      '  nidtbxgmv,'
      '  cdescrigmv'
      'from'
      '  tbxgmv'
      'order by'
      '  cdescrigmv')
    Left = 32
    Top = 92
    object QRY_084_1NIDTBXGMV: TFloatField
      FieldName = 'NIDTBXGMV'
      Required = True
    end
    object QRY_084_1CDESCRIGMV: TStringField
      FieldName = 'CDESCRIGMV'
      Required = True
      Size = 30
    end
  end
  object DTS_084_1: TOraDataSource
    DataSet = QRY_084_1
    Left = 108
    Top = 92
  end
end
