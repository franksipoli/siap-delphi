object DTM_A015RH: TDTM_A015RH
  OldCreateOrder = False
  Left = 192
  Top = 103
  Height = 375
  Width = 544
  object QRY_088: TOraQuery
    SQLInsert.Strings = (
      'INSERT INTO tbxorg'
      '  (NIDTBXORG, CDESCRIORG, NIDTBXFGV, NCODCONTAB)'
      'VALUES'
      '  (:NIDTBXORG, :CDESCRIORG, :NIDTBXFGV, :NCODCONTAB)')
    SQLDelete.Strings = (
      'DELETE FROM tbxorg'
      'WHERE'
      '  NIDTBXORG = :NIDTBXORG')
    SQLUpdate.Strings = (
      'UPDATE tbxorg'
      'SET'
      '  NIDTBXORG = :NIDTBXORG,'
      '  CDESCRIORG = :CDESCRIORG,'
      '  NIDTBXFGV = :NIDTBXFGV,'
      '  NCODCONTAB = :NCODCONTAB'
      'WHERE'
      '  NIDTBXORG = :OLD_NIDTBXORG')
    SQLLock.Strings = (
      'SELECT * FROM tbxorg'
      'WHERE'
      '  NIDTBXORG = :NIDTBXORG'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      'WHERE'
      '  NIDTBXORG = :NIDTBXORG')
    Session = DMControle.Conexao
    SQL.Strings = (
      
        'select tbxorg.*, initcap(tbxorg.cdescriorg) as dat_orgao, tbxfgv' +
        '.cfuncao as dat_funcao'
      'from tbxorg, tbxfgv'
      'where tbxorg.nidtbxfgv = tbxfgv.nidtbxfgv'
      'order by tbxorg.CDESCRIORG')
    Left = 32
    Top = 24
    object QRY_088NIDTBXORG: TFloatField
      FieldName = 'NIDTBXORG'
      Required = True
    end
    object QRY_088CDESCRIORG: TStringField
      FieldName = 'CDESCRIORG'
      Required = True
      Size = 50
    end
    object QRY_088NIDTBXFGV: TFloatField
      FieldName = 'NIDTBXFGV'
      Required = True
    end
    object QRY_088NCODCONTAB: TFloatField
      FieldName = 'NCODCONTAB'
    end
    object QRY_088CCODANT: TStringField
      FieldName = 'CCODANT'
      Size = 3
    end
    object QRY_088DAT_FUNCAO: TStringField
      FieldName = 'DAT_FUNCAO'
      Size = 30
    end
    object QRY_088DAT_ORGAO: TStringField
      FieldName = 'DAT_ORGAO'
      Size = 50
    end
  end
  object DTS_088: TOraDataSource
    AutoEdit = False
    DataSet = QRY_088
    Left = 104
    Top = 24
  end
  object QRY_120: TOraQuery
    Session = DMControle.Conexao
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
