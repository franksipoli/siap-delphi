object DTM_A013UTAU: TDTM_A013UTAU
  OldCreateOrder = False
  Left = 180
  Top = 167
  Height = 375
  Width = 544
  object QRY_056: TOraQuery
    SQL.Strings = (
      
        'select nidtbl_pb, InitCap(cnomeper) as cnomeper from tbl_pb wher' +
        'e nidtbl_pb in (select nidtbl_pb from tbl_tmp)'
      'order by tbl_pb.cnomeper')
    Left = 152
    Top = 12
  end
  object QRY_055: TOraQuery
    SQLInsert.Strings = (
      'INSERT INTO tbl_op'
      '  (NIDTBL_OP, CNOMEPER, NIDTBL_U)'
      'VALUES'
      '  (:NIDTBL_OP, :CNOMEPER, :NIDTBL_U)')
    SQLDelete.Strings = (
      'DELETE FROM tbl_op'
      'WHERE'
      '  NIDTBL_OP = :NIDTBL_OP')
    SQLUpdate.Strings = (
      'UPDATE tbl_op'
      'SET'
      '  NIDTBL_OP = :NIDTBL_OP,'
      '  CNOMEPER = :CNOMEPER,'
      '  NIDTBL_U = :NIDTBL_U'
      'WHERE'
      '  NIDTBL_OP = :OLD_NIDTBL_OP')
    SQLLock.Strings = (
      'SELECT * FROM tbl_op'
      'WHERE'
      '  NIDTBL_OP = :NIDTBL_OP'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      'WHERE'
      '  NIDTBL_OP = :NIDTBL_OP')
    SQL.Strings = (
      'select * from tbl_op where nidtbl_u = :nidtbl_u')
    Left = 32
    Top = 76
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'nidtbl_u'
      end>
  end
  object QRY_058: TOraQuery
    SQLInsert.Strings = (
      'INSERT INTO tbl_opa'
      '  (NIDTBL_OPA, NIDTBL_OP, NIDTBL_A)'
      'VALUES'
      '  (:NIDTBL_OPA, :NIDTBL_OP, :NIDTBL_A)')
    SQLDelete.Strings = (
      'DELETE FROM tbl_opa'
      'WHERE'
      '  NIDTBL_OPA = :NIDTBL_OPA')
    SQLUpdate.Strings = (
      'UPDATE tbl_opa'
      'SET'
      '  NIDTBL_OPA = :NIDTBL_OPA,'
      '  NIDTBL_OP = :NIDTBL_OP,'
      '  NIDTBL_A = :NIDTBL_A'
      'WHERE'
      '  NIDTBL_OPA = :OLD_NIDTBL_OPA')
    SQLLock.Strings = (
      'SELECT * FROM tbl_opa'
      'WHERE'
      '  NIDTBL_OPA = :NIDTBL_OPA'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      'WHERE'
      '  NIDTBL_OPA = :NIDTBL_OPA')
    SQL.Strings = (
      'select * from tbl_opa where nidtbl_op = :nidtbl_op')
    Left = 152
    Top = 68
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'nidtbl_op'
      end>
  end
  object DTS_055: TOraDataSource
    DataSet = QRY_055
    Left = 32
    Top = 124
  end
  object DTS_058: TOraDataSource
    DataSet = QRY_058
    Left = 148
    Top = 124
  end
  object QRY_EQV: TOraQuery
    SQL.Strings = (
      
        'select count(*) as total from tbl_eqv where nidtbl_op = :nidtbl_' +
        'op')
    Left = 36
    Top = 188
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'nidtbl_op'
      end>
  end
  object QRY_TEMP: TOraQuery
    SQL.Strings = (
      'select InitCap(cdescapli)as cdescapli from tbl_tmp')
    Left = 152
    Top = 188
  end
  object QRY_APLICUSU: TOraQuery
    SQL.Strings = (
      'begin'
      '  :RESULT := MPL_EQUIV.GETAPLICACOESUSU(:CODUSU, :ORDERAPLI);'
      'end;')
    AutoCommit = False
    Left = 36
    Top = 16
    ParamData = <
      item
        DataType = ftCursor
        Name = 'RESULT'
        ParamType = ptOutput
        Value = 'Object'
      end
      item
        DataType = ftFloat
        Name = 'CODUSU'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'ORDERAPLI'
        ParamType = ptInput
      end>
  end
end
