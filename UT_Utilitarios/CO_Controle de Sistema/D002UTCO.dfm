object DTM_A002UTCO: TDTM_A002UTCO
  OldCreateOrder = False
  Left = 185
  Top = 180
  Height = 239
  Width = 436
  object QRY_040: TOraQuery
    SQL.Strings = (
      'select tbl_g.* from tbl_g ')
    Left = 16
    Top = 12
    object QRY_040CNOMEGRUPO: TStringField
      FieldName = 'CNOMEGRUPO'
      Size = 15
    end
    object QRY_040NSEQUENCIA: TIntegerField
      FieldName = 'NSEQUENCIA'
      Required = True
    end
    object QRY_040NIDTBL_G: TFloatField
      FieldName = 'NIDTBL_G'
      Required = True
    end
  end
  object DTS_040: TOraDataSource
    DataSet = QRY_040
    Left = 72
    Top = 12
  end
  object QRY_041: TOraQuery
    SQLInsert.Strings = (
      'INSERT INTO tbl_a'
      
        '  (CNOMEUNIT, CDESCAPLI, CNOMEBMP, CNOMEFORM, CSHOWFORM, CITENSM' +
        'ENU, CTITAPLIC, CCATEGORIA, NIMGSAIDA, NIDTBL_A, NIDTBL_G)'
      'VALUES'
      
        '  (:CNOMEUNIT, :CDESCAPLI, :CNOMEBMP, :CNOMEFORM, :CSHOWFORM, :C' +
        'ITENSMENU, :CTITAPLIC, :CCATEGORIA, :NIMGSAIDA, :NIDTBL_A, :NIDT' +
        'BL_G)')
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
      '  NIDTBL_G = :NIDTBL_G'
      'WHERE'
      '  NIDTBL_A = :OLD_NIDTBL_A')
    SQLLock.Strings = (
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      'WHERE'
      '  NIDTBL_A = :NIDTBL_A')
    SQL.Strings = (
      'select cnomeunit, cdescapli, ccategoria from tbl_a'
      'where nidtbl_g = :nidtbl_g'
      '')
    MasterSource = DTS_040
    CachedUpdates = True
    Left = 16
    Top = 64
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'nidtbl_g'
      end>
    object QRY_041CNOMEUNIT: TStringField
      FieldName = 'CNOMEUNIT'
      Size = 8
    end
    object QRY_041CDESCAPLI: TStringField
      FieldName = 'CDESCAPLI'
      Size = 30
    end
    object QRY_041CCATEGORIA: TStringField
      FieldName = 'CCATEGORIA'
      Size = 30
    end
  end
  object DTS_041: TOraDataSource
    DataSet = QRY_041
    Left = 76
    Top = 64
  end
end
