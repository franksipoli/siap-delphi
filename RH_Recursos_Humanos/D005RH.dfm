object DTM_A005RH: TDTM_A005RH
  OldCreateOrder = False
  Left = 84
  Top = 51
  Height = 514
  Width = 694
  object QRY_077: TOraQuery
    SQLInsert.Strings = (
      'INSERT INTO tagffu'
      
        '  (NIDTAGFFU, NPERSLR, NIDTAGOBT, NIDCADCRG, NIDTAGSLR, NIDTBXLT' +
        'B, NIDTAGQHR, NIDTAGODP, NIDTAGDST, NIDTAGRPC, NIDTAGOCT, NIDTAG' +
        'OPT, NIDCADSER, NMATRICULA, DDTADMISSA, DDTDESLIGA, CULTIMOCRG, ' +
        'DDTOPCFGTS, NIDTBXGRP, NIDTAGUNO, NIDTAGUPJ, NIDTAGBOR, NIDTAGFP' +
        'G, NIDTBXENT, NCODFUNOLD)'
      'VALUES'
      
        '  (:NIDTAGFFU, :NPERSLR, :NIDTAGOBT, :NIDCADCRG, :NIDTAGSLR, :NI' +
        'DTBXLTB, :NIDTAGQHR, :NIDTAGODP, :NIDTAGDST, :NIDTAGRPC, :NIDTAG' +
        'OCT, :NIDTAGOPT, :NIDCADSER, :NMATRICULA, :DDTADMISSA, :DDTDESLI' +
        'GA, :CULTIMOCRG, :DDTOPCFGTS, :NIDTBXGRP, :NIDTAGUNO, :NIDTAGUPJ' +
        ', :NIDTAGBOR, :NIDTAGFPG, :NIDTBXENT, :NCODFUNOLD)')
    SQLDelete.Strings = (
      'DELETE FROM tagffu'
      'WHERE'
      '  NIDTAGFFU = :NIDTAGFFU')
    SQLUpdate.Strings = (
      'UPDATE tagffu'
      'SET'
      '  NIDTAGFFU = :NIDTAGFFU,'
      '  NPERSLR = :NPERSLR,'
      '  NIDTAGOBT = :NIDTAGOBT,'
      '  NIDCADCRG = :NIDCADCRG,'
      '  NIDTAGSLR = :NIDTAGSLR,'
      '  NIDTBXLTB = :NIDTBXLTB,'
      '  NIDTAGQHR = :NIDTAGQHR,'
      '  NIDTAGODP = :NIDTAGODP,'
      '  NIDTAGDST = :NIDTAGDST,'
      '  NIDTAGRPC = :NIDTAGRPC,'
      '  NIDTAGOCT = :NIDTAGOCT,'
      '  NIDTAGOPT = :NIDTAGOPT,'
      '  NIDCADSER = :NIDCADSER,'
      '  NMATRICULA = :NMATRICULA,'
      '  DDTADMISSA = :DDTADMISSA,'
      '  DDTDESLIGA = :DDTDESLIGA,'
      '  CULTIMOCRG = :CULTIMOCRG,'
      '  DDTOPCFGTS = :DDTOPCFGTS,'
      '  NIDTBXGRP = :NIDTBXGRP,'
      '  NIDTAGUNO = :NIDTAGUNO,'
      '  NIDTAGUPJ = :NIDTAGUPJ,'
      '  NIDTAGBOR = :NIDTAGBOR,'
      '  NIDTAGFPG = :NIDTAGFPG,'
      '  NIDTBXENT = :NIDTBXENT,'
      '  NCODFUNOLD = :NCODFUNOLD'
      'WHERE'
      '  NIDTAGFFU = :OLD_NIDTAGFFU')
    SQLLock.Strings = (
      'SELECT * FROM tagffu'
      'WHERE'
      '  NIDTAGFFU = :NIDTAGFFU'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      'WHERE'
      '  NIDTAGFFU = :NIDTAGFFU')
    SQL.Strings = (
      'select'
      '  tagffu.*,'
      '  cadcrg.nidtbxtcr,'
      '  tagodp.nidtbxorg'
      'from'
      '  tagffu,'
      '  cadcrg,'
      '  tagodp'
      'where'
      '  tagffu.nidcadser = :nidcadser and'
      '  cadcrg.nidcadcrg = tagffu.nidcadcrg and'
      '  tagodp.nidtagodp(+) = tagffu.nidtagodp')
    MasterSource = DTS_029
    AfterOpen = QRY_077AfterOpen
    AfterScroll = QRY_077AfterScroll
    Left = 20
    Top = 88
    ParamData = <
      item
        DataType = ftFloat
        Name = 'NIDCADSER'
        ParamType = ptInput
        Value = 102
      end>
    object QRY_077NIDTAGFFU: TFloatField
      FieldName = 'NIDTAGFFU'
      Required = True
    end
    object QRY_077NPERSLR: TFloatField
      FieldName = 'NPERSLR'
    end
    object QRY_077NIDTAGOBT: TFloatField
      FieldName = 'NIDTAGOBT'
    end
    object QRY_077NIDCADCRG: TFloatField
      FieldName = 'NIDCADCRG'
      Required = True
    end
    object QRY_077NIDTAGSLR: TFloatField
      FieldName = 'NIDTAGSLR'
    end
    object QRY_077NIDTBXLTB: TFloatField
      FieldName = 'NIDTBXLTB'
    end
    object QRY_077NIDTAGQHR: TFloatField
      FieldName = 'NIDTAGQHR'
    end
    object QRY_077NIDTAGODP: TFloatField
      FieldName = 'NIDTAGODP'
    end
    object QRY_077NIDTAGDST: TFloatField
      FieldName = 'NIDTAGDST'
    end
    object QRY_077NIDTAGRPC: TFloatField
      FieldName = 'NIDTAGRPC'
    end
    object QRY_077NIDTAGOCT: TFloatField
      FieldName = 'NIDTAGOCT'
    end
    object QRY_077NIDTAGOPT: TFloatField
      FieldName = 'NIDTAGOPT'
    end
    object QRY_077NIDCADSER: TFloatField
      FieldName = 'NIDCADSER'
      Required = True
    end
    object QRY_077NMATRICULA: TFloatField
      FieldName = 'NMATRICULA'
      Required = True
    end
    object QRY_077DDTADMISSA: TDateTimeField
      FieldName = 'DDTADMISSA'
      Required = True
    end
    object QRY_077DDTDESLIGA: TDateTimeField
      FieldName = 'DDTDESLIGA'
    end
    object QRY_077CULTIMOCRG: TStringField
      FieldName = 'CULTIMOCRG'
      Size = 40
    end
    object QRY_077DDTOPCFGTS: TDateTimeField
      FieldName = 'DDTOPCFGTS'
    end
    object QRY_077NIDTBXGRP: TFloatField
      FieldName = 'NIDTBXGRP'
    end
    object QRY_077NIDTBXTCR: TFloatField
      FieldName = 'NIDTBXTCR'
      Required = True
    end
    object QRY_077NIDTBXORG: TFloatField
      FieldName = 'NIDTBXORG'
    end
    object QRY_077NIDTAGUNO: TFloatField
      FieldName = 'NIDTAGUNO'
    end
    object QRY_077NIDTAGUPJ: TFloatField
      FieldName = 'NIDTAGUPJ'
    end
    object QRY_077NIDTBXENT: TFloatField
      FieldName = 'NIDTBXENT'
      Required = True
    end
    object QRY_077NCODFUNOLD: TFloatField
      FieldName = 'NCODFUNOLD'
    end
    object QRY_077NIDTAGBOR: TFloatField
      FieldName = 'NIDTAGBOR'
    end
    object QRY_077NIDTAGFPG: TFloatField
      FieldName = 'NIDTAGFPG'
    end
  end
  object DTS_077: TOraDataSource
    AutoEdit = False
    DataSet = QRY_077
    OnStateChange = DTS_077StateChange
    Left = 80
    Top = 88
  end
  object QRY_108: TOraQuery
    SQL.Strings = (
      'select'
      '  tbxsts.cdescrists,'
      '  tbxtpm.cdescritpm'
      'from'
      '  tagmvf,'
      '  tbxsts,'
      '  tbxtpm'
      'where'
      '  tagmvf.nidtagffu = :nidtagffu and'
      '  tagmvf.cmvfatual = '#39'S'#39' and'
      '  tbxtpm.nidtbxtpm = tagmvf.nidtbxtpm and'
      '  tbxsts.nidtbxsts = tbxtpm.nidtbxsts')
    MasterSource = DTS_077
    Left = 20
    Top = 156
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'nidtagffu'
      end>
  end
  object DTS_108: TOraDataSource
    AutoEdit = False
    DataSet = QRY_108
    Left = 80
    Top = 156
  end
  object QRY_095: TOraQuery
    SQL.Strings = (
      'select'
      '  *'
      'from'
      '  tbxtcr')
    Left = 20
    Top = 216
  end
  object DTS_095: TOraDataSource
    AutoEdit = False
    DataSet = QRY_095
    Left = 80
    Top = 216
  end
  object QRY_073: TOraQuery
    SQL.Strings = (
      'select'
      '  nidcadcrg,'
      '  cdescricrg'
      'from'
      '  cadcrg'
      'where'
      '  nidtbxtcr = :nidtbxtcr')
    MasterSource = DTS_095
    Left = 20
    Top = 280
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'nidtbxtcr'
      end>
  end
  object DTS_073: TOraDataSource
    AutoEdit = False
    DataSet = QRY_073
    Left = 80
    Top = 276
  end
  object QRY_103: TOraQuery
    SQL.Strings = (
      'select'
      '  cadgrl.cnomegrl'
      'from'
      '  tagobt,'
      '  cadser,'
      '  cadgrl'
      'where'
      '  tagobt.nidtagobt = :nidtagobt and'
      '  cadser.nidcadser = tagobt.nidcadser and'
      '  cadgrl.nidcadgrl = cadser.nidcadgrl')
    MasterSource = DTS_077
    Left = 20
    Top = 336
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'nidtagobt'
      end>
  end
  object DTS_103: TOraDataSource
    AutoEdit = False
    DataSet = QRY_103
    Left = 80
    Top = 336
  end
  object QRY_079: TOraQuery
    SQL.Strings = (
      'select'
      '  tbxqhr.*,'
      '  tagqhr.nidtagqhr'
      'from'
      '  tagqhr,'
      '  tbxqhr'
      'where'
      '  tagqhr.nidcadcrg = :nidcadcrg and'
      '  tbxqhr.nidtbxqhr = tagqhr.nidtbxqhr')
    MasterSource = DTS_073
    Left = 192
    Top = 20
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'nidcadcrg'
      end>
    object QRY_079NIDTBXQHR: TFloatField
      FieldName = 'NIDTBXQHR'
      Required = True
    end
    object QRY_079NPERINIINI: TFloatField
      FieldName = 'NPERINIINI'
      Required = True
      DisplayFormat = '00:00'
    end
    object QRY_079NPERINIFIM: TFloatField
      FieldName = 'NPERINIFIM'
      Required = True
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
    object QRY_079NIDTAGQHR: TFloatField
      FieldName = 'NIDTAGQHR'
      Required = True
    end
    object QRY_079CDESCRIQHR: TStringField
      FieldName = 'CDESCRIQHR'
    end
  end
  object DTS_079: TOraDataSource
    AutoEdit = False
    DataSet = QRY_079
    Left = 252
    Top = 20
  end
  object QRY_026: TOraQuery
    SQL.Strings = (
      'select'
      '  *'
      'from'
      '  tbxgrp')
    Left = 192
    Top = 88
  end
  object DTS_026: TOraDataSource
    AutoEdit = False
    DataSet = QRY_026
    Left = 252
    Top = 88
  end
  object QRY_115: TOraQuery
    SQL.Strings = (
      'select'
      '  tbxrpv.cdescrrpv,'
      '  tagrpc.nidtagrpc'
      'from'
      '  tagrpc,'
      '  tbxrpv'
      'where'
      '  tagrpc.nidtbxtcr = :nidtbxtcr and'
      '  tbxrpv.nidtbxrpv = tagrpc.nidtbxrpv')
    MasterSource = DTS_095
    Left = 192
    Top = 156
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'nidtbxtcr'
      end>
  end
  object DTS_115: TOraDataSource
    AutoEdit = False
    DataSet = QRY_115
    Left = 252
    Top = 156
  end
  object QRY_114: TOraQuery
    SQL.Strings = (
      'select'
      '  tbxopt.cdescriopt,'
      '  tagopt.nidtagopt'
      'from'
      '  tagopt,'
      '  tbxopt'
      'where'
      '  tagopt.nidtbxtcr = :nidtbxtcr and'
      '  tbxopt.nidtbxopt = tagopt.nidtbxopt')
    MasterSource = DTS_095
    Left = 192
    Top = 212
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'nidtbxtcr'
      end>
  end
  object DTS_114: TOraDataSource
    AutoEdit = False
    DataSet = QRY_114
    Left = 252
    Top = 212
  end
  object QRY_088: TOraQuery
    SQL.Strings = (
      'select'
      '  *'
      'from'
      '  tbxorg')
    Left = 192
    Top = 276
  end
  object DTS_088: TOraDataSource
    AutoEdit = False
    DataSet = QRY_088
    Left = 252
    Top = 276
  end
  object QRY_078: TOraQuery
    SQL.Strings = (
      'select'
      '  tbxdpt.cdescridpt,'
      '  tbxdpt.nidtbxdpt,'
      '  tagodp.nidtagodp'
      'from'
      '  tagodp,'
      '  tbxdpt'
      'where'
      '  tagodp.nidtbxorg = :nidtbxorg and'
      '  tbxdpt.nidtbxdpt = tagodp.nidtbxdpt')
    MasterSource = DTS_088
    Left = 192
    Top = 340
    ParamData = <
      item
        DataType = ftFloat
        Name = 'NIDTBXORG'
        ParamType = ptInput
        Value = 1
      end>
  end
  object DTS_078: TOraDataSource
    AutoEdit = False
    DataSet = QRY_078
    Left = 252
    Top = 340
  end
  object QRY_076: TOraQuery
    SQL.Strings = (
      'select'
      '  tbxset.cdescriset,'
      '  tagdst.nidtagdst'
      'from'
      '  tagdst,'
      '  tbxset'
      'where'
      '  tagdst.nidtbxdpt = :nidtbxdpt and'
      '  tbxset.nidtbxset = tagdst.nidtbxset')
    MasterSource = DTS_078
    Left = 344
    Top = 20
    ParamData = <
      item
        DataType = ftFloat
        Name = 'NIDTBXDPT'
        ParamType = ptInput
        Value = 1
      end>
  end
  object DTS_076: TOraDataSource
    AutoEdit = False
    DataSet = QRY_076
    Left = 412
    Top = 20
  end
  object QRY_087: TOraQuery
    SQL.Strings = (
      'select'
      '  *'
      'from'
      '  tbxltb')
    Left = 344
    Top = 88
  end
  object DTS_087: TOraDataSource
    AutoEdit = False
    DataSet = QRY_087
    Left = 412
    Top = 92
  end
  object QRY_029: TOraQuery
    SQL.Strings = (
      'select'
      '  cadgrl.ctelcom,'
      '  cadgrl.cemail,'
      '  cadgrl.cnomegrl,'
      '  cadser.nidcadser'
      'from'
      '  cadser,  '
      '  cadgrl'
      'where'
      '  cadser.nidcadgrl = :nidcadgrl and'
      '  cadgrl.nidcadgrl = cadser.nidcadgrl'
      '  '
      '  ')
    Left = 20
    Top = 24
    ParamData = <
      item
        DataType = ftInteger
        Name = 'nidcadgrl'
        Value = 164
      end>
    object QRY_029CTELCOM: TStringField
      FieldName = 'CTELCOM'
      Size = 10
    end
    object QRY_029CEMAIL: TStringField
      FieldName = 'CEMAIL'
      Size = 30
    end
    object QRY_029NIDCADSER: TFloatField
      FieldName = 'NIDCADSER'
      Required = True
    end
    object QRY_029CNOMEGRL: TStringField
      FieldName = 'CNOMEGRL'
      Required = True
      Size = 70
    end
  end
  object DTS_029: TOraDataSource
    AutoEdit = False
    DataSet = QRY_029
    Left = 80
    Top = 24
  end
  object QRY_141: TOraQuery
    SQL.Strings = (
      'select'
      '  *'
      'from'
      '  tbxent')
    Left = 348
    Top = 152
  end
  object DTS_141: TOraDataSource
    AutoEdit = False
    DataSet = QRY_141
    Left = 412
    Top = 152
  end
end
