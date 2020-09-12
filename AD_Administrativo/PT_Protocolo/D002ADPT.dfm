object DTM_A002ADPT: TDTM_A002ADPT
  OldCreateOrder = False
  Left = 72
  Top = 89
  Height = 479
  Width = 741
  object QRY_155: TOraQuery
    SQL.Strings = (
      'select'
      '  tbxtrq.nidtbxtrq,'
      '  tbxtrq.cdescritrq,'
      '  tbxtrq.creferenrh'
      'from'
      '  tbxtrq')
    Left = 26
    Top = 88
    object QRY_155NIDTBXTRQ: TFloatField
      FieldName = 'NIDTBXTRQ'
      Required = True
    end
    object QRY_155CDESCRITRQ: TStringField
      FieldName = 'CDESCRITRQ'
      Required = True
      Size = 40
    end
    object QRY_155CREFERENRH: TStringField
      FieldName = 'CREFERENRH'
      Required = True
      FixedChar = True
      Size = 1
    end
  end
  object DTS_155: TOraDataSource
    AutoEdit = False
    DataSet = QRY_155
    Left = 102
    Top = 88
  end
  object QRY_153_1: TOraQuery
    SQL.Strings = (
      'select'
      '  distinct'
      '  tbxurq.cidtbxurq,'
      '  tbxurq.cnome, '
      '  interprot.cidtbxurq as dat_idinter,'
      '  interprot.cnome as dat_cnomeinter '
      'from'
      '  cadreq,  '
      '  tbxurq,'
      '  tbxurq interprot,'
      '  tagreq,'
      '  tagitr  '
      'where'
      '  tagreq.nidcadreq = cadreq.nidcadreq and'
      '  tagreq.cprincipal = '#39'S'#39' and      '
      '  tbxurq.cidtbxurq = tagreq.cidtbxurq and  '
      '  tagitr.nidcadreq = cadreq.nidcadreq and'
      '  tagitr.cprincipal = '#39'S'#39' and'
      '  interprot.cidtbxurq = tagitr.cidtbxurq  '
      'order by'
      '  tbxurq.cnome ,'
      '  interprot.cnome ')
    AfterScroll = QRY_153_1AfterScroll
    Left = 26
    Top = 16
    object QRY_153_1CIDTBXURQ: TStringField
      FieldName = 'CIDTBXURQ'
      Required = True
    end
    object QRY_153_1CNOME: TStringField
      FieldName = 'CNOME'
      Size = 70
    end
    object QRY_153_1DAT_IDINTER: TStringField
      FieldName = 'DAT_IDINTER'
      Required = True
    end
    object QRY_153_1DAT_CNOMEINTER: TStringField
      FieldName = 'DAT_CNOMEINTER'
      Size = 70
    end
  end
  object QRY_163: TOraQuery
    SQL.Strings = (
      'select'
      '  tbxulc.cidtbxulc,'
      '  tbxulc.cdescriulc'
      'from'
      '  tbxulc'
      'where'
      '  cidtbxulc like '#39'%O%'#39
      'order by'
      '  tbxulc.cdescriulc  ')
    Left = 27
    Top = 172
  end
  object DTS_163: TOraDataSource
    AutoEdit = False
    DataSet = QRY_163
    Left = 103
    Top = 168
  end
  object QRY_153: TOraQuery
    SQLInsert.Strings = (
      'INSERT INTO tagreq'
      
        '  (NIDTAGREQ, CDESCRIORG, CDESCRICRG, DDTADMISSA, NIDCADREQ, CID' +
        'TBXURQ, CPRINCIPAL)'
      'VALUES'
      
        '  (:NIDTAGREQ, :CDESCRIORG, :CDESCRICRG, :DDTADMISSA, :NIDCADREQ' +
        ', :CIDTBXURQ, :CPRINCIPAL)')
    SQLDelete.Strings = (
      'DELETE FROM tagreq'
      'WHERE'
      '  NIDTAGREQ = :NIDTAGREQ')
    SQLUpdate.Strings = (
      'UPDATE tagreq'
      'SET'
      '  NIDTAGREQ = :NIDTAGREQ,'
      '  CDESCRIORG = :CDESCRIORG,'
      '  CDESCRICRG = :CDESCRICRG,'
      '  DDTADMISSA = :DDTADMISSA,'
      '  NIDCADREQ = :NIDCADREQ,'
      '  CIDTBXURQ = :CIDTBXURQ,'
      '  CPRINCIPAL = :CPRINCIPAL'
      'WHERE'
      '  NIDTAGREQ = :OLD_NIDTAGREQ')
    SQLLock.Strings = (
      'SELECT * FROM tagreq'
      'WHERE'
      '  NIDTAGREQ = :NIDTAGREQ'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      'WHERE'
      '  NIDTAGREQ = :NIDTAGREQ')
    SQL.Strings = (
      'select  '
      '  tagreq.*'
      'from'
      '  tagreq'
      'where'
      '   nidcadreq = :nidcadreq'
      'order by'
      '  nidtagreq')
    MasterSource = DTS_153_2
    CachedUpdates = True
    Left = 188
    Top = 16
    ParamData = <
      item
        DataType = ftFloat
        Name = 'NIDCADREQ'
        ParamType = ptInput
        Value = 245
      end>
    object QRY_153NIDTAGREQ: TFloatField
      DefaultExpression = '0'
      FieldName = 'NIDTAGREQ'
      Required = True
    end
    object QRY_153CDESCRIORG: TStringField
      FieldName = 'CDESCRIORG'
      Size = 40
    end
    object QRY_153CDESCRICRG: TStringField
      FieldName = 'CDESCRICRG'
      Size = 40
    end
    object QRY_153DDTADMISSA: TDateTimeField
      FieldName = 'DDTADMISSA'
    end
    object QRY_153NIDCADREQ: TFloatField
      FieldName = 'NIDCADREQ'
      Required = True
    end
    object QRY_153CIDTBXURQ: TStringField
      FieldName = 'CIDTBXURQ'
    end
    object QRY_153CPRINCIPAL: TStringField
      FieldName = 'CPRINCIPAL'
      FixedChar = True
      Size = 1
    end
    object QRY_153LKP_CNOMEINTER: TStringField
      FieldKind = fkLookup
      FieldName = 'LKP_CNOME'
      LookupDataSet = QRY_161
      LookupKeyFields = 'CIDTBXURQ'
      LookupResultField = 'CNOME'
      KeyFields = 'CIDTBXURQ'
      Size = 80
      Lookup = True
    end
  end
  object DTS_153: TOraDataSource
    AutoEdit = False
    DataSet = QRY_153
    Left = 252
    Top = 16
  end
  object QRY_029: TOraQuery
    SQL.Strings = (
      'select'
      '  cadcrg.cdescricrg,'
      '  tbxorg.cdescriorg,'
      '  tagffu.ddtadmissa'
      'from'
      '  cadser,'
      '  tagffu,'
      '  cadcrg,'
      '  tagodp,'
      '  tbxorg,'
      '  tagmvf,'
      '  tbxsts,'
      '  tbxtpm'
      'where'
      '  cadser.nidcadgrl = :nidcadgrl and'
      '  tagffu.nidcadser = cadser.nidcadser and'
      '  cadcrg.nidcadcrg = tagffu.nidcadcrg and'
      '  tagodp.nidtagodp = tagffu.nidtagodp and'
      '  tbxorg.nidtbxorg = tagodp.nidtbxorg and'
      '  tagmvf.nidtagffu = tagffu.nidtagffu and'
      '  tagmvf.cmvfatual = '#39'S'#39' and'
      '  tbxtpm.nidtbxtpm = tagmvf.nidtbxtpm and'
      '  tbxsts.nidtbxsts =tbxtpm.nidtbxsts and'
      '  tbxsts.nidtbxsts = 17'
      'order by'
      '  tagffu.nidtagffu desc')
    Left = 188
    Top = 88
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'nidcadgrl'
      end>
  end
  object DTS_029: TOraDataSource
    AutoEdit = False
    DataSet = QRY_029
    Left = 256
    Top = 88
  end
  object QRY_153_2: TOraQuery
    SQLInsert.Strings = (
      'INSERT INTO cadreq'
      
        '  (NIDCADREQ, CDESCRIREQ, NNROPROT, DDTPROT, NIDTBXTRQ, CEMITIDO' +
        ', CEMIGTM, CEMIETQ, NQTDFOLHAS, CSITUAREQ, NIDTBXGTM, CIDTBXULC)'
      'VALUES'
      
        '  (:NIDCADREQ, :CDESCRIREQ, :NNROPROT, :DDTPROT, :NIDTBXTRQ, :CE' +
        'MITIDO, :CEMIGTM, :CEMIETQ, :NQTDFOLHAS, :CSITUAREQ, :NIDTBXGTM,' +
        ' :CIDTBXULC)')
    SQLDelete.Strings = (
      'DELETE FROM cadreq'
      'WHERE'
      '  NIDCADREQ = :NIDCADREQ')
    SQLUpdate.Strings = (
      'UPDATE cadreq'
      'SET'
      '  NIDCADREQ = :NIDCADREQ,'
      '  CDESCRIREQ = :CDESCRIREQ,'
      '  NNROPROT = :NNROPROT,'
      '  DDTPROT = :DDTPROT,'
      '  NIDTBXTRQ = :NIDTBXTRQ,'
      '  CEMITIDO = :CEMITIDO,'
      '  CEMIGTM = :CEMIGTM,'
      '  CEMIETQ = :CEMIETQ,'
      '  NQTDFOLHAS = :NQTDFOLHAS,'
      '  CSITUAREQ = :CSITUAREQ,'
      '  NIDTBXGTM = :NIDTBXGTM,'
      '  CIDTBXULC = :CIDTBXULC'
      'WHERE'
      '  NIDCADREQ = :OLD_NIDCADREQ')
    SQLLock.Strings = (
      'SELECT * FROM cadreq'
      'WHERE'
      '  NIDCADREQ = :NIDCADREQ'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      'WHERE'
      '  CADREQ.NIDCADREQ = :NIDCADREQ')
    SQL.Strings = (
      'select'
      '  cadreq.*,'
      '  tagreq.cdescriorg,'
      '  tagreq.cdescricrg,'
      '  tagreq.ddtadmissa '
      'from'
      '  cadreq,'
      '  tagitr,'
      '  tagreq  '
      'where'
      '  tagreq.cidtbxurq = :cidtbxurq and'
      '  tagreq.cprincipal = '#39'S'#39' and'
      '  tagitr.cidtbxurq = :dat_idinter and'
      '  tagitr.cprincipal = '#39'S'#39' and'
      '  cadreq.nidcadreq = tagitr.nidcadreq and'
      '  cadreq.nidcadreq = tagreq.nidcadreq'
      'order by'
      '  nnroprot')
    MasterSource = DTS_153_1
    AfterScroll = QRY_153_2AfterScroll
    Left = 32
    Top = 232
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cidtbxurq'
      end
      item
        DataType = ftString
        Name = 'DAT_IDINTER'
        ParamType = ptInput
        Value = '369'
      end>
    object QRY_153_2NIDCADREQ: TFloatField
      DefaultExpression = '0'
      FieldName = 'NIDCADREQ'
      Required = True
    end
    object QRY_153_2CDESCRIREQ: TStringField
      FieldName = 'CDESCRIREQ'
      Required = True
      Size = 2000
    end
    object QRY_153_2NNROPROT: TFloatField
      Alignment = taCenter
      DefaultExpression = '0'
      FieldName = 'NNROPROT'
      Required = True
    end
    object QRY_153_2DDTPROT: TDateTimeField
      Alignment = taCenter
      FieldName = 'DDTPROT'
      Required = True
      DisplayFormat = 'dd/mm/yyyy'
    end
    object QRY_153_2NIDTBXTRQ: TFloatField
      FieldName = 'NIDTBXTRQ'
      Required = True
    end
    object QRY_153_2CEMITIDO: TStringField
      DefaultExpression = 'N'
      FieldName = 'CEMITIDO'
      FixedChar = True
      Size = 1
    end
    object QRY_153_2CEMIGTM: TStringField
      DefaultExpression = 'N'
      FieldName = 'CEMIGTM'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QRY_153_2CEMIETQ: TStringField
      DefaultExpression = 'N'
      FieldName = 'CEMIETQ'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QRY_153_2NQTDFOLHAS: TFloatField
      FieldName = 'NQTDFOLHAS'
      Required = True
    end
    object QRY_153_2CSITUAREQ: TStringField
      DefaultExpression = 'EM PREPARACAO'
      FieldName = 'CSITUAREQ'
      Required = True
      Size = 13
    end
    object QRY_153_2CDESCRIORG: TStringField
      FieldName = 'CDESCRIORG'
      Size = 40
    end
    object QRY_153_2CDESCRICRG: TStringField
      FieldName = 'CDESCRICRG'
      Size = 40
    end
    object QRY_153_2DDTADMISSA: TDateTimeField
      FieldName = 'DDTADMISSA'
    end
    object QRY_153_2NIDTBXGTM: TFloatField
      FieldName = 'NIDTBXGTM'
    end
    object QRY_153_2CIDTBXULC: TStringField
      FieldName = 'CIDTBXULC'
    end
    object QRY_153_2LKP_TIPO: TStringField
      FieldKind = fkLookup
      FieldName = 'LKP_TIPO'
      LookupDataSet = QRY_155
      LookupKeyFields = 'NIDTBXTRQ'
      LookupResultField = 'CDESCRITRQ'
      KeyFields = 'NIDTBXTRQ'
      Size = 40
      Lookup = True
    end
    object QRY_153_2LKP_DESTINICIAL: TStringField
      FieldKind = fkLookup
      FieldName = 'LKP_DESTINICIAL'
      LookupDataSet = QRY_163
      LookupKeyFields = 'CIDTBXULC'
      LookupResultField = 'CDESCRIULC'
      KeyFields = 'CIDTBXULC'
      Size = 60
      Lookup = True
    end
    object QRY_153_2CDESCRITRQ: TStringField
      FieldKind = fkLookup
      FieldName = 'CDESCRITRQ'
      LookupDataSet = QRY_155
      LookupKeyFields = 'NIDTBXTRQ'
      LookupResultField = 'CDESCRITRQ'
      KeyFields = 'NIDTBXTRQ'
      Size = 60
      Lookup = True
    end
  end
  object DTS_153_2: TOraDataSource
    AutoEdit = False
    DataSet = QRY_153_2
    OnStateChange = DTS_153_2StateChange
    Left = 100
    Top = 232
  end
  object QRY_158: TOraQuery
    SQLInsert.Strings = (
      'INSERT INTO tagitr'
      '  (NIDTAGITR, NIDCADREQ, CIDTBXURQ, CPRINCIPAL)'
      'VALUES'
      '  (:NIDTAGITR, :NIDCADREQ, :CIDTBXURQ, :CPRINCIPAL)')
    SQLDelete.Strings = (
      'DELETE FROM tagitr'
      'WHERE'
      '  NIDTAGITR = :NIDTAGITR')
    SQLUpdate.Strings = (
      'UPDATE tagitr'
      'SET'
      '  NIDTAGITR = :NIDTAGITR,'
      '  NIDCADREQ = :NIDCADREQ,'
      '  CIDTBXURQ = :CIDTBXURQ,'
      '  CPRINCIPAL = :CPRINCIPAL'
      'WHERE'
      '  NIDTAGITR = :OLD_NIDTAGITR')
    SQLLock.Strings = (
      'SELECT * FROM tagitr'
      'WHERE'
      '  NIDTAGITR = :NIDTAGITR'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      'WHERE'
      '  NIDTAGITR = :NIDTAGITR')
    SQL.Strings = (
      'select'
      '  tagitr.*'
      'from'
      '  tagitr'
      'where'
      '  nidcadreq = :nidcadreq'
      'order by'
      '  nidtagitr ')
    MasterSource = DTS_153_2
    CachedUpdates = True
    Left = 188
    Top = 168
    ParamData = <
      item
        DataType = ftFloat
        Name = 'NIDCADREQ'
        ParamType = ptInput
        Value = 245
      end>
    object QRY_158NIDTAGITR: TFloatField
      DefaultExpression = '0'
      FieldName = 'NIDTAGITR'
      Required = True
    end
    object QRY_158NIDCADREQ: TFloatField
      FieldName = 'NIDCADREQ'
    end
    object QRY_158CIDTBXURQ: TStringField
      FieldName = 'CIDTBXURQ'
    end
    object QRY_158CPRINCIPAL: TStringField
      FieldName = 'CPRINCIPAL'
      FixedChar = True
      Size = 1
    end
    object QRY_158LKP_CNOMEINTER: TStringField
      FieldKind = fkLookup
      FieldName = 'LKP_CNOME'
      LookupDataSet = QRY_161
      LookupKeyFields = 'CIDTBXURQ'
      LookupResultField = 'CNOME'
      KeyFields = 'CIDTBXURQ'
      Size = 80
      Lookup = True
    end
  end
  object DTS_158: TOraDataSource
    AutoEdit = False
    DataSet = QRY_158
    Left = 256
    Top = 168
  end
  object DTS_153_1: TOraDataSource
    AutoEdit = False
    DataSet = QRY_153_1
    Left = 100
    Top = 20
  end
  object QRY_161_1: TOraQuery
    SQL.Strings = (
      'select'
      '  *'
      'from'
      '  tbxurq'
      'where'
      '  cidtbxurq = :cidtbxurq')
    Left = 352
    Top = 20
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cidtbxurq'
      end>
  end
  object QRY_161: TOraQuery
    SQL.Strings = (
      'select'
      '  *'
      'from'
      '  tbxurq')
    Left = 188
    Top = 232
  end
end
