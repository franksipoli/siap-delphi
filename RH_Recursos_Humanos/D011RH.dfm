object DTM_A011RH: TDTM_A011RH
  OldCreateOrder = False
  Left = 185
  Top = 144
  Height = 375
  Width = 544
  object QRY_096: TOraQuery
    SQL.Strings = (
      'select'
      '  nidtbxtpm,'
      '  cdescritpm,'
      '  nidtbxgmv,'
      '  ctiporvg,'
      '  cdescrists'
      'from'
      '  tbxtpm,'
      '  tbxsts'
      'where'
      '  tbxtpm.cfixast = '#39'S'#39' and'
      '  tbxtpm.nidtbxgmv <> '
      ' (select nidtbxgmv from tbxtpm where nidtbxtpm = '
      
        ' (select nidtbxtpm from tagmvf where nidtagffu = :nidtagffu and ' +
        'cmvfinicio = '#39'S'#39')) and'
      ' tbxsts.nidtbxsts = tbxtpm.nidtbxsts')
    Left = 32
    Top = 92
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'nidtagffu'
      end>
    object QRY_096NIDTBXTPM: TFloatField
      FieldName = 'NIDTBXTPM'
      Required = True
    end
    object QRY_096CDESCRITPM: TStringField
      FieldName = 'CDESCRITPM'
      Required = True
      Size = 50
    end
    object QRY_096CTIPORVG: TStringField
      FieldName = 'CTIPORVG'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QRY_096CDESCRISTS: TStringField
      FieldName = 'CDESCRISTS'
      Required = True
      Size = 30
    end
    object QRY_096NIDTBXGMV: TFloatField
      FieldName = 'NIDTBXGMV'
    end
  end
  object DTS_096: TOraDataSource
    AutoEdit = False
    DataSet = QRY_096
    Left = 104
    Top = 92
  end
  object QRY_108: TOraQuery
    SQLInsert.Strings = (
      'INSERT INTO tagmvf'
      
        '  (NIDTAGMVF, DDTINICIAL, DDTFINAL, CPROCAUTOM, CTIPOLACTO, CMVF' +
        'INICIO, CMVFATUAL, NIDTBXTPM, NIDTAGFFU, NIDMVFORI)'
      'VALUES'
      
        '  (:NIDTAGMVF, :DDTINICIAL, :DDTFINAL, :CPROCAUTOM, :CTIPOLACTO,' +
        ' :CMVFINICIO, :CMVFATUAL, :NIDTBXTPM, :NIDTAGFFU, :NIDMVFORI)')
    SQLDelete.Strings = (
      'DELETE FROM tagmvf'
      'WHERE'
      '  NIDTAGMVF = :NIDTAGMVF')
    SQLUpdate.Strings = (
      'UPDATE tagmvf'
      'SET'
      '  NIDTAGMVF = :NIDTAGMVF,'
      '  DDTINICIAL = :DDTINICIAL,'
      '  DDTFINAL = :DDTFINAL,'
      '  CPROCAUTOM = :CPROCAUTOM,'
      '  CTIPOLACTO = :CTIPOLACTO,'
      '  CMVFINICIO = :CMVFINICIO,'
      '  CMVFATUAL = :CMVFATUAL,'
      '  NIDTBXTPM = :NIDTBXTPM,'
      '  NIDTAGFFU = :NIDTAGFFU,'
      '  NIDMVFORI = :NIDMVFORI'
      'WHERE'
      '  NIDTAGMVF = :OLD_NIDTAGMVF')
    SQLLock.Strings = (
      'SELECT * FROM tagmvf'
      'WHERE'
      '  NIDTAGMVF = :NIDTAGMVF'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      'WHERE'
      '  NIDTAGMVF = :NIDTAGMVF')
    SQL.Strings = (
      'select'
      '  tagmvf.*,'
      '  tbxtpm.cdescritpm,'
      '  tbxtpm.nidtbxgmv,'
      '  tbxsts.cdescrists'
      'from'
      '  tagmvf,'
      '  tbxtpm,'
      '  tbxsts'
      'where'
      '  tagmvf.nidtagffu = :nidtagffu and'
      '  tbxtpm.nidtbxtpm = tagmvf.nidtbxtpm and'
      '  tbxsts.nidtbxsts(+) = tbxtpm.nidtbxsts')
    Left = 32
    Top = 20
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'nidtagffu'
      end>
    object QRY_108NIDTAGMVF: TFloatField
      FieldName = 'NIDTAGMVF'
      Required = True
    end
    object QRY_108DDTINICIAL: TDateTimeField
      FieldName = 'DDTINICIAL'
      Required = True
      DisplayFormat = 'dd/mm/yyyy'
    end
    object QRY_108DDTFINAL: TDateTimeField
      FieldName = 'DDTFINAL'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object QRY_108CPROCAUTOM: TStringField
      DefaultExpression = 'N'
      FieldName = 'CPROCAUTOM'
      FixedChar = True
      Size = 1
    end
    object QRY_108CTIPOLACTO: TStringField
      DefaultExpression = 'M'
      FieldName = 'CTIPOLACTO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QRY_108CMVFINICIO: TStringField
      DefaultExpression = 'N'
      FieldName = 'CMVFINICIO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QRY_108CMVFATUAL: TStringField
      DefaultExpression = 'N'
      FieldName = 'CMVFATUAL'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QRY_108NIDTBXTPM: TFloatField
      FieldName = 'NIDTBXTPM'
    end
    object QRY_108NIDTAGFFU: TFloatField
      FieldName = 'NIDTAGFFU'
      Required = True
    end
    object QRY_108CDESCRITPM: TStringField
      FieldName = 'CDESCRITPM'
      Size = 50
    end
    object QRY_108CDESCRISTS: TStringField
      FieldName = 'CDESCRISTS'
      Size = 30
    end
    object QRY_108NIDMVFORI: TFloatField
      FieldName = 'NIDMVFORI'
    end
    object QRY_108NIDTBXGMV: TFloatField
      FieldName = 'NIDTBXGMV'
    end
  end
  object DTS_108: TOraDataSource
    AutoEdit = False
    DataSet = QRY_108
    Left = 104
    Top = 20
  end
  object SPR_ATUASTATUS: TOraStoredProc
    StoredProcName = 'pmg.ATUASTATUSFUN'
    SQL.Strings = (
      'begin'
      '  pmg.ATUASTATUSFUN(:NIDFICHA, :NMES, :NANO);'
      'end;')
    Left = 244
    Top = 16
    ParamData = <
      item
        DataType = ftFloat
        Name = 'NIDFICHA'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'NMES'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'NANO'
        ParamType = ptInput
      end>
  end
  object SPR_RVGAUTOM: TOraStoredProc
    StoredProcName = 'pmg.RVGAUTOMATICA'
    SQL.Strings = (
      'begin'
      '  pmg.RVGAUTOMATICA(:NIDFICHA, :NMES, :NANO);'
      'end;')
    Left = 248
    Top = 76
    ParamData = <
      item
        DataType = ftFloat
        Name = 'NIDFICHA'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'NMES'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'NANO'
        ParamType = ptInput
      end>
  end
  object QRY_CONSULTA: TOraQuery
    SQL.Strings = (
      'select * from tagmvf'
      'where'
      '  nidtagffu = :nidtagffu and'
      '  ddtinicial <= :dataini and'
      '  ddtfinal >= :datafim and '
      '  ctipolacto = '#39'M'#39' and'
      '  nidtagmvf <> :nidtagmvf')
    Left = 32
    Top = 172
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'nidtagffu'
      end
      item
        DataType = ftUnknown
        Name = 'dataini'
      end
      item
        DataType = ftUnknown
        Name = 'datafim'
      end
      item
        DataType = ftUnknown
        Name = 'nidtagmvf'
      end>
  end
end
