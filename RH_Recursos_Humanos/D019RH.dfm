object DTM_A019RH: TDTM_A019RH
  OldCreateOrder = False
  Left = 192
  Top = 103
  Height = 375
  Width = 544
  object QRY_090: TOraQuery
    SQLInsert.Strings = (
      'INSERT INTO tbxset'
      '  (NIDTBXSET, CDESCRISET, NIDTBXFGV)'
      'VALUES'
      '  (:NIDTBXSET, :CDESCRISET, :NIDTBXFGV)')
    SQLDelete.Strings = (
      'DELETE FROM tbxset'
      'WHERE'
      '  NIDTBXSET = :NIDTBXSET')
    SQLUpdate.Strings = (
      'UPDATE tbxset'
      'SET'
      '  NIDTBXSET = :NIDTBXSET,'
      '  CDESCRISET = :CDESCRISET,'
      '  NIDTBXFGV = :NIDTBXFGV'
      'WHERE'
      '  NIDTBXSET = :OLD_NIDTBXSET')
    SQLLock.Strings = (
      'SELECT * FROM tbxset'
      'WHERE'
      '  NIDTBXSET = :NIDTBXSET'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      'WHERE'
      '  NIDTBXSET = :NIDTBXSET')
    SQL.Strings = (
      'select tbxset.*,tbxfgv.cfuncao as dat_funcao'
      'from tbxset, tbxfgv'
      'where tbxset.nidtbxfgv = tbxfgv.nidtbxfgv'
      'order by tbxset.CDESCRISET')
    Left = 36
    Top = 24
    object QRY_090NIDTBXSET: TFloatField
      FieldName = 'NIDTBXSET'
      Required = True
    end
    object QRY_090CDESCRISET: TStringField
      FieldName = 'CDESCRISET'
      Required = True
      Size = 40
    end
    object QRY_090NIDTBXFGV: TFloatField
      FieldName = 'NIDTBXFGV'
      Required = True
    end
    object QRY_090DAT_FUNCAO: TStringField
      FieldName = 'DAT_FUNCAO'
      Size = 30
    end
  end
  object DTS_090: TOraDataSource
    AutoEdit = False
    DataSet = QRY_090
    Left = 104
    Top = 24
  end
  object QRY_120: TOraQuery
    SQL.Strings = (
      'select *'
      'from tbxfgv'
      'order by CFUNCAO')
    Left = 32
    Top = 88
  end
  object DTS_120: TOraDataSource
    AutoEdit = False
    DataSet = QRY_120
    Left = 108
    Top = 88
  end
end
