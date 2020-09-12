object DTM_A005UTAU: TDTM_A005UTAU
  OldCreateOrder = False
  Left = 136
  Top = 193
  Height = 287
  Width = 516
  object DTS_051: TOraDataSource
    AutoEdit = False
    DataSet = QRY_051
    OnStateChange = DTS_051StateChange
    Left = 132
    Top = 88
  end
  object QRY_016: TOraQuery
    Session = DMControle.Conexao
    SQL.Strings = (
      'select NIDCADGRL,CNOMEGRL,CCPFCNPJ,CPESSOAFJ from cadgrl ')
    Left = 44
    Top = 36
    object QRY_016NIDCADGRL: TFloatField
      FieldName = 'NIDCADGRL'
      Required = True
    end
    object QRY_016CNOMEGRL: TStringField
      FieldName = 'CNOMEGRL'
      Required = True
      Size = 70
    end
    object QRY_016CCPFCNPJ: TStringField
      FieldName = 'CCPFCNPJ'
      Size = 14
    end
    object QRY_016CPESSOAFJ: TFloatField
      FieldName = 'CPESSOAFJ'
      Required = True
    end
  end
  object DTS_016: TOraDataSource
    DataSet = QRY_016
    Left = 44
    Top = 88
  end
  object QRY_051: TOraQuery
    SQLInsert.Strings = (
      'INSERT INTO tbl_u'
      '  (CNOMEUSU, CSENHA, LBLOQUEADO, NIDTBL_U, NIDCADGRL, NADMIN)'
      'VALUES'
      
        '  (:CNOMEUSU, :CSENHA, :LBLOQUEADO, :NIDTBL_U, :NIDCADGRL, :NADM' +
        'IN)')
    SQLDelete.Strings = (
      'DELETE FROM tbl_u'
      'WHERE'
      '  NIDTBL_U = :NIDTBL_U')
    SQLUpdate.Strings = (
      'UPDATE tbl_u'
      'SET'
      '  CNOMEUSU = :CNOMEUSU,'
      '  CSENHA = :CSENHA,'
      '  LBLOQUEADO = :LBLOQUEADO,'
      '  NIDTBL_U = :NIDTBL_U,'
      '  NIDCADGRL = :NIDCADGRL,'
      '  NADMIN = :NADMIN'
      'WHERE'
      '  NIDTBL_U = :OLD_NIDTBL_U')
    SQLLock.Strings = (
      'SELECT * FROM tbl_u'
      'WHERE'
      '  NIDTBL_U = :NIDTBL_U'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      'WHERE'
      '  NIDTBL_U = :NIDTBL_U')
    Session = DMControle.Conexao
    SQL.Strings = (
      'select '
      '  tbl_u.nidtbl_u,tbl_u.nidcadgrl,'
      '  tbl_u.cnomeusu,tbl_u.csenha,'
      '  tbl_u.lbloqueado,tbl_u.nadmin,'
      '  tbl_u.nsuperusu,cadgrl.cnomegrl,'
      '  cadgrl.ccpfcnpj, cadgrl.cpessoafj '
      'from tbl_u , cadgrl '
      'where '
      '   tbl_u.nidtbl_u in '
      
        '   (select nidtbl_u from tbl_opu where noperador = :noperador un' +
        'ion'
      
        '    select nidtbl_u from tbl_u u where u.nidtbl_u = :noperador) ' +
        'and'
      '  cadgrl.nidcadgrl = tbl_u.nidcadgrl'#9
      'order by tbl_u.cnomeusu ')
    AfterOpen = QRY_051AfterScroll
    AfterScroll = QRY_051AfterScroll
    Left = 132
    Top = 36
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'noperador'
      end>
    object QRY_051NIDTBL_U: TFloatField
      FieldName = 'NIDTBL_U'
    end
    object QRY_051NIDCADGRL: TFloatField
      FieldName = 'NIDCADGRL'
    end
    object QRY_051CNOMEUSU: TStringField
      FieldName = 'CNOMEUSU'
      Size = 10
    end
    object QRY_051CSENHA: TStringField
      FieldName = 'CSENHA'
      Size = 50
    end
    object QRY_051NADMIN: TFloatField
      DefaultExpression = '0'
      FieldName = 'NADMIN'
      OnGetText = QRY_051LBLOQUEADOGetText
      OnSetText = QRY_051LBLOQUEADOSetText
    end
    object QRY_051CNOMEGRL: TStringField
      FieldName = 'CNOMEGRL'
      Size = 70
    end
    object QRY_051CCPFCNPJ: TStringField
      FieldName = 'CCPFCNPJ'
      Size = 14
    end
    object QRY_051CPESSOAFJ: TFloatField
      FieldName = 'CPESSOAFJ'
    end
    object QRY_051LBLOQUEADO: TIntegerField
      FieldName = 'LBLOQUEADO'
      OnGetText = QRY_051LBLOQUEADOGetText
      OnSetText = QRY_051LBLOQUEADOSetText
    end
    object QRY_051NSUPERUSU: TFloatField
      FieldName = 'NSUPERUSU'
    end
  end
  object QRY_061: TOraQuery
    SQLInsert.Strings = (
      'INSERT INTO tbl_opu'
      '  (NIDTBL_OPU, NOPERADOR, NIDTBL_U)'
      'VALUES'
      '  (:NIDTBL_OPU, :NOPERADOR, :NIDTBL_U)')
    SQLDelete.Strings = (
      'DELETE FROM tbl_opu'
      'WHERE'
      '  NIDTBL_OPU = :NIDTBL_OPU')
    SQLUpdate.Strings = (
      'UPDATE tbl_opu'
      'SET'
      '  NIDTBL_OPU = :NIDTBL_OPU,'
      '  NOPERADOR = :NOPERADOR,'
      '  NIDTBL_U = :NIDTBL_U'
      'WHERE'
      '  NIDTBL_OPU = :OLD_NIDTBL_OPU')
    SQLLock.Strings = (
      'SELECT * FROM tbl_opu'
      'WHERE'
      '  NIDTBL_OPU = :NIDTBL_OPU'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      'WHERE'
      '  NIDTBL_OPU = :NIDTBL_OPU')
    Session = DMControle.Conexao
    SQL.Strings = (
      'select * from tbl_opu where noperador = :noperador')
    Left = 212
    Top = 40
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'noperador'
      end>
  end
  object DTS_061: TOraDataSource
    DataSet = QRY_061
    Left = 216
    Top = 88
  end
end
