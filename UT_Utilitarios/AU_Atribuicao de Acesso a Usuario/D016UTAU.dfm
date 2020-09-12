object DTM_A016UTAU: TDTM_A016UTAU
  OldCreateOrder = False
  Left = 184
  Top = 107
  Height = 375
  Width = 544
  object QRY_061: TOraQuery
    SQLInsert.Strings = (
      'INSERT INTO tbl_opu'
      '  (NIDTBL_OPU, NOPERADOR, NIDTBL_U)'
      'VALUES'
      '  (:NIDTBL_OPU, :NOPERADOR, :NIDTBL_U)')
    SQLDelete.Strings = (
      'DELETE FROM tbl_opu'
      'WHERE'
      '  NIDTBL_OPU = :NIDTBL_OPU')
    SQLUpdate.Strings = (
      'UPDATE tbl_opu'
      'SET'
      '  NIDTBL_OPU = :NIDTBL_OPU,'
      '  NOPERADOR = :NOPERADOR,'
      '  NIDTBL_U = :NIDTBL_U'
      'WHERE'
      '  NIDTBL_OPU = :OLD_NIDTBL_OPU')
    SQLLock.Strings = (
      'SELECT * FROM tbl_opu'
      'WHERE'
      '  NIDTBL_OPU = :NIDTBL_OPU'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      'WHERE'
      '  NIDTBL_OPU = :NIDTBL_OPU')
    SQL.Strings = (
      
        'select tbl_opu.*,tbl_u.cnomeusu,InitCap(cadgrl.cnomegrl) as cnom' +
        'egrl'
      'from tbl_opu,tbl_u,cadgrl'
      'where'
      '  tbl_opu.noperador = :noperador and'
      '  tbl_u.nidtbl_u = tbl_opu.nidtbl_u and'
      '  cadgrl.nidcadgrl = tbl_u.nidcadgrl')
    Left = 24
    Top = 24
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'noperador'
      end>
    object QRY_061NIDTBL_OPU: TFloatField
      FieldName = 'NIDTBL_OPU'
    end
    object QRY_061NOPERADOR: TFloatField
      FieldName = 'NOPERADOR'
    end
    object QRY_061NIDTBL_U: TFloatField
      FieldName = 'NIDTBL_U'
    end
    object QRY_061CNOMEUSU: TStringField
      FieldName = 'CNOMEUSU'
      Size = 10
    end
    object QRY_061CNOMEGRL: TStringField
      FieldName = 'CNOMEGRL'
      Size = 70
    end
  end
  object QRY_051: TOraQuery
    SQL.Strings = (
      'select * from tbl_u where nidtbl_u = :nidtbl_u')
    Left = 80
    Top = 76
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'nidtbl_u'
      end>
    object QRY_051CNOMEUSU: TStringField
      FieldName = 'CNOMEUSU'
      Size = 10
    end
    object QRY_051CSENHA: TStringField
      FieldName = 'CSENHA'
      Size = 50
    end
    object QRY_051NIDTBL_U: TFloatField
      FieldName = 'NIDTBL_U'
      Required = True
    end
    object QRY_051NIDCADGRL: TFloatField
      FieldName = 'NIDCADGRL'
      Required = True
    end
    object QRY_051NADMIN: TFloatField
      FieldName = 'NADMIN'
    end
    object QRY_051NSUPERUSU: TFloatField
      FieldName = 'NSUPERUSU'
    end
  end
  object DTS_051: TOraDataSource
    DataSet = QRY_051
    Left = 20
    Top = 76
  end
  object QRY_051_01: TOraQuery
    SQL.Strings = (
      
        'select * from tbl_u where nidtbl_u <> :nidtbl_u and nsuperusu = ' +
        '0')
    Left = 28
    Top = 124
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'nidtbl_u'
      end>
    object QRY_051_01CNOMEUSU: TStringField
      FieldName = 'CNOMEUSU'
      Size = 10
    end
    object QRY_051_01CSENHA: TStringField
      FieldName = 'CSENHA'
      Size = 50
    end
    object QRY_051_01NIDTBL_U: TFloatField
      FieldName = 'NIDTBL_U'
      Required = True
    end
    object QRY_051_01NIDCADGRL: TFloatField
      FieldName = 'NIDCADGRL'
      Required = True
    end
    object QRY_051_01NADMIN: TFloatField
      FieldName = 'NADMIN'
    end
    object QRY_051_01NSUPERUSU: TFloatField
      FieldName = 'NSUPERUSU'
    end
  end
  object DTS_061: TOraDataSource
    DataSet = QRY_061
    Left = 80
    Top = 24
  end
end
