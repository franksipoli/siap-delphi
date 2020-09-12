object DTM_A026RH: TDTM_A026RH
  OldCreateOrder = False
  Left = 177
  Top = 150
  Height = 375
  Width = 544
  object QRY_095: TOraQuery
    SQLInsert.Strings = (
      'INSERT INTO tbxtcr'
      
        '  (NIDTBXTCR, CDESCRITCR, NIDTBXTCT, NIDTBXTPM, NIDTBXGMV, CACAO' +
        'TCE, NIDCADEVE)'
      'VALUES'
      
        '  (:NIDTBXTCR, :CDESCRITCR, :NIDTBXTCT, :NIDTBXTPM, :NIDTBXGMV, ' +
        ':CACAOTCE, :NIDCADEVE)')
    SQLDelete.Strings = (
      'DELETE FROM tbxtcr'
      'WHERE'
      '  NIDTBXTCR = :NIDTBXTCR')
    SQLUpdate.Strings = (
      'UPDATE tbxtcr'
      'SET'
      '  NIDTBXTCR = :NIDTBXTCR,'
      '  CDESCRITCR = :CDESCRITCR,'
      '  NIDTBXTCT = :NIDTBXTCT,'
      '  NIDTBXTPM = :NIDTBXTPM,'
      '  NIDTBXGMV = :NIDTBXGMV,'
      '  CACAOTCE = :CACAOTCE,'
      '  NIDCADEVE = :NIDCADEVE'
      'WHERE'
      '  NIDTBXTCR = :OLD_NIDTBXTCR')
    SQLLock.Strings = (
      'SELECT * FROM tbxtcr'
      'WHERE'
      '  NIDTBXTCR = :NIDTBXTCR'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      'WHERE'
      '  NIDTBXTCR = :NIDTBXTCR')
    Session = DMControle.Conexao
    SQL.Strings = (
      'select *'
      'from tbxtcr'
      'order by tbxtcr.cdescritcr')
    Left = 32
    Top = 32
    object QRY_095NIDTBXTCR: TFloatField
      FieldName = 'NIDTBXTCR'
      Required = True
    end
    object QRY_095CDESCRITCR: TStringField
      FieldName = 'CDESCRITCR'
      Required = True
      Size = 30
    end
    object QRY_095NIDTBXTCT: TFloatField
      FieldName = 'NIDTBXTCT'
      Required = True
    end
    object QRY_095NIDTBXTPM: TFloatField
      FieldName = 'NIDTBXTPM'
    end
    object QRY_095NIDTBXGMV: TFloatField
      FieldName = 'NIDTBXGMV'
    end
    object QRY_095CACAOTCE: TStringField
      FieldName = 'CACAOTCE'
      FixedChar = True
      Size = 1
    end
    object QRY_095NIDCADEVE: TFloatField
      FieldName = 'NIDCADEVE'
      Required = True
    end
    object QRY_095LKP_TCT: TStringField
      FieldKind = fkLookup
      FieldName = 'LKP_TCT'
      LookupDataSet = QRY_121
      LookupKeyFields = 'NIDTBXTCT'
      LookupResultField = 'CDESCRITCT'
      KeyFields = 'NIDTBXTCT'
      Size = 30
      Lookup = True
    end
    object QRY_095LKP_CADEVE: TStringField
      FieldKind = fkLookup
      FieldName = 'LKP_CADEVE'
      LookupDataSet = QRY_074
      LookupKeyFields = 'NIDCADEVE'
      LookupResultField = 'CDESCRIEVE'
      KeyFields = 'NIDCADEVE'
      Size = 30
      Lookup = True
    end
  end
  object DTS_095: TOraDataSource
    AutoEdit = False
    DataSet = QRY_095
    Left = 92
    Top = 32
  end
  object QRY_121: TOraQuery
    Session = DMControle.Conexao
    SQL.Strings = (
      'select *'
      'from tbxtct'
      'order by tbxtct.cdescritct')
    Left = 32
    Top = 92
    object QRY_121NIDTBXTCT: TFloatField
      FieldName = 'NIDTBXTCT'
      Required = True
    end
    object QRY_121CDESCRITCT: TStringField
      FieldName = 'CDESCRITCT'
      Required = True
      Size = 30
    end
    object QRY_121NCODTCE: TFloatField
      FieldName = 'NCODTCE'
      Required = True
    end
  end
  object QRY_074: TOraQuery
    Session = DMControle.Conexao
    SQL.Strings = (
      'select *'
      'from cadeve'
      'order by cadeve.cdescrieve')
    Left = 32
    Top = 152
    object QRY_074NIDCADEVE: TFloatField
      FieldName = 'NIDCADEVE'
      Required = True
    end
    object QRY_074CDESCRIEVE: TStringField
      FieldName = 'CDESCRIEVE'
      Required = True
      Size = 30
    end
    object QRY_074CSTATUSEVE: TStringField
      FieldName = 'CSTATUSEVE'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QRY_074NFATOREVE: TFloatField
      FieldName = 'NFATOREVE'
      Required = True
    end
    object QRY_074NSQCALCULO: TFloatField
      FieldName = 'NSQCALCULO'
      Required = True
    end
    object QRY_074NCODLANCTO: TFloatField
      FieldName = 'NCODLANCTO'
      Required = True
    end
    object QRY_074NIDTBXRCL: TFloatField
      FieldName = 'NIDTBXRCL'
      Required = True
    end
    object QRY_074NIDTBXGEV: TFloatField
      FieldName = 'NIDTBXGEV'
      Required = True
    end
    object QRY_074NIDTBXFLC: TFloatField
      FieldName = 'NIDTBXFLC'
      Required = True
    end
    object QRY_074NIDTBXTFP: TFloatField
      FieldName = 'NIDTBXTFP'
      Required = True
    end
    object QRY_074NIDTBXTEV: TFloatField
      FieldName = 'NIDTBXTEV'
      Required = True
    end
    object QRY_074NIDTBXCFP: TFloatField
      FieldName = 'NIDTBXCFP'
      Required = True
    end
    object QRY_074NIDTBXVPD: TFloatField
      FieldName = 'NIDTBXVPD'
    end
    object QRY_074NIDTBXREF: TFloatField
      FieldName = 'NIDTBXREF'
      Required = True
    end
  end
  object DTS_121: TOraDataSource
    AutoEdit = False
    DataSet = QRY_121
    Left = 96
    Top = 93
  end
  object DTS_074: TOraDataSource
    AutoEdit = False
    DataSet = QRY_074
    Left = 100
    Top = 152
  end
end
