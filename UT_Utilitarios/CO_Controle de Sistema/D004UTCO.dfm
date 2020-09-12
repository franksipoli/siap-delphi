object DTM_A004UTCO: TDTM_A004UTCO
  OldCreateOrder = False
  Left = 127
  Top = 73
  Height = 372
  Width = 400
  object QRY_044: TOraQuery
    SQLInsert.Strings = (
      'INSERT INTO tbl_o'
      
        '  (CNOMEOBJ, CNOMECLA, CCAPTION, CHINT, CTIPOCUR, LENABLE, LVISI' +
        'BLE, LTRATADO, CNOMEBMP, CNOMEUNIT, NCODCAMPO, CCAMPOPESQ, LUPPE' +
        'RCASE, LCARINVALI, NIDTBL_O)'
      'VALUES'
      
        '  (:CNOMEOBJ, :CNOMECLA, :CCAPTION, :CHINT, :CTIPOCUR, :LENABLE,' +
        ' :LVISIBLE, :LTRATADO, :CNOMEBMP, :CNOMEUNIT, :NCODCAMPO, :CCAMP' +
        'OPESQ, :LUPPERCASE, :LCARINVALI, :NIDTBL_O)')
    SQLDelete.Strings = (
      'DELETE FROM tbl_o'
      'WHERE'
      '  NIDTBL_O = :NIDTBL_O')
    SQLUpdate.Strings = (
      'UPDATE tbl_o'
      'SET'
      '  CNOMEOBJ = :CNOMEOBJ,'
      '  CNOMECLA = :CNOMECLA,'
      '  CCAPTION = :CCAPTION,'
      '  CHINT = :CHINT,'
      '  CTIPOCUR = :CTIPOCUR,'
      '  LENABLE = :LENABLE,'
      '  LVISIBLE = :LVISIBLE,'
      '  LTRATADO = :LTRATADO,'
      '  CNOMEBMP = :CNOMEBMP,'
      '  CNOMEUNIT = :CNOMEUNIT,'
      '  NCODCAMPO = :NCODCAMPO,'
      '  CCAMPOPESQ = :CCAMPOPESQ,'
      '  LUPPERCASE = :LUPPERCASE,'
      '  LCARINVALI = :LCARINVALI,'
      '  NIDTBL_O = :NIDTBL_O'
      'WHERE'
      '  NIDTBL_O = :OLD_NIDTBL_O')
    SQLLock.Strings = (
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      'WHERE'
      '  NIDTBL_O = :NIDTBL_O')
    SQL.Strings = (
      'select * from tbl_o')
    Left = 16
    Top = 20
    object QRY_044CNOMEOBJ: TStringField
      FieldName = 'CNOMEOBJ'
    end
    object QRY_044CNOMECLA: TStringField
      FieldName = 'CNOMECLA'
    end
    object QRY_044CCAPTION: TStringField
      FieldName = 'CCAPTION'
      Size = 30
    end
    object QRY_044CHINT: TStringField
      FieldName = 'CHINT'
      Size = 30
    end
    object QRY_044CTIPOCUR: TStringField
      FieldName = 'CTIPOCUR'
      Size = 15
    end
    object QRY_044LENABLE: TIntegerField
      FieldName = 'LENABLE'
    end
    object QRY_044LVISIBLE: TIntegerField
      FieldName = 'LVISIBLE'
    end
    object QRY_044LTRATADO: TIntegerField
      FieldName = 'LTRATADO'
    end
    object QRY_044CNOMEBMP: TStringField
      FieldName = 'CNOMEBMP'
      Size = 30
    end
    object QRY_044CNOMEUNIT: TStringField
      FieldName = 'CNOMEUNIT'
      Size = 8
    end
    object QRY_044NCODCAMPO: TIntegerField
      FieldName = 'NCODCAMPO'
    end
    object QRY_044CCAMPOPESQ: TStringField
      FieldName = 'CCAMPOPESQ'
    end
    object QRY_044LUPPERCASE: TIntegerField
      FieldName = 'LUPPERCASE'
    end
    object QRY_044LCARINVALI: TIntegerField
      FieldName = 'LCARINVALI'
    end
    object QRY_044NIDTBL_O: TFloatField
      DefaultExpression = '0'
      FieldName = 'NIDTBL_O'
      Required = True
    end
  end
  object QRY_041: TOraQuery
    SQL.Strings = (
      'select cnomeunit from tbl_a')
    Left = 20
    Top = 87
  end
  object QRY_046: TOraQuery
    SQL.Strings = (
      'select nidtbl_d, cnomecampo from tbl_d')
    Left = 20
    Top = 153
    object QRY_046NIDTBL_D: TFloatField
      FieldName = 'NIDTBL_D'
      Required = True
    end
    object QRY_046CNOMECAMPO: TStringField
      FieldName = 'CNOMECAMPO'
    end
  end
  object QRY_046_01: TOraQuery
    SQL.Strings = (
      'select nidtbl_d, cnomecampo from tbl_d')
    Left = 20
    Top = 220
    object QRY_046_01NIDTBL_D: TFloatField
      FieldName = 'NIDTBL_D'
      Required = True
    end
    object QRY_046_01CNOMECAMPO: TStringField
      FieldName = 'CNOMECAMPO'
    end
  end
  object DTS_044: TOraDataSource
    AutoEdit = False
    DataSet = QRY_044
    OnDataChange = DTS_044DataChange
    Left = 90
    Top = 20
  end
  object DTS_041: TOraDataSource
    AutoEdit = False
    DataSet = QRY_041
    Left = 90
    Top = 87
  end
  object DTS_046: TOraDataSource
    AutoEdit = False
    DataSet = QRY_046
    Left = 90
    Top = 153
  end
  object DTS_046_01: TOraDataSource
    AutoEdit = False
    DataSet = QRY_046_01
    Left = 94
    Top = 220
  end
end
