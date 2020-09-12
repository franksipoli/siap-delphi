object DTM_A005UTCO: TDTM_A005UTCO
  OldCreateOrder = False
  Left = 142
  Top = 139
  Height = 343
  Width = 413
  object QRY_043: TOraQuery
    SQLInsert.Strings = (
      'INSERT INTO tbl_t'
      
        '  (CNOMETBL, CNOMEFORM, LINDICE, CDESCRTBL, CORDERREL, CSEQBROWS' +
        'E, NIDTBL_T)'
      'VALUES'
      
        '  (:CNOMETBL, :CNOMEFORM, :LINDICE, :CDESCRTBL, :CORDERREL, :CSE' +
        'QBROWSE, :NIDTBL_T)')
    SQLDelete.Strings = (
      'DELETE FROM tbl_t'
      'WHERE'
      '  NIDTBL_T = :NIDTBL_T')
    SQLUpdate.Strings = (
      'UPDATE tbl_t'
      'SET'
      '  CNOMETBL = :CNOMETBL,'
      '  CNOMEFORM = :CNOMEFORM,'
      '  LINDICE = :LINDICE,'
      '  CDESCRTBL = :CDESCRTBL,'
      '  CORDERREL = :CORDERREL,'
      '  CSEQBROWSE = :CSEQBROWSE,'
      '  NIDTBL_T = :NIDTBL_T'
      'WHERE'
      '  NIDTBL_T = :OLD_NIDTBL_T')
    SQLLock.Strings = (
      'SELECT * FROM tbl_t'
      'WHERE'
      '  NIDTBL_T = :NIDTBL_T'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      'WHERE'
      '  NIDTBL_T = :NIDTBL_T')
    SQL.Strings = (
      'select * from tbl_t')
    AfterScroll = QRY_043AfterScroll
    Left = 24
    Top = 20
    object QRY_043CNOMETBL: TStringField
      FieldName = 'CNOMETBL'
      Size = 8
    end
    object QRY_043CNOMEFORM: TStringField
      FieldName = 'CNOMEFORM'
      Size = 50
    end
    object QRY_043LINDICE: TIntegerField
      FieldName = 'LINDICE'
    end
    object QRY_043CDESCRTBL: TStringField
      FieldName = 'CDESCRTBL'
      Size = 40
    end
    object QRY_043CORDERREL: TStringField
      FieldName = 'CORDERREL'
      Size = 80
    end
    object QRY_043CSEQBROWSE: TStringField
      FieldName = 'CSEQBROWSE'
      Size = 100
    end
    object QRY_043NIDTBL_T: TFloatField
      FieldName = 'NIDTBL_T'
      Required = True
    end
  end
  object QRY_047: TOraQuery
    SQLInsert.Strings = (
      'INSERT INTO tbl_et'
      '  (NIDTBL_T, NIDTBL_D, NIDTBL_ET)'
      'VALUES'
      '  (:NIDTBL_T, :NIDTBL_D, :NIDTBL_ET)')
    SQLDelete.Strings = (
      'DELETE FROM tbl_et'
      'WHERE'
      '  NIDTBL_ET = :NIDTBL_ET')
    SQLUpdate.Strings = (
      'UPDATE tbl_et'
      'SET'
      '  NIDTBL_T = :NIDTBL_T,'
      '  NIDTBL_D = :NIDTBL_D,'
      '  NIDTBL_ET = :NIDTBL_ET'
      'WHERE'
      '  NIDTBL_ET = :OLD_NIDTBL_ET')
    SQLLock.Strings = (
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      'SELECT * FROM tbl_et'
      'WHERE'
      '  NIDTBL_ET = :NIDTBL_ET')
    SQL.Strings = (
      
        'select tbl_et.*, tbl_d.cnomecampo, tbl_d.ctipocampo, tbl_d.ctitu' +
        'lo,tbl_d.ntamanho, tbl_d.ndecimal, tbl_d.ncodtabela'
      'from tbl_et, tbl_d'
      'where tbl_d.nidtbl_d = tbl_et.nidtbl_d and nidtbl_t = :nidtbl_t')
    MasterSource = DTS_043
    CachedUpdates = True
    Left = 24
    Top = 84
    ParamData = <
      item
        DataType = ftFloat
        Name = 'NIDTBL_T'
        ParamType = ptInput
        Value = 3
      end>
    object QRY_047NIDTBL_T: TIntegerField
      FieldName = 'NIDTBL_T'
    end
    object QRY_047NIDTBL_D: TFloatField
      FieldName = 'NIDTBL_D'
    end
    object QRY_047NIDTBL_ET: TFloatField
      FieldName = 'NIDTBL_ET'
      Required = True
    end
    object QRY_047CNOMECAMPO: TStringField
      FieldName = 'CNOMECAMPO'
    end
    object QRY_047CTIPOCAMPO: TStringField
      FieldName = 'CTIPOCAMPO'
      Size = 1
    end
    object QRY_047CTITULO: TStringField
      FieldName = 'CTITULO'
    end
    object QRY_047NTAMANHO: TIntegerField
      FieldName = 'NTAMANHO'
    end
    object QRY_047NDECIMAL: TIntegerField
      FieldName = 'NDECIMAL'
    end
    object QRY_047NCODTABELA: TIntegerField
      FieldName = 'NCODTABELA'
    end
  end
  object DTS_043: TOraDataSource
    AutoEdit = False
    DataSet = QRY_043
    OnStateChange = DTS_043StateChange
    OnDataChange = DTS_043DataChange
    Left = 96
    Top = 20
  end
  object DTS_047: TOraDataSource
    AutoEdit = False
    DataSet = QRY_047
    Left = 97
    Top = 84
  end
  object QRY_041: TOraQuery
    SQL.Strings = (
      'select cdescapli, cnomeform from tbl_a')
    Left = 24
    Top = 144
    object QRY_041CDESCAPLI: TStringField
      FieldName = 'CDESCAPLI'
      Size = 30
    end
    object QRY_041CNOMEFORM: TStringField
      FieldName = 'CNOMEFORM'
    end
  end
  object DTS_041: TOraDataSource
    AutoEdit = False
    DataSet = QRY_041
    Left = 96
    Top = 148
  end
  object QRY_047_01: TOraQuery
    SQLInsert.Strings = (
      'INSERT INTO tbl_et'
      '  (NIDTBL_T, NIDTBL_D, NIDTBL_ET)'
      'VALUES'
      '  (:NIDTBL_T, :NIDTBL_D, :NIDTBL_ET)')
    SQLDelete.Strings = (
      'DELETE FROM tbl_et'
      'WHERE'
      '  NIDTBL_ET = :NIDTBL_ET')
    SQLUpdate.Strings = (
      'UPDATE tbl_et'
      'SET'
      '  NIDTBL_T = :NIDTBL_T,'
      '  NIDTBL_D = :NIDTBL_D,'
      '  NIDTBL_ET = :NIDTBL_ET'
      'WHERE'
      '  NIDTBL_ET = :OLD_NIDTBL_ET')
    SQLLock.Strings = (
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      'SELECT * FROM tbl_et'
      'WHERE'
      '  NIDTBL_ET = :NIDTBL_ET')
    SQL.Strings = (
      'select * from tbl_et'
      '')
    MasterSource = DTS_043
    CachedUpdates = True
    Left = 24
    Top = 196
    object QRY_047_01NIDTBL_T: TIntegerField
      FieldName = 'NIDTBL_T'
    end
    object QRY_047_01NIDTBL_D: TFloatField
      FieldName = 'NIDTBL_D'
    end
    object QRY_047_01NIDTBL_ET: TFloatField
      FieldName = 'NIDTBL_ET'
      Required = True
    end
  end
  object DTS_047_01: TOraDataSource
    AutoEdit = False
    DataSet = QRY_047_01
    Left = 97
    Top = 196
  end
end
