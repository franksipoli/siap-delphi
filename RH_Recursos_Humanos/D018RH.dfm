object DTM_A018RH: TDTM_A018RH
  OldCreateOrder = False
  Left = 192
  Top = 152
  Height = 280
  Width = 482
  object QRY_076: TOraQuery
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
    SQL.Strings = (
      'select tbxdpt.NIDTBXDPT, tbxset.NIDTBXSET,'
      '       tbxset.CDESCRISET, tagdst.NIDTAGDST'
      'from tagdst, tbxdpt, tbxset'
      'where tagdst.NIDTBXDPT = tbxdpt.NIDTBXDPT and'
      '      tagdst.NIDTBXSET = tbxset.NIDTBXSET and'
      '      tagdst.NIDTBXDPT = :nidtbxdpt'
      'order by tbxset.CDESCRISET')
    CachedUpdates = True
    Left = 36
    Top = 20
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'nidtbxdpt'
      end>
    object QRY_076NIDTBXDPT: TFloatField
      FieldName = 'NIDTBXDPT'
      Required = True
    end
    object QRY_076NIDTBXSET: TFloatField
      FieldName = 'NIDTBXSET'
      Required = True
    end
    object QRY_076NIDTAGDST: TFloatField
      FieldName = 'NIDTAGDST'
      Required = True
    end
    object QRY_076CDESCRISET: TStringField
      FieldName = 'CDESCRISET'
      Required = True
      Size = 40
    end
  end
  object DTS_076: TOraDataSource
    AutoEdit = False
    DataSet = QRY_076
    Left = 100
    Top = 20
  end
  object QRY_090: TOraQuery
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
    SQL.Strings = (
      'select tbxset.CDESCRISET, tbxset.NIDTBXSET'
      'from tbxset'
      'where tbxset.nidtbxset not in ( '
      'select tagdst.NIDTBXSET'
      'from tagdst, tbxdpt, tbxset'
      'where tagdst.NIDTBXDPT = tbxdpt.NIDTBXDPT and'
      '      tagdst.NIDTBXSET = tbxset.NIDTBXSET and'
      '      tagdst.NIDTBXDPT = :nidtbxdpt)'
      'order by tbxset.CDESCRISET')
    CachedUpdates = True
    Left = 32
    Top = 84
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'nidtbxdpt'
      end>
    object QRY_090CDESCRISET: TStringField
      FieldName = 'CDESCRISET'
      Required = True
      Size = 40
    end
    object QRY_090NIDTBXSET: TFloatField
      FieldName = 'NIDTBXSET'
      Required = True
    end
  end
  object DTS_090: TOraDataSource
    AutoEdit = False
    DataSet = QRY_090
    Left = 100
    Top = 84
  end
end
