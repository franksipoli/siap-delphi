object DTM_A038RH: TDTM_A038RH
  OldCreateOrder = False
  Left = 113
  Top = 92
  Height = 432
  Width = 604
  object QRY_029: TOraQuery
    SQL.Strings = (
      'select'
      '  cadser.nidcadser,'
      '  cadgrl.cnomegrl'
      'from'
      '  cadser,'
      '  cadgrl'
      'where'
      '  cadser.nidcadser = :nidcadser and'
      '  cadgrl.nidcadgrl = cadser.nidcadgrl'
      'order by cnomegrl')
    Left = 20
    Top = 16
    ParamData = <
      item
        DataType = ftInteger
        Name = 'nidcadser'
      end>
  end
  object DTS_029: TOraDataSource
    DataSet = QRY_029
    Left = 92
    Top = 16
  end
  object QRY_077: TOraQuery
    SQL.Strings = (
      'select'
      '  nidtagffu,'
      '  cadcrg.cdescricrg,'
      '  ncodfunold  '
      'from'
      '  tagffu,'
      '  cadcrg'
      'where'
      '  nidcadser = :nidcadser and'
      '  cadcrg.nidcadcrg = tagffu.nidcadcrg')
    MasterSource = DTS_029
    Left = 20
    Top = 80
    ParamData = <
      item
        DataType = ftFloat
        Name = 'NIDCADSER'
        ParamType = ptInput
        Value = 4400
      end>
  end
  object QRY_118: TOraQuery
    SQL.Strings = (
      'select'
      '  distinct '
      '  nanoref,'
      '  nmesref,'
      '  nmesref||'#39'/'#39'||nanoref||tbxtfp.cdescritfp as dat_ref,'
      '  tbxtfp.nidtbxtfp,'
      '  tbxtfp.cdescritfp,'
      '  nanopag,'
      '  nmespag '
      'from'
      '  tagpag,'
      '  tbxtfp'
      'where'
      '  nidtagffu = :nidtagffu and'
      '  tbxtfp.nidtbxtfp = tagpag.nidtbxtfp'
      'order by'
      '  nanopag desc, nmespag desc  ')
    MasterSource = DTS_077
    Left = 24
    Top = 144
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'nidtagffu'
      end>
    object QRY_118NANOREF: TFloatField
      FieldName = 'NANOREF'
    end
    object QRY_118NMESREF: TFloatField
      FieldName = 'NMESREF'
      OnGetText = QRY_118NMESREFGetText
    end
    object QRY_118DAT_REF: TStringField
      FieldName = 'DAT_REF'
      Size = 81
    end
    object QRY_118CDESCRITFP: TStringField
      FieldName = 'CDESCRITFP'
      Required = True
      Size = 40
    end
    object QRY_118NANOPAG: TFloatField
      FieldName = 'NANOPAG'
    end
    object QRY_118NMESPAG: TFloatField
      FieldName = 'NMESPAG'
    end
    object QRY_118NIDTBXTFP: TFloatField
      FieldName = 'NIDTBXTFP'
      Required = True
    end
  end
  object DTS_077: TOraDataSource
    DataSet = QRY_077
    Left = 100
    Top = 80
  end
  object DTS_118: TOraDataSource
    DataSet = QRY_118
    Left = 100
    Top = 144
  end
  object QRY_118_1: TOraQuery
    SQL.Strings = (
      'select'
      '  cadeve.nidcadeve,'
      '  cadeve.cdescrieve,'
      '  cadeve.ncodlancto,'
      '  tagpag.nreferpag,'
      '  tbxref.cdescriref,'
      '  Decode(cadeve.nidtbxtev,1,tagpag.nvalorpag,null) as dat_venc,'
      '  Decode(cadeve.nidtbxtev,2,tagpag.nvalorpag,null) as dat_descon'
      'from'
      '  tagpag,'
      '  cadeve,'
      '  tbxref'
      'where'
      '  tagpag.nidtagffu = :nidtagffu and'
      '  tagpag.nmesref = :nmesref and'
      '  tagpag.nanoref = :nanoref and'
      '  tagpag.nidtbxtfp = :nidtbxtfp and'
      '  cadeve.nidtbxtev in (1,2) and'
      '  cadeve.nidcadeve = tagpag.nidcadeve and'
      '  tbxref.nidtbxref = cadeve.nidtbxref'
      ''
      '  ')
    Left = 212
    Top = 16
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'nidtagffu'
      end
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
        Name = 'nidtbxtfp'
      end>
    object QRY_118_1NIDCADEVE: TFloatField
      FieldName = 'NIDCADEVE'
      Required = True
    end
    object QRY_118_1CDESCRIEVE: TStringField
      FieldName = 'CDESCRIEVE'
      Required = True
      Size = 30
    end
    object QRY_118_1NREFERPAG: TFloatField
      FieldName = 'NREFERPAG'
    end
    object QRY_118_1CDESCRIREF: TStringField
      FieldName = 'CDESCRIREF'
      Required = True
      OnGetText = QRY_118_1CDESCRIREFGetText
      Size = 10
    end
    object QRY_118_1NCODLANCTO: TFloatField
      FieldName = 'NCODLANCTO'
      Required = True
    end
    object QRY_118_1DAT_VENC: TFloatField
      FieldName = 'DAT_VENC'
      currency = True
    end
    object QRY_118_1DAT_DESCON: TFloatField
      FieldName = 'DAT_DESCON'
      currency = True
    end
  end
  object DTS_118_1: TOraDataSource
    DataSet = QRY_118_1
    Left = 304
    Top = 16
  end
  object QRY_118_2: TOraQuery
    SQL.Strings = (
      'select'
      '  cadeve.nidcadeve,'
      '  cadeve.cdescrieve,'
      '  cadeve.ncodlancto,'
      '  tagpag.nvalorpag  '
      'from'
      '  tagpag,'
      '  cadeve'
      'where'
      '  tagpag.nidtagffu = :nidtagffu and'
      '  tagpag.nmesref = :nmesref and'
      '  tagpag.nanoref = :nanoref and'
      '  tagpag.nidtbxtfp = :nidtbxtfp and'
      '  cadeve.nidtbxtev not in (1,2,6,7) and'
      '  cadeve.nidcadeve = tagpag.nidcadeve'
      '  ')
    Left = 212
    Top = 84
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'nidtagffu'
      end
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
        Name = 'nidtbxtfp'
      end>
    object QRY_118_2NIDCADEVE: TFloatField
      FieldName = 'NIDCADEVE'
      Required = True
    end
    object QRY_118_2CDESCRIEVE: TStringField
      FieldName = 'CDESCRIEVE'
      Required = True
      Size = 30
    end
    object QRY_118_2NVALORPAG: TFloatField
      FieldName = 'NVALORPAG'
      Required = True
      currency = True
    end
    object QRY_118_2NCODLANCTO: TFloatField
      FieldName = 'NCODLANCTO'
      Required = True
    end
  end
  object DTS_118_2: TOraDataSource
    DataSet = QRY_118_2
    Left = 304
    Top = 88
  end
  object QRY_118_3: TOraQuery
    SQL.Strings = (
      'select'
      '  tagpag.nvalorpag dat_descon,'
      '  pag.nvalorpag as dat_venc'
      'from'
      '  tagpag,'
      '  tagpag pag, '
      '  cadeve,'
      '  cadeve  evepag'
      'where'
      '  tagpag.nidtagffu = :nidtagffu and'
      '  tagpag.nmesref = :nmesref and'
      '  tagpag.nanoref = :nanoref and'
      '  tagpag.nidtbxtfp = :nidtbxtfp and'
      '  cadeve.nidtbxtev = 6  and'
      '  cadeve.nidcadeve = tagpag.nidcadeve and'
      '  pag.nidtagffu = :nidtagffu and'
      '  pag.nmesref = :nmesref and'
      '  pag.nanoref = :nanoref and'
      '  pag.nidtbxtfp = :nidtbxtfp and'
      '  evepag.nidtbxtev = 7  and'
      '  evepag.nidcadeve = pag.nidcadeve'
      ''
      '  ')
    Left = 216
    Top = 168
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'nidtagffu'
      end
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
        Name = 'nidtbxtfp'
      end>
    object QRY_118_3DAT_DESCON: TFloatField
      FieldName = 'DAT_DESCON'
      Required = True
      currency = True
    end
    object QRY_118_3DAT_VENC: TFloatField
      FieldName = 'DAT_VENC'
      Required = True
      currency = True
    end
  end
  object DTS_118_3: TOraDataSource
    DataSet = QRY_118_3
    Left = 308
    Top = 172
  end
end
