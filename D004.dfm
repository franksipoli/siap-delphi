object DTM_A004: TDTM_A004
  OldCreateOrder = False
  Left = 285
  Top = 161
  Height = 479
  Width = 741
  object QRY_011: TOraQuery
    Session = DMControle.Conexao
    SQL.Strings = (
      
        'select nidtbxbai, cnomebai, nidtbxloc from tbxbai where nidtbxlo' +
        'c = :nidtbxloc')
    MasterSource = DTS_013
    Left = 20
    Top = 16
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'nidtbxloc'
      end>
    object QRY_011NIDTBXBAI: TFloatField
      FieldName = 'NIDTBXBAI'
      Required = True
    end
    object QRY_011CNOMEBAI: TStringField
      FieldName = 'CNOMEBAI'
      Size = 72
    end
    object QRY_011NIDTBXLOC: TFloatField
      FieldName = 'NIDTBXLOC'
    end
  end
  object DTS_011: TOraDataSource
    AutoEdit = False
    DataSet = QRY_011
    Left = 89
    Top = 16
  end
  object QRY_013: TOraQuery
    SQLInsert.Strings = (
      'INSERT INTO cadlog'
      
        '  (NIDCADLOG, CNOMELOG, NCEP, CTABORIGEM, CTIPOREG, NIDTBXTPL, N' +
        'IDTBXBAI, NIDTBXLOC)'
      'VALUES'
      
        '  (:NIDCADLOG, :CNOMELOG, :NCEP, :CTABORIGEM, :CTIPOREG, :NIDTBX' +
        'TPL, :NIDTBXBAI, :NIDTBXLOC)')
    SQLDelete.Strings = (
      'DELETE FROM cadlog'
      'WHERE'
      '  NIDCADLOG = :NIDCADLOG')
    SQLUpdate.Strings = (
      'UPDATE cadlog'
      'SET'
      '  NIDCADLOG = :NIDCADLOG,'
      '  CNOMELOG = :CNOMELOG,'
      '  NCEP = :NCEP,'
      '  CTABORIGEM = :CTABORIGEM,'
      '  CTIPOREG = :CTIPOREG,'
      '  NIDTBXTPL = :NIDTBXTPL,'
      '  NIDTBXBAI = :NIDTBXBAI,'
      '  NIDTBXLOC = :NIDTBXLOC'
      'WHERE'
      '  NIDCADLOG = :OLD_NIDCADLOG')
    SQLLock.Strings = (
      'SELECT * FROM cadlog'
      'WHERE'
      '  NIDCADLOG = :NIDCADLOG'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      'WHERE'
      '  NIDCADLOG = :NIDCADLOG')
    Session = DMControle.Conexao
    SQL.Strings = (
      'select cadlog.cnomelog, cadlog.ctiporeg, cadlog.ctaborigem,'
      '       cadlog.nidtbxbai, cadlog.nidtbxtpl, cadlog.nidtbxloc,'
      
        '       cadlog.ncep, cadlog.nidcadlog,tbxtpl.cnometpl, tbxbai.cno' +
        'mebai, '
      '       tbxloc.cnomeloc, tbxloc.ufloc'
      'from   cadlog, tbxtpl, tbxbai, tbxloc'
      
        'where  cadlog.ctiporeg = '#39'U'#39' and cadlog.nidtbxtpl = tbxtpl.nidtb' +
        'xtpl'
      '       and cadlog.nidtbxbai = tbxbai.nidtbxbai'
      '       and tbxbai.nidtbxloc = tbxloc.nidtbxloc '
      '       and tbxloc.ncep is not null')
    Left = 20
    Top = 73
    object QRY_013NIDCADLOG: TFloatField
      FieldName = 'NIDCADLOG'
      Required = True
    end
    object QRY_013CNOMELOG: TStringField
      DisplayWidth = 30
      FieldName = 'CNOMELOG'
      Size = 80
    end
    object QRY_013CTIPOREG: TStringField
      FieldName = 'CTIPOREG'
      Size = 1
    end
    object QRY_013CTABORIGEM: TStringField
      FieldName = 'CTABORIGEM'
      Size = 1
    end
    object QRY_013NIDTBXBAI: TFloatField
      FieldName = 'NIDTBXBAI'
    end
    object QRY_013NIDTBXTPL: TFloatField
      FieldName = 'NIDTBXTPL'
    end
    object QRY_013NIDTBXLOC: TFloatField
      FieldName = 'NIDTBXLOC'
    end
    object QRY_013NCEP: TIntegerField
      FieldName = 'NCEP'
    end
    object QRY_013CNOMETPL: TStringField
      DisplayWidth = 30
      FieldName = 'CNOMETPL'
      Size = 72
    end
    object QRY_013CNOMEBAI: TStringField
      FieldName = 'CNOMEBAI'
      Size = 72
    end
    object QRY_013CNOMELOC: TStringField
      FieldName = 'CNOMELOC'
      Size = 60
    end
    object QRY_013UFLOC: TStringField
      FieldName = 'UFLOC'
      Size = 2
    end
  end
  object DTS_013: TOraDataSource
    AutoEdit = False
    DataSet = QRY_013
    OnDataChange = DTS_013DataChange
    Left = 89
    Top = 77
  end
  object QRY_014: TOraQuery
    Session = DMControle.Conexao
    SQL.Strings = (
      'select * from tbxtpl')
    Left = 16
    Top = 133
  end
  object DTS_014: TOraDataSource
    AutoEdit = False
    DataSet = QRY_014
    Left = 89
    Top = 132
  end
end
