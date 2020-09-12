object DTM_A010RH: TDTM_A010RH
  OldCreateOrder = False
  Left = 128
  Top = 143
  Height = 375
  Width = 544
  object QRY_099: TOraQuery
    SQL.Strings = (
      'select'
      '  cadmov.nidcadmov,'
      '  cadmov.nmespgto,'
      '  cadmov.nanopgto,'
      '  tbxtpm.cdescritpm,'
      '  cadato.cnroato,'
      '  cadato.ddtefeitos,'
      '  atorvg.cnroato as dat_ato,'
      '  atorvg.ddtefeitos as dat_efeitos'
      'from'
      '  cadmov,'
      '  cadato atorvg, '
      '  cadato,'
      '  tbxtpm'
      'where'
      '  cadmov.nidtagffu = :nidtagffu and'
      '  tbxtpm.nidtbxtpm = cadmov.nidtbxtpm and'
      '  cadato.nidcadato = cadmov.nidcadato and'
      '  atorvg.nidcadato(+) = cadmov.nidatorvg')
    Left = 20
    Top = 24
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'nidtagffu'
      end>
    object QRY_099CDESCRITPM: TStringField
      FieldName = 'CDESCRITPM'
      Required = True
      Size = 50
    end
    object QRY_099CNROATO: TStringField
      FieldName = 'CNROATO'
      Required = True
      Size = 10
    end
    object QRY_099DDTEFEITOS: TDateTimeField
      FieldName = 'DDTEFEITOS'
      Required = True
      DisplayFormat = 'dd/mm/yyyy'
    end
    object QRY_099DAT_ATO: TStringField
      FieldName = 'DAT_ATO'
      Size = 10
    end
    object QRY_099DAT_EFEITOS: TDateTimeField
      FieldName = 'DAT_EFEITOS'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object QRY_099NIDCADMOV: TFloatField
      FieldName = 'NIDCADMOV'
      Required = True
    end
    object QRY_099NMESPGTO: TFloatField
      FieldName = 'NMESPGTO'
      DisplayFormat = '00'
    end
    object QRY_099NANOPGTO: TFloatField
      FieldName = 'NANOPGTO'
      OnGetText = QRY_099NANOPGTOGetText
    end
  end
  object DTS_099: TOraDataSource
    AutoEdit = False
    DataSet = QRY_099
    OnDataChange = DTS_099DataChange
    Left = 80
    Top = 24
  end
end
