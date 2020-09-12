object DTM_A051RH: TDTM_A051RH
  OldCreateOrder = False
  Left = 192
  Top = 152
  Height = 280
  Width = 482
  object QRY_113: TOraQuery
    SQLInsert.Strings = (
      'INSERT INTO tbxund'
      '  (NIDTBXUND, CDESCRIUND, NCODCONTAB)'
      'VALUES'
      '  (:NIDTBXUND, :CDESCRIUND, :NCODCONTAB)')
    SQLDelete.Strings = (
      'DELETE FROM tbxund'
      'WHERE'
      '  NIDTBXUND = :NIDTBXUND')
    SQLUpdate.Strings = (
      'UPDATE tbxund'
      'SET'
      '  NIDTBXUND = :NIDTBXUND,'
      '  CDESCRIUND = :CDESCRIUND,'
      '  NCODCONTAB = :NCODCONTAB'
      'WHERE'
      '  NIDTBXUND = :OLD_NIDTBXUND')
    SQLLock.Strings = (
      'SELECT * FROM tbxund'
      'WHERE'
      '  NIDTBXUND = :NIDTBXUND'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      'WHERE'
      '  NIDTBXUND = :NIDTBXUND')
    SQL.Strings = (
      'select tbxund.CDESCRIUND, tbxund.NIDTBXUND'
      'from tbxund'
      'where tbxund.nidtbxund not in ( '
      'select taguno.NIDTBXUND'
      'from taguno, tbxund, tbxorg'
      'where taguno.NIDTBXORG = tbxorg.NIDTBXORG and'
      '      taguno.NIDTBXUND = tbxund.NIDTBXUND and'
      '      taguno.NIDTBXORG = :nidtbxorg)'
      'order by tbxund.CDESCRIUND')
    CachedUpdates = True
    Left = 24
    Top = 92
    ParamData = <
      item
        DataType = ftInteger
        Name = 'nidtbxorg'
        ParamType = ptInput
      end>
    object QRY_113CDESCRIUND: TStringField
      FieldName = 'CDESCRIUND'
      Required = True
      Size = 40
    end
    object QRY_113NIDTBXUND: TFloatField
      FieldName = 'NIDTBXUND'
      Required = True
    end
  end
  object DTS_113: TOraDataSource
    AutoEdit = False
    DataSet = QRY_113
    Left = 92
    Top = 92
  end
  object QRY_123: TOraQuery
    SQLInsert.Strings = (
      'INSERT INTO taguno'
      '  (NIDTAGUNO, NIDTBXORG, NIDTBXUND)'
      'VALUES'
      '  (:NIDTAGUNO, :NIDTBXORG, :NIDTBXUND)')
    SQLDelete.Strings = (
      'DELETE FROM taguno'
      'WHERE'
      '  NIDTAGUNO = :NIDTAGUNO')
    SQLUpdate.Strings = (
      'UPDATE taguno'
      'SET'
      '  NIDTAGUNO = :NIDTAGUNO,'
      '  NIDTBXORG = :NIDTBXORG,'
      '  NIDTBXUND = :NIDTBXUND'
      'WHERE'
      '  NIDTAGUNO = :OLD_NIDTAGUNO')
    SQLLock.Strings = (
      'SELECT * FROM taguno'
      'WHERE'
      '  NIDTAGUNO = :NIDTAGUNO'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      'WHERE'
      '  NIDTAGUNO = :NIDTAGUNO')
    SQL.Strings = (
      'select tbxorg.NIDTBXORG, tbxund.NIDTBXUND, '
      '       tbxund.CDESCRIUND, taguno.NIDTAGUNO'
      'from tbxorg, tbxund, taguno'
      'where taguno.NIDTBXORG = tbxorg.NIDTBXORG and'
      '      taguno.NIDTBXUND = tbxund.NIDTBXUND and'
      '      taguno.NIDTBXORG = :nidtbxorg'
      'order by tbxund.CDESCRIUND')
    CachedUpdates = True
    Left = 20
    Top = 24
    ParamData = <
      item
        DataType = ftInteger
        Name = 'nidtbxorg'
        ParamType = ptInput
      end>
    object QRY_123NIDTBXORG: TFloatField
      FieldName = 'NIDTBXORG'
      Required = True
    end
    object QRY_123NIDTBXUND: TFloatField
      FieldName = 'NIDTBXUND'
      Required = True
    end
    object QRY_123CDESCRIUND: TStringField
      FieldName = 'CDESCRIUND'
      Required = True
      Size = 40
    end
    object QRY_123NIDTAGUNO: TFloatField
      FieldName = 'NIDTAGUNO'
      Required = True
    end
  end
  object DTS_123: TOraDataSource
    AutoEdit = False
    DataSet = QRY_123
    Left = 92
    Top = 20
  end
end
