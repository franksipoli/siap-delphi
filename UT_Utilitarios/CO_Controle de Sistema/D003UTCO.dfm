object DTM_A003UTCO: TDTM_A003UTCO
  OldCreateOrder = False
  Left = 108
  Top = 163
  Height = 274
  Width = 593
  object QRY_041: TOraQuery
    SQLInsert.Strings = (
      'INSERT INTO tbl_a'
      
        '  (CNOMEUNIT, CDESCAPLI, CNOMEBMP, CNOMEFORM, CSHOWFORM, CITENSM' +
        'ENU, CTITAPLIC, CCATEGORIA, NIMGSAIDA, NIDTBL_A, NIDTBL_G, NAPLI' +
        'CAUX, NIDTBL_PB)'
      'VALUES'
      
        '  (:CNOMEUNIT, :CDESCAPLI, :CNOMEBMP, :CNOMEFORM, :CSHOWFORM, :C' +
        'ITENSMENU, :CTITAPLIC, :CCATEGORIA, :NIMGSAIDA, :NIDTBL_A, :NIDT' +
        'BL_G, :NAPLICAUX, :NIDTBL_PB)')
    SQLDelete.Strings = (
      'DELETE FROM tbl_a'
      'WHERE'
      '  NIDTBL_A = :NIDTBL_A')
    SQLUpdate.Strings = (
      'UPDATE tbl_a'
      'SET'
      '  CNOMEUNIT = :CNOMEUNIT,'
      '  CDESCAPLI = :CDESCAPLI,'
      '  CNOMEBMP = :CNOMEBMP,'
      '  CNOMEFORM = :CNOMEFORM,'
      '  CSHOWFORM = :CSHOWFORM,'
      '  CITENSMENU = :CITENSMENU,'
      '  CTITAPLIC = :CTITAPLIC,'
      '  CCATEGORIA = :CCATEGORIA,'
      '  NIMGSAIDA = :NIMGSAIDA,'
      '  NIDTBL_A = :NIDTBL_A,'
      '  NIDTBL_G = :NIDTBL_G,'
      '  NAPLICAUX = :NAPLICAUX,'
      '  NIDTBL_PB = :NIDTBL_PB'
      'WHERE'
      '  NIDTBL_A = :OLD_NIDTBL_A')
    SQLLock.Strings = (
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      'WHERE'
      '  NIDTBL_A = :NIDTBL_A')
    SQL.Strings = (
      'select * from tbl_a')
    Left = 32
    Top = 12
    object QRY_041CNOMEUNIT: TStringField
      FieldName = 'CNOMEUNIT'
      Size = 8
    end
    object QRY_041CDESCAPLI: TStringField
      FieldName = 'CDESCAPLI'
      Size = 30
    end
    object QRY_041CNOMEBMP: TStringField
      FieldName = 'CNOMEBMP'
    end
    object QRY_041CNOMEFORM: TStringField
      FieldName = 'CNOMEFORM'
    end
    object QRY_041CSHOWFORM: TStringField
      FieldName = 'CSHOWFORM'
      Size = 1
    end
    object QRY_041CITENSMENU: TStringField
      FieldName = 'CITENSMENU'
      Size = 10
    end
    object QRY_041CTITAPLIC: TStringField
      FieldName = 'CTITAPLIC'
      Size = 30
    end
    object QRY_041CCATEGORIA: TStringField
      FieldName = 'CCATEGORIA'
      Size = 30
    end
    object QRY_041NIMGSAIDA: TIntegerField
      FieldName = 'NIMGSAIDA'
    end
    object QRY_041NIDTBL_A: TFloatField
      FieldName = 'NIDTBL_A'
      Required = True
    end
    object QRY_041NIDTBL_G: TFloatField
      FieldName = 'NIDTBL_G'
    end
    object QRY_041NAPLICAUX: TIntegerField
      FieldName = 'NAPLICAUX'
      OnGetText = QRY_041NAPLICAUXGetText
      OnSetText = QRY_041NAPLICAUXSetText
    end
    object QRY_041NIDTBL_PB: TFloatField
      FieldName = 'NIDTBL_PB'
    end
  end
  object QRY_042: TOraQuery
    SQLInsert.Strings = (
      'INSERT INTO tbl_ao'
      '  (NIDTBL_A, NIDTBL_O, LREQUERIDO, NIDTBL_AO, CFUNCAO)'
      'VALUES'
      '  (:NIDTBL_A, :NIDTBL_O, :LREQUERIDO, :NIDTBL_AO, :CFUNCAO)')
    SQLDelete.Strings = (
      'DELETE FROM tbl_ao'
      'WHERE'
      '  NIDTBL_AO = :NIDTBL_AO')
    SQLUpdate.Strings = (
      'UPDATE tbl_ao'
      'SET'
      '  NIDTBL_A = :NIDTBL_A,'
      '  NIDTBL_O = :NIDTBL_O,'
      '  LREQUERIDO = :LREQUERIDO,'
      '  NIDTBL_AO = :NIDTBL_AO,'
      '  CFUNCAO = :CFUNCAO'
      'WHERE'
      '  NIDTBL_AO = :OLD_NIDTBL_AO')
    SQLLock.Strings = (
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      'WHERE'
      '  ao.NIDTBL_AO = :NIDTBL_AO')
    SQL.Strings = (
      
        'select ao.*,o.cnomeobj, o.cnomecla, o.chint from tbl_ao ao, tbl_' +
        'o o '
      'where ao.nidtbl_a = :nidtbl_a and o.nidtbl_o = ao.nidtbl_o')
    MasterSource = DTS_041
    CachedUpdates = True
    BeforeInsert = QRY_042BeforeInsert
    AfterScroll = QRY_042AfterScroll
    Left = 32
    Top = 80
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'nidtbl_a'
      end>
    object QRY_042NIDTBL_A: TFloatField
      FieldName = 'NIDTBL_A'
      Required = True
    end
    object QRY_042NIDTBL_O: TFloatField
      FieldName = 'NIDTBL_O'
      Required = True
    end
    object QRY_042LREQUERIDO: TIntegerField
      DefaultExpression = '0'
      FieldName = 'LREQUERIDO'
    end
    object QRY_042NIDTBL_AO: TFloatField
      FieldName = 'NIDTBL_AO'
      Required = True
    end
    object QRY_042CFUNCAO: TStringField
      FieldName = 'CFUNCAO'
      Size = 30
    end
    object QRY_042CNOMEOBJ: TStringField
      FieldName = 'CNOMEOBJ'
    end
    object QRY_042CNOMECLA: TStringField
      FieldName = 'CNOMECLA'
    end
    object QRY_042CHINT: TStringField
      FieldName = 'CHINT'
      Size = 30
    end
  end
  object QRY_045: TOraQuery
    SQLInsert.Strings = (
      'INSERT INTO tbl_at'
      
        '  (CTBLCOMPO, CORDER, CMASTERF, CMASTERS, MSELECT, NIDTBL_AT, NI' +
        'DTBL_T, NIDTBL_A)'
      'VALUES'
      
        '  (:CTBLCOMPO, :CORDER, :CMASTERF, :CMASTERS, :MSELECT, :NIDTBL_' +
        'AT, :NIDTBL_T, :NIDTBL_A)')
    SQLDelete.Strings = (
      'DELETE FROM tbl_at'
      'WHERE'
      '  NIDTBL_AT = :NIDTBL_AT')
    SQLUpdate.Strings = (
      'UPDATE tbl_at'
      'SET'
      '  CTBLCOMPO = :CTBLCOMPO,'
      '  CORDER = :CORDER,'
      '  CMASTERF = :CMASTERF,'
      '  CMASTERS = :CMASTERS,'
      '  MSELECT = :MSELECT,'
      '  NIDTBL_AT = :NIDTBL_AT,'
      '  NIDTBL_T = :NIDTBL_T,'
      '  NIDTBL_A = :NIDTBL_A'
      'WHERE'
      '  NIDTBL_AT = :OLD_NIDTBL_AT')
    SQLLock.Strings = (
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      'WHERE'
      '  NIDTBL_AT = :NIDTBL_AT')
    SQL.Strings = (
      'select * from tbl_at where nidtbl_a =:nidtbl_a')
    MasterSource = DTS_041
    CachedUpdates = True
    Left = 32
    Top = 148
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'nidtbl_a'
      end>
    object QRY_045CTBLCOMPO: TStringField
      FieldName = 'CTBLCOMPO'
      Size = 10
    end
    object QRY_045CORDER: TStringField
      FieldName = 'CORDER'
      FixedChar = True
      Size = 40
    end
    object QRY_045CMASTERF: TStringField
      FieldName = 'CMASTERF'
      Size = 10
    end
    object QRY_045CMASTERS: TStringField
      FieldName = 'CMASTERS'
      Size = 10
    end
    object QRY_045MSELECT: TMemoField
      FieldName = 'MSELECT'
      BlobType = ftMemo
    end
    object QRY_045NIDTBL_AT: TFloatField
      FieldName = 'NIDTBL_AT'
      Required = True
    end
    object QRY_045NIDTBL_T: TFloatField
      FieldName = 'NIDTBL_T'
      Required = True
    end
    object QRY_045NIDTBL_A: TFloatField
      FieldName = 'NIDTBL_A'
      Required = True
    end
  end
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
      '  CNOMETBL = :CNOMETBL')
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
      '  CNOMETBL = :OLD_CNOMETBL')
    SQLLock.Strings = (
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      'WHERE'
      '  CNOMETBL = :CNOMETBL')
    SQL.Strings = (
      'select * from tbl_t')
    Left = 156
    Top = 13
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
  object QRY_044: TOraQuery
    SQL.Strings = (
      'select cnomeobj, cnomecla, chint, nidtbl_o from tbl_o'
      ''
      'group by cnomecla, cnomeobj, chint, nidtbl_o')
    CachedUpdates = True
    Left = 156
    Top = 81
  end
  object DTS_041: TOraDataSource
    AutoEdit = False
    DataSet = QRY_041
    OnDataChange = DTS_041DataChange
    Left = 97
    Top = 12
  end
  object DTS_042: TOraDataSource
    AutoEdit = False
    DataSet = QRY_042
    Left = 97
    Top = 80
  end
  object DTS_045: TOraDataSource
    AutoEdit = False
    DataSet = QRY_045
    OnDataChange = DTS_045DataChange
    Left = 97
    Top = 148
  end
  object DTS_043: TOraDataSource
    AutoEdit = False
    DataSet = QRY_043
    Left = 215
    Top = 13
  end
  object DTS_044: TOraDataSource
    AutoEdit = False
    DataSet = QRY_044
    Left = 215
    Top = 81
  end
  object QRY_046: TOraQuery
    SQL.Strings = (
      'select * from tbl_g')
    Left = 156
    Top = 145
    object QRY_046CNOMEGRUPO: TStringField
      FieldName = 'CNOMEGRUPO'
      Size = 15
    end
    object QRY_046NSEQUENCIA: TIntegerField
      FieldName = 'NSEQUENCIA'
      Required = True
    end
    object QRY_046NIDTBL_G: TFloatField
      FieldName = 'NIDTBL_G'
      Required = True
    end
  end
  object DTS_046: TOraDataSource
    AutoEdit = False
    DataSet = QRY_046
    Left = 219
    Top = 145
  end
  object QRY_056: TOraQuery
    SQL.Strings = (
      'select * from tbl_pb')
    Left = 280
    Top = 13
    object QRY_056NIDTBL_PB: TFloatField
      FieldName = 'NIDTBL_PB'
      Required = True
    end
    object QRY_056CSIGLAPER: TStringField
      FieldName = 'CSIGLAPER'
      Size = 2
    end
    object QRY_056CNOMEPER: TStringField
      FieldName = 'CNOMEPER'
      Size = 30
    end
  end
  object DTS_056: TOraDataSource
    AutoEdit = False
    DataSet = QRY_056
    Left = 335
    Top = 13
  end
end
