object DTM_A001RHTE: TDTM_A001RHTE
  OldCreateOrder = False
  Left = 65532
  Top = 65532
  Height = 580
  Width = 808
  object QRY_062: TOraQuery
    SQL.Strings = (
      'select distinct nMesRef, nAnoRef, nMesRef||nAnoRef as dat_id'
      'from cadrem order by nAnoref desc, nMesRef desc')
    Left = 28
    Top = 20
    object QRY_062NMESREF: TFloatField
      FieldName = 'NMESREF'
      OnGetText = QRY_062NMESREFGetText
    end
    object QRY_062NANOREF: TFloatField
      FieldName = 'NANOREF'
    end
    object QRY_062DAT_ID: TStringField
      FieldName = 'DAT_ID'
      Size = 80
    end
  end
  object DTS_062: TOraDataSource
    DataSet = QRY_062
    Left = 92
    Top = 16
  end
  object QRY_062_01: TOraQuery
    SQL.Strings = (
      'select '
      '  count(*) as DAT_nQtdBbb,'
      '  sum(nvlrliq) as DAT_nTotbbb'
      'from'
      '  cadrem'
      'where'
      '  cadrem.nmesref = :nmesref and'
      '  cadrem.nanoref = :nanoref and'
      '  (cadrem.csituacao is null or'
      '  cadrem.csituacao = '#39'COK'#39')')
    AfterOpen = QRY_062_01AfterRefresh
    AfterRefresh = QRY_062_01AfterRefresh
    Left = 24
    Top = 80
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'nmesref'
      end
      item
        DataType = ftUnknown
        Name = 'nanoref'
      end>
    object QRY_062_01DAT_NQTDBBB: TFloatField
      FieldName = 'DAT_NQTDBBB'
    end
    object QRY_062_01DAT_NTOTBBB: TFloatField
      FieldName = 'DAT_NTOTBBB'
      currency = True
    end
  end
  object QRY_062_02: TOraQuery
    SQL.Strings = (
      'select '
      '  sum(cadrem.nvlrliq) as DAT_nTotBbb'
      'from '
      '  cadrem '
      'where '
      '  cadrem.nmesref = :nmesref and'
      '  cadrem.nanoref = :nanoref and'
      '  (cadrem.cSituacao is null or'
      '  cadrem.csituacao='#39'COK'#39')')
    Left = 24
    Top = 140
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'nmesref'
      end
      item
        DataType = ftUnknown
        Name = 'nanoref'
      end>
    object QRY_062_02DAT_NTOTBBB: TFloatField
      FieldName = 'DAT_NTOTBBB'
      currency = True
    end
  end
  object DTS_062_01: TOraDataSource
    DataSet = QRY_062_01
    Left = 104
    Top = 80
  end
  object DTS_062_02: TOraDataSource
    DataSet = QRY_062_02
    Left = 108
    Top = 140
  end
  object QRY_062_03: TOraQuery
    SQL.Strings = (
      'select '
      '  count(*) as DAT_nqtdaev'
      'from'
      '  cadrem'
      'where'
      '  nmesref = :nmesref and'
      '  nanoref = :nanoref and'
      '  csituacao = '#39'AEV'#39)
    AfterOpen = QRY_062_03AfterRefresh
    AfterRefresh = QRY_062_03AfterRefresh
    Left = 28
    Top = 216
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'nmesref'
      end
      item
        DataType = ftUnknown
        Name = 'nanoref'
      end>
  end
  object QRY_062_04: TOraQuery
    SQL.Strings = (
      'select'
      '  sum(nvlrliq) as DAT_ntotaev '
      'from'
      '  cadrem'
      'where'
      '  nmesref = :nmesref and'
      '  nanoref = :nanoref and'
      '  csituacao = '#39'AEV'#39)
    Left = 24
    Top = 280
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'nmesref'
      end
      item
        DataType = ftUnknown
        Name = 'nanoref'
      end>
    object QRY_062_04DAT_NTOTAEV: TFloatField
      FieldName = 'DAT_NTOTAEV'
      currency = True
    end
  end
  object DTS_062_03: TOraDataSource
    DataSet = QRY_062_03
    Left = 104
    Top = 216
  end
  object DTS_062_04: TOraDataSource
    DataSet = QRY_062_04
    Left = 104
    Top = 280
  end
  object QRY_062_05: TOraQuery
    SQL.Strings = (
      'select '
      '  count(*) as DAT_nqtdagr'
      'from'
      '  cadrem'
      'where'
      '  nmesref = :nmesref and'
      '  nanoref = :nanoref and'
      '  csituacao = '#39'AGR'#39)
    AfterOpen = QRY_062_05AfterRefresh
    AfterRefresh = QRY_062_05AfterRefresh
    Left = 24
    Top = 336
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'nmesref'
      end
      item
        DataType = ftUnknown
        Name = 'nanoref'
      end>
  end
  object QRY_062_06: TOraQuery
    SQL.Strings = (
      'select'
      '  sum(nvlrliq) as DAT_ntotagr'
      'from'
      '  cadrem'
      'where'
      '  nmesref = :nmesref and'
      '  nanoref = :nanoref and'
      '  csituacao = '#39'AGR'#39)
    Left = 24
    Top = 392
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'nmesref'
      end
      item
        DataType = ftUnknown
        Name = 'nanoref'
      end>
    object QRY_062_06DAT_NTOTAGR: TFloatField
      FieldName = 'DAT_NTOTAGR'
      currency = True
    end
  end
  object DTS_062_05: TOraDataSource
    DataSet = QRY_062_05
    Left = 100
    Top = 336
  end
  object DTS_062_06: TOraDataSource
    DataSet = QRY_062_06
    Left = 104
    Top = 392
  end
  object QRY_062_07: TOraQuery
    SQL.Strings = (
      'select'
      '  count(*) as DAT_nqtdpag'
      'from'
      '  cadrem'
      'where'
      '  nmesref = :nmesref and'
      '  nanoref = :nanoref and'
      '  csituacao = '#39'PAG'#39)
    AfterOpen = QRY_062_07AfterRefresh
    AfterRefresh = QRY_062_07AfterRefresh
    Left = 232
    Top = 12
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'nmesref'
      end
      item
        DataType = ftUnknown
        Name = 'nanoref'
      end>
  end
  object QRY_062_08: TOraQuery
    SQL.Strings = (
      'select'
      '  sum(nvlrliq) as DAT_ntotpag'
      'from'
      '  cadrem'
      'where'
      '  nmesref = :nmesref and'
      '  nanoref = :nanoref and'
      '  csituacao = '#39'PAG'#39)
    Left = 232
    Top = 72
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'nmesref'
      end
      item
        DataType = ftUnknown
        Name = 'nanoref'
      end>
    object QRY_062_08DAT_NTOTPAG: TFloatField
      FieldName = 'DAT_NTOTPAG'
      currency = True
    end
  end
  object DTS_062_07: TOraDataSource
    DataSet = QRY_062_07
    Left = 308
    Top = 12
  end
  object DTS_062_08: TOraDataSource
    DataSet = QRY_062_08
    Left = 316
    Top = 76
  end
  object QRY_062_09: TOraQuery
    SQL.Strings = (
      'select'
      '  count(*) as DAT_nqtdpef'
      'from'
      '  cadrem'
      'where'
      '  nmesref = :nmesref and'
      '  nanoref = :nanoref and'
      '  csituacao = '#39'PEF'#39)
    AfterOpen = QRY_062_09AfterRefresh
    AfterRefresh = QRY_062_09AfterRefresh
    Left = 232
    Top = 136
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'nmesref'
      end
      item
        DataType = ftUnknown
        Name = 'nanoref'
      end>
  end
  object QRY_062_10: TOraQuery
    SQL.Strings = (
      'select'
      '  sum(nvlrliq) as DAT_ntotpef'
      'from'
      '  cadrem'
      'where'
      '  nmesref = :nmesref and'
      '  nanoref = :nanoref and'
      '  csituacao = '#39'PEF'#39)
    Left = 240
    Top = 192
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'nmesref'
      end
      item
        DataType = ftUnknown
        Name = 'nanoref'
      end>
    object QRY_062_10DAT_NTOTPEF: TFloatField
      FieldName = 'DAT_NTOTPEF'
      currency = True
    end
  end
  object DTS_062_09: TOraDataSource
    DataSet = QRY_062_09
    Left = 324
    Top = 140
  end
  object DTS_062_10: TOraDataSource
    DataSet = QRY_062_10
    Left = 320
    Top = 196
  end
  object QRY_062_11: TOraQuery
    SQL.Strings = (
      'select'
      '  count(*) as DAT_nqtdpcc'
      'from'
      '  cadrem'
      'where'
      '  nmesref = :nmesref and'
      '  nanoref = :nanoref and'
      '  csituacao = '#39'PCC'#39)
    AfterOpen = QRY_062_11AfterRefresh
    AfterRefresh = QRY_062_11AfterRefresh
    Left = 240
    Top = 248
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'nmesref'
      end
      item
        DataType = ftUnknown
        Name = 'nanoref'
      end>
  end
  object QRY_062_12: TOraQuery
    SQL.Strings = (
      'select'
      '  sum(nvlrliq) as DAT_ntotpcc'
      'from'
      '  cadrem'
      'where'
      '  nmesref = :nmesref and'
      '  nanoref = :nanoref and'
      '  csituacao = '#39'PCC'#39)
    Left = 240
    Top = 304
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'nmesref'
      end
      item
        DataType = ftUnknown
        Name = 'nanoref'
      end>
    object QRY_062_12DAT_NTOTPCC: TFloatField
      FieldName = 'DAT_NTOTPCC'
      currency = True
    end
  end
  object DTS_062_11: TOraDataSource
    DataSet = QRY_062_11
    Left = 324
    Top = 252
  end
  object DTS_062_12: TOraDataSource
    DataSet = QRY_062_12
    Left = 320
    Top = 308
  end
  object QRY_062_13: TOraQuery
    SQL.Strings = (
      'select'
      '  count(*) as DAT_nqtderr'
      'from'
      '  cadrem'
      'where'
      '  nmesref = :nmesref and'
      '  nanoref = :nanoref and'
      '  cflagerro = '#39'ERR'#39)
    AfterOpen = QRY_062_13AfterRefresh
    AfterRefresh = QRY_062_13AfterRefresh
    Left = 240
    Top = 364
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'nmesref'
      end
      item
        DataType = ftUnknown
        Name = 'nanoref'
      end>
    object QRY_062_13DAT_NQTDERR: TFloatField
      FieldName = 'DAT_NQTDERR'
    end
  end
  object QRY_062_14: TOraQuery
    SQL.Strings = (
      'select'
      '  sum(nvlrliq) as DAT_ntoterr'
      'from'
      '  cadrem'
      'where'
      '  nmesref = :nmesref and'
      '  nanoref = :nanoref and'
      '  cflagerro = '#39'ERR'#39)
    Left = 240
    Top = 420
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'nmesref'
      end
      item
        DataType = ftUnknown
        Name = 'nanoref'
      end>
    object QRY_062_14DAT_NTOTERR: TFloatField
      FieldName = 'DAT_NTOTERR'
      currency = True
    end
  end
  object DTS_062_13: TOraDataSource
    DataSet = QRY_062_13
    Left = 316
    Top = 368
  end
  object DTS_062_14: TOraDataSource
    DataSet = QRY_062_14
    Left = 316
    Top = 424
  end
  object QRY_062_15: TOraQuery
    SQL.Strings = (
      'select'
      '  count(*) as DAT_nqtdblq'
      'from'
      '  cadrem'
      'where'
      '  nmesref = :nmesref and'
      '  nanoref = :nanoref and'
      '  csituacao = '#39'BLQ'#39)
    AfterOpen = QRY_062_15AfterRefresh
    AfterRefresh = QRY_062_15AfterRefresh
    Left = 420
    Top = 20
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'nmesref'
      end
      item
        DataType = ftUnknown
        Name = 'nanoref'
      end>
  end
  object QRY_062_16: TOraQuery
    SQL.Strings = (
      'select'
      '  sum(nvlrliq) as DAT_ntotblq'
      'from'
      '  cadrem'
      'where'
      '  nmesref = :nmesref and'
      '  nanoref = :nanoref and'
      '  csituacao = '#39'BLQ'#39)
    Left = 420
    Top = 76
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'nmesref'
      end
      item
        DataType = ftUnknown
        Name = 'nanoref'
      end>
    object QRY_062_16DAT_NTOTBLQ: TFloatField
      FieldName = 'DAT_NTOTBLQ'
      currency = True
    end
  end
  object DTS_062_15: TOraDataSource
    DataSet = QRY_062_15
    Left = 496
    Top = 24
  end
  object DTS_062_16: TOraDataSource
    DataSet = QRY_062_16
    Left = 496
    Top = 80
  end
  object QRY_062_17: TOraQuery
    SQLInsert.Strings = (
      'INSERT INTO cadrem'
      
        '  (NIDCADREM, CSEUNRO, CNOMFUN, NNUMCIC, NBCOPGT, NAGEPGT, CCTLO' +
        'RI, NVLRLIQ, NTIPOMOVTO, CTIPOREM, CSITUACAO, CTRANTER, CSITANTE' +
        'R)'
      'VALUES'
      
        '  (:NIDCADREM, :CSEUNRO, :CNOMFUN, :NNUMCIC, :NBCOPGT, :NAGEPGT,' +
        ' :CCTLORI, :NVLRLIQ, :NTIPOMOVTO, :CTIPOREM, :CSITUACAO, :CTRANT' +
        'ER, :CSITANTER)')
    SQLDelete.Strings = (
      'DELETE FROM cadrem'
      'WHERE'
      '  NIDCADREM = :NIDCADREM')
    SQLUpdate.Strings = (
      'UPDATE cadrem'
      'SET'
      '  NIDCADREM = :NIDCADREM,'
      '  CSEUNRO = :CSEUNRO,'
      '  CNOMFUN = :CNOMFUN,'
      '  NNUMCIC = :NNUMCIC,'
      '  NBCOPGT = :NBCOPGT,'
      '  NAGEPGT = :NAGEPGT,'
      '  CCTLORI = :CCTLORI,'
      '  NVLRLIQ = :NVLRLIQ,'
      '  NTIPOMOVTO = :NTIPOMOVTO,'
      '  CTIPOREM = :CTIPOREM,'
      '  CSITUACAO = :CSITUACAO,'
      '  CTRANTER = :CTRANTER,'
      '  CSITANTER = :CSITANTER'
      'WHERE'
      '  NIDCADREM = :OLD_NIDCADREM')
    SQLLock.Strings = (
      'SELECT * FROM cadrem'
      'WHERE'
      '  NIDCADREM = :NIDCADREM'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      'WHERE'
      '  NIDCADREM = :NIDCADREM')
    SQL.Strings = (
      'select '
      '  cadrem.nidcadrem,'
      '  cadrem.cseunro,'
      '  cadrem.ncodfun,'
      '  cadrem.cnomfun,'
      '  cadrem.nnumcic,'
      '  cadrem.nbcopgt,'
      '  cadrem.nagepgt,'
      '  cadrem.nctapgt||'#39'-'#39'||cadrem.cdigcta as dat_nctapgt,'
      '  cadrem.nvlrliq,'
      '  tbxori.cdescricao,'
      '  cadrem.cctlori,'
      '  cadrem.csituacao,'
      '  cadrem.csitanter,'
      '  cadrem.ctiporem,'
      '  cadrem.ctranter,'
      '  cadrem.ntipomovto'
      'from '
      '  cadrem,tbxori'
      'where '
      '  cadrem.nidcadrem is null and'
      '  tbxori.ccodori = cadrem.ccodori')
    AfterOpen = QRY_062_17AfterRefresh
    AfterRefresh = QRY_062_17AfterRefresh
    Left = 428
    Top = 168
    object QRY_062_17NIDCADREM: TFloatField
      FieldName = 'NIDCADREM'
      Required = True
    end
    object QRY_062_17CSEUNRO: TStringField
      FieldName = 'CSEUNRO'
    end
    object QRY_062_17NCODFUN: TFloatField
      FieldName = 'NCODFUN'
    end
    object QRY_062_17CNOMFUN: TStringField
      FieldName = 'CNOMFUN'
      Size = 30
    end
    object QRY_062_17NNUMCIC: TFloatField
      FieldName = 'NNUMCIC'
    end
    object QRY_062_17NBCOPGT: TFloatField
      FieldName = 'NBCOPGT'
    end
    object QRY_062_17NAGEPGT: TFloatField
      FieldName = 'NAGEPGT'
    end
    object QRY_062_17DAT_NCTAPGT: TStringField
      Alignment = taRightJustify
      FieldName = 'DAT_NCTAPGT'
      Size = 81
    end
    object QRY_062_17NVLRLIQ: TFloatField
      FieldName = 'NVLRLIQ'
      currency = True
    end
    object QRY_062_17CDESCRICAO: TStringField
      FieldName = 'CDESCRICAO'
      Size = 7
    end
    object QRY_062_17CCTLORI: TStringField
      FieldName = 'CCTLORI'
      Size = 30
    end
    object QRY_062_17CSITUACAO: TStringField
      FieldName = 'CSITUACAO'
      Size = 3
    end
    object QRY_062_17CSITANTER: TStringField
      FieldName = 'CSITANTER'
      Size = 3
    end
    object QRY_062_17CTIPOREM: TStringField
      FieldName = 'CTIPOREM'
      Size = 1
    end
    object QRY_062_17CTRANTER: TStringField
      FieldName = 'CTRANTER'
      Size = 1
    end
    object QRY_062_17NTIPOMOVTO: TFloatField
      FieldName = 'NTIPOMOVTO'
    end
  end
  object QRY_062_18: TOraQuery
    SQLInsert.Strings = (
      'INSERT INTO cadrem'
      
        '  (NIDCADREM, CSEUNRO, CNOMFUN, NNUMCIC, NBCOPGT, NAGEPGT, CCTLO' +
        'RI, NVLRLIQ, NTIPOMOVTO, CTIPOREM, CSITUACAO, CTRANTER, CSITANTE' +
        'R)'
      'VALUES'
      
        '  (:NIDCADREM, :CSEUNRO, :CNOMFUN, :NNUMCIC, :NBCOPGT, :NAGEPGT,' +
        ' :CCTLORI, :NVLRLIQ, :NTIPOMOVTO, :CTIPOREM, :CSITUACAO, :CTRANT' +
        'ER, :CSITANTER)')
    SQLDelete.Strings = (
      'DELETE FROM cadrem'
      'WHERE'
      '  NIDCADREM = :NIDCADREM')
    SQLUpdate.Strings = (
      'UPDATE cadrem'
      'SET'
      '  NIDCADREM = :NIDCADREM,'
      '  CSEUNRO = :CSEUNRO,'
      '  CNOMFUN = :CNOMFUN,'
      '  NNUMCIC = :NNUMCIC,'
      '  NBCOPGT = :NBCOPGT,'
      '  NAGEPGT = :NAGEPGT,'
      '  CCTLORI = :CCTLORI,'
      '  NVLRLIQ = :NVLRLIQ,'
      '  NTIPOMOVTO = :NTIPOMOVTO,'
      '  CTIPOREM = :CTIPOREM,'
      '  CSITUACAO = :CSITUACAO,'
      '  CTRANTER = :CTRANTER,'
      '  CSITANTER = :CSITANTER'
      'WHERE'
      '  NIDCADREM = :OLD_NIDCADREM')
    SQLLock.Strings = (
      'SELECT * FROM cadrem'
      'WHERE'
      '  NIDCADREM = :NIDCADREM'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      'WHERE'
      '  NIDCADREM = :NIDCADREM')
    SQL.Strings = (
      'select '
      '  cadrem.nidcadrem,'
      '  cadrem.cseunro,'
      '  cadrem.ncodfun,'
      '  cadrem.cnomfun,'
      '  cadrem.nnumcic,'
      '  cadrem.nbcopgt,'
      '  cadrem.nagepgt,'
      '  cadrem.nctapgt||'#39'-'#39'||cadrem.cdigcta as dat_nctapgt,'
      '  cadrem.nvlrliq,'
      '  tbxori.cdescricao,'
      '  cadrem.cctlori,'
      '  cadrem.csituacao,'
      '  cadrem.csitanter,'
      '  cadrem.ctiporem,'
      '  cadrem.ctranter,'
      '  cadrem.ntipomovto'
      'from '
      '  cadrem,tbxori'
      'where '
      '  cadrem.nidcadrem is null and'
      '  tbxori.ccodori = cadrem.ccodori')
    AfterOpen = QRY_062_18AfterRefresh
    AfterRefresh = QRY_062_18AfterRefresh
    Left = 424
    Top = 232
    object QRY_062_18NIDCADREM: TFloatField
      FieldName = 'NIDCADREM'
      Required = True
    end
    object QRY_062_18CSEUNRO: TStringField
      FieldName = 'CSEUNRO'
    end
    object QRY_062_18NCODFUN: TFloatField
      FieldName = 'NCODFUN'
    end
    object QRY_062_18CNOMFUN: TStringField
      FieldName = 'CNOMFUN'
      Size = 30
    end
    object QRY_062_18NNUMCIC: TFloatField
      FieldName = 'NNUMCIC'
    end
    object QRY_062_18NBCOPGT: TFloatField
      FieldName = 'NBCOPGT'
    end
    object QRY_062_18NAGEPGT: TFloatField
      FieldName = 'NAGEPGT'
    end
    object QRY_062_18DAT_NCTAPGT: TStringField
      Alignment = taRightJustify
      FieldName = 'DAT_NCTAPGT'
      Size = 81
    end
    object QRY_062_18NVLRLIQ: TFloatField
      FieldName = 'NVLRLIQ'
      currency = True
    end
    object QRY_062_18CDESCRICAO: TStringField
      FieldName = 'CDESCRICAO'
      Size = 7
    end
    object QRY_062_18CCTLORI: TStringField
      FieldName = 'CCTLORI'
      Size = 30
    end
    object QRY_062_18CSITUACAO: TStringField
      FieldName = 'CSITUACAO'
      Size = 3
    end
    object QRY_062_18CSITANTER: TStringField
      FieldName = 'CSITANTER'
      Size = 3
    end
    object QRY_062_18CTIPOREM: TStringField
      FieldName = 'CTIPOREM'
      Size = 1
    end
    object QRY_062_18CTRANTER: TStringField
      FieldName = 'CTRANTER'
      Size = 1
    end
    object QRY_062_18NTIPOMOVTO: TFloatField
      FieldName = 'NTIPOMOVTO'
    end
  end
  object DTS_062_17: TOraDataSource
    DataSet = QRY_062_17
    Left = 500
    Top = 172
  end
  object DTS_062_18: TOraDataSource
    DataSet = QRY_062_18
    Left = 500
    Top = 232
  end
  object QRY_062_19: TOraQuery
    SQL.Strings = (
      'select'
      '  tbxori.cdescricao,  '
      
        '  (tbxori.nagencia||(Decode(tbxori.ndigage,null,'#39#39','#39'-'#39'||tbxori.n' +
        'digage))) dat_agencia,'
      '  tbxori.nconta||'#39'-'#39'||tbxori.ndigito as dat_ctabco,'
      '  cadrem.cctlori, '
      '  tbxbco.cdescbanco,'
      '  count(cadrem.cctlori) as dat_qtd,'
      '  sum(cadrem.nvlrliq) as dat_vlr '
      'from'
      '  cadrem,tbxori, tbxbco'
      'where'
      '  tbxori.ccodori = cadrem.ccodori and'
      '  cadrem.nmesref = :nmesref and'
      '  cadrem.nanoref = :nanoref and'
      '  tbxbco.ncodbanco = tbxori.ncodbco'
      '  '
      'group by tbxori.cdescricao,cadrem.cctlori, tbxori.nagencia,'
      'tbxori.nconta,tbxori.ndigito,tbxbco.cdescbanco, tbxori.ndigage'
      ''
      'order by tbxori.cdescricao desc, cadrem.cctlori  ')
    Left = 420
    Top = 292
    ParamData = <
      item
        DataType = ftInteger
        Name = 'nmesref'
      end
      item
        DataType = ftInteger
        Name = 'nanoref'
      end>
  end
  object DTS_062_19: TOraDataSource
    DataSet = QRY_062_19
    Left = 420
    Top = 344
  end
  object DBP_062_19: TppDBPipeline
    DataSource = DTS_062_19
    UserName = 'DBP_062_19'
    Left = 424
    Top = 416
  end
end
