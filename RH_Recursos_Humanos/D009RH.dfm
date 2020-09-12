object DTM_A009RH: TDTM_A009RH
  OldCreateOrder = False
  Left = 148
  Top = 37
  Height = 515
  Width = 620
  object QRY_077: TOraQuery
    SQLInsert.Strings = (
      'INSERT INTO tagffu'
      
        '  (NIDTAGFFU, NPERSLR, NIDTAGOBT, NIDTAGSLR, NIDTAGOCT, NIDCADSE' +
        'R, NMATRICULA, NIDTAGUNO, NIDTAGUPJ, NIDTAGBOR, NIDTAGFPG)'
      'VALUES'
      
        '  (:NIDTAGFFU, :NPERSLR, :NIDTAGOBT, :NIDTAGSLR, :NIDTAGOCT, :NI' +
        'DCADSER, :NMATRICULA, :NIDTAGUNO, :NIDTAGUPJ, :NIDTAGBOR, :NIDTA' +
        'GFPG)')
    SQLDelete.Strings = (
      'DELETE FROM tagffu'
      'WHERE'
      '  NIDTAGFFU = :NIDTAGFFU')
    SQLUpdate.Strings = (
      'UPDATE tagffu'
      'SET'
      '  NIDTAGFFU = :NIDTAGFFU,'
      '  NPERSLR = :NPERSLR,'
      '  NIDTAGOBT = :NIDTAGOBT,'
      '  NIDTAGSLR = :NIDTAGSLR,'
      '  NIDTAGOCT = :NIDTAGOCT,'
      '  NIDCADSER = :NIDCADSER,'
      '  NMATRICULA = :NMATRICULA,'
      '  NIDTAGUNO = :NIDTAGUNO,'
      '  NIDTAGUPJ = :NIDTAGUPJ,'
      '  NIDTAGBOR = :NIDTAGBOR,'
      '  NIDTAGFPG = :NIDTAGFPG'
      'WHERE'
      '  NIDTAGFFU = :OLD_NIDTAGFFU')
    SQLLock.Strings = (
      'SELECT * FROM tagffu'
      'WHERE'
      '  NIDTAGFFU = :NIDTAGFFU'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      'WHERE'
      '  NIDTAGFFU = :NIDTAGFFU')
    SQL.Strings = (
      'select'
      '  tagffu.nidtagffu,'
      '  tagffu.nidtagobt,'
      '  tagffu.nperslr,'
      '  tagffu.nidtagslr,'
      '  tagffu.nidtagfpg,'
      '  taguno.nidtbxorg,'
      '  tagffu.nidtagoct,'
      '  tagoct.nidtbxori,'
      '  tagoct.nidtbxctl,'
      '  tagffu.nidcadser,'
      '  tagffu.nidtaguno,'
      '  tagffu.nidtagupj,'
      '  tagffu.nidtagbor,'
      '  tagffu.nmatricula,'
      '  tagffu.nidcadcrg,'
      '  tagupj.nidtbxund,'
      '  tagupj.nidtbxpja,'
      '  tagslr.nidtbxslr,'
      '  tagslr.cclasse,'
      '  tagbor.nidtbxbco'
      'from'
      '  tagffu,'
      '  taguno,'
      '  tagoct,'
      '  tagupj,'
      '  tagslr,'
      '  tagbor'
      'where'
      '  tagffu.nidtagffu = 7 and'
      '  taguno.nidtaguno(+) = tagffu.nidtaguno and'
      '  tagoct.nidtagoct(+) = tagffu.nidtagoct and'
      '  tagupj.nidtagupj(+) = tagffu.nidtagupj and'
      '  tagslr.nidtagslr(+) = tagffu.nidtagslr and'
      '  tagbor.nidtagbor(+) = tagffu.nidtagbor')
    Left = 32
    Top = 12
    object QRY_077LKP_SAL: TFloatField
      FieldKind = fkLookup
      FieldName = 'LKP_SAL'
      LookupDataSet = QRY_080_1
      LookupKeyFields = 'NIDTAGSLR'
      LookupResultField = 'NVALORSLR'
      KeyFields = 'NIDTAGSLR'
      currency = True
      Lookup = True
    end
    object QRY_077LKP_AGENCIA: TIntegerField
      FieldKind = fkLookup
      FieldName = 'LKP_AGENCIA'
      LookupDataSet = QRY_125
      LookupKeyFields = 'NIDTAGBOR'
      LookupResultField = 'NCODAGE'
      KeyFields = 'NIDTAGBOR'
      Lookup = True
    end
    object QRY_077LKP_CONTA: TStringField
      Alignment = taRightJustify
      FieldKind = fkLookup
      FieldName = 'LKP_CONTA'
      LookupDataSet = QRY_125
      LookupKeyFields = 'NIDTAGBOR'
      LookupResultField = 'NNROCONTA'
      KeyFields = 'NIDTAGBOR'
      OnGetText = QRY_077LKP_CONTAGetText
      Lookup = True
    end
    object QRY_077NIDTAGFFU: TFloatField
      FieldName = 'NIDTAGFFU'
      Required = True
    end
    object QRY_077NIDTAGOBT: TFloatField
      FieldName = 'NIDTAGOBT'
    end
    object QRY_077NPERSLR: TFloatField
      FieldName = 'NPERSLR'
    end
    object QRY_077NIDTAGSLR: TFloatField
      FieldName = 'NIDTAGSLR'
    end
    object QRY_077NIDTAGFPG: TFloatField
      FieldName = 'NIDTAGFPG'
    end
    object QRY_077NIDTBXORG: TFloatField
      FieldName = 'NIDTBXORG'
    end
    object QRY_077NIDTAGOCT: TFloatField
      FieldName = 'NIDTAGOCT'
    end
    object QRY_077NIDTBXORI: TFloatField
      FieldName = 'NIDTBXORI'
    end
    object QRY_077NIDTBXCTL: TFloatField
      FieldName = 'NIDTBXCTL'
    end
    object QRY_077NIDCADSER: TFloatField
      FieldName = 'NIDCADSER'
      Required = True
    end
    object QRY_077NIDTAGUNO: TFloatField
      FieldName = 'NIDTAGUNO'
    end
    object QRY_077NIDTAGUPJ: TFloatField
      FieldName = 'NIDTAGUPJ'
    end
    object QRY_077NIDTAGBOR: TFloatField
      FieldName = 'NIDTAGBOR'
    end
    object QRY_077NMATRICULA: TFloatField
      FieldName = 'NMATRICULA'
    end
    object QRY_077NIDCADCRG: TFloatField
      FieldName = 'NIDCADCRG'
      Required = True
    end
    object QRY_077NIDTBXUND: TFloatField
      FieldName = 'NIDTBXUND'
    end
    object QRY_077NIDTBXPJA: TFloatField
      FieldName = 'NIDTBXPJA'
    end
    object QRY_077NIDTBXSLR: TFloatField
      FieldName = 'NIDTBXSLR'
    end
    object QRY_077CCLASSE: TStringField
      FieldName = 'CCLASSE'
      Size = 3
    end
    object QRY_077NIDTBXBCO: TFloatField
      FieldName = 'NIDTBXBCO'
    end
  end
  object DTS_077: TOraDataSource
    AutoEdit = False
    DataSet = QRY_077
    Left = 100
    Top = 12
  end
  object QRY_073: TOraQuery
    SQL.Strings = (
      'select'
      '  nidslrfim,'
      '  nidtagslr,'
      '  nidtbxslr,'
      '  nhorassem,'
      '  nhorasmes,  '
      '  InitCap(cdescricrg) as cdescricrg,'
      '  InitCap(cdescritcr) as cdescritcr,'
      '  cdescritsl  '
      'from'
      '  cadcrg,'
      '  tbxtcr,'
      '  tbxtsl'
      'where'
      '  nidcadcrg = :nidcadcrg and'
      '  tbxtcr.nidtbxtcr = cadcrg.nidtbxtcr and'
      '  tbxtsl.nidtbxtsl = cadcrg.nidtbxtsl')
    MasterSource = DTS_077
    Left = 32
    Top = 68
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'nidcadcrg'
      end>
  end
  object DTS_073: TOraDataSource
    DataSet = QRY_073
    Left = 100
    Top = 72
  end
  object QRY_092: TOraQuery
    Session = DMControle.Conexao
    SQL.Strings = (
      'select'
      '  tbxslr.nidtbxslr,'
      '  tbxslr.cdescrislr'
      'from'
      ' tbxslr')
    MasterSource = DTS_073
    Left = 32
    Top = 120
  end
  object DTS_092: TOraDataSource
    AutoEdit = False
    DataSet = QRY_092
    Left = 100
    Top = 120
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
    Left = 32
    Top = 176
    ParamData = <
      item
        DataType = ftFloat
        Name = 'NIDTBXSLR'
        ParamType = ptInput
        Value = 1
      end>
  end
  object DTS_080: TOraDataSource
    AutoEdit = False
    DataSet = QRY_080
    Left = 100
    Top = 176
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
    Left = 32
    Top = 232
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
    AutoEdit = False
    DataSet = QRY_080_1
    Left = 100
    Top = 232
  end
  object QRY_029: TOraQuery
    SQLInsert.Strings = (
      'INSERT INTO cadser'
      
        '  (NIDCADSER, NIDCADGRL, CSIGCONCLA, CNRCONSCLA, NDEPIR, NDEPSF,' +
        ' CNROAPOSEN, NAGENCIA, NCONTA, NIDTBXBCO, CDIGITO, NDIGAGE)'
      'VALUES'
      
        '  (:NIDCADSER, :NIDCADGRL, :CSIGCONCLA, :CNRCONSCLA, :NDEPIR, :N' +
        'DEPSF, :CNROAPOSEN, :NAGENCIA, :NCONTA, :NIDTBXBCO, :CDIGITO, :N' +
        'DIGAGE)')
    SQLDelete.Strings = (
      'DELETE FROM cadser'
      'WHERE'
      '  NIDCADSER = :NIDCADSER')
    SQLUpdate.Strings = (
      'UPDATE cadser'
      'SET'
      '  NIDCADSER = :NIDCADSER,'
      '  NIDCADGRL = :NIDCADGRL,'
      '  CSIGCONCLA = :CSIGCONCLA,'
      '  CNRCONSCLA = :CNRCONSCLA,'
      '  NDEPIR = :NDEPIR,'
      '  NDEPSF = :NDEPSF,'
      '  CNROAPOSEN = :CNROAPOSEN,'
      '  NAGENCIA = :NAGENCIA,'
      '  NCONTA = :NCONTA,'
      '  NIDTBXBCO = :NIDTBXBCO,'
      '  CDIGITO = :CDIGITO,'
      '  NDIGAGE = :NDIGAGE'
      'WHERE'
      '  NIDCADSER = :OLD_NIDCADSER')
    SQLLock.Strings = (
      'SELECT * FROM cadser'
      'WHERE'
      '  NIDCADSER = :NIDCADSER'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      'WHERE'
      '  NIDCADSER = :NIDCADSER')
    SQL.Strings = (
      'select'
      '  cadser.*,'
      '  tbxbco.ncodbanco,'
      '  tbxbco.cdescbanco'
      'from'
      '  cadser,'
      '  tbxbco'
      'where'
      '  nidcadser = :nidcadser and'
      '  tbxbco.nidtbxbco(+) = cadser.nidtbxbco')
    MasterSource = DTS_077
    Left = 196
    Top = 16
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'nidcadser'
      end>
  end
  object DTS_029: TOraDataSource
    AutoEdit = False
    DataSet = QRY_029
    OnStateChange = DTS_029StateChange
    OnDataChange = DTS_029DataChange
    Left = 264
    Top = 16
  end
  object QRY_119: TOraQuery
    SQL.Strings = (
      'select'
      
        '  Sum(CalculaVtg(Decode(tagslr.nvalorslr,null,:lkp_sal,tagslr.nv' +
        'alorslr),'
      '  diasvtg(ddataini,ddatafim),npercvgc)) as DAT_valor '
      'from '
      '  tagvgc,'
      '  tbxvtg, '
      '  tagslr'
      'where'
      '  nidtagffu = :nidtagffu and'
      '  tbxvtg.nidtbxvtg = tagvgc.nidtbxvtg and'
      '  tagslr.nidtagslr(+) = tbxvtg.nidtagslr and'
      '  diasvtg(ddataini,ddatafim) > 0')
    MasterSource = DTS_077
    OnCalcFields = QRY_119CalcFields
    Left = 200
    Top = 64
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'lkp_sal'
      end
      item
        DataType = ftUnknown
        Name = 'nidtagffu'
      end>
    object QRY_119DAT_VALOR: TFloatField
      FieldName = 'DAT_VALOR'
      OnGetText = QRY_119DAT_VALORGetText
      currency = True
    end
    object QRY_119CLC_REMUNE: TFloatField
      FieldKind = fkCalculated
      FieldName = 'CLC_REMUNE'
      currency = True
      Calculated = True
    end
  end
  object DTS_119: TOraDataSource
    AutoEdit = False
    DataSet = QRY_119
    Left = 264
    Top = 64
  end
  object QRY_088: TOraQuery
    SQL.Strings = (
      'select'
      '  *'
      'from'
      '  tbxorg')
    Left = 32
    Top = 296
  end
  object DTS_088: TOraDataSource
    AutoEdit = False
    DataSet = QRY_088
    Left = 96
    Top = 296
  end
  object QRY_123: TOraQuery
    SQL.Strings = (
      'select'
      '  tbxund.cdescriund,'
      '  tbxund.nidtbxund,'
      '  taguno.nidtaguno'
      'from'
      '  taguno,'
      '  tbxund'
      'where'
      '  taguno.nidtbxorg = :nidtbxorg and'
      '  tbxund.nidtbxund = taguno.nidtbxund')
    MasterSource = DTS_088
    Left = 32
    Top = 352
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'nidtbxorg'
      end>
  end
  object DTS_123: TOraDataSource
    AutoEdit = False
    DataSet = QRY_123
    Left = 96
    Top = 352
  end
  object QRY_124: TOraQuery
    SQL.Strings = (
      'select'
      '  tbxpja.cdescripja,'
      '  tagupj.nidtagupj'
      'from'
      '  tbxpja,'
      '  tagupj'
      'where'
      '  tagupj.nidtbxund = :nidtbxund and'
      '  tbxpja.nidtbxpja = tagupj.nidtbxpja'
      '  ')
    MasterSource = DTS_123
    Left = 200
    Top = 124
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'nidtbxund'
      end>
  end
  object DTS_124: TOraDataSource
    AutoEdit = False
    DataSet = QRY_124
    Left = 264
    Top = 124
  end
  object QRY_037: TOraQuery
    SQL.Strings = (
      'select'
      '  tbxbco.nidtbxbco,'
      '  tbxbco.cdescbanco'
      'from'
      '  tbxbco,'
      '  tagbor'
      'where'
      '  tbxbco.nidtbxbco = tagbor.nidtbxbco')
    Left = 200
    Top = 176
  end
  object DTS_037: TOraDataSource
    AutoEdit = False
    DataSet = QRY_037
    Left = 264
    Top = 176
  end
  object QRY_125: TOraQuery
    SQL.Strings = (
      'select'
      '  tagbor.*,'
      '  tbxori.cdescricao'
      'from'
      '  tagbor,'
      '  tbxori'
      'where'
      '  nidtbxbco = :nidtbxbco and'
      '  tbxori.nidtbxori = tagbor.nidtbxori')
    MasterSource = DTS_037
    Left = 200
    Top = 225
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'nidtbxbco'
        Value = Null
      end>
    object QRY_125NIDTAGBOR: TFloatField
      FieldName = 'NIDTAGBOR'
      Required = True
    end
    object QRY_125NCODAGE: TFloatField
      FieldName = 'NCODAGE'
      Required = True
    end
    object QRY_125NNROCONTA: TFloatField
      FieldName = 'NNROCONTA'
      Required = True
    end
    object QRY_125NDIGCONTA: TFloatField
      FieldName = 'NDIGCONTA'
      Required = True
    end
    object QRY_125CPASTA: TStringField
      FieldName = 'CPASTA'
      Size = 100
    end
    object QRY_125NNROSEQ: TFloatField
      FieldName = 'NNROSEQ'
    end
    object QRY_125NIDTBXBCO: TFloatField
      FieldName = 'NIDTBXBCO'
      Required = True
    end
    object QRY_125NIDTBXORI: TFloatField
      FieldName = 'NIDTBXORI'
      Required = True
    end
    object QRY_125CDESCRICAO: TStringField
      FieldName = 'CDESCRICAO'
      Size = 8
    end
  end
  object DTS_125: TOraDataSource
    AutoEdit = False
    DataSet = QRY_125
    Left = 268
    Top = 224
  end
  object QRY_100: TOraQuery
    SQL.Strings = (
      'select'
      '  tagoct.*,'
      '  tbxctl.cdescrictl'
      'from'
      '  tagoct,'
      '  tbxctl'
      'where'
      '  tagoct.nidtbxori = :nidtbxori and'
      '  tbxctl.nidtbxctl = tagoct.nidtbxctl')
    MasterSource = DTS_125
    Left = 204
    Top = 288
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'nidtbxori'
      end>
  end
  object DTS_100: TOraDataSource
    AutoEdit = False
    DataSet = QRY_100
    Left = 272
    Top = 288
  end
  object QRY_107: TOraQuery
    SQL.Strings = (
      'select'
      '  tagfpg.*,'
      '  tbxfpg.cdescricao'
      'from'
      '  tagfpg,'
      '  tbxfpg'
      'where'
      '  tagfpg.nidtbxbco = :nidtbxbco and'
      '  tbxfpg.nidtbxfpg = tagfpg.nidtbxfpg')
    MasterSource = DTS_037
    Left = 204
    Top = 348
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'nidtbxbco'
      end>
  end
  object DTS_107: TOraDataSource
    AutoEdit = False
    DataSet = QRY_107
    Left = 272
    Top = 348
  end
end
