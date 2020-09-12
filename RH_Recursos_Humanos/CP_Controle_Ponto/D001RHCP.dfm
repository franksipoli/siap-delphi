object DTM_A001RHCP: TDTM_A001RHCP
  OldCreateOrder = False
  Left = 147
  Top = 173
  Height = 240
  Width = 453
  object QRY_005: TOraQuery
    SQLInsert.Strings = (
      'INSERT INTO cadcpt'
      
        '  (NIDCADCPT, NMATRICULA, DDATAPTO, CHORA, CMOVIMEN, CRELOGIO, C' +
        'SERVIDOR)'
      'VALUES'
      
        '  (:NIDCADCPT, :NMATRICULA, :DDATAPTO, :CHORA, :CMOVIMEN, :CRELO' +
        'GIO, :CSERVIDOR)')
    SQLDelete.Strings = (
      'DELETE FROM cadcpt'
      'WHERE'
      '  NIDCADCPT = :NIDCADCPT')
    SQLUpdate.Strings = (
      'UPDATE cadcpt'
      'SET'
      '  NIDCADCPT = :NIDCADCPT,'
      '  NMATRICULA = :NMATRICULA,'
      '  DDATAPTO = :DDATAPTO,'
      '  CHORA = :CHORA,'
      '  CMOVIMEN = :CMOVIMEN,'
      '  CRELOGIO = :CRELOGIO,'
      '  CSERVIDOR = :CSERVIDOR'
      'WHERE'
      '  NIDCADCPT = :OLD_NIDCADCPT')
    SQLLock.Strings = (
      'SELECT * FROM cadcpt'
      'WHERE'
      '  NIDCADCPT = :NIDCADCPT'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      'WHERE'
      '  NIDCADCPT = :NIDCADCPT')
    Session = DMControle.Conexao
    SQL.Strings = (
      'select * from cadcpt')
    LockMode = lmLockImmediate
    Left = 20
    Top = 12
    object QRY_005NIDCADCPT: TFloatField
      FieldName = 'NIDCADCPT'
      Required = True
    end
    object QRY_005NMATRICULA: TFloatField
      FieldName = 'NMATRICULA'
    end
    object QRY_005DDATAPTO: TDateTimeField
      FieldName = 'DDATAPTO'
    end
    object QRY_005CHORA: TStringField
      FieldName = 'CHORA'
      FixedChar = True
      Size = 5
    end
    object QRY_005CMOVIMEN: TStringField
      FieldName = 'CMOVIMEN'
      FixedChar = True
      Size = 3
    end
    object QRY_005CRELOGIO: TStringField
      FieldName = 'CRELOGIO'
      FixedChar = True
      Size = 2
    end
    object QRY_005CSERVIDOR: TStringField
      FieldName = 'CSERVIDOR'
      FixedChar = True
      Size = 1
    end
  end
  object DTS_005: TDataSource
    AutoEdit = False
    DataSet = QRY_005
    Left = 72
    Top = 12
  end
  object QRY_006: TOraQuery
    Session = DMControle.Conexao
    SQL.Strings = (
      'select * from cadsev')
    LockMode = lmLockImmediate
    Left = 20
    Top = 76
    object QRY_006NIDCADSEV: TFloatField
      FieldName = 'NIDCADSEV'
      Required = True
    end
    object QRY_006CNOMESRV: TStringField
      FieldName = 'CNOMESRV'
      Size = 60
    end
    object QRY_006NCRTPS: TFloatField
      FieldName = 'NCRTPS'
    end
    object QRY_006NSERIE: TFloatField
      FieldName = 'NSERIE'
    end
    object QRY_006NMATRICULA: TFloatField
      FieldName = 'NMATRICULA'
    end
    object QRY_006NIDCADHOR: TFloatField
      FieldName = 'NIDCADHOR'
    end
    object QRY_006NIDCADCAG: TFloatField
      FieldName = 'NIDCADCAG'
    end
  end
  object QRY_007: TOraQuery
    SQLInsert.Strings = (
      'INSERT INTO cadacp'
      '  (NIDCADACP, DDATAATU, CHORAATU, CNOMEARQUI, NERRO, NIDCADSEV)'
      'VALUES'
      
        '  (:NIDCADACP, :DDATAATU, :CHORAATU, :CNOMEARQUI, :NERRO, :NIDCA' +
        'DSEV)')
    SQLDelete.Strings = (
      'DELETE FROM cadacp'
      'WHERE'
      '  NIDCADACP = :NIDCADACP')
    SQLUpdate.Strings = (
      'UPDATE cadacp'
      'SET'
      '  NIDCADACP = :NIDCADACP,'
      '  DDATAATU = :DDATAATU,'
      '  CHORAATU = :CHORAATU,'
      '  CNOMEARQUI = :CNOMEARQUI,'
      '  NERRO = :NERRO,'
      '  NIDCADSEV = :NIDCADSEV'
      'WHERE'
      '  NIDCADACP = :OLD_NIDCADACP')
    SQLLock.Strings = (
      'SELECT * FROM cadacp'
      'WHERE'
      '  NIDCADACP = :NIDCADACP'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      'WHERE'
      '  NIDCADACP = :NIDCADACP')
    Session = DMControle.Conexao
    SQL.Strings = (
      'select * from cadacp order by dDataAtu Desc , cHoraAtu Desc')
    LockMode = lmLockImmediate
    Left = 140
    Top = 12
    object QRY_007NIDCADACP: TFloatField
      FieldName = 'NIDCADACP'
      Required = True
    end
    object QRY_007DDATAATU: TDateTimeField
      FieldName = 'DDATAATU'
    end
    object QRY_007CHORAATU: TStringField
      FieldName = 'CHORAATU'
      FixedChar = True
      Size = 5
    end
    object QRY_007CNOMEARQUI: TStringField
      FieldName = 'CNOMEARQUI'
      FixedChar = True
    end
    object QRY_007NERRO: TFloatField
      FieldName = 'NERRO'
    end
    object QRY_007NIDCADSEV: TFloatField
      FieldName = 'NIDCADSEV'
    end
    object QRY_007LKP_NOMESERV: TStringField
      FieldKind = fkLookup
      FieldName = 'LKP_NOMESERV'
      LookupDataSet = QRY_006
      LookupKeyFields = 'NIDCADSEV'
      LookupResultField = 'CNOMESRV'
      KeyFields = 'NIDCADSEV'
      Size = 50
      Lookup = True
    end
  end
  object DTS_007: TOraDataSource
    AutoEdit = False
    DataSet = QRY_007
    Left = 192
    Top = 12
  end
  object QRY_008: TOraQuery
    SQLInsert.Strings = (
      'INSERT INTO cadecp'
      '  (NIDCADECP, CREGERRO, NLINERRO, NIDCADACP)'
      'VALUES'
      '  (:NIDCADECP, :CREGERRO, :NLINERRO, :NIDCADACP)')
    SQLDelete.Strings = (
      'DELETE FROM cadecp'
      'WHERE'
      '  NIDCADECP = :NIDCADECP')
    SQLUpdate.Strings = (
      'UPDATE cadecp'
      'SET'
      '  NIDCADECP = :NIDCADECP,'
      '  CREGERRO = :CREGERRO,'
      '  NLINERRO = :NLINERRO,'
      '  NIDCADACP = :NIDCADACP'
      'WHERE'
      '  NIDCADECP = :OLD_NIDCADECP')
    SQLRefresh.Strings = (
      'WHERE'
      '  NIDCADECP = :NIDCADECP')
    Session = DMControle.Conexao
    SQL.Strings = (
      'select cadecp.*, cadacp.cNomeArqui from cadecp, cadacp '
      'where cadecp.nidcadacp = cadacp.nidcadacp'
      'and cadecp.nidcadacp = :nidcadacp')
    MasterSource = DTS_007
    LockMode = lmLockImmediate
    Left = 140
    Top = 72
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'nidcadacp'
      end>
  end
  object DTS_008: TOraDataSource
    AutoEdit = False
    DataSet = QRY_008
    Left = 192
    Top = 72
  end
end
