object DTM_A015ADPT: TDTM_A015ADPT
  OldCreateOrder = False
  Left = 192
  Top = 107
  Height = 480
  Width = 696
  object QRY_152: TOraQuery
    SQL.Strings = (
      'select'
      '  tbxtrq.cdescritrq,'
      '  cadreq.nidcadreq,'
      '  cadreq.nnroprot,'
      '  cadreq.nqtdfolhas,'
      '  cadreq.csituareq'
      'from'
      '  taggtm,'
      '  cadreq,'
      '  tbxtrq'
      'where'
      '  taggtm.nidtbxgtm = :nidtbxgtm and'
      '  cadreq.nidcadreq = taggtm.nidcadreq and'
      '  tbxtrq.nidtbxtrq = cadreq.nidtbxtrq'
      'order by'
      '  cadreq.nnroprot  ')
    AfterExecute = QRY_152AfterExecute
    AfterScroll = QRY_152AfterScroll
    Left = 36
    Top = 28
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'nidtbxgtm'
      end>
    object QRY_152CDESCRITRQ: TStringField
      FieldName = 'CDESCRITRQ'
      Required = True
      Size = 40
    end
    object QRY_152NNROPROT: TFloatField
      FieldName = 'NNROPROT'
      Required = True
      DisplayFormat = '000000/00'
    end
    object QRY_152NQTDFOLHAS: TFloatField
      FieldName = 'NQTDFOLHAS'
      Required = True
      DisplayFormat = '0000'
    end
    object QRY_152CSITUAREQ: TStringField
      FieldName = 'CSITUAREQ'
      Required = True
      Size = 13
    end
    object QRY_152NIDCADREQ: TFloatField
      FieldName = 'NIDCADREQ'
      Required = True
    end
  end
  object DTS_152: TOraDataSource
    DataSet = QRY_152
    Left = 108
    Top = 28
  end
end
