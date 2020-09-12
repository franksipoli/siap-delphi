object DTM_A005RHCP: TDTM_A005RHCP
  OldCreateOrder = False
  Left = 192
  Top = 107
  Height = 200
  Width = 400
  object QRY_010: TOraQuery
    SQLInsert.Strings = (
      'INSERT INTO cadhor'
      
        '  (NIDCADHOR, CENTRMANHA, CSAIRMANHA, CINTERVALO, CENTRTARDE, CS' +
        'AIRTARDE)'
      'VALUES'
      
        '  (:NIDCADHOR, :CENTRMANHA, :CSAIRMANHA, :CINTERVALO, :CENTRTARD' +
        'E, :CSAIRTARDE)')
    SQLDelete.Strings = (
      'DELETE FROM cadhor'
      'WHERE'
      '  NIDCADHOR = :NIDCADHOR')
    SQLUpdate.Strings = (
      'UPDATE cadhor'
      'SET'
      '  NIDCADHOR = :NIDCADHOR,'
      '  CENTRMANHA = :CENTRMANHA,'
      '  CSAIRMANHA = :CSAIRMANHA,'
      '  CINTERVALO = :CINTERVALO,'
      '  CENTRTARDE = :CENTRTARDE,'
      '  CSAIRTARDE = :CSAIRTARDE'
      'WHERE'
      '  NIDCADHOR = :OLD_NIDCADHOR')
    SQLLock.Strings = (
      'SELECT * FROM cadhor'
      'WHERE'
      '  NIDCADHOR = :NIDCADHOR'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      'WHERE'
      '  NIDCADHOR = :NIDCADHOR')
    Session = DMControle.Conexao
    SQL.Strings = (
      'select * from cadhor')
    LockMode = lmLockImmediate
    OnCalcFields = QRY_010CalcFields
    Left = 28
    Top = 16
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
    object QRY_010DAT_INTERVALO: TStringField
      Alignment = taCenter
      FieldKind = fkCalculated
      FieldName = 'LKP_INTERVALO'
      Calculated = True
    end
  end
  object DTS_010: TOraDataSource
    AutoEdit = False
    DataSet = QRY_010
    Left = 96
    Top = 16
  end
end
