object DTM_A017UTAU: TDTM_A017UTAU
  OldCreateOrder = False
  Left = 184
  Top = 107
  Height = 375
  Width = 544
  object QRY_059: TOraQuery
    SQLInsert.Strings = (
      'INSERT INTO tbl_eqv'
      '  (NIDTBL_EQV, NIDTBL_U, NIDTBL_OP, NUSUAUTOR)'
      'VALUES'
      '  (:NIDTBL_EQV, :NIDTBL_U, :NIDTBL_OP, :NUSUAUTOR)')
    SQLDelete.Strings = (
      'DELETE FROM tbl_eqv'
      'WHERE'
      '  NIDTBL_EQV = :NIDTBL_EQV')
    SQLUpdate.Strings = (
      'UPDATE tbl_eqv'
      'SET'
      '  NIDTBL_EQV = :NIDTBL_EQV,'
      '  NIDTBL_U = :NIDTBL_U,'
      '  NIDTBL_OP = :NIDTBL_OP,'
      '  NUSUAUTOR = :NUSUAUTOR'
      'WHERE'
      '  NIDTBL_EQV = :OLD_NIDTBL_EQV')
    SQLLock.Strings = (
      'SELECT * FROM tbl_eqv'
      'WHERE'
      '  NIDTBL_EQV = :NIDTBL_EQV'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      'WHERE'
      '  NIDTBL_EQV = :NIDTBL_EQV')
    SQL.Strings = (
      'select * from tbl_eqv where nidtbl_u = :nidtbl_u')
    Left = 20
    Top = 20
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'nidtbl_u'
      end>
    object QRY_059NIDTBL_EQV: TFloatField
      FieldName = 'NIDTBL_EQV'
      Required = True
    end
    object QRY_059NIDTBL_U: TFloatField
      FieldName = 'NIDTBL_U'
    end
    object QRY_059NIDTBL_OP: TFloatField
      FieldName = 'NIDTBL_OP'
      Required = True
    end
    object QRY_059NUSUAUTOR: TFloatField
      FieldName = 'NUSUAUTOR'
      Required = True
    end
  end
  object DTS_059: TOraDataSource
    DataSet = QRY_059
    Left = 84
    Top = 20
  end
  object QRY_058: TOraQuery
    SQL.Strings = (
      'select * from tbl_op where nidtbl_u = :nidtbl_u')
    Left = 20
    Top = 84
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'nidtbl_u'
      end>
    object QRY_058NIDTBL_OP: TFloatField
      FieldName = 'NIDTBL_OP'
      Required = True
    end
    object QRY_058CNOMEPER: TStringField
      FieldName = 'CNOMEPER'
      Size = 40
    end
    object QRY_058NIDTBL_U: TFloatField
      FieldName = 'NIDTBL_U'
    end
  end
end
