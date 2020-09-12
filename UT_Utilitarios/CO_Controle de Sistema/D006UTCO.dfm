object DTM_A006UTCO: TDTM_A006UTCO
  OldCreateOrder = False
  Left = 195
  Top = 103
  Height = 260
  Width = 415
  object QRY_041: TOraQuery
    SQL.Strings = (
      
        'select cnomeunit, cdescapli, ccategoria from tbl_a where nidtbl_' +
        'g is null ')
    Left = 20
    Top = 32
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
    Left = 100
    Top = 32
  end
end
