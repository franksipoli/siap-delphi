object DTM_A002UTAU: TDTM_A002UTAU
  OldCreateOrder = False
  Left = 219
  Top = 202
  Height = 233
  Width = 483
  object QRY_042: TOraQuery
    SQL.Strings = (
      
        'select tbl_ao.nidtbl_o, tbl_ao.nidtbl_a, InitCap(tbl_ao.cfuncao)' +
        ' as cfuncao, tbl_o.cnomeunit from tbl_ao, tbl_o where '
      'tbl_ao.nidtbl_a in'
      '(select tbl_upa.nidtbl_a'
      'from tbl_uao, tbl_upa, tbl_ao'
      'where tbl_upa.nidtbl_upa = :nidtbl_upa and'
      'tbl_ao.nidtbl_a = tbl_upa.nidtbl_a) and'
      'tbl_ao.nidtbl_o not in '
      '(select tbl_ao.nidtbl_o'
      'from tbl_uao, tbl_upa, tbl_ao'
      'where tbl_upa.nidtbl_upa = :nidtbl_upa and'
      'tbl_ao.nidtbl_a = tbl_upa.nidtbl_a and'
      'tbl_uao.nidtbl_o = tbl_ao.nidtbl_o and '
      'tbl_uao.nidtbl_upa = :nidtbl_upa)and'
      'tbl_ao.nidtbl_o = tbl_o.nidtbl_o and'
      'tbl_o.cnomecla in ('#39'TSPEEDBUTTON'#39','#39'TBITBTN'#39')')
    AutoCommit = False
    Left = 24
    Top = 16
    ParamData = <
      item
        DataType = ftInteger
        Name = 'nidtbl_upa'
        ParamType = ptInput
        Value = 222
      end>
    object QRY_042NIDTBL_O: TFloatField
      FieldName = 'NIDTBL_O'
      ProviderFlags = []
    end
    object QRY_042NIDTBL_A: TFloatField
      FieldName = 'NIDTBL_A'
      ProviderFlags = []
    end
    object QRY_042CFUNCAO: TStringField
      DisplayLabel = 'Ações'
      FieldName = 'CFUNCAO'
      ProviderFlags = []
      Size = 80
    end
    object QRY_042CNOMEUNIT: TStringField
      FieldName = 'CNOMEUNIT'
      ProviderFlags = []
      Size = 8
    end
  end
  object DTS_042: TOraDataSource
    DataSet = QRY_042
    Left = 24
    Top = 80
  end
  object QRY_053: TOraQuery
    SQLInsert.Strings = (
      'INSERT INTO tbl_uao'
      '  (NIDTBL_O, NIDTBL_UAO, NIDTBL_UPA)'
      'VALUES'
      '  (:NIDTBL_O, :NIDTBL_UAO, :NIDTBL_UPA)')
    SQLDelete.Strings = (
      'DELETE FROM tbl_uao'
      'WHERE'
      '  NIDTBL_O = :NIDTBL_O')
    SQLUpdate.Strings = (
      'UPDATE tbl_uao'
      'SET'
      '  NIDTBL_O = :NIDTBL_O,'
      '  NIDTBL_UAO = :NIDTBL_UAO,'
      '  NIDTBL_UPA = :NIDTBL_UPA'
      'WHERE'
      '  NIDTBL_O = :OLD_NIDTBL_O')
    SQLLock.Strings = (
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      'WHERE'
      '  NIDTBL_O = :NIDTBL_O')
    SQL.Strings = (
      
        'select tbl_uao.*, InitCap(tbl_ao.cfuncao) cfuncao, tbl_ao.nidtbl' +
        '_a, tbl_o.cnomeunit'
      'from tbl_uao, tbl_upa, tbl_ao, tbl_o'
      'where tbl_upa.nidtbl_upa = :nidtbl_upa and'
      'tbl_uao.nidtbl_upa = tbl_upa.nidtbl_upa and'
      'tbl_ao.nidtbl_a = tbl_upa.nidtbl_a and'
      'tbl_ao.nidtbl_o = tbl_uao.nidtbl_o and'
      'tbl_o.nidtbl_o = tbl_uao.nidtbl_o')
    Left = 108
    Top = 16
    ParamData = <
      item
        DataType = ftInteger
        Name = 'nidtbl_upa'
        Value = 222
      end>
    object QRY_053NIDTBL_O: TFloatField
      FieldName = 'NIDTBL_O'
      Required = True
    end
    object QRY_053NIDTBL_UAO: TFloatField
      FieldName = 'NIDTBL_UAO'
      Required = True
    end
    object QRY_053NIDTBL_UPA: TFloatField
      FieldName = 'NIDTBL_UPA'
      Required = True
    end
    object QRY_053CFUNCAO: TStringField
      DisplayLabel = 'Ações'
      FieldName = 'CFUNCAO'
      ProviderFlags = []
      Size = 80
    end
    object QRY_053NIDTBL_A: TFloatField
      FieldName = 'NIDTBL_A'
      ProviderFlags = []
    end
    object QRY_053CHERDADO: TStringField
      FieldName = 'CHERDADO'
      Size = 15
    end
    object QRY_053CNOMEUNIT: TStringField
      FieldName = 'CNOMEUNIT'
      ProviderFlags = []
      Size = 8
    end
  end
  object DTS_053: TOraDataSource
    DataSet = QRY_053
    Left = 108
    Top = 80
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
      'SELECT * FROM tbl_up'
      'WHERE'
      '  NIDTBL_UP = :NIDTBL_UP'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      'WHERE'
      '  NIDTBL_UP = :NIDTBL_UP')
    SQL.Strings = (
      'select * from tbl_up where nidtbl_u = :nidtbl_u')
    Left = 184
    Top = 16
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'nidtbl_u'
      end>
    object QRY_056NIDTBL_UP: TFloatField
      FieldName = 'NIDTBL_UP'
      Required = True
    end
    object QRY_056NIDTBL_U: TFloatField
      FieldName = 'NIDTBL_U'
      Required = True
    end
    object QRY_056NIDTBL_PB: TFloatField
      FieldName = 'NIDTBL_PB'
      Required = True
    end
    object QRY_056CPERFIL: TStringField
      FieldName = 'CPERFIL'
      Required = True
      Size = 15
    end
    object QRY_056NSTATUS: TFloatField
      FieldName = 'NSTATUS'
    end
  end
  object DTS_056: TOraDataSource
    DataSet = QRY_056
    Left = 188
    Top = 80
  end
end
