object DTM_A011: TDTM_A011
  OldCreateOrder = False
  Left = 224
  Top = 170
  Height = 479
  Width = 741
  object QRY_026: TOraQuery
    SQLInsert.Strings = (
      'INSERT INTO tbxgrp'
      
        '  (NIDTBXGRP, CNOMEGRP, NIDTBXVPR, NIDRELMASC, NIDRELFEMI, CSEXO' +
        ')'
      'VALUES'
      
        '  (:NIDTBXGRP, :CNOMEGRP, :NIDTBXVPR, :NIDRELMASC, :NIDRELFEMI, ' +
        ':CSEXO)')
    SQLDelete.Strings = (
      'DELETE FROM tbxgrp'
      'WHERE'
      '  NIDTBXGRP = :NIDTBXGRP')
    SQLUpdate.Strings = (
      'UPDATE tbxgrp'
      'SET'
      '  NIDTBXGRP = :NIDTBXGRP,'
      '  CNOMEGRP = :CNOMEGRP,'
      '  NIDTBXVPR = :NIDTBXVPR,'
      '  NIDRELMASC = :NIDRELMASC,'
      '  NIDRELFEMI = :NIDRELFEMI,'
      '  CSEXO = :CSEXO'
      'WHERE'
      '  NIDTBXGRP = :OLD_NIDTBXGRP')
    SQLLock.Strings = (
      'SELECT * FROM tbxgrp'
      'WHERE'
      '  NIDTBXGRP = :NIDTBXGRP'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      'WHERE'
      '  TBXGRP.NIDTBXGRP = :NIDTBXGRP')
    SQL.Strings = (
      'select '
      '  tbxgrp.*,'
      '  relmasc.cnomegrp as dat_relmasc,'
      '  relfemi.cnomegrp as dat_relfemi'
      'from'
      ' tbxgrp,'
      ' tbxgrp relmasc,'
      ' tbxgrp relfemi'
      'where   '
      ' relmasc.nidtbxgrp(+)= tbxgrp.nidrelmasc and'
      ' relfemi.nidtbxgrp(+) = tbxgrp.nidrelfemi')
    Left = 32
    Top = 24
    object QRY_026NIDTBXGRP: TFloatField
      FieldName = 'NIDTBXGRP'
      Required = True
    end
    object QRY_026CNOMEGRP: TStringField
      FieldName = 'CNOMEGRP'
      Required = True
      Size = 35
    end
    object QRY_026NIDTBXVPR: TFloatField
      FieldName = 'NIDTBXVPR'
    end
    object QRY_026NIDRELMASC: TFloatField
      FieldName = 'NIDRELMASC'
    end
    object QRY_026NIDRELFEMI: TFloatField
      FieldName = 'NIDRELFEMI'
    end
    object QRY_026CSEXO: TStringField
      FieldName = 'CSEXO'
      OnGetText = QRY_026CSEXOGetText
      OnSetText = QRY_026CSEXOSetText
      Size = 1
    end
    object QRY_026DAT_RELMASC: TStringField
      FieldName = 'DAT_RELMASC'
      ProviderFlags = []
      Size = 35
    end
    object QRY_026DAT_RELFEMI: TStringField
      FieldName = 'DAT_RELFEMI'
      ProviderFlags = []
      Size = 35
    end
  end
  object DTS_026: TOraDataSource
    AutoEdit = False
    DataSet = QRY_026
    Left = 104
    Top = 24
  end
  object QRY_026_1: TOraQuery
    SQL.Strings = (
      'select nidtbxgrp, cnomegrp from tbxgrp')
    Left = 36
    Top = 112
  end
  object DTS_026_1: TOraDataSource
    DataSet = QRY_026_1
    Left = 108
    Top = 112
  end
  object QRY_026_2: TOraQuery
    SQL.Strings = (
      'select nidtbxgrp, cnomegrp from tbxgrp')
    Left = 36
    Top = 200
  end
  object DTS_026_2: TOraDataSource
    DataSet = QRY_026_2
    Left = 116
    Top = 204
  end
end
