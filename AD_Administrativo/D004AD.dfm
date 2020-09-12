object DTM_A004AD: TDTM_A004AD
  OldCreateOrder = False
  Left = 286
  Top = 153
  Height = 215
  Width = 402
  object QRY_033: TOraQuery
    SQLInsert.Strings = (
      'INSERT INTO TagIgd'
      
        '  (NIDTAGIGD, CDESCDOC, CTIPOPESS, CVALIDADE, NIDCADGDC, COBRIGA' +
        ', CDISPEN, CUTILIZA, CDESCREDUZ)'
      'VALUES'
      
        '  (:NIDTAGIGD, :CDESCDOC, :CTIPOPESS, :CVALIDADE, :NIDCADGDC, :C' +
        'OBRIGA, :CDISPEN, :CUTILIZA, :CDESCREDUZ)')
    SQLDelete.Strings = (
      'DELETE FROM TagIgd'
      'WHERE'
      '  NIDTAGIGD = :NIDTAGIGD')
    SQLUpdate.Strings = (
      'UPDATE TagIgd'
      'SET'
      '  NIDTAGIGD = :NIDTAGIGD,'
      '  CDESCDOC = :CDESCDOC,'
      '  CTIPOPESS = :CTIPOPESS,'
      '  CVALIDADE = :CVALIDADE,'
      '  NIDCADGDC = :NIDCADGDC,'
      '  COBRIGA = :COBRIGA,'
      '  CDISPEN = :CDISPEN,'
      '  CUTILIZA = :CUTILIZA,'
      '  CDESCREDUZ = :CDESCREDUZ'
      'WHERE'
      '  NIDTAGIGD = :OLD_NIDTAGIGD')
    SQLLock.Strings = (
      'SELECT * FROM TagIgd'
      'WHERE'
      '  NIDTAGIGD = :NIDTAGIGD'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      'WHERE'
      '  NIDTAGIGD = :NIDTAGIGD')
    SQL.Strings = (
      'select * from TagIgd')
    Left = 20
    Top = 8
    object QRY_033NIDTAGIGD: TFloatField
      FieldName = 'NIDTAGIGD'
      Required = True
    end
    object QRY_033CDESCDOC: TStringField
      FieldName = 'CDESCDOC'
      Required = True
      Size = 80
    end
    object QRY_033CTIPOPESS: TStringField
      FieldName = 'CTIPOPESS'
      Size = 1
    end
    object QRY_033CVALIDADE: TStringField
      FieldName = 'CVALIDADE'
      Size = 1
    end
    object QRY_033NIDCADGDC: TFloatField
      FieldName = 'NIDCADGDC'
      Required = True
    end
    object QRY_033COBRIGA: TStringField
      FieldName = 'COBRIGA'
      Size = 1
    end
    object QRY_033CDISPEN: TStringField
      FieldName = 'CDISPEN'
      Size = 1
    end
    object QRY_033LKP_CGRUPODOC: TStringField
      FieldKind = fkLookup
      FieldName = 'LKP_CGRUPODOC'
      LookupDataSet = QRY_032
      LookupKeyFields = 'NIDCADGDC'
      LookupResultField = 'CGRUPODOC'
      KeyFields = 'NIDCADGDC'
      Size = 60
      Lookup = True
    end
    object QRY_033CUTILIZA: TStringField
      FieldName = 'CUTILIZA'
      Size = 1
    end
    object QRY_033CDESCREDUZ: TStringField
      DisplayWidth = 25
      FieldName = 'CDESCREDUZ'
    end
  end
  object QRY_032: TOraQuery
    SQL.Strings = (
      'select * from CadGdc')
    Left = 20
    Top = 72
  end
  object DTS_033: TOraDataSource
    DataSet = QRY_033
    Left = 88
    Top = 8
  end
  object DTS_032: TOraDataSource
    DataSet = QRY_032
    Left = 92
    Top = 72
  end
end
