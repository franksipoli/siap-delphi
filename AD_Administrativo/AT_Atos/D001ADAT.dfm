object DTM_A001ADAT: TDTM_A001ADAT
  OldCreateOrder = False
  Left = 192
  Top = 107
  Height = 375
  Width = 544
  object QRY_069: TOraQuery
    SQLInsert.Strings = (
      'INSERT INTO cadato'
      
        '  (NIDCADATO, CNROATO, DDTCRIACAO, DDTEFEITOS, CSUMULA, NEDICAO,' +
        ' NPAGEDICAO, CNOMEARQ, NIDTBXVPB, NIDTBXTAT, NIDTBXRSV, DDTPUBLI' +
        'C, CENVIADOTC, CATRIBUI)'
      'VALUES'
      
        '  (:NIDCADATO, :CNROATO, :DDTCRIACAO, :DDTEFEITOS, :CSUMULA, :NE' +
        'DICAO, :NPAGEDICAO, :CNOMEARQ, :NIDTBXVPB, :NIDTBXTAT, :NIDTBXRS' +
        'V, :DDTPUBLIC, :CENVIADOTC, :CATRIBUI)')
    SQLDelete.Strings = (
      'DELETE FROM cadato'
      'WHERE'
      '  NIDCADATO = :NIDCADATO')
    SQLUpdate.Strings = (
      'UPDATE cadato'
      'SET'
      '  NIDCADATO = :NIDCADATO,'
      '  CNROATO = :CNROATO,'
      '  DDTCRIACAO = :DDTCRIACAO,'
      '  DDTEFEITOS = :DDTEFEITOS,'
      '  CSUMULA = :CSUMULA,'
      '  NEDICAO = :NEDICAO,'
      '  NPAGEDICAO = :NPAGEDICAO,'
      '  CNOMEARQ = :CNOMEARQ,'
      '  NIDTBXVPB = :NIDTBXVPB,'
      '  NIDTBXTAT = :NIDTBXTAT,'
      '  NIDTBXRSV = :NIDTBXRSV,'
      '  DDTPUBLIC = :DDTPUBLIC,'
      '  CENVIADOTC = :CENVIADOTC,'
      '  CATRIBUI = :CATRIBUI'
      'WHERE'
      '  NIDCADATO = :OLD_NIDCADATO')
    SQLLock.Strings = (
      'SELECT * FROM cadato'
      'WHERE'
      '  NIDCADATO = :NIDCADATO'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      'WHERE'
      '  NIDCADATO = :NIDCADATO')
    SQL.Strings = (
      'select * from cadato')
    AfterScroll = QRY_069AfterScroll
    Left = 32
    Top = 20
  end
  object DTS_069: TOraDataSource
    AutoEdit = False
    DataSet = QRY_069
    Left = 116
    Top = 24
  end
  object QRY_071: TOraQuery
    SQL.Strings = (
      'select * from tbxtat')
    Left = 36
    Top = 84
  end
  object DTS_071: TOraDataSource
    AutoEdit = False
    DataSet = QRY_071
    Left = 116
    Top = 84
  end
  object QRY_070: TOraQuery
    SQL.Strings = (
      'SELECT * FROM TBXRSV')
    Left = 36
    Top = 152
  end
  object DTS_070: TOraDataSource
    AutoEdit = False
    DataSet = QRY_070
    Left = 120
    Top = 152
  end
  object QRY_072: TOraQuery
    SQL.Strings = (
      'SELECT * FROM TBXVPB')
    Left = 36
    Top = 216
  end
  object DTS_072: TOraDataSource
    AutoEdit = False
    DataSet = QRY_072
    Left = 116
    Top = 216
  end
end
