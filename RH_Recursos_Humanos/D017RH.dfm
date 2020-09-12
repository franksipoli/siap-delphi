object DTM_A017RH: TDTM_A017RH
  OldCreateOrder = False
  Left = 192
  Top = 103
  Height = 375
  Width = 544
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
    SQL.Strings = (
      
        'select tbxdpt.*, initcap(tbxdpt.cdescridpt) as dat_depto, tbxfgv' +
        '.cfuncao as dat_funcao'
      'from tbxdpt, tbxfgv'
      'where tbxdpt.nidtbxfgv = tbxfgv.nidtbxfgv'
      'order by tbxdpt.CDESCRIDPT')
    Left = 32
    Top = 24
    object QRY_082NIDTBXDPT: TFloatField
      FieldName = 'NIDTBXDPT'
      Required = True
    end
    object QRY_082CDESCRIDPT: TStringField
      FieldName = 'CDESCRIDPT'
      Required = True
      Size = 40
    end
    object QRY_082NIDTBXFGV: TFloatField
      FieldName = 'NIDTBXFGV'
      Required = True
    end
    object QRY_082CCODANT: TStringField
      FieldName = 'CCODANT'
      Size = 3
    end
    object QRY_082DAT_FUNCAO: TStringField
      FieldName = 'DAT_FUNCAO'
      Size = 30
    end
    object QRY_082DAT_DEPTO: TStringField
      FieldName = 'DAT_DEPTO'
      Size = 40
    end
  end
  object DTS_082: TOraDataSource
    AutoEdit = False
    DataSet = QRY_082
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
