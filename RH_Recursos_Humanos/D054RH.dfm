object DTM_A054RH: TDTM_A054RH
  OldCreateOrder = False
  Left = 192
  Top = 103
  Height = 480
  Width = 696
  object QRY_027: TOraQuery
    SQLInsert.Strings = (
      'INSERT INTO tbxdir'
      '  (NIDTBXDIR, CNOMEDIR, NIDADE)'
      'VALUES'
      '  (:NIDTBXDIR, :CNOMEDIR, :NIDADE)')
    SQLDelete.Strings = (
      'DELETE FROM tbxdir'
      'WHERE'
      '  NIDTBXDIR = :NIDTBXDIR')
    SQLUpdate.Strings = (
      'UPDATE tbxdir'
      'SET'
      '  NIDTBXDIR = :NIDTBXDIR,'
      '  CNOMEDIR = :CNOMEDIR,'
      '  NIDADE = :NIDADE'
      'WHERE'
      '  NIDTBXDIR = :OLD_NIDTBXDIR')
    SQLLock.Strings = (
      'SELECT * FROM tbxdir'
      'WHERE'
      '  NIDTBXDIR = :NIDTBXDIR'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      'WHERE'
      '  NIDTBXDIR = :NIDTBXDIR')
    SQL.Strings = (
      'select'
      '  nidtbxdir,'
      '  cnomedir,'
      '  nidtbxdir as nidtaggir,'
      '  nidtbxdir as nidtbxgrp'
      'from'
      '  tbxdir'
      'where'
      '  nidtbxdir not in '
      '  (select nidtbxdir from taggir where nidtbxgrp = :nidtbxgrp)')
    CachedUpdates = True
    AfterOpen = QRY_027AfterOpen
    AfterScroll = QRY_027AfterScroll
    Left = 24
    Top = 32
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'nidtbxgrp'
      end>
    object QRY_027NIDTBXDIR: TFloatField
      FieldName = 'NIDTBXDIR'
      Required = True
    end
    object QRY_027CNOMEDIR: TStringField
      FieldName = 'CNOMEDIR'
      Size = 35
    end
    object QRY_027NIDTAGGIR: TFloatField
      FieldName = 'NIDTAGGIR'
      Required = True
    end
    object QRY_027NIDTBXGRP: TFloatField
      FieldName = 'NIDTBXGRP'
      Required = True
    end
  end
  object DTS_027: TOraDataSource
    DataSet = QRY_027
    Left = 104
    Top = 32
  end
  object QRY_169: TOraQuery
    SQLInsert.Strings = (
      'INSERT INTO taggir'
      '  (NIDTAGGIR, NIDTBXDIR, NIDTBXGRP)'
      'VALUES'
      '  (:NIDTAGGIR, :NIDTBXDIR, :NIDTBXGRP)')
    SQLDelete.Strings = (
      'DELETE FROM taggir'
      'WHERE'
      '  NIDTAGGIR = :NIDTAGGIR')
    SQLUpdate.Strings = (
      'UPDATE taggir'
      'SET'
      '  NIDTAGGIR = :NIDTAGGIR,'
      '  NIDTBXDIR = :NIDTBXDIR,'
      '  NIDTBXGRP = :NIDTBXGRP'
      'WHERE'
      '  NIDTAGGIR = :OLD_NIDTAGGIR')
    SQLLock.Strings = (
      'SELECT * FROM taggir'
      'WHERE'
      '  NIDTAGGIR = :NIDTAGGIR'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      'WHERE'
      '  NIDTAGGIR = :NIDTAGGIR')
    SQL.Strings = (
      'select'
      '  taggir.nidtaggir,'
      '  tbxdir.cnomedir,'
      '  taggir.nidtbxgrp,'
      '  taggir.nidtbxdir'
      'from'
      '  taggir,'
      '  tbxdir'
      'where'
      '  taggir.nidtbxgrp  = :nidtbxgrp and'
      '  tbxdir.nidtbxdir = taggir.nidtbxdir')
    CachedUpdates = True
    AfterOpen = QRY_169AfterOpen
    AfterScroll = QRY_169AfterScroll
    Left = 28
    Top = 100
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'nidtbxgrp'
      end>
    object QRY_169NIDTAGGIR: TFloatField
      FieldName = 'NIDTAGGIR'
      Required = True
    end
    object QRY_169CNOMEDIR: TStringField
      FieldName = 'CNOMEDIR'
      Size = 35
    end
    object QRY_169NIDTBXGRP: TFloatField
      FieldName = 'NIDTBXGRP'
      Required = True
    end
    object QRY_169NIDTBXDIR: TFloatField
      FieldName = 'NIDTBXDIR'
      Required = True
    end
  end
  object DTS_169: TOraDataSource
    DataSet = QRY_169
    Left = 104
    Top = 100
  end
end
