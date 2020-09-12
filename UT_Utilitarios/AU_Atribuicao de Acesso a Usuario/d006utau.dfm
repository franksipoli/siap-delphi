object DTM_A006UTAU: TDTM_A006UTAU
  OldCreateOrder = False
  Left = 103
  Top = 144
  Height = 232
  Width = 521
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
      'select tbl_up.*, tbl_pb.cnomeper, tbl_pb.csiglaper'
      'from tbl_up, tbl_pb where'
      'tbl_up.nidtbl_up in('
      '   select tbl_up.nidtbl_up'
      '   from tbl_up'
      '   where tbl_up.nidtbl_u = :nidtbl_u'
      '   union'
      '   select tbl_up.nidtbl_up'
      '   from tbl_up, tbl_upa'
      '   where '
      '     tbl_upa.nidtbl_u = :nidtbl_u and'
      '   tbl_up.nidtbl_up = tbl_upa.nidtbl_up)'
      'and'
      'tbl_up.nidtbl_up not in('
      '   select tbl_eqv.ncodeqv'
      '   from tbl_eqv, tbl_up, tbl_up up'
      '   where tbl_up.nidtbl_u = :nidusuario and'
      '   tbl_eqv.nidtbl_up = tbl_up.nidtbl_up)'
      'and'
      'tbl_up.nidtbl_up not in(select tbl_up.nidtbl_up'
      '   from tbl_up'
      '   where tbl_up.nidtbl_u = :nidusuario)  '
      'and tbl_pb.nidtbl_pb = tbl_up.nidtbl_pb order by tbl_up.cperfil')
    Left = 20
    Top = 8
    ParamData = <
      item
        DataType = ftInteger
        Name = 'nidtbl_u'
        ParamType = ptInput
        Value = 1
      end
      item
        DataType = ftUnknown
        Name = 'nidusuario'
      end>
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
      DisplayLabel = 'Perfil'
      FieldName = 'CPERFIL'
      Required = True
      Size = 15
    end
    object QRY_055NSTATUS: TFloatField
      FieldName = 'NSTATUS'
    end
    object QRY_055CNOMEPER: TStringField
      DisplayLabel = 'Nome Perfil'
      FieldName = 'CNOMEPER'
      Size = 30
    end
    object QRY_055CSIGLAPER: TStringField
      FieldName = 'CSIGLAPER'
      ProviderFlags = []
      Size = 4
    end
  end
  object DTS_055: TOraDataSource
    DataSet = QRY_055
    Left = 20
    Top = 64
  end
  object QRY_059: TOraQuery
    SQLInsert.Strings = (
      'INSERT INTO tbl_eqv'
      '  (NIDTBL_EQV, NIDTBL_UP, NCODEQV, CHERDADO, NIDTBL_U)'
      'VALUES'
      '  (:NIDTBL_EQV, :NIDTBL_UP, :NCODEQV, :CHERDADO, :NIDTBL_U)')
    SQLDelete.Strings = (
      'DELETE FROM tbl_eqv'
      'WHERE'
      '  NIDTBL_EQV = :NIDTBL_EQV')
    SQLUpdate.Strings = (
      'UPDATE tbl_eqv'
      'SET'
      '  NIDTBL_EQV = :NIDTBL_EQV,'
      '  NIDTBL_UP = :NIDTBL_UP,'
      '  NCODEQV = :NCODEQV,'
      '  CHERDADO = :CHERDADO,'
      '  NIDTBL_U = :NIDTBL_U'
      'WHERE'
      '  NIDTBL_EQV = :OLD_NIDTBL_EQV')
    SQLLock.Strings = (
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      'WHERE'
      '  NIDTBL_EQV = :NIDTBL_EQV')
    SQL.Strings = (
      
        'select tbl_eqv.*, tbl_up.cperfil, up.cperfil as dat_perfil, tbl_' +
        'u.cnomeusu '
      'from tbl_eqv, tbl_up, tbl_up up, tbl_u'
      'where tbl_up.nidtbl_u = :nidtbl_u and'
      'tbl_eqv.nidtbl_up = tbl_up.nidtbl_up and'
      'up.nidtbl_up = tbl_eqv.ncodeqv and'
      'tbl_eqv.nidtbl_u = :nidoperador and'
      'tbl_u.nidtbl_u = tbl_eqv.nidtbl_u')
    Left = 88
    Top = 8
    ParamData = <
      item
        DataType = ftInteger
        Name = 'nidtbl_u'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'nidoperador'
      end>
    object QRY_059NIDTBL_EQV: TFloatField
      FieldName = 'NIDTBL_EQV'
      Required = True
    end
    object QRY_059NIDTBL_UP: TFloatField
      FieldName = 'NIDTBL_UP'
      Required = True
    end
    object QRY_059NCODEQV: TFloatField
      FieldName = 'NCODEQV'
      Required = True
    end
    object QRY_059CPERFIL: TStringField
      FieldName = 'CPERFIL'
      ProviderFlags = []
      Size = 15
    end
    object QRY_059DAT_PERFIL: TStringField
      FieldName = 'DAT_PERFIL'
      ProviderFlags = []
      Size = 15
    end
    object QRY_059CHERDADO: TStringField
      FieldName = 'CHERDADO'
      ProviderFlags = []
      Size = 15
    end
    object QRY_059NIDTBL_U: TFloatField
      FieldName = 'NIDTBL_U'
      ProviderFlags = [pfInUpdate]
    end
    object QRY_059CNOMEUSU: TStringField
      FieldName = 'CNOMEUSU'
      ProviderFlags = []
      Size = 10
    end
  end
  object DTS_059: TOraDataSource
    DataSet = QRY_059
    Left = 88
    Top = 64
  end
  object QRY_055_01: TOraQuery
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
    object QRY_055_01NIDTBL_UP: TFloatField
      FieldName = 'NIDTBL_UP'
      Required = True
    end
    object QRY_055_01NIDTBL_U: TFloatField
      FieldName = 'NIDTBL_U'
      Required = True
    end
    object QRY_055_01NIDTBL_PB: TFloatField
      FieldName = 'NIDTBL_PB'
      Required = True
    end
    object QRY_055_01CPERFIL: TStringField
      FieldName = 'CPERFIL'
      Required = True
      Size = 12
    end
    object QRY_055_01NSTATUS: TFloatField
      FieldName = 'NSTATUS'
    end
  end
  object DTS_055_01: TOraDataSource
    DataSet = QRY_055_01
    Left = 172
    Top = 64
  end
end
