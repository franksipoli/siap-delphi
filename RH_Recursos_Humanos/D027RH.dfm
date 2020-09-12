object DTM_A027RH: TDTM_A027RH
  OldCreateOrder = False
  Left = 172
  Top = 146
  Height = 247
  Width = 490
  object QRY_115: TOraQuery
    SQLInsert.Strings = (
      'INSERT INTO tagrpc'
      '  (NIDTAGRPC, NIDTBXRPV, NIDTBXTCR)'
      'VALUES'
      '  (:NIDTAGRPC, :NIDTBXRPV, :NIDTBXTCR)')
    SQLDelete.Strings = (
      'DELETE FROM tagrpc'
      'WHERE'
      '  NIDTAGRPC = :NIDTAGRPC')
    SQLUpdate.Strings = (
      'UPDATE tagrpc'
      'SET'
      '  NIDTAGRPC = :NIDTAGRPC,'
      '  NIDTBXRPV = :NIDTBXRPV,'
      '  NIDTBXTCR = :NIDTBXTCR'
      'WHERE'
      '  NIDTAGRPC = :OLD_NIDTAGRPC')
    SQLLock.Strings = (
      'SELECT * FROM tagrpc'
      'WHERE'
      '  NIDTAGRPC = :NIDTAGRPC'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      'WHERE'
      '  NIDTAGRPC = :NIDTAGRPC')
    Session = DMControle.Conexao
    SQL.Strings = (
      'select tagrpc.*, tbxrpv.CDESCRRPV'
      'from tagrpc, tbxrpv'
      'where tagrpc.NIDTBXRPV = tbxrpv.NIDTBXRPV and'
      '      tagrpc.NIDTBXTCR = :nidtbxtcr'
      'order by tbxrpv.CDESCRRPV')
    CachedUpdates = True
    Left = 24
    Top = 24
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'nidtbxtcr'
      end>
    object QRY_115NIDTBXRPV: TFloatField
      FieldName = 'NIDTBXRPV'
      Required = True
    end
    object QRY_115NIDTAGRPC: TFloatField
      FieldName = 'NIDTAGRPC'
      Required = True
    end
    object QRY_115NIDTBXTCR: TFloatField
      FieldName = 'NIDTBXTCR'
      Required = True
    end
    object QRY_115CDESCRRPV: TStringField
      FieldName = 'CDESCRRPV'
      Size = 30
    end
  end
  object QRY_112: TOraQuery
    SQLInsert.Strings = (
      'INSERT INTO tbxrpv'
      '  (NIDTBXRPV, CDESCRRPV, NCODTCE)'
      'VALUES'
      '  (:NIDTBXRPV, :CDESCRRPV, :NCODTCE)')
    SQLDelete.Strings = (
      'DELETE FROM tbxrpv'
      'WHERE'
      '  NIDTBXRPV = :NIDTBXRPV')
    SQLUpdate.Strings = (
      'UPDATE tbxrpv'
      'SET'
      '  NIDTBXRPV = :NIDTBXRPV,'
      '  CDESCRRPV = :CDESCRRPV,'
      '  NCODTCE = :NCODTCE'
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
      'select tbxrpv.CDESCRRPV, tbxrpv.NIDTBXRPV'
      'from tbxrpv'
      'where tbxrpv.nidtbxrpv not in ( '
      'select tagrpc.NIDTBXRPV'
      'from tagrpc, tbxrpv'
      'where tagrpc.NIDTBXRPV = tbxrpv.NIDTBXRPV and'
      '      tagrpc.NIDTBXTCR = :nidtbxtcr)'
      'order by tbxrpv.CDESCRRPV')
    CachedUpdates = True
    Left = 25
    Top = 80
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'nidtbxtcr'
      end>
    object QRY_112CDESCRRPV: TStringField
      FieldName = 'CDESCRRPV'
      Size = 30
    end
    object QRY_112NIDTBXRPV: TFloatField
      FieldName = 'NIDTBXRPV'
    end
  end
  object DTS_115: TOraDataSource
    AutoEdit = False
    DataSet = QRY_115
    Left = 108
    Top = 24
  end
  object DTS_112: TOraDataSource
    AutoEdit = False
    DataSet = QRY_112
    Left = 104
    Top = 80
  end
end
