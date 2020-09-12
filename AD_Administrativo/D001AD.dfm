object DTM_A001AD: TDTM_A001AD
  OldCreateOrder = False
  Left = 116
  Top = 65535
  Height = 571
  Width = 613
  object QRY_031: TOraQuery
    SQLInsert.Strings = (
      'INSERT INTO CadFor'
      
        '  (NIDCADFOR, NIDCADGRL, CTELCOMFOR, CTELFAXFOR, CTELCELFOR, CEM' +
        'AILFOR, NTOTEMPREG, NTOTTECNIC, NCAPSOCIAL, NFATUANUAL, CCONTATF' +
        'OR, CPESSCERTF, CCPFRESP, CNOMERESP)'
      'VALUES'
      
        '  (:NIDCADFOR, :NIDCADGRL, :CTELCOMFOR, :CTELFAXFOR, :CTELCELFOR' +
        ', :CEMAILFOR, :NTOTEMPREG, :NTOTTECNIC, :NCAPSOCIAL, :NFATUANUAL' +
        ', :CCONTATFOR, :CPESSCERTF, :CCPFRESP, :CNOMERESP)')
    SQLDelete.Strings = (
      'DELETE FROM CadFor'
      'WHERE'
      '  NIDCADFOR = :NIDCADFOR')
    SQLUpdate.Strings = (
      'UPDATE CadFor'
      'SET'
      '  NIDCADFOR = :NIDCADFOR,'
      '  NIDCADGRL = :NIDCADGRL,'
      '  CTELCOMFOR = :CTELCOMFOR,'
      '  CTELFAXFOR = :CTELFAXFOR,'
      '  CTELCELFOR = :CTELCELFOR,'
      '  CEMAILFOR = :CEMAILFOR,'
      '  NTOTEMPREG = :NTOTEMPREG,'
      '  NTOTTECNIC = :NTOTTECNIC,'
      '  NCAPSOCIAL = :NCAPSOCIAL,'
      '  NFATUANUAL = :NFATUANUAL,'
      '  CCONTATFOR = :CCONTATFOR,'
      '  CPESSCERTF = :CPESSCERTF,'
      '  CCPFRESP = :CCPFRESP,'
      '  CNOMERESP = :CNOMERESP'
      'WHERE'
      '  NIDCADFOR = :OLD_NIDCADFOR')
    SQLLock.Strings = (
      'SELECT * FROM CadFor'
      'WHERE'
      '  NIDCADFOR = :NIDCADFOR'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      'WHERE'
      '  NIDCADFOR = :NIDCADFOR')
    Session = DMControle.Conexao
    SQL.Strings = (
      'select * from CadFor')
    AfterScroll = QRY_016AfterScroll
    Left = 53
    Top = 8
    object QRY_031NIDCADFOR: TFloatField
      FieldName = 'NIDCADFOR'
      Required = True
    end
    object QRY_031NIDCADGRL: TFloatField
      FieldName = 'NIDCADGRL'
      Required = True
    end
    object QRY_031CTELCOMFOR: TStringField
      FieldName = 'CTELCOMFOR'
      Size = 10
    end
    object QRY_031CTELFAXFOR: TStringField
      FieldName = 'CTELFAXFOR'
      Size = 10
    end
    object QRY_031CTELCELFOR: TStringField
      FieldName = 'CTELCELFOR'
      Size = 10
    end
    object QRY_031CEMAILFOR: TStringField
      FieldName = 'CEMAILFOR'
      Size = 30
    end
    object QRY_031NTOTEMPREG: TFloatField
      FieldName = 'NTOTEMPREG'
    end
    object QRY_031NTOTTECNIC: TFloatField
      FieldName = 'NTOTTECNIC'
    end
    object QRY_031NCAPSOCIAL: TFloatField
      FieldName = 'NCAPSOCIAL'
      currency = True
    end
    object QRY_031NFATUANUAL: TFloatField
      FieldName = 'NFATUANUAL'
      currency = True
    end
    object QRY_031CCONTATFOR: TStringField
      FieldName = 'CCONTATFOR'
    end
    object QRY_031DDTEMISSAO: TDateTimeField
      FieldName = 'DDTEMISSAO'
    end
    object QRY_031DDTVALIDAD: TDateTimeField
      FieldName = 'DDTVALIDAD'
    end
    object QRY_031CCERTIFICA: TStringField
      FieldName = 'CCERTIFICA'
      Size = 15
    end
    object QRY_031CPESSCERTF: TStringField
      FieldName = 'CPESSCERTF'
      Size = 80
    end
    object QRY_031CCPFRESP: TStringField
      DisplayWidth = 14
      FieldName = 'CCPFRESP'
      EditMask = '999\.999\.999\-99;0;_'
      Size = 11
    end
    object QRY_031CNOMERESP: TStringField
      FieldName = 'CNOMERESP'
      Size = 80
    end
  end
  object QRY_013: TOraQuery
    SQL.Strings = (
      
        'select CadLog.nidCadLog,CadLog.nCep,CadLog.cNomeLog, TbxBai.cNom' +
        'eBai,TbxLoc.cNomeLoc, TbxLoc.cDDD, TbxUFD.cSiglaUF,TbxPas.cNomeP' +
        'ais'
      'from CadLog,TbxBai,TbxLoc,TbxUFD,TbxPas'
      
        'where CadLog.nidTbxBai = TbxBai.nidTbxBai and TbxBai.nidTbxLoc =' +
        ' TbxLoc.nidTbxLoc and TbxLoc.nidTbxUfd = TbxUfd.nidTbxUfd and Tb' +
        'xUfd.nidTbxPas = TbxPas.nidTbxPas'
      'and CadLog.nidCadLog = :nidCadLog')
    MasterSource = DTS_016
    Left = 53
    Top = 133
    ParamData = <
      item
        DataType = ftFloat
        Name = 'NIDCADLOG'
        ParamType = ptInput
        Value = 669840
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
    object QRY_013CDDD: TStringField
      FieldName = 'CDDD'
      Size = 3
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
  end
  object QRY_016: TOraQuery
    SQLInsert.Strings = (
      'INSERT INTO CadGrl'
      
        '  (NIDCADGRL, CNOMEGRL, CCPFCNPJ, CRGIE, CNUMERO, CCOMPLEMEN, CC' +
        'ONTATO, CTELRES, CTELCOM, CTELCELULA, CEMAIL, CPESSOAFJ, NIDCADL' +
        'OG, CTELFAX, NIDTBXCNA, CATIVIDADE)'
      'VALUES'
      
        '  (:NIDCADGRL, :CNOMEGRL, :CCPFCNPJ, :CRGIE, :CNUMERO, :CCOMPLEM' +
        'EN, :CCONTATO, :CTELRES, :CTELCOM, :CTELCELULA, :CEMAIL, :CPESSO' +
        'AFJ, :NIDCADLOG, :CTELFAX, :NIDTBXCNA, :CATIVIDADE)')
    SQLDelete.Strings = (
      'DELETE FROM CadGrl'
      'WHERE'
      '  NIDCADGRL = :NIDCADGRL')
    SQLUpdate.Strings = (
      'UPDATE CadGrl'
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
      '  NIDCADLOG = :NIDCADLOG,'
      '  CTELFAX = :CTELFAX,'
      '  NIDTBXCNA = :NIDTBXCNA,'
      '  CATIVIDADE = :CATIVIDADE'
      'WHERE'
      '  NIDCADGRL = :OLD_NIDCADGRL')
    SQLLock.Strings = (
      'SELECT * FROM CadGrl'
      'WHERE'
      '  NIDCADGRL = :NIDCADGRL'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      'WHERE'
      '  NIDCADGRL = :NIDCADGRL')
    SQL.Strings = (
      'select * from CadGrl where nidcadgrl = :nidcadgrl')
    MasterSource = DTS_031
    AfterScroll = QRY_016AfterScroll
    Left = 53
    Top = 70
    ParamData = <
      item
        DataType = ftFloat
        Name = 'NIDCADGRL'
        ParamType = ptInput
        Value = 103
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
      Size = 14
    end
    object QRY_016CRGIE: TStringField
      FieldName = 'CRGIE'
    end
    object QRY_016CNUMERO: TStringField
      FieldName = 'CNUMERO'
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
    object QRY_016CTELCOM: TStringField
      FieldName = 'CTELCOM'
      Size = 10
    end
    object QRY_016CTELRES: TStringField
      FieldName = 'CTELRES'
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
    object QRY_016CTELFAX: TStringField
      FieldName = 'CTELFAX'
      Size = 10
    end
    object QRY_016NIDTBXCNA: TFloatField
      FieldName = 'NIDTBXCNA'
      Required = True
    end
    object QRY_016CATIVIDADE: TStringField
      FieldName = 'CATIVIDADE'
      Size = 1900
    end
  end
  object QRY_039: TOraQuery
    SQL.Strings = (
      'select * from tbxcna where nidtbxcna = :nidtbxcna')
    MasterSource = DTS_016
    Left = 53
    Top = 320
    ParamData = <
      item
        DataType = ftFloat
        Name = 'NIDTBXCNA'
        ParamType = ptInput
      end>
    object QRY_039NIDTBXCNA: TFloatField
      FieldName = 'NIDTBXCNA'
      Required = True
    end
    object QRY_039CCODCNAE: TStringField
      FieldName = 'CCODCNAE'
      Required = True
      Size = 10
    end
    object QRY_039CDESCCNAE: TStringField
      FieldName = 'CDESCCNAE'
      Required = True
      Size = 120
    end
  end
  object QRY_038: TOraQuery
    SQLInsert.Strings = (
      'INSERT INTO TagBFN'
      '  (NIDTAGBFN, CAGENCIA, NIDCADFOR, NIDTBXBCO, CCONTCORRE)'
      'VALUES'
      '  (:NIDTAGBFN, :CAGENCIA, :NIDCADFOR, :NIDTBXBCO, :CCONTCORRE)')
    SQLDelete.Strings = (
      'DELETE FROM TagBFN'
      'WHERE'
      '  NIDTAGBFN = :NIDTAGBFN')
    SQLUpdate.Strings = (
      'UPDATE TagBFN'
      'SET'
      '  NIDTAGBFN = :NIDTAGBFN,'
      '  CAGENCIA = :CAGENCIA,'
      '  NIDCADFOR = :NIDCADFOR,'
      '  NIDTBXBCO = :NIDTBXBCO,'
      '  CCONTCORRE = :CCONTCORRE'
      'WHERE'
      '  NIDTAGBFN = :OLD_NIDTAGBFN')
    SQLLock.Strings = (
      'SELECT * FROM TagBFN'
      'WHERE'
      '  NIDTAGBFN = :NIDTAGBFN'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      'WHERE'
      '  NIDTAGBFN = :NIDTAGBFN')
    SQL.Strings = (
      'select * from TagBFN where TagBFN.nidcadfor = :nidcadfor')
    MasterSource = DTS_031
    CachedUpdates = True
    Left = 53
    Top = 383
    ParamData = <
      item
        DataType = ftFloat
        Name = 'NIDCADFOR'
        ParamType = ptInput
        Value = 1
      end>
    object QRY_038NIDTAGBFN: TFloatField
      FieldName = 'NIDTAGBFN'
      Required = True
    end
    object QRY_038CAGENCIA: TStringField
      FieldName = 'CAGENCIA'
      Required = True
      Size = 10
    end
    object QRY_038NIDCADFOR: TFloatField
      FieldName = 'NIDCADFOR'
      Required = True
    end
    object QRY_038NIDTBXBCO: TFloatField
      FieldName = 'NIDTBXBCO'
      Required = True
    end
    object QRY_038LKP_CDESCBANCO: TStringField
      FieldKind = fkLookup
      FieldName = 'LKP_CDESCBANCO'
      LookupDataSet = QRY_037
      LookupKeyFields = 'NIDTBXBCO'
      LookupResultField = 'CDESCBANCO'
      KeyFields = 'NIDTBXBCO'
      Size = 30
      Lookup = True
    end
    object QRY_038LKP_NCODBANCO: TIntegerField
      FieldKind = fkLookup
      FieldName = 'LKP_NCODBANCO'
      LookupDataSet = QRY_037
      LookupKeyFields = 'NIDTBXBCO'
      LookupResultField = 'NCODBANCO'
      KeyFields = 'NIDTBXBCO'
      DisplayFormat = '00000'
      Lookup = True
    end
    object QRY_038CCONTCORRE: TStringField
      FieldName = 'CCONTCORRE'
      Size = 10
    end
  end
  object QRY_033: TOraQuery
    SQL.Strings = (
      'select * from TagIgd'
      'where cTipoPess in (:TipoPess,'#39'A'#39') order by nidtagigd')
    Left = 249
    Top = 8
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'TipoPess'
      end>
    object QRY_033NIDTAGIGD: TFloatField
      FieldName = 'NIDTAGIGD'
      Required = True
    end
    object QRY_033CDESCDOC: TStringField
      FieldName = 'CDESCDOC'
      Required = True
      Size = 80
    end
    object QRY_033CTIPOPESS: TStringField
      FieldName = 'CTIPOPESS'
      Required = True
      Size = 1
    end
    object QRY_033CVALIDADE: TStringField
      FieldName = 'CVALIDADE'
      Required = True
      Size = 1
    end
    object QRY_033NIDCADGDC: TFloatField
      FieldName = 'NIDCADGDC'
      Required = True
    end
    object QRY_033COBRIGA: TStringField
      FieldName = 'COBRIGA'
      Size = 1
    end
    object QRY_033CDISPEN: TStringField
      FieldName = 'CDISPEN'
      Size = 1
    end
    object QRY_033CUTILIZA: TStringField
      FieldName = 'CUTILIZA'
      Size = 1
    end
    object QRY_033CDESCREDUZ: TStringField
      FieldName = 'CDESCREDUZ'
    end
  end
  object QRY_034: TOraQuery
    SQLInsert.Strings = (
      'INSERT INTO TagDoc'
      
        '  (NIDTAGDOC, CDISPENSA, CENTREGUE, DDATAVALID, CSTATUS, NIDCADF' +
        'OR, NIDTAGIGD, CNUMDOC)'
      'VALUES'
      
        '  (:NIDTAGDOC, :CDISPENSA, :CENTREGUE, :DDATAVALID, :CSTATUS, :N' +
        'IDCADFOR, :NIDTAGIGD, :CNUMDOC)')
    SQLDelete.Strings = (
      'DELETE FROM TagDoc'
      'WHERE'
      '  NIDTAGDOC = :NIDTAGDOC')
    SQLUpdate.Strings = (
      'UPDATE TagDoc'
      'SET'
      '  NIDTAGDOC = :NIDTAGDOC,'
      '  CDISPENSA = :CDISPENSA,'
      '  CENTREGUE = :CENTREGUE,'
      '  DDATAVALID = :DDATAVALID,'
      '  CSTATUS = :CSTATUS,'
      '  NIDCADFOR = :NIDCADFOR,'
      '  NIDTAGIGD = :NIDTAGIGD,'
      '  CNUMDOC = :CNUMDOC'
      'WHERE'
      '  NIDTAGDOC = :OLD_NIDTAGDOC')
    SQLLock.Strings = (
      'SELECT * FROM TagDoc'
      'WHERE'
      '  NIDTAGDOC = :NIDTAGDOC'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      'WHERE'
      '  NIDTAGDOC = :NIDTAGDOC')
    SQL.Strings = (
      
        'select TagDoc.*, TagIgd.cdispen, TagIgd.cobriga, TagIgd.cvalidad' +
        'e'
      'from TagDoc, TagIgd'
      'where TagDoc.nidcadfor = :nidcadfor'
      'and TagDoc.nidtagigd = TagIgd.nidtagigd'
      '')
    MasterSource = DTS_031
    CachedUpdates = True
    BeforeInsert = QRY_034BeforeInsert
    AfterScroll = QRY_034AfterScroll
    Left = 249
    Top = 71
    ParamData = <
      item
        DataType = ftFloat
        Name = 'NIDCADFOR'
      end>
    object QRY_034NIDTAGDOC: TFloatField
      FieldName = 'NIDTAGDOC'
      Required = True
    end
    object QRY_034CDISPENSA: TStringField
      Alignment = taCenter
      FieldName = 'CDISPENSA'
      OnGetText = QRY_034CENTREGUEGetText
      Size = 1
    end
    object QRY_034CENTREGUE: TStringField
      Alignment = taCenter
      FieldName = 'CENTREGUE'
      OnGetText = QRY_034CENTREGUEGetText
      Size = 1
    end
    object QRY_034DDATAVALID: TDateTimeField
      FieldName = 'DDATAVALID'
      OnValidate = QRY_034DDATAVALIDValidate
      DisplayFormat = 'dd/mm/yyyy'
      EditMask = '!99/99/9999;1;'
    end
    object QRY_034CSTATUS: TStringField
      Alignment = taCenter
      FieldName = 'CSTATUS'
      OnGetText = QRY_034CSTATUSGetText
      Size = 9
    end
    object QRY_034NIDCADFOR: TFloatField
      FieldName = 'NIDCADFOR'
      Required = True
    end
    object QRY_034NIDTAGIGD: TFloatField
      FieldName = 'NIDTAGIGD'
      Required = True
    end
    object QRY_034COBRIGA: TStringField
      FieldName = 'COBRIGA'
      Size = 1
    end
    object QRY_034CDISPEN: TStringField
      FieldName = 'CDISPEN'
      Size = 1
    end
    object QRY_034CVALIDADE: TStringField
      FieldName = 'CVALIDADE'
      Size = 1
    end
    object QRY_034CNUMDOC: TStringField
      FieldName = 'CNUMDOC'
      Size = 60
    end
    object QRY_034LKP_CDESCDOC: TStringField
      FieldKind = fkLookup
      FieldName = 'LKP_CDESCDOC'
      LookupDataSet = QRY_033
      LookupKeyFields = 'NIDTAGIGD'
      LookupResultField = 'CDESCREDUZ'
      KeyFields = 'NIDTAGIGD'
      Size = 60
      Lookup = True
    end
  end
  object DTS_031: TOraDataSource
    AutoEdit = False
    DataSet = QRY_031
    OnStateChange = DTS_031StateChange
    Left = 125
    Top = 8
  end
  object DTS_016: TOraDataSource
    AutoEdit = False
    DataSet = QRY_016
    OnStateChange = DTS_016StateChange
    Left = 125
    Top = 71
  end
  object DTS_013: TOraDataSource
    AutoEdit = False
    DataSet = QRY_013
    Left = 125
    Top = 133
  end
  object DTS_039: TOraDataSource
    AutoEdit = False
    DataSet = QRY_039
    Left = 125
    Top = 321
  end
  object DTS_038: TOraDataSource
    AutoEdit = False
    DataSet = QRY_038
    OnDataChange = DTS_038DataChange
    Left = 125
    Top = 383
  end
  object DTS_033: TOraDataSource
    AutoEdit = False
    DataSet = QRY_033
    Left = 327
    Top = 8
  end
  object DTS_034: TOraDataSource
    AutoEdit = False
    DataSet = QRY_034
    OnStateChange = DTS_034StateChange
    OnDataChange = DTS_034DataChange
    Left = 327
    Top = 70
  end
  object QRY_025: TOraQuery
    SQLInsert.Strings = (
      'INSERT INTO CadJur'
      '  (NIDCADGRL, NIDCADJUR, CFANTASIA, CINSMUNICI)'
      'VALUES'
      '  (:NIDCADGRL, :NIDCADJUR, :CFANTASIA, :CINSMUNICI)')
    SQLDelete.Strings = (
      'DELETE FROM CadJur'
      'WHERE'
      '  NIDCADGRL = :NIDCADGRL')
    SQLUpdate.Strings = (
      'UPDATE CadJur'
      'SET'
      '  NIDCADGRL = :NIDCADGRL,'
      '  NIDCADJUR = :NIDCADJUR,'
      '  CFANTASIA = :CFANTASIA,'
      '  CINSMUNICI = :CINSMUNICI'
      '  '
      'WHERE'
      '  NIDCADGRL = :OLD_NIDCADGRL')
    SQLLock.Strings = (
      'SELECT * FROM CadJur'
      'WHERE'
      '  NIDCADGRL = :NIDCADGRL'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      'WHERE'
      '  NIDCADGRL = :NIDCADGRL')
    SQL.Strings = (
      'select * from CadJur where nidcadgrl = :nidcadgrl')
    MasterSource = DTS_016
    Left = 53
    Top = 258
    ParamData = <
      item
        DataType = ftFloat
        Name = 'NIDCADGRL'
        ParamType = ptInput
        Value = 103
      end>
  end
  object DTS_019: TOraDataSource
    AutoEdit = False
    DataSet = QRY_019
    Left = 125
    Top = 196
  end
  object DTS_025: TOraDataSource
    AutoEdit = False
    DataSet = QRY_025
    Left = 125
    Top = 258
  end
  object QRY_035: TOraQuery
    SQLInsert.Strings = (
      'INSERT INTO TagRfn'
      
        '  (NIDTAGRFN, NIDCADFOR, CNOMEREFOR, CCONTREFOR, CFONEREFOR, NID' +
        'TBXLOC)'
      'VALUES'
      
        '  (:NIDTAGRFN, :NIDCADFOR, :CNOMEREFOR, :CCONTREFOR, :CFONEREFOR' +
        ', :NIDTBXLOC)')
    SQLDelete.Strings = (
      'DELETE FROM TagRfn'
      'WHERE'
      '  NIDTAGRFN = :NIDTAGRFN')
    SQLUpdate.Strings = (
      'UPDATE TagRfn'
      'SET'
      '  NIDTAGRFN = :NIDTAGRFN,'
      '  NIDCADFOR = :NIDCADFOR,'
      '  CNOMEREFOR = :CNOMEREFOR,'
      '  CCONTREFOR = :CCONTREFOR,'
      '  CFONEREFOR = :CFONEREFOR,'
      '  NIDTBXLOC = :NIDTBXLOC'
      'WHERE'
      '  NIDTAGRFN = :OLD_NIDTAGRFN')
    SQLLock.Strings = (
      'SELECT * FROM TagRfn'
      'WHERE'
      '  NIDTAGRFN = :NIDTAGRFN'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      'WHERE'
      '  NIDTAGRFN = :NIDTAGRFN')
    SQL.Strings = (
      'select * from TagRfn where nidcadfor = :nidcadfor')
    MasterSource = DTS_031
    CachedUpdates = True
    Left = 249
    Top = 133
    ParamData = <
      item
        DataType = ftFloat
        Name = 'NIDCADFOR'
        ParamType = ptInput
        Value = 198
      end>
    object QRY_035NIDTAGRFN: TFloatField
      FieldName = 'NIDTAGRFN'
      Required = True
    end
    object QRY_035NIDCADFOR: TFloatField
      FieldName = 'NIDCADFOR'
      Required = True
    end
    object QRY_035CNOMEREFOR: TStringField
      FieldName = 'CNOMEREFOR'
      Size = 50
    end
    object QRY_035CCONTREFOR: TStringField
      FieldName = 'CCONTREFOR'
      Size = 30
    end
    object QRY_035CFONEREFOR: TStringField
      FieldName = 'CFONEREFOR'
      Size = 10
    end
    object QRY_035NIDTBXLOC: TFloatField
      FieldName = 'NIDTBXLOC'
      Required = True
    end
  end
  object DTS_035: TOraDataSource
    AutoEdit = False
    DataSet = QRY_035
    OnStateChange = DTS_035StateChange
    Left = 327
    Top = 133
  end
  object QRY_037: TOraQuery
    SQLInsert.Strings = (
      'INSERT INTO TbxBco'
      '  (NIDTBXBCO, NCODBANCO, CDESCBANCO)'
      'VALUES'
      '  (:NIDTBXBCO, :NCODBANCO, :CDESCBANCO)')
    SQLDelete.Strings = (
      'DELETE FROM TbxBco'
      'WHERE'
      '  NIDTBXBCO = :NIDTBXBCO')
    SQLUpdate.Strings = (
      'UPDATE TbxBco'
      'SET'
      '  NIDTBXBCO = :NIDTBXBCO,'
      '  NCODBANCO = :NCODBANCO,'
      '  CDESCBANCO = :CDESCBANCO'
      'WHERE'
      '  NIDTBXBCO = :OLD_NIDTBXBCO')
    SQLLock.Strings = (
      'SELECT * FROM TbxBco'
      'WHERE'
      '  NIDTBXBCO = :NIDTBXBCO'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      'WHERE'
      '  NIDTBXBCO = :NIDTBXBCO')
    SQL.Strings = (
      'select * from TbxBco')
    Left = 53
    Top = 445
    object QRY_037NIDTBXBCO: TFloatField
      FieldName = 'NIDTBXBCO'
      Required = True
    end
    object QRY_037NCODBANCO: TFloatField
      FieldName = 'NCODBANCO'
      Required = True
    end
    object QRY_037CDESCBANCO: TStringField
      FieldName = 'CDESCBANCO'
      Required = True
    end
  end
  object DTS_037: TOraDataSource
    AutoEdit = False
    DataSet = QRY_037
    Left = 125
    Top = 446
  end
  object QRY_019: TOraQuery
    SQLInsert.Strings = (
      'INSERT INTO Cadfis'
      
        '  (NIDCADGRL, NIDCADFIS, NIDTBXECI, NIDTBXERG, NIDTBXLOC, NIDTBX' +
        'COR, NIDTBXNAC, NIDTBXGRI)'
      'VALUES'
      
        '  (:NIDCADGRL, :NIDCADFIS, :NIDTBXECI, :NIDTBXERG, :NIDTBXLOC, :' +
        'NIDTBXCOR, :NIDTBXNAC, :NIDTBXGRI)')
    SQLDelete.Strings = (
      'DELETE FROM Cadfis'
      'WHERE'
      '  NIDCADGRL = :NIDCADGRL')
    SQLUpdate.Strings = (
      'UPDATE Cadfis'
      'SET'
      '  NIDCADGRL = :NIDCADGRL,'
      '  NIDCADFIS = :NIDCADFIS,'
      '  NIDTBXECI = :NIDTBXECI,'
      '  NIDTBXERG = :NIDTBXERG,'
      '  NIDTBXLOC = :NIDTBXLOC,'
      '  NIDTBXCOR = :NIDTBXCOR,'
      '  NIDTBXNAC = :NIDTBXNAC,'
      '  NIDTBXGRI = :NIDTBXGRI'
      'WHERE'
      '  NIDCADGRL = :OLD_NIDCADGRL')
    SQLLock.Strings = (
      'SELECT * FROM Cadfis'
      'WHERE'
      '  NIDCADGRL = :NIDCADGRL'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      'WHERE'
      '  NIDCADGRL = :NIDCADGRL')
    SQL.Strings = (
      
        'select nidcadgrl, nidcadfis, nidtbxeci, nidtbxerg, nidtbxloc, ni' +
        'dtbxcor, nidtbxnac, nidtbxgri from Cadfis where nidcadgrl = :nid' +
        'cadgrl')
    MasterSource = DTS_016
    LockMode = lmLockImmediate
    Left = 53
    Top = 195
    ParamData = <
      item
        DataType = ftFloat
        Name = 'NIDCADGRL'
        ParamType = ptInput
        Value = 43
      end>
    object QRY_019NIDCADGRL: TFloatField
      FieldName = 'NIDCADGRL'
      Required = True
    end
    object QRY_019NIDCADFIS: TFloatField
      FieldName = 'NIDCADFIS'
      Required = True
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
  end
  object QRY_036: TOraQuery
    SQLInsert.Strings = (
      'INSERT INTO TagRcl'
      
        '  (NIDTAGRCL, NIDCADFOR, CNOMECLIRE, CCONTCLIRE, CFONECLIRE, NID' +
        'TBXLOC)'
      'VALUES'
      
        '  (:NIDTAGRCL, :NIDCADFOR, :CNOMECLIRE, :CCONTCLIRE, :CFONECLIRE' +
        ', :NIDTBXLOC)')
    SQLDelete.Strings = (
      'DELETE FROM TagRcl'
      'WHERE'
      '  NIDTAGRCL = :NIDTAGRCL')
    SQLUpdate.Strings = (
      'UPDATE TagRcl'
      'SET'
      '  NIDTAGRCL = :NIDTAGRCL,'
      '  NIDCADFOR = :NIDCADFOR,'
      '  CNOMECLIRE = :CNOMECLIRE,'
      '  CCONTCLIRE = :CCONTCLIRE,'
      '  CFONECLIRE = :CFONECLIRE,'
      '  NIDTBXLOC = :NIDTBXLOC'
      'WHERE'
      '  NIDTAGRCL = :OLD_NIDTAGRCL')
    SQLLock.Strings = (
      'SELECT * FROM TagRcl'
      'WHERE'
      '  NIDTAGRCL = :NIDTAGRCL'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      'WHERE'
      '  NIDTAGRCL = :NIDTAGRCL')
    SQL.Strings = (
      'select * from TagRcl where nidcadfor = :nidcadfor')
    MasterSource = DTS_031
    CachedUpdates = True
    Left = 249
    Top = 258
    ParamData = <
      item
        DataType = ftFloat
        Name = 'NIDCADFOR'
        ParamType = ptInput
        Value = 198
      end>
    object QRY_036NIDTAGRCL: TFloatField
      FieldName = 'NIDTAGRCL'
      Required = True
    end
    object QRY_036NIDCADFOR: TFloatField
      FieldName = 'NIDCADFOR'
      Required = True
    end
    object QRY_036CNOMECLIRE: TStringField
      FieldName = 'CNOMECLIRE'
      Size = 50
    end
    object QRY_036CCONTCLIRE: TStringField
      FieldName = 'CCONTCLIRE'
      Size = 30
    end
    object QRY_036CFONECLIRE: TStringField
      FieldName = 'CFONECLIRE'
      Size = 10
    end
    object QRY_036NIDTBXLOC: TFloatField
      FieldName = 'NIDTBXLOC'
      Required = True
    end
  end
  object DTS_036: TOraDataSource
    AutoEdit = False
    DataSet = QRY_036
    OnStateChange = DTS_036StateChange
    Left = 327
    Top = 258
  end
  object QRY_033_01: TOraQuery
    Session = DMControle.Conexao
    SQL.Strings = (
      
        'select * from tagigd where nidtagigd not in (select nidtagigd fr' +
        'om tagdoc where nidcadfor = :nidcadfor)')
    MasterSource = DTS_031
    Left = 249
    Top = 383
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'nidcadfor'
      end>
  end
  object QRY_012: TOraQuery
    Session = DMControle.Conexao
    SQL.Strings = (
      'select * from TbxLoc where nidtbxloc = :nidtbxloc')
    MasterSource = DTS_035
    CachedUpdates = True
    Left = 249
    Top = 196
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'nidtbxloc'
      end>
  end
  object DTS_012: TOraDataSource
    AutoEdit = False
    DataSet = QRY_012
    OnDataChange = DTS_012DataChange
    Left = 327
    Top = 195
  end
  object QRY_012_01: TOraQuery
    Session = DMControle.Conexao
    SQL.Strings = (
      'select * from TbxLoc where nidtbxloc = :nidtbxloc')
    MasterSource = DTS_036
    CachedUpdates = True
    Left = 249
    Top = 320
    ParamData = <
      item
        DataType = ftFloat
        Name = 'NIDTBXLOC'
        ParamType = ptInput
        Value = 6135
      end>
  end
  object DTS_012_01: TOraDataSource
    AutoEdit = False
    DataSet = QRY_012_01
    OnDataChange = DTS_012_01DataChange
    Left = 327
    Top = 320
  end
  object DTS_033_01: TOraDataSource
    DataSet = QRY_033_01
    Left = 328
    Top = 384
  end
end
