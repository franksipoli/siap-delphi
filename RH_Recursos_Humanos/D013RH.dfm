object DTM_A013RH: TDTM_A013RH
  OldCreateOrder = False
  Left = 179
  Top = 145
  Height = 232
  Width = 417
  object QRY_119: TOraQuery
    SQL.Strings = (
      'select'
      '  tbxvtg.cdescrivtg,'
      '  npercvgc,'
      
        '  to_number(Decode(tagslr.nvalorslr,null,:nvalorsal,tagslr.nvalo' +
        'rslr)) as nvalorslr,'
      '  diasvtg(ddataini,ddatafim) as DAT_dias,'
      
        '  CalculaVtg(Decode(tagslr.nvalorslr,null,:nvalorsal,tagslr.nval' +
        'orslr),'
      '  diasvtg(ddataini,ddatafim),npercvgc) as DAT_valor '
      'from '
      '  tagvgc,'
      '  tbxvtg, '
      '  tagslr'
      'where'
      '  nidtagffu = 6 and'
      '  tbxvtg.nidtbxvtg = tagvgc.nidtbxvtg and'
      '  tagslr.nidtagslr(+) = tbxvtg.nidtagslr and'
      '  diasvtg(ddataini,ddatafim) > 0 ')
    Left = 24
    Top = 20
    ParamData = <
      item
        DataType = ftFloat
        Name = 'nvalorsal'
      end>
    object QRY_119CDESCRIVTG: TStringField
      FieldName = 'CDESCRIVTG'
      Required = True
      Size = 40
    end
    object QRY_119NPERCVGC: TFloatField
      FieldName = 'NPERCVGC'
      Required = True
    end
    object QRY_119DAT_DIAS: TFloatField
      FieldName = 'DAT_DIAS'
    end
    object QRY_119DAT_VALOR: TFloatField
      FieldName = 'DAT_VALOR'
      currency = True
    end
    object QRY_119NVALORSLR: TFloatField
      FieldName = 'NVALORSLR'
      currency = True
    end
  end
  object DTS_119: TOraDataSource
    DataSet = QRY_119
    Left = 92
    Top = 20
  end
end
