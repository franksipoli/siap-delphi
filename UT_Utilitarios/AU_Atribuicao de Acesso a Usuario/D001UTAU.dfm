object DTM_A001UTAU: TDTM_A001UTAU
  OldCreateOrder = False
  Top = 65532
  Height = 580
  Width = 808
  object QRY_051: TOraQuery
    SQL.Strings = (
      'select * from tbl_u where nidtbl_u = :nidtbl_u')
    Left = 12
    Top = 8
    ParamData = <
      item
        DataType = ftInteger
        Name = 'nidtbl_u'
        Value = 16
      end>
    object QRY_051CNOMEUSU: TStringField
      FieldName = 'CNOMEUSU'
      Size = 10
    end
    object QRY_051CSENHA: TStringField
      FieldName = 'CSENHA'
      Size = 50
    end
    object QRY_051LBLOQUEADO: TIntegerField
      FieldName = 'LBLOQUEADO'
    end
    object QRY_051NIDTBL_U: TFloatField
      FieldName = 'NIDTBL_U'
      Required = True
    end
    object QRY_051NIDCADGRL: TFloatField
      FieldName = 'NIDCADGRL'
      Required = True
    end
  end
  object DTS_051: TOraDataSource
    DataSet = QRY_051
    Left = 16
    Top = 68
  end
  object QRY_056: TOraQuery
    SQL.Strings = (
      'select * from tbl_pb')
    Left = 76
    Top = 8
    object QRY_056NIDTBL_PB: TFloatField
      FieldName = 'NIDTBL_PB'
      Required = True
    end
    object QRY_056CSIGLAPER: TStringField
      FieldName = 'CSIGLAPER'
      Size = 4
    end
    object QRY_056CNOMEPER: TStringField
      FieldName = 'CNOMEPER'
      Size = 30
    end
  end
  object DTS_056: TOraDataSource
    DataSet = QRY_056
    Left = 80
    Top = 68
  end
  object QRY_TMP: TOraQuery
    SQL.Strings = (
      'begin'
      '  :RESULT := mpl.MPL_EQUIV.GETAPLICACOESUSU(:NIDTBL_U);'
      'end;')
    MasterSource = DTS_051
    AutoCommit = False
    Left = 152
    Top = 8
    ParamData = <
      item
        DataType = ftCursor
        Name = 'RESULT'
        ParamType = ptOutput
        Value = 'Object'
      end
      item
        DataType = ftFloat
        Name = 'NIDTBL_U'
        ParamType = ptInput
        Value = 1
      end>
    object QRY_TMPCNOMEUNIT: TStringField
      FieldName = 'CNOMEUNIT'
      Size = 8
    end
    object QRY_TMPCDESCAPLI: TStringField
      FieldName = 'CDESCAPLI'
      Size = 30
    end
    object QRY_TMPCNOMEBMP: TStringField
      FieldName = 'CNOMEBMP'
    end
    object QRY_TMPCNOMEFORM: TStringField
      FieldName = 'CNOMEFORM'
    end
    object QRY_TMPCSHOWFORM: TStringField
      FieldName = 'CSHOWFORM'
      Size = 1
    end
    object QRY_TMPCITENSMENU: TStringField
      FieldName = 'CITENSMENU'
      Size = 10
    end
    object QRY_TMPCTITAPLIC: TStringField
      FieldName = 'CTITAPLIC'
      Size = 30
    end
    object QRY_TMPCCATEGORIA: TStringField
      FieldName = 'CCATEGORIA'
      Size = 30
    end
    object QRY_TMPNIMGSAIDA: TIntegerField
      FieldName = 'NIMGSAIDA'
    end
    object QRY_TMPNIDTBL_A: TFloatField
      FieldName = 'NIDTBL_A'
      Required = True
    end
    object QRY_TMPNIDTBL_G: TFloatField
      FieldName = 'NIDTBL_G'
    end
    object QRY_TMPNAPLICAUX: TIntegerField
      FieldName = 'NAPLICAUX'
    end
    object QRY_TMPNIDTBL_PB: TFloatField
      FieldName = 'NIDTBL_PB'
    end
    object QRY_TMPNIDTBL_UPA: TFloatField
      FieldName = 'NIDTBL_UPA'
    end
  end
  object DTS_TMP: TOraDataSource
    DataSet = QRY_TMP
    Left = 152
    Top = 68
  end
  object QRY_041: TOraQuery
    SQL.Strings = (
      'select * from tbl_tmp where nidtbl_a not in ('
      'select tbl_a.nidtbl_a  from tbl_a, tbl_up, tbl_upa, tbl_u'
      
        'where tbl_u.NIDTBL_U = :nidtbl_u and tbl_up.nidtbl_u = tbl_u.NID' +
        'TBL_U and '
      'tbl_upa.NIDTBL_UP = tbl_up.NIDTBL_UP and'
      'tbl_a.NIDTBL_A = tbl_upa.NIDTBL_A) and nidtbl_a <> 23')
    MasterSource = DTS_051
    Left = 220
    Top = 8
    ParamData = <
      item
        DataType = ftFloat
        Name = 'NIDTBL_U'
        ParamType = ptInput
        Value = 15
      end>
    object QRY_041CNOMEUNIT: TStringField
      FieldName = 'CNOMEUNIT'
      Size = 8
    end
    object QRY_041CDESCAPLI: TStringField
      FieldName = 'CDESCAPLI'
      Size = 30
    end
    object QRY_041CNOMEBMP: TStringField
      FieldName = 'CNOMEBMP'
    end
    object QRY_041CNOMEFORM: TStringField
      FieldName = 'CNOMEFORM'
    end
    object QRY_041CSHOWFORM: TStringField
      FieldName = 'CSHOWFORM'
      Size = 1
    end
    object QRY_041CITENSMENU: TStringField
      FieldName = 'CITENSMENU'
      Size = 10
    end
    object QRY_041CTITAPLIC: TStringField
      FieldName = 'CTITAPLIC'
      Size = 30
    end
    object QRY_041CCATEGORIA: TStringField
      FieldName = 'CCATEGORIA'
      Size = 30
    end
    object QRY_041NIMGSAIDA: TIntegerField
      FieldName = 'NIMGSAIDA'
    end
    object QRY_041NIDTBL_A: TFloatField
      FieldName = 'NIDTBL_A'
      Required = True
    end
    object QRY_041NIDTBL_G: TFloatField
      FieldName = 'NIDTBL_G'
    end
    object QRY_041NAPLICAUX: TIntegerField
      FieldName = 'NAPLICAUX'
    end
    object QRY_041NIDTBL_UPA: TFloatField
      FieldName = 'NIDTBL_UPA'
    end
    object QRY_041NIDTBL_PB: TFloatField
      FieldName = 'NIDTBL_PB'
    end
    object QRY_041LKP_CPERFIL: TStringField
      FieldKind = fkLookup
      FieldName = 'LKP_CPERFIL'
      LookupDataSet = QRY_055
      LookupKeyFields = 'NIDTBL_PB'
      LookupResultField = 'CPERFIL'
      KeyFields = 'NIDTBL_PB'
      Size = 30
      Lookup = True
    end
  end
  object DTS_041: TOraDataSource
    DataSet = QRY_041
    Left = 224
    Top = 68
  end
  object QRY_055: TOraQuery
    SQL.Strings = (
      'select * from tbl_up')
    Left = 284
    Top = 8
    object QRY_055NIDTBL_UP: TFloatField
      FieldName = 'NIDTBL_UP'
      Required = True
    end
    object QRY_055NIDTBL_U: TFloatField
      FieldName = 'NIDTBL_U'
      Required = True
    end
    object QRY_055NIDTBL_PB: TFloatField
      FieldName = 'NIDTBL_PB'
      Required = True
    end
    object QRY_055CPERFIL: TStringField
      FieldName = 'CPERFIL'
      Required = True
      Size = 12
    end
    object QRY_055NSTATUS: TFloatField
      FieldName = 'NSTATUS'
    end
  end
  object DTS_055: TOraDataSource
    DataSet = QRY_055
    Left = 288
    Top = 68
  end
  object QRY_046: TOraQuery
    SQL.Strings = (
      
        'select tbl_ud.*, InitCap(tbl_d.cdesccampo) cdesccampo from tbl_u' +
        'd, tbl_d'
      'where tbl_ud.nidtbl_u = :nidtbl_u and'
      'tbl_d.nidtbl_d = tbl_ud.nidtbl_d')
    MasterSource = DTS_051
    Left = 80
    Top = 128
    ParamData = <
      item
        DataType = ftInteger
        Name = 'nidtbl_u'
        Value = 16
      end>
    object QRY_046NIDTBL_U: TIntegerField
      FieldName = 'NIDTBL_U'
    end
    object QRY_046NIDTBL_D: TIntegerField
      FieldName = 'NIDTBL_D'
    end
    object QRY_046CCONDICAO: TStringField
      FieldName = 'CCONDICAO'
      Size = 30
    end
    object QRY_046CTIPOMASCA: TStringField
      FieldName = 'CTIPOMASCA'
    end
    object QRY_046CTRATAMENT: TStringField
      FieldName = 'CTRATAMENT'
      OnGetText = QRY_046LKP_TRATAMENTOGetText
      Size = 1
    end
    object QRY_046NIDTBL_UD: TFloatField
      FieldName = 'NIDTBL_UD'
      Required = True
    end
    object QRY_046CDESCCAMPO: TStringField
      DisplayLabel = 'Campo'
      FieldName = 'CDESCCAMPO'
      Size = 50
    end
  end
  object DTS_046: TOraDataSource
    DataSet = QRY_046
    Left = 80
    Top = 180
  end
  object QRY_APLUSU: TOraQuery
    Tag = 1
    SQL.Strings = (
      'select tbl_upa.nidtbl_upa,tbl_upa.nidtbl_up, tbl_upa.capherdado,'
      'tbl_upa.nidtbl_a, tbl_up.nidtbl_u, tbl_up.cperfil, '
      'InitCap(tbl_tmp.cdescapli) as cdescapli , tbl_pb.cnomeper'
      'from tbl_upa, tbl_up, tbl_pb, tbl_tmp '
      'where tbl_upa.nidtbl_upa = tbl_tmp.nidtbl_upa and'
      'tbl_up.nidtbl_up = tbl_upa.nidtbl_up and'
      'tbl_pb.nidtbl_pb = tbl_up.nidtbl_pb'
      'order by tbl_tmp.cdescapli')
    AutoCommit = False
    AfterScroll = QRY_APLUSUAfterScroll
    OnCalcFields = QRY_APLUSUCalcFields
    Left = 456
    Top = 12
    object QRY_APLUSUNIDTBL_UPA: TFloatField
      FieldName = 'NIDTBL_UPA'
      Required = True
    end
    object QRY_APLUSUNIDTBL_UP: TFloatField
      FieldName = 'NIDTBL_UP'
      Required = True
    end
    object QRY_APLUSUNIDTBL_A: TFloatField
      FieldName = 'NIDTBL_A'
      Required = True
    end
    object QRY_APLUSUNIDTBL_U: TFloatField
      FieldName = 'NIDTBL_U'
      Required = True
    end
    object QRY_APLUSUCPERFIL: TStringField
      FieldName = 'CPERFIL'
      Required = True
      Size = 15
    end
    object QRY_APLUSUCDESCAPLI: TStringField
      DisplayLabel = 'Aplicação'
      FieldName = 'CDESCAPLI'
      Size = 30
    end
    object QRY_APLUSUCNOMEPER: TStringField
      FieldName = 'CNOMEPER'
      Size = 30
    end
    object QRY_APLUSUCEQUIVALE: TStringField
      FieldKind = fkCalculated
      FieldName = 'CEQUIVALE'
      Size = 12
      Calculated = True
    end
    object QRY_APLUSUCAPHERDADO: TStringField
      DisplayWidth = 1
      FieldName = 'CAPHERDADO'
      OnGetText = QRY_APLUSUCAPHERDADOGetText
      Size = 15
    end
  end
  object DTS_APLUSU: TOraDataSource
    DataSet = QRY_APLUSU
    OnDataChange = DTS_APLUSUDataChange
    Left = 460
    Top = 64
  end
  object QRY_RELACESSO: TOraQuery
    SQL.Strings = (
      'select tbl_upa.nidtbl_upa,tbl_upa.nidtbl_up, '
      'tbl_upa.nidtbl_a, tbl_up.nidtbl_u, tbl_up.cperfil,'
      
        'InitCap(tbl_tmp.cdescapli) as cdescapli, tbl_pb.cnomeper, tbl_pb' +
        '.nidtbl_pb'
      'from tbl_upa, tbl_up, tbl_pb, tbl_tmp '
      'where tbl_upa.nidtbl_upa = tbl_tmp.nidtbl_upa and'
      'tbl_up.nidtbl_up = tbl_upa.nidtbl_up and'
      'tbl_pb.nidtbl_pb = tbl_up.nidtbl_pb'
      'order by tbl_pb.cnomeper')
    AutoCommit = False
    OnCalcFields = QRY_APLUSUCalcFields
    Left = 464
    Top = 116
    object FloatField1: TFloatField
      FieldName = 'NIDTBL_UPA'
      Required = True
    end
    object FloatField2: TFloatField
      FieldName = 'NIDTBL_UP'
      Required = True
    end
    object FloatField3: TFloatField
      FieldName = 'NIDTBL_A'
      Required = True
    end
    object FloatField4: TFloatField
      FieldName = 'NIDTBL_U'
      Required = True
    end
    object QRY_RELACESSONIDTBL_PB: TFloatField
      FieldName = 'NIDTBL_PB'
      Required = True
    end
    object StringField1: TStringField
      FieldName = 'CPERFIL'
      Required = True
      Size = 15
    end
    object StringField2: TStringField
      FieldName = 'CDESCAPLI'
      Size = 30
    end
    object StringField3: TStringField
      FieldName = 'CNOMEPER'
      Size = 30
    end
    object StringField4: TStringField
      FieldKind = fkCalculated
      FieldName = 'CEQUIVALE'
      Size = 12
      Calculated = True
    end
  end
  object DTS_RELACESSO: TOraDataSource
    DataSet = QRY_RELACESSO
    OnDataChange = DTS_APLUSUDataChange
    Left = 464
    Top = 172
  end
  object QRY_042: TOraQuery
    SQL.Strings = (
      
        'select tbl_ao.nidtbl_a, tbl_ao.nidtbl_o, tbl_ao.lrequerido, tbl_' +
        'ao.nidtbl_ao,'
      
        '       InitCap(cfuncao) as cfuncao,DECODE(tbl_uao.nidtbl_o,null,' +
        #39#39','#39'Sem Permissão'#39') as DAT_Permissao '
      'from tbl_ao,tbl_uao, tbl_o'
      'where tbl_ao.nidtbl_a = :nidtbl_a and'
      'tbl_ao.nidtbl_o = tbl_o.nidtbl_o and'
      'tbl_o.cnomecla in ('#39'TSPEEDBUTTON'#39','#39'TBITBTN'#39') and'
      'tbl_ao.nidtbl_o = tbl_uao.nidtbl_o (+)'
      'and tbl_uao.nidtbl_upa(+) = :nidtbl_upa')
    MasterSource = DTS_APLUSU
    Left = 16
    Top = 128
    ParamData = <
      item
        DataType = ftFloat
        Name = 'NIDTBL_A'
        ParamType = ptInput
        Value = 22
      end
      item
        DataType = ftUnknown
        Name = 'nidtbl_upa'
      end>
    object QRY_042NIDTBL_A: TFloatField
      FieldName = 'NIDTBL_A'
      Required = True
    end
    object QRY_042NIDTBL_O: TFloatField
      FieldName = 'NIDTBL_O'
      Required = True
    end
    object QRY_042LREQUERIDO: TIntegerField
      FieldName = 'LREQUERIDO'
    end
    object QRY_042NIDTBL_AO: TFloatField
      FieldName = 'NIDTBL_AO'
      Required = True
    end
    object QRY_042CFUNCAO: TStringField
      DisplayLabel = 'Ação'
      FieldName = 'CFUNCAO'
      Size = 50
    end
    object QRY_042DAT_PERMISSAO: TStringField
      FieldName = 'DAT_PERMISSAO'
      Size = 13
    end
  end
  object DTS_042: TOraDataSource
    DataSet = QRY_042
    Left = 16
    Top = 180
  end
end
