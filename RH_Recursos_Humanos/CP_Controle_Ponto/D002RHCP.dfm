object DTM_A002RHCP: TDTM_A002RHCP
  OldCreateOrder = False
  Left = 180
  Top = 150
  Height = 313
  Width = 546
  object QRY_005: TOraQuery
    Session = DMControle.Conexao
    SQL.Strings = (
      
        'select Distinct extract(month from dDataPto) as DAT_Mes, extract' +
        '(year from dDataPto)as DAT_Ano from CadCpt'
      'where cServidor = '#39'S'#39
      '')
    LockMode = lmLockImmediate
    Active = True
    AfterOpen = QRY_005AfterOpen
    Left = 32
    Top = 16
  end
  object TabelaVirtual: TVirtualTable
    Options = [voPersistentData, voStored]
    Active = True
    FieldDefs = <
      item
        Name = 'nMatricula'
        DataType = ftInteger
      end
      item
        Name = 'dDataPto'
        DataType = ftDateTime
      end
      item
        Name = 'cHoraEntManha'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'cHoraSaiManha'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'cHoraEntraTarde'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'cHoraSaiTarde'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'cNomeSrv'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'cDescCargo'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'nCRTPS/nSERIE'
        DataType = ftString
        Size = 40
      end
      item
        Name = 'nIdCadHor'
        DataType = ftString
        Size = 20
      end>
    Left = 112
    Top = 16
    Data = {
      01000A000A006E4D6174726963756C61030000000800644461746150746F0B00
      00000D0063486F7261456E744D616E6861010014000D0063486F72615361694D
      616E6861010014000F0063486F7261456E7472615461726465010014000D0063
      486F72615361695461726465010014000800634E6F6D65537276010032000A00
      6344657363436172676F010032000D006E43525450532F6E5345524945010028
      0009006E4964436164486F7201001400000000000000}
  end
  object Pop_CartaoPonto: TppDBPipeline
    DataSource = Dts_TabVirtual
    AutoCreateFields = False
    UserName = 'Pop_CartaoPonto'
    Left = 32
    Top = 152
    object Pop_CartaoPontoppField1: TppField
      Alignment = taRightJustify
      FieldAlias = 'nMatricula'
      FieldName = 'nMatricula'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 0
    end
    object Pop_CartaoPontoppField2: TppField
      FieldAlias = 'dDataPto'
      FieldName = 'dDataPto'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 1
    end
    object Pop_CartaoPontoppField3: TppField
      FieldAlias = 'cHoraEntManha'
      FieldName = 'cHoraEntManha'
      FieldLength = 20
      DisplayWidth = 20
      Position = 2
    end
    object Pop_CartaoPontoppField4: TppField
      FieldAlias = 'cHoraSaiManha'
      FieldName = 'cHoraSaiManha'
      FieldLength = 20
      DisplayWidth = 20
      Position = 3
    end
    object Pop_CartaoPontoppField5: TppField
      FieldAlias = 'cHoraEntraTarde'
      FieldName = 'cHoraEntraTarde'
      FieldLength = 20
      DisplayWidth = 20
      Position = 4
    end
    object Pop_CartaoPontoppField6: TppField
      FieldAlias = 'cHoraSaiTarde'
      FieldName = 'cHoraSaiTarde'
      FieldLength = 20
      DisplayWidth = 20
      Position = 5
    end
    object Pop_CartaoPontoppField7: TppField
      FieldAlias = 'cNomeSrv'
      FieldName = 'cNomeSrv'
      FieldLength = 50
      DisplayWidth = 50
      Position = 6
    end
    object Pop_CartaoPontoppField8: TppField
      FieldAlias = 'cDescCargo'
      FieldName = 'cDescCargo'
      FieldLength = 50
      DisplayWidth = 50
      Position = 7
    end
    object Pop_CartaoPontoppField9: TppField
      FieldAlias = 'nCRTPS/nSERIE'
      FieldName = 'nCRTPS/nSERIE'
      FieldLength = 40
      DisplayWidth = 40
      Position = 8
    end
    object Pop_CartaoPontoppField10: TppField
      FieldAlias = 'nIdCadHor'
      FieldName = 'nIdCadHor'
      FieldLength = 20
      DisplayWidth = 20
      Position = 9
    end
  end
  object Dts_TabVirtual: TOraDataSource
    DataSet = TabelaVirtual
    Left = 192
    Top = 16
  end
  object Pop_Qry_P: TppDBPipeline
    DataSource = DMControle.Dts_P
    AutoCreateFields = False
    UserName = 'Pop_Qry_P'
    Left = 112
    Top = 152
    object Pop_Qry_PppField1: TppField
      FieldAlias = 'CPATHIMG'
      FieldName = 'CPATHIMG'
      FieldLength = 50
      DisplayWidth = 50
      Position = 0
    end
    object Pop_Qry_PppField2: TppField
      Alignment = taRightJustify
      FieldAlias = 'NSENHAVZ'
      FieldName = 'NSENHAVZ'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 1
    end
    object Pop_Qry_PppField3: TppField
      FieldAlias = 'CPATHBASE'
      FieldName = 'CPATHBASE'
      FieldLength = 50
      DisplayWidth = 50
      Position = 2
    end
    object Pop_Qry_PppField4: TppField
      FieldAlias = 'CPATHIND'
      FieldName = 'CPATHIND'
      FieldLength = 50
      DisplayWidth = 50
      Position = 3
    end
    object Pop_Qry_PppField5: TppField
      FieldAlias = 'CNOMERAZ'
      FieldName = 'CNOMERAZ'
      FieldLength = 40
      DisplayWidth = 40
      Position = 4
    end
    object Pop_Qry_PppField6: TppField
      FieldAlias = 'CPATHLOGO'
      FieldName = 'CPATHLOGO'
      FieldLength = 50
      DisplayWidth = 50
      Position = 5
    end
    object Pop_Qry_PppField7: TppField
      FieldAlias = 'CSENHAORA'
      FieldName = 'CSENHAORA'
      FieldLength = 30
      DisplayWidth = 30
      Position = 6
    end
    object Pop_Qry_PppField8: TppField
      FieldAlias = 'CUSERORA'
      FieldName = 'CUSERORA'
      FieldLength = 30
      DisplayWidth = 30
      Position = 7
    end
    object Pop_Qry_PppField9: TppField
      FieldAlias = 'CSERVORA'
      FieldName = 'CSERVORA'
      FieldLength = 30
      DisplayWidth = 30
      Position = 8
    end
    object Pop_Qry_PppField10: TppField
      FieldAlias = 'CTITLOGIN'
      FieldName = 'CTITLOGIN'
      FieldLength = 50
      DisplayWidth = 50
      Position = 9
    end
    object Pop_Qry_PppField11: TppField
      FieldAlias = 'CCARACINVA'
      FieldName = 'CCARACINVA'
      FieldLength = 50
      DisplayWidth = 50
      Position = 10
    end
    object Pop_Qry_PppField12: TppField
      FieldAlias = 'CPONTOREM'
      FieldName = 'CPONTOREM'
      FieldLength = 50
      DisplayWidth = 50
      Position = 11
    end
    object Pop_Qry_PppField13: TppField
      FieldAlias = 'CENDPREF'
      FieldName = 'CENDPREF'
      FieldLength = 50
      DisplayWidth = 50
      Position = 12
    end
    object Pop_Qry_PppField14: TppField
      FieldAlias = 'CBAIRROPREF'
      FieldName = 'CBAIRROPREF'
      FieldLength = 40
      DisplayWidth = 40
      Position = 13
    end
    object Pop_Qry_PppField15: TppField
      Alignment = taRightJustify
      FieldAlias = 'NCEP'
      FieldName = 'NCEP'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 14
    end
    object Pop_Qry_PppField16: TppField
      FieldAlias = 'CCOMPLEPREF'
      FieldName = 'CCOMPLEPREF'
      FieldLength = 30
      DisplayWidth = 30
      Position = 15
    end
    object Pop_Qry_PppField17: TppField
      FieldAlias = 'CCNPJ'
      FieldName = 'CCNPJ'
      FieldLength = 14
      DisplayWidth = 14
      Position = 16
    end
    object Pop_Qry_PppField18: TppField
      FieldAlias = 'CFONEPREF'
      FieldName = 'CFONEPREF'
      FieldLength = 20
      DisplayWidth = 20
      Position = 17
    end
    object Pop_Qry_PppField19: TppField
      FieldAlias = 'CCONTATOPREF'
      FieldName = 'CCONTATOPREF'
      FieldLength = 40
      DisplayWidth = 40
      Position = 18
    end
  end
  object QRY_010: TOraQuery
    Session = DMControle.Conexao
    SQL.Strings = (
      'select * from CadHor where nidCadHor = : nidCadHor')
    MasterSource = Dts_TabVirtual
    LockMode = lmLockImmediate
    Active = True
    OnCalcFields = QRY_010CalcFields
    Left = 32
    Top = 84
    ParamData = <
      item
        DataType = ftString
        Name = 'nIdCadHor'
        ParamType = ptInput
        Value = ''
      end>
    object QRY_010NIDCADHOR: TFloatField
      FieldName = 'NIDCADHOR'
      Required = True
    end
    object QRY_010CENTRMANHA: TStringField
      FieldName = 'CENTRMANHA'
      FixedChar = True
      Size = 5
    end
    object QRY_010CSAIRMANHA: TStringField
      FieldName = 'CSAIRMANHA'
      FixedChar = True
      Size = 5
    end
    object QRY_010CINTERVALO: TStringField
      FieldName = 'CINTERVALO'
      FixedChar = True
      Size = 3
    end
    object QRY_010CENTRTARDE: TStringField
      FieldName = 'CENTRTARDE'
      FixedChar = True
      Size = 5
    end
    object QRY_010CSAIRTARDE: TStringField
      FieldName = 'CSAIRTARDE'
      FixedChar = True
      Size = 5
    end
    object QRY_010LKP_INTERVALO: TStringField
      Alignment = taCenter
      FieldKind = fkCalculated
      FieldName = 'LKP_INTERVALO'
      Size = 30
      Calculated = True
    end
  end
  object Pop_010: TppDBPipeline
    DataSource = DTS_010
    AutoCreateFields = False
    UserName = 'Pop_010'
    Left = 192
    Top = 84
    object Pop_010ppField1: TppField
      Alignment = taRightJustify
      FieldAlias = 'NIDCADHOR'
      FieldName = 'NIDCADHOR'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 0
      Position = 0
    end
    object Pop_010ppField2: TppField
      FieldAlias = 'CENTRMANHA'
      FieldName = 'CENTRMANHA'
      FieldLength = 5
      DisplayWidth = 5
      Position = 1
    end
    object Pop_010ppField3: TppField
      FieldAlias = 'CSAIRMANHA'
      FieldName = 'CSAIRMANHA'
      FieldLength = 5
      DisplayWidth = 5
      Position = 2
    end
    object Pop_010ppField4: TppField
      FieldAlias = 'CINTERVALO'
      FieldName = 'CINTERVALO'
      FieldLength = 3
      DisplayWidth = 3
      Position = 3
    end
    object Pop_010ppField5: TppField
      FieldAlias = 'CENTRTARDE'
      FieldName = 'CENTRTARDE'
      FieldLength = 5
      DisplayWidth = 5
      Position = 4
    end
    object Pop_010ppField6: TppField
      FieldAlias = 'CSAIRTARDE'
      FieldName = 'CSAIRTARDE'
      FieldLength = 5
      DisplayWidth = 5
      Position = 5
    end
    object Pop_010ppField7: TppField
      FieldAlias = 'LKP_INTERVALO'
      FieldName = 'LKP_INTERVALO'
      FieldLength = 30
      DisplayWidth = 30
      Position = 6
    end
  end
  object DTS_010: TDataSource
    AutoEdit = False
    DataSet = QRY_010
    Left = 112
    Top = 84
  end
  object QRY_RelCartPonto: TOraQuery
    Session = DMControle.Conexao
    SQL.Strings = (
      'select * from cadcpt where nidcadcpt is null')
    Left = 192
    Top = 152
  end
  object Dts_RelCartPonto: TOraDataSource
    DataSet = QRY_RelCartPonto
    Left = 292
    Top = 152
  end
  object DTS_005: TOraDataSource
    DataSet = QRY_005
    Left = 280
    Top = 16
  end
end
