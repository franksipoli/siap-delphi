object DTM_A001RH: TDTM_A001RH
  OldCreateOrder = False
  Left = 151
  Top = 68
  Height = 448
  Width = 549
  object QRY_019: TOraQuery
    SQLInsert.Strings = (
      'INSERT INTO CadFis'
      
        '  (NIDCADGRL, NIDCADFIS, CNOMEMAE, CNOMEPAI, DDTEMIRG, CUFEMIRG,' +
        ' CSEXO, DDTNASC, NANOCHEG, CNOMECONJ, NCARTTRAB, NTITELEIT, NZON' +
        'ELEIT, NSECELEIT, NNROCNH, CCATCNH, DVALCNH, NNROCSM, CPIS, DDAT' +
        'APIS, CDEFICIENT, NIDTBXECI, NIDTBXERG, NIDTBXLOC, NIDTBXCOR, NI' +
        'DTBXNAC, NIDTBXGRI, CUFCARTTRB, DEMICATTRB, CENVIARTC, CSERIETRA' +
        'B)'
      'VALUES'
      
        '  (:NIDCADGRL, :NIDCADFIS, :CNOMEMAE, :CNOMEPAI, :DDTEMIRG, :CUF' +
        'EMIRG, :CSEXO, :DDTNASC, :NANOCHEG, :CNOMECONJ, :NCARTTRAB, :NTI' +
        'TELEIT, :NZONELEIT, :NSECELEIT, :NNROCNH, :CCATCNH, :DVALCNH, :N' +
        'NROCSM, :CPIS, :DDATAPIS, :CDEFICIENT, :NIDTBXECI, :NIDTBXERG, :' +
        'NIDTBXLOC, :NIDTBXCOR, :NIDTBXNAC, :NIDTBXGRI, :CUFCARTTRB, :DEM' +
        'ICATTRB, :CENVIARTC, :CSERIETRAB)')
    SQLDelete.Strings = (
      'DELETE FROM CadFis'
      'WHERE'
      '  NIDCADGRL = :NIDCADGRL')
    SQLUpdate.Strings = (
      'UPDATE CadFis'
      'SET'
      '  NIDCADGRL = :NIDCADGRL,'
      '  NIDCADFIS = :NIDCADFIS,'
      '  CNOMEMAE = :CNOMEMAE,'
      '  CNOMEPAI = :CNOMEPAI,'
      '  DDTEMIRG = :DDTEMIRG,'
      '  CUFEMIRG = :CUFEMIRG,'
      '  CSEXO = :CSEXO,'
      '  DDTNASC = :DDTNASC,'
      '  NANOCHEG = :NANOCHEG,'
      '  CNOMECONJ = :CNOMECONJ,'
      '  NCARTTRAB = :NCARTTRAB,'
      '  NTITELEIT = :NTITELEIT,'
      '  NZONELEIT = :NZONELEIT,'
      '  NSECELEIT = :NSECELEIT,'
      '  NNROCNH = :NNROCNH,'
      '  CCATCNH = :CCATCNH,'
      '  DVALCNH = :DVALCNH,'
      '  NNROCSM = :NNROCSM,'
      '  CPIS = :CPIS,'
      '  DDATAPIS = :DDATAPIS,'
      '  CDEFICIENT = :CDEFICIENT,'
      '  NIDTBXECI = :NIDTBXECI,'
      '  NIDTBXERG = :NIDTBXERG,'
      '  NIDTBXLOC = :NIDTBXLOC,'
      '  NIDTBXCOR = :NIDTBXCOR,'
      '  NIDTBXNAC = :NIDTBXNAC,'
      '  NIDTBXGRI = :NIDTBXGRI,'
      '  CUFCARTTRB = :CUFCARTTRB,'
      '  DEMICATTRB = :DEMICATTRB,'
      '  CENVIARTC = :CENVIARTC,'
      '  CSERIETRAB = :CSERIETRAB'
      'WHERE'
      '  NIDCADGRL = :OLD_NIDCADGRL')
    SQLLock.Strings = (
      'SELECT * FROM CadFis'
      'WHERE'
      '  NIDCADGRL = :NIDCADGRL'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      'WHERE'
      '  NIDCADGRL = :NIDCADGRL')
    SQL.Strings = (
      'select * from CadFis where nIdCadGrl = :nIdCadGrl')
    MasterSource = DTS_029
    OnCalcFields = QRY_019CalcFields
    Left = 24
    Top = 138
    ParamData = <
      item
        DataType = ftFloat
        Name = 'NIDCADGRL'
        ParamType = ptInput
        Value = 3
      end>
    object QRY_019NIDCADGRL: TFloatField
      FieldName = 'NIDCADGRL'
      Required = True
    end
    object QRY_019NIDCADFIS: TFloatField
      FieldName = 'NIDCADFIS'
      Required = True
    end
    object QRY_019CNOMEMAE: TStringField
      FieldName = 'CNOMEMAE'
      Size = 50
    end
    object QRY_019CNOMEPAI: TStringField
      FieldName = 'CNOMEPAI'
      Size = 50
    end
    object QRY_019DDTEMIRG: TDateTimeField
      FieldName = 'DDTEMIRG'
    end
    object QRY_019CUFEMIRG: TStringField
      Alignment = taCenter
      FieldName = 'CUFEMIRG'
      Size = 2
    end
    object QRY_019CSEXO: TStringField
      FieldName = 'CSEXO'
      OnGetText = QRY_019CSEXOGetText
      FixedChar = True
      Size = 1
    end
    object QRY_019DDTNASC: TDateTimeField
      FieldName = 'DDTNASC'
    end
    object QRY_019NANOCHEG: TFloatField
      FieldName = 'NANOCHEG'
    end
    object QRY_019CNOMECONJ: TStringField
      FieldName = 'CNOMECONJ'
      Size = 50
    end
    object QRY_019NCARTTRAB: TFloatField
      FieldName = 'NCARTTRAB'
    end
    object QRY_019NTITELEIT: TFloatField
      FieldName = 'NTITELEIT'
    end
    object QRY_019NZONELEIT: TFloatField
      FieldName = 'NZONELEIT'
    end
    object QRY_019NSECELEIT: TFloatField
      FieldName = 'NSECELEIT'
    end
    object QRY_019NNROCNH: TFloatField
      FieldName = 'NNROCNH'
    end
    object QRY_019CCATCNH: TStringField
      FieldName = 'CCATCNH'
      Size = 1
    end
    object QRY_019DVALCNH: TDateTimeField
      FieldName = 'DVALCNH'
    end
    object QRY_019NNROCSM: TFloatField
      FieldName = 'NNROCSM'
    end
    object QRY_019CPIS: TStringField
      FieldName = 'CPIS'
      Size = 11
    end
    object QRY_019DDATAPIS: TDateTimeField
      FieldName = 'DDATAPIS'
    end
    object QRY_019CDEFICIENT: TStringField
      FieldName = 'CDEFICIENT'
      Size = 3
    end
    object QRY_019NIDTBXECI: TFloatField
      FieldName = 'NIDTBXECI'
      Required = True
    end
    object QRY_019NIDTBXERG: TFloatField
      FieldName = 'NIDTBXERG'
      Required = True
    end
    object QRY_019NIDTBXLOC: TFloatField
      FieldName = 'NIDTBXLOC'
      Required = True
    end
    object QRY_019NIDTBXCOR: TFloatField
      FieldName = 'NIDTBXCOR'
      Required = True
    end
    object QRY_019NIDTBXNAC: TFloatField
      FieldName = 'NIDTBXNAC'
      Required = True
    end
    object QRY_019NIDTBXGRI: TFloatField
      FieldName = 'NIDTBXGRI'
      Required = True
    end
    object QRY_019LKP_IDADE: TStringField
      Alignment = taRightJustify
      FieldKind = fkCalculated
      FieldName = 'LKP_IDADE'
      Size = 10
      Calculated = True
    end
    object QRY_019CUFCARTTRB: TStringField
      FieldName = 'CUFCARTTRB'
      Size = 2
    end
    object QRY_019DEMICATTRB: TDateTimeField
      FieldName = 'DEMICATTRB'
    end
    object QRY_019CENVIARTC: TStringField
      DefaultExpression = 'S'
      FieldName = 'CENVIARTC'
      FixedChar = True
      Size = 1
    end
    object QRY_019CSERIETRAB: TStringField
      FieldName = 'CSERIETRAB'
      Size = 5
    end
  end
  object DTS_019: TOraDataSource
    AutoEdit = False
    DataSet = QRY_019
    OnStateChange = DTS_019StateChange
    Left = 92
    Top = 138
  end
  object QRY_020: TOraQuery
    SQL.Strings = (
      'select * from TbxCor'
      '')
    Left = 192
    Top = 267
  end
  object DTS_020: TOraDataSource
    AutoEdit = False
    DataSet = QRY_020
    Left = 264
    Top = 267
  end
  object QRY_023: TOraQuery
    SQL.Strings = (
      'select * from TbxNac')
    Left = 28
    Top = 264
  end
  object DTS_023: TOraDataSource
    AutoEdit = False
    DataSet = QRY_023
    Left = 92
    Top = 260
  end
  object QRY_012: TOraQuery
    SQL.Strings = (
      
        'select nidtbxloc,cnomeloc,UfLoc from TbxLoc where nidTbxLoc = :n' +
        'idTbxLoc')
    MasterSource = DTS_019
    Left = 24
    Top = 199
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'nidTbxLoc'
      end>
  end
  object DTS_012: TOraDataSource
    AutoEdit = False
    DataSet = QRY_012
    OnDataChange = DTS_012DataChange
    Left = 92
    Top = 199
  end
  object QRY_013: TOraQuery
    SQL.Strings = (
      
        'select CadLog.nidCadLog,CadLog.nCep,CadLog.cNomeLog, TbxBai.cNom' +
        'eBai,TbxLoc.cNomeLoc,TbxLoc.cDDD,TbxUFD.cSiglaUF,TbxPas.cNomePai' +
        's'
      'from CadLog,TbxBai,TbxLoc,TbxUFD,TbxPas'
      
        'where CadLog.nidTbxBai = TbxBai.nidTbxBai and TbxBai.nidTbxLoc =' +
        ' TbxLoc.nidTbxLoc and TbxLoc.nidTbxUfd = TbxUfd.nidTbxUfd and Tb' +
        'xUfd.nidTbxPas = TbxPas.nidTbxPas'
      'and CadLog.nidCadLog = :nidcadlog')
    MasterSource = DTS_016
    Left = 192
    Top = 16
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'nidcadlog'
      end>
    object QRY_013NIDCADLOG: TFloatField
      FieldName = 'NIDCADLOG'
      Required = True
    end
    object QRY_013NCEP: TIntegerField
      FieldName = 'NCEP'
    end
    object QRY_013CNOMELOG: TStringField
      FieldName = 'CNOMELOG'
      Size = 80
    end
    object QRY_013CNOMEBAI: TStringField
      FieldName = 'CNOMEBAI'
      Size = 72
    end
    object QRY_013CNOMELOC: TStringField
      FieldName = 'CNOMELOC'
      Size = 60
    end
    object QRY_013CSIGLAUF: TStringField
      FieldName = 'CSIGLAUF'
      Size = 2
    end
    object QRY_013CNOMEPAIS: TStringField
      FieldName = 'CNOMEPAIS'
      Required = True
      Size = 60
    end
    object QRY_013CDDD: TStringField
      FieldName = 'CDDD'
      Size = 2
    end
  end
  object DTS_013: TOraDataSource
    AutoEdit = False
    DataSet = QRY_013
    OnDataChange = DTS_013DataChange
    Left = 264
    Top = 16
  end
  object QRY_021: TOraQuery
    SQL.Strings = (
      'select * from TbxEci')
    Left = 192
    Top = 79
  end
  object DTS_021: TOraDataSource
    AutoEdit = False
    DataSet = QRY_021
    Left = 264
    Top = 79
  end
  object QRY_022: TOraQuery
    SQL.Strings = (
      'select * from TbxGri')
    Left = 192
    Top = 142
  end
  object DTS_022: TOraDataSource
    AutoEdit = False
    DataSet = QRY_022
    Left = 264
    Top = 142
  end
  object QRY_024: TOraQuery
    SQL.Strings = (
      'select * from Tbxerg')
    Left = 192
    Top = 204
  end
  object DTS_024: TOraDataSource
    AutoEdit = False
    DataSet = QRY_024
    Left = 264
    Top = 204
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
      ' cadser.*, '
      ' cadgrl.ccpfcnpj '
      'from '
      '  cadser,'
      '  cadgrl'
      'where'
      '  cadgrl.nidcadgrl = cadser.nidcadgrl'
      '')
    FetchRows = 1
    AfterScroll = QRY_029AfterScroll
    Left = 24
    Top = 15
    object QRY_029NIDCADSER: TFloatField
      FieldName = 'NIDCADSER'
      Required = True
    end
    object QRY_029NIDCADGRL: TFloatField
      FieldName = 'NIDCADGRL'
      Required = True
    end
    object QRY_029CSIGCONCLA: TStringField
      FieldName = 'CSIGCONCLA'
      Size = 10
    end
    object QRY_029CNRCONSCLA: TStringField
      FieldName = 'CNRCONSCLA'
      Size = 10
    end
    object QRY_029NDEPIR: TFloatField
      FieldName = 'NDEPIR'
    end
    object QRY_029NDEPSF: TFloatField
      FieldName = 'NDEPSF'
    end
    object QRY_029CNROAPOSEN: TStringField
      FieldName = 'CNROAPOSEN'
      Size = 10
    end
    object QRY_029NAGENCIA: TFloatField
      FieldName = 'NAGENCIA'
    end
    object QRY_029NCONTA: TFloatField
      FieldName = 'NCONTA'
    end
    object QRY_029NIDTBXBCO: TFloatField
      DefaultExpression = '0'
      FieldName = 'NIDTBXBCO'
    end
    object QRY_029CCPFCNPJ: TStringField
      FieldName = 'CCPFCNPJ'
      Size = 14
    end
    object QRY_029CDIGITO: TStringField
      FieldName = 'CDIGITO'
      Size = 2
    end
    object QRY_029NDIGAGE: TFloatField
      FieldName = 'NDIGAGE'
    end
  end
  object DTS_029: TOraDataSource
    AutoEdit = False
    DataSet = QRY_029
    OnStateChange = DTS_029StateChange
    Left = 92
    Top = 15
  end
  object QRY_016: TOraQuery
    SQLInsert.Strings = (
      'INSERT INTO cadGrl'
      
        '  (NIDCADGRL, CNOMEGRL, CCPFCNPJ, CRGIE, CNUMERO, CCOMPLEMEN, CC' +
        'ONTATO, CTELRES, CTELCOM, CTELCELULA, CEMAIL, CPESSOAFJ, NIDCADL' +
        'OG)'
      'VALUES'
      
        '  (:NIDCADGRL, :CNOMEGRL, :CCPFCNPJ, :CRGIE, :CNUMERO, :CCOMPLEM' +
        'EN, :CCONTATO, :CTELRES, :CTELCOM, :CTELCELULA, :CEMAIL, :CPESSO' +
        'AFJ, :NIDCADLOG)')
    SQLDelete.Strings = (
      'DELETE FROM cadGrl'
      'WHERE'
      '  NIDCADGRL = :NIDCADGRL')
    SQLUpdate.Strings = (
      'UPDATE cadGrl'
      'SET'
      '  NIDCADGRL = :NIDCADGRL,'
      '  CNOMEGRL = :CNOMEGRL,'
      '  CCPFCNPJ = :CCPFCNPJ,'
      '  CRGIE = :CRGIE,'
      '  CNUMERO = :CNUMERO,'
      '  CCOMPLEMEN = :CCOMPLEMEN,'
      '  CCONTATO = :CCONTATO,'
      '  CTELRES = :CTELRES,'
      '  CTELCOM = :CTELCOM,'
      '  CTELCELULA = :CTELCELULA,'
      '  CEMAIL = :CEMAIL,'
      '  CPESSOAFJ = :CPESSOAFJ,'
      '  NIDCADLOG = :NIDCADLOG'
      'WHERE'
      '  NIDCADGRL = :OLD_NIDCADGRL')
    SQLLock.Strings = (
      'SELECT * FROM cadGrl'
      'WHERE'
      '  NIDCADGRL = :NIDCADGRL'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      'WHERE'
      '  NIDCADGRL = :NIDCADGRL')
    SQL.Strings = (
      
        'select * from cadGrl where nidcadgrl = :nidcadgrl and cPessoaFJ ' +
        '= 1')
    MasterSource = DTS_029
    Left = 24
    Top = 76
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'nidcadgrl'
      end>
    object QRY_016NIDCADGRL: TFloatField
      FieldName = 'NIDCADGRL'
      Required = True
    end
    object QRY_016CNOMEGRL: TStringField
      FieldName = 'CNOMEGRL'
      Required = True
      Size = 50
    end
    object QRY_016CCPFCNPJ: TStringField
      FieldName = 'CCPFCNPJ'
      EditMask = '999.999.999-99;0;*'
      Size = 14
    end
    object QRY_016CRGIE: TStringField
      FieldName = 'CRGIE'
    end
    object QRY_016CNUMERO: TStringField
      FieldName = 'CNUMERO'
      Required = True
      Size = 15
    end
    object QRY_016CCOMPLEMEN: TStringField
      FieldName = 'CCOMPLEMEN'
      Size = 25
    end
    object QRY_016CCONTATO: TStringField
      FieldName = 'CCONTATO'
      Size = 15
    end
    object QRY_016CTELRES: TStringField
      FieldName = 'CTELRES'
      Size = 10
    end
    object QRY_016CTELCOM: TStringField
      FieldName = 'CTELCOM'
      Size = 10
    end
    object QRY_016CTELCELULA: TStringField
      FieldName = 'CTELCELULA'
      Size = 10
    end
    object QRY_016CEMAIL: TStringField
      FieldName = 'CEMAIL'
      Size = 30
    end
    object QRY_016CPESSOAFJ: TFloatField
      FieldName = 'CPESSOAFJ'
      Required = True
    end
    object QRY_016NIDCADLOG: TFloatField
      FieldName = 'NIDCADLOG'
      Required = True
    end
  end
  object DTS_016: TOraDataSource
    AutoEdit = False
    DataSet = QRY_016
    Left = 92
    Top = 76
  end
  object QRY_015: TOraQuery
    Session = DMControle.Conexao
    SQL.Strings = (
      'select'
      '  *'
      'from'
      '  tbxufd')
    Left = 28
    Top = 316
  end
  object DTS_015: TOraDataSource
    DataSet = QRY_015
    Left = 92
    Top = 316
  end
  object QRY_109: TOraQuery
    SQLInsert.Strings = (
      'INSERT INTO tagfto'
      '  (NIDTAGFTO, BFOTO, NIDCADGRL)'
      'VALUES'
      '  (:NIDTAGFTO, :BFOTO, :NIDCADGRL)')
    SQLDelete.Strings = (
      'DELETE FROM tagfto'
      'WHERE'
      '  NIDTAGFTO = :NIDTAGFTO')
    SQLUpdate.Strings = (
      'UPDATE tagfto'
      'SET'
      '  NIDTAGFTO = :NIDTAGFTO,'
      '  BFOTO = :BFOTO,'
      '  NIDCADGRL = :NIDCADGRL'
      'WHERE'
      '  NIDTAGFTO = :OLD_NIDTAGFTO')
    SQLLock.Strings = (
      'SELECT * FROM tagfto'
      'WHERE'
      '  NIDTAGFTO = :NIDTAGFTO'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      'WHERE'
      '  NIDTAGFTO = :NIDTAGFTO')
    Session = DMControle.Conexao
    SQL.Strings = (
      'select'
      '  *'
      'from'
      '  tagfto'
      'where'
      '  nidcadgrl = :nidcadgrl')
    MasterSource = DTS_029
    CachedUpdates = True
    Left = 192
    Top = 320
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'nidcadgrl'
      end>
    object QRY_109NIDTAGFTO: TFloatField
      FieldName = 'NIDTAGFTO'
      Required = True
    end
    object QRY_109BFOTO: TBlobField
      FieldName = 'BFOTO'
      Required = True
      BlobType = ftBlob
    end
    object QRY_109NIDCADGRL: TFloatField
      FieldName = 'NIDCADGRL'
      Required = True
    end
  end
  object DTS_109: TOraDataSource
    DataSet = QRY_109
    Left = 264
    Top = 320
  end
end
