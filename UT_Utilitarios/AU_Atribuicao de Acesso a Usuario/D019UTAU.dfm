object DTM_A019UTAU: TDTM_A019UTAU
  OldCreateOrder = False
  Left = 184
  Top = 107
  Height = 281
  Width = 444
  object QRY_051: TOraQuery
    SQL.Strings = (
      'select * from tbl_u where nidtbl_u = :nidtbl_u')
    Left = 20
    Top = 12
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'nidtbl_u'
      end>
  end
  object QRY_051_01: TOraQuery
    SQL.Strings = (
      'select * from tbl_u')
    Left = 24
    Top = 100
  end
  object DTS_051: TOraDataSource
    DataSet = QRY_051
    Left = 104
    Top = 12
  end
  object DTS_051_01: TOraDataSource
    DataSet = QRY_051_01
    Left = 104
    Top = 100
  end
end
