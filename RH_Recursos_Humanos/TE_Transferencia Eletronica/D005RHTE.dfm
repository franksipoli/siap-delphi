object DTM_A005RHTE: TDTM_A005RHTE
  OldCreateOrder = False
  Left = 167
  Top = 170
  Height = 296
  Width = 494
  object QRY_062: TOraQuery
    SQL.Strings = (
      'select'
      '  cadrem.cseunro,'
      '  cadrem.cnomfun,'
      '  tbxori.cdescricao,'
      '  cadrem.cctlori,'
      '  tbxfpg.cdescricao dat_descricao,'
      '  cadrem.nbcopgt,'
      '  cadrem.nagepgt,'
      '  cadrem.nctapgt ||'#39'-'#39'|| cdigcta as dat_nctapgt,'
      '  cadrem.nvlrliq,'
      '  cadrem.cnossonro,'
      '  cadrem.nanoref,'
      '  cadrem.nmesref,'
      '  cadrem.ddatapagto'
      'from'
      '  cadrem,'
      '  tbxori,'
      '  tbxfpg'
      'where'
      '  cadrem.nidcadrem = :nidcadrem and'
      '  cadrem.ccodori = tbxori.ccodori and'
      '  cadrem.nformapgto = tbxfpg.ncodnobco')
    Left = 36
    Top = 12
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'nidcadrem'
      end>
    object QRY_062CSEUNRO: TStringField
      FieldName = 'CSEUNRO'
    end
    object QRY_062CNOMFUN: TStringField
      FieldName = 'CNOMFUN'
      Size = 30
    end
    object QRY_062CDESCRICAO: TStringField
      FieldName = 'CDESCRICAO'
      Size = 7
    end
    object QRY_062CCTLORI: TStringField
      FieldName = 'CCTLORI'
      Size = 30
    end
    object QRY_062DAT_DESCRICAO: TStringField
      FieldName = 'DAT_DESCRICAO'
      Size = 50
    end
    object QRY_062NBCOPGT: TFloatField
      FieldName = 'NBCOPGT'
    end
    object QRY_062NAGEPGT: TFloatField
      FieldName = 'NAGEPGT'
    end
    object QRY_062DAT_NCTAPGT: TStringField
      FieldName = 'DAT_NCTAPGT'
      Size = 81
    end
    object QRY_062NVLRLIQ: TFloatField
      FieldName = 'NVLRLIQ'
      currency = True
    end
    object QRY_062CNOSSONRO: TFloatField
      FieldName = 'CNOSSONRO'
    end
    object QRY_062NANOREF: TFloatField
      FieldName = 'NANOREF'
    end
    object QRY_062NMESREF: TFloatField
      FieldName = 'NMESREF'
      OnGetText = QRY_062NMESREFGetText
    end
    object QRY_062DDATAPAGTO: TDateTimeField
      FieldName = 'DDATAPAGTO'
    end
  end
  object DTS_062: TOraDataSource
    DataSet = QRY_062
    Left = 100
    Top = 12
  end
end
