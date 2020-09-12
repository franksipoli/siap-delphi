object DTM_A007UTCO: TDTM_A007UTCO
  OldCreateOrder = False
  Left = 187
  Top = 111
  Height = 260
  Width = 402
  object QRY_044: TOraQuery
    Session = DMControle.Conexao
    SQL.Strings = (
      'select cnomeobj, cnomecla, chint, nidtbl_o from tbl_o'
      ''
      'group by cnomecla, cnomeobj, chint, nidtbl_o'
      ''
      'order by cnomeobj')
    Left = 24
    Top = 28
    object QRY_044CNOMEOBJ: TStringField
      FieldName = 'CNOMEOBJ'
    end
    object QRY_044CNOMECLA: TStringField
      FieldName = 'CNOMECLA'
    end
    object QRY_044CHINT: TStringField
      FieldName = 'CHINT'
      Size = 30
    end
    object QRY_044NIDTBL_O: TFloatField
      FieldName = 'NIDTBL_O'
      Required = True
    end
  end
  object QRY_042: TOraQuery
    Session = DMControle.Conexao
    SQL.Strings = (
      
        'select tbl_o.cnomeobj, tbl_o.cnomecla, tbl_o.chint from tbl_o, t' +
        'bl_ao'
      'where tbl_ao.nidtbl_a = :nidtbl_a and'
      'tbl_o.nidtbl_o = tbl_ao.nidtbl_o')
    Left = 24
    Top = 88
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'nidtbl_a'
      end>
  end
  object DTS_044: TOraDataSource
    DataSet = QRY_044
    Left = 104
    Top = 28
  end
  object DTS_042: TOraDataSource
    DataSet = QRY_042
    Left = 104
    Top = 88
  end
end
