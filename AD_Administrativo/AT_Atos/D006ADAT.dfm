object DTM_A006ADAT: TDTM_A006ADAT
  OldCreateOrder = False
  Left = 192
  Top = 107
  Height = 375
  Width = 544
  object QRY_096: TOraQuery
    SQLInsert.Strings = (
      'INSERT INTO tbxtpm'
      
        '  (NIDTBXTPM, CDESCRITPM, CTIPORVG, NIDTPMRVG, CFIXAST, CCASCATA' +
        ', CTIPOMVTO, NNROTAB, NIDTBXGMV, NIDCADEVE, NIDTBXSTS, CATO, CCA' +
        'LCULA, NIDTBXSPT, NIDTBXACR, NIDTBXMVP)'
      'VALUES'
      
        '  (:NIDTBXTPM, :CDESCRITPM, :CTIPORVG, :NIDTPMRVG, :CFIXAST, :CC' +
        'ASCATA, :CTIPOMVTO, :NNROTAB, :NIDTBXGMV, :NIDCADEVE, :NIDTBXSTS' +
        ', :CATO, :CCALCULA, :NIDTBXSPT, :NIDTBXACR, :NIDTBXMVP)')
    SQLDelete.Strings = (
      'DELETE FROM tbxtpm'
      'WHERE'
      '  NIDTBXTPM = :NIDTBXTPM')
    SQLUpdate.Strings = (
      'UPDATE tbxtpm'
      'SET'
      '  NIDTBXTPM = :NIDTBXTPM,'
      '  CDESCRITPM = :CDESCRITPM,'
      '  CTIPORVG = :CTIPORVG,'
      '  NIDTPMRVG = :NIDTPMRVG,'
      '  CFIXAST = :CFIXAST,'
      '  CCASCATA = :CCASCATA,'
      '  CTIPOMVTO = :CTIPOMVTO,'
      '  NNROTAB = :NNROTAB,'
      '  NIDTBXGMV = :NIDTBXGMV,'
      '  NIDCADEVE = :NIDCADEVE,'
      '  NIDTBXSTS = :NIDTBXSTS,'
      '  CATO = :CATO,'
      '  CCALCULA = :CCALCULA,'
      '  NIDTBXSPT = :NIDTBXSPT,'
      '  NIDTBXACR = :NIDTBXACR,'
      '  NIDTBXMVP = :NIDTBXMVP'
      'WHERE'
      '  NIDTBXTPM = :OLD_NIDTBXTPM')
    SQLLock.Strings = (
      'SELECT * FROM tbxtpm'
      'WHERE'
      '  NIDTBXTPM = :NIDTBXTPM'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      'WHERE'
      '  NIDTBXTPM = :NIDTBXTPM')
    SQL.Strings = (
      'select '
      '  *  '
      'from '
      '  tbxtpm')
    Left = 28
    Top = 20
    object QRY_096NIDTBXTPM: TFloatField
      FieldName = 'NIDTBXTPM'
      Required = True
    end
    object QRY_096CDESCRITPM: TStringField
      FieldName = 'CDESCRITPM'
      Required = True
      Size = 50
    end
    object QRY_096CTIPORVG: TStringField
      FieldName = 'CTIPORVG'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QRY_096NIDTPMRVG: TFloatField
      FieldName = 'NIDTPMRVG'
    end
    object QRY_096CFIXAST: TStringField
      FieldName = 'CFIXAST'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QRY_096CCASCATA: TStringField
      FieldName = 'CCASCATA'
      FixedChar = True
      Size = 1
    end
    object QRY_096CTIPOMVTO: TStringField
      FieldName = 'CTIPOMVTO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QRY_096NNROTAB: TFloatField
      FieldName = 'NNROTAB'
    end
    object QRY_096NIDTBXGMV: TFloatField
      FieldName = 'NIDTBXGMV'
      Required = True
    end
    object QRY_096NIDCADEVE: TFloatField
      FieldName = 'NIDCADEVE'
    end
    object QRY_096NIDTBXSTS: TFloatField
      FieldName = 'NIDTBXSTS'
    end
    object QRY_096CATO: TStringField
      FieldName = 'CATO'
      FixedChar = True
      Size = 1
    end
    object QRY_096CCALCULA: TStringField
      FieldName = 'CCALCULA'
      FixedChar = True
      Size = 1
    end
    object QRY_096NIDTBXSPT: TFloatField
      FieldName = 'NIDTBXSPT'
    end
    object QRY_096NIDTBXACR: TFloatField
      FieldName = 'NIDTBXACR'
    end
    object QRY_096NIDTBXMVP: TFloatField
      FieldName = 'NIDTBXMVP'
    end
  end
  object DTS_096: TOraDataSource
    AutoEdit = False
    DataSet = QRY_096
    OnStateChange = DTS_096StateChange
    Left = 96
    Top = 20
  end
  object QRY_096_1: TOraQuery
    SQL.Strings = (
      'select'
      '  nidtbxtpm,'
      '  cdescritpm'
      'from'
      '  tbxtpm'
      'where'
      '  nidtbxgmv = :nidgmvrvg')
    MasterSource = DTS_084
    Left = 32
    Top = 76
    ParamData = <
      item
        DataType = ftFloat
        Name = 'NIDGMVRVG'
        ParamType = ptInput
        Value = 2
      end>
  end
  object DTS_096_1: TOraDataSource
    AutoEdit = False
    DataSet = QRY_096_1
    Left = 100
    Top = 76
  end
  object QRY_093: TOraQuery
    SQL.Strings = (
      'select'
      '  *'
      'from'
      '  tbxsts')
    Left = 32
    Top = 136
  end
  object DTS_093: TOraDataSource
    AutoEdit = False
    DataSet = QRY_093
    Left = 100
    Top = 136
  end
  object QRY_084: TOraQuery
    SQL.Strings = (
      'select'
      '  nidtbxgmv,'
      '  cdescrigmv,'
      '  nidgmvrvg'
      'from'
      '  tbxgmv')
    Left = 36
    Top = 200
    object QRY_084NIDTBXGMV: TFloatField
      FieldName = 'NIDTBXGMV'
      Required = True
    end
    object QRY_084CDESCRIGMV: TStringField
      FieldName = 'CDESCRIGMV'
      Required = True
      Size = 30
    end
    object QRY_084NIDGMVRVG: TFloatField
      FieldName = 'NIDGMVRVG'
    end
  end
  object DTS_084: TOraDataSource
    AutoEdit = False
    DataSet = QRY_084
    Left = 104
    Top = 200
  end
  object QRY_074: TOraQuery
    SQL.Strings = (
      'select '
      '  nidcadeve,'
      '  cdescrieve'
      'from'
      '  cadeve'
      'where'
      '  nidcadeve = :nidcadeve')
    MasterSource = DTS_096
    Left = 204
    Top = 24
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'nidcadeve'
      end>
    object QRY_074NIDCADEVE: TFloatField
      FieldName = 'NIDCADEVE'
      Required = True
    end
    object QRY_074CDESCRIEVE: TStringField
      FieldName = 'CDESCRIEVE'
      Required = True
      Size = 30
    end
  end
  object DTS_074: TOraDataSource
    DataSet = QRY_074
    OnDataChange = DTS_074DataChange
    Left = 276
    Top = 24
  end
  object QRY_106: TOraQuery
    SQL.Strings = (
      'select'
      '  *'
      'from'
      '  tbxspt')
    Left = 208
    Top = 84
  end
  object DTS_106: TOraDataSource
    DataSet = QRY_106
    Left = 276
    Top = 84
  end
  object QRY_104: TOraQuery
    SQL.Strings = (
      'select'
      '  *'
      'from'
      '  tbxacr')
    Left = 208
    Top = 148
  end
  object DTS_104: TOraDataSource
    DataSet = QRY_104
    Left = 280
    Top = 148
  end
  object QRY_105: TOraQuery
    SQL.Strings = (
      'select'
      '  *'
      'from'
      '  tbxmvp')
    Left = 208
    Top = 208
  end
  object DTS_105: TOraDataSource
    DataSet = QRY_105
    Left = 284
    Top = 208
  end
end
