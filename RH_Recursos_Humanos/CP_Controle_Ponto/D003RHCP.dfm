object DTM_A003RHCP: TDTM_A003RHCP
  OldCreateOrder = False
  Left = 192
  Top = 107
  Height = 375
  Width = 544
  object QRY_006: TOraQuery
    SQLInsert.Strings = (
      'INSERT INTO cadsev'
      
        '  (NIDCADSEV, CNOMESRV, NCRTPS, NSERIE, NMATRICULA, NIDCADHOR, N' +
        'IDCADCAG)'
      'VALUES'
      
        '  (:NIDCADSEV, :CNOMESRV, :NCRTPS, :NSERIE, :NMATRICULA, :NIDCAD' +
        'HOR, :NIDCADCAG)')
    SQLDelete.Strings = (
      'DELETE FROM cadsev'
      'WHERE'
      '  NIDCADSEV = :NIDCADSEV')
    SQLUpdate.Strings = (
      'UPDATE cadsev'
      'SET'
      '  NIDCADSEV = :NIDCADSEV,'
      '  CNOMESRV = :CNOMESRV,'
      '  NCRTPS = :NCRTPS,'
      '  NSERIE = :NSERIE,'
      '  NMATRICULA = :NMATRICULA,'
      '  NIDCADHOR = :NIDCADHOR,'
      '  NIDCADCAG = :NIDCADCAG'
      'WHERE'
      '  NIDCADSEV = :OLD_NIDCADSEV')
    SQLLock.Strings = (
      'SELECT * FROM cadsev'
      'WHERE'
      '  NIDCADSEV = :NIDCADSEV'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      'WHERE'
      '  NIDCADSEV = :NIDCADSEV')
    Session = DMControle.Conexao
    SQL.Strings = (
      'select * from cadsev')
    LockMode = lmLockImmediate
    Left = 20
    Top = 24
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
  object DTS_006: TOraDataSource
    AutoEdit = False
    DataSet = QRY_006
    OnDataChange = DTS_006DataChange
    Left = 96
    Top = 24
  end
  object QRY_009: TOraQuery
    Session = DMControle.Conexao
    SQL.Strings = (
      'select * from cadcag where nIdcadcag = :nidcadcag')
    MasterSource = DTS_006
    LockMode = lmLockImmediate
    Left = 20
    Top = 88
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'nidcadcag'
      end>
  end
  object DTS_009: TOraDataSource
    AutoEdit = False
    DataSet = QRY_009
    Left = 92
    Top = 88
  end
  object QRY_010: TOraQuery
    Session = DMControle.Conexao
    SQL.Strings = (
      'select * from cadhor')
    LockMode = lmLockImmediate
    AfterRefresh = QRY_010AfterRefresh
    Left = 20
    Top = 144
    object QRY_010NIDCADHOR: TFloatField
      FieldName = 'NIDCADHOR'
      Required = True
    end
    object QRY_010CENTRMANHA: TStringField
      FieldName = 'CENTRMANHA'
      FixedChar = True
      Size = 5
    end
    object QRY_010CSAIRMANHA: TStringField
      FieldName = 'CSAIRMANHA'
      FixedChar = True
      Size = 5
    end
    object QRY_010CINTERVALO: TStringField
      FieldName = 'CINTERVALO'
      FixedChar = True
      Size = 3
    end
    object QRY_010CENTRTARDE: TStringField
      FieldName = 'CENTRTARDE'
      FixedChar = True
      Size = 5
    end
    object QRY_010CSAIRTARDE: TStringField
      FieldName = 'CSAIRTARDE'
      FixedChar = True
      Size = 5
    end
  end
  object DTS_010: TOraDataSource
    DataSet = QRY_010
    Left = 92
    Top = 144
  end
end
