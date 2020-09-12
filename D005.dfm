object DTM_A005: TDTM_A005
  OldCreateOrder = False
  Left = 206
  Top = 126
  Height = 227
  Width = 472
  object QRY_011: TOraQuery
    SQLInsert.Strings = (
      'INSERT INTO tbxbai'
      '  (NIDTBXBAI, CNOMEBAI, NIDTBXLOC)'
      'VALUES'
      '  (:NIDTBXBAI, :CNOMEBAI, :NIDTBXLOC)')
    SQLDelete.Strings = (
      'DELETE FROM tbxbai'
      'WHERE'
      '  NIDTBXBAI = :NIDTBXBAI')
    SQLUpdate.Strings = (
      'UPDATE tbxbai'
      'SET'
      '  NIDTBXBAI = :NIDTBXBAI,'
      '  CNOMEBAI = :CNOMEBAI,'
      '  NIDTBXLOC = :NIDTBXLOC'
      'WHERE'
      '  NIDTBXBAI = :OLD_NIDTBXBAI')
    SQLLock.Strings = (
      'SELECT * FROM tbxbai'
      'WHERE'
      '  NIDTBXBAI = :NIDTBXBAI'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      'WHERE'
      '  NIDTBXBAI = :NIDTBXBAI')
    Session = DMControle.Conexao
    SQL.Strings = (
      
        'select tbxbai.nidtbxbai, tbxbai.cnomebai, tbxbai.nidtbxloc, tbxl' +
        'oc.cnomeloc, tbxloc.ufloc'
      
        'from tbxbai, tbxloc where tbxbai.nidtbxloc = tbxloc.nidtbxloc an' +
        'd tbxloc.ncep is not null')
    Left = 24
    Top = 28
    object QRY_011NIDTBXBAI: TFloatField
      FieldName = 'NIDTBXBAI'
      Required = True
    end
    object QRY_011CNOMEBAI: TStringField
      FieldName = 'CNOMEBAI'
      Size = 72
    end
    object QRY_011NIDTBXLOC: TFloatField
      FieldName = 'NIDTBXLOC'
    end
    object QRY_011CNOMELOC: TStringField
      FieldName = 'CNOMELOC'
      Size = 60
    end
    object QRY_011UFLOC: TStringField
      FieldName = 'UFLOC'
      Size = 2
    end
  end
  object DTS_011: TOraDataSource
    AutoEdit = False
    DataSet = QRY_011
    OnDataChange = DTS_011DataChange
    Left = 96
    Top = 28
  end
end
