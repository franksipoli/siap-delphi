object DTM_A008RHTE: TDTM_A008RHTE
  OldCreateOrder = False
  Left = 184
  Top = 107
  Height = 375
  Width = 544
  object QRY_062: TOraQuery
    SQL.Strings = (
      'select'
      '  distinct'
      '  ncodfun,'
      '  cnomfun'
      'from'
      '  cadrem'
      'order by'
      '  cnomfun')
    Left = 28
    Top = 20
  end
  object DTS_062: TOraDataSource
    DataSet = QRY_062
    Left = 96
    Top = 20
  end
  object QRY_062_01: TOraQuery
    SQL.Strings = (
      'select'
      '  nidcadrem,'
      '  nmesref,'
      '  nanoref,'
      '  nvlrliq,'
      '  nbcopgt,'
      '  nagepgt,'
      '  ctiporem,'
      '  nctapgt||'#39'-'#39'||cdigcta as DAT_ctapgt'
      'from'
      '  cadrem'
      'where'
      '  ncodfun = :ncodfun'
      'order by  nanoref desc,nmesref desc'
      ''
      '  ')
    MasterSource = DTS_062
    Left = 32
    Top = 84
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ncodfun'
      end>
    object QRY_062_01NMESREF: TFloatField
      Alignment = taLeftJustify
      FieldName = 'NMESREF'
      OnGetText = QRY_062_01NMESREFGetText
    end
    object QRY_062_01NANOREF: TFloatField
      FieldName = 'NANOREF'
    end
    object QRY_062_01NVLRLIQ: TFloatField
      FieldName = 'NVLRLIQ'
      currency = True
    end
    object QRY_062_01NBCOPGT: TFloatField
      FieldName = 'NBCOPGT'
    end
    object QRY_062_01NAGEPGT: TFloatField
      FieldName = 'NAGEPGT'
    end
    object QRY_062_01DAT_CTAPGT: TStringField
      Alignment = taRightJustify
      FieldName = 'DAT_CTAPGT'
      Size = 81
    end
    object QRY_062_01CTIPOREM: TStringField
      FieldName = 'CTIPOREM'
      Size = 1
    end
    object QRY_062_01NIDCADREM: TFloatField
      FieldName = 'NIDCADREM'
      Required = True
    end
  end
  object DTS_062_01: TOraDataSource
    DataSet = QRY_062_01
    Left = 100
    Top = 84
  end
end
