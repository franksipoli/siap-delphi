object DTM_A039RH: TDTM_A039RH
  OldCreateOrder = False
  Left = 193
  Top = 109
  Height = 375
  Width = 544
  object QRY_077: TOraQuery
    SQL.Strings = (
      'select'
      '  cadgrl.cnomegrl,'
      '  tagffu.ddtadmissa,'
      '  cadcrg.cdescricrg'
      'from'
      '  cadcrg,'
      '  tagffu,'
      '  tagmvf,'
      '  tbxsts,'
      '  tbxtpm,'
      '  cadser,'
      '  cadgrl'
      'where'
      '  cadcrg.nidcadcrg = :nidcadcrg and'
      '  tagffu.nidcadcrg = cadcrg.nidcadcrg and'
      '  cadser.nidcadser = tagffu.nidcadser and'
      '  cadgrl.nidcadgrl = cadser.nidcadgrl and'
      '  tagmvf.nidtagffu = tagffu.nidtagffu and'
      '  tagmvf.cmvfatual = '#39'S'#39' and'
      '  tbxtpm.nidtbxtpm = tagmvf.nidtbxtpm and'
      '  tbxsts.nidtbxsts = tbxtpm.nidtbxsts and'
      '  tbxsts.cdispcrg = '#39'N'#39
      'order by cadgrl.cnomegrl')
    Left = 32
    Top = 32
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'nidcadcrg'
      end>
    object QRY_077CNOMEGRL: TStringField
      FieldName = 'CNOMEGRL'
      Required = True
      Size = 70
    end
    object QRY_077DDTADMISSA: TDateTimeField
      FieldName = 'DDTADMISSA'
      Required = True
      DisplayFormat = 'dd/mm/yyyy'
    end
    object QRY_077CDESCRICRG: TStringField
      FieldName = 'CDESCRICRG'
      Required = True
      Size = 40
    end
  end
  object DTS_077: TOraDataSource
    AutoEdit = False
    DataSet = QRY_077
    Left = 100
    Top = 28
  end
end
