object DTM_A008RH: TDTM_A008RH
  OldCreateOrder = False
  Left = 199
  Top = 107
  Height = 441
  Width = 571
  object QRY_016: TOraQuery
    SQLInsert.Strings = (
      'INSERT INTO cadgrl'
      
        '  (NIDCADGRL, CNOMEGRL, CCPFCNPJ, CPESSOAFJ, NIDCADLOG, NIDTBXCN' +
        'A)'
      'VALUES'
      
        '  (:NIDCADGRL, :CNOMEGRL, :CCPFCNPJ, :CPESSOAFJ, :NIDCADLOG, :NI' +
        'DTBXCNA)')
    SQLDelete.Strings = (
      'DELETE FROM cadgrl'
      'WHERE'
      '  NIDCADGRL = :NIDCADGRL')
    SQLUpdate.Strings = (
      'UPDATE cadgrl'
      'SET'
      '  NIDCADGRL = :NIDCADGRL,'
      '  CNOMEGRL = :CNOMEGRL,'
      '  CCPFCNPJ = :CCPFCNPJ,'
      '  CPESSOAFJ = :CPESSOAFJ,'
      '  NIDCADLOG = :NIDCADLOG,'
      '  NIDTBXCNA = :NIDTBXCNA'
      'WHERE'
      '  NIDCADGRL = :OLD_NIDCADGRL')
    SQLLock.Strings = (
      'SELECT * FROM cadgrl'
      'WHERE'
      '  NIDCADGRL = :NIDCADGRL'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      'WHERE'
      '  NIDCADGRL = :NIDCADGRL')
    SQL.Strings = (
      'select'
      '  nidcadgrl,'
      '  cnomegrl,'
      '  ccpfcnpj,'
      '  cpessoafj,'
      '  nidcadlog,'
      '  nidtbxcna'
      'from'
      '  cadgrl'
      'where'
      '  ccpfcnpj = :ccpfcnpj')
    Left = 28
    Top = 24
    ParamData = <
      item
        DataType = ftString
        Name = 'ccpfcnpj'
        Value = '02499619970'
      end>
    object QRY_016NIDCADGRL: TFloatField
      DefaultExpression = '0'
      FieldName = 'NIDCADGRL'
      Required = True
    end
    object QRY_016CNOMEGRL: TStringField
      FieldName = 'CNOMEGRL'
      Required = True
      Size = 70
    end
    object QRY_016CCPFCNPJ: TStringField
      FieldName = 'CCPFCNPJ'
      Size = 14
    end
    object QRY_016CPESSOAFJ: TFloatField
      DefaultExpression = '1'
      FieldName = 'CPESSOAFJ'
      Required = True
    end
    object QRY_016NIDCADLOG: TFloatField
      DefaultExpression = '0'
      FieldName = 'NIDCADLOG'
      Required = True
    end
    object QRY_016NIDTBXCNA: TFloatField
      DefaultExpression = '0'
      FieldName = 'NIDTBXCNA'
      Required = True
    end
  end
  object DTS_016: TOraDataSource
    AutoEdit = False
    DataSet = QRY_016
    Left = 88
    Top = 24
  end
  object QRY_029: TOraQuery
    SQLInsert.Strings = (
      'INSERT INTO cadser'
      '  (NIDCADSER, NIDCADGRL)'
      'VALUES'
      '  (:NIDCADSER, :NIDCADGRL)')
    SQLDelete.Strings = (
      'DELETE FROM cadser'
      'WHERE'
      '  NIDCADSER = :NIDCADSER')
    SQLUpdate.Strings = (
      'UPDATE cadser'
      'SET'
      '  NIDCADSER = :NIDCADSER,'
      '  NIDCADGRL = :NIDCADGRL'
      'WHERE'
      '  NIDCADSER = :OLD_NIDCADSER')
    SQLLock.Strings = (
      'SELECT * FROM cadser'
      'WHERE'
      '  NIDCADSER = :NIDCADSER'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      'WHERE'
      '  NIDCADSER = :NIDCADSER')
    SQL.Strings = (
      'select'
      '  nidcadser,'
      '  nidcadgrl'
      'from'
      '  cadser'
      'where'
      '  nidcadgrl = :nidcadgrl  ')
    MasterSource = DTS_016
    CachedUpdates = True
    Left = 20
    Top = 144
    ParamData = <
      item
        DataType = ftFloat
        Name = 'NIDCADGRL'
        ParamType = ptInput
        Value = 7317
      end>
    object QRY_029NIDCADSER: TFloatField
      DefaultExpression = '0'
      FieldName = 'NIDCADSER'
      Required = True
    end
    object QRY_029NIDCADGRL: TFloatField
      FieldName = 'NIDCADGRL'
      Required = True
    end
  end
  object QRY_103: TOraQuery
    SQLInsert.Strings = (
      'INSERT INTO tagobt'
      
        '  (NIDTAGOBT, DDTOBITO, CMOTIVO, NBSPENSAO, CULTIMOCRG, NIDCADSE' +
        'R, NIDTAGSLR, NIDTBXTBI)'
      'VALUES'
      
        '  (:NIDTAGOBT, :DDTOBITO, :CMOTIVO, :NBSPENSAO, :CULTIMOCRG, :NI' +
        'DCADSER, :NIDTAGSLR, :NIDTBXTBI)')
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
      '  NIDTAGSLR = :NIDTAGSLR,'
      '  NIDTBXTBI = :NIDTBXTBI'
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
      '  tagslr.cclasse,'
      '  tagslr.nnivel,'
      '  tagslr.nidtbxslr'#9
      'from'
      '  tagobt,'
      '  tagslr'
      'where'
      '  tagobt.nidcadser = :nidcadser and'
      '  tagslr.nidtagslr(+) = tagobt.nidtagslr ')
    MasterSource = DTS_029
    CachedUpdates = True
    Left = 24
    Top = 208
    ParamData = <
      item
        DataType = ftFloat
        Name = 'NIDCADSER'
        ParamType = ptInput
        Value = 6954
      end>
    object QRY_103NIDTAGOBT: TFloatField
      DefaultExpression = '0'
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
    end
    object QRY_103CCLASSE: TStringField
      FieldName = 'CCLASSE'
      Size = 3
    end
    object QRY_103NNIVEL: TFloatField
      DefaultExpression = '2'
      FieldName = 'NNIVEL'
    end
    object QRY_103NIDTBXSLR: TFloatField
      FieldName = 'NIDTBXSLR'
    end
    object QRY_103NIDTBXTBI: TFloatField
      FieldName = 'NIDTBXTBI'
    end
  end
  object DTS_103: TOraDataSource
    AutoEdit = False
    DataSet = QRY_103
    Left = 88
    Top = 208
  end
  object QRY_092: TOraQuery
    Session = DMControle.Conexao
    SQL.Strings = (
      'select'
      '  *'
      'from'
      '  tbxslr')
    Left = 200
    Top = 24
  end
  object DTS_092: TOraDataSource
    AutoEdit = False
    DataSet = QRY_092
    Left = 264
    Top = 24
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
    Left = 200
    Top = 80
    ParamData = <
      item
        DataType = ftFloat
        Name = 'NIDTBXSLR'
        ParamType = ptInput
        Value = 1
      end>
  end
  object DTS_080: TOraDataSource
    AutoEdit = False
    DataSet = QRY_080
    Left = 264
    Top = 80
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
    Left = 200
    Top = 136
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
    AutoEdit = False
    DataSet = QRY_080_1
    Left = 268
    Top = 136
  end
  object DTS_029: TOraDataSource
    AutoEdit = False
    DataSet = QRY_029
    Left = 84
    Top = 144
  end
  object QRY_019: TOraQuery
    SQLInsert.Strings = (
      'INSERT INTO cadfis'
      
        '  (NIDCADGRL, NIDCADFIS, NIDTBXECI, NIDTBXERG, NIDTBXLOC, NIDTBX' +
        'COR, NIDTBXNAC, NIDTBXGRI)'
      'VALUES'
      
        '  (:NIDCADGRL, :NIDCADFIS, :NIDTBXECI, :NIDTBXERG, :NIDTBXLOC, :' +
        'NIDTBXCOR, :NIDTBXNAC, :NIDTBXGRI)')
    SQLDelete.Strings = (
      'DELETE FROM cadfis'
      'WHERE'
      '  NIDCADFIS = :NIDCADFIS')
    SQLUpdate.Strings = (
      'UPDATE cadfis'
      'SET'
      '  NIDCADGRL = :NIDCADGRL,'
      '  NIDCADFIS = :NIDCADFIS,'
      '  NIDTBXECI = :NIDTBXECI,'
      '  NIDTBXERG = :NIDTBXERG,'
      '  NIDTBXLOC = :NIDTBXLOC,'
      '  NIDTBXCOR = :NIDTBXCOR,'
      '  NIDTBXNAC = :NIDTBXNAC,'
      '  NIDTBXGRI = :NIDTBXGRI'
      'WHERE'
      '  NIDCADFIS = :OLD_NIDCADFIS')
    SQLLock.Strings = (
      'SELECT * FROM cadfis'
      'WHERE'
      '  NIDCADFIS = :NIDCADFIS'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      'WHERE'
      '  NIDCADFIS = :NIDCADFIS')
    SQL.Strings = (
      'select'
      '  nidcadgrl,'
      '  nidcadfis,'
      '  nidtbxeci,'
      '  nidtbxerg,'
      '  nidtbxloc,'
      '  nidtbxcor,'
      '  nidtbxnac,'
      '  nidtbxgri'
      'from'
      '  cadfis'
      'where'
      '  nidcadgrl = :nidcadgrl')
    MasterSource = DTS_016
    CachedUpdates = True
    Left = 24
    Top = 84
    ParamData = <
      item
        DataType = ftFloat
        Name = 'NIDCADGRL'
        ParamType = ptInput
        Value = 7317
      end>
    object QRY_019NIDCADGRL: TFloatField
      FieldName = 'NIDCADGRL'
      Required = True
    end
    object QRY_019NIDCADFIS: TFloatField
      DefaultExpression = '0'
      FieldName = 'NIDCADFIS'
      Required = True
    end
    object QRY_019NIDTBXECI: TFloatField
      DefaultExpression = '0'
      FieldName = 'NIDTBXECI'
      Required = True
    end
    object QRY_019NIDTBXERG: TFloatField
      DefaultExpression = '0'
      FieldName = 'NIDTBXERG'
      Required = True
    end
    object QRY_019NIDTBXLOC: TFloatField
      DefaultExpression = '0'
      FieldName = 'NIDTBXLOC'
      Required = True
    end
    object QRY_019NIDTBXCOR: TFloatField
      DefaultExpression = '0'
      FieldName = 'NIDTBXCOR'
      Required = True
    end
    object QRY_019NIDTBXNAC: TFloatField
      DefaultExpression = '0'
      FieldName = 'NIDTBXNAC'
      Required = True
    end
    object QRY_019NIDTBXGRI: TFloatField
      DefaultExpression = '0'
      FieldName = 'NIDTBXGRI'
      Required = True
    end
  end
  object DTS_019: TOraDataSource
    AutoEdit = False
    DataSet = QRY_019
    Left = 88
    Top = 84
  end
  object QRY_094: TOraQuery
    Session = DMControle.Conexao
    SQL.Strings = (
      'select'
      '  *'
      'from'
      '  tbxtbi')
    Left = 192
    Top = 200
  end
  object DTS_094: TOraDataSource
    DataSet = QRY_094
    Left = 264
    Top = 200
  end
end
