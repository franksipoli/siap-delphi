object DTM_A004RHTE: TDTM_A004RHTE
  OldCreateOrder = False
  Left = 184
  Top = 107
  Height = 375
  Width = 544
  object QRY_064: TOraQuery
    SQL.Strings = (
      'select * from tbxfpg')
    FetchAll = True
    Left = 44
    Top = 28
  end
  object QRY_063: TOraQuery
    SQLInsert.Strings = (
      'INSERT INTO tbxori'
      
        '  (NIDTBXORI, CCODORI, CDESCRICAO, NCODBCO, NAGENCIA, NCONTA, ND' +
        'IGITO, CPASTA, NNROSEQ)'
      'VALUES'
      
        '  (:NIDTBXORI, :CCODORI, :CDESCRICAO, :NCODBCO, :NAGENCIA, :NCON' +
        'TA, :NDIGITO, :CPASTA, :NNROSEQ)')
    SQLDelete.Strings = (
      'DELETE FROM tbxori'
      'WHERE'
      '  NIDTBXORI = :NIDTBXORI')
    SQLUpdate.Strings = (
      'UPDATE tbxori'
      'SET'
      '  NIDTBXORI = :NIDTBXORI,'
      '  CCODORI = :CCODORI,'
      '  CDESCRICAO = :CDESCRICAO,'
      '  NCODBCO = :NCODBCO,'
      '  NAGENCIA = :NAGENCIA,'
      '  NCONTA = :NCONTA,'
      '  NDIGITO = :NDIGITO,'
      '  CPASTA = :CPASTA,'
      '  NNROSEQ = :NNROSEQ'
      'WHERE'
      '  NIDTBXORI = :OLD_NIDTBXORI')
    SQLLock.Strings = (
      'SELECT * FROM tbxori'
      'WHERE'
      '  NIDTBXORI = :NIDTBXORI'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      'WHERE'
      '  NIDTBXORI = :NIDTBXORI')
    SQL.Strings = (
      'select '
      '  * '
      'from '
      '  tbxori'
      'where'
      '  ncodbco = :ncodbco')
    FetchAll = True
    Left = 124
    Top = 28
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ncodbco'
      end>
    object QRY_063NIDTBXORI: TFloatField
      FieldName = 'NIDTBXORI'
      Required = True
    end
    object QRY_063CCODORI: TStringField
      FieldName = 'CCODORI'
      Size = 3
    end
    object QRY_063CDESCRICAO: TStringField
      FieldName = 'CDESCRICAO'
      Size = 7
    end
    object QRY_063NCODBCO: TFloatField
      FieldName = 'NCODBCO'
      DisplayFormat = '000'
    end
    object QRY_063NAGENCIA: TFloatField
      FieldName = 'NAGENCIA'
    end
    object QRY_063NCONTA: TFloatField
      FieldName = 'NCONTA'
    end
    object QRY_063NDIGITO: TFloatField
      FieldName = 'NDIGITO'
    end
    object QRY_063CPASTA: TStringField
      FieldName = 'CPASTA'
      Size = 100
    end
    object QRY_063NNROSEQ: TFloatField
      FieldName = 'NNROSEQ'
    end
    object QRY_063CFUNDEF: TStringField
      FieldName = 'CFUNDEF'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QRY_063CCODANT: TStringField
      FieldName = 'CCODANT'
      Size = 3
    end
    object QRY_063NDIGAGE: TFloatField
      FieldName = 'NDIGAGE'
    end
  end
  object QRY_QTDORI: TOraQuery
    SQL.Strings = (
      'select '
      '  count(*) nqtd '
      'from '
      '  cadrem '
      'where'
      '  nmesref = :nmesref and'
      '  nanoref = :nanoref and'
      '  csituacao = '#39'AEV'#39' and'
      '  ccodori = :ccodori')
    Left = 128
    Top = 92
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'nmesref'
      end
      item
        DataType = ftUnknown
        Name = 'nanoref'
      end
      item
        DataType = ftUnknown
        Name = 'ccodori'
      end>
  end
  object QRY_062: TOraQuery
    SQLInsert.Strings = (
      'INSERT INTO cadrem'
      
        '  (NIDCADREM, CSEUNRO, CNOMFUN, NNUMCIC, NBCOPGT, NAGEPGT, NCTAP' +
        'GT, NVLRLIQ, NCODLOTE, NTIPOPGTO, NFORMAPGTO, NNROREG, NTIPOMOVT' +
        'O, DPREVPAGTO, CNOSSONRO, CREMESSA, DDATAREM, CHORAREM, CTIPOREM' +
        ', CSITUACAO, NDIGAGE, CDIGCTA)'
      'VALUES'
      
        '  (:NIDCADREM, :CSEUNRO, :CNOMFUN, :NNUMCIC, :NBCOPGT, :NAGEPGT,' +
        ' :NCTAPGT, :NVLRLIQ, :NCODLOTE, :NTIPOPGTO, :NFORMAPGTO, :NNRORE' +
        'G, :NTIPOMOVTO, :DPREVPAGTO, :CNOSSONRO, :CREMESSA, :DDATAREM, :' +
        'CHORAREM, :CTIPOREM, :CSITUACAO, :NDIGAGE, :CDIGCTA)')
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
      '  NCTAPGT = :NCTAPGT,'
      '  NVLRLIQ = :NVLRLIQ,'
      '  NCODLOTE = :NCODLOTE,'
      '  NTIPOPGTO = :NTIPOPGTO,'
      '  NFORMAPGTO = :NFORMAPGTO,'
      '  NNROREG = :NNROREG,'
      '  NTIPOMOVTO = :NTIPOMOVTO,'
      '  DPREVPAGTO = :DPREVPAGTO,'
      '  CNOSSONRO = :CNOSSONRO,'
      '  CREMESSA = :CREMESSA,'
      '  DDATAREM = :DDATAREM,'
      '  CHORAREM = :CHORAREM,'
      '  CTIPOREM = :CTIPOREM,'
      '  CSITUACAO = :CSITUACAO,'
      '  NDIGAGE = :NDIGAGE,'
      '  CDIGCTA = :CDIGCTA'
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
      'select'
      '  nidcadrem,'
      '  cseunro,'
      '  cnomfun,'
      '  nnumcic,'
      '  nbcopgt,'
      '  nagepgt,'
      '  ndigage,'
      '  nctapgt,'
      '  cdigcta,'
      '  nvlrliq,'
      '  ncodlote,'
      '  ntipopgto,'
      '  nformapgto,'
      '  nnroreg,'
      '  ntipomovto,'
      '  cnossonro,'
      '  dprevpagto,'
      '  cremessa,'
      '  ddatarem,'
      '  chorarem,'
      '  ctiporem,'
      '  csituacao'
      'from'
      '  cadrem'
      'where'
      '  nmesref = :nmesref and'
      '  nanoref = :nanoref and'
      '  ccodori = :ccodori and'
      '  csituacao = '#39'AEV'#39' and'
      '  nformapgto = :nformapgto')
    FetchAll = True
    Left = 44
    Top = 96
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'nmesref'
      end
      item
        DataType = ftUnknown
        Name = 'nanoref'
      end
      item
        DataType = ftUnknown
        Name = 'ccodori'
      end
      item
        DataType = ftUnknown
        Name = 'nformapgto'
      end>
    object QRY_062NIDCADREM: TFloatField
      FieldName = 'NIDCADREM'
      Required = True
    end
    object QRY_062CSEUNRO: TStringField
      FieldName = 'CSEUNRO'
    end
    object QRY_062CNOMFUN: TStringField
      FieldName = 'CNOMFUN'
      Size = 30
    end
    object QRY_062NNUMCIC: TFloatField
      FieldName = 'NNUMCIC'
      DisplayFormat = '00000000000000'
    end
    object QRY_062NBCOPGT: TFloatField
      FieldName = 'NBCOPGT'
    end
    object QRY_062NAGEPGT: TFloatField
      FieldName = 'NAGEPGT'
    end
    object QRY_062NDIGAGE: TFloatField
      FieldName = 'NDIGAGE'
    end
    object QRY_062NCTAPGT: TFloatField
      FieldName = 'NCTAPGT'
    end
    object QRY_062CDIGCTA: TStringField
      FieldName = 'CDIGCTA'
      Size = 1
    end
    object QRY_062NVLRLIQ: TFloatField
      FieldName = 'NVLRLIQ'
    end
    object QRY_062NCODLOTE: TFloatField
      FieldName = 'NCODLOTE'
    end
    object QRY_062NTIPOPGTO: TFloatField
      FieldName = 'NTIPOPGTO'
    end
    object QRY_062NFORMAPGTO: TFloatField
      FieldName = 'NFORMAPGTO'
    end
    object QRY_062NNROREG: TFloatField
      FieldName = 'NNROREG'
    end
    object QRY_062NTIPOMOVTO: TFloatField
      FieldName = 'NTIPOMOVTO'
    end
    object QRY_062CNOSSONRO: TFloatField
      FieldName = 'CNOSSONRO'
    end
    object QRY_062CREMESSA: TStringField
      FieldName = 'CREMESSA'
      Size = 12
    end
    object QRY_062DDATAREM: TDateTimeField
      FieldName = 'DDATAREM'
    end
    object QRY_062CHORAREM: TStringField
      FieldName = 'CHORAREM'
      Size = 8
    end
    object QRY_062CTIPOREM: TStringField
      FieldName = 'CTIPOREM'
      Size = 1
    end
    object QRY_062CSITUACAO: TStringField
      FieldName = 'CSITUACAO'
      Size = 3
    end
    object QRY_062DPREVPAGTO: TDateTimeField
      FieldName = 'DPREVPAGTO'
    end
  end
end
