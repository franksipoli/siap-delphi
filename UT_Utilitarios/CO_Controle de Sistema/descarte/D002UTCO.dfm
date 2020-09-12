object DTM_A002UTCO: TDTM_A002UTCO
  OldCreateOrder = False
  Left = 233
  Top = 192
  Height = 220
  Width = 400
  object QRY_040: TOraQuery
    SQL.Strings = (
      'select tbl_g.* from tbl_g ')
    Left = 8
    Top = 12
    object QRY_040NCODGRUPO: TIntegerField
      FieldName = 'NCODGRUPO'
    end
    object QRY_040CNOMEGRUPO: TStringField
      FieldName = 'CNOMEGRUPO'
      Size = 15
    end
    object QRY_040NSEQUENCIA: TIntegerField
      FieldName = 'NSEQUENCIA'
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
      
        '  (CNOMEUNIT, CDESCAPLI, NCODGRUPO, CNOMEBMP, CNOMEFORM, CSHOWFO' +
        'RM, CITENSMENU, CTITAPLIC, CCATEGORIA, NIMGSAIDA)'
      'VALUES'
      
        '  (:CNOMEUNIT, :CDESCAPLI, :NCODGRUPO, :CNOMEBMP, :CNOMEFORM, :C' +
        'SHOWFORM, :CITENSMENU, :CTITAPLIC, :CCATEGORIA, :NIMGSAIDA)')
    SQLDelete.Strings = (
      'DELETE FROM tbl_a'
      'WHERE'
      '  CNOMEUNIT = :CNOMEUNIT')
    SQLUpdate.Strings = (
      'UPDATE tbl_a'
      'SET'
      '  CNOMEUNIT = :CNOMEUNIT,'
      '  CDESCAPLI = :CDESCAPLI,'
      '  NCODGRUPO = :NCODGRUPO,'
      '  CNOMEBMP = :CNOMEBMP,'
      '  CNOMEFORM = :CNOMEFORM,'
      '  CSHOWFORM = :CSHOWFORM,'
      '  CITENSMENU = :CITENSMENU,'
      '  CTITAPLIC = :CTITAPLIC,'
      '  CCATEGORIA = :CCATEGORIA,'
      '  NIMGSAIDA = :NIMGSAIDA'
      'WHERE'
      '  CNOMEUNIT = :OLD_CNOMEUNIT')
    SQLLock.Strings = (
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      'WHERE'
      '  CNOMEUNIT = :CNOMEUNIT')
    SQL.Strings = (
      'select cnomeunit, cdescapli, ccategoria from tbl_a'
      'where ncodgrupo = :ncodgrupo'
      '')
    MasterSource = DTS_040
    CachedUpdates = True
    Left = 12
    Top = 64
    ParamData = <
      item
        DataType = ftInteger
        Name = 'NCODGRUPO'
        ParamType = ptInput
        Value = 5
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
