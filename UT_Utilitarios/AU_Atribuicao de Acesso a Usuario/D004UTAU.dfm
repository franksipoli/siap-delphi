object DTM_A004UTAU: TDTM_A004UTAU
  OldCreateOrder = False
  Left = 231
  Top = 148
  Height = 274
  Width = 483
  object QRY_055: TOraQuery
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
      'select tbl_up.* , tbl_pb.cnomeper'
      'from tbl_up, tbl_pb'
      'where tbl_up.nidtbl_u = :nidtbl_u and'
      'tbl_up.nidtbl_pb = tbl_pb.nidtbl_pb')
    Left = 20
    Top = 64
    ParamData = <
      item
        DataType = ftInteger
        Name = 'nidtbl_u'
        ParamType = ptInput
      end>
    object QRY_055NIDTBL_UP: TFloatField
      DisplayWidth = 12
      FieldName = 'NIDTBL_UP'
      Required = True
    end
    object QRY_055NIDTBL_U: TFloatField
      DisplayWidth = 12
      FieldName = 'NIDTBL_U'
      Required = True
    end
    object QRY_055NIDTBL_PB: TFloatField
      DisplayWidth = 12
      FieldName = 'NIDTBL_PB'
      Required = True
    end
    object QRY_055CPERFIL: TStringField
      DisplayWidth = 17
      FieldName = 'CPERFIL'
      Required = True
      Size = 12
    end
    object QRY_055NSTATUS: TFloatField
      DisplayWidth = 12
      FieldName = 'NSTATUS'
    end
    object QRY_055CNOMEPER: TStringField
      FieldName = 'CNOMEPER'
      ProviderFlags = []
      Size = 30
    end
  end
  object QRY_TMP: TOraQuery
    SQL.Strings = (
      'begin'
      '  :RESULT := mpl.MPL_EQUIV.GETAPLICACOESUSU(:NIDTBL_U);'
      'end;')
    AutoCommit = False
    Left = 20
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
        Name = 'NIDTBL_U'
        ParamType = ptInput
      end>
    object QRY_TMPCNOMEUNIT: TStringField
      FieldName = 'CNOMEUNIT'
      Size = 8
    end
    object QRY_TMPCDESCAPLI: TStringField
      FieldName = 'CDESCAPLI'
      Size = 30
    end
    object QRY_TMPCNOMEBMP: TStringField
      FieldName = 'CNOMEBMP'
    end
    object QRY_TMPCNOMEFORM: TStringField
      FieldName = 'CNOMEFORM'
    end
    object QRY_TMPCSHOWFORM: TStringField
      FieldName = 'CSHOWFORM'
      Size = 1
    end
    object QRY_TMPCITENSMENU: TStringField
      FieldName = 'CITENSMENU'
      Size = 10
    end
    object QRY_TMPCTITAPLIC: TStringField
      FieldName = 'CTITAPLIC'
      Size = 30
    end
    object QRY_TMPCCATEGORIA: TStringField
      FieldName = 'CCATEGORIA'
      Size = 30
    end
    object QRY_TMPNIMGSAIDA: TIntegerField
      FieldName = 'NIMGSAIDA'
    end
    object QRY_TMPNIDTBL_A: TFloatField
      FieldName = 'NIDTBL_A'
      Required = True
    end
    object QRY_TMPNIDTBL_G: TFloatField
      FieldName = 'NIDTBL_G'
    end
    object QRY_TMPNAPLICAUX: TIntegerField
      FieldName = 'NAPLICAUX'
    end
    object QRY_TMPNIDTBL_PB: TFloatField
      FieldName = 'NIDTBL_PB'
    end
    object QRY_TMPNIDTBL_UPA: TFloatField
      FieldName = 'NIDTBL_UPA'
    end
  end
  object QRY_056: TOraQuery
    SQL.Strings = (
      'select * '
      'from tbl_pb '
      'where nidtbl_pb in (:nidtbl_pb) and'
      'nidtbl_pb not in'
      '(select tbl_up.nidtbl_pb '
      'from tbl_up'
      'where tbl_up.nidtbl_u = :nidtbl_u'
      ')')
    Left = 96
    Top = 64
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'nidtbl_pb'
      end
      item
        DataType = ftInteger
        Name = 'nidtbl_u'
        ParamType = ptInput
      end>
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
  object DTS_055: TOraDataSource
    DataSet = QRY_055
    Left = 20
    Top = 120
  end
  object DTS_056: TOraDataSource
    DataSet = QRY_056
    Left = 96
    Top = 120
  end
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
      'select tbl_upa.* '
      'from tbl_upa, tbl_up'
      'where tbl_up.nidtbl_u = :nidtbl_u and'
      'tbl_upa.nidtbl_up = tbl_up.nidtbl_up')
    Left = 164
    Top = 64
    ParamData = <
      item
        DataType = ftInteger
        Name = 'nidtbl_u'
        ParamType = ptInput
      end>
    object QRY_057NIDTBL_UPA: TFloatField
      FieldName = 'NIDTBL_UPA'
      Required = True
    end
    object QRY_057NIDTBL_UP: TFloatField
      FieldName = 'NIDTBL_UP'
      Required = True
    end
    object QRY_057NIDTBL_A: TFloatField
      FieldName = 'NIDTBL_A'
      Required = True
    end
    object QRY_057CPERFIL: TStringField
      FieldName = 'CPERFIL'
      Size = 25
    end
  end
end
