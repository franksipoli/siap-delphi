object DTM_A005ADAT: TDTM_A005ADAT
  OldCreateOrder = False
  Left = 55
  Top = 20
  Height = 541
  Width = 684
  object QRY_084: TOraQuery
    SQL.Strings = (
      'select '
      '  * '
      'from '
      '  tbxgmv '
      'where'
      '  ctipomvt = '#39'CONCESSAO'#39)
    Left = 20
    Top = 20
  end
  object DTS_084: TOraDataSource
    AutoEdit = False
    DataSet = QRY_084
    Left = 92
    Top = 20
  end
  object QRY_096: TOraQuery
    SQL.Strings = (
      'select '
      '  nidtbxtpm,'
      '  cdescritpm,'
      '  nnrotab,'
      '  nidtpmrvg'
      'from'
      '  tbxtpm'
      'where'
      '  tbxtpm.nidtbxgmv = :nidtbxgmv')
    MasterSource = DTS_084
    Left = 24
    Top = 84
    ParamData = <
      item
        DataType = ftFloat
        Name = 'NIDTBXGMV'
        ParamType = ptInput
        Value = 1
      end>
  end
  object DTS_096: TOraDataSource
    AutoEdit = False
    DataSet = QRY_096
    OnDataChange = DTS_096DataChange
    Left = 92
    Top = 84
  end
  object QRY_099: TOraQuery
    SQLInsert.Strings = (
      'INSERT INTO cadmov'
      
        '  (NIDCADMOV, NVALORSLR, DDATAFIM, DDTOBITO, NPERBENEFI, CORGAOO' +
        'RI, CMOTIVO, NPERVANTAG, DDTAQSINI, DDTAQSFIM, NIDATORVG, NIDTPM' +
        'RVG, NIDCADATO, NIDTAGFFU, NIDCADCRG, NIDTBXEDI, NIDTBXAGI, NIDT' +
        'BXTBI, NIDTBXGRP, NIDTBXDPT, NIDTBXLTB, NIDTAGSLR, NIDTBXSET, NI' +
        'DTBXORG, NIDTBXTPM, NIDTBXOBT)'
      'VALUES'
      
        '  (:NIDCADMOV, :NVALORSLR, :DDATAFIM, :DDTOBITO, :NPERBENEFI, :C' +
        'ORGAOORI, :CMOTIVO, :NPERVANTAG, :DDTAQSINI, :DDTAQSFIM, :NIDATO' +
        'RVG, :NIDTPMRVG, :NIDCADATO, :NIDTAGFFU, :NIDCADCRG, :NIDTBXEDI,' +
        ' :NIDTBXAGI, :NIDTBXTBI, :NIDTBXGRP, :NIDTBXDPT, :NIDTBXLTB, :NI' +
        'DTAGSLR, :NIDTBXSET, :NIDTBXORG, :NIDTBXTPM, :NIDTBXOBT)')
    SQLDelete.Strings = (
      'DELETE FROM cadmov'
      'WHERE'
      '  NIDCADMOV = :NIDCADMOV')
    SQLUpdate.Strings = (
      'UPDATE cadmov'
      'SET'
      '  NIDCADMOV = :NIDCADMOV,'
      '  NVALORSLR = :NVALORSLR,'
      '  DDATAFIM = :DDATAFIM,'
      '  DDTOBITO = :DDTOBITO,'
      '  NPERBENEFI = :NPERBENEFI,'
      '  CORGAOORI = :CORGAOORI,'
      '  CMOTIVO = :CMOTIVO,'
      '  NPERVANTAG = :NPERVANTAG,'
      '  DDTAQSINI = :DDTAQSINI,'
      '  DDTAQSFIM = :DDTAQSFIM,'
      '  NIDATORVG = :NIDATORVG,'
      '  NIDTPMRVG = :NIDTPMRVG,'
      '  NIDCADATO = :NIDCADATO,'
      '  NIDTAGFFU = :NIDTAGFFU,'
      '  NIDCADCRG = :NIDCADCRG,'
      '  NIDTBXEDI = :NIDTBXEDI,'
      '  NIDTBXAGI = :NIDTBXAGI,'
      '  NIDTBXTBI = :NIDTBXTBI,'
      '  NIDTBXGRP = :NIDTBXGRP,'
      '  NIDTBXDPT = :NIDTBXDPT,'
      '  NIDTBXLTB = :NIDTBXLTB,'
      '  NIDTAGSLR = :NIDTAGSLR,'
      '  NIDTBXSET = :NIDTBXSET,'
      '  NIDTBXORG = :NIDTBXORG,'
      '  NIDTBXTPM = :NIDTBXTPM,'
      '  NIDTBXOBT = :NIDTBXOBT'
      'WHERE'
      '  NIDCADMOV = :OLD_NIDCADMOV')
    SQLLock.Strings = (
      'SELECT * FROM cadmov'
      'WHERE'
      '  NIDCADMOV = :NIDCADMOV'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      'WHERE'
      '  NIDCADMOV = :NIDCADMOV')
    SQL.Strings = (
      'select '
      '  cadmov.*,'
      '  tbxtpm.nidtbxgmv '
      'from '
      '  cadmov,'
      '  tbxtpm'
      'where'
      '  tbxtpm.nidtbxtpm = cadmov.nidtbxtpm')
    Left = 28
    Top = 144
  end
  object DTS_099: TOraDataSource
    AutoEdit = False
    DataSet = QRY_099
    Left = 92
    Top = 148
  end
  object QRY_069: TOraQuery
    SQL.Strings = (
      'select'
      '  cadato.cnroato,'
      '  cadato.ddtefeitos,'
      '  InitCap(tbxtat.cdescritat) as cdescritat'
      'from'
      '  cadato,'
      '  tbxtat'
      'where'
      '  cadato.nidcadato = :nidcadato and'
      '  tbxtat.nidtbxtat = cadato.nidtbxtat')
    MasterSource = DTS_099
    Left = 32
    Top = 208
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'nidcadato'
      end>
    object QRY_069CNROATO: TStringField
      FieldName = 'CNROATO'
      Required = True
      Size = 10
    end
    object QRY_069DDTEFEITOS: TDateTimeField
      FieldName = 'DDTEFEITOS'
      Required = True
      DisplayFormat = 'dd/mm/yyyy'
    end
    object QRY_069CDESCRITAT: TStringField
      FieldName = 'CDESCRITAT'
      OnGetText = QRY_069CDESCRITATGetText
      Size = 40
    end
  end
  object DTS_069: TOraDataSource
    AutoEdit = False
    DataSet = QRY_069
    OnDataChange = DTS_069DataChange
    Left = 96
    Top = 208
  end
  object QRY_069_1: TOraQuery
    SQL.Strings = (
      'select'
      '  cadato.cnroato,'
      '  cadato.ddtefeitos,'
      '  InitCap(tbxtat.cdescritat) as cdescritat'
      'from'
      '  cadato,'
      '  tbxtat'
      'where'
      '  cadato.nidcadato = :nidatorvg and'
      '  tbxtat.nidtbxtat = cadato.nidtbxtat')
    MasterSource = DTS_099
    Left = 32
    Top = 269
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'nidatorvg'
      end>
    object QRY_069_1CNROATO: TStringField
      FieldName = 'CNROATO'
      Required = True
      Size = 10
    end
    object QRY_069_1DDTEFEITOS: TDateTimeField
      FieldName = 'DDTEFEITOS'
      Required = True
      DisplayFormat = 'dd/mm/yyyy'
    end
    object QRY_069_1CDESCRITAT: TStringField
      FieldName = 'CDESCRITAT'
      OnGetText = QRY_069CDESCRITATGetText
      Size = 40
    end
  end
  object DTS_069_1: TOraDataSource
    AutoEdit = False
    DataSet = QRY_069_1
    OnDataChange = DTS_069_1DataChange
    Left = 112
    Top = 269
  end
  object QRY_096_1: TOraQuery
    SQL.Strings = (
      'select '
      '  nidtbxtpm,'
      '  cdescritpm'
      'from'
      '  tbxtpm'
      'where'
      '  tbxtpm.nidtbxgmv = :nidgmvrvg')
    MasterSource = DTS_084
    Left = 32
    Top = 332
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'nidgmvrvg'
      end>
  end
  object DTS_096_1: TOraDataSource
    AutoEdit = False
    DataSet = QRY_096_1
    Left = 112
    Top = 332
  end
end
