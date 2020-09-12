object DTM_A004RH: TDTM_A004RH
  OldCreateOrder = False
  Left = 230
  Top = 194
  Height = 409
  Width = 621
  object QRY_030: TOraQuery
    SQLInsert.Strings = (
      'INSERT INTO tagdep'
      
        '  (NIDCADGRL, NIDTAGDEP, NIDCADPAI, NIDTBXGRP, NIDTAGGIR, NIDTAG' +
        'GSF)'
      'VALUES'
      
        '  (:NIDCADGRL, :NIDTAGDEP, :NIDCADPAI, :NIDTBXGRP, :NIDTAGGIR, :' +
        'NIDTAGGSF)')
    SQLDelete.Strings = (
      'DELETE FROM tagdep'
      'WHERE'
      '  NIDTAGDEP = :NIDTAGDEP')
    SQLUpdate.Strings = (
      'UPDATE tagdep'
      'SET'
      '  NIDCADGRL = :NIDCADGRL,'
      '  NIDTAGDEP = :NIDTAGDEP,'
      '  NIDCADPAI = :NIDCADPAI,'
      '  NIDTBXGRP = :NIDTBXGRP,'
      '  NIDTAGGIR = :NIDTAGGIR,'
      '  NIDTAGGSF = :NIDTAGGSF'
      'WHERE'
      '  NIDTAGDEP = :OLD_NIDTAGDEP')
    SQLLock.Strings = (
      'SELECT * FROM tagdep'
      'WHERE'
      '  NIDTAGDEP = :NIDTAGDEP'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      'WHERE'
      '  NIDTAGDEP = :NIDTAGDEP')
    Session = DMControle.Conexao
    SQL.Strings = (
      'select tagdep.*, cadgrl.cnomegrl, cadfis.ddtnasc, cadfis.csexo'
      'from tagdep, cadgrl, cadfis '
      'where '
      'cadgrl.nidcadgrl = tagdep.nidcadgrl and'
      'cadfis.nidcadgrl = cadgrl.nidcadgrl and'
      'nidcadpai = :nidcadpai')
    AfterScroll = QRY_030AfterScroll
    OnCalcFields = QRY_030CalcFields
    Left = 16
    Top = 25
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'nidcadpai'
      end>
    object QRY_030NIDCADGRL: TFloatField
      FieldName = 'NIDCADGRL'
      Required = True
    end
    object QRY_030NIDCADPAI: TFloatField
      FieldName = 'NIDCADPAI'
      Required = True
    end
    object QRY_030NIDTAGDEP: TFloatField
      FieldName = 'NIDTAGDEP'
      Required = True
    end
    object QRY_030NIDTBXGRP: TFloatField
      FieldName = 'NIDTBXGRP'
    end
    object QRY_030LKP_PARENTESCO: TStringField
      FieldKind = fkLookup
      FieldName = 'LKP_PARENTESCO'
      LookupDataSet = QRY_026
      LookupKeyFields = 'NIDTBXGRP'
      LookupResultField = 'CNOMEGRP'
      KeyFields = 'NIDTBXGRP'
      Size = 35
      Lookup = True
    end
    object QRY_030CNOMEGRL: TStringField
      FieldName = 'CNOMEGRL'
      Size = 70
    end
    object QRY_030DDTNASC: TDateTimeField
      Alignment = taCenter
      FieldName = 'DDTNASC'
      DisplayFormat = 'DD/MM/YYY'
    end
    object QRY_030CSEXO: TStringField
      Alignment = taCenter
      FieldName = 'CSEXO'
      FixedChar = True
      Size = 1
    end
    object QRY_030CLC_IDADE: TStringField
      Alignment = taCenter
      FieldKind = fkCalculated
      FieldName = 'CLC_IDADE'
      Calculated = True
    end
    object QRY_030LKP_CSEXO: TStringField
      FieldKind = fkLookup
      FieldName = 'LKP_CSEXO'
      LookupDataSet = QRY_026
      LookupKeyFields = 'NIDTBXGRP'
      LookupResultField = 'CSEXO'
      KeyFields = 'NIDTBXGRP'
      Size = 1
      Lookup = True
    end
    object QRY_030NIDTAGGIR: TFloatField
      FieldName = 'NIDTAGGIR'
    end
    object QRY_030NIDTAGGSF: TFloatField
      FieldName = 'NIDTAGGSF'
    end
  end
  object DTS_030: TOraDataSource
    AutoEdit = False
    DataSet = QRY_030
    OnDataChange = DTS_030DataChange
    Left = 98
    Top = 25
  end
  object QRY_026: TOraQuery
    Session = DMControle.Conexao
    SQL.Strings = (
      'select * from tbxgrp')
    Left = 204
    Top = 151
    object QRY_026NIDTBXGRP: TFloatField
      FieldName = 'NIDTBXGRP'
      Required = True
    end
    object QRY_026CNOMEGRP: TStringField
      FieldName = 'CNOMEGRP'
      Required = True
      Size = 35
    end
    object QRY_026NIDTBXVPR: TFloatField
      FieldName = 'NIDTBXVPR'
    end
    object QRY_026NIDRELMASC: TFloatField
      FieldName = 'NIDRELMASC'
    end
    object QRY_026NIDRELFEMI: TFloatField
      FieldName = 'NIDRELFEMI'
    end
    object QRY_026CSEXO: TStringField
      FieldName = 'CSEXO'
      Size = 1
    end
  end
  object QRY_028: TOraQuery
    Session = DMControle.Conexao
    SQL.Strings = (
      'select'
      '  taggsf.nidtaggsf, '
      '  tbxdsf.nidtbxdsf,'
      '  tbxdsf.cnomedsf|| '#39' - '#39' || nidade || '#39' anos'#39' as cnomedsf,'
      '  tbxdsf.nidade'
      'from '
      '  taggsf,'
      '  tbxdsf'
      'where'
      '  taggsf.nidtbxgrp = :nidtbxgrp and'
      '  tbxdsf.nidtbxdsf = taggsf.nidtbxdsf')
    MasterSource = DTS_026
    Left = 208
    Top = 25
    ParamData = <
      item
        DataType = ftFloat
        Name = 'NIDTBXGRP'
        ParamType = ptInput
        Value = 1
      end>
    object QRY_028NIDTBXDSF: TFloatField
      FieldName = 'NIDTBXDSF'
      Required = True
    end
    object QRY_028CNOMEDSF: TStringField
      FieldName = 'CNOMEDSF'
      Size = 83
    end
    object QRY_028NIDTAGGSF: TFloatField
      FieldName = 'NIDTAGGSF'
      Required = True
    end
    object QRY_028NIDADE: TFloatField
      FieldName = 'NIDADE'
      Required = True
    end
  end
  object QRY_027: TOraQuery
    Session = DMControle.Conexao
    SQL.Strings = (
      'select'
      '  taggir.nidtaggir,'
      '  tbxdir.nidtbxdir,'
      '  tbxdir.cnomedir || '#39' - '#39' || nidade || '#39' anos'#39' as cnomedir,'
      '  tbxdir.nidade'
      'from '
      '  taggir,'
      '  tbxdir'
      'where'
      '  taggir.nidtbxgrp = :nidtbxgrp and'
      '  tbxdir.nidtbxdir = taggir.nidtbxdir')
    MasterSource = DTS_026
    Left = 204
    Top = 85
    ParamData = <
      item
        DataType = ftFloat
        Name = 'NIDTBXGRP'
        ParamType = ptInput
        Value = 1
      end>
    object QRY_027NIDTBXDIR: TFloatField
      FieldName = 'NIDTBXDIR'
      Required = True
    end
    object QRY_027CNOMEDIR: TStringField
      FieldName = 'CNOMEDIR'
      Size = 83
    end
    object QRY_027NIDTAGGIR: TFloatField
      FieldName = 'NIDTAGGIR'
      Required = True
    end
    object QRY_027NIDADE: TFloatField
      FieldName = 'NIDADE'
      Required = True
    end
  end
  object DTS_026: TOraDataSource
    AutoEdit = False
    DataSet = QRY_026
    Left = 284
    Top = 151
  end
  object DTS_028: TOraDataSource
    AutoEdit = False
    DataSet = QRY_028
    Left = 280
    Top = 25
  end
  object DTS_027: TOraDataSource
    AutoEdit = False
    DataSet = QRY_027
    Left = 284
    Top = 85
  end
  object QRY_DEPSALFAM: TOraQuery
    Session = DMControle.Conexao
    SQL.Strings = (
      'select nrodepslrfam(:nidcadpai) as Total from dual')
    MasterSource = DTS_030
    Left = 208
    Top = 220
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'nidcadpai'
      end>
    object QRY_DEPSALFAMTOTAL: TFloatField
      FieldName = 'TOTAL'
      DisplayFormat = '00'
    end
  end
  object QRY_DEPIMPRENDA: TOraQuery
    Session = DMControle.Conexao
    SQL.Strings = (
      'select nrodepir(:nidcadpai) as Total from dual')
    MasterSource = DTS_030
    Left = 208
    Top = 276
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'nidcadpai'
      end>
    object QRY_DEPIMPRENDATOTAL: TFloatField
      FieldName = 'TOTAL'
      DisplayFormat = '00'
    end
  end
  object DTS_DEPSALFAM: TOraDataSource
    AutoEdit = False
    DataSet = QRY_DEPSALFAM
    Left = 324
    Top = 220
  end
  object DTS_DEPIMPRENDA: TOraDataSource
    AutoEdit = False
    DataSet = QRY_DEPIMPRENDA
    Left = 328
    Top = 272
  end
  object QRY_016: TOraQuery
    SQLInsert.Strings = (
      'INSERT INTO cadgrl'
      '  (NIDCADGRL, CNOMEGRL, CCPFCNPJ, CPESSOAFJ, NIDCADLOG)'
      'VALUES'
      '  (:NIDCADGRL, :CNOMEGRL, :CCPFCNPJ, :CPESSOAFJ, :NIDCADLOG)')
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
      '  NIDCADLOG = :NIDCADLOG'
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
    Session = DMControle.Conexao
    SQL.Strings = (
      'select nidcadgrl,cnomegrl,ccpfcnpj,nidcadlog,cpessoafj'
      'from cadgrl where nidcadgrl = :nidcadgrl')
    MasterSource = DTS_030
    Left = 16
    Top = 89
    ParamData = <
      item
        DataType = ftFloat
        Name = 'NIDCADGRL'
        ParamType = ptInput
      end>
    object QRY_016NIDCADGRL: TFloatField
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
    object QRY_016NIDCADLOG: TFloatField
      DefaultExpression = '0'
      FieldName = 'NIDCADLOG'
      Required = True
    end
    object QRY_016CPESSOAFJ: TFloatField
      FieldName = 'CPESSOAFJ'
      Required = True
    end
  end
  object DTS_016: TOraDataSource
    AutoEdit = False
    DataSet = QRY_016
    Left = 96
    Top = 89
  end
  object QRY_019: TOraQuery
    SQLInsert.Strings = (
      'INSERT INTO cadfis'
      
        '  (NIDCADGRL, NIDCADFIS, CNOMEMAE, CSEXO, DDTNASC, NIDTBXECI, NI' +
        'DTBXERG, NIDTBXLOC, NIDTBXCOR, NIDTBXNAC, NIDTBXGRI)'
      'VALUES'
      
        '  (:NIDCADGRL, :NIDCADFIS, :CNOMEMAE, :CSEXO, :DDTNASC, :NIDTBXE' +
        'CI, :NIDTBXERG, :NIDTBXLOC, :NIDTBXCOR, :NIDTBXNAC, :NIDTBXGRI)')
    SQLDelete.Strings = (
      'DELETE FROM cadfis'
      'WHERE'
      '  NIDCADGRL = :NIDCADGRL')
    SQLUpdate.Strings = (
      'UPDATE cadfis'
      'SET'
      '  NIDCADGRL = :NIDCADGRL,'
      '  NIDCADFIS = :NIDCADFIS,'
      '  CNOMEMAE = :CNOMEMAE,'
      '  CSEXO = :CSEXO,'
      '  DDTNASC = :DDTNASC,'
      '  NIDTBXECI = :NIDTBXECI,'
      '  NIDTBXERG = :NIDTBXERG,'
      '  NIDTBXLOC = :NIDTBXLOC,'
      '  NIDTBXCOR = :NIDTBXCOR,'
      '  NIDTBXNAC = :NIDTBXNAC,'
      '  NIDTBXGRI = :NIDTBXGRI'
      'WHERE'
      '  NIDCADGRL = :OLD_NIDCADGRL')
    SQLLock.Strings = (
      'SELECT * FROM cadfis'
      'WHERE'
      '  NIDCADGRL = :NIDCADGRL'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      'WHERE'
      '  NIDCADGRL = :NIDCADGRL')
    Session = DMControle.Conexao
    SQL.Strings = (
      'select nidcadgrl,nidcadfis,cnomemae,csexo,ddtnasc,'
      
        '       nidtbxeci,nidtbxerg,nidtbxloc,nidtbxcor,nidtbxnac,nidtbxg' +
        'ri'
      'from cadfis'
      'where nidcadgrl = :nidcadgrl')
    MasterSource = DTS_016
    Left = 16
    Top = 152
    ParamData = <
      item
        DataType = ftFloat
        Name = 'NIDCADGRL'
        ParamType = ptInput
        Value = Null
      end>
    object QRY_019NIDCADGRL: TFloatField
      FieldName = 'NIDCADGRL'
      Required = True
    end
    object QRY_019NIDCADFIS: TFloatField
      FieldName = 'NIDCADFIS'
      Required = True
    end
    object QRY_019CNOMEMAE: TStringField
      FieldName = 'CNOMEMAE'
      Size = 50
    end
    object QRY_019CSEXO: TStringField
      FieldName = 'CSEXO'
      FixedChar = True
      Size = 1
    end
    object QRY_019DDTNASC: TDateTimeField
      FieldName = 'DDTNASC'
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
    object QRY_019CLC_IDADE: TStringField
      FieldKind = fkCalculated
      FieldName = 'CLC_IDADE'
      Calculated = True
    end
  end
  object DTS_019: TOraDataSource
    AutoEdit = False
    DataSet = QRY_019
    Left = 96
    Top = 152
  end
end
