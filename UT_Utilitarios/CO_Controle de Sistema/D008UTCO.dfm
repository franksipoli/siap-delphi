object DTM_A008UTCO: TDTM_A008UTCO
  OldCreateOrder = False
  Left = 192
  Top = 107
  Height = 209
  Width = 407
  object QRY_046: TOraQuery
    SQLInsert.Strings = (
      'INSERT INTO tbl_d'
      
        '  (CNOMECAMPO, CTIPOCAMPO, NTAMANHO, NDECIMAL, CTITULO, CDESCCAM' +
        'PO, CMASCEDIT, CMASCDISP, NCODTABELA, MCAMPOHELP, CALINHAR, CVAL' +
        'IDA, CTIPOFISIC, NIDTBL_D)'
      'VALUES'
      
        '  (:CNOMECAMPO, :CTIPOCAMPO, :NTAMANHO, :NDECIMAL, :CTITULO, :CD' +
        'ESCCAMPO, :CMASCEDIT, :CMASCDISP, :NCODTABELA, :MCAMPOHELP, :CAL' +
        'INHAR, :CVALIDA, :CTIPOFISIC, :NIDTBL_D)')
    SQLDelete.Strings = (
      'DELETE FROM tbl_d'
      'WHERE'
      '  NIDTBL_D = :NIDTBL_D')
    SQLUpdate.Strings = (
      'UPDATE tbl_d'
      'SET'
      '  CNOMECAMPO = :CNOMECAMPO,'
      '  CTIPOCAMPO = :CTIPOCAMPO,'
      '  NTAMANHO = :NTAMANHO,'
      '  NDECIMAL = :NDECIMAL,'
      '  CTITULO = :CTITULO,'
      '  CDESCCAMPO = :CDESCCAMPO,'
      '  CMASCEDIT = :CMASCEDIT,'
      '  CMASCDISP = :CMASCDISP,'
      '  NCODTABELA = :NCODTABELA,'
      '  MCAMPOHELP = :MCAMPOHELP,'
      '  CALINHAR = :CALINHAR,'
      '  CVALIDA = :CVALIDA,'
      '  CTIPOFISIC = :CTIPOFISIC,'
      '  NIDTBL_D = :NIDTBL_D'
      'WHERE'
      '  NIDTBL_D = :OLD_NIDTBL_D')
    SQLLock.Strings = (
      'SELECT * FROM tbl_d'
      'WHERE'
      '  NIDTBL_D = :NIDTBL_D'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      'WHERE'
      '  NIDTBL_D = :NIDTBL_D')
    SQL.Strings = (
      'select * from tbl_d')
    Left = 48
    Top = 20
    object QRY_046CNOMECAMPO: TStringField
      FieldName = 'CNOMECAMPO'
    end
    object QRY_046CTIPOCAMPO: TStringField
      FieldName = 'CTIPOCAMPO'
      Size = 1
    end
    object QRY_046NTAMANHO: TIntegerField
      FieldName = 'NTAMANHO'
    end
    object QRY_046NDECIMAL: TIntegerField
      FieldName = 'NDECIMAL'
    end
    object QRY_046CTITULO: TStringField
      FieldName = 'CTITULO'
    end
    object QRY_046CDESCCAMPO: TStringField
      FieldName = 'CDESCCAMPO'
      Size = 50
    end
    object QRY_046CMASCEDIT: TStringField
      FieldName = 'CMASCEDIT'
      Size = 30
    end
    object QRY_046CMASCDISP: TStringField
      FieldName = 'CMASCDISP'
      Size = 30
    end
    object QRY_046NCODTABELA: TIntegerField
      FieldName = 'NCODTABELA'
    end
    object QRY_046MCAMPOHELP: TMemoField
      FieldName = 'MCAMPOHELP'
      BlobType = ftMemo
    end
    object QRY_046CALINHAR: TStringField
      FieldName = 'CALINHAR'
      Size = 1
    end
    object QRY_046CVALIDA: TStringField
      FieldName = 'CVALIDA'
    end
    object QRY_046CTIPOFISIC: TStringField
      FieldName = 'CTIPOFISIC'
      Size = 10
    end
    object QRY_046NIDTBL_D: TFloatField
      FieldName = 'NIDTBL_D'
      Required = True
    end
  end
  object DTS_046: TOraDataSource
    AutoEdit = False
    DataSet = QRY_046
    Left = 124
    Top = 20
  end
  object QRY_043: TOraQuery
    SQL.Strings = (
      'select cnometbl, nidtbl_t from tbl_t')
    Left = 48
    Top = 76
  end
  object DST_043: TOraDataSource
    DataSet = QRY_043
    Left = 128
    Top = 80
  end
end
