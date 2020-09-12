object DTM_A002AD: TDTM_A002AD
  OldCreateOrder = False
  Left = 203
  Top = 152
  Height = 268
  Width = 400
  object QRY_031: TOraQuery
    Session = DMControle.Conexao
    SQL.Strings = (
      
        'select cadfor.nidcadfor, cadfor.ddtvalidad, cadgrl.ccpfcnpj, cad' +
        'grl.cpessoafj, cadgrl.cnomegrl, tbxtpl.cnometpl ||'#39'  '#39'||'
      
        'cadlog.cnomelog ||'#39' nº'#39'||cadgrl.cnumero ||'#39' '#39'|| cadgrl.ccompleme' +
        'n ||'#39' '#39'|| tbxbai.cnomebai ||'#39' '#39'|| tbxloc.cnomeloc ||'#39'-'#39'|| tbxloc' +
        '.ufLoc ||'#39' Cep:'#39'||cadlog.ncep as LKP_Endereco,'
      
        'cadfor.ccontatfor, tbxloc.cddd ||'#39' '#39'|| cadfor.ctelcomfor as ctel' +
        'comfor'
      'from cadfor, cadgrl, cadlog, tbxtpl, tbxloc, tbxbai'
      
        'where cadgrl.nidcadgrl = cadfor.nidcadgrl and cadlog.nidcadlog =' +
        ' cadgrl.nidcadlog and'
      
        'tbxloc.nidtbxloc = cadlog.nidtbxloc and tbxtpl.nidtbxtpl = cadlo' +
        'g.nidtbxtpl and'
      'tbxbai.nidtbxbai = cadlog.nidtbxbai')
    Left = 30
    Top = 12
  end
  object QRY_034: TOraQuery
    SQL.Strings = (
      
        'select tagdoc.nidcadfor, cadgdc.cgrupodoc, tagigd.cdescdoc, tagd' +
        'oc.cdispensa,'
      
        'tagdoc.ddatavalid, tagdoc.cstatus, tagdoc.centregue, tagdoc.cnum' +
        'doc'
      'from tagdoc, tagigd, cadgdc'
      
        'where tagdoc.nidcadfor = :nidcadfor and tagdoc.nidtagigd = tagig' +
        'd.nidtagigd'
      'and tagigd.nidcadgdc = cadgdc.nidcadgdc')
    MasterSource = DTS_031
    Left = 30
    Top = 64
    ParamData = <
      item
        DataType = ftFloat
        Name = 'NIDCADFOR'
        ParamType = ptInput
        Value = 2
      end>
  end
  object Fornecedor: TppDBPipeline
    DataSource = DTS_031
    AutoCreateFields = False
    UserName = 'Fornecedor'
    Left = 130
    Top = 12
    object FornecedorppField1: TppField
      Alignment = taRightJustify
      FieldAlias = 'NIDCADFOR'
      FieldName = 'NIDCADFOR'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 0
      Position = 0
    end
    object FornecedorppField2: TppField
      FieldAlias = 'DDTVALIDAD'
      FieldName = 'DDTVALIDAD'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 1
    end
    object FornecedorppField3: TppField
      FieldAlias = 'CCPFCNPJ'
      FieldName = 'CCPFCNPJ'
      FieldLength = 14
      DisplayWidth = 14
      Position = 2
    end
    object FornecedorppField4: TppField
      Alignment = taRightJustify
      FieldAlias = 'CPESSOAFJ'
      FieldName = 'CPESSOAFJ'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 3
    end
    object FornecedorppField5: TppField
      FieldAlias = 'CNOMEGRL'
      FieldName = 'CNOMEGRL'
      FieldLength = 50
      DisplayWidth = 50
      Position = 4
    end
    object FornecedorppField6: TppField
      FieldAlias = 'LKP_ENDERECO'
      FieldName = 'LKP_ENDERECO'
      FieldLength = 243
      DisplayWidth = 243
      Position = 5
    end
    object FornecedorppField7: TppField
      FieldAlias = 'CCONTATFOR'
      FieldName = 'CCONTATFOR'
      FieldLength = 20
      DisplayWidth = 20
      Position = 6
    end
    object FornecedorppField8: TppField
      FieldAlias = 'CTELCOMFOR'
      FieldName = 'CTELCOMFOR'
      FieldLength = 10
      DisplayWidth = 10
      Position = 7
    end
  end
  object DTS_031: TOraDataSource
    DataSet = QRY_031
    Left = 78
    Top = 12
  end
  object DocFor: TppDBPipeline
    DataSource = DTS_034
    AutoCreateFields = False
    UserName = 'DocFor'
    Left = 130
    Top = 64
    object DocForppField1: TppField
      Alignment = taRightJustify
      FieldAlias = 'NIDCADFOR'
      FieldName = 'NIDCADFOR'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 0
    end
    object DocForppField2: TppField
      FieldAlias = 'CGRUPODOC'
      FieldName = 'CGRUPODOC'
      FieldLength = 50
      DisplayWidth = 50
      Position = 1
    end
    object DocForppField3: TppField
      FieldAlias = 'CDESCDOC'
      FieldName = 'CDESCDOC'
      FieldLength = 80
      DisplayWidth = 80
      Position = 2
    end
    object DocForppField4: TppField
      FieldAlias = 'CDISPENSA'
      FieldName = 'CDISPENSA'
      FieldLength = 1
      DisplayWidth = 1
      Position = 3
    end
    object DocForppField5: TppField
      FieldAlias = 'DDATAVALID'
      FieldName = 'DDATAVALID'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 4
    end
    object DocForppField6: TppField
      FieldAlias = 'CSTATUS'
      FieldName = 'CSTATUS'
      FieldLength = 9
      DisplayWidth = 9
      Position = 5
    end
    object DocForppField7: TppField
      FieldAlias = 'CENTREGUE'
      FieldName = 'CENTREGUE'
      FieldLength = 1
      DisplayWidth = 1
      Position = 6
    end
    object DocForppField8: TppField
      FieldAlias = 'CNUMDOC'
      FieldName = 'CNUMDOC'
      FieldLength = 60
      DisplayWidth = 60
      Position = 7
    end
  end
  object DTS_034: TOraDataSource
    DataSet = QRY_034
    Left = 82
    Top = 64
  end
  object DBP_Parametros: TppDBPipeline
    DataSource = DMControle.Dts_P
    UserName = 'DBP_Parametros'
    Left = 34
    Top = 124
    object DBP_ParametrosppField1: TppField
      FieldAlias = 'CPATHIMG'
      FieldName = 'CPATHIMG'
      FieldLength = 50
      DisplayWidth = 50
      Position = 0
    end
    object DBP_ParametrosppField2: TppField
      Alignment = taRightJustify
      FieldAlias = 'NSENHAVZ'
      FieldName = 'NSENHAVZ'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 1
    end
    object DBP_ParametrosppField3: TppField
      FieldAlias = 'CPATHBASE'
      FieldName = 'CPATHBASE'
      FieldLength = 50
      DisplayWidth = 50
      Position = 2
    end
    object DBP_ParametrosppField4: TppField
      FieldAlias = 'CPATHIND'
      FieldName = 'CPATHIND'
      FieldLength = 50
      DisplayWidth = 50
      Position = 3
    end
    object DBP_ParametrosppField5: TppField
      FieldAlias = 'CNOMERAZ'
      FieldName = 'CNOMERAZ'
      FieldLength = 40
      DisplayWidth = 40
      Position = 4
    end
    object DBP_ParametrosppField6: TppField
      FieldAlias = 'CPATHLOGO'
      FieldName = 'CPATHLOGO'
      FieldLength = 50
      DisplayWidth = 50
      Position = 5
    end
    object DBP_ParametrosppField7: TppField
      FieldAlias = 'CSENHAORA'
      FieldName = 'CSENHAORA'
      FieldLength = 30
      DisplayWidth = 30
      Position = 6
    end
    object DBP_ParametrosppField8: TppField
      FieldAlias = 'CUSERORA'
      FieldName = 'CUSERORA'
      FieldLength = 30
      DisplayWidth = 30
      Position = 7
    end
    object DBP_ParametrosppField9: TppField
      FieldAlias = 'CSERVORA'
      FieldName = 'CSERVORA'
      FieldLength = 30
      DisplayWidth = 30
      Position = 8
    end
    object DBP_ParametrosppField10: TppField
      FieldAlias = 'CTITLOGIN'
      FieldName = 'CTITLOGIN'
      FieldLength = 50
      DisplayWidth = 50
      Position = 9
    end
    object DBP_ParametrosppField11: TppField
      FieldAlias = 'CCARACINVA'
      FieldName = 'CCARACINVA'
      FieldLength = 50
      DisplayWidth = 50
      Position = 10
    end
    object DBP_ParametrosppField12: TppField
      FieldAlias = 'CPONTOREM'
      FieldName = 'CPONTOREM'
      FieldLength = 50
      DisplayWidth = 50
      Position = 11
    end
    object DBP_ParametrosppField13: TppField
      FieldAlias = 'CENDPREF'
      FieldName = 'CENDPREF'
      FieldLength = 50
      DisplayWidth = 50
      Position = 12
    end
    object DBP_ParametrosppField14: TppField
      FieldAlias = 'CBAIRROPREF'
      FieldName = 'CBAIRROPREF'
      FieldLength = 40
      DisplayWidth = 40
      Position = 13
    end
    object DBP_ParametrosppField15: TppField
      Alignment = taRightJustify
      FieldAlias = 'NCEP'
      FieldName = 'NCEP'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 14
    end
    object DBP_ParametrosppField16: TppField
      FieldAlias = 'CCOMPLEPREF'
      FieldName = 'CCOMPLEPREF'
      FieldLength = 30
      DisplayWidth = 30
      Position = 15
    end
    object DBP_ParametrosppField17: TppField
      FieldAlias = 'CCNPJ'
      FieldName = 'CCNPJ'
      FieldLength = 14
      DisplayWidth = 14
      Position = 16
    end
    object DBP_ParametrosppField18: TppField
      FieldAlias = 'CFONEPREF'
      FieldName = 'CFONEPREF'
      FieldLength = 20
      DisplayWidth = 20
      Position = 17
    end
    object DBP_ParametrosppField19: TppField
      FieldAlias = 'CCONTATOPREF'
      FieldName = 'CCONTATOPREF'
      FieldLength = 40
      DisplayWidth = 40
      Position = 18
    end
    object DBP_ParametrosppField20: TppField
      FieldAlias = 'MUNICIPIO'
      FieldName = 'MUNICIPIO'
      FieldLength = 30
      DisplayWidth = 30
      Position = 19
    end
    object DBP_ParametrosppField21: TppField
      FieldAlias = 'CXPOSTAL'
      FieldName = 'CXPOSTAL'
      FieldLength = 8
      DisplayWidth = 8
      Position = 20
    end
  end
end
