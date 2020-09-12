object DTM_A006AD: TDTM_A006AD
  OldCreateOrder = False
  Left = 195
  Top = 152
  Height = 479
  Width = 741
  object QRY_PRECEBIM: TQuery
    DatabaseName = 'g:\p\tmp'
    SQL.Strings = (
      'select'
      '  ddatavenci,'
      '  pcomposi.cdescricao,'
      '  sum(nvalor + nmulta + njuros) as valor'
      'from'
      '  precebim,'
      '  pcomposi'
      'where'
      '  pcomposi.ccodcompos = precebim.ccodcompos and'
      '  ddatapago is null and'
      '  ddatavenci >=  :dataini and'
      ' ddatavenci <=  :datafim and'
      ' cstatuscan is null'
      'group by'
      '  ddatavenci,'
      '  pcomposi.cdescricao')
    Left = 36
    Top = 24
    ParamData = <
      item
        DataType = ftDateTime
        Name = 'dataini'
        ParamType = ptInput
      end
      item
        DataType = ftDateTime
        Name = 'datafim'
        ParamType = ptInput
      end>
    object QRY_PRECEBIMddatavenci: TDateField
      FieldName = 'ddatavenci'
    end
    object QRY_PRECEBIMcdescricao: TStringField
      FieldName = 'cdescricao'
      Size = 40
    end
    object QRY_PRECEBIMvalor: TFloatField
      FieldName = 'valor'
    end
  end
  object DTS_PRECEBIM: TDataSource
    DataSet = QRY_PRECEBIM
    Left = 132
    Top = 24
  end
  object DBP_DIAS: TppDBPipeline
    DataSource = DTS_DIAS
    OpenDataSource = False
    UserName = 'DBP_DIAS'
    Left = 392
    Top = 112
    object DBP_DIASppField1: TppField
      FieldAlias = 'ddatavenci'
      FieldName = 'ddatavenci'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 0
    end
    object DBP_DIASppField2: TppField
      Alignment = taRightJustify
      FieldAlias = 'valor'
      FieldName = 'valor'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 1
    end
  end
  object VTB_GERAL: TVirtualTable
    Options = [voPersistentData, voStored]
    Active = True
    FieldDefs = <
      item
        Name = 'ddatavenci'
        DataType = ftDateTime
      end
      item
        Name = 'cdescricao'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'valor'
        DataType = ftFloat
      end>
    Left = 228
    Top = 16
    Data = {
      010003000A00646461746176656E63690B0000000A006364657363726963616F
      01001400050076616C6F7206000000000000000000}
    object VTB_GERALddatavenci: TDateTimeField
      FieldName = 'ddatavenci'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object VTB_GERALcdescricao: TStringField
      FieldName = 'cdescricao'
    end
    object VTB_GERALvalor: TFloatField
      FieldName = 'valor'
      currency = True
    end
  end
  object QRY_IPTU: TQuery
    DatabaseName = 'g:\p\tmp'
    Left = 36
    Top = 104
  end
  object DTS_GERAL: TOraDataSource
    AutoEdit = False
    DataSet = VTB_GERAL
    Left = 312
    Top = 16
  end
  object VTB_DIAS: TVirtualTable
    Options = [voPersistentData, voStored]
    Active = True
    FieldDefs = <
      item
        Name = 'ddatavenci'
        DataType = ftDateTime
      end
      item
        Name = 'valor'
        DataType = ftFloat
      end>
    Left = 232
    Top = 112
    Data = {
      010002000A00646461746176656E63690B000000050076616C6F720600000000
      0000000000}
    object VTB_DIASddatavenci: TDateTimeField
      FieldName = 'ddatavenci'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object VTB_DIASvalor: TFloatField
      FieldName = 'valor'
      currency = True
    end
  end
  object DTS_DIAS: TOraDataSource
    AutoEdit = False
    DataSet = VTB_DIAS
    Left = 312
    Top = 112
  end
  object DBP_P: TppDBPipeline
    DataSource = DMControle.Dts_P
    OpenDataSource = False
    UserName = 'DBP_P'
    Left = 120
    Top = 108
    object DBP_PppField1: TppField
      FieldAlias = 'CPATHIMG'
      FieldName = 'CPATHIMG'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 0
      Searchable = False
      Sortable = False
    end
    object DBP_PppField2: TppField
      FieldAlias = 'NSENHAVZ'
      FieldName = 'NSENHAVZ'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 1
      Searchable = False
      Sortable = False
    end
    object DBP_PppField3: TppField
      FieldAlias = 'CPATHBASE'
      FieldName = 'CPATHBASE'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 2
      Searchable = False
      Sortable = False
    end
    object DBP_PppField4: TppField
      FieldAlias = 'CPATHIND'
      FieldName = 'CPATHIND'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 3
      Searchable = False
      Sortable = False
    end
    object DBP_PppField5: TppField
      FieldAlias = 'CNOMERAZ'
      FieldName = 'CNOMERAZ'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 4
      Searchable = False
      Sortable = False
    end
    object DBP_PppField6: TppField
      FieldAlias = 'CPATHLOGO'
      FieldName = 'CPATHLOGO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 5
      Searchable = False
      Sortable = False
    end
    object DBP_PppField7: TppField
      FieldAlias = 'CSENHAORA'
      FieldName = 'CSENHAORA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 6
      Searchable = False
      Sortable = False
    end
    object DBP_PppField8: TppField
      FieldAlias = 'CUSERORA'
      FieldName = 'CUSERORA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 7
      Searchable = False
      Sortable = False
    end
    object DBP_PppField9: TppField
      FieldAlias = 'CSERVORA'
      FieldName = 'CSERVORA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 8
      Searchable = False
      Sortable = False
    end
    object DBP_PppField10: TppField
      FieldAlias = 'CTITLOGIN'
      FieldName = 'CTITLOGIN'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 9
      Searchable = False
      Sortable = False
    end
    object DBP_PppField11: TppField
      FieldAlias = 'CCARACINVA'
      FieldName = 'CCARACINVA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 10
      Searchable = False
      Sortable = False
    end
    object DBP_PppField12: TppField
      FieldAlias = 'CBAIRROPREF'
      FieldName = 'CBAIRROPREF'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 11
      Searchable = False
      Sortable = False
    end
    object DBP_PppField13: TppField
      FieldAlias = 'NCEP'
      FieldName = 'NCEP'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 12
      Searchable = False
      Sortable = False
    end
    object DBP_PppField14: TppField
      FieldAlias = 'CCOMPLEPREF'
      FieldName = 'CCOMPLEPREF'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 13
      Searchable = False
      Sortable = False
    end
    object DBP_PppField15: TppField
      FieldAlias = 'CCNPJ'
      FieldName = 'CCNPJ'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 14
      Searchable = False
      Sortable = False
    end
    object DBP_PppField16: TppField
      FieldAlias = 'CFONEPREF'
      FieldName = 'CFONEPREF'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 15
      Searchable = False
      Sortable = False
    end
    object DBP_PppField17: TppField
      FieldAlias = 'CCONTATOPREF'
      FieldName = 'CCONTATOPREF'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 16
      Searchable = False
      Sortable = False
    end
    object DBP_PppField18: TppField
      FieldAlias = 'CPONTOREM'
      FieldName = 'CPONTOREM'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 17
      Searchable = False
      Sortable = False
    end
    object DBP_PppField19: TppField
      FieldAlias = 'CENDPREF'
      FieldName = 'CENDPREF'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 18
      Searchable = False
      Sortable = False
    end
    object DBP_PppField20: TppField
      FieldAlias = 'MUNICIPIO'
      FieldName = 'MUNICIPIO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 19
      Searchable = False
      Sortable = False
    end
    object DBP_PppField21: TppField
      FieldAlias = 'CXPOSTAL'
      FieldName = 'CXPOSTAL'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 20
      Searchable = False
      Sortable = False
    end
    object DBP_PppField22: TppField
      FieldAlias = 'NNUMERO'
      FieldName = 'NNUMERO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 21
      Searchable = False
      Sortable = False
    end
    object DBP_PppField23: TppField
      FieldAlias = 'CUF'
      FieldName = 'CUF'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 22
      Searchable = False
      Sortable = False
    end
    object DBP_PppField24: TppField
      FieldAlias = 'CLISTATAB'
      FieldName = 'CLISTATAB'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 23
      Searchable = False
      Sortable = False
    end
    object DBP_PppField25: TppField
      FieldAlias = 'NPMNOTCE'
      FieldName = 'NPMNOTCE'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 24
      Searchable = False
      Sortable = False
    end
    object DBP_PppField26: TppField
      FieldAlias = 'NMESPGTO'
      FieldName = 'NMESPGTO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 25
      Searchable = False
      Sortable = False
    end
    object DBP_PppField27: TppField
      FieldAlias = 'NANOPGTO'
      FieldName = 'NANOPGTO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 26
      Searchable = False
      Sortable = False
    end
    object DBP_PppField28: TppField
      FieldAlias = 'NPERPATRON'
      FieldName = 'NPERPATRON'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 27
      Searchable = False
      Sortable = False
    end
    object DBP_PppField29: TppField
      FieldAlias = 'NPERPROP'
      FieldName = 'NPERPROP'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 28
      Searchable = False
      Sortable = False
    end
    object DBP_PppField30: TppField
      FieldAlias = 'NMESCOMP'
      FieldName = 'NMESCOMP'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 29
      Searchable = False
      Sortable = False
    end
    object DBP_PppField31: TppField
      FieldAlias = 'NANOCOMP'
      FieldName = 'NANOCOMP'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 30
      Searchable = False
      Sortable = False
    end
  end
  object DBP_GERAL: TppDBPipeline
    DataSource = DTS_GERAL
    UserName = 'DBP_GERAL'
    Left = 396
    Top = 20
    object DBP_GERALppField1: TppField
      FieldAlias = 'ddatavenci'
      FieldName = 'ddatavenci'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 0
    end
    object DBP_GERALppField2: TppField
      FieldAlias = 'cdescricao'
      FieldName = 'cdescricao'
      FieldLength = 20
      DisplayWidth = 20
      Position = 1
    end
    object DBP_GERALppField3: TppField
      Alignment = taRightJustify
      FieldAlias = 'valor'
      FieldName = 'valor'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 2
    end
  end
end
