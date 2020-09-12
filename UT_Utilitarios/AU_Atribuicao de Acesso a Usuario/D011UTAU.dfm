object DTM_A011UTAU: TDTM_A011UTAU
  OldCreateOrder = False
  Left = 167
  Top = 111
  Height = 375
  Width = 576
  object QRY_APLOPERADOR: TOraQuery
    SQL.Strings = (
      'begin'
      '  :RESULT := MPL_EQUIV.GETAPLICACOESUSU(:NIDTBL_U, :ORDERAPLI);'
      'end;')
    AutoCommit = False
    Left = 48
    Top = 20
    ParamData = <
      item
        DataType = ftCursor
        Name = 'RESULT'
        ParamType = ptOutput
        Value = 'Object'
      end
      item
        DataType = ftUnknown
        Name = 'NIDTBL_U'
      end
      item
        DataType = ftFloat
        Name = 'ORDERAPLI'
        ParamType = ptInput
      end>
  end
  object QRY_056: TOraQuery
    SQL.Strings = (
      'select nidtbl_pb, InitCap(cnomeper) as cnomeper from tbl_pb '
      
        'where nidtbl_pb in (select nidtbl_pb from tbl_tmp) order by tbl_' +
        'pb.cnomeper')
    Left = 172
    Top = 20
  end
  object QRY_APLUSUARIO: TOraQuery
    SQL.Strings = (
      'begin'
      '  :RESULT := MPL_EQUIV.GETAPLICACOESUSU(:NIDTBL_U, :ORDERAPLI);'
      'end;')
    AutoCommit = False
    Left = 52
    Top = 96
    ParamData = <
      item
        DataType = ftCursor
        Name = 'RESULT'
        ParamType = ptOutput
        Value = 'Object'
      end
      item
        DataType = ftUnknown
        Name = 'NIDTBL_U'
      end
      item
        DataType = ftFloat
        Name = 'ORDERAPLI'
        ParamType = ptInput
      end>
  end
  object QRY_055: TOraQuery
    SQL.Strings = (
      'select cnomeper from tbl_op where nidtbl_op = :nidtbl_op')
    Left = 172
    Top = 96
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'nidtbl_op'
      end>
  end
  object QRY_052: TOraQuery
    SQLInsert.Strings = (
      'INSERT INTO tbl_ua'
      '  (NIDTBL_UA, NIDTBL_A, NIDTBL_U, NUSUAUTOR)'
      'VALUES'
      '  (:NIDTBL_UA, :NIDTBL_A, :NIDTBL_U, :NUSUAUTOR)')
    SQLDelete.Strings = (
      'DELETE FROM tbl_ua'
      'WHERE'
      '  NIDTBL_UA = :NIDTBL_UA')
    SQLUpdate.Strings = (
      'UPDATE tbl_ua'
      'SET'
      '  NIDTBL_UA = :NIDTBL_UA,'
      '  NIDTBL_A = :NIDTBL_A,'
      '  NIDTBL_U = :NIDTBL_U,'
      '  NUSUAUTOR = :NUSUAUTOR'
      'WHERE'
      '  NIDTBL_UA = :OLD_NIDTBL_UA')
    SQLLock.Strings = (
      'SELECT * FROM tbl_ua'
      'WHERE'
      '  NIDTBL_UA = :NIDTBL_UA'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      'WHERE'
      '  NIDTBL_UA = :NIDTBL_UA')
    SQL.Strings = (
      
        'select tbl_ua.*, tbl_a.nidtbl_pb, tbl_a.cdescapli, tbl_a.cnomeun' +
        'it, tbl_pb.csiglaper '
      'from tbl_ua, tbl_a, tbl_pb'
      'where tbl_ua.nidtbl_u = :nidtbl_u and'
      'tbl_a.nidtbl_a = tbl_ua.nidtbl_a and'
      'tbl_pb.nidtbl_pb = tbl_a.nidtbl_pb')
    Left = 52
    Top = 172
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'nidtbl_u'
      end>
  end
  object DTS_052: TOraDataSource
    DataSet = QRY_052
    Left = 52
    Top = 236
  end
  object QRY_TMP: TOraQuery
    SQL.Strings = (
      'select InitCap(cdescapli)as cdescapli from tbl_tmp')
    AutoCommit = False
    Left = 176
    Top = 236
    object QRY_TMPCDESCAPLI: TStringField
      FieldName = 'CDESCAPLI'
      Size = 30
    end
  end
end
