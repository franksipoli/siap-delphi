object DTM_A014RH: TDTM_A014RH
  OldCreateOrder = False
  Left = 192
  Top = 107
  Height = 375
  Width = 544
  object QRY_119: TOraQuery
    SQLInsert.Strings = (
      'INSERT INTO tagvgc'
      
        '  (NIDTAGVGC, NPERCVGC, DDATAINI, DDATAFIM, NIDTAGFFU, NIDTBXVTG' +
        ')'
      'VALUES'
      
        '  (:NIDTAGVGC, :NPERCVGC, :DDATAINI, :DDATAFIM, :NIDTAGFFU, :NID' +
        'TBXVTG)')
    SQLDelete.Strings = (
      'DELETE FROM tagvgc'
      'WHERE'
      '  NIDTAGVGC = :NIDTAGVGC')
    SQLUpdate.Strings = (
      'UPDATE tagvgc'
      'SET'
      '  NIDTAGVGC = :NIDTAGVGC,'
      '  NPERCVGC = :NPERCVGC,'
      '  DDATAINI = :DDATAINI,'
      '  DDATAFIM = :DDATAFIM,'
      '  NIDTAGFFU = :NIDTAGFFU,'
      '  NIDTBXVTG = :NIDTBXVTG'
      'WHERE'
      '  NIDTAGVGC = :OLD_NIDTAGVGC')
    SQLLock.Strings = (
      'SELECT * FROM tagvgc'
      'WHERE'
      '  NIDTAGVGC = :NIDTAGVGC'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      'WHERE'
      '  NIDTAGVGC = :NIDTAGVGC')
    SQL.Strings = (
      'select'
      '  tbxvtg.cdescrivtg,'
      '  tagvgc.nidtbxvtg,'
      '  npercvgc,'
      '  ddataini,'
      '  ddatafim,'
      '  nidtagffu,'
      '  nidtagvgc,'
      
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
      '  tagslr.nidtagslr(+) = tbxvtg.nidtagslr'
      'order by dat_dias desc')
    AfterScroll = QRY_119AfterScroll
    Left = 24
    Top = 20
    ParamData = <
      item
        DataType = ftFloat
        Name = 'nvalorsal'
      end>
    object QRY_119CDESCRIVTG: TStringField
      FieldName = 'CDESCRIVTG'
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
    object QRY_119NIDTBXVTG: TFloatField
      FieldName = 'NIDTBXVTG'
      Required = True
    end
    object QRY_119DDATAINI: TDateTimeField
      FieldName = 'DDATAINI'
      Required = True
    end
    object QRY_119DDATAFIM: TDateTimeField
      FieldName = 'DDATAFIM'
    end
    object QRY_119NIDTAGFFU: TFloatField
      FieldName = 'NIDTAGFFU'
    end
    object QRY_119NIDTAGVGC: TFloatField
      FieldName = 'NIDTAGVGC'
      Required = True
    end
  end
  object DTS_119: TOraDataSource
    AutoEdit = False
    DataSet = QRY_119
    Left = 96
    Top = 20
  end
  object QRY_098: TOraQuery
    SQL.Strings = (
      'select'
      '  tbxvtg.*,'
      '  tagslr.nvalorslr'
      'from'
      '  tbxvtg,'
      '  tagslr'
      'where'
      '  tagslr.nidtagslr(+) = tbxvtg.nidtagslr'
      '  ')
    Left = 24
    Top = 80
  end
  object DTS_098: TOraDataSource
    AutoEdit = False
    DataSet = QRY_098
    Left = 96
    Top = 80
  end
end
