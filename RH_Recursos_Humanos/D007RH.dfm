object DTM_A007RH: TDTM_A007RH
  OldCreateOrder = False
  Left = 65532
  Top = 17
  Height = 580
  Width = 783
  object QRY_084: TOraQuery
    Session = DMControle.Conexao
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
    Session = DMControle.Conexao
    SQL.Strings = (
      'select '
      '  nidtbxtpm,'
      '  cdescritpm,'
      '  nnrotab,'
      '  nidtpmrvg,'
      '  cato'
      'from'
      '  tbxtpm'
      'where'
      '  tbxtpm.nidtbxgmv = :nidtbxgmv')
    MasterSource = DTS_084
    Left = 20
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
        'BXTBI, NIDTBXGRP, NIDTBXLTB, NIDTAGSLR, NIDTBXTPM, NIDTAGOBT, NI' +
        'DTAGDST, NIDTAGODP, DDATAINI, CULTCRGAPS, NMATRICULA, CENVIADOTC' +
        ')'
      'VALUES'
      
        '  (:NIDCADMOV, :NVALORSLR, :DDATAFIM, :DDTOBITO, :NPERBENEFI, :C' +
        'ORGAOORI, :CMOTIVO, :NPERVANTAG, :DDTAQSINI, :DDTAQSFIM, :NIDATO' +
        'RVG, :NIDTPMRVG, :NIDCADATO, :NIDTAGFFU, :NIDCADCRG, :NIDTBXEDI,' +
        ' :NIDTBXAGI, :NIDTBXTBI, :NIDTBXGRP, :NIDTBXLTB, :NIDTAGSLR, :NI' +
        'DTBXTPM, :NIDTAGOBT, :NIDTAGDST, :NIDTAGODP, :DDATAINI, :CULTCRG' +
        'APS, :NMATRICULA, :CENVIADOTC)')
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
      '  NIDTBXLTB = :NIDTBXLTB,'
      '  NIDTAGSLR = :NIDTAGSLR,'
      '  NIDTBXTPM = :NIDTBXTPM,'
      '  NIDTAGOBT = :NIDTAGOBT,'
      '  NIDTAGDST = :NIDTAGDST,'
      '  NIDTAGODP = :NIDTAGODP,'
      '  DDATAINI = :DDATAINI,'
      '  CULTCRGAPS = :CULTCRGAPS,'
      '  NMATRICULA = :NMATRICULA,'
      '  CENVIADOTC = :CENVIADOTC'
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
    Session = DMControle.Conexao
    SQL.Strings = (
      'select '
      '  cadmov.*,'
      '  tbxtpm.nidtbxgmv,'
      '  cadcrg.nidtbxtcr,'
      '  cadcrg.nidtbxgro,'
      '  cadcrg.nidtbxsgo,'
      '  tagslr.nidtbxslr,'
      '  tagslr.nnivel,'
      '  tagslr.cclasse,'
      '  tagodp.nidtbxorg,'
      '  tagodp.nidtbxdpt,'
      '  tagdst.nidtbxset'
      'from '
      '  cadmov,'
      '  tbxtpm,'
      '  cadcrg,'
      '  tagslr,'
      '  tagodp,'
      '  tagdst'
      'where'
      '  cadmov.nidtagffu = :nidtagffu and'
      '  tbxtpm.nidtbxtpm = cadmov.nidtbxtpm and'
      '  cadcrg.nidcadcrg(+) = cadmov.nidcadcrg and'
      '  tagslr.nidtagslr(+) = cadmov.nidtagslr and'
      '  tagodp.nidtagodp(+) = cadmov.nidtagodp and'
      '  tagdst.nidtagdst(+) = cadmov.nidtagdst')
    OnCalcFields = QRY_099CalcFields
    Left = 20
    Top = 144
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'nidtagffu'
      end>
    object QRY_099NIDCADMOV: TFloatField
      FieldName = 'NIDCADMOV'
      Required = True
    end
    object QRY_099NVALORSLR: TFloatField
      FieldName = 'NVALORSLR'
    end
    object QRY_099DDATAFIM: TDateTimeField
      FieldName = 'DDATAFIM'
    end
    object QRY_099DDTOBITO: TDateTimeField
      FieldName = 'DDTOBITO'
    end
    object QRY_099NPERBENEFI: TFloatField
      FieldName = 'NPERBENEFI'
    end
    object QRY_099CORGAOORI: TStringField
      FieldName = 'CORGAOORI'
      Size = 50
    end
    object QRY_099CMOTIVO: TStringField
      FieldName = 'CMOTIVO'
      Size = 250
    end
    object QRY_099NPERVANTAG: TFloatField
      FieldName = 'NPERVANTAG'
    end
    object QRY_099DDTAQSINI: TDateTimeField
      FieldName = 'DDTAQSINI'
    end
    object QRY_099DDTAQSFIM: TDateTimeField
      FieldName = 'DDTAQSFIM'
    end
    object QRY_099NIDATORVG: TFloatField
      FieldName = 'NIDATORVG'
    end
    object QRY_099NIDTPMRVG: TFloatField
      FieldName = 'NIDTPMRVG'
    end
    object QRY_099NIDCADATO: TFloatField
      FieldName = 'NIDCADATO'
    end
    object QRY_099NIDTAGFFU: TFloatField
      FieldName = 'NIDTAGFFU'
    end
    object QRY_099NIDCADCRG: TFloatField
      FieldName = 'NIDCADCRG'
    end
    object QRY_099NIDTBXEDI: TFloatField
      FieldName = 'NIDTBXEDI'
    end
    object QRY_099NIDTBXAGI: TFloatField
      FieldName = 'NIDTBXAGI'
    end
    object QRY_099NIDTBXTBI: TFloatField
      FieldName = 'NIDTBXTBI'
    end
    object QRY_099NIDTBXGRP: TFloatField
      FieldName = 'NIDTBXGRP'
    end
    object QRY_099NIDTBXLTB: TFloatField
      FieldName = 'NIDTBXLTB'
    end
    object QRY_099NIDTAGSLR: TFloatField
      FieldName = 'NIDTAGSLR'
    end
    object QRY_099NIDTBXTPM: TFloatField
      FieldName = 'NIDTBXTPM'
      Required = True
    end
    object QRY_099NIDTAGOBT: TFloatField
      FieldName = 'NIDTAGOBT'
    end
    object QRY_099NIDTAGDST: TFloatField
      FieldName = 'NIDTAGDST'
    end
    object QRY_099NIDTAGODP: TFloatField
      FieldName = 'NIDTAGODP'
    end
    object QRY_099DDATAINI: TDateTimeField
      FieldName = 'DDATAINI'
    end
    object QRY_099CULTCRGAPS: TStringField
      FieldName = 'CULTCRGAPS'
      Size = 50
    end
    object QRY_099NMATRICULA: TFloatField
      FieldName = 'NMATRICULA'
    end
    object QRY_099CENVIADOTC: TStringField
      DefaultExpression = 'N'
      FieldName = 'CENVIADOTC'
      FixedChar = True
      Size = 1
    end
    object QRY_099NIDTBXGMV: TFloatField
      FieldName = 'NIDTBXGMV'
      Required = True
    end
    object QRY_099NIDTBXTCR: TFloatField
      FieldName = 'NIDTBXTCR'
    end
    object QRY_099NIDTBXGRO: TFloatField
      FieldName = 'NIDTBXGRO'
    end
    object QRY_099NIDTBXSGO: TFloatField
      FieldName = 'NIDTBXSGO'
    end
    object QRY_099NIDTBXSLR: TFloatField
      FieldName = 'NIDTBXSLR'
    end
    object QRY_099NNIVEL: TFloatField
      FieldName = 'NNIVEL'
    end
    object QRY_099CCLASSE: TStringField
      FieldName = 'CCLASSE'
      Size = 3
    end
    object QRY_099NIDTBXORG: TFloatField
      FieldName = 'NIDTBXORG'
    end
    object QRY_099NIDTBXDPT: TFloatField
      FieldName = 'NIDTBXDPT'
    end
    object QRY_099NIDTBXSET: TFloatField
      FieldName = 'NIDTBXSET'
    end
    object QRY_099CLC_DIASFER: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'CLC_DIASFER'
      Calculated = True
    end
    object QRY_099NMESPGTO: TFloatField
      FieldName = 'NMESPGTO'
    end
    object QRY_099NANOPGTO: TFloatField
      FieldName = 'NANOPGTO'
      OnGetText = QRY_099NANOPGTOGetText
    end
    object QRY_099CENVIADRVG: TStringField
      FieldName = 'CENVIADRVG'
      FixedChar = True
      Size = 1
    end
  end
  object DTS_099: TOraDataSource
    AutoEdit = False
    DataSet = QRY_099
    Left = 92
    Top = 148
  end
  object QRY_069: TOraQuery
    Session = DMControle.Conexao
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
    Left = 20
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
    Left = 92
    Top = 208
  end
  object QRY_069_1: TOraQuery
    Session = DMControle.Conexao
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
    Left = 20
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
    Left = 92
    Top = 269
  end
  object QRY_096_1: TOraQuery
    Session = DMControle.Conexao
    SQL.Strings = (
      'select '
      '  nidtbxtpm,'
      '  cdescritpm'
      'from'
      '  tbxtpm'
      'where'
      '  tbxtpm.nidtbxgmv = :nidgmvrvg')
    MasterSource = DTS_084
    Left = 20
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
    Left = 92
    Top = 332
  end
  object QRY_095: TOraQuery
    Session = DMControle.Conexao
    SQL.Strings = (
      'select '
      '  * '
      'from'
      '  tbxtcr')
    Left = 176
    Top = 20
  end
  object DTS_095: TOraDataSource
    AutoEdit = False
    DataSet = QRY_095
    Left = 240
    Top = 20
  end
  object QRY_073: TOraQuery
    Session = DMControle.Conexao
    SQL.Strings = (
      'select'
      '  cadcrg.nidcadcrg,'
      '  cadcrg.cdescricrg,'
      '  cadcrg.nidtbxgro,'
      '  cadcrg.nidtbxsgo'
      'from'
      '  cadcrg'
      'where'
      '  cadcrg.nidtbxtcr = :nidtbxtcr')
    MasterSource = DTS_095
    Left = 176
    Top = 84
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'nidtbxtcr'
      end>
  end
  object DTS_073: TOraDataSource
    AutoEdit = False
    DataSet = QRY_073
    Left = 240
    Top = 84
  end
  object QRY_083: TOraQuery
    Session = DMControle.Conexao
    SQL.Strings = (
      'select'
      '  cnroedital'
      'from'
      '  tbxedi'
      'where'
      '  nidtbxedi = :nidtbxedi')
    MasterSource = DTS_099
    Left = 176
    Top = 144
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'nidtbxedi'
      end>
  end
  object DTS_083: TOraDataSource
    AutoEdit = False
    DataSet = QRY_083
    OnDataChange = DTS_083DataChange
    Left = 240
    Top = 144
  end
  object QRY_092: TOraQuery
    Session = DMControle.Conexao
    SQL.Strings = (
      'select'
      '  *'
      'from'
      '  tbxslr')
    Left = 176
    Top = 204
  end
  object DTS_092: TOraDataSource
    DataSet = QRY_092
    Left = 240
    Top = 204
  end
  object QRY_080: TOraQuery
    Session = DMControle.Conexao
    SQL.Strings = (
      'select'
      '  distinct cclasse as cclasse,'
      '  nidtbxslr'
      'from '
      '  tagslr'
      'where'
      '  nidtbxslr = :nidtbxslr')
    MasterSource = DTS_092
    Left = 176
    Top = 260
    ParamData = <
      item
        DataType = ftFloat
        Name = 'NIDTBXSLR'
        ParamType = ptInput
        Value = 1
      end>
  end
  object DTS_080: TOraDataSource
    DataSet = QRY_080
    Left = 240
    Top = 260
  end
  object QRY_080_1: TOraQuery
    Session = DMControle.Conexao
    SQL.Strings = (
      'select'
      '  nnivel,'
      '  nidtagslr,'
      '  nvalorslr'
      'from'
      '  tagslr'
      'where'
      '  nidtbxslr =:nidtbxslr and'
      '  cclasse = :cclasse')
    MasterSource = DTS_080
    Left = 172
    Top = 316
    ParamData = <
      item
        DataType = ftFloat
        Name = 'NIDTBXSLR'
        ParamType = ptInput
        Value = 2
      end
      item
        DataType = ftString
        Name = 'CCLASSE'
        ParamType = ptInput
        Value = 'B'
      end>
  end
  object DTS_080_1: TOraDataSource
    DataSet = QRY_080_1
    Left = 236
    Top = 316
  end
  object QRY_086: TOraQuery
    Session = DMControle.Conexao
    SQL.Strings = (
      'select'
      '  * '
      'from'
      '  tbxgro'
      'where'
      '  nidtbxgro = :nidtbxgro')
    MasterSource = DTS_099
    Left = 20
    Top = 404
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'nidtbxgro'
      end>
  end
  object DTS_086: TOraDataSource
    DataSet = QRY_086
    Left = 88
    Top = 404
  end
  object QRY_091: TOraQuery
    Session = DMControle.Conexao
    SQL.Strings = (
      'select'
      '  *'
      'from'
      '  tbxsgo'
      'where'
      '  nidtbxsgo = :nidtbxsgo')
    MasterSource = DTS_099
    Left = 172
    Top = 380
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'nidtbxsgo'
      end>
  end
  object DTS_091: TOraDataSource
    DataSet = QRY_091
    Left = 236
    Top = 380
  end
  object QRY_081: TOraQuery
    Session = DMControle.Conexao
    SQL.Strings = (
      'select'
      '  *'
      'from'
      '  tbxagi')
    Left = 308
    Top = 20
  end
  object DTS_081: TOraDataSource
    DataSet = QRY_081
    Left = 368
    Top = 20
  end
  object QRY_094: TOraQuery
    Session = DMControle.Conexao
    SQL.Strings = (
      'select'
      '  *'
      'from'
      '  tbxtbi')
    Left = 308
    Top = 84
  end
  object DTS_094: TOraDataSource
    DataSet = QRY_094
    Left = 372
    Top = 84
  end
  object QRY_103: TOraQuery
    Session = DMControle.Conexao
    SQL.Strings = (
      'select'
      '  nidtagobt'
      'from'
      '  cadgrl,'
      '  cadser,'
      '  tagobt'
      'where'
      '  cadgrl.ccpfcnpj = :ccpfcnpj and'
      '  cadser.nidcadgrl= cadgrl.nidcadgrl and'
      '  tagobt.nidcadser = cadser.nidcadser')
    Left = 312
    Top = 148
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ccpfcnpj'
      end>
  end
  object DTS_103: TOraDataSource
    DataSet = QRY_103
    Left = 376
    Top = 148
  end
  object QRY_103_1: TOraQuery
    Session = DMControle.Conexao
    SQL.Strings = (
      'select'
      '  tagobt.*,'
      '  cadgrl.cnomegrl,'
      '  cadgrl.ccpfcnpj'
      'from'
      '  tagobt,'
      '  cadser,'
      '  cadgrl'
      'where'
      '  tagobt.nidtagobt = :nidtagobt and'
      '  cadser.nidcadser = tagobt.nidcadser and'
      '  cadgrl.nidcadgrl = cadser.nidcadgrl')
    MasterSource = DTS_099
    Left = 312
    Top = 204
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'nidtagobt'
      end>
    object QRY_103_1NIDTAGOBT: TFloatField
      FieldName = 'NIDTAGOBT'
      Required = True
    end
    object QRY_103_1DDTOBITO: TDateTimeField
      FieldName = 'DDTOBITO'
      Required = True
      DisplayFormat = 'dd/mm/yyyy'
    end
    object QRY_103_1CMOTIVO: TStringField
      FieldName = 'CMOTIVO'
      Size = 250
    end
    object QRY_103_1NBSPENSAO: TFloatField
      FieldName = 'NBSPENSAO'
      Required = True
    end
    object QRY_103_1CULTIMOCRG: TStringField
      FieldName = 'CULTIMOCRG'
      Required = True
      Size = 60
    end
    object QRY_103_1NIDCADSER: TFloatField
      FieldName = 'NIDCADSER'
    end
    object QRY_103_1NIDTAGSLR: TFloatField
      FieldName = 'NIDTAGSLR'
      Required = True
    end
    object QRY_103_1CNOMEGRL: TStringField
      FieldName = 'CNOMEGRL'
      Required = True
      Size = 70
    end
    object QRY_103_1CCPFCNPJ: TStringField
      FieldName = 'CCPFCNPJ'
      Size = 14
    end
  end
  object DTS_103_1: TOraDataSource
    AutoEdit = False
    DataSet = QRY_103_1
    OnDataChange = DTS_103_1DataChange
    Left = 380
    Top = 204
  end
  object QRY_026: TOraQuery
    Session = DMControle.Conexao
    SQL.Strings = (
      'select'
      '  *'
      'from'
      '  tbxgrp')
    Left = 312
    Top = 260
  end
  object DTS_026: TOraDataSource
    DataSet = QRY_026
    Left = 380
    Top = 260
  end
  object QRY_098: TOraQuery
    Session = DMControle.Conexao
    SQL.Strings = (
      'select'
      '  tbxvtg.cdescrivtg,'
      '  tbxvtg.nperinic,'
      '  tbxvtg.nperfim,'
      '  tagslr.nvalorslr'
      'from'
      '  tbxvtg,'
      '  tbxtpm,'
      '  tagslr  '
      'where'
      '  tbxtpm.nidtbxtpm = :nidtbxtpm and'
      '  tbxvtg.nidcadeve = tbxtpm.nidcadeve and'
      '  tagslr.nidtagslr(+) = tbxvtg.nidtagslr'
      '  ')
    MasterSource = DTS_099
    Left = 312
    Top = 324
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'nidtbxtpm'
      end>
    object QRY_098CDESCRIVTG: TStringField
      FieldName = 'CDESCRIVTG'
      Required = True
      Size = 40
    end
    object QRY_098NVALORSLR: TFloatField
      FieldName = 'NVALORSLR'
      OnGetText = QRY_098NVALORSLRGetText
    end
    object QRY_098NPERINIC: TFloatField
      FieldName = 'NPERINIC'
      Required = True
    end
    object QRY_098NPERFIM: TFloatField
      FieldName = 'NPERFIM'
      Required = True
    end
  end
  object DTS_098: TOraDataSource
    DataSet = QRY_098
    Left = 380
    Top = 320
  end
  object QRY_088: TOraQuery
    Session = DMControle.Conexao
    SQL.Strings = (
      'select '
      '  *'
      'from'
      '  tbxorg')
    Left = 312
    Top = 380
  end
  object DTS_088: TOraDataSource
    DataSet = QRY_088
    Left = 380
    Top = 380
  end
  object QRY_078: TOraQuery
    Session = DMControle.Conexao
    SQL.Strings = (
      'select'
      '  tagodp.nidtagodp,'
      '  tbxdpt.nidtbxdpt,'
      '  tbxdpt.cdescridpt'
      'from'
      '  tagodp,'
      '  tbxdpt'
      'where'
      '  tagodp.nidtbxorg = :nidtbxorg and'
      '  tbxdpt.nidtbxdpt = tagodp.nidtbxdpt')
    MasterSource = DTS_088
    Left = 312
    Top = 432
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'nidtbxorg'
      end>
  end
  object DTS_078: TOraDataSource
    DataSet = QRY_078
    Left = 380
    Top = 432
  end
  object QRY_076: TOraQuery
    Session = DMControle.Conexao
    SQL.Strings = (
      'select'
      '  tagdst.nidtagdst,'
      '  tbxset.nidtbxset,'
      '  tbxset.cdescriset'
      'from'
      '  tbxset,'
      '  tagdst'
      'where'
      '  tagdst.nidtbxdpt = :nidtbxdpt and'
      '  tbxset.nidtbxset = tagdst.nidtbxset')
    MasterSource = DTS_078
    Left = 444
    Top = 16
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'nidtbxdpt'
      end>
  end
  object DTS_076: TOraDataSource
    DataSet = QRY_076
    Left = 512
    Top = 16
  end
  object QRY_087: TOraQuery
    Session = DMControle.Conexao
    SQL.Strings = (
      'select'
      '  nidtbxltb,'
      '  cdescriltb'
      'from '
      '  tbxltb')
    Left = 448
    Top = 80
  end
  object DTS_087: TOraDataSource
    DataSet = QRY_087
    Left = 512
    Top = 80
  end
  object QRY_073_1: TOraQuery
    Session = DMControle.Conexao
    SQL.Strings = (
      'select'
      '  tbxtcr.cdescritcr,'
      '  cadcrg.cdescricrg,'
      '  tbxgro.cdescrigro,'
      '  tbxsgo.cdescrisgo'
      'from'
      '  tbxtcr,'
      '  cadcrg,'
      '  tbxgro,'
      '  tbxsgo,'
      '  tagffu'
      'where'
      '  tagffu.nidtagffu = :nidtagffu and'
      '  cadcrg.nidcadcrg = tagffu.nidcadcrg and'
      '  tbxtcr.nidtbxtcr = cadcrg.nidtbxtcr and'
      '  tbxgro.nidtbxgro = cadcrg.nidtbxgro and'
      '  tbxsgo.nidtbxsgo = cadcrg.nidtbxsgo')
    Left = 448
    Top = 144
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'nidtagffu'
      end>
  end
  object DTS_073_1: TOraDataSource
    DataSet = QRY_073_1
    Left = 516
    Top = 144
  end
end
