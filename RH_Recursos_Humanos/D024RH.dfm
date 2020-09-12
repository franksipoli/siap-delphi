object DTM_A024RH: TDTM_A024RH
  OldCreateOrder = False
  Left = 207
  Top = 151
  Height = 265
  Width = 499
  object QRY_121: TOraQuery
    Session = DMControle.Conexao
    SQL.Strings = (
      'select * '
      'from tbxtct'
      'order by tbxtct.cdescritct')
    Left = 44
    Top = 20
    object QRY_121NIDTBXTCT: TFloatField
      FieldName = 'NIDTBXTCT'
      Required = True
    end
    object QRY_121CDESCRITCT: TStringField
      FieldName = 'CDESCRITCT'
      Required = True
      Size = 30
    end
    object QRY_121NCODTCE: TFloatField
      Alignment = taCenter
      FieldName = 'NCODTCE'
      Required = True
    end
  end
  object DTS_121: TOraDataSource
    AutoEdit = False
    DataSet = QRY_121
    Left = 128
    Top = 20
  end
end
