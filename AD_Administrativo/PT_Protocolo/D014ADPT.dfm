object DTM_A014ADPT: TDTM_A014ADPT
  OldCreateOrder = False
  Left = 192
  Top = 107
  Height = 480
  Width = 696
  object QRY_ORIGENS: TOraQuery
    SQL.Strings = (
      'select'
      '  *'
      'from'
      '  tbxulc'
      'where'
      '  cidtbxulc not in '
      '  (select'
      '    cidtbxulc'
      '   from'
      '    tbxulc'
      '   where'
      '     ctipo = '#39'DEPARTAMENTO'#39' and'
      '     cdescriulc like '#39'GABINETE%'#39')'
      'order by'
      '  cdescriulc')
    Left = 41
    Top = 24
  end
  object DTS_ORIGENS: TOraDataSource
    DataSet = QRY_ORIGENS
    Left = 137
    Top = 24
  end
  object QRY_DESTINOS: TOraQuery
    SQL.Strings = (
      'select'
      '  distinct'
      '  tbxulc.cidtbxulc,'
      '  tbxulc.cdescriulc'
      'from'
      '  cadreq,'
      '  tbxulc'
      'where'
      '  cadreq.cemigtm = '#39'N'#39' and'
      '  tbxulc.cidtbxulc = cadreq.cidtbxulc'
      'order by'
      '  tbxulc.cdescriulc  ')
    Left = 37
    Top = 92
  end
  object DST_DESTINOS: TOraDataSource
    DataSet = QRY_DESTINOS
    Left = 141
    Top = 92
  end
  object QRY_151: TOraQuery
    SQLInsert.Strings = (
      'INSERT INTO cadreq'
      '  (CEMIGTM, CSITUAREQ)'
      'VALUES'
      '  (:CEMIGTM, :CSITUAREQ)')
    SQLDelete.Strings = (
      'DELETE FROM cadreq'
      'WHERE'
      '  NIDCADREQ = :NIDCADREQ')
    SQLUpdate.Strings = (
      'UPDATE cadreq'
      'SET'
      '  CEMIGTM = :CEMIGTM,'
      '  CSITUAREQ = :CSITUAREQ'
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
      '  cadreq.nidcadreq,'
      '  cadreq.nnroprot, '
      '  cadreq.nidtbxtrq,'
      '  cadreq.cidtbxulc,'
      '  cadreq.cemigtm,'
      '  cadreq.nqtdfolhas,'
      '  cadreq.csituareq,'
      '  tbxtrq.cdescritrq,'
      '  '#39'N'#39' as dat_imprimir'
      'from'
      '  cadreq,'
      '  tbxtrq'
      'where'
      '  cadreq.cidtbxulc = :cidtbxulc and'
      '  cadreq.cemigtm = '#39'N'#39' and'
      '  tbxtrq.nidtbxtrq = cadreq.nidtbxtrq'
      'order by'
      '  cadreq.nnroprot'
      '  '
      '')
    CachedUpdates = True
    AfterOpen = QRY_151AfterOpen
    AfterClose = QRY_151AfterClose
    BeforeInsert = QRY_151BeforeInsert
    BeforeDelete = QRY_151BeforeDelete
    AfterScroll = QRY_151AfterScroll
    Left = 40
    Top = 172
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cidtbxulc'
      end>
    object QRY_151NNROPROT: TFloatField
      FieldName = 'NNROPROT'
      Required = True
      DisplayFormat = '000000/00'
    end
    object QRY_151CDESCRITRQ: TStringField
      FieldName = 'CDESCRITRQ'
      Required = True
      Size = 40
    end
    object QRY_151DAT_IMPRIMIR: TStringField
      FieldName = 'DAT_IMPRIMIR'
      ProviderFlags = []
      FixedChar = True
      Size = 1
    end
    object QRY_151NIDCADREQ: TFloatField
      FieldName = 'NIDCADREQ'
      Required = True
    end
    object QRY_151NIDTBXTRQ: TFloatField
      FieldName = 'NIDTBXTRQ'
      Required = True
    end
    object QRY_151CEMIGTM: TStringField
      FieldName = 'CEMIGTM'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QRY_151NQTDFOLHAS: TFloatField
      FieldName = 'NQTDFOLHAS'
      Required = True
    end
    object QRY_151DAT_LUGAR: TStringField
      FieldKind = fkLookup
      FieldName = 'DAT_LUGAR'
      LookupDataSet = QRY_LOCAIS
      LookupKeyFields = 'CIDTBXULC'
      LookupResultField = 'CDESCRIULC'
      KeyFields = 'CIDTBXULC'
      Size = 60
      Lookup = True
    end
    object QRY_151CSITUAREQ: TStringField
      FieldName = 'CSITUAREQ'
      Required = True
      Size = 13
    end
    object QRY_151CIDTBXULC: TStringField
      FieldName = 'CIDTBXULC'
    end
  end
  object DTS_151: TOraDataSource
    DataSet = QRY_151
    Left = 116
    Top = 172
  end
  object VTB_PROTOCOLO: TVirtualTable
    Options = [voPersistentData, voStored]
    Active = True
    FieldDefs = <
      item
        Name = 'NIDCADREQ'
        DataType = ftFloat
      end
      item
        Name = 'CDESCRIREQ'
        DataType = ftString
        Size = 2000
      end
      item
        Name = 'NNROPROT'
        DataType = ftFloat
      end
      item
        Name = 'DDTPROT'
        DataType = ftDateTime
      end
      item
        Name = 'CIDTBXULC'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'NIDTBXTRQ'
        DataType = ftFloat
      end
      item
        Name = 'CEMITIDO'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'CEMIGTM'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'CEMIETQ'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'CDESCRITRQ'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'DAT_LUGAR'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'DAT_IMPRIMIR'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'NQTDFOLHAS'
        DataType = ftFloat
      end
      item
        Name = 'GRUPO'
        DataType = ftString
        Size = 80
      end>
    Left = 273
    Top = 48
    Data = {
      01000E0009004E4944434144524551060000000A004344455343524952455101
      00D00708004E4E524F50524F5406000000070044445450524F540B0000000900
      434944544258554C4301000A0009004E49445442585452510600000008004345
      4D495449444F01000100070043454D4947544D01000100070043454D49455451
      010001000A00434445534352495452510100280009004441545F4C5547415201
      0032000C004441545F494D5052494D4952010001000A004E515444464F4C4841
      53060000000500475255504F01005000000000000000}
    object VTB_PROTOCOLONIDCADREQ: TFloatField
      FieldName = 'NIDCADREQ'
      Required = True
    end
    object VTB_PROTOCOLOCDESCRIREQ: TStringField
      FieldName = 'CDESCRIREQ'
      Size = 2000
    end
    object VTB_PROTOCOLONNROPROT: TFloatField
      FieldName = 'NNROPROT'
      Required = True
    end
    object VTB_PROTOCOLODDTPROT: TDateTimeField
      FieldName = 'DDTPROT'
    end
    object VTB_PROTOCOLONIDTBXTRQ: TFloatField
      FieldName = 'NIDTBXTRQ'
      Required = True
    end
    object VTB_PROTOCOLOCEMITIDO: TStringField
      FieldName = 'CEMITIDO'
      Size = 1
    end
    object VTB_PROTOCOLOCEMIGTM: TStringField
      FieldName = 'CEMIGTM'
      Required = True
      Size = 1
    end
    object VTB_PROTOCOLOCEMIETQ: TStringField
      FieldName = 'CEMIETQ'
      Size = 1
    end
    object VTB_PROTOCOLOCDESCRITRQ: TStringField
      FieldName = 'CDESCRITRQ'
      Required = True
      Size = 40
    end
    object VTB_PROTOCOLODAT_LUGAR: TStringField
      FieldName = 'DAT_LUGAR'
      Size = 50
    end
    object VTB_PROTOCOLODAT_CIMPRIMIR: TStringField
      FieldName = 'DAT_IMPRIMIR'
      Size = 1
    end
    object VTB_PROTOCOLONQTDFOLHAS: TFloatField
      FieldName = 'NQTDFOLHAS'
      Required = True
    end
    object VTB_PROTOCOLOGRUPO: TStringField
      FieldName = 'GRUPO'
      Size = 80
    end
    object VTB_PROTOCOLOCIDTBXULC: TStringField
      FieldName = 'CIDTBXULC'
      Size = 10
    end
  end
  object DTS_PROTOCOLO: TOraDataSource
    DataSet = VTB_PROTOCOLO
    Left = 380
    Top = 44
  end
  object VTB_DESTINO: TVirtualTable
    Options = [voPersistentData, voStored]
    Active = True
    FieldDefs = <
      item
        Name = 'DAT_LUGAR'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'GRUPO'
        DataType = ftString
        Size = 80
      end
      item
        Name = 'CNROGUIA'
        DataType = ftString
        Size = 20
      end>
    Left = 276
    Top = 104
    Data = {
      0100030009004441545F4C55474152010032000500475255504F010050000800
      434E524F4755494101001400000000000000}
    object VTB_DESTINODAT_LUGAR: TStringField
      FieldName = 'DAT_LUGAR'
      Size = 50
    end
    object VTB_DESTINOGRUPO: TStringField
      FieldName = 'GRUPO'
      Size = 80
    end
    object VTB_DESTINOCNROGUIA: TStringField
      FieldName = 'CNROGUIA'
    end
  end
  object DTS_DESTINO: TOraDataSource
    DataSet = VTB_DESTINO
    Left = 376
    Top = 104
  end
  object QRY_LOCAIS: TOraQuery
    SQL.Strings = (
      'select'
      '  *'
      'from'
      '  tbxulc')
    Left = 36
    Top = 232
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
  object QRY_154: TOraQuery
    SQLInsert.Strings = (
      'INSERT INTO tbxgtm'
      
        '  (NIDTBXGTM, DDTORIGEM, CIDDESTINO, DDTDESTINO, CNROGUIA, CRECE' +
        'BIDO, CIDTBXULC)'
      'VALUES'
      
        '  (:NIDTBXGTM, :DDTORIGEM, :CIDDESTINO, :DDTDESTINO, :CNROGUIA, ' +
        ':CRECEBIDO, :CIDTBXULC)')
    SQLDelete.Strings = (
      'DELETE FROM tbxgtm'
      'WHERE'
      '  NIDTBXGTM = :NIDTBXGTM')
    SQLUpdate.Strings = (
      'UPDATE tbxgtm'
      'SET'
      '  NIDTBXGTM = :NIDTBXGTM,'
      '  DDTORIGEM = :DDTORIGEM,'
      '  CIDDESTINO = :CIDDESTINO,'
      '  DDTDESTINO = :DDTDESTINO,'
      '  CNROGUIA = :CNROGUIA,'
      '  CRECEBIDO = :CRECEBIDO,'
      '  CIDTBXULC = :CIDTBXULC'
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
      '  *'
      'from'
      '  tbxgtm')
    Left = 280
    Top = 164
    object QRY_154NIDTBXGTM: TFloatField
      DefaultExpression = '0'
      FieldName = 'NIDTBXGTM'
      Required = True
    end
    object QRY_154DDTORIGEM: TDateTimeField
      FieldName = 'DDTORIGEM'
      Required = True
    end
    object QRY_154CIDDESTINO: TStringField
      FieldName = 'CIDDESTINO'
      Required = True
      Size = 10
    end
    object QRY_154DDTDESTINO: TDateTimeField
      FieldName = 'DDTDESTINO'
    end
    object QRY_154CNROGUIA: TStringField
      FieldName = 'CNROGUIA'
    end
    object QRY_154CRECEBIDO: TStringField
      DefaultExpression = 'N'
      FieldName = 'CRECEBIDO'
      FixedChar = True
      Size = 1
    end
    object QRY_154CIDTBXULC: TStringField
      FieldName = 'CIDTBXULC'
      Size = 41
    end
  end
  object QRY_152: TOraQuery
    SQLInsert.Strings = (
      'INSERT INTO taggtm'
      '  (NIDTAGGTM, NQTDFOLHAS, NIDCADREQ, NIDTBXGTM)'
      'VALUES'
      '  (:NIDTAGGTM, :NQTDFOLHAS, :NIDCADREQ, :NIDTBXGTM)')
    SQLDelete.Strings = (
      'DELETE FROM taggtm'
      'WHERE'
      '  NIDTAGGTM = :NIDTAGGTM')
    SQLUpdate.Strings = (
      'UPDATE taggtm'
      'SET'
      '  NIDTAGGTM = :NIDTAGGTM,'
      '  NQTDFOLHAS = :NQTDFOLHAS,'
      '  NIDCADREQ = :NIDCADREQ,'
      '  NIDTBXGTM = :NIDTBXGTM'
      'WHERE'
      '  NIDTAGGTM = :OLD_NIDTAGGTM')
    SQLLock.Strings = (
      'SELECT * FROM taggtm'
      'WHERE'
      '  NIDTAGGTM = :NIDTAGGTM'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      'WHERE'
      '  NIDTAGGTM = :NIDTAGGTM')
    SQL.Strings = (
      'select'
      '  *'
      'from'
      '  taggtm'
      'where'
      '  nidtbxgtm = :nidtbxgtm')
    MasterSource = DTS_154
    Left = 284
    Top = 228
    ParamData = <
      item
        DataType = ftFloat
        Name = 'NIDTBXGTM'
        ParamType = ptInput
        Value = 37
      end>
    object QRY_152NIDTAGGTM: TFloatField
      DefaultExpression = '0'
      FieldName = 'NIDTAGGTM'
      Required = True
    end
    object QRY_152NQTDFOLHAS: TFloatField
      FieldName = 'NQTDFOLHAS'
      Required = True
    end
    object QRY_152NIDCADREQ: TFloatField
      FieldName = 'NIDCADREQ'
      Required = True
    end
    object QRY_152NIDTBXGTM: TFloatField
      FieldName = 'NIDTBXGTM'
      Required = True
    end
  end
  object DTS_154: TOraDataSource
    DataSet = QRY_154
    Left = 360
    Top = 164
  end
  object DTS_152: TOraDataSource
    DataSet = QRY_152
    Left = 360
    Top = 228
  end
end
