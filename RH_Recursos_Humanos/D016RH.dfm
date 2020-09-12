object DTM_A016RH: TDTM_A016RH
  OldCreateOrder = False
  Left = 192
  Top = 152
  Height = 280
  Width = 482
  object QRY_082: TOraQuery
    SQLInsert.Strings = (
      'INSERT INTO tbxdpt'
      '  (NIDTBXDPT, CDESCRIDPT, NIDTBXFGV, CCODANT)'
      'VALUES'
      '  (:NIDTBXDPT, :CDESCRIDPT, :NIDTBXFGV, :CCODANT)')
    SQLDelete.Strings = (
      'DELETE FROM tbxdpt'
      'WHERE'
      '  NIDTBXDPT = :NIDTBXDPT')
    SQLUpdate.Strings = (
      'UPDATE tbxdpt'
      'SET'
      '  NIDTBXDPT = :NIDTBXDPT,'
      '  CDESCRIDPT = :CDESCRIDPT,'
      '  NIDTBXFGV = :NIDTBXFGV,'
      '  CCODANT = :CCODANT'
      'WHERE'
      '  NIDTBXDPT = :OLD_NIDTBXDPT')
    SQLLock.Strings = (
      'SELECT * FROM tbxdpt'
      'WHERE'
      '  NIDTBXDPT = :NIDTBXDPT'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      'WHERE'
      '  NIDTBXDPT = :NIDTBXDPT')
    Session = DMControle.Conexao
    SQL.Strings = (
      'select tbxdpt.CDESCRIDPT, tbxdpt.NIDTBXDPT'
      'from tbxdpt'
      'where tbxdpt.nidtbxdpt not in ( '
      'select tagodp.NIDTBXDPT'
      'from tagodp, tbxdpt, tbxorg'
      'where tagodp.NIDTBXORG = tbxorg.NIDTBXORG and'
      '      tagodp.NIDTBXDPT = tbxdpt.NIDTBXDPT and'
      '      tagodp.NIDTBXORG = :nidtbxorg)'
      'order by tbxdpt.CDESCRIDPT')
    CachedUpdates = True
    Left = 24
    Top = 92
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'nidtbxorg'
      end>
    object QRY_082CDESCRIDPT: TStringField
      FieldName = 'CDESCRIDPT'
      Size = 40
    end
    object QRY_082NIDTBXDPT: TFloatField
      FieldName = 'NIDTBXDPT'
    end
  end
  object DTS_082: TOraDataSource
    AutoEdit = False
    DataSet = QRY_082
    Left = 92
    Top = 92
  end
  object QRY_078: TOraQuery
    SQLInsert.Strings = (
      'INSERT INTO tagodp'
      '  (NIDTAGODP, NIDTBXORG, NIDTBXDPT)'
      'VALUES'
      '  (:NIDTAGODP, :NIDTBXORG, :NIDTBXDPT)')
    SQLDelete.Strings = (
      'DELETE FROM tagodp'
      'WHERE'
      '  NIDTAGODP = :NIDTAGODP')
    SQLUpdate.Strings = (
      'UPDATE tagodp'
      'SET'
      '  NIDTAGODP = :NIDTAGODP,'
      '  NIDTBXORG = :NIDTBXORG,'
      '  NIDTBXDPT = :NIDTBXDPT'
      'WHERE'
      '  NIDTAGODP = :OLD_NIDTAGODP')
    SQLLock.Strings = (
      'SELECT * FROM tagodp'
      'WHERE'
      '  NIDTAGODP = :NIDTAGODP'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      'WHERE'
      '  NIDTAGODP = :NIDTAGODP')
    Session = DMControle.Conexao
    SQL.Strings = (
      'select tbxorg.NIDTBXORG, tbxdpt.NIDTBXDPT, '
      '       tbxdpt.CDESCRIDPT, tagodp.NIDTAGODP'
      'from tbxorg, tbxdpt, tagodp'
      'where tagodp.NIDTBXORG = tbxorg.NIDTBXORG and'
      '      tagodp.NIDTBXDPT = tbxdpt.NIDTBXDPT and'
      '      tagodp.NIDTBXORG = :nidtbxorg'
      'order by tbxdpt.CDESCRIDPT')
    CachedUpdates = True
    Left = 20
    Top = 20
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'nidtbxorg'
      end>
    object QRY_078NIDTBXORG: TFloatField
      FieldName = 'NIDTBXORG'
      Required = True
    end
    object QRY_078NIDTBXDPT: TFloatField
      FieldName = 'NIDTBXDPT'
      Required = True
    end
    object QRY_078NIDTAGODP: TFloatField
      FieldName = 'NIDTAGODP'
      Required = True
    end
    object QRY_078CDESCRIDPT: TStringField
      FieldName = 'CDESCRIDPT'
      Size = 40
    end
  end
  object DTS_078: TOraDataSource
    AutoEdit = False
    DataSet = QRY_078
    Left = 92
    Top = 20
  end
end
