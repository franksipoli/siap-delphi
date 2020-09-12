object DTM_A041RH: TDTM_A041RH
  OldCreateOrder = False
  Left = 51
  Top = 134
  Height = 479
  Width = 741
  object QRY_074: TOraQuery
    SQLInsert.Strings = (
      'INSERT INTO cadeve'
      
        '  (NIDCADEVE, CDESCRIEVE, CSTATUSEVE, NFATOREVE, NSQCALCULO, NCO' +
        'DLANCTO, NIDTBXRCL, NIDTBXGEV, NIDTBXFLC, NIDTBXTFP, NIDTBXTEV, ' +
        'NIDTBXCFP, NIDTBXVPD, NIDTBXREF)'
      'VALUES'
      
        '  (:NIDCADEVE, :CDESCRIEVE, :CSTATUSEVE, :NFATOREVE, :NSQCALCULO' +
        ', :NCODLANCTO, :NIDTBXRCL, :NIDTBXGEV, :NIDTBXFLC, :NIDTBXTFP, :' +
        'NIDTBXTEV, :NIDTBXCFP, :NIDTBXVPD, :NIDTBXREF)')
    SQLDelete.Strings = (
      'DELETE FROM cadeve'
      'WHERE'
      '  NIDCADEVE = :NIDCADEVE')
    SQLUpdate.Strings = (
      'UPDATE cadeve'
      'SET'
      '  NIDCADEVE = :NIDCADEVE,'
      '  CDESCRIEVE = :CDESCRIEVE,'
      '  CSTATUSEVE = :CSTATUSEVE,'
      '  NFATOREVE = :NFATOREVE,'
      '  NSQCALCULO = :NSQCALCULO,'
      '  NCODLANCTO = :NCODLANCTO,'
      '  NIDTBXRCL = :NIDTBXRCL,'
      '  NIDTBXGEV = :NIDTBXGEV,'
      '  NIDTBXFLC = :NIDTBXFLC,'
      '  NIDTBXTFP = :NIDTBXTFP,'
      '  NIDTBXTEV = :NIDTBXTEV,'
      '  NIDTBXCFP = :NIDTBXCFP,'
      '  NIDTBXVPD = :NIDTBXVPD,'
      '  NIDTBXREF = :NIDTBXREF'
      'WHERE'
      '  NIDCADEVE = :OLD_NIDCADEVE')
    SQLLock.Strings = (
      'SELECT * FROM cadeve'
      'WHERE'
      '  NIDCADEVE = :NIDCADEVE'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      'WHERE'
      '  NIDCADEVE = :NIDCADEVE')
    SQL.Strings = (
      'select'
      '  *'
      'from'
      '  cadeve')
    AfterScroll = QRY_074AfterScroll
    Left = 24
    Top = 16
    object QRY_074NIDCADEVE: TFloatField
      DefaultExpression = '0'
      FieldName = 'NIDCADEVE'
      Required = True
    end
    object QRY_074CDESCRIEVE: TStringField
      FieldName = 'CDESCRIEVE'
      Required = True
      Size = 30
    end
    object QRY_074CSTATUSEVE: TStringField
      FieldName = 'CSTATUSEVE'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QRY_074NFATOREVE: TFloatField
      FieldName = 'NFATOREVE'
      Required = True
    end
    object QRY_074NSQCALCULO: TFloatField
      FieldName = 'NSQCALCULO'
      Required = True
    end
    object QRY_074NCODLANCTO: TFloatField
      FieldName = 'NCODLANCTO'
      Required = True
    end
    object QRY_074NIDTBXRCL: TFloatField
      FieldName = 'NIDTBXRCL'
      Required = True
    end
    object QRY_074NIDTBXGEV: TFloatField
      FieldName = 'NIDTBXGEV'
      Required = True
    end
    object QRY_074NIDTBXFLC: TFloatField
      FieldName = 'NIDTBXFLC'
      Required = True
    end
    object QRY_074NIDTBXTFP: TFloatField
      FieldName = 'NIDTBXTFP'
    end
    object QRY_074NIDTBXTEV: TFloatField
      FieldName = 'NIDTBXTEV'
      Required = True
    end
    object QRY_074NIDTBXCFP: TFloatField
      FieldName = 'NIDTBXCFP'
      Required = True
    end
    object QRY_074NIDTBXVPD: TFloatField
      FieldName = 'NIDTBXVPD'
    end
    object QRY_074NIDTBXREF: TFloatField
      FieldName = 'NIDTBXREF'
      Required = True
    end
  end
  object DTS_074: TOraDataSource
    AutoEdit = False
    DataSet = QRY_074
    OnStateChange = DTS_074StateChange
    Left = 96
    Top = 16
  end
  object QRY_148: TOraQuery
    SQL.Strings = (
      'select'
      ' *'
      'from '
      '  tbxtev')
    Left = 24
    Top = 80
    object QRY_148NIDTBXTEV: TFloatField
      FieldName = 'NIDTBXTEV'
      Required = True
    end
    object QRY_148CDESCRITEV: TStringField
      FieldName = 'CDESCRITEV'
      Required = True
      Size = 40
    end
  end
  object DST_148: TOraDataSource
    AutoEdit = False
    DataSet = QRY_148
    Left = 96
    Top = 80
  end
  object QRY_149: TOraQuery
    SQL.Strings = (
      'select'
      '  *'
      'from'
      '  tbxtfp')
    Left = 28
    Top = 140
    object QRY_149NIDTBXTFP: TFloatField
      FieldName = 'NIDTBXTFP'
      Required = True
    end
    object QRY_149CDESCRITFP: TStringField
      FieldName = 'CDESCRITFP'
      Required = True
      Size = 40
    end
    object QRY_149CCODANT: TStringField
      FieldName = 'CCODANT'
      Size = 3
    end
  end
  object DTS_149: TOraDataSource
    AutoEdit = False
    DataSet = QRY_149
    Left = 96
    Top = 140
  end
  object QRY_143: TOraQuery
    SQL.Strings = (
      'select'
      '  *'
      'from'
      '  tbxgev')
    Left = 28
    Top = 200
    object QRY_143NIDTBXGEV: TFloatField
      FieldName = 'NIDTBXGEV'
      Required = True
    end
    object QRY_143CDESCRIGEV: TStringField
      FieldName = 'CDESCRIGEV'
      Required = True
      Size = 40
    end
  end
  object DTS_143: TOraDataSource
    DataSet = QRY_143
    Left = 96
    Top = 200
  end
  object QRY_142: TOraQuery
    SQL.Strings = (
      'select'
      '  *'
      'from'
      '  tbxflc'
      '')
    Left = 188
    Top = 20
    object QRY_142NIDTBXFLC: TFloatField
      FieldName = 'NIDTBXFLC'
      Required = True
    end
    object QRY_142CDESCRIFLC: TStringField
      FieldName = 'CDESCRIFLC'
      Required = True
      Size = 40
    end
  end
  object DTS_142: TOraDataSource
    DataSet = QRY_142
    Left = 260
    Top = 20
  end
  object QRY_147: TOraQuery
    SQL.Strings = (
      'select'
      '  *'
      'from'
      '  tbxref')
    Left = 192
    Top = 80
    object QRY_147NIDTBXREF: TFloatField
      FieldName = 'NIDTBXREF'
      Required = True
    end
    object QRY_147CDESCRIREF: TStringField
      FieldName = 'CDESCRIREF'
      Required = True
      Size = 10
    end
  end
  object DTS_147: TOraDataSource
    DataSet = QRY_147
    Left = 264
    Top = 80
  end
  object QRY_146: TOraQuery
    SQL.Strings = (
      'select'
      '  *'
      'from'
      '  tbxrcl')
    Left = 192
    Top = 140
    object QRY_146NIDTBXRCL: TFloatField
      FieldName = 'NIDTBXRCL'
      Required = True
    end
    object QRY_146CDESCRIRCL: TStringField
      FieldName = 'CDESCRIRCL'
      Required = True
      Size = 40
    end
    object QRY_146CCODANT: TStringField
      FieldName = 'CCODANT'
      Size = 3
    end
  end
  object DTS_146: TOraDataSource
    DataSet = QRY_146
    Left = 264
    Top = 140
  end
  object QRY_139: TOraQuery
    SQL.Strings = (
      'select'
      '  *'
      'from'
      '  tbxcfp')
    Left = 196
    Top = 200
    object QRY_139NIDTBXCFP: TFloatField
      FieldName = 'NIDTBXCFP'
      Required = True
    end
    object QRY_139CDESCRICFP: TStringField
      FieldName = 'CDESCRICFP'
      Required = True
      Size = 40
    end
    object QRY_139CCODANT: TStringField
      FieldName = 'CCODANT'
      Size = 3
    end
  end
  object DTS_139: TOraDataSource
    DataSet = QRY_139
    Left = 268
    Top = 200
  end
  object QRY_127: TOraQuery
    SQL.Strings = (
      'select'
      '  *'
      'from'
      '  tbxvpd'
      'where'
      '  nidtbxvpd = :nidtbxvpd')
    MasterSource = DTS_074
    Left = 28
    Top = 268
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'nidtbxvpd'
      end>
    object QRY_127NIDTBXVPD: TFloatField
      FieldName = 'NIDTBXVPD'
      Required = True
    end
    object QRY_127CDESCRVPD: TStringField
      FieldName = 'CDESCRVPD'
      Size = 30
    end
    object QRY_127NCODTCE: TFloatField
      FieldName = 'NCODTCE'
    end
  end
  object DTS_127: TOraDataSource
    DataSet = QRY_127
    Left = 96
    Top = 268
  end
  object QRY_131: TOraQuery
    SQLInsert.Strings = (
      'INSERT INTO tagbsc'
      '  (NIDTAGBSC, NIDEVEBSC, NIDCADEVE)'
      'VALUES'
      '  (:NIDTAGBSC, :NIDEVEBSC, :NIDCADEVE)')
    SQLDelete.Strings = (
      'DELETE FROM tagbsc'
      'WHERE'
      '  NIDTAGBSC = :NIDTAGBSC')
    SQLUpdate.Strings = (
      'UPDATE tagbsc'
      'SET'
      '  NIDTAGBSC = :NIDTAGBSC,'
      '  NIDEVEBSC = :NIDEVEBSC,'
      '  NIDCADEVE = :NIDCADEVE'
      'WHERE'
      '  NIDTAGBSC = :OLD_NIDTAGBSC')
    SQLLock.Strings = (
      'SELECT * FROM tagbsc'
      'WHERE'
      '  NIDTAGBSC = :NIDTAGBSC'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      'WHERE'
      '  NIDTAGBSC = :NIDTAGBSC')
    SQL.Strings = (
      'select'
      '  tagbsc.*,'
      '  cadeve.cdescrieve'
      'from'
      '  tagbsc,'
      '  cadeve'
      'where'
      '  tagbsc.nidcadeve = :nidcadeve and'
      '  cadeve.nidcadeve = tagbsc.nidevebsc'
      'order by'
      '  cadeve.cdescrieve')
    MasterSource = DTS_074
    CachedUpdates = True
    Left = 196
    Top = 260
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'nidcadeve'
      end>
    object QRY_131NIDTAGBSC: TFloatField
      DefaultExpression = '0'
      FieldName = 'NIDTAGBSC'
      Required = True
    end
    object QRY_131NIDEVEBSC: TFloatField
      FieldName = 'NIDEVEBSC'
      Required = True
    end
    object QRY_131NIDCADEVE: TFloatField
      FieldName = 'NIDCADEVE'
      Required = True
    end
    object QRY_131CDESCRIEVE: TStringField
      FieldName = 'CDESCRIEVE'
      Required = True
      Size = 30
    end
  end
  object DTS_131: TOraDataSource
    DataSet = QRY_131
    Left = 272
    Top = 260
  end
  object QRY_074_1: TOraQuery
    SQLInsert.Strings = (
      'INSERT INTO cadeve'
      
        '  (NIDCADEVE, CDESCRIEVE, CSTATUSEVE, NFATOREVE, NSQCALCULO, NCO' +
        'DLANCTO, NIDTBXRCL, NIDTBXGEV, NIDTBXFLC, NIDTBXTFP, NIDTBXTEV, ' +
        'NIDTBXCFP, NIDTBXVPD, NIDTBXREF)'
      'VALUES'
      
        '  (:NIDCADEVE, :CDESCRIEVE, :CSTATUSEVE, :NFATOREVE, :NSQCALCULO' +
        ', :NCODLANCTO, :NIDTBXRCL, :NIDTBXGEV, :NIDTBXFLC, :NIDTBXTFP, :' +
        'NIDTBXTEV, :NIDTBXCFP, :NIDTBXVPD, :NIDTBXREF)')
    SQLDelete.Strings = (
      'DELETE FROM cadeve'
      'WHERE'
      '  NIDCADEVE = :NIDCADEVE')
    SQLUpdate.Strings = (
      'UPDATE cadeve'
      'SET'
      '  NIDCADEVE = :NIDCADEVE,'
      '  CDESCRIEVE = :CDESCRIEVE,'
      '  CSTATUSEVE = :CSTATUSEVE,'
      '  NFATOREVE = :NFATOREVE,'
      '  NSQCALCULO = :NSQCALCULO,'
      '  NCODLANCTO = :NCODLANCTO,'
      '  NIDTBXRCL = :NIDTBXRCL,'
      '  NIDTBXGEV = :NIDTBXGEV,'
      '  NIDTBXFLC = :NIDTBXFLC,'
      '  NIDTBXTFP = :NIDTBXTFP,'
      '  NIDTBXTEV = :NIDTBXTEV,'
      '  NIDTBXCFP = :NIDTBXCFP,'
      '  NIDTBXVPD = :NIDTBXVPD,'
      '  NIDTBXREF = :NIDTBXREF'
      'WHERE'
      '  NIDCADEVE = :OLD_NIDCADEVE')
    SQLLock.Strings = (
      'SELECT * FROM cadeve'
      'WHERE'
      '  NIDCADEVE = :NIDCADEVE'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      'WHERE'
      '  NIDCADEVE = :NIDCADEVE')
    SQL.Strings = (
      'select'
      '  *'
      'from '
      '  cadeve,'
      '  tbxtev'
      'where'
      
        '  nidcadeve not in (select nidevebsc from tagbsc where nidcadeve' +
        ' = :nidcadeve) and'
      '  nidtbxtfp = :nidtbxtfp and'
      '  cadeve.nidtbxtev = tbxtev.nidtbxtev and'
      '  (cdescritev = '#39'VENCIMENTO'#39' or cdescritev = '#39'DESCONTO'#39') '
      'order by'
      '  cadeve.cdescrieve')
    MasterSource = DTS_074
    CachedUpdates = True
    Left = 196
    Top = 320
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'nidcadeve'
      end
      item
        DataType = ftUnknown
        Name = 'nidtbxtfp'
      end>
    object QRY_074_1NIDCADEVE: TFloatField
      FieldName = 'NIDCADEVE'
    end
    object QRY_074_1CDESCRIEVE: TStringField
      FieldName = 'CDESCRIEVE'
      Required = True
      Size = 30
    end
    object QRY_074_1CSTATUSEVE: TStringField
      FieldName = 'CSTATUSEVE'
      FixedChar = True
      Size = 1
    end
    object QRY_074_1NFATOREVE: TFloatField
      FieldName = 'NFATOREVE'
    end
    object QRY_074_1NSQCALCULO: TFloatField
      FieldName = 'NSQCALCULO'
    end
    object QRY_074_1NCODLANCTO: TFloatField
      FieldName = 'NCODLANCTO'
    end
    object QRY_074_1NIDTBXRCL: TFloatField
      FieldName = 'NIDTBXRCL'
    end
    object QRY_074_1NIDTBXGEV: TFloatField
      FieldName = 'NIDTBXGEV'
    end
    object QRY_074_1NIDTBXFLC: TFloatField
      FieldName = 'NIDTBXFLC'
    end
    object QRY_074_1NIDTBXTFP: TFloatField
      FieldName = 'NIDTBXTFP'
    end
    object QRY_074_1NIDTBXTEV: TFloatField
      FieldName = 'NIDTBXTEV'
    end
    object QRY_074_1NIDTBXCFP: TFloatField
      FieldName = 'NIDTBXCFP'
    end
    object QRY_074_1NIDTBXVPD: TFloatField
      FieldName = 'NIDTBXVPD'
    end
    object QRY_074_1NIDTBXREF: TFloatField
      FieldName = 'NIDTBXREF'
    end
  end
  object DTS_074_1: TOraDataSource
    DataSet = QRY_074_1
    Left = 272
    Top = 320
  end
end
