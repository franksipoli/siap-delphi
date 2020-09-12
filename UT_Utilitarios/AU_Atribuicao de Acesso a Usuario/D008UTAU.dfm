object DTM_A008UTAU: TDTM_A008UTAU
  OldCreateOrder = False
  Left = 124
  Top = 184
  Height = 203
  Width = 641
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
      'tbl_a.cdescapli, tbl_up.nidtbl_pb'
      'from tbl_upa, tbl_up, tbl_a'
      'where tbl_upa.nidtbl_up = :nidtbl_up and'
      'tbl_up.nidtbl_up = tbl_upa.nidtbl_up and'
      'tbl_upa.nidtbl_a = tbl_a.nidtbl_a'
      '')
    AutoCommit = False
    Left = 104
    Top = 8
    ParamData = <
      item
        DataType = ftInteger
        Name = 'nidtbl_up'
        ParamType = ptInput
      end>
    object QRY_057NIDTBL_UPA: TFloatField
      FieldName = 'NIDTBL_UPA'
      Required = True
    end
    object QRY_057NIDTBL_UP: TFloatField
      FieldName = 'NIDTBL_UP'
    end
    object QRY_057NIDTBL_A: TFloatField
      FieldName = 'NIDTBL_A'
    end
    object QRY_057NIDTBL_U: TFloatField
      FieldName = 'NIDTBL_U'
      ProviderFlags = []
    end
    object QRY_057CPERFIL: TStringField
      FieldName = 'CPERFIL'
      Size = 12
    end
    object QRY_057CDESCAPLI: TStringField
      FieldName = 'CDESCAPLI'
      ProviderFlags = []
      Size = 30
    end
    object QRY_057NIDTBL_PB: TFloatField
      FieldName = 'NIDTBL_PB'
      ProviderFlags = []
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
      'select tbl_a.*, tbl_pb.cnomeper'
      'from tbl_a, tbl_pb'
      'where tbl_a.nidtbl_pb in'
      '(select tbl_up.nidtbl_pb '
      'from tbl_up'
      'where tbl_up.nidtbl_up = :nidtbl_up) and'
      'tbl_pb.nidtbl_pb = tbl_a.nidtbl_pb and '
      'tbl_a.nidtbl_a not in '
      '(select tbl_upa.nidtbl_a '
      'from tbl_upa, tbl_up, tbl_a'
      'where tbl_upa.nidtbl_up = :nidtbl_up and'
      'tbl_up.nidtbl_up = tbl_upa.nidtbl_up and'
      'tbl_upa.nidtbl_a = tbl_a.nidtbl_a)'
      '')
    AutoCommit = False
    Left = 28
    Top = 8
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'nidtbl_up'
        Value = Null
      end>
    object QRY_APLSYSCNOMEUNIT: TStringField
      FieldName = 'CNOMEUNIT'
      Size = 8
    end
    object QRY_APLSYSCDESCAPLI: TStringField
      FieldName = 'CDESCAPLI'
      Size = 30
    end
    object QRY_APLSYSCNOMEBMP: TStringField
      FieldName = 'CNOMEBMP'
    end
    object QRY_APLSYSCNOMEFORM: TStringField
      FieldName = 'CNOMEFORM'
    end
    object QRY_APLSYSCSHOWFORM: TStringField
      FieldName = 'CSHOWFORM'
      Size = 1
    end
    object QRY_APLSYSCITENSMENU: TStringField
      FieldName = 'CITENSMENU'
      Size = 10
    end
    object QRY_APLSYSCTITAPLIC: TStringField
      FieldName = 'CTITAPLIC'
      Size = 30
    end
    object QRY_APLSYSCCATEGORIA: TStringField
      FieldName = 'CCATEGORIA'
      Size = 30
    end
    object QRY_APLSYSNIMGSAIDA: TIntegerField
      FieldName = 'NIMGSAIDA'
    end
    object QRY_APLSYSNIDTBL_A: TFloatField
      FieldName = 'NIDTBL_A'
      Required = True
    end
    object QRY_APLSYSNIDTBL_G: TFloatField
      FieldName = 'NIDTBL_G'
    end
    object QRY_APLSYSNAPLICAUX: TIntegerField
      FieldName = 'NAPLICAUX'
    end
    object QRY_APLSYSNIDTBL_PB: TFloatField
      FieldName = 'NIDTBL_PB'
    end
    object QRY_APLSYSCNOMEPER: TStringField
      FieldName = 'CNOMEPER'
      ProviderFlags = []
      Size = 30
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
      'select * from tbl_a')
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
    Left = 252
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
end
