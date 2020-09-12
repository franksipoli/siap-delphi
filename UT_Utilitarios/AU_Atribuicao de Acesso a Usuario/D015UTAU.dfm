object DTM_A015UTAU: TDTM_A015UTAU
  OldCreateOrder = False
  Left = 184
  Top = 107
  Height = 375
  Width = 544
  object QRY_042: TOraQuery
    SQL.Strings = (
      
        'select tbl_ao.nidtbl_ao, tbl_ao.nidtbl_o,InitCap(tbl_ao.cfuncao)' +
        ' as cfuncao, tbl_o.cnomeunit from tbl_ao, tbl_o '
      'where tbl_ao.nidtbl_a = :nidtbl_a and'
      'tbl_ao.nidtbl_o = tbl_o.nidtbl_o and'
      'tbl_ao.cfuncao <> '#39'SAIR'#39' and'
      'tbl_o.cnomecla in ('#39'TSPEEDBUTTON'#39','#39'TBITBTN'#39') and'
      'tbl_o.nidtbl_o not in(select tbl_uao.nidtbl_o '
      '                      from tbl_uao where nidtbl_ua = :nidua and '
      '                         npermiti = 0)')
    Left = 28
    Top = 24
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'nidtbl_a'
      end
      item
        DataType = ftUnknown
        Name = 'nidua'
      end>
  end
  object QRY_060: TOraQuery
    SQLInsert.Strings = (
      'INSERT INTO tbl_apa'
      '  (NIDTBL_APA, NIDTBL_O, NPERMITI, NIDTBL_U, NIDTBL_OPA)'
      'VALUES'
      '  (:NIDTBL_APA, :NIDTBL_O, :NPERMITI, :NIDTBL_U, :NIDTBL_OPA)')
    SQLDelete.Strings = (
      'DELETE FROM tbl_apa'
      'WHERE'
      '  NIDTBL_APA = :NIDTBL_APA')
    SQLUpdate.Strings = (
      'UPDATE tbl_apa'
      'SET'
      '  NIDTBL_APA = :NIDTBL_APA,'
      '  NIDTBL_O = :NIDTBL_O,'
      '  NPERMITI = :NPERMITI,'
      '  NIDTBL_U = :NIDTBL_U,'
      '  NIDTBL_OPA = :NIDTBL_OPA'
      'WHERE'
      '  NIDTBL_APA = :OLD_NIDTBL_APA')
    SQLLock.Strings = (
      'SELECT * FROM tbl_apa'
      'WHERE'
      '  NIDTBL_APA = :NIDTBL_APA'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      'WHERE'
      '  NIDTBL_APA = :NIDTBL_APA')
    SQL.Strings = (
      'select * from tbl_apa where nidtbl_opa = :nidtbl_opa')
    Left = 96
    Top = 28
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'nidtbl_opa'
      end>
  end
end
