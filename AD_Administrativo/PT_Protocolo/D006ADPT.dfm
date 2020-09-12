object DTM_A006ADPT: TDTM_A006ADPT
  OldCreateOrder = False
  Left = 133
  Top = 125
  Height = 382
  Width = 609
  object QRY_LOCAIS: TOraQuery
    SQL.Strings = (
      'select'
      '  *'
      'from'
      '  tbxulc  '
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
    Left = 40
    Top = 124
  end
  object QRY_LOCAIS_1: TOraQuery
    SQL.Strings = (
      'select'
      '  *'
      'from'
      '  tbxulc  '
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
    Left = 44
    Top = 200
  end
  object DTS_LOCAIS: TOraDataSource
    AutoEdit = False
    DataSet = QRY_LOCAIS
    Left = 120
    Top = 124
  end
  object DTS_LOCAIS_1: TOraDataSource
    AutoEdit = False
    DataSet = QRY_LOCAIS_1
    Left = 128
    Top = 200
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
      '  tbxgtm.*'
      'from'
      '  tbxgtm,'
      '  tbxulc,'
      '  tbxulc tbxulc1'
      'where'
      '  tbxulc.cidtbxulc = tbxgtm.cidtbxulc and'
      '  tbxulc1.cidtbxulc = tbxgtm.ciddestino'
      'order by'
      '  tbxgtm.cnroguia')
    AfterScroll = QRY_154AfterScroll
    Left = 40
    Top = 24
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
      Required = True
    end
    object QRY_154CNROGUIA: TStringField
      FieldName = 'CNROGUIA'
      EditMask = 'A99999999999999999;0;_'
    end
    object QRY_154CRECEBIDO: TStringField
      DefaultExpression = 'S'
      FieldName = 'CRECEBIDO'
      FixedChar = True
      Size = 1
    end
    object QRY_154CIDTBXULC: TStringField
      FieldName = 'CIDTBXULC'
      Size = 41
    end
  end
  object DTS_154: TOraDataSource
    AutoEdit = False
    DataSet = QRY_154
    OnDataChange = DTS_154DataChange
    Left = 120
    Top = 28
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
      '  taggtm.*,'
      '  tbxtrq.cdescritrq,'
      '  cadreq.nnroprot'
      'from'
      '  taggtm,'
      '  cadreq,'
      '  tbxtrq '
      'where'
      '  taggtm.nidtbxgtm = :nidtbxgtm and'
      '  cadreq.nidcadreq = taggtm.nidcadreq and'
      '  tbxtrq.nidtbxtrq = cadreq.nidtbxtrq'
      '  ')
    MasterSource = DTS_154
    CachedUpdates = True
    BeforePost = QRY_152BeforePost
    BeforeDelete = QRY_152BeforeDelete
    AfterScroll = QRY_152AfterScroll
    AfterRefresh = QRY_152AfterRefresh
    Left = 216
    Top = 24
    ParamData = <
      item
        DataType = ftFloat
        Name = 'NIDTBXGTM'
        ParamType = ptInput
        Value = 1
      end>
    object QRY_152NIDTAGGTM: TFloatField
      DefaultExpression = '0'
      FieldName = 'NIDTAGGTM'
      Required = True
    end
    object QRY_152NQTDFOLHAS: TFloatField
      DefaultExpression = '0'
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
    object QRY_152CDESCRITRQ: TStringField
      FieldName = 'CDESCRITRQ'
      Required = True
      Size = 40
    end
    object QRY_152NNROPROT: TFloatField
      FieldName = 'NNROPROT'
      Required = True
      OnSetText = QRY_152NNROPROTSetText
      OnValidate = QRY_152NNROPROTValidate
    end
  end
  object DTS_152: TOraDataSource
    AutoEdit = False
    DataSet = QRY_152
    Left = 284
    Top = 24
  end
  object QRY_CONSUL: TOraQuery
    SQL.Strings = (
      'select'
      '  tbxtrq.cdescritrq,'
      '  cadreq.nidcadreq,'
      '  cadreq.csituareq,'
      '  cadreq.ddtprot,'
      '  cadreq.nqtdfolhas,'
      '  cadreq.cemigtm  '
      'from'
      '  cadreq,'
      '  tbxtrq  '
      'where'
      '  cadreq.nnroprot = :nnroprot and  '
      '  tbxtrq.nidtbxtrq = cadreq.nidtbxtrq'
      '')
    Left = 224
    Top = 196
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'nnroprot'
      end>
  end
  object QRY_UPTREQ: TOraQuery
    SQL.Strings = (
      'select * from tbl_p')
    Left = 224
    Top = 124
  end
  object QRY_CONSULGTREB: TOraQuery
    SQL.Strings = (
      'select'
      '  tbxgtm.crecebido'
      'from'
      '  tbxgtm'
      'where'
      '  cnroguia = :cnroguia')
    Left = 228
    Top = 252
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cnroguia'
      end>
  end
end
