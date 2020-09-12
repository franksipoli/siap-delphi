object DTM_A012UTAU: TDTM_A012UTAU
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
      
        '                      from tbl_uao where nidtbl_ua = :niduaopera' +
        'dor and '
      '                         npermiti = 0)')
    Left = 20
    Top = 20
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'nidtbl_a'
      end
      item
        DataType = ftUnknown
        Name = 'niduaoperador'
      end>
    object QRY_042NIDTBL_AO: TFloatField
      FieldName = 'NIDTBL_AO'
      Required = True
    end
    object QRY_042NIDTBL_O: TFloatField
      FieldName = 'NIDTBL_O'
      Required = True
    end
    object QRY_042CFUNCAO: TStringField
      FieldName = 'CFUNCAO'
      Size = 80
    end
    object QRY_042CNOMEUNIT: TStringField
      FieldName = 'CNOMEUNIT'
      Size = 8
    end
  end
  object QRY_053: TOraQuery
    SQLInsert.Strings = (
      'INSERT INTO tbl_uao'
      '  (NIDTBL_O, NIDTBL_UAO, NIDTBL_U, NPERMITI, NIDTBL_UA)'
      'VALUES'
      '  (:NIDTBL_O, :NIDTBL_UAO, :NIDTBL_U, :NPERMITI, :NIDTBL_UA)')
    SQLDelete.Strings = (
      'DELETE FROM tbl_uao'
      'WHERE'
      '  NIDTBL_UAO = :NIDTBL_UAO')
    SQLUpdate.Strings = (
      'UPDATE tbl_uao'
      'SET'
      '  NIDTBL_O = :NIDTBL_O,'
      '  NIDTBL_UAO = :NIDTBL_UAO,'
      '  NIDTBL_U = :NIDTBL_U,'
      '  NPERMITI = :NPERMITI,'
      '  NIDTBL_UA = :NIDTBL_UA'
      'WHERE'
      '  NIDTBL_UAO = :OLD_NIDTBL_UAO')
    SQLLock.Strings = (
      'SELECT * FROM tbl_uao'
      'WHERE'
      '  NIDTBL_UAO = :NIDTBL_UAO'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      'WHERE'
      '  NIDTBL_UAO = :NIDTBL_UAO')
    SQL.Strings = (
      'select tbl_uao.*, tbl_u.cnomeusu from tbl_uao, tbl_u where '
      'nidtbl_ua = :nidtbl_ua and tbl_u.nidtbl_u = tbl_uao.nidtbl_u')
    Left = 92
    Top = 20
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'nidtbl_ua'
      end>
  end
end
