object DTM_A003UTAU: TDTM_A003UTAU
  OldCreateOrder = False
  Left = 136
  Top = 174
  Height = 234
  Width = 626
  object QRY_057: TOraQuery
    SQLInsert.Strings = (
      'INSERT INTO tbl_upa'
      '  (NIDTBL_UPA, NIDTBL_UP, NIDTBL_A, CPERFIL)'
      'VALUES'
      '  (:NIDTBL_UPA, :NIDTBL_UP, :NIDTBL_A, :CPERFIL)')
    SQLDelete.Strings = (
      'DELETE FROM tbl_upa'
      'WHERE'
      '  NIDTBL_UPA = :NIDTBL_UPA')
    SQLUpdate.Strings = (
      'UPDATE tbl_upa'
      'SET'
      '  NIDTBL_UPA = :NIDTBL_UPA,'
      '  NIDTBL_UP = :NIDTBL_UP,'
      '  NIDTBL_A = :NIDTBL_A,'
      '  CPERFIL = :CPERFIL'
      'WHERE'
      '  NIDTBL_UPA = :OLD_NIDTBL_UPA')
    SQLLock.Strings = (
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      'WHERE'
      '  NIDTBL_UPA = :NIDTBL_UPA')
    SQL.Strings = (
      'select tbl_upa.nidtbl_upa,tbl_upa.nidtbl_up, '
      'tbl_upa.nidtbl_a, tbl_up.nidtbl_u, tbl_up.cperfil, '
      'tbl_up.nidtbl_pb, InitCap(tbl_tmp.cdescapli) as cdescapli,'
      'tbl_tmp.cnomeunit'
      'from tbl_upa, tbl_up, tbl_tmp '
      'where tbl_upa.nidtbl_upa = tbl_tmp.nidtbl_upa and'
      'tbl_up.nidtbl_up = tbl_upa.nidtbl_up'
      'order by tbl_tmp.cdescapli')
    AutoCommit = False
    OnCalcFields = QRY_057CalcFields
    Left = 104
    Top = 8
    object QRY_057NIDTBL_UPA: TFloatField
      DisplayWidth = 14
      FieldName = 'NIDTBL_UPA'
      Required = True
    end
    object QRY_057NIDTBL_UP: TFloatField
      DisplayWidth = 12
      FieldName = 'NIDTBL_UP'
      Required = True
    end
    object QRY_057NIDTBL_A: TFloatField
      DisplayWidth = 12
      FieldName = 'NIDTBL_A'
      Required = True
    end
    object QRY_057NIDTBL_U: TFloatField
      DisplayWidth = 12
      FieldName = 'NIDTBL_U'
      ProviderFlags = []
    end
    object QRY_057NIDTBL_PB: TFloatField
      FieldName = 'NIDTBL_PB'
      ProviderFlags = []
    end
    object QRY_057CPERFIL: TStringField
      DisplayWidth = 19
      FieldName = 'CPERFIL'
      ProviderFlags = []
      Size = 15
    end
    object QRY_057CDESCAPLI: TStringField
      DisplayLabel = 'Aplicação'
      DisplayWidth = 36
      FieldName = 'CDESCAPLI'
      ProviderFlags = []
      Size = 30
    end
    object QRY_057CLC_CEQUIVALE: TStringField
      Alignment = taCenter
      FieldKind = fkCalculated
      FieldName = 'CLC_CEQUIVALE'
      ProviderFlags = []
      Size = 5
      Calculated = True
    end
    object QRY_057CNOMEUNIT: TStringField
      FieldName = 'CNOMEUNIT'
      ProviderFlags = []
      Size = 8
    end
  end
  object DTS_057: TOraDataSource
    DataSet = QRY_057
    Left = 104
    Top = 68
  end
  object DTS_APLSYS: TOraDataSource
    DataSet = QRY_APLSYS
    Left = 28
    Top = 68
  end
  object QRY_APLSYS: TOraQuery
    SQL.Strings = (
      
        'select cnomeunit, InitCap(cdescapli) as cdescapli, cnomebmp, cno' +
        'meform,'
      
        'cshowform, citensmenu, InitCap(ctitaplic) as ctitaplic, ccategor' +
        'ia, nimgsaida,'
      'nidtbl_a , nidtbl_g, naplicaux, nidtbl_pb'
      'from tbl_a where nidtbl_a in (:nidtbl_a) and'
      'nidtbl_a not in ('
      'select tbl_tmp.nidtbl_a  from tbl_tmp)'
      'and nidtbl_a <> 8 '
      'order by cdescapli'
      '')
    AutoCommit = False
    Left = 28
    Top = 8
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'nidtbl_a'
      end>
    object StringField1: TStringField
      FieldName = 'CNOMEUNIT'
      Size = 8
    end
    object StringField2: TStringField
      DisplayLabel = 'Aplicação'
      FieldName = 'CDESCAPLI'
      Size = 30
    end
    object StringField3: TStringField
      FieldName = 'CNOMEBMP'
    end
    object StringField4: TStringField
      FieldName = 'CNOMEFORM'
    end
    object StringField5: TStringField
      FieldName = 'CSHOWFORM'
      Size = 1
    end
    object StringField6: TStringField
      FieldName = 'CITENSMENU'
      Size = 10
    end
    object StringField7: TStringField
      FieldName = 'CTITAPLIC'
      Size = 30
    end
    object StringField8: TStringField
      FieldName = 'CCATEGORIA'
      Size = 30
    end
    object IntegerField1: TIntegerField
      FieldName = 'NIMGSAIDA'
    end
    object FloatField1: TFloatField
      FieldName = 'NIDTBL_A'
      Required = True
    end
    object FloatField2: TFloatField
      FieldName = 'NIDTBL_G'
    end
    object IntegerField2: TIntegerField
      FieldName = 'NAPLICAUX'
    end
    object FloatField3: TFloatField
      FieldName = 'NIDTBL_PB'
    end
  end
  object QRY_055: TOraQuery
    SQLInsert.Strings = (
      'INSERT INTO tbl_up'
      '  (NIDTBL_UP, NIDTBL_U, NIDTBL_PB, CPERFIL, NSTATUS)'
      'VALUES'
      '  (:NIDTBL_UP, :NIDTBL_U, :NIDTBL_PB, :CPERFIL, :NSTATUS)')
    SQLDelete.Strings = (
      'DELETE FROM tbl_up'
      'WHERE'
      '  NIDTBL_UP = :NIDTBL_UP')
    SQLUpdate.Strings = (
      'UPDATE tbl_up'
      'SET'
      '  NIDTBL_UP = :NIDTBL_UP,'
      '  NIDTBL_U = :NIDTBL_U,'
      '  NIDTBL_PB = :NIDTBL_PB,'
      '  CPERFIL = :CPERFIL,'
      '  NSTATUS = :NSTATUS'
      'WHERE'
      '  NIDTBL_UP = :OLD_NIDTBL_UP')
    SQLLock.Strings = (
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      'WHERE'
      '  NIDTBL_UP = :NIDTBL_UP')
    SQL.Strings = (
      'select * from tbl_up')
    OnCalcFields = QRY_057CalcFields
    Left = 172
    Top = 8
    object QRY_055NIDTBL_UP: TFloatField
      FieldName = 'NIDTBL_UP'
      Required = True
    end
    object QRY_055NIDTBL_U: TFloatField
      FieldName = 'NIDTBL_U'
      Required = True
    end
    object QRY_055NIDTBL_PB: TFloatField
      FieldName = 'NIDTBL_PB'
      Required = True
    end
    object QRY_055CPERFIL: TStringField
      FieldName = 'CPERFIL'
      Required = True
      Size = 12
    end
    object QRY_055NSTATUS: TFloatField
      FieldName = 'NSTATUS'
    end
  end
  object DTS_055: TOraDataSource
    DataSet = QRY_055
    Left = 172
    Top = 68
  end
  object QRY_041: TOraQuery
    SQLInsert.Strings = (
      'INSERT INTO tbl_up'
      '  (NIDTBL_UP, NIDTBL_U, NIDTBL_PB, CPERFIL, NSTATUS)'
      'VALUES'
      '  (:NIDTBL_UP, :NIDTBL_U, :NIDTBL_PB, :CPERFIL, :NSTATUS)')
    SQLDelete.Strings = (
      'DELETE FROM tbl_up'
      'WHERE'
      '  NIDTBL_UP = :NIDTBL_UP')
    SQLUpdate.Strings = (
      'UPDATE tbl_up'
      'SET'
      '  NIDTBL_UP = :NIDTBL_UP,'
      '  NIDTBL_U = :NIDTBL_U,'
      '  NIDTBL_PB = :NIDTBL_PB,'
      '  CPERFIL = :CPERFIL,'
      '  NSTATUS = :NSTATUS'
      'WHERE'
      '  NIDTBL_UP = :OLD_NIDTBL_UP')
    SQLLock.Strings = (
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      'WHERE'
      '  NIDTBL_UP = :NIDTBL_UP')
    SQL.Strings = (
      
        'select cnomeunit, InitCap(cdescapli) as cdescapli, cnomebmp, cno' +
        'meform,'
      
        '       cshowform, citensmenu, InitCap(ctitaplic) as ctitaplic, c' +
        'categoria, nimgsaida, nidtbl_a,'
      '       nidtbl_g, naplicaux, nidtbl_pb'
      'from tbl_a')
    OnCalcFields = QRY_057CalcFields
    Left = 248
    Top = 8
    object QRY_041CNOMEUNIT: TStringField
      FieldName = 'CNOMEUNIT'
      Size = 8
    end
    object QRY_041CDESCAPLI: TStringField
      FieldName = 'CDESCAPLI'
      Size = 30
    end
    object QRY_041CNOMEBMP: TStringField
      FieldName = 'CNOMEBMP'
    end
    object QRY_041CNOMEFORM: TStringField
      FieldName = 'CNOMEFORM'
    end
    object QRY_041CSHOWFORM: TStringField
      FieldName = 'CSHOWFORM'
      Size = 1
    end
    object QRY_041CITENSMENU: TStringField
      FieldName = 'CITENSMENU'
      Size = 10
    end
    object QRY_041CTITAPLIC: TStringField
      FieldName = 'CTITAPLIC'
      Size = 30
    end
    object QRY_041CCATEGORIA: TStringField
      FieldName = 'CCATEGORIA'
      Size = 30
    end
    object QRY_041NIMGSAIDA: TIntegerField
      FieldName = 'NIMGSAIDA'
    end
    object QRY_041NIDTBL_A: TFloatField
      FieldName = 'NIDTBL_A'
      Required = True
    end
    object QRY_041NIDTBL_G: TFloatField
      FieldName = 'NIDTBL_G'
    end
    object QRY_041NAPLICAUX: TIntegerField
      FieldName = 'NAPLICAUX'
    end
    object QRY_041NIDTBL_PB: TFloatField
      FieldName = 'NIDTBL_PB'
    end
  end
  object QRY_056: TOraQuery
    SQLInsert.Strings = (
      'INSERT INTO tbl_up'
      '  (NIDTBL_UP, NIDTBL_U, NIDTBL_PB, CPERFIL, NSTATUS)'
      'VALUES'
      '  (:NIDTBL_UP, :NIDTBL_U, :NIDTBL_PB, :CPERFIL, :NSTATUS)')
    SQLDelete.Strings = (
      'DELETE FROM tbl_up'
      'WHERE'
      '  NIDTBL_UP = :NIDTBL_UP')
    SQLUpdate.Strings = (
      'UPDATE tbl_up'
      'SET'
      '  NIDTBL_UP = :NIDTBL_UP,'
      '  NIDTBL_U = :NIDTBL_U,'
      '  NIDTBL_PB = :NIDTBL_PB,'
      '  CPERFIL = :CPERFIL,'
      '  NSTATUS = :NSTATUS'
      'WHERE'
      '  NIDTBL_UP = :OLD_NIDTBL_UP')
    SQLLock.Strings = (
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      'WHERE'
      '  NIDTBL_UP = :NIDTBL_UP')
    SQL.Strings = (
      'select * from tbl_pb')
    OnCalcFields = QRY_057CalcFields
    Left = 304
    Top = 68
    object QRY_056NIDTBL_PB: TFloatField
      FieldName = 'NIDTBL_PB'
      Required = True
    end
    object QRY_056CSIGLAPER: TStringField
      FieldName = 'CSIGLAPER'
      Size = 4
    end
    object QRY_056CNOMEPER: TStringField
      FieldName = 'CNOMEPER'
      Size = 30
    end
  end
  object QRY_TMP: TOraQuery
    SQL.Strings = (
      'begin'
      '  :RESULT := mpl.MPL_EQUIV.GETAPLICACOESUSU(:nidtbl_u);'
      'end;')
    AutoCommit = False
    Left = 328
    Top = 8
    ParamData = <
      item
        DataType = ftCursor
        Name = 'RESULT'
        ParamType = ptOutput
        Value = 'Object'
      end
      item
        DataType = ftInteger
        Name = 'nidtbl_u'
        ParamType = ptInput
        Value = 1
      end>
  end
end
