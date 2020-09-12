object DTM_A043RH: TDTM_A043RH
  OldCreateOrder = False
  Left = 213
  Top = 168
  Height = 286
  Width = 400
  object QRY_083: TOraQuery
    SQLInsert.Strings = (
      'INSERT INTO tbxedi'
      
        '  (NIDTBXEDI, CNROEDITAL, DDTEDITAL, DDTPUBLICA, CDESCRIEDI, NID' +
        'TBXTPS, NIDTBXVPB)'
      'VALUES'
      
        '  (:NIDTBXEDI, :CNROEDITAL, :DDTEDITAL, :DDTPUBLICA, :CDESCRIEDI' +
        ', :NIDTBXTPS, :NIDTBXVPB)')
    SQLDelete.Strings = (
      'DELETE FROM tbxedi'
      'WHERE'
      '  NIDTBXEDI = :NIDTBXEDI')
    SQLUpdate.Strings = (
      'UPDATE tbxedi'
      'SET'
      '  NIDTBXEDI = :NIDTBXEDI,'
      '  CNROEDITAL = :CNROEDITAL,'
      '  DDTEDITAL = :DDTEDITAL,'
      '  DDTPUBLICA = :DDTPUBLICA,'
      '  CDESCRIEDI = :CDESCRIEDI,'
      '  NIDTBXTPS = :NIDTBXTPS,'
      '  NIDTBXVPB = :NIDTBXVPB'
      'WHERE'
      '  NIDTBXEDI = :OLD_NIDTBXEDI')
    SQLLock.Strings = (
      'SELECT * FROM tbxedi'
      'WHERE'
      '  NIDTBXEDI = :NIDTBXEDI'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      'WHERE'
      '  NIDTBXEDI = :NIDTBXEDI')
    SQL.Strings = (
      'select * '
      'from tbxedi')
    Left = 36
    Top = 20
    object QRY_083NIDTBXEDI: TFloatField
      DefaultExpression = '0'
      FieldName = 'NIDTBXEDI'
      Required = True
    end
    object QRY_083CNROEDITAL: TStringField
      FieldName = 'CNROEDITAL'
      Required = True
      Size = 10
    end
    object QRY_083DDTEDITAL: TDateTimeField
      FieldName = 'DDTEDITAL'
      Required = True
    end
    object QRY_083DDTPUBLICA: TDateTimeField
      FieldName = 'DDTPUBLICA'
      Required = True
    end
    object QRY_083CDESCRIEDI: TStringField
      FieldName = 'CDESCRIEDI'
      Required = True
      Size = 250
    end
    object QRY_083NIDTBXTPS: TFloatField
      FieldName = 'NIDTBXTPS'
      Required = True
    end
    object QRY_083NIDTBXVPB: TFloatField
      FieldName = 'NIDTBXVPB'
      Required = True
    end
    object QRY_083LKP_TPSEL: TStringField
      FieldKind = fkLookup
      FieldName = 'LKP_TPSEL'
      LookupDataSet = QRY_097
      LookupKeyFields = 'NIDTBXTPS'
      LookupResultField = 'CDESCRITPS'
      KeyFields = 'NIDTBXTPS'
      Size = 30
      Lookup = True
    end
    object QRY_083LKP_VPB: TStringField
      FieldKind = fkLookup
      FieldName = 'LKP_VPB'
      LookupDataSet = QRY_072
      LookupKeyFields = 'NIDTBXVPB'
      LookupResultField = 'CDESCRIVPB'
      KeyFields = 'NIDTBXVPB'
      Size = 40
      Lookup = True
    end
  end
  object DTS_083: TOraDataSource
    AutoEdit = False
    DataSet = QRY_083
    Left = 96
    Top = 20
  end
  object QRY_097: TOraQuery
    SQL.Strings = (
      'select'
      '*'
      'from'
      '  tbxtps')
    Left = 36
    Top = 80
    object QRY_097NIDTBXTPS: TFloatField
      FieldName = 'NIDTBXTPS'
      Required = True
    end
    object QRY_097CDESCRITPS: TStringField
      FieldName = 'CDESCRITPS'
      Required = True
      Size = 30
    end
    object QRY_097NCODTCE: TFloatField
      FieldName = 'NCODTCE'
    end
  end
  object DTS_097: TOraDataSource
    AutoEdit = False
    DataSet = QRY_097
    Left = 96
    Top = 80
  end
  object QRY_072: TOraQuery
    SQL.Strings = (
      'select'
      '*'
      'from'
      '  tbxvpb')
    Left = 36
    Top = 140
    object QRY_072NIDTBXVPB: TFloatField
      FieldName = 'NIDTBXVPB'
      Required = True
    end
    object QRY_072CDESCRIVPB: TStringField
      FieldName = 'CDESCRIVPB'
      Required = True
      Size = 40
    end
  end
  object DTS_072: TOraDataSource
    DataSet = QRY_072
    Left = 96
    Top = 140
  end
end
