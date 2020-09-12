object DTM_A012ADPT: TDTM_A012ADPT
  OldCreateOrder = False
  Left = 192
  Top = 107
  Height = 375
  Width = 544
  object QRY_155: TOraQuery
    SQL.Strings = (
      'select'
      '  *'
      'from'
      '  tbxtrq'
      'where'
      '  nidtbxtrq = :nidtbxtrq')
    Left = 32
    Top = 12
    ParamData = <
      item
        DataType = ftInteger
        Name = 'nidtbxtrq'
      end>
  end
  object DTS_155: TOraDataSource
    DataSet = QRY_155
    Left = 104
    Top = 12
  end
end
