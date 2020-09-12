object DTM_A053RH: TDTM_A053RH
  OldCreateOrder = False
  Left = 178
  Top = 183
  Height = 480
  Width = 696
  object QRY_028: TOraQuery
    SQLInsert.Strings = (
      'INSERT INTO tbxdsf'
      '  (NIDTBXDSF, CNOMEDSF, NIDADE)'
      'VALUES'
      '  (:NIDTBXDSF, :CNOMEDSF, :NIDADE)')
    SQLDelete.Strings = (
      'DELETE FROM tbxdsf'
      'WHERE'
      '  NIDTBXDSF = :NIDTBXDSF')
    SQLUpdate.Strings = (
      'UPDATE tbxdsf'
      'SET'
      '  NIDTBXDSF = :NIDTBXDSF,'
      '  CNOMEDSF = :CNOMEDSF,'
      '  NIDADE = :NIDADE'
      'WHERE'
      '  NIDTBXDSF = :OLD_NIDTBXDSF')
    SQLLock.Strings = (
      'SELECT * FROM tbxdsf'
      'WHERE'
      '  NIDTBXDSF = :NIDTBXDSF'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      'WHERE'
      '  NIDTBXDSF = :NIDTBXDSF')
    SQL.Strings = (
      'select'
      '  tbxdsf.nidtbxdsf,'
      '  tbxdsf.cnomedsf,'
      '  tbxdsf.nidtbxdsf as nidtaggsf,'
      '  tbxdsf.nidtbxdsf as nidtbxgrp'
      'from'
      '  tbxdsf'
      'where'
      '  nidtbxdsf not in '
      '  (select '
      '     nidtbxdsf '
      '   from '
      '     taggsf      '
      '   where nidtbxgrp = :nidtbxgrp)')
    CachedUpdates = True
    AfterOpen = QRY_028AfterOpen
    AfterScroll = QRY_028AfterScroll
    Left = 52
    Top = 40
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'nidtbxgrp'
      end>
    object QRY_028NIDTBXDSF: TFloatField
      FieldName = 'NIDTBXDSF'
      Required = True
    end
    object QRY_028CNOMEDSF: TStringField
      FieldName = 'CNOMEDSF'
      Size = 35
    end
    object QRY_028NIDTAGGSF: TFloatField
      FieldName = 'NIDTAGGSF'
      ProviderFlags = []
      Required = True
    end
    object QRY_028NIDTBXGRP: TFloatField
      FieldName = 'NIDTBXGRP'
      Required = True
    end
  end
  object QRY_170: TOraQuery
    SQLInsert.Strings = (
      'INSERT INTO taggsf'
      '  (NIDTAGGSF, NIDTBXDSF, NIDTBXGRP)'
      'VALUES'
      '  (:NIDTAGGSF, :NIDTBXDSF, :NIDTBXGRP)')
    SQLDelete.Strings = (
      'DELETE FROM taggsf'
      'WHERE'
      '  NIDTAGGSF = :NIDTAGGSF')
    SQLUpdate.Strings = (
      'UPDATE taggsf'
      'SET'
      '  NIDTAGGSF = :NIDTAGGSF,'
      '  NIDTBXDSF = :NIDTBXDSF,'
      '  NIDTBXGRP = :NIDTBXGRP'
      'WHERE'
      '  NIDTAGGSF = :OLD_NIDTAGGSF')
    SQLLock.Strings = (
      'SELECT * FROM taggsf'
      'WHERE'
      '  NIDTAGGSF = :NIDTAGGSF'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      'WHERE'
      '  NIDTAGGSF = :NIDTAGGSF')
    SQL.Strings = (
      'select'
      '  tbxdsf.nidtbxdsf,'
      '  tbxdsf.cnomedsf,'
      '  taggsf.nidtbxgrp,'
      '  taggsf.nidtaggsf'
      'from'
      '  taggsf,'
      '  tbxdsf'
      'where'
      '  taggsf.nidtbxgrp = : nidtbxgrp and'
      '  tbxdsf.nidtbxdsf = taggsf.nidtbxdsf')
    CachedUpdates = True
    AfterOpen = QRY_170AfterOpen
    AfterScroll = QRY_170AfterScroll
    Left = 56
    Top = 100
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'nidtbxgrp'
      end>
    object QRY_170NIDTBXDSF: TFloatField
      FieldName = 'NIDTBXDSF'
      Required = True
    end
    object QRY_170CNOMEDSF: TStringField
      FieldName = 'CNOMEDSF'
      Size = 35
    end
    object QRY_170NIDTBXGRP: TFloatField
      FieldName = 'NIDTBXGRP'
      Required = True
    end
    object QRY_170NIDTAGGSF: TFloatField
      FieldName = 'NIDTAGGSF'
      Required = True
    end
  end
  object DTS_028: TOraDataSource
    DataSet = QRY_028
    Left = 116
    Top = 40
  end
  object DTS_170: TOraDataSource
    DataSet = QRY_170
    Left = 116
    Top = 104
  end
end
