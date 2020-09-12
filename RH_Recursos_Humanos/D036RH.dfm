object DTM_A036RH: TDTM_A036RH
  OldCreateOrder = False
  Left = 53
  Top = 29
  Height = 533
  Width = 632
  object QRY_073: TOraQuery
    SQLInsert.Strings = (
      'INSERT INTO cadcrg'
      
        '  (NIDCADCRG, CDESCRICRG, NTOTVAGAS, CGRADUACAO, NIDSLRFIM, NHOR' +
        'ASSEM, NHORASMES, NIDTBXTCR, NIDTBXGRO, NIDTBXSGO, NIDTBXSLR, NI' +
        'DTBXCAT, NIDTBXPCR, NIDTAGSLR, NIDTBXCBO, NIDTBXTSL, CCODANT)'
      'VALUES'
      
        '  (:NIDCADCRG, :CDESCRICRG, :NTOTVAGAS, :CGRADUACAO, :NIDSLRFIM,' +
        ' :NHORASSEM, :NHORASMES, :NIDTBXTCR, :NIDTBXGRO, :NIDTBXSGO, :NI' +
        'DTBXSLR, :NIDTBXCAT, :NIDTBXPCR, :NIDTAGSLR, :NIDTBXCBO, :NIDTBX' +
        'TSL, :CCODANT)')
    SQLDelete.Strings = (
      'DELETE FROM cadcrg'
      'WHERE'
      '  NIDCADCRG = :NIDCADCRG')
    SQLUpdate.Strings = (
      'UPDATE cadcrg'
      'SET'
      '  NIDCADCRG = :NIDCADCRG,'
      '  CDESCRICRG = :CDESCRICRG,'
      '  NTOTVAGAS = :NTOTVAGAS,'
      '  CGRADUACAO = :CGRADUACAO,'
      '  NIDSLRFIM = :NIDSLRFIM,'
      '  NHORASSEM = :NHORASSEM,'
      '  NHORASMES = :NHORASMES,'
      '  NIDTBXTCR = :NIDTBXTCR,'
      '  NIDTBXGRO = :NIDTBXGRO,'
      '  NIDTBXSGO = :NIDTBXSGO,'
      '  NIDTBXSLR = :NIDTBXSLR,'
      '  NIDTBXCAT = :NIDTBXCAT,'
      '  NIDTBXPCR = :NIDTBXPCR,'
      '  NIDTAGSLR = :NIDTAGSLR,'
      '  NIDTBXCBO = :NIDTBXCBO,'
      '  NIDTBXTSL = :NIDTBXTSL,'
      '  CCODANT = :CCODANT'
      'WHERE'
      '  NIDCADCRG = :OLD_NIDCADCRG')
    SQLLock.Strings = (
      'SELECT * FROM cadcrg'
      'WHERE'
      '  NIDCADCRG = :NIDCADCRG'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      'WHERE'
      '  NIDCADCRG = :NIDCADCRG')
    SQL.Strings = (
      'select'
      ' cadcrg.*,'
      ' tagslr.cclasse as dat_classini,'
      ' slr.cclasse as dat_classfim '
      'from'
      '  cadcrg,'
      '  tagslr,'
      '  tagslr slr'
      'where'
      '  tagslr.nidtagslr = cadcrg.nidtagslr and'
      '  slr.nidtagslr = cadcrg.nidslrfim'
      '  ')
    AfterScroll = QRY_073AfterScroll
    Left = 20
    Top = 13
    object QRY_073NIDCADCRG: TFloatField
      DefaultExpression = '0'
      FieldName = 'NIDCADCRG'
      Required = True
    end
    object QRY_073CDESCRICRG: TStringField
      FieldName = 'CDESCRICRG'
      Required = True
      Size = 40
    end
    object QRY_073NTOTVAGAS: TFloatField
      FieldName = 'NTOTVAGAS'
    end
    object QRY_073CGRADUACAO: TStringField
      FieldName = 'CGRADUACAO'
      Size = 250
    end
    object QRY_073NIDSLRFIM: TFloatField
      FieldName = 'NIDSLRFIM'
      Required = True
    end
    object QRY_073NHORASSEM: TFloatField
      FieldName = 'NHORASSEM'
    end
    object QRY_073NHORASMES: TFloatField
      FieldName = 'NHORASMES'
    end
    object QRY_073NIDTBXTCR: TFloatField
      FieldName = 'NIDTBXTCR'
      Required = True
    end
    object QRY_073NIDTBXGRO: TFloatField
      FieldName = 'NIDTBXGRO'
      Required = True
    end
    object QRY_073NIDTBXSGO: TFloatField
      FieldName = 'NIDTBXSGO'
      Required = True
    end
    object QRY_073NIDTBXSLR: TFloatField
      FieldName = 'NIDTBXSLR'
      Required = True
    end
    object QRY_073NIDTBXCAT: TFloatField
      FieldName = 'NIDTBXCAT'
    end
    object QRY_073NIDTBXPCR: TFloatField
      FieldName = 'NIDTBXPCR'
    end
    object QRY_073NIDTAGSLR: TFloatField
      FieldName = 'NIDTAGSLR'
      Required = True
    end
    object QRY_073NIDTBXCBO: TFloatField
      FieldName = 'NIDTBXCBO'
    end
    object QRY_073NIDTBXTSL: TFloatField
      FieldName = 'NIDTBXTSL'
    end
    object QRY_073CCODANT: TStringField
      FieldName = 'CCODANT'
      Size = 3
    end
    object QRY_073DAT_CLASSINI: TStringField
      FieldName = 'DAT_CLASSINI'
      Size = 3
    end
    object QRY_073DAT_CLASSFIM: TStringField
      FieldName = 'DAT_CLASSFIM'
      Size = 3
    end
  end
  object DTS_073: TOraDataSource
    AutoEdit = False
    DataSet = QRY_073
    OnStateChange = DTS_073StateChange
    Left = 88
    Top = 13
  end
  object QRY_095: TOraQuery
    SQL.Strings = (
      'select'
      '  nidtbxtcr,'
      '  cdescritcr'
      'from'
      '  tbxtcr')
    Left = 20
    Top = 76
    object QRY_095NIDTBXTCR: TFloatField
      FieldName = 'NIDTBXTCR'
      Required = True
    end
    object QRY_095CDESCRITCR: TStringField
      FieldName = 'CDESCRITCR'
      Required = True
      Size = 30
    end
  end
  object DTS_095: TOraDataSource
    AutoEdit = False
    DataSet = QRY_095
    Left = 88
    Top = 76
  end
  object QRY_086: TOraQuery
    SQL.Strings = (
      'select'
      '  *'
      'from'
      '  tbxgro')
    Left = 20
    Top = 139
  end
  object QRY_091: TOraQuery
    SQL.Strings = (
      'select'
      '  *'
      'from'
      '  tbxsgo')
    Left = 20
    Top = 202
  end
  object QRY_126: TOraQuery
    SQL.Strings = (
      'select'
      '  *'
      'from'
      '  tbxcat')
    Left = 16
    Top = 341
  end
  object DTS_086: TOraDataSource
    AutoEdit = False
    DataSet = QRY_086
    Left = 88
    Top = 139
  end
  object DTS_091: TOraDataSource
    AutoEdit = False
    DataSet = QRY_091
    Left = 88
    Top = 202
  end
  object DTS_126: TOraDataSource
    AutoEdit = False
    DataSet = QRY_126
    Left = 87
    Top = 341
  end
  object QRY_092: TOraQuery
    SQL.Strings = (
      'select'
      '  nidtbxslr,'
      '  cdescrislr'
      'from'
      '  tbxslr')
    Left = 213
    Top = 13
    object QRY_092NIDTBXSLR: TFloatField
      FieldName = 'NIDTBXSLR'
      Required = True
    end
    object QRY_092CDESCRISLR: TStringField
      FieldName = 'CDESCRISLR'
      Required = True
      Size = 30
    end
  end
  object DTS_092: TOraDataSource
    AutoEdit = False
    DataSet = QRY_092
    Left = 284
    Top = 13
  end
  object QRY_080: TOraQuery
    Session = DMControle.Conexao
    SQL.Strings = (
      'select'
      '  distinct cclasse as cclasse,'
      '  nidtbxslr'
      'from '
      '  tagslr'
      'where'
      '  nidtbxslr = :nidtbxslr')
    MasterSource = DTS_092
    Left = 213
    Top = 76
    ParamData = <
      item
        DataType = ftFloat
        Name = 'NIDTBXSLR'
        ParamType = ptInput
        Value = 1
      end>
    object QRY_080CCLASSE: TStringField
      FieldName = 'CCLASSE'
      Size = 3
    end
    object QRY_080NIDTBXSLR: TFloatField
      FieldName = 'NIDTBXSLR'
      Required = True
    end
  end
  object DTS_080: TOraDataSource
    AutoEdit = False
    DataSet = QRY_080
    Left = 284
    Top = 76
  end
  object QRY_080_1: TOraQuery
    Session = DMControle.Conexao
    SQL.Strings = (
      'select'
      '  nnivel,'
      '  nidtagslr,'
      '  nvalorslr'
      'from'
      '  tagslr'
      'where'
      '  nidtbxslr =:nidtbxslr and'
      '  cclasse = :cclasse')
    MasterSource = DTS_080
    Left = 213
    Top = 139
    ParamData = <
      item
        DataType = ftFloat
        Name = 'NIDTBXSLR'
        ParamType = ptInput
        Value = 2
      end
      item
        DataType = ftString
        Name = 'CCLASSE'
        ParamType = ptInput
        Value = 'B'
      end>
    object QRY_080_1NNIVEL: TFloatField
      FieldName = 'NNIVEL'
      Required = True
    end
    object QRY_080_1NIDTAGSLR: TFloatField
      FieldName = 'NIDTAGSLR'
      Required = True
    end
    object QRY_080_1NVALORSLR: TFloatField
      FieldName = 'NVALORSLR'
      Required = True
      currency = True
    end
  end
  object DTS_080_1: TOraDataSource
    AutoEdit = False
    DataSet = QRY_080_1
    Left = 284
    Top = 139
  end
  object QRY_080_2: TOraQuery
    Session = DMControle.Conexao
    SQL.Strings = (
      'select'
      '  distinct cclasse as cclasse,'
      '  nidtbxslr'
      'from '
      '  tagslr'
      'where'
      '  nidtbxslr = :nidtbxslr')
    MasterSource = DTS_092
    Left = 213
    Top = 210
    ParamData = <
      item
        DataType = ftFloat
        Name = 'NIDTBXSLR'
        ParamType = ptInput
        Value = 1
      end>
    object QRY_080_2CCLASSE: TStringField
      FieldName = 'CCLASSE'
      Size = 3
    end
    object QRY_080_2NIDTBXSLR: TFloatField
      FieldName = 'NIDTBXSLR'
      Required = True
    end
  end
  object DTS_080_2: TOraDataSource
    AutoEdit = False
    DataSet = QRY_080_2
    Left = 284
    Top = 210
  end
  object QRY_080_3: TOraQuery
    Session = DMControle.Conexao
    SQL.Strings = (
      'select'
      '  nnivel,'
      '  nidtagslr,'
      '  nvalorslr'
      'from'
      '  tagslr'
      'where'
      '  nidtbxslr =:nidtbxslr and'
      '  cclasse = :cclasse')
    MasterSource = DTS_080_2
    Left = 213
    Top = 273
    ParamData = <
      item
        DataType = ftFloat
        Name = 'NIDTBXSLR'
        ParamType = ptInput
        Value = 2
      end
      item
        DataType = ftString
        Name = 'CCLASSE'
        ParamType = ptInput
        Value = 'B'
      end>
    object QRY_080_3NNIVEL: TFloatField
      FieldName = 'NNIVEL'
      Required = True
    end
    object QRY_080_3NIDTAGSLR: TFloatField
      FieldName = 'NIDTAGSLR'
      Required = True
    end
    object QRY_080_3NVALORSLR: TFloatField
      FieldName = 'NVALORSLR'
      Required = True
      currency = True
    end
  end
  object DTS_080_3: TOraDataSource
    AutoEdit = False
    DataSet = QRY_080_3
    Left = 284
    Top = 273
  end
  object QRY_138: TOraQuery
    SQL.Strings = (
      'select '
      '  * '
      'from '
      '  tbxcbo '
      'where'
      '  nidtbxcbo = :nidtbxcbo')
    MasterSource = DTS_073
    Left = 20
    Top = 273
    ParamData = <
      item
        DataType = ftFloat
        Name = 'NIDTBXCBO'
        ParamType = ptInput
        Value = 3287
      end>
    object QRY_138NIDTBXCBO: TFloatField
      FieldName = 'NIDTBXCBO'
      Required = True
    end
    object QRY_138CDESCRICBO: TStringField
      FieldName = 'CDESCRICBO'
      Required = True
      Size = 40
    end
    object QRY_138NNROCBO: TFloatField
      FieldName = 'NNROCBO'
      Required = True
    end
  end
  object DTS_138: TOraDataSource
    AutoEdit = False
    DataSet = QRY_138
    Left = 88
    Top = 273
  end
  object QRY_122: TOraQuery
    SQL.Strings = (
      'select'
      '  *'
      'from'
      '  tbxpcr'
      'where'
      '  nidtbxpcr = :nidtbxpcr')
    MasterSource = DTS_073
    Left = 212
    Top = 340
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'nidtbxpcr'
      end>
    object QRY_122NIDTBXPCR: TFloatField
      FieldName = 'NIDTBXPCR'
      Required = True
    end
    object QRY_122CDESCRIPCR: TStringField
      FieldName = 'CDESCRIPCR'
      Required = True
      Size = 30
    end
    object QRY_122NCODTCE: TFloatField
      FieldName = 'NCODTCE'
      Required = True
    end
  end
  object DTS_122: TOraDataSource
    DataSet = QRY_122
    Left = 284
    Top = 340
  end
  object QRY_TOTCRGOCP: TOraQuery
    SQL.Strings = (
      'select'
      '  count(cadcrg.nidcadcrg) as tot'
      'from'
      '  cadcrg,'
      '  tagffu,'
      '  tagmvf,'
      '  tbxsts,'
      '  tbxtpm'
      'where'
      '  cadcrg.nidcadcrg = :nidcadcrg and'
      '  tagffu.nidcadcrg = cadcrg.nidcadcrg and'
      '  tagmvf.nidtagffu = tagffu.nidtagffu and'
      '  tagmvf.cmvfatual = '#39'S'#39' and'
      '  tbxtpm.nidtbxtpm = tagmvf.nidtbxtpm and'
      '  tbxsts.nidtbxsts = tbxtpm.nidtbxsts and'
      '  tbxsts.cdispcrg = '#39'N'#39)
    MasterSource = DTS_073
    OnCalcFields = QRY_TOTCRGOCPCalcFields
    Left = 44
    Top = 404
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'nidcadcrg'
      end>
    object QRY_TOTCRGOCPTOT: TFloatField
      FieldName = 'TOT'
    end
    object QRY_TOTCRGOCPCLC_CRGLIVRES: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'CLC_CRGLIVRES'
      Calculated = True
    end
  end
  object DTS_TOTCRGOCP: TOraDataSource
    AutoEdit = False
    DataSet = QRY_TOTCRGOCP
    Left = 156
    Top = 404
  end
  object QRY_150: TOraQuery
    SQL.Strings = (
      'select'
      '  *'
      'from'
      '  tbxtsl')
    Left = 360
    Top = 20
  end
  object DTS_150: TOraDataSource
    DataSet = QRY_150
    Left = 360
    Top = 76
  end
end
