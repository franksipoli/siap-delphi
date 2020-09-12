object DTM_A006: TDTM_A006
  OldCreateOrder = False
  Left = 122
  Top = 81
  Height = 364
  Width = 554
  object QRY_016: TOraQuery
    SQLInsert.Strings = (
      'INSERT INTO CADGRL'
      
        '  (NIDCADGRL, CNOMEGRL, CCPFCNPJ, CRGIE, CNUMERO, CCOMPLEMEN, CC' +
        'ONTATO, CTELRES, CTELCOM, CTELCELULA, CEMAIL, CPESSOAFJ, NIDCADL' +
        'OG, CTELFAX, NIDTBXCNA, CATIVIDADE)'
      'VALUES'
      
        '  (:NIDCADGRL, :CNOMEGRL, :CCPFCNPJ, :CRGIE, :CNUMERO, :CCOMPLEM' +
        'EN, :CCONTATO, :CTELRES, :CTELCOM, :CTELCELULA, :CEMAIL, :CPESSO' +
        'AFJ, :NIDCADLOG, :CTELFAX, :NIDTBXCNA, :CATIVIDADE)')
    SQLDelete.Strings = (
      'DELETE FROM CADGRL'
      'WHERE'
      '  NIDCADGRL = :NIDCADGRL')
    SQLUpdate.Strings = (
      'UPDATE CADGRL'
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
      'SELECT * FROM CADGRL'
      'WHERE'
      '  NIDCADGRL = :NIDCADGRL'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      'WHERE'
      '  NIDCADGRL = :NIDCADGRL')
    SQL.Strings = (
      'select * from CADGRL')
    FetchRows = 1
    LockMode = lmLockImmediate
    RefreshOptions = [roAfterInsert, roAfterUpdate, roBeforeEdit]
    AfterScroll = QRY_016AfterScroll
    Left = 24
    Top = 28
    object QRY_016NIDCADGRL: TFloatField
      DisplayWidth = 13
      FieldName = 'NIDCADGRL'
      Required = True
    end
    object QRY_016CNOMEGRL: TStringField
      DisplayWidth = 60
      FieldName = 'CNOMEGRL'
      Required = True
      Size = 50
    end
    object QRY_016CCPFCNPJ: TStringField
      DisplayWidth = 25
      FieldName = 'CCPFCNPJ'
      Size = 14
    end
    object QRY_016CRGIE: TStringField
      DisplayWidth = 24
      FieldName = 'CRGIE'
    end
    object QRY_016CNUMERO: TStringField
      DisplayWidth = 18
      FieldName = 'CNUMERO'
      Size = 15
    end
    object QRY_016CCOMPLEMEN: TStringField
      DisplayWidth = 30
      FieldName = 'CCOMPLEMEN'
      Size = 25
    end
    object QRY_016CCONTATO: TStringField
      DisplayWidth = 18
      FieldName = 'CCONTATO'
      Size = 15
    end
    object QRY_016CTELRES: TStringField
      DisplayWidth = 12
      FieldName = 'CTELRES'
      Size = 10
    end
    object QRY_016CTELCOM: TStringField
      DisplayWidth = 12
      FieldName = 'CTELCOM'
      Size = 10
    end
    object QRY_016CTELCELULA: TStringField
      DisplayWidth = 14
      FieldName = 'CTELCELULA'
      Size = 10
    end
    object QRY_016CEMAIL: TStringField
      DisplayWidth = 36
      FieldName = 'CEMAIL'
      Size = 30
    end
    object QRY_016CPESSOAFJ: TFloatField
      Alignment = taCenter
      DisplayWidth = 12
      FieldName = 'CPESSOAFJ'
      Required = True
      OnGetText = QRY_016CPESSOAFJGetText
    end
    object QRY_016NIDCADLOG: TFloatField
      DisplayWidth = 13
      FieldName = 'NIDCADLOG'
      Required = True
    end
    object QRY_016CTELFAX: TStringField
      FieldName = 'CTELFAX'
      Size = 10
    end
    object QRY_016NIDTBXCNA: TFloatField
      FieldName = 'NIDTBXCNA'
    end
    object QRY_016CATIVIDADE: TStringField
      FieldName = 'CATIVIDADE'
      Size = 1900
    end
  end
  object QRY_013: TOraQuery
    SQLInsert.Strings = (
      'INSERT INTO TbxBai'
      '  (NIDTBXBAI, CNOMEBAI, NIDBAICORR, NIDTBXLOC)'
      'VALUES'
      '  (:NIDTBXBAI, :CNOMEBAI, :NIDBAICORR, :NIDTBXLOC)')
    SQLDelete.Strings = (
      'DELETE FROM TbxBai'
      'WHERE'
      '  NIDTBXBAI = :NIDTBXBAI')
    SQLUpdate.Strings = (
      'UPDATE TbxBai'
      'SET'
      '  NIDTBXBAI = :NIDTBXBAI,'
      '  CNOMEBAI = :CNOMEBAI,'
      '  NIDBAICORR = :NIDBAICORR,'
      '  NIDTBXLOC = :NIDTBXLOC'
      'WHERE'
      '  NIDTBXBAI = :OLD_NIDTBXBAI')
    SQLLock.Strings = (
      'SELECT * FROM TbxBai'
      'WHERE'
      '  NIDTBXBAI = :NIDTBXBAI'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      'WHERE'
      '  NIDTBXBAI = :NIDTBXBAI')
    SQL.Strings = (
      
        'select CadLog.nidCadLog,CadLog.nCep,CadLog.cNomeLog, TbxBai.cNom' +
        'eBai,TbxLoc.cNomeLoc,TbxUFD.cSiglaUF,TbxPas.cNomePais, TbxLoc.cd' +
        'dd'
      'from CadLog,TbxBai,TbxLoc,TbxUFD,TbxPas'
      
        'where CadLog.nidTbxBai = TbxBai.nidTbxBai and TbxBai.nidTbxLoc =' +
        ' TbxLoc.nidTbxLoc and TbxLoc.nidTbxUfd = TbxUfd.nidTbxUfd and Tb' +
        'xUfd.nidTbxPas = TbxPas.nidTbxPas'
      'and CadLog.nidCadLog = :nidCadLog')
    MasterSource = DTS_016
    LockMode = lmLockImmediate
    RefreshOptions = [roAfterInsert, roAfterUpdate, roBeforeEdit]
    Left = 24
    Top = 92
    ParamData = <
      item
        DataType = ftFloat
        Name = 'NIDCADLOG'
        ParamType = ptInput
        Value = 669831
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
      Size = 3
    end
  end
  object DTS_016: TOraDataSource
    AutoEdit = False
    DataSet = QRY_016
    OnStateChange = DTS_016StateChange
    Left = 96
    Top = 28
  end
  object DTS_013: TOraDataSource
    AutoEdit = False
    DataSet = QRY_013
    OnDataChange = DTS_013DataChange
    Left = 96
    Top = 92
  end
  object QRY_018: TOraQuery
    SQLInsert.Strings = (
      'INSERT INTO TAGEEC'
      '  (NIDTAGEEC, CNUMEROEC, CCOMPLEEC, NIDCADLOG, NIDCADGRL)'
      'VALUES'
      '  (:NIDTAGEEC, :CNUMEROEC, :CCOMPLEEC, :NIDCADLOG, :NIDCADGRL)')
    SQLDelete.Strings = (
      'DELETE FROM TAGEEC'
      'WHERE'
      '  NIDTAGEEC = :NIDTAGEEC')
    SQLUpdate.Strings = (
      'UPDATE TAGEEC'
      'SET'
      '  NIDTAGEEC = :NIDTAGEEC,'
      '  CNUMEROEC = :CNUMEROEC,'
      '  CCOMPLEEC = :CCOMPLEEC,'
      '  NIDCADLOG = :NIDCADLOG,'
      '  NIDCADGRL = :NIDCADGRL'
      'WHERE'
      '  NIDTAGEEC = :OLD_NIDTAGEEC')
    SQLLock.Strings = (
      'SELECT * FROM TAGEEC'
      'WHERE'
      '  NIDTAGEEC = :NIDTAGEEC'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      'WHERE'
      '  NIDTAGEEC = :NIDTAGEEC')
    SQL.Strings = (
      'select * from TAGEEC where nidCadGrl = :nidCadGrl  ')
    MasterSource = DTS_016
    CachedUpdates = True
    LockMode = lmLockImmediate
    RefreshOptions = [roAfterInsert, roAfterUpdate, roBeforeEdit]
    Left = 24
    Top = 160
    ParamData = <
      item
        DataType = ftFloat
        Name = 'NIDCADGRL'
        ParamType = ptInput
        Value = 43
      end>
  end
  object DTS_018: TOraDataSource
    AutoEdit = False
    DataSet = QRY_018
    Left = 96
    Top = 160
  end
  object QRY_013_01: TOraQuery
    SQL.Strings = (
      
        'select CadLog.nidCadLog,CadLog.nCep,CadLog.cNomeLog, TbxBai.cNom' +
        'eBai,TbxLoc.cNomeLoc,TbxLoc.cDDD,TbxUFD.cSiglaUF,TbxPas.cNomePai' +
        's'
      'from CadLog,TbxBai,TbxLoc,TbxUFD,TbxPas'
      
        'where CadLog.nidTbxBai = TbxBai.nidTbxBai and TbxBai.nidTbxLoc =' +
        ' TbxLoc.nidTbxLoc and TbxLoc.nidTbxUfd = TbxUfd.nidTbxUfd and Tb' +
        'xUfd.nidTbxPas = TbxPas.nidTbxPas'
      'and CadLog.nidCadLog = :nidCadLog')
    MasterSource = DTS_018
    LockMode = lmLockImmediate
    RefreshOptions = [roAfterInsert, roAfterUpdate, roBeforeEdit]
    Left = 24
    Top = 220
    ParamData = <
      item
        DataType = ftFloat
        Name = 'NIDCADLOG'
        ParamType = ptInput
        Value = 337053
      end>
    object QRY_013_01NIDCADLOG: TFloatField
      FieldName = 'NIDCADLOG'
      Required = True
    end
    object QRY_013_01NCEP: TIntegerField
      FieldName = 'NCEP'
    end
    object QRY_013_01CNOMELOG: TStringField
      FieldName = 'CNOMELOG'
      Size = 80
    end
    object QRY_013_01CNOMEBAI: TStringField
      FieldName = 'CNOMEBAI'
      Size = 72
    end
    object QRY_013_01CNOMELOC: TStringField
      FieldName = 'CNOMELOC'
      Size = 60
    end
    object QRY_013_01CDDD: TStringField
      FieldName = 'CDDD'
      Size = 2
    end
    object QRY_013_01CSIGLAUF: TStringField
      FieldName = 'CSIGLAUF'
      Size = 2
    end
    object QRY_013_01CNOMEPAIS: TStringField
      FieldName = 'CNOMEPAIS'
      Required = True
      Size = 60
    end
  end
  object DTS_013_01: TOraDataSource
    AutoEdit = False
    DataSet = QRY_013_01
    OnDataChange = DTS_013_01DataChange
    Left = 96
    Top = 220
  end
  object QRY_019: TOraQuery
    SQLInsert.Strings = (
      'INSERT INTO CadFis'
      
        '  (NIDCADGRL, NIDCADFIS, CNOMEMAE, DDTEMIRG, CUFEMIRG, CSEXO, DD' +
        'TNASC, NIDTBXECI, NIDTBXERG, NIDTBXLOC, NIDTBXCOR, NIDTBXNAC, NI' +
        'DTBXGRI)'
      'VALUES'
      
        '  (:NIDCADGRL, :NIDCADFIS, :CNOMEMAE, :DDTEMIRG, :CUFEMIRG, :CSE' +
        'XO, :DDTNASC, :NIDTBXECI, :NIDTBXERG, :NIDTBXLOC, :NIDTBXCOR, :N' +
        'IDTBXNAC, :NIDTBXGRI)')
    SQLDelete.Strings = (
      'DELETE FROM CadFis'
      'WHERE'
      '  NIDCADFIS = :NIDCADFIS')
    SQLUpdate.Strings = (
      'UPDATE CadFis'
      'SET'
      '  NIDCADGRL = :NIDCADGRL,'
      '  NIDCADFIS = :NIDCADFIS,'
      '  CNOMEMAE = :CNOMEMAE,'
      '  DDTEMIRG = :DDTEMIRG,'
      '  CUFEMIRG = :CUFEMIRG,'
      '  CSEXO = :CSEXO,'
      '  DDTNASC = :DDTNASC,'
      '  NIDTBXECI = :NIDTBXECI,'
      '  NIDTBXERG = :NIDTBXERG,'
      '  NIDTBXLOC = :NIDTBXLOC,'
      '  NIDTBXCOR = :NIDTBXCOR,'
      '  NIDTBXNAC = :NIDTBXNAC,'
      '  NIDTBXGRI = :NIDTBXGRI'
      'WHERE'
      '  NIDCADFIS = :OLD_NIDCADFIS')
    SQLLock.Strings = (
      'SELECT * FROM CadFis'
      'WHERE'
      '  NIDCADFIS = :NIDCADFIS'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      'WHERE'
      '  NIDCADFIS = :NIDCADFIS')
    SQL.Strings = (
      
        'select nidcadfis,nidcadgrl,cnomemae, ddtemirg, cufemirg,csexo,dd' +
        'tnasc,nidtbxeci,nidtbxerg,nidtbxloc,nidtbxcor,nidtbxnac,nidtbxgr' +
        'i from CadFis'
      'where nidCadGrl = :nidCadGrl ')
    MasterSource = DTS_016
    LockMode = lmLockImmediate
    Left = 212
    Top = 32
    ParamData = <
      item
        DataType = ftFloat
        Name = 'NIDCADGRL'
        ParamType = ptInput
        Value = 43
      end>
    object QRY_019NIDCADFIS: TFloatField
      FieldName = 'NIDCADFIS'
      Required = True
    end
    object QRY_019NIDCADGRL: TFloatField
      FieldName = 'NIDCADGRL'
      Required = True
    end
    object QRY_019CNOMEMAE: TStringField
      FieldName = 'CNOMEMAE'
      Size = 50
    end
    object QRY_019DDTEMIRG: TDateTimeField
      FieldName = 'DDTEMIRG'
    end
    object QRY_019CUFEMIRG: TStringField
      FieldName = 'CUFEMIRG'
      Size = 2
    end
    object QRY_019CSEXO: TStringField
      FieldName = 'CSEXO'
      FixedChar = True
      Size = 1
    end
    object QRY_019DDTNASC: TDateTimeField
      FieldName = 'DDTNASC'
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
  object QRY_024: TOraQuery
    SQL.Strings = (
      'select * from TbxERg')
    Left = 212
    Top = 100
  end
  object DTS_019: TOraDataSource
    AutoEdit = False
    DataSet = QRY_019
    Left = 280
    Top = 32
  end
  object DTS_024: TOraDataSource
    AutoEdit = False
    DataSet = QRY_024
    Left = 280
    Top = 100
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
      '  NIDCADJUR = :NIDCADJUR')
    SQLUpdate.Strings = (
      'UPDATE CadJur'
      'SET'
      '  NIDCADGRL = :NIDCADGRL,'
      '  NIDCADJUR = :NIDCADJUR,'
      '  CFANTASIA = :CFANTASIA,'
      '  CINSMUNICI = :CINSMUNICI'
      'WHERE'
      '  NIDCADJUR = :OLD_NIDCADJUR')
    SQLLock.Strings = (
      'SELECT * FROM CadJur'
      'WHERE'
      '  NIDCADJUR = :NIDCADJUR'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      'WHERE'
      '  NIDCADJUR = :NIDCADJUR')
    SQL.Strings = (
      'select * from CadJur where nidcadgrl = :nidcadgrl')
    MasterSource = DTS_016
    Left = 212
    Top = 168
    ParamData = <
      item
        DataType = ftFloat
        Name = 'NIDCADGRL'
        ParamType = ptInput
        Value = 43
      end>
  end
  object DTS_025: TOraDataSource
    AutoEdit = False
    DataSet = QRY_025
    Left = 280
    Top = 168
  end
end
