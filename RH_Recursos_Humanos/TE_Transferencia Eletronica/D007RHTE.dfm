object DTM_A007RHTE: TDTM_A007RHTE
  OldCreateOrder = False
  Left = 204
  Top = 175
  Height = 250
  Width = 418
  object QRY_063: TOraQuery
    SQL.Strings = (
      'select'
      '  distinct'
      '  tbxbco.cdescbanco,'
      '  tbxbco.ncodbanco,'
      '  tbxbco.curlbco,'
      '  tbxori.cpasta'
      'from'
      '  tbxori,tbxbco'
      'where'
      '  tbxbco.ncodbanco = tbxori.ncodbco')
    Left = 32
    Top = 16
  end
  object DTS_063: TOraDataSource
    DataSet = QRY_063
    Left = 84
    Top = 16
  end
end
