object DTM_A008ADPT: TDTM_A008ADPT
  OldCreateOrder = False
  Left = 164
  Top = 149
  Height = 338
  Width = 573
  object QRY_DETALHE: TOraQuery
    Session = DMControle.Conexao
    SQL.Strings = (
      'select '
      '  tbxgtm.ciddestino, '
      '  tbxgtm.ddtdestino, '
      '  tbxulc.cdescriulc, '
      '  cadreq.csituareq'
      'from '
      '  tbxgtm, '
      '  taggtm, '
      '  tbxulc, '
      '  cadreq '
      'where '
      '  taggtm.nidcadreq = :nidcadreq  and '
      '  taggtm.nidtbxgtm = tbxgtm.nidtbxgtm and '
      '  tbxgtm.ciddestino = tbxulc.cidtbxulc  and'
      '  cadreq.nidcadreq = :nidcadreq '
      'order by '
      '  tbxgtm.ddtdestino desc')
    AfterOpen = QRY_DETALHEAfterOpen
    AfterClose = QRY_DETALHEAfterClose
    AfterScroll = QRY_DETALHEAfterScroll
    Left = 48
    Top = 68
    ParamData = <
      item
        DataType = ftInteger
        Name = 'nidcadreq'
        ParamType = ptInput
        Value = 52
      end>
    object QRY_DETALHECIDDESTINO: TStringField
      FieldName = 'CIDDESTINO'
      Required = True
      Size = 10
    end
    object QRY_DETALHEDDTDESTINO: TDateTimeField
      Alignment = taCenter
      FieldName = 'DDTDESTINO'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object QRY_DETALHECDESCRIULC: TStringField
      FieldName = 'CDESCRIULC'
      Size = 50
    end
    object QRY_DETALHECSITUAREQ: TStringField
      FieldName = 'CSITUAREQ'
      Required = True
      Size = 13
    end
  end
  object DTS_DETALHE: TOraDataSource
    AutoEdit = False
    DataSet = QRY_DETALHE
    Left = 140
    Top = 68
  end
  object QRY_REQPROTO: TOraQuery
    Session = DMControle.Conexao
    SQL.Strings = (
      'select'
      '  cnome'
      'from'
      '  tbxurq'
      'where'
      '  cidtbxurq = :cidtbxurq')
    Left = 44
    Top = 128
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cidtbxurq'
      end>
  end
  object QRY_CONSULREQ: TOraQuery
    Session = DMControle.Conexao
    SQL.Strings = (
      'select'
      '  tbxurq.cidtbxurq,'
      '  tbxurq.cnome'
      'from'
      '  tbxurq,'
      '  tagreq'
      'where'
      '  tagreq.nidcadreq = :nidcadreq and'
      '  tagreq.cprincipal = '#39'S'#39' and'
      '  tbxurq.cidtbxurq = tagreq.cidtbxurq')
    Left = 152
    Top = 124
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'nidcadreq'
      end>
  end
  object QRY_CONSULINT: TOraQuery
    Session = DMControle.Conexao
    SQL.Strings = (
      'select'
      '  tbxurq.cidtbxurq,'
      '  tbxurq.cnome'
      'from'
      '  tbxurq,'
      '  tagitr'
      'where'
      '  tagitr.nidcadreq = :nidcadreq and'
      '  tagitr.cprincipal = '#39'S'#39' and'
      '  tbxurq.cidtbxurq = tagitr.cidtbxurq')
    Left = 48
    Top = 196
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'nidcadreq'
      end>
  end
  object DTS_CABECLH: TOraDataSource
    Left = 140
    Top = 16
  end
end
