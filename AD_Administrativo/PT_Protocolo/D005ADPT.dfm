object DTM_A005ADPT: TDTM_A005ADPT
  OldCreateOrder = False
  Left = 65506
  Top = 93
  Height = 479
  Width = 741
  object QRY_151: TOraQuery
    SQLInsert.Strings = (
      'INSERT INTO cadreq'
      
        '  (NIDCADREQ, CDESCRIREQ, NNROPROT, DDTPROT, CIDDESTINO, NIDTBXT' +
        'RQ, CEMITIDO, CEMIGTM, CEMIETQ)'
      'VALUES'
      
        '  (:NIDCADREQ, :CDESCRIREQ, :NNROPROT, :DDTPROT, :CIDDESTINO, :N' +
        'IDTBXTRQ, :CEMITIDO, :CEMIGTM, :CEMIETQ)')
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
      '  CIDDESTINO = :CIDDESTINO,'
      '  NIDTBXTRQ = :NIDTBXTRQ,'
      '  CEMITIDO = :CEMITIDO,'
      '  CEMIGTM = :CEMIGTM,'
      '  CEMIETQ = :CEMIETQ'
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
      '  locais.lugar as dat_lugar,  '
      '  tbxtrq.cdescritrq,'
      '  '#39'N'#39' as dat_cimprimir'
      'from'
      '  cadreq,'
      '  locais,'
      '  tbxtrq'
      'where'
      '  locais.id  = :ciddestino and'
      '  cadreq.cemigtm = '#39'N'#39' and'
      '  locais.id = cadreq.ciddestino and'
      '  tbxtrq.nidtbxtrq = cadreq.nidtbxtrq'
      '')
    CachedUpdates = True
    AfterOpen = QRY_151AfterOpen
    AfterClose = QRY_151AfterClose
    AfterScroll = QRY_151AfterScroll
    Left = 32
    Top = 20
    ParamData = <
      item
        DataType = ftString
        Name = 'CIDDESTINO'
        ParamType = ptInput
        Value = '37O'
      end>
    object QRY_151NIDCADREQ: TFloatField
      FieldName = 'NIDCADREQ'
      Required = True
    end
    object QRY_151CDESCRIREQ: TStringField
      FieldName = 'CDESCRIREQ'
      Required = True
      Size = 2000
    end
    object QRY_151NNROPROT: TFloatField
      FieldName = 'NNROPROT'
      Required = True
    end
    object QRY_151DDTPROT: TDateTimeField
      FieldName = 'DDTPROT'
      Required = True
    end
    object QRY_151CIDDESTINO: TStringField
      FieldName = 'CIDDESTINO'
      Required = True
      Size = 10
    end
    object QRY_151NIDTBXTRQ: TFloatField
      FieldName = 'NIDTBXTRQ'
      Required = True
    end
    object QRY_151CEMITIDO: TStringField
      FieldName = 'CEMITIDO'
      FixedChar = True
      Size = 1
    end
    object QRY_151CEMIGTM: TStringField
      FieldName = 'CEMIGTM'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QRY_151CEMIETQ: TStringField
      FieldName = 'CEMIETQ'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QRY_151CDESCRITRQ: TStringField
      FieldName = 'CDESCRITRQ'
      Required = True
      Size = 40
    end
    object QRY_151DAT_LUGAR: TStringField
      FieldName = 'DAT_LUGAR'
      ProviderFlags = []
      Size = 50
    end
    object QRY_151DAT_CIMPRIMIR: TStringField
      Alignment = taCenter
      FieldName = 'DAT_CIMPRIMIR'
      ProviderFlags = []
      FixedChar = True
      Size = 1
    end
    object QRY_151NQTDFOLHAS: TFloatField
      FieldName = 'NQTDFOLHAS'
      Required = True
    end
  end
  object QRY_016: TOraQuery
    SQL.Strings = (
      'select'
      '  cnomegrl,'
      '  ccpfcnpj,'
      '  nidcadgrl'
      'from'
      '  cadgrl'
      'where'
      '  ccpfcnpj = :ccpfcnpj')
    Left = 32
    Top = 216
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ccpfcnpj'
        Value = Null
      end>
  end
  object QRY_LOCAIS: TOraQuery
    SQL.Strings = (
      'select '#39'0'#39' as id, '#39' TODOS'#39' as lugar from dual'
      'union'
      'select id, lugar from locais'
      'where ID like '#39'%O%'#39
      'order by lugar')
    Left = 32
    Top = 84
  end
  object DTS_LOCAIS: TOraDataSource
    AutoEdit = False
    DataSet = QRY_LOCAIS
    Left = 132
    Top = 84
  end
  object DTS_151: TOraDataSource
    AutoEdit = False
    DataSet = QRY_151
    Left = 132
    Top = 20
  end
  object QRY_153: TOraQuery
    SQL.Strings = (
      'select'
      '  distinct cadreq.ciddestino as ciddestino,'
      '  locais.lugar as dat_lugar'
      'from'
      '  cadreq,'
      '  locais'
      'where'
      '  locais.id = cadreq.ciddestino and'
      '  cadreq.cemigtm = '#39'N'#39
      'order by'
      '  locais.lugar'
      ''
      '')
    Left = 32
    Top = 156
    object QRY_153CIDDESTINO: TStringField
      FieldName = 'CIDDESTINO'
      Required = True
      Size = 10
    end
    object QRY_153DAT_LUGAR: TStringField
      FieldName = 'DAT_LUGAR'
      Size = 50
    end
  end
  object DTS_153: TOraDataSource
    AutoEdit = False
    DataSet = QRY_153
    Left = 132
    Top = 156
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
        Name = 'CIDDESTINO'
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
        Name = 'DAT_CIMPRIMIR'
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
    Left = 129
    Top = 216
    Data = {
      01000E0009004E4944434144524551060000000A004344455343524952455101
      00D00708004E4E524F50524F5406000000070044445450524F540B0000000A00
      43494444455354494E4F01000A0009004E494454425854525106000000080043
      454D495449444F01000100070043454D4947544D01000100070043454D494554
      51010001000A00434445534352495452510100280009004441545F4C55474152
      010032000D004441545F43494D5052494D4952010001000A004E515444464F4C
      484153060000000500475255504F01005000000000000000}
    object VTB_PROTOCOLONIDCADREQ: TFloatField
      FieldName = 'NIDCADREQ'
      Required = True
    end
    object VTB_PROTOCOLOCDESCRIREQ: TStringField
      FieldName = 'CDESCRIREQ'
      Required = True
      Size = 2000
    end
    object VTB_PROTOCOLONNROPROT: TFloatField
      FieldName = 'NNROPROT'
      Required = True
    end
    object VTB_PROTOCOLODDTPROT: TDateTimeField
      FieldName = 'DDTPROT'
      Required = True
    end
    object VTB_PROTOCOLOCIDDESTINO: TStringField
      FieldName = 'CIDDESTINO'
      Required = True
      Size = 10
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
      Required = True
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
      FieldName = 'DAT_CIMPRIMIR'
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
  end
  object DTS_PROTOCOLO: TOraDataSource
    DataSet = VTB_PROTOCOLO
    Left = 232
    Top = 216
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
      end>
    Left = 128
    Top = 276
    Data = {
      0100020009004441545F4C55474152010032000500475255504F010050000000
      00000000}
    object VTB_DESTINODAT_LUGAR: TStringField
      FieldName = 'DAT_LUGAR'
      Size = 50
    end
    object VTB_DESTINOGRUPO: TStringField
      FieldName = 'GRUPO'
      Size = 80
    end
  end
  object DTS_DESTINO: TOraDataSource
    DataSet = VTB_DESTINO
    Left = 228
    Top = 276
  end
end
