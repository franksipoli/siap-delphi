object DTM_A030RH: TDTM_A030RH
  OldCreateOrder = False
  Left = 176
  Top = 149
  Height = 243
  Width = 479
  object QRY_112: TOraQuery
    SQLInsert.Strings = (
      'INSERT INTO tbxrpv'
      '  (NIDTBXRPV, CDESCRRPV, NCODTCE, NPERPATRON, NPERPROPRIO)'
      'VALUES'
      '  (:NIDTBXRPV, :CDESCRRPV, :NCODTCE, :NPERPATRON, :NPERPROPRIO)')
    SQLDelete.Strings = (
      'DELETE FROM tbxrpv'
      'WHERE'
      '  NIDTBXRPV = :NIDTBXRPV')
    SQLUpdate.Strings = (
      'UPDATE tbxrpv'
      'SET'
      '  NIDTBXRPV = :NIDTBXRPV,'
      '  CDESCRRPV = :CDESCRRPV,'
      '  NCODTCE = :NCODTCE,'
      '  NPERPATRON = :NPERPATRON,'
      '  NPERPROPRIO = :NPERPROPRIO'
      'WHERE'
      '  NIDTBXRPV = :OLD_NIDTBXRPV')
    SQLLock.Strings = (
      'SELECT * FROM tbxrpv'
      'WHERE'
      '  NIDTBXRPV = :NIDTBXRPV'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      'WHERE'
      '  NIDTBXRPV = :NIDTBXRPV')
    SQL.Strings = (
      'select *'
      'from tbxrpv'
      'order by tbxrpv.cdescrrpv')
    Left = 28
    Top = 24
    object QRY_112NIDTBXRPV: TFloatField
      FieldName = 'NIDTBXRPV'
      Required = True
    end
    object QRY_112CDESCRRPV: TStringField
      FieldName = 'CDESCRRPV'
      Size = 30
    end
    object QRY_112NCODTCE: TFloatField
      Alignment = taCenter
      FieldName = 'NCODTCE'
    end
    object QRY_112NPERPATRON: TFloatField
      Alignment = taCenter
      FieldName = 'NPERPATRON'
      OnGetText = QRY_112NPERPATRONGetText
    end
  end
  object DTS_112: TOraDataSource
    AutoEdit = False
    DataSet = QRY_112
    Left = 96
    Top = 24
  end
end
