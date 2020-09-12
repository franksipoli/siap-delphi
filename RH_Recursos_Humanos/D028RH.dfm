object DTM_A028RH: TDTM_A028RH
  OldCreateOrder = False
  Left = 172
  Top = 146
  Height = 247
  Width = 490
  object QRY_136: TOraQuery
    SQLInsert.Strings = (
      'INSERT INTO tagpau'
      '  (NIDTAGPAU, NIDTBXTFP, NIDTBXTCR)'
      'VALUES'
      '  (:NIDTAGPAU, :NIDTBXTFP, :NIDTBXTCR)')
    SQLDelete.Strings = (
      'DELETE FROM tagpau'
      'WHERE'
      '  NIDTAGPAU = :NIDTAGPAU')
    SQLUpdate.Strings = (
      'UPDATE tagpau'
      'SET'
      '  NIDTAGPAU = :NIDTAGPAU,'
      '  NIDTBXTFP = :NIDTBXTFP,'
      '  NIDTBXTCR = :NIDTBXTCR'
      'WHERE'
      '  NIDTAGPAU = :OLD_NIDTAGPAU')
    SQLLock.Strings = (
      'SELECT * FROM tagpau'
      'WHERE'
      '  NIDTAGPAU = :NIDTAGPAU'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      'WHERE'
      '  NIDTAGPAU = :NIDTAGPAU')
    Session = DMControle.Conexao
    SQL.Strings = (
      'select tagpau.*, tbxtfp.CDESCRITFP'
      'from tagpau, tbxtfp'
      'where tagpau.NIDTBXTFP = tbxtfp.NIDTBXTFP and'
      '      tagpau.NIDTBXTCR = :nidtbxtcr'
      'order by tbxtfp.CDESCRITFP')
    CachedUpdates = True
    Left = 24
    Top = 24
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'nidtbxtcr'
      end>
    object QRY_136NIDTAGPAU: TFloatField
      FieldName = 'NIDTAGPAU'
      Required = True
    end
    object QRY_136NIDTBXTFP: TFloatField
      FieldName = 'NIDTBXTFP'
      Required = True
    end
    object QRY_136NIDTBXTCR: TFloatField
      FieldName = 'NIDTBXTCR'
      Required = True
    end
    object QRY_136CDESCRITFP: TStringField
      FieldName = 'CDESCRITFP'
      Size = 40
    end
  end
  object QRY_149: TOraQuery
    SQLInsert.Strings = (
      'INSERT INTO tbxtfp'
      '  (NIDTBXTFP, CDESCRITFP, CCODANT)'
      'VALUES'
      '  (:NIDTBXTFP, :CDESCRITFP, :CCODANT)')
    SQLDelete.Strings = (
      'DELETE FROM tbxtfp'
      'WHERE'
      '  NIDTBXTFP = :NIDTBXTFP')
    SQLUpdate.Strings = (
      'UPDATE tbxtfp'
      'SET'
      '  NIDTBXTFP = :NIDTBXTFP,'
      '  CDESCRITFP = :CDESCRITFP,'
      '  CCODANT = :CCODANT'
      'WHERE'
      '  NIDTBXTFP = :OLD_NIDTBXTFP')
    SQLLock.Strings = (
      'SELECT * FROM tbxtfp'
      'WHERE'
      '  NIDTBXTFP = :NIDTBXTFP'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      'WHERE'
      '  NIDTBXTFP = :NIDTBXTFP')
    SQL.Strings = (
      'select tbxtfp.CDESCRITFP, tbxtfp.NIDTBXTFP'
      'from tbxtfp'
      'where tbxtfp.nidtbxtfp not in ( '
      'select tagpau.NIDTBXTFP'
      'from tagpau, tbxtfp'
      'where tagpau.NIDTBXTFP = tbxtfp.NIDTBXTFP and'
      '      tagpau.NIDTBXTCR = :nidtbxtcr)'
      'order by tbxtfp.CDESCRITFP')
    CachedUpdates = True
    Left = 25
    Top = 80
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'nidtbxtcr'
      end>
    object QRY_149CDESCRITFP: TStringField
      FieldName = 'CDESCRITFP'
      Required = True
      Size = 40
    end
    object QRY_149NIDTBXTFP: TFloatField
      FieldName = 'NIDTBXTFP'
      Required = True
    end
  end
  object DTS_136: TOraDataSource
    AutoEdit = False
    DataSet = QRY_136
    Left = 108
    Top = 24
  end
  object DTS_149: TOraDataSource
    AutoEdit = False
    DataSet = QRY_149
    Left = 104
    Top = 80
  end
end
