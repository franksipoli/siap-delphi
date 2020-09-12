object DTM_A052RH: TDTM_A052RH
  OldCreateOrder = False
  Left = 192
  Top = 152
  Height = 280
  Width = 482
  object QRY_111: TOraQuery
    SQLInsert.Strings = (
      'INSERT INTO tbxpja'
      '  (NIDTBXPJA, CDESCRIPJA, NCODCONTAB)'
      'VALUES'
      '  (:NIDTBXPJA, :CDESCRIPJA, :NCODCONTAB)')
    SQLDelete.Strings = (
      'DELETE FROM tbxpja'
      'WHERE'
      '  NIDTBXPJA = :NIDTBXPJA')
    SQLUpdate.Strings = (
      'UPDATE tbxpja'
      'SET'
      '  NIDTBXPJA = :NIDTBXPJA,'
      '  CDESCRIPJA = :CDESCRIPJA,'
      '  NCODCONTAB = :NCODCONTAB'
      'WHERE'
      '  NIDTBXPJA = :OLD_NIDTBXPJA')
    SQLLock.Strings = (
      'SELECT * FROM tbxpja'
      'WHERE'
      '  NIDTBXPJA = :NIDTBXPJA'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      'WHERE'
      '  NIDTBXPJA = :NIDTBXPJA')
    SQL.Strings = (
      'select tbxpja.CDESCRIPJA, tbxpja.NIDTBXPJA'
      'from tbxpja'
      'where tbxpja.nidtbxpja not in ( '
      'select tagupj.NIDTBXPJA'
      'from tagupj, tbxpja, tbxund'
      'where tagupj.NIDTBXUND = tbxund.NIDTBXUND and'
      '      tagupj.NIDTBXPJA = tbxpja.NIDTBXPJA and'
      '      tagupj.NIDTBXUND = :nidtbxund)'
      'order by tbxpja.CDESCRIPJA')
    CachedUpdates = True
    Left = 24
    Top = 92
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'nidtbxund'
      end>
    object QRY_111CDESCRIPJA: TStringField
      FieldName = 'CDESCRIPJA'
      Required = True
      Size = 40
    end
    object QRY_111NIDTBXPJA: TFloatField
      FieldName = 'NIDTBXPJA'
      Required = True
    end
  end
  object DTS_111: TOraDataSource
    AutoEdit = False
    DataSet = QRY_111
    Left = 92
    Top = 92
  end
  object QRY_124: TOraQuery
    SQLInsert.Strings = (
      'INSERT INTO tagupj'
      '  (NIDTAGUPJ, NIDTBXUND, NIDTBXPJA)'
      'VALUES'
      '  (:NIDTAGUPJ, :NIDTBXUND, :NIDTBXPJA)')
    SQLDelete.Strings = (
      'DELETE FROM tagupj'
      'WHERE'
      '  NIDTAGUPJ = :NIDTAGUPJ')
    SQLUpdate.Strings = (
      'UPDATE tagupj'
      'SET'
      '  NIDTAGUPJ = :NIDTAGUPJ,'
      '  NIDTBXUND = :NIDTBXUND,'
      '  NIDTBXPJA = :NIDTBXPJA'
      'WHERE'
      '  NIDTAGUPJ = :OLD_NIDTAGUPJ')
    SQLLock.Strings = (
      'SELECT * FROM tagupj'
      'WHERE'
      '  NIDTAGUPJ = :NIDTAGUPJ'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      'WHERE'
      '  NIDTAGUPJ = :NIDTAGUPJ')
    SQL.Strings = (
      'select tbxund.NIDTBXUND, tbxpja.NIDTBXPJA, '
      '       tbxpja.CDESCRIPJA, tagupj.NIDTAGUPJ'
      'from tbxpja, tbxund, tagupj'
      'where tagupj.NIDTBXUND = tbxund.NIDTBXUND and'
      '      tagupj.NIDTBXPJA = tbxpja.NIDTBXPJA and'
      '      tagupj.NIDTBXUND = :nidtbxund'
      'order by tbxpja.CDESCRIPJA')
    CachedUpdates = True
    Left = 20
    Top = 24
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'nidtbxund'
      end>
    object QRY_124NIDTBXUND: TFloatField
      FieldName = 'NIDTBXUND'
      Required = True
    end
    object QRY_124NIDTBXPJA: TFloatField
      FieldName = 'NIDTBXPJA'
      Required = True
    end
    object QRY_124CDESCRIPJA: TStringField
      FieldName = 'CDESCRIPJA'
      Required = True
      Size = 40
    end
    object QRY_124NIDTAGUPJ: TFloatField
      FieldName = 'NIDTAGUPJ'
      Required = True
    end
  end
  object DTS_124: TOraDataSource
    AutoEdit = False
    DataSet = QRY_124
    Left = 92
    Top = 20
  end
end
