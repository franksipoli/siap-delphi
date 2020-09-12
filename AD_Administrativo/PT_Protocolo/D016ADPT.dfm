object DTM_A016ADPT: TDTM_A016ADPT
  OldCreateOrder = False
  Left = 192
  Top = 107
  Height = 480
  Width = 696
  object QRY_LOCAIS: TOraQuery
    SQL.Strings = (
      'select'
      '  *'
      'from'
      '  tbxulc'
      'where'
      '  cidtbxulc = :cidtbxulc')
    Left = 36
    Top = 28
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cidtbxulc'
      end>
    object QRY_LOCAISCIDTBXULC: TStringField
      FieldName = 'CIDTBXULC'
      Required = True
      Size = 41
    end
    object QRY_LOCAISCDESCRIULC: TStringField
      FieldName = 'CDESCRIULC'
      Size = 50
    end
    object QRY_LOCAISCTIPO: TStringField
      FieldName = 'CTIPO'
      Size = 12
    end
    object QRY_LOCAISNIDTBXORG: TFloatField
      FieldName = 'NIDTBXORG'
    end
    object QRY_LOCAISNIDTBXDPT: TFloatField
      FieldName = 'NIDTBXDPT'
    end
    object QRY_LOCAISNIDTBXSET: TFloatField
      FieldName = 'NIDTBXSET'
    end
  end
  object DTS_LOCAIS: TOraDataSource
    DataSet = QRY_LOCAIS
    Left = 128
    Top = 32
  end
  object QRY_154: TOraQuery
    SQLInsert.Strings = (
      'INSERT INTO tbxgtm'
      
        '  (NIDTBXGTM, CIDORIGEM, DDTORIGEM, CIDDESTINO, DDTDESTINO, CNRO' +
        'GUIA, CRECEBIDO)'
      'VALUES'
      
        '  (:NIDTBXGTM, :CIDORIGEM, :DDTORIGEM, :CIDDESTINO, :DDTDESTINO,' +
        ' :CNROGUIA, :CRECEBIDO)')
    SQLDelete.Strings = (
      'DELETE FROM tbxgtm'
      'WHERE'
      '  NIDTBXGTM = :NIDTBXGTM')
    SQLUpdate.Strings = (
      'UPDATE tbxgtm'
      'SET'
      '  NIDTBXGTM = :NIDTBXGTM,'
      '  CIDORIGEM = :CIDORIGEM,'
      '  DDTORIGEM = :DDTORIGEM,'
      '  CIDDESTINO = :CIDDESTINO,'
      '  DDTDESTINO = :DDTDESTINO,'
      '  CNROGUIA = :CNROGUIA,'
      '  CRECEBIDO = :CRECEBIDO'
      'WHERE'
      '  NIDTBXGTM = :OLD_NIDTBXGTM')
    SQLLock.Strings = (
      'SELECT * FROM tbxgtm'
      'WHERE'
      '  NIDTBXGTM = :NIDTBXGTM'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      'WHERE'
      '  NIDTBXGTM = :NIDTBXGTM')
    SQL.Strings = (
      'select'
      '  tbxgtm.nidtbxgtm,'
      '  tbxgtm.cnroguia,'
      '  InitCap(tbxulc.cdescriulc) as dat_lugar,'
      '  '#39'N'#39' as dat_insert'
      'from'
      '  tbxgtm,'
      '  tbxulc'
      'where'
      '  tbxgtm.ciddestino = :ciddestino and'
      '  crecebido = '#39'N'#39' and'
      '  tbxulc.cidtbxulc = tbxgtm.cidtbxulc'
      'order by'
      '  tbxgtm.ddtdestino desc')
    CachedUpdates = True
    AfterExecute = QRY_154AfterExecute
    AfterOpen = QRY_154AfterOpen
    AfterScroll = QRY_154AfterScroll
    Left = 36
    Top = 88
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ciddestino'
      end>
    object QRY_154CNROGUIA: TStringField
      FieldName = 'CNROGUIA'
    end
    object QRY_154DAT_LUGAR: TStringField
      FieldName = 'DAT_LUGAR'
      Size = 50
    end
    object QRY_154NIDTBXGTM: TFloatField
      DefaultExpression = '0'
      FieldName = 'NIDTBXGTM'
      Required = True
    end
    object QRY_154DAT_INSERT: TStringField
      FieldName = 'DAT_INSERT'
      ProviderFlags = []
      FixedChar = True
      Size = 1
    end
  end
  object DTS_154: TOraDataSource
    DataSet = QRY_154
    Left = 128
    Top = 88
  end
  object QRY_154_1: TOraQuery
    SQLInsert.Strings = (
      'INSERT INTO tbxgtm'
      
        '  (NIDTBXGTM, CIDORIGEM, DDTORIGEM, CIDDESTINO, DDTDESTINO, CNRO' +
        'GUIA, CRECEBIDO)'
      'VALUES'
      
        '  (:NIDTBXGTM, :CIDORIGEM, :DDTORIGEM, :CIDDESTINO, :DDTDESTINO,' +
        ' :CNROGUIA, :CRECEBIDO)')
    SQLDelete.Strings = (
      'DELETE FROM tbxgtm'
      'WHERE'
      '  NIDTBXGTM = :NIDTBXGTM')
    SQLUpdate.Strings = (
      'UPDATE tbxgtm'
      'SET'
      '  NIDTBXGTM = :NIDTBXGTM,'
      '  CIDORIGEM = :CIDORIGEM,'
      '  DDTORIGEM = :DDTORIGEM,'
      '  CIDDESTINO = :CIDDESTINO,'
      '  DDTDESTINO = :DDTDESTINO,'
      '  CNROGUIA = :CNROGUIA,'
      '  CRECEBIDO = :CRECEBIDO'
      'WHERE'
      '  NIDTBXGTM = :OLD_NIDTBXGTM')
    SQLLock.Strings = (
      'SELECT * FROM tbxgtm'
      'WHERE'
      '  NIDTBXGTM = :NIDTBXGTM'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      'WHERE'
      '  NIDTBXGTM = :NIDTBXGTM')
    SQL.Strings = (
      'select'
      '  tbxgtm.nidtbxgtm,'
      '  tbxgtm.cnroguia,'
      '  InitCap(tbxulc.cdescriulc) as dat_lugar  ,'
      '  '#39'N'#39' as dat_insert'
      'from'
      '  tbxgtm,'
      '  tbxulc'
      'where'
      '  tbxgtm.ciddestino = :ciddestino and'
      '  crecebido = '#39'S'#39' and'
      '  tbxgtm.cnroguia is not null and'
      '  tbxulc.cidtbxulc = tbxgtm.cidtbxulc'
      'order by'
      '  tbxgtm.ddtdestino desc'
      '  ')
    CachedUpdates = True
    AfterExecute = QRY_154_1AfterExecute
    AfterOpen = QRY_154_1AfterOpen
    AfterScroll = QRY_154_1AfterScroll
    Left = 36
    Top = 148
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ciddestino'
      end>
    object QRY_154_1CNROGUIA: TStringField
      FieldName = 'CNROGUIA'
    end
    object QRY_154_1DAT_LUGAR: TStringField
      FieldName = 'DAT_LUGAR'
      Size = 50
    end
    object QRY_154_1NIDTBXGTM: TFloatField
      DefaultExpression = '0'
      FieldName = 'NIDTBXGTM'
      Required = True
    end
    object QRY_154_1DAT_INSERT: TStringField
      FieldName = 'DAT_INSERT'
      ProviderFlags = []
      FixedChar = True
      Size = 1
    end
  end
  object DTS_154_1: TOraDataSource
    DataSet = QRY_154_1
    Left = 128
    Top = 148
  end
end
