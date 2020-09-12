object DTM_A002: TDTM_A002
  OldCreateOrder = False
  Left = 285
  Top = 161
  Height = 479
  Width = 741
  object QRY_003: TOraQuery
    SQLInsert.Strings = (
      'INSERT INTO CADSET'
      '  (CDESCSETOR, CENDSETOR, CBAIRROSET, NPREFSETOR, NIDCADSET)'
      'VALUES'
      
        '  (:CDESCSETOR, :CENDSETOR, :CBAIRROSET, :NPREFSETOR, :NIDCADSET' +
        ')')
    SQLDelete.Strings = (
      'DELETE FROM CADSET'
      'WHERE'
      '  NIDCADSET = :NIDCADSET')
    SQLUpdate.Strings = (
      'UPDATE CADSET'
      'SET'
      '  CDESCSETOR = :CDESCSETOR,'
      '  CENDSETOR = :CENDSETOR,'
      '  CBAIRROSET = :CBAIRROSET,'
      '  NPREFSETOR = :NPREFSETOR,'
      '  NIDCADSET = :NIDCADSET'
      'WHERE'
      '  NIDCADSET = :OLD_NIDCADSET')
    SQLLock.Strings = (
      'SELECT * FROM CADSET'
      'WHERE'
      '  NIDCADSET = :NIDCADSET'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      'WHERE'
      '  NIDCADSET = :NIDCADSET')
    Session = DMControle.Conexao
    SQL.Strings = (
      'select * from CADSET')
    Left = 20
    Top = 16
    object QRY_003NIDCADSET: TFloatField
      FieldName = 'NIDCADSET'
      Required = True
    end
    object QRY_003CDESCSETOR: TStringField
      FieldName = 'CDESCSETOR'
      Required = True
      FixedChar = True
      Size = 40
    end
    object QRY_003CENDSETOR: TStringField
      FieldName = 'CENDSETOR'
      Required = True
      FixedChar = True
      Size = 40
    end
    object QRY_003CBAIRROSET: TStringField
      FieldName = 'CBAIRROSET'
      Required = True
      FixedChar = True
      Size = 30
    end
    object QRY_003NPREFSETOR: TFloatField
      FieldName = 'NPREFSETOR'
    end
  end
  object DTS_003: TOraDataSource
    AutoEdit = False
    DataSet = QRY_003
    OnDataChange = DTS_003DataChange
    Left = 84
    Top = 16
  end
end
