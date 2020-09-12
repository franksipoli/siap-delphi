object DTM_A013: TDTM_A013
  OldCreateOrder = False
  Left = 176
  Top = 107
  Height = 375
  Width = 544
  object QRY_013: TOraQuery
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
    AfterScroll = QRY_013AfterScroll
    Left = 31
    Top = 91
    ParamData = <
      item
        DataType = ftFloat
        Name = 'NIDCADLOG'
        ParamType = ptInput
        Value = 669841
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
  object DTS_013: TOraDataSource
    DataSet = QRY_013
    Left = 103
    Top = 91
  end
  object QRY_016: TOraQuery
    SQLInsert.Strings = (
      'INSERT INTO cadgrl'
      '  (CNUMERO, CCOMPLEMEN, NIDCADLOG)'
      'VALUES'
      '  (:CNUMERO, :CCOMPLEMEN, :NIDCADLOG)')
    SQLDelete.Strings = (
      'DELETE FROM cadgrl'
      'WHERE'
      '  NIDCADGRL = :NIDCADGRL')
    SQLUpdate.Strings = (
      'UPDATE cadgrl'
      'SET'
      '  CNUMERO = :CNUMERO,'
      '  CCOMPLEMEN = :CCOMPLEMEN,'
      '  NIDCADLOG = :NIDCADLOG'
      'WHERE'
      '  NIDCADGRL = :OLD_NIDCADGRL')
    SQLLock.Strings = (
      'SELECT * FROM cadgrl'
      'WHERE'
      '  NIDCADGRL = :NIDCADGRL'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      'WHERE'
      '  NIDCADGRL = :NIDCADGRL')
    SQL.Strings = (
      
        'select ccomplemen, cnumero, nidcadlog, nidcadgrl from cadgrl whe' +
        're nidcadgrl = :nidcadgrl')
    Left = 31
    Top = 27
    ParamData = <
      item
        DataType = ftInteger
        Name = 'nidcadgrl'
        Value = 323
      end>
  end
  object DTS_016: TOraDataSource
    DataSet = QRY_016
    Left = 103
    Top = 27
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
      'select * from TAGEEC where nidCadGrl = :nidCadGrl ')
    MasterSource = DTS_016
    CachedUpdates = True
    Left = 32
    Top = 152
    ParamData = <
      item
        DataType = ftFloat
        Name = 'NIDCADGRL'
        ParamType = ptInput
        Value = 323
      end>
    object QRY_018NIDTAGEEC: TFloatField
      FieldName = 'NIDTAGEEC'
      Required = True
    end
    object QRY_018CNUMEROEC: TStringField
      FieldName = 'CNUMEROEC'
      Required = True
      Size = 10
    end
    object QRY_018CCOMPLEEC: TStringField
      FieldName = 'CCOMPLEEC'
      Size = 15
    end
    object QRY_018NIDCADLOG: TFloatField
      FieldName = 'NIDCADLOG'
      Required = True
    end
    object QRY_018NIDCADGRL: TFloatField
      FieldName = 'NIDCADGRL'
    end
  end
  object DTS_018: TOraDataSource
    DataSet = QRY_018
    OnDataChange = DTS_018DataChange
    Left = 104
    Top = 152
  end
  object QRY_013_01: TOraQuery
    SQL.Strings = (
      
        'select CadLog.nidCadLog,CadLog.nCep,CadLog.cNomeLog, TbxBai.cNom' +
        'eBai,TbxLoc.cNomeLoc,TbxUFD.cSiglaUF,TbxPas.cNomePais, TbxLoc.cd' +
        'dd'
      'from CadLog,TbxBai,TbxLoc,TbxUFD,TbxPas'
      
        'where CadLog.nidTbxBai = TbxBai.nidTbxBai and TbxBai.nidTbxLoc =' +
        ' TbxLoc.nidTbxLoc and TbxLoc.nidTbxUfd = TbxUfd.nidTbxUfd and Tb' +
        'xUfd.nidTbxPas = TbxPas.nidTbxPas'
      'and CadLog.nidCadLog = :nidCadLog')
    MasterSource = DTS_018
    Left = 31
    Top = 223
    ParamData = <
      item
        DataType = ftFloat
        Name = 'NIDCADLOG'
        ParamType = ptInput
        Value = Null
      end>
    object FloatField1: TFloatField
      FieldName = 'NIDCADLOG'
      Required = True
    end
    object IntegerField1: TIntegerField
      FieldName = 'NCEP'
    end
    object StringField1: TStringField
      FieldName = 'CNOMELOG'
      Size = 80
    end
    object StringField2: TStringField
      FieldName = 'CNOMEBAI'
      Size = 72
    end
    object StringField3: TStringField
      FieldName = 'CNOMELOC'
      Size = 60
    end
    object StringField4: TStringField
      FieldName = 'CSIGLAUF'
      Size = 2
    end
    object StringField5: TStringField
      FieldName = 'CNOMEPAIS'
      Required = True
      Size = 60
    end
    object StringField6: TStringField
      FieldName = 'CDDD'
      Size = 3
    end
  end
  object DTS_013_01: TOraDataSource
    DataSet = QRY_013_01
    Left = 103
    Top = 223
  end
end
