object DTM_A014UTAU: TDTM_A014UTAU
  OldCreateOrder = False
  Left = 143
  Top = 186
  Height = 340
  Width = 492
  object QRY_051: TOraQuery
    SQL.Strings = (
      'select '
      '  tbl_u.nidtbl_u,'
      '  tbl_u.cnomeusu '
      'from '
      '  tbl_opu,tbl_u'
      'where '
      '  tbl_opu.noperador = :noperador and'
      '  tbl_u.nidtbl_u = tbl_opu.nidtbl_u')
    Left = 16
    Top = 136
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'noperador'
      end>
    object QRY_051NIDTBL_U: TFloatField
      FieldName = 'NIDTBL_U'
      Required = True
    end
    object QRY_051CNOMEUSU: TStringField
      FieldName = 'CNOMEUSU'
      Size = 10
    end
  end
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
      'select * from tbl_eqv where nidtbl_op = :nidtbl_op')
    Left = 20
    Top = 16
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'nidtbl_op'
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
  object QRY_058: TOraQuery
    SQL.Strings = (
      'select * from tbl_op where nidtbl_u = :nidtbl_u')
    Left = 16
    Top = 76
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
  object DTS_059: TOraDataSource
    DataSet = QRY_059
    Left = 88
    Top = 16
  end
  object DTS_058: TOraDataSource
    DataSet = QRY_058
    Left = 88
    Top = 76
  end
end
