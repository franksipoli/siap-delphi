object DTM_A029RH: TDTM_A029RH
  OldCreateOrder = False
  Left = 172
  Top = 146
  Height = 247
  Width = 490
  object QRY_114: TOraQuery
    SQLInsert.Strings = (
      'INSERT INTO tagopt'
      '  (NIDTAGOPT, NIDTBXOPT, NIDTBXTCR)'
      'VALUES'
      '  (:NIDTAGOPT, :NIDTBXOPT, :NIDTBXTCR)')
    SQLDelete.Strings = (
      'DELETE FROM tagopt'
      'WHERE'
      '  NIDTAGOPT = :NIDTAGOPT')
    SQLUpdate.Strings = (
      'UPDATE tagopt'
      'SET'
      '  NIDTAGOPT = :NIDTAGOPT,'
      '  NIDTBXOPT = :NIDTBXOPT,'
      '  NIDTBXTCR = :NIDTBXTCR'
      'WHERE'
      '  NIDTAGOPT = :OLD_NIDTAGOPT')
    SQLLock.Strings = (
      'SELECT * FROM tagopt'
      'WHERE'
      '  NIDTAGOPT = :NIDTAGOPT'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      'WHERE'
      '  NIDTAGOPT = :NIDTAGOPT')
    Session = DMControle.Conexao
    SQL.Strings = (
      'select tagopt.*, tbxopt.CDESCRIOPT'
      'from tagopt, tbxopt'
      'where tagopt.NIDTBXOPT = tbxopt.NIDTBXOPT and'
      '      tagopt.NIDTBXTCR = :nidtbxtcr'
      'order by tbxopt.CDESCRIOPT')
    CachedUpdates = True
    Left = 24
    Top = 24
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'nidtbxtcr'
      end>
    object QRY_114NIDTAGOPT: TFloatField
      FieldName = 'NIDTAGOPT'
      Required = True
    end
    object QRY_114NIDTBXOPT: TFloatField
      FieldName = 'NIDTBXOPT'
      Required = True
    end
    object QRY_114NIDTBXTCR: TFloatField
      FieldName = 'NIDTBXTCR'
      Required = True
    end
    object QRY_114CDESCRIOPT: TStringField
      FieldName = 'CDESCRIOPT'
      Size = 11
    end
  end
  object QRY_110: TOraQuery
    SQLInsert.Strings = (
      'INSERT INTO tbxopt'
      '  (NIDTBXOPT, CDESCRIOPT, CCALCULAFG)'
      'VALUES'
      '  (:NIDTBXOPT, :CDESCRIOPT, :CCALCULAFG)')
    SQLDelete.Strings = (
      'DELETE FROM tbxopt'
      'WHERE'
      '  NIDTBXOPT = :NIDTBXOPT')
    SQLUpdate.Strings = (
      'UPDATE tbxopt'
      'SET'
      '  NIDTBXOPT = :NIDTBXOPT,'
      '  CDESCRIOPT = :CDESCRIOPT,'
      '  CCALCULAFG = :CCALCULAFG'
      'WHERE'
      '  NIDTBXOPT = :OLD_NIDTBXOPT')
    SQLLock.Strings = (
      'SELECT * FROM tbxopt'
      'WHERE'
      '  NIDTBXOPT = :NIDTBXOPT'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      'WHERE'
      '  NIDTBXOPT = :NIDTBXOPT')
    SQL.Strings = (
      'select tbxopt.CDESCRIOPT, tbxopt.NIDTBXOPT'
      'from tbxopt'
      'where tbxopt.nidtbxopt not in ( '
      'select tagopt.NIDTBXOPT'
      'from tagopt, tbxopt'
      'where tagopt.NIDTBXOPT = tbxopt.NIDTBXOPT and'
      '      tagopt.NIDTBXTCR = :nidtbxtcr)'
      'order by tbxopt.CDESCRIOPT')
    CachedUpdates = True
    Left = 25
    Top = 80
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'nidtbxtcr'
      end>
    object QRY_110CDESCRIOPT: TStringField
      FieldName = 'CDESCRIOPT'
      Required = True
      Size = 11
    end
    object QRY_110NIDTBXOPT: TFloatField
      FieldName = 'NIDTBXOPT'
      Required = True
    end
  end
  object DTS_114: TOraDataSource
    AutoEdit = False
    DataSet = QRY_114
    Left = 108
    Top = 24
  end
  object DTS_110: TOraDataSource
    AutoEdit = False
    DataSet = QRY_110
    Left = 104
    Top = 80
  end
end
