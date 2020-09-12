object DTM_A040RH: TDTM_A040RH
  OldCreateOrder = False
  Left = 213
  Top = 168
  Height = 286
  Width = 400
  object QRY_089: TOraQuery
    SQLInsert.Strings = (
      'INSERT INTO tbxqhr'
      
        '  (NIDTBXQHR, NPERINIINI, NPERINIFIM, NPERFININI, NPERFINFIM, CD' +
        'ESCRIQHR)'
      'VALUES'
      
        '  (:NIDTBXQHR, :NPERINIINI, :NPERINIFIM, :NPERFININI, :NPERFINFI' +
        'M, :CDESCRIQHR)')
    SQLDelete.Strings = (
      'DELETE FROM tbxqhr'
      'WHERE'
      '  NIDTBXQHR = :NIDTBXQHR')
    SQLUpdate.Strings = (
      'UPDATE tbxqhr'
      'SET'
      '  NIDTBXQHR = :NIDTBXQHR,'
      '  NPERINIINI = :NPERINIINI,'
      '  NPERINIFIM = :NPERINIFIM,'
      '  NPERFININI = :NPERFININI,'
      '  NPERFINFIM = :NPERFINFIM,'
      '  CDESCRIQHR = :CDESCRIQHR'
      'WHERE'
      '  NIDTBXQHR = :OLD_NIDTBXQHR')
    SQLLock.Strings = (
      'SELECT * FROM tbxqhr'
      'WHERE'
      '  NIDTBXQHR = :NIDTBXQHR'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      'WHERE'
      '  NIDTBXQHR = :NIDTBXQHR')
    SQL.Strings = (
      'select'
      '  nidtbxqhr,'
      '  nperiniini,'
      '  nperinifim,'
      '  nperfinini,'
      '  nperfinfim,'
      '  '#39' '#39' as dat_horario'
      'from'
      '  tbxqhr'
      'where'
      
        '  tbxqhr.nidtbxqhr not in (select nidtbxqhr from tagqhr where ni' +
        'dcadcrg = :nidcadcrg)')
    MasterSource = DTS_073
    CachedUpdates = True
    Left = 36
    Top = 80
    ParamData = <
      item
        DataType = ftFloat
        Name = 'NIDCADCRG'
        ParamType = ptInput
        Value = 458
      end>
    object QRY_089NIDTBXQHR: TFloatField
      DefaultExpression = '0'
      FieldName = 'NIDTBXQHR'
      Required = True
    end
    object QRY_089DAT_HORARIO: TStringField
      FieldName = 'DAT_HORARIO'
      OnGetText = QRY_089DAT_HORARIOGetText
      Size = 169
    end
    object QRY_089NPERINIINI: TFloatField
      FieldName = 'NPERINIINI'
      DisplayFormat = '00:00'
    end
    object QRY_089NPERINIFIM: TFloatField
      FieldName = 'NPERINIFIM'
      DisplayFormat = '00:00'
    end
    object QRY_089NPERFININI: TFloatField
      FieldName = 'NPERFININI'
      DisplayFormat = '00:00'
    end
    object QRY_089NPERFINFIM: TFloatField
      FieldName = 'NPERFINFIM'
      DisplayFormat = '00:00'
    end
  end
  object DTS_089: TOraDataSource
    AutoEdit = False
    DataSet = QRY_089
    Left = 96
    Top = 80
  end
  object QRY_079: TOraQuery
    SQLInsert.Strings = (
      'INSERT INTO tagqhr'
      '  (NIDTAGQHR, NIDTBXQHR, NIDCADCRG)'
      'VALUES'
      '  (:NIDTAGQHR, :NIDTBXQHR, :NIDCADCRG)')
    SQLDelete.Strings = (
      'DELETE FROM tagqhr'
      'WHERE'
      '  NIDTAGQHR = :NIDTAGQHR')
    SQLUpdate.Strings = (
      'UPDATE tagqhr'
      'SET'
      '  NIDTAGQHR = :NIDTAGQHR,'
      '  NIDTBXQHR = :NIDTBXQHR,'
      '  NIDCADCRG = :NIDCADCRG'
      'WHERE'
      '  NIDTAGQHR = :OLD_NIDTAGQHR')
    SQLLock.Strings = (
      'SELECT * FROM tagqhr'
      'WHERE'
      '  NIDTAGQHR = :NIDTAGQHR'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      'WHERE'
      '  NIDTAGQHR = :NIDTAGQHR')
    SQL.Strings = (
      'select'
      '  tagqhr.*,'
      '  nperiniini,'
      '  nperinifim,'
      '  nperfinini,'
      '  nperfinfim,'
      '  '#39' '#39' as dat_horario'
      'from'
      '  tagqhr,'
      '  tbxqhr'
      'where'
      '  tagqhr.nidcadcrg = :nidcadcrg and'
      '  tbxqhr.nidtbxqhr = tagqhr.nidtbxqhr')
    MasterSource = DTS_073
    CachedUpdates = True
    Left = 36
    Top = 140
    ParamData = <
      item
        DataType = ftFloat
        Name = 'NIDCADCRG'
        ParamType = ptInput
        Value = 458
      end>
    object QRY_079NIDTAGQHR: TFloatField
      DefaultExpression = '0'
      FieldName = 'NIDTAGQHR'
      Required = True
    end
    object QRY_079NIDTBXQHR: TFloatField
      FieldName = 'NIDTBXQHR'
      Required = True
    end
    object QRY_079NIDCADCRG: TFloatField
      FieldName = 'NIDCADCRG'
      Required = True
    end
    object QRY_079DAT_HORARIO: TStringField
      FieldName = 'DAT_HORARIO'
      OnGetText = QRY_079DAT_HORARIOGetText
      Size = 169
    end
    object QRY_079NPERINIINI: TFloatField
      FieldName = 'NPERINIINI'
      DisplayFormat = '00:00'
    end
    object QRY_079NPERINIFIM: TFloatField
      FieldName = 'NPERINIFIM'
      DisplayFormat = '00:00'
    end
    object QRY_079NPERFININI: TFloatField
      FieldName = 'NPERFININI'
      DisplayFormat = '00:00'
    end
    object QRY_079NPERFINFIM: TFloatField
      FieldName = 'NPERFINFIM'
      DisplayFormat = '00:00'
    end
  end
  object DTS_079: TOraDataSource
    AutoEdit = False
    DataSet = QRY_079
    Left = 96
    Top = 140
  end
  object QRY_073: TOraQuery
    SQL.Strings = (
      'select'
      '  InitCap(tbxtcr.cdescritcr) as cdescritcr,'
      '  InitCap(cadcrg.cdescricrg) as cdescricrg,'
      '  cadcrg.nidcadcrg'
      'from'
      '  cadcrg,'
      '  tbxtcr'
      'where'
      '  cadcrg.nidcadcrg = :nidcadcrg and'
      '  tbxtcr.nidtbxtcr = cadcrg.nidtbxtcr')
    Left = 36
    Top = 20
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'nidcadcrg'
      end>
    object QRY_073CDESCRITCR: TStringField
      FieldName = 'CDESCRITCR'
      Required = True
      Size = 30
    end
    object QRY_073CDESCRICRG: TStringField
      FieldName = 'CDESCRICRG'
      Required = True
      Size = 40
    end
    object QRY_073NIDCADCRG: TFloatField
      FieldName = 'NIDCADCRG'
      Required = True
    end
  end
  object DTS_073: TOraDataSource
    AutoEdit = False
    DataSet = QRY_073
    Left = 96
    Top = 20
  end
end
