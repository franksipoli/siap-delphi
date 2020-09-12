object DTM_A012RH: TDTM_A012RH
  OldCreateOrder = False
  Left = 172
  Top = 149
  Height = 375
  Width = 544
  object QRY_103: TOraQuery
    SQLInsert.Strings = (
      'INSERT INTO tagobt'
      
        '  (NIDTAGOBT, DDTOBITO, CMOTIVO, NBSPENSAO, CULTIMOCRG, NIDCADSE' +
        'R, NIDTAGSLR)'
      'VALUES'
      
        '  (:NIDTAGOBT, :DDTOBITO, :CMOTIVO, :NBSPENSAO, :CULTIMOCRG, :NI' +
        'DCADSER, :NIDTAGSLR)')
    SQLDelete.Strings = (
      'DELETE FROM tagobt'
      'WHERE'
      '  NIDTAGOBT = :NIDTAGOBT')
    SQLUpdate.Strings = (
      'UPDATE tagobt'
      'SET'
      '  NIDTAGOBT = :NIDTAGOBT,'
      '  DDTOBITO = :DDTOBITO,'
      '  CMOTIVO = :CMOTIVO,'
      '  NBSPENSAO = :NBSPENSAO,'
      '  CULTIMOCRG = :CULTIMOCRG,'
      '  NIDCADSER = :NIDCADSER,'
      '  NIDTAGSLR = :NIDTAGSLR'
      'WHERE'
      '  NIDTAGOBT = :OLD_NIDTAGOBT')
    SQLLock.Strings = (
      'SELECT * FROM tagobt'
      'WHERE'
      '  NIDTAGOBT = :NIDTAGOBT'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      'WHERE'
      '  NIDTAGOBT = :NIDTAGOBT')
    SQL.Strings = (
      'select'
      '  tagobt.*,'
      '  tagslr.nidtbxslr,'
      '  tagslr.cclasse,'
      '  cadgrl.cnomegrl'
      'from'
      '  tagobt,'
      '  tagslr,'
      '  cadser,'
      '  cadgrl'
      'where'
      '  tagobt.nidtagobt = :nidtagobt and'
      '  tagslr.nidtagslr = tagobt.nidtagslr and'
      '  cadser.nidcadser = tagobt.nidcadser and'
      '  cadgrl.nidcadgrl = cadser.nidcadgrl')
    Left = 36
    Top = 32
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'nidtagobt'
      end>
    object QRY_103NIDTAGOBT: TFloatField
      FieldName = 'NIDTAGOBT'
      Required = True
    end
    object QRY_103DDTOBITO: TDateTimeField
      FieldName = 'DDTOBITO'
      Required = True
    end
    object QRY_103CMOTIVO: TStringField
      FieldName = 'CMOTIVO'
      Size = 250
    end
    object QRY_103NBSPENSAO: TFloatField
      FieldName = 'NBSPENSAO'
      Required = True
    end
    object QRY_103CULTIMOCRG: TStringField
      FieldName = 'CULTIMOCRG'
      Required = True
      Size = 60
    end
    object QRY_103NIDCADSER: TFloatField
      FieldName = 'NIDCADSER'
    end
    object QRY_103NIDTAGSLR: TFloatField
      FieldName = 'NIDTAGSLR'
      Required = True
    end
    object QRY_103NIDTBXSLR: TFloatField
      FieldName = 'NIDTBXSLR'
      Required = True
    end
    object QRY_103CCLASSE: TStringField
      FieldName = 'CCLASSE'
      Size = 3
    end
    object QRY_103LKL_SAL: TCurrencyField
      FieldKind = fkLookup
      FieldName = 'LKP_SAL'
      LookupDataSet = QRY_080_1
      LookupKeyFields = 'NIDTAGSLR'
      LookupResultField = 'NVALORSLR'
      KeyFields = 'NIDTAGSLR'
      Lookup = True
    end
    object QRY_103CNOMEGRL: TStringField
      FieldName = 'CNOMEGRL'
      Size = 70
    end
  end
  object DTS_103: TOraDataSource
    AutoEdit = False
    DataSet = QRY_103
    Left = 96
    Top = 32
  end
  object QRY_092: TOraQuery
    SQL.Strings = (
      'select'
      '  *'
      'from'
      '  tbxslr')
    Left = 36
    Top = 92
  end
  object DTS_092: TOraDataSource
    AutoEdit = False
    DataSet = QRY_092
    Left = 96
    Top = 92
  end
  object QRY_080: TOraQuery
    SQL.Strings = (
      'select'
      '  distinct cclasse as cclasse,'
      '  nidtbxslr'
      'from '
      '  tagslr'
      'where'
      '  nidtbxslr = :nidtbxslr')
    MasterSource = DTS_092
    Left = 36
    Top = 160
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'nidtbxslr'
      end>
  end
  object DTS_080: TOraDataSource
    AutoEdit = False
    DataSet = QRY_080
    Left = 96
    Top = 160
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
    Left = 32
    Top = 221
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
  end
  object DTS_080_1: TOraDataSource
    DataSet = QRY_080_1
    Left = 96
    Top = 221
  end
  object QRY_077: TOraQuery
    SQL.Strings = (
      'select'
      '  cadgrl.cnomegrl,'
      '  tagffu.nperslr,'
      '  tbxgrp.cnomegrp,'
      '  tagslr.nvalorslr   '
      'from'
      '  cadgrl,'
      '  tagffu,'
      '  tbxgrp,'
      '  cadser,'
      '  tagslr'
      'where'
      '  tagffu.nidtagobt = :nidtagobt and'
      '  tbxgrp.nidtbxgrp = tagffu.nidtbxgrp and'
      '  tagslr.nidtagslr = tagffu.nidtagslr and'
      '  cadser.nidcadser = tagffu.nidcadser and'
      '  cadgrl.nidcadgrl = cadser.nidcadgrl'
      '  '
      '  '
      '  ')
    MasterSource = DTS_103
    Left = 192
    Top = 32
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'nidtagobt'
      end>
    object QRY_077CNOMEGRL: TStringField
      FieldName = 'CNOMEGRL'
      Required = True
      Size = 70
    end
    object QRY_077NPERSLR: TFloatField
      FieldName = 'NPERSLR'
    end
    object QRY_077CNOMEGRP: TStringField
      FieldName = 'CNOMEGRP'
      Required = True
      Size = 35
    end
    object QRY_077NVALORSLR: TFloatField
      FieldName = 'NVALORSLR'
      Required = True
      currency = True
    end
  end
  object DTS_077: TOraDataSource
    DataSet = QRY_077
    Left = 256
    Top = 32
  end
end
