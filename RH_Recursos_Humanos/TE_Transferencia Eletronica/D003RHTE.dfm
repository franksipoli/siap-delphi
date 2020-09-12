object DTM_A003RHTE: TDTM_A003RHTE
  OldCreateOrder = False
  Left = 184
  Top = 107
  Height = 375
  Width = 603
  object QRY_062: TOraQuery
    SQL.Strings = (
      'select'
      '  nidcadrem,'
      '  cseunro,'
      '  ncodfun,'
      '  cnomfun,'
      '  ctiporem,'
      '  nbcopgt,'
      '  nagepgt,'
      '  nctapgt||'#39'-'#39'||cdigcta as dat_nctapgt,'
      '  nvlrliq'
      'from'
      '  cadrem'
      'where'
      '  cSituacao = :psituacao and'
      '  nmesref = :nmesref and'
      '  nanoref = :nanoref'
      'order by'
      '  cnomfun')
    Left = 32
    Top = 28
    ParamData = <
      item
        DataType = ftString
        Name = 'psituacao'
        Value = ''
      end
      item
        DataType = ftUnknown
        Name = 'nmesref'
      end
      item
        DataType = ftUnknown
        Name = 'nanoref'
      end>
    object QRY_062NIDCADREM: TFloatField
      DisplayWidth = 13
      FieldName = 'NIDCADREM'
      Required = True
    end
    object QRY_062CSEUNRO: TStringField
      DisplayWidth = 24
      FieldName = 'CSEUNRO'
    end
    object QRY_062NCODFUN: TFloatField
      FieldName = 'NCODFUN'
    end
    object QRY_062CNOMFUN: TStringField
      DisplayWidth = 36
      FieldName = 'CNOMFUN'
      Size = 30
    end
    object QRY_062CTIPOREM: TStringField
      DisplayWidth = 11
      FieldName = 'CTIPOREM'
      Size = 1
    end
    object QRY_062NBCOPGT: TFloatField
      DisplayWidth = 12
      FieldName = 'NBCOPGT'
    end
    object QRY_062NAGEPGT: TFloatField
      DisplayWidth = 12
      FieldName = 'NAGEPGT'
    end
    object QRY_062DAT_NCTAPGT: TStringField
      Alignment = taRightJustify
      DisplayWidth = 17
      FieldName = 'DAT_NCTAPGT'
      Size = 81
    end
    object QRY_062NVLRLIQ: TFloatField
      DisplayWidth = 12
      FieldName = 'NVLRLIQ'
      currency = True
    end
  end
  object DTS_062: TOraDataSource
    DataSet = QRY_062
    Left = 88
    Top = 28
  end
  object QRY_066: TOraQuery
    SQL.Strings = (
      'select'
      '  tagprc.nidcadrem,'
      '  tagprc.ddataret,'
      '  tbxerr.cdescerro'
      'from'
      '  tagprc,'
      '  tbxerr'
      'where '
      '  tagprc.nidcadrem = :nidcadrem and'
      '  tagprc.nidtbxerr = tbxerr.nidtbxerr'
      'order by'
      '  tagprc.ddataret desc,'
      '  tagprc.choraret desc')
    MasterSource = DTS_062
    Left = 32
    Top = 96
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'nidcadrem'
        ParamType = ptInput
      end>
  end
  object DTS_066: TOraDataSource
    DataSet = QRY_066
    Left = 92
    Top = 96
  end
  object DBP_062: TppDBPipeline
    DataSource = DTS_062_01
    AutoCreateFields = False
    UserName = 'DBP_062'
    Left = 308
    Top = 28
    object DBP_062ppField1: TppField
      Alignment = taRightJustify
      FieldAlias = 'NIDCADREM'
      FieldName = 'NIDCADREM'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 0
      Position = 0
    end
    object DBP_062ppField2: TppField
      FieldAlias = 'CSEUNRO'
      FieldName = 'CSEUNRO'
      FieldLength = 20
      DisplayWidth = 20
      Position = 1
    end
    object DBP_062ppField3: TppField
      Alignment = taRightJustify
      FieldAlias = 'NCODFUN'
      FieldName = 'NCODFUN'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 2
    end
    object DBP_062ppField4: TppField
      FieldAlias = 'CNOMFUN'
      FieldName = 'CNOMFUN'
      FieldLength = 30
      DisplayWidth = 30
      Position = 3
    end
    object DBP_062ppField5: TppField
      Alignment = taRightJustify
      FieldAlias = 'NBCOPGT'
      FieldName = 'NBCOPGT'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 4
    end
    object DBP_062ppField6: TppField
      Alignment = taRightJustify
      FieldAlias = 'NAGEPGT'
      FieldName = 'NAGEPGT'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 5
    end
    object DBP_062ppField7: TppField
      FieldAlias = 'DAT_NCTAPGT'
      FieldName = 'DAT_NCTAPGT'
      FieldLength = 81
      DisplayWidth = 81
      Position = 6
    end
    object DBP_062ppField8: TppField
      Alignment = taRightJustify
      FieldAlias = 'NVLRLIQ'
      FieldName = 'NVLRLIQ'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 7
    end
    object DBP_062ppField9: TppField
      FieldAlias = 'DPREVPAGTO'
      FieldName = 'DPREVPAGTO'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 8
    end
    object DBP_062ppField10: TppField
      FieldAlias = 'CCTLORI'
      FieldName = 'CCTLORI'
      FieldLength = 30
      DisplayWidth = 30
      Position = 9
    end
    object DBP_062ppField11: TppField
      FieldAlias = 'DAT_ORIGEM'
      FieldName = 'DAT_ORIGEM'
      FieldLength = 7
      DisplayWidth = 7
      Position = 10
    end
    object DBP_062ppField12: TppField
      FieldAlias = 'DAT_FORMAPGTO'
      FieldName = 'DAT_FORMAPGTO'
      FieldLength = 50
      DisplayWidth = 50
      Position = 11
    end
    object DBP_062ppField13: TppField
      Alignment = taRightJustify
      FieldAlias = 'CNOSSONRO'
      FieldName = 'CNOSSONRO'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 12
    end
    object DBP_062ppField14: TppField
      FieldAlias = 'DDATAPAGTO'
      FieldName = 'DDATAPAGTO'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 13
    end
  end
  object DBP_066: TppDBPipeline
    DataSource = DTS_066_01
    AutoCreateFields = False
    UserName = 'DBP_066'
    Left = 304
    Top = 100
    object DBP_066ppField1: TppField
      Alignment = taRightJustify
      FieldAlias = 'NIDCADREM'
      FieldName = 'NIDCADREM'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 0
      Position = 0
    end
    object DBP_066ppField2: TppField
      FieldAlias = 'DDATARET'
      FieldName = 'DDATARET'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 1
    end
    object DBP_066ppField3: TppField
      FieldAlias = 'CDESCERRO'
      FieldName = 'CDESCERRO'
      FieldLength = 40
      DisplayWidth = 40
      Position = 2
    end
  end
  object DBP_P: TppDBPipeline
    DataSource = DMControle.Dts_P
    AutoCreateFields = False
    UserName = 'DBP_P'
    Left = 168
    Top = 164
    object DBP_PppField1: TppField
      FieldAlias = 'CPATHIMG'
      FieldName = 'CPATHIMG'
      FieldLength = 0
      DisplayWidth = 0
      Position = 0
    end
    object DBP_PppField2: TppField
      Alignment = taRightJustify
      FieldAlias = 'NSENHAVZ'
      FieldName = 'NSENHAVZ'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 1
    end
    object DBP_PppField3: TppField
      FieldAlias = 'CPATHBASE'
      FieldName = 'CPATHBASE'
      FieldLength = 50
      DisplayWidth = 50
      Position = 2
    end
    object DBP_PppField4: TppField
      FieldAlias = 'CPATHIND'
      FieldName = 'CPATHIND'
      FieldLength = 50
      DisplayWidth = 50
      Position = 3
    end
    object DBP_PppField5: TppField
      FieldAlias = 'CNOMERAZ'
      FieldName = 'CNOMERAZ'
      FieldLength = 40
      DisplayWidth = 40
      Position = 4
    end
    object DBP_PppField6: TppField
      FieldAlias = 'CPATHLOGO'
      FieldName = 'CPATHLOGO'
      FieldLength = 50
      DisplayWidth = 50
      Position = 5
    end
    object DBP_PppField7: TppField
      FieldAlias = 'CSENHAORA'
      FieldName = 'CSENHAORA'
      FieldLength = 30
      DisplayWidth = 30
      Position = 6
    end
    object DBP_PppField8: TppField
      FieldAlias = 'CUSERORA'
      FieldName = 'CUSERORA'
      FieldLength = 30
      DisplayWidth = 30
      Position = 7
    end
    object DBP_PppField9: TppField
      FieldAlias = 'CSERVORA'
      FieldName = 'CSERVORA'
      FieldLength = 30
      DisplayWidth = 30
      Position = 8
    end
    object DBP_PppField10: TppField
      FieldAlias = 'CTITLOGIN'
      FieldName = 'CTITLOGIN'
      FieldLength = 50
      DisplayWidth = 50
      Position = 9
    end
    object DBP_PppField11: TppField
      FieldAlias = 'CCARACINVA'
      FieldName = 'CCARACINVA'
      FieldLength = 50
      DisplayWidth = 50
      Position = 10
    end
    object DBP_PppField12: TppField
      FieldAlias = 'CBAIRROPREF'
      FieldName = 'CBAIRROPREF'
      FieldLength = 40
      DisplayWidth = 40
      Position = 11
    end
    object DBP_PppField13: TppField
      Alignment = taRightJustify
      FieldAlias = 'NCEP'
      FieldName = 'NCEP'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 12
    end
    object DBP_PppField14: TppField
      FieldAlias = 'CCOMPLEPREF'
      FieldName = 'CCOMPLEPREF'
      FieldLength = 30
      DisplayWidth = 30
      Position = 13
    end
    object DBP_PppField15: TppField
      FieldAlias = 'CCNPJ'
      FieldName = 'CCNPJ'
      FieldLength = 14
      DisplayWidth = 14
      Position = 14
    end
    object DBP_PppField16: TppField
      FieldAlias = 'CFONEPREF'
      FieldName = 'CFONEPREF'
      FieldLength = 20
      DisplayWidth = 20
      Position = 15
    end
    object DBP_PppField17: TppField
      FieldAlias = 'CCONTATOPREF'
      FieldName = 'CCONTATOPREF'
      FieldLength = 40
      DisplayWidth = 40
      Position = 16
    end
    object DBP_PppField18: TppField
      FieldAlias = 'CPONTOREM'
      FieldName = 'CPONTOREM'
      FieldLength = 50
      DisplayWidth = 50
      Position = 17
    end
    object DBP_PppField19: TppField
      FieldAlias = 'CENDPREF'
      FieldName = 'CENDPREF'
      FieldLength = 50
      DisplayWidth = 50
      Position = 18
    end
    object DBP_PppField20: TppField
      FieldAlias = 'MUNICIPIO'
      FieldName = 'MUNICIPIO'
      FieldLength = 30
      DisplayWidth = 30
      Position = 19
    end
    object DBP_PppField21: TppField
      FieldAlias = 'CXPOSTAL'
      FieldName = 'CXPOSTAL'
      FieldLength = 8
      DisplayWidth = 8
      Position = 20
    end
    object DBP_PppField22: TppField
      Alignment = taRightJustify
      FieldAlias = 'NNUMERO'
      FieldName = 'NNUMERO'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 21
    end
    object DBP_PppField23: TppField
      FieldAlias = 'CUF'
      FieldName = 'CUF'
      FieldLength = 2
      DisplayWidth = 2
      Position = 22
    end
  end
  object QRY_062_01: TOraQuery
    Session = DMControle.Conexao
    SQL.Strings = (
      'select'
      '  cadrem.nidcadrem,'
      '  cadrem.cseunro,'
      '  cadrem.cnossonro,'
      '  cadrem.ncodfun,'
      '  InitCap(cadrem.cnomfun) as cnomfun,  '
      '  cadrem.nbcopgt,'
      '  cadrem.nagepgt,'
      '  cadrem.nctapgt||'#39'-'#39'||cadrem.cdigcta as dat_nctapgt,'
      '  cadrem.nvlrliq,'
      '  cadrem.dprevpagto,'
      '  cadrem.ddatapagto,'
      '  InitCap(cadrem.cctlori) as cctlori,'
      '  InitCap(tbxori.cdescricao) as dat_origem,'
      '  InitCap(tbxfpg.cdescricao) as dat_formapgto '
      'from'
      '  cadrem, tbxori, tbxfpg'
      'where'
      '  cadrem.cSituacao = :psituacao and'
      '  cadrem.nmesref = :nmesref and '
      '  cadrem.nanoref = :nanoref and'
      '  tbxori.ccodori = cadrem.ccodori and'
      '  tbxfpg.ncodnobco = cadrem.nformapgto'
      'order by'
      '  cadrem.cnomfun')
    FetchAll = True
    Left = 168
    Top = 28
    ParamData = <
      item
        DataType = ftString
        Name = 'psituacao'
        Value = ''
      end
      item
        DataType = ftUnknown
        Name = 'nmesref'
      end
      item
        DataType = ftUnknown
        Name = 'nanoref'
      end>
    object QRY_062_01NIDCADREM: TFloatField
      FieldName = 'NIDCADREM'
      Required = True
    end
    object QRY_062_01CSEUNRO: TStringField
      FieldName = 'CSEUNRO'
    end
    object QRY_062_01NCODFUN: TFloatField
      FieldName = 'NCODFUN'
    end
    object QRY_062_01CNOMFUN: TStringField
      FieldName = 'CNOMFUN'
      Size = 30
    end
    object QRY_062_01NBCOPGT: TFloatField
      FieldName = 'NBCOPGT'
    end
    object QRY_062_01NAGEPGT: TFloatField
      FieldName = 'NAGEPGT'
    end
    object QRY_062_01DAT_NCTAPGT: TStringField
      FieldName = 'DAT_NCTAPGT'
      Size = 81
    end
    object QRY_062_01NVLRLIQ: TFloatField
      FieldName = 'NVLRLIQ'
      currency = True
    end
    object QRY_062_01DPREVPAGTO: TDateTimeField
      FieldName = 'DPREVPAGTO'
    end
    object QRY_062_01CCTLORI: TStringField
      FieldName = 'CCTLORI'
      Size = 30
    end
    object QRY_062_01DAT_ORIGEM: TStringField
      FieldName = 'DAT_ORIGEM'
      Size = 7
    end
    object QRY_062_01DAT_FORMAPGTO: TStringField
      FieldName = 'DAT_FORMAPGTO'
      Size = 50
    end
    object QRY_062_01CNOSSONRO: TFloatField
      FieldName = 'CNOSSONRO'
    end
    object QRY_062_01DDATAPAGTO: TDateTimeField
      FieldName = 'DDATAPAGTO'
    end
  end
  object DTS_062_01: TOraDataSource
    DataSet = QRY_062_01
    Left = 240
    Top = 28
  end
  object QRY_066_01: TOraQuery
    Session = DMControle.Conexao
    SQL.Strings = (
      'select'
      '  tagprc.nidcadrem,'
      '  tagprc.ddataret,'
      '  InitCap(tbxerr.cdescerro) as cdescerro'
      'from'
      '  tagprc,'
      '  tbxerr'
      'where '
      '  tagprc.nidcadrem = :nidcadrem and'
      '  tagprc.nidtbxerr = tbxerr.nidtbxerr'
      'order by'
      '  tagprc.ddataret desc,'
      '  tagprc.choraret desc')
    MasterSource = DTS_062_01
    Left = 168
    Top = 100
    ParamData = <
      item
        DataType = ftFloat
        Name = 'NIDCADREM'
        ParamType = ptInput
        Value = 21665
      end>
  end
  object DTS_066_01: TOraDataSource
    DataSet = QRY_066_01
    Left = 240
    Top = 100
  end
end
