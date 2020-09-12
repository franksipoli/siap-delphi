object DTM_A006RHTE: TDTM_A006RHTE
  OldCreateOrder = False
  Left = 215
  Top = 218
  Height = 288
  Width = 452
  object QRY_063: TOraQuery
    SQL.Strings = (
      'select'
      '  distinct'
      '  ncodbco,'
      '  cpasta'
      'from'
      '  tbxori')
    Left = 38
    Top = 38
  end
  object DTS_063: TOraDataSource
    DataSet = QRY_063
    Left = 96
    Top = 36
  end
  object QRY_062: TOraQuery
    SQLInsert.Strings = (
      'INSERT INTO cadrem'
      
        '  (NIDCADREM, CNOSSONRO, DDATAPAGTO, NVLRPAGO, NNRODOC, CSITUACA' +
        'O, CFLAGERRO, CRETORNO, DDATARET, CHORARET)'
      'VALUES'
      
        '  (:NIDCADREM, :CNOSSONRO, :DDATAPAGTO, :NVLRPAGO, :NNRODOC, :CS' +
        'ITUACAO, :CFLAGERRO, :CRETORNO, :DDATARET, :CHORARET)')
    SQLDelete.Strings = (
      'DELETE FROM cadrem'
      'WHERE'
      '  NIDCADREM = :NIDCADREM')
    SQLUpdate.Strings = (
      'UPDATE cadrem'
      'SET'
      '  NIDCADREM = :NIDCADREM,'
      '  CNOSSONRO = :CNOSSONRO,'
      '  DDATAPAGTO = :DDATAPAGTO,'
      '  NVLRPAGO = :NVLRPAGO,'
      '  NNRODOC = :NNRODOC,'
      '  CSITUACAO = :CSITUACAO,'
      '  CFLAGERRO = :CFLAGERRO,'
      '  CRETORNO = :CRETORNO,'
      '  DDATARET = :DDATARET,'
      '  CHORARET = :CHORARET'
      'WHERE'
      '  NIDCADREM = :OLD_NIDCADREM')
    SQLLock.Strings = (
      'SELECT * FROM cadrem'
      'WHERE'
      '  NIDCADREM = :NIDCADREM'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      'WHERE'
      '  NIDCADREM = :NIDCADREM')
    SQL.Strings = (
      'select'
      '  nidcadrem,'
      '  cnossonro,'
      '  ddatapagto,'
      '  nvlrpago,'
      '  nnrodoc,'
      '  csituacao,'
      '  cflagerro,'
      '  cretorno,'
      '  ddataret,'
      '  choraret'
      'from'
      '  cadrem'
      'where'
      '  cseunro = :cseunro')
    Left = 36
    Top = 108
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cseunro'
      end>
  end
  object DTS_062: TOraDataSource
    DataSet = QRY_062
    Left = 100
    Top = 108
  end
  object QRY_065: TOraQuery
    SQLInsert.Strings = (
      'INSERT INTO tagprc'
      
        '  (NIDTAGPRC, CRETORNO, DDATARET, CHORARET, NIDTBXERR, NIDCADREM' +
        ')'
      'VALUES'
      
        '  (:NIDTAGPRC, :CRETORNO, :DDATARET, :CHORARET, :NIDTBXERR, :NID' +
        'CADREM)')
    SQLDelete.Strings = (
      'DELETE FROM tagprc'
      'WHERE'
      '  NIDTAGPRC = :NIDTAGPRC')
    SQLUpdate.Strings = (
      'UPDATE tagprc'
      'SET'
      '  NIDTAGPRC = :NIDTAGPRC,'
      '  CRETORNO = :CRETORNO,'
      '  DDATARET = :DDATARET,'
      '  CHORARET = :CHORARET,'
      '  NIDTBXERR = :NIDTBXERR,'
      '  NIDCADREM = :NIDCADREM'
      'WHERE'
      '  NIDTAGPRC = :OLD_NIDTAGPRC')
    SQLLock.Strings = (
      'SELECT * FROM tagprc'
      'WHERE'
      '  NIDTAGPRC = :NIDTAGPRC'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      'WHERE'
      '  NIDTAGPRC = :NIDTAGPRC')
    SQL.Strings = (
      'select'
      '  *'
      'from'
      '  tagprc'
      'where'
      '  nidtagprc = null')
    Left = 36
    Top = 160
  end
  object DTS_065: TOraDataSource
    DataSet = QRY_065
    Left = 100
    Top = 160
  end
end
