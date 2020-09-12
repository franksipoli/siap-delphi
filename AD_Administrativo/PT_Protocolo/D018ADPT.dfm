object DTM_A018ADPT: TDTM_A018ADPT
  OldCreateOrder = False
  Left = 192
  Top = 107
  Height = 480
  Width = 696
  object QRY_151: TOraQuery
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
      '  NIDCADREQ = :NIDCADREQ')
    SQL.Strings = (
      'select  '
      '  cadreq.nidcadreq,'
      '  cadreq.nnroprot,'
      '  InitCap(tbxtrq.cdescritrq) as cdescritrq,'
      '  '#39'N'#39' as dat_insert,'
      '  cadreq.csituareq'
      'from'
      '  cadreq,'
      '  tbxgtm,'
      '  tbxtrq'
      'where  '
      '  tbxgtm.ciddestino = :ciddestino and'
      '  cadreq.nidtbxgtm = tbxgtm.nidtbxgtm and'
      '  cadreq.csituareq = '#39'EM ANDAMENTO'#39' and'
      '  tbxtrq.nidtbxtrq = cadreq.nidtbxtrq'
      'order by'
      '  cadreq.nnroprot desc')
    CachedUpdates = True
    AfterOpen = QRY_151AfterOpen
    AfterScroll = QRY_151AfterScroll
    Left = 28
    Top = 92
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ciddestino'
      end>
    object QRY_151NNROPROT: TFloatField
      FieldName = 'NNROPROT'
      Required = True
      DisplayFormat = '000000/00'
    end
    object QRY_151CDESCRITRQ: TStringField
      FieldName = 'CDESCRITRQ'
      Size = 40
    end
    object QRY_151NIDCADREQ: TFloatField
      FieldName = 'NIDCADREQ'
      Required = True
    end
    object QRY_151DAT_INSERT: TStringField
      FieldName = 'DAT_INSERT'
      ProviderFlags = []
      FixedChar = True
      Size = 1
    end
    object QRY_151CSITUAREQ: TStringField
      FieldName = 'CSITUAREQ'
      Required = True
      Size = 13
    end
  end
  object DTS_151: TOraDataSource
    DataSet = QRY_151
    Left = 104
    Top = 92
  end
  object QRY_LOCAIS: TOraQuery
    SQL.Strings = (
      'select'
      '  *'
      'from'
      '  tbxulc'
      'where'
      '  cidtbxulc = :cidtbxulc')
    Left = 28
    Top = 20
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
  object QRY_151_1: TOraQuery
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
      '  NIDCADREQ = :NIDCADREQ')
    SQL.Strings = (
      'select'
      '  cadreq.nidcadreq,'
      '  cadreq.nnroprot,'
      '  InitCap(tbxtrq.cdescritrq) as cdescritrq,  '
      '  '#39'N'#39' as dat_insert,'
      '  cadreq.csituareq'
      'from'
      '  cadreq,'
      '  tbxgtm,'
      '  tbxtrq'
      'where  '
      '  tbxgtm.ciddestino = :ciddestino and'
      '  cadreq.nidtbxgtm = tbxgtm.nidtbxgtm and'
      '  cadreq.csituareq = '#39'CONCLUIDO'#39' and'
      '  tbxtrq.nidtbxtrq = cadreq.nidtbxtrq'
      'order by'
      '  cadreq.nnroprot desc')
    CachedUpdates = True
    AfterOpen = QRY_151_1AfterOpen
    AfterScroll = QRY_151_1AfterScroll
    Left = 28
    Top = 160
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ciddestino'
      end>
    object QRY_151_1NNROPROT: TFloatField
      FieldName = 'NNROPROT'
      Required = True
      DisplayFormat = '000000/00'
    end
    object QRY_151_1CDESCRITRQ: TStringField
      FieldName = 'CDESCRITRQ'
      Size = 40
    end
    object QRY_151_1NIDCADREQ: TFloatField
      FieldName = 'NIDCADREQ'
      Required = True
    end
    object QRY_151_1DAT_INSERT: TStringField
      FieldName = 'DAT_INSERT'
      ProviderFlags = []
      FixedChar = True
      Size = 1
    end
    object QRY_151_1CSITUAREQ: TStringField
      FieldName = 'CSITUAREQ'
      Required = True
      Size = 13
    end
  end
  object DTS_151_1: TOraDataSource
    DataSet = QRY_151_1
    Left = 104
    Top = 160
  end
end
