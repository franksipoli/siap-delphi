object DTM_A009UTCO: TDTM_A009UTCO
  OldCreateOrder = False
  Left = 154
  Top = 132
  Height = 238
  Width = 400
  object QRY_046: TOraQuery
    SQL.Strings = (
      'select * from tbl_d')
    Left = 20
    Top = 20
  end
  object DTS_046: TOraDataSource
    DataSet = QRY_046
    Left = 92
    Top = 20
  end
end
