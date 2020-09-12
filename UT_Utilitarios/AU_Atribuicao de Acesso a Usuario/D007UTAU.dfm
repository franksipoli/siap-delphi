object DTM_A007UTAU: TDTM_A007UTAU
  OldCreateOrder = False
  Left = 203
  Top = 195
  Height = 224
  Width = 478
  object QRY_054: TOraQuery
    SQLInsert.Strings = (
      'INSERT INTO tbl_ud'
      
        '  (NIDTBL_U, NIDTBL_D, CCONDICAO, CTIPOMASCA, CTRATAMENT, NIDTBL' +
        '_UD, NUSUAUTOR)'
      'VALUES'
      
        '  (:NIDTBL_U, :NIDTBL_D, :CCONDICAO, :CTIPOMASCA, :CTRATAMENT, :' +
        'NIDTBL_UD, :NUSUAUTOR)')
    SQLDelete.Strings = (
      'DELETE FROM tbl_ud'
      'WHERE'
      '  NIDTBL_UD = :NIDTBL_UD')
    SQLUpdate.Strings = (
      'UPDATE tbl_ud'
      'SET'
      '  NIDTBL_U = :NIDTBL_U,'
      '  NIDTBL_D = :NIDTBL_D,'
      '  CCONDICAO = :CCONDICAO,'
      '  CTIPOMASCA = :CTIPOMASCA,'
      '  CTRATAMENT = :CTRATAMENT,'
      '  NIDTBL_UD = :NIDTBL_UD,'
      '  NUSUAUTOR = :NUSUAUTOR'
      'WHERE'
      '  NIDTBL_UD = :OLD_NIDTBL_UD')
    SQLLock.Strings = (
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      'WHERE'
      '  ud.NIDTBL_UD = :NIDTBL_UD')
    SQL.Strings = (
      'select ud.*, '
      'InitCap(tbl_d.cdesccampo) as cdesccampo, '
      'tbl_d.ctipocampo, '
      'tbl_u.cnomeusu,'
      
        'Decode((select nidtbl_ud from tbl_ud where nidtbl_u = :nIdOperad' +
        'or and nidtbl_d = ud.nidtbl_d ), '
      '  NULL, '#39'0'#39', '#39'1'#39') as DAT_ALTERAR '
      'from tbl_ud ud, tbl_d, tbl_u'
      'where ud.nidtbl_u = :nidtbl_u and'
      'tbl_d.nidtbl_d = ud.nidtbl_d and'
      'tbl_u.nidtbl_u = ud.nusuautor')
    Left = 112
    Top = 8
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'nIdOperador'
        Value = Null
      end
      item
        DataType = ftInteger
        Name = 'nidtbl_u'
        Value = Null
      end>
    object QRY_054CDESCCAMPO: TStringField
      FieldName = 'CDESCCAMPO'
      ProviderFlags = []
      Size = 50
    end
    object QRY_054CTIPOCAMPO: TStringField
      FieldName = 'CTIPOCAMPO'
      ProviderFlags = []
      Size = 1
    end
    object QRY_054NIDTBL_U: TIntegerField
      FieldName = 'NIDTBL_U'
    end
    object QRY_054NIDTBL_D: TIntegerField
      FieldName = 'NIDTBL_D'
    end
    object QRY_054CCONDICAO: TStringField
      FieldName = 'CCONDICAO'
      Size = 30
    end
    object QRY_054CTIPOMASCA: TStringField
      FieldName = 'CTIPOMASCA'
    end
    object QRY_054CTRATAMENT: TStringField
      FieldName = 'CTRATAMENT'
      Size = 1
    end
    object QRY_054NIDTBL_UD: TFloatField
      FieldName = 'NIDTBL_UD'
      Required = True
    end
    object QRY_054NUSUAUTOR: TFloatField
      FieldName = 'NUSUAUTOR'
    end
    object QRY_054CNOMEUSU: TStringField
      FieldName = 'CNOMEUSU'
      ProviderFlags = []
      Size = 10
    end
    object QRY_054DAT_ALTERAR: TStringField
      FieldName = 'DAT_ALTERAR'
      ProviderFlags = []
      Size = 1
    end
  end
  object QRY_CPOUSU: TOraQuery
    SQL.Strings = (
      
        'select distinct(InitCap(tbl_d.cdesccampo)) as cdesccampo, tbl_d.' +
        'ctipocampo, tbl_d.nidtbl_d'
      'from tbl_d,tbl_at, tbl_et, tbl_tmp'
      'where tbl_at.nidtbl_a = tbl_tmp.nidtbl_a and'
      'tbl_et.nidtbl_t = tbl_at.nidtbl_t and'
      'tbl_d.nidtbl_d = tbl_et.nidtbl_d and'
      'tbl_d.nidtbl_d not in ('
      'select distinct(tbl_ud.nidtbl_d)'
      'from tbl_d, tbl_ud, tbl_at, tbl_et, tbl_tmp'
      'where tbl_at.nidtbl_a = tbl_tmp.nidtbl_a and'
      'tbl_ud.nidtbl_u = :nidtbl_u and'
      'tbl_et.nidtbl_t = tbl_at.nidtbl_t and'
      'tbl_d.nidtbl_d = tbl_et.nidtbl_d and'
      'tbl_ud.nidtbl_d = tbl_d.nidtbl_d)'
      'order by cdesccampo'
      ''
      '')
    Left = 32
    Top = 8
    ParamData = <
      item
        DataType = ftInteger
        Name = 'nidtbl_u'
        ParamType = ptInput
        Value = 0
      end>
    object QRY_CPOUSUCDESCCAMPO: TStringField
      FieldName = 'CDESCCAMPO'
      ProviderFlags = []
      Size = 50
    end
    object QRY_CPOUSUNIDTBL_D: TFloatField
      FieldName = 'NIDTBL_D'
      ProviderFlags = []
    end
    object QRY_CPOUSUCTIPOCAMPO: TStringField
      FieldName = 'CTIPOCAMPO'
      ProviderFlags = []
      Size = 1
    end
  end
  object QRY_TEMP: TOraQuery
    SQL.Strings = (
      'begin'
      '  :RESULT := MPL_EQUIV.GETAPLICACOESUSU(:NIDTBL_U, :ORDERAPLI);'
      'end;')
    AutoCommit = False
    Left = 188
    Top = 8
    ParamData = <
      item
        DataType = ftCursor
        Name = 'RESULT'
        ParamType = ptOutput
        Value = 'Object'
      end
      item
        DataType = ftUnknown
        Name = 'NIDTBL_U'
      end
      item
        DataType = ftFloat
        Name = 'ORDERAPLI'
        ParamType = ptInput
      end>
    object QRY_TEMPCNOMEUNIT: TStringField
      FieldName = 'CNOMEUNIT'
      Size = 8
    end
    object QRY_TEMPCDESCAPLI: TStringField
      FieldName = 'CDESCAPLI'
      Size = 30
    end
    object QRY_TEMPCNOMEBMP: TStringField
      FieldName = 'CNOMEBMP'
    end
    object QRY_TEMPCNOMEFORM: TStringField
      FieldName = 'CNOMEFORM'
    end
    object QRY_TEMPCSHOWFORM: TStringField
      FieldName = 'CSHOWFORM'
      Size = 1
    end
    object QRY_TEMPCITENSMENU: TStringField
      FieldName = 'CITENSMENU'
      Size = 10
    end
    object QRY_TEMPCTITAPLIC: TStringField
      FieldName = 'CTITAPLIC'
      Size = 30
    end
    object QRY_TEMPCCATEGORIA: TStringField
      FieldName = 'CCATEGORIA'
      Size = 30
    end
    object QRY_TEMPNIMGSAIDA: TIntegerField
      FieldName = 'NIMGSAIDA'
    end
    object QRY_TEMPNIDTBL_A: TFloatField
      FieldName = 'NIDTBL_A'
      Required = True
    end
    object QRY_TEMPNIDTBL_G: TFloatField
      FieldName = 'NIDTBL_G'
    end
    object QRY_TEMPNAPLICAUX: TIntegerField
      FieldName = 'NAPLICAUX'
    end
    object QRY_TEMPNIDTBL_PB: TFloatField
      FieldName = 'NIDTBL_PB'
    end
    object QRY_TEMPNIDTBL_U: TFloatField
      FieldName = 'NIDTBL_U'
    end
    object QRY_TEMPNAPLICEQV: TFloatField
      FieldName = 'NAPLICEQV'
      Required = True
    end
    object QRY_TEMPNIDTBL_UA: TFloatField
      FieldName = 'NIDTBL_UA'
    end
    object QRY_TEMPNIDTBL_OPA: TFloatField
      FieldName = 'NIDTBL_OPA'
    end
    object QRY_TEMPNIDTBL_OP: TFloatField
      FieldName = 'NIDTBL_OP'
    end
  end
end
