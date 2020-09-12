object DTM_A002RH: TDTM_A002RH
  OldCreateOrder = False
  Left = 238
  Top = 174
  Height = 281
  Width = 400
  object QRY_027: TOraQuery
    SQLInsert.Strings = (
      'INSERT INTO TbxDir'
      '  (NIDTBXDIR, CNOMEDIR, NIDADE)'
      'VALUES'
      '  (:NIDTBXDIR, :CNOMEDIR, :NIDADE)')
    SQLDelete.Strings = (
      'DELETE FROM TbxDir'
      'WHERE'
      '  NIDTBXDIR = :NIDTBXDIR')
    SQLUpdate.Strings = (
      'UPDATE TbxDir'
      'SET'
      '  NIDTBXDIR = :NIDTBXDIR,'
      '  CNOMEDIR = :CNOMEDIR,'
      '  NIDADE = :NIDADE'
      'WHERE'
      '  NIDTBXDIR = :OLD_NIDTBXDIR')
    SQLLock.Strings = (
      'SELECT * FROM TbxDir'
      'WHERE'
      '  NIDTBXDIR = :NIDTBXDIR'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      'WHERE'
      '  NIDTBXDIR = :NIDTBXDIR')
    SQL.Strings = (
      'select * from TbxDir')
    Left = 20
    Top = 24
    object QRY_027NIDTBXDIR: TFloatField
      FieldName = 'NIDTBXDIR'
      Required = True
    end
    object QRY_027CNOMEDIR: TStringField
      FieldName = 'CNOMEDIR'
      Size = 35
    end
    object QRY_027NIDADE: TFloatField
      Alignment = taCenter
      FieldName = 'NIDADE'
      Required = True
    end
  end
  object DTS_027: TOraDataSource
    AutoEdit = False
    DataSet = QRY_027
    Left = 92
    Top = 24
  end
end
