object DTM_A001UTDC: TDTM_A001UTDC
  OldCreateOrder = False
  Left = 24
  Top = 69
  Height = 232
  Width = 559
  object QRY_049: TOraQuery
    SQLInsert.Strings = (
      'INSERT INTO tbluni'
      
        '  (NIDTBLUNI, CDESC, CAUTOR, DDATADOC, COBJETIVO, CNOMEUNIT, CCA' +
        'MINHO)'
      'VALUES'
      
        '  (:NIDTBLUNI, :CDESC, :CAUTOR, :DDATADOC, :COBJETIVO, :CNOMEUNI' +
        'T, :CCAMINHO)')
    SQLDelete.Strings = (
      'DELETE FROM tbluni'
      'WHERE'
      '  NIDTBLUNI = :NIDTBLUNI')
    SQLUpdate.Strings = (
      'UPDATE tbluni'
      'SET'
      '  NIDTBLUNI = :NIDTBLUNI,'
      '  CDESC = :CDESC,'
      '  CAUTOR = :CAUTOR,'
      '  DDATADOC = :DDATADOC,'
      '  COBJETIVO = :COBJETIVO,'
      '  CNOMEUNIT = :CNOMEUNIT,'
      '  CCAMINHO = :CCAMINHO'
      'WHERE'
      '  NIDTBLUNI = :OLD_NIDTBLUNI')
    SQLLock.Strings = (
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      'WHERE'
      '  NIDTBLUNI = :NIDTBLUNI')
    Session = DMControle.Conexao
    SQL.Strings = (
      'select * from tbluni')
    Left = 20
    Top = 16
    object QRY_049NIDTBLUNI: TFloatField
      FieldName = 'NIDTBLUNI'
      Required = True
    end
    object QRY_049CDESC: TStringField
      FieldName = 'CDESC'
      Size = 30
    end
    object QRY_049CAUTOR: TStringField
      FieldName = 'CAUTOR'
    end
    object QRY_049DDATADOC: TDateTimeField
      FieldName = 'DDATADOC'
    end
    object QRY_049COBJETIVO: TMemoField
      FieldName = 'COBJETIVO'
      BlobType = ftMemo
    end
    object QRY_049CNOMEUNIT: TStringField
      FieldName = 'CNOMEUNIT'
    end
    object QRY_049CCAMINHO: TStringField
      FieldName = 'CCAMINHO'
      Size = 120
    end
  end
  object QRY_050: TOraQuery
    SQLInsert.Strings = (
      'INSERT INTO tblfp'
      
        '  (NIDTBLFP, CTIPO, CNOME, DDATAINI, DDATAATU, CNOMEPRG, CVARPUB' +
        ', CVARPRI, CVARLOC, CDESCRI, NIDTBLUNI)'
      'VALUES'
      
        '  (:NIDTBLFP, :CTIPO, :CNOME, :DDATAINI, :DDATAATU, :CNOMEPRG, :' +
        'CVARPUB, :CVARPRI, :CVARLOC, :CDESCRI, :NIDTBLUNI)')
    SQLDelete.Strings = (
      'DELETE FROM tblfp'
      'WHERE'
      '  NIDTBLFP = :NIDTBLFP')
    SQLUpdate.Strings = (
      'UPDATE tblfp'
      'SET'
      '  NIDTBLFP = :NIDTBLFP,'
      '  CTIPO = :CTIPO,'
      '  CNOME = :CNOME,'
      '  DDATAINI = :DDATAINI,'
      '  DDATAATU = :DDATAATU,'
      '  CNOMEPRG = :CNOMEPRG,'
      '  CVARPUB = :CVARPUB,'
      '  CVARPRI = :CVARPRI,'
      '  CVARLOC = :CVARLOC,'
      '  CDESCRI = :CDESCRI,'
      '  NIDTBLUNI = :NIDTBLUNI'
      'WHERE'
      '  NIDTBLFP = :OLD_NIDTBLFP')
    SQLLock.Strings = (
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      'WHERE'
      '  NIDTBLFP = :NIDTBLFP')
    Session = DMControle.Conexao
    SQL.Strings = (
      'select * from tblfp where nidtbluni =:nidtbluni')
    MasterSource = DTS_049
    CachedUpdates = True
    Left = 96
    Top = 8
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'nidtbluni'
      end>
    object QRY_050NIDTBLFP: TFloatField
      FieldName = 'NIDTBLFP'
      Required = True
    end
    object QRY_050CTIPO: TStringField
      FieldName = 'CTIPO'
    end
    object QRY_050CNOME: TStringField
      FieldName = 'CNOME'
      Size = 30
    end
    object QRY_050DDATAINI: TDateTimeField
      FieldName = 'DDATAINI'
    end
    object QRY_050DDATAATU: TDateTimeField
      FieldName = 'DDATAATU'
    end
    object QRY_050CNOMEPRG: TStringField
      FieldName = 'CNOMEPRG'
    end
    object QRY_050CVARPUB: TStringField
      FieldName = 'CVARPUB'
      Size = 500
    end
    object QRY_050CVARPRI: TStringField
      FieldName = 'CVARPRI'
      Size = 500
    end
    object QRY_050CVARLOC: TStringField
      FieldName = 'CVARLOC'
      Size = 500
    end
    object QRY_050CDESCRI: TMemoField
      FieldName = 'CDESCRI'
      BlobType = ftMemo
    end
    object QRY_050NIDTBLUNI: TFloatField
      FieldName = 'NIDTBLUNI'
      Required = True
    end
  end
  object DTS_049: TOraDataSource
    DataSet = QRY_049
    Left = 20
    Top = 64
  end
  object DTS_050: TOraDataSource
    DataSet = QRY_050
    Left = 100
    Top = 64
  end
end
