object DTM_A001ADPT: TDTM_A001ADPT
  OldCreateOrder = False
  Left = 147
  Top = 118
  Height = 479
  Width = 741
  object QRY_016: TOraQuery
    SQL.Strings = (
      'select'
      '  *'
      'from'
      '  cadgrl'
      '')
    AfterScroll = QRY_016AfterScroll
    Left = 16
    Top = 12
    object QRY_016NIDCADGRL: TFloatField
      FieldName = 'NIDCADGRL'
      Required = True
    end
    object QRY_016CNOMEGRL: TStringField
      FieldName = 'CNOMEGRL'
      Required = True
      Size = 70
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
    object QRY_016CTELRES: TStringField
      FieldName = 'CTELRES'
      EditMask = '!####-####;0; '
      Size = 10
    end
    object QRY_016CTELCOM: TStringField
      FieldName = 'CTELCOM'
      EditMask = '!####-####;0; '
      Size = 10
    end
    object QRY_016CTELCELULA: TStringField
      FieldName = 'CTELCELULA'
      EditMask = '!####-####;0; '
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
  object QRY_151: TOraQuery
    SQL.Strings = (
      'select'
      '  cadreq.nidcadreq,'
      '  cadreq.cdescrireq,'
      '  locais.lugar as Dat_Lugar,'
      '  cadreq.nnroprot,'
      '  tbxtrq.cdescritrq'
      'from'
      '  cadreq,'
      '  locais,'
      '  tagreq,'
      '  tbxtrq'
      'where'
      '  tagreq.nidcadgrl = :nidcadgrl and'
      '  cadreq.nidcadreq = tagreq.nidcadreq and'
      '  tbxtrq.nidtbxtrq = cadreq.nidtbxtrq and'
      '  locais.id = cadreq.ciddestino'
      '  ')
    MasterSource = DTS_016
    AfterScroll = QRY_151AfterScroll
    AfterRefresh = QRY_151AfterRefresh
    Left = 20
    Top = 152
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'nidcadgrl'
      end>
    object QRY_151NIDCADREQ: TFloatField
      FieldName = 'NIDCADREQ'
      Required = True
    end
    object QRY_151CDESCRIREQ: TStringField
      FieldName = 'CDESCRIREQ'
      Required = True
      Size = 2000
    end
    object QRY_151DAT_LUGAR: TStringField
      FieldName = 'DAT_LUGAR'
      Size = 50
    end
    object QRY_151NNROPROT: TFloatField
      FieldName = 'NNROPROT'
      Required = True
    end
    object QRY_151CDESCRITRQ: TStringField
      FieldName = 'CDESCRITRQ'
      Required = True
      Size = 40
    end
  end
  object DTS_151: TOraDataSource
    AutoEdit = False
    DataSet = QRY_151
    Left = 92
    Top = 152
  end
  object DTS_016: TOraDataSource
    AutoEdit = False
    DataSet = QRY_016
    Left = 88
    Top = 12
  end
  object DTS_013: TOraDataSource
    AutoEdit = False
    DataSet = QRY_013
    Left = 88
    Top = 76
  end
  object QRY_013: TOraQuery
    SQL.Strings = (
      'select '
      '  CadLog.nidCadLog,'
      '  CadLog.nCep,'
      '  CadLog.cNomeLog, '
      '  TbxBai.cNomeBai,'
      '  TbxLoc.cNomeLoc, '
      '  TbxLoc.cDDD, '
      '  TbxUFD.cSiglaUF,'
      '  TbxPas.cNomePais'
      'from '
      '  CadLog,'
      '  TbxBai, '
      '  TbxLoc,'
      '  TbxUFD,'
      '  TbxPas'
      'where '
      '  CadLog.nidTbxBai = TbxBai.nidTbxBai and '
      '  TbxBai.nidTbxLoc = TbxLoc.nidTbxLoc and '
      '  TbxLoc.nidTbxUfd = TbxUfd.nidTbxUfd and '
      '  TbxUfd.nidTbxPas = TbxPas.nidTbxPas and'
      '  CadLog.nidCadLog = :nidCadLog')
    MasterSource = DTS_016
    Left = 17
    Top = 81
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
end
