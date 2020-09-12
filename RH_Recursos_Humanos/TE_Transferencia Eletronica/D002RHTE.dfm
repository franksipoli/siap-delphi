object DTM_A002RHTE: TDTM_A002RHTE
  OldCreateOrder = False
  Left = 178
  Top = 151
  Height = 375
  Width = 544
  object QRY_PAGTO: TQuery
    DatabaseName = 'CLT'
    SQL.Strings = (
      'select '
      '  fpmaster.ncontr_mst as nContr,'
      '  fpcadfun.codfun_pgt as nCodFun,'
      '  fpcadfun.nomfun_pgt as cNomFun,'
      '  fpcadfun.numcic_pgt as cNumCic,'
      '  fpcadfun.bcopgt_pgt as nBcoPgt,'
      '  fpcadfun.agepgt_pgt as nAgePgt,'
      '  fpcadfun.digage_pgt as nDigAge,'
      '  fpcadfun.ctapgt_pgt as nCtaPgt,'
      '  fpcadfun.digcta_pgt as cDigCta,'
      '  fpcadfun.orirec_pgt as cCodOri,'
      '  fptabela.descri_tab as cCtlOri,'
      '  fpholeri.valor_hol as nVlrLiq,'
      '  fpholeri.mesref_hol as nMesRef,'
      '  fpholeri.anoref_hol as nAnoRef'
      'from'
      '  fpmaster,fpcadfun,fptabela,fpholeri'
      'where'
      '  fpholeri.codeve_hol = 543 and'
      '  fpholeri.valor_hol <> 0 and'
      '  fpholeri.codfun_hol = fpcadfun.codfun_pgt and'
      '  fptabela.codtab_tab = '#39'32'#39' and'
      '  fptabela.codocr_tab = fpcadfun.ctlori_pgt')
    Left = 36
    Top = 24
    object QRY_PAGTOnContr: TSmallintField
      FieldName = 'nContr'
      Origin = '1."fpmaster.DBF".NCONTR_MST'
    end
    object QRY_PAGTOnCodFun: TSmallintField
      FieldName = 'nCodFun'
      Origin = '1."fpcadfun.DBF".CODFUN_PGT'
      DisplayFormat = '0000'
    end
    object QRY_PAGTOcNomFun: TStringField
      FieldName = 'cNomFun'
      Origin = '1."fpcadfun.DBF".NOMFUN_PGT'
      Size = 30
    end
    object QRY_PAGTOcNumCic: TStringField
      FieldName = 'cNumCic'
      Origin = '1."fpcadfun.DBF".NUMCIC_PGT'
      Size = 14
    end
    object QRY_PAGTOnBcoPgt: TSmallintField
      FieldName = 'nBcoPgt'
      Origin = '1."fpcadfun.DBF".BCOPGT_PGT'
    end
    object QRY_PAGTOnAgePgt: TSmallintField
      FieldName = 'nAgePgt'
      Origin = 'TESTEREMESSA."fpcadfun.DBF".AGEPGT_PGT'
    end
    object QRY_PAGTOnCtaPgt: TFloatField
      FieldName = 'nCtaPgt'
      Origin = '1."fpcadfun.DBF".CTAPGT_PGT'
    end
    object QRY_PAGTOcCodOri: TStringField
      FieldName = 'cCodOri'
      Origin = '1."fpcadfun.DBF".ORIREC_PGT'
      Size = 3
    end
    object QRY_PAGTOcCtlOri: TStringField
      FieldName = 'cCtlOri'
      Origin = '1."fptabela.DBF".DESCRI_TAB'
      Size = 40
    end
    object QRY_PAGTOnVlrLiq: TFloatField
      FieldName = 'nVlrLiq'
      Origin = '1."fpholeri.DBF".VALOR_HOL'
    end
    object QRY_PAGTOnMesRef: TSmallintField
      FieldName = 'nMesRef'
      Origin = '1."fpholeri.DBF".MESREF_HOL'
    end
    object QRY_PAGTOnAnoRef: TSmallintField
      FieldName = 'nAnoRef'
      Origin = '1."fpholeri.DBF".ANOREF_HOL'
    end
    object QRY_PAGTOcDigCta: TStringField
      FieldName = 'cDigCta'
      Origin = 'IPG/INATIVOS."fpcadfun.DBF".DIGCTA_PGT'
      Size = 1
    end
    object QRY_PAGTOnDigAge: TSmallintField
      FieldName = 'nDigAge'
      Origin = 'IPG/INATIVOS."fpcadfun.DBF".DIGAGE_PGT'
    end
  end
  object QRY_062: TOraQuery
    SQLInsert.Strings = (
      'INSERT INTO cadrem'
      
        '  (NIDCADREM, NMESREF, NANOREF, CSEUNRO, CNOMFUN, NNUMCIC, NBCOP' +
        'GT, NAGEPGT, NCTAPGT, CCODORI, CCTLORI, NVLRLIQ, NTIPOPGTO, NFOR' +
        'MAPGTO, NTIPOMOVTO, CTIPOREM, CSITUACAO, CFLAGERRO, NCODFUN, NDI' +
        'GAGE, CDIGCTA)'
      'VALUES'
      
        '  (:NIDCADREM, :NMESREF, :NANOREF, :CSEUNRO, :CNOMFUN, :NNUMCIC,' +
        ' :NBCOPGT, :NAGEPGT, :NCTAPGT, :CCODORI, :CCTLORI, :NVLRLIQ, :NT' +
        'IPOPGTO, :NFORMAPGTO, :NTIPOMOVTO, :CTIPOREM, :CSITUACAO, :CFLAG' +
        'ERRO, :NCODFUN, :NDIGAGE, :CDIGCTA)')
    SQLDelete.Strings = (
      'DELETE FROM cadrem'
      'WHERE'
      '  NIDCADREM = :NIDCADREM')
    SQLUpdate.Strings = (
      'UPDATE cadrem'
      'SET'
      '  NIDCADREM = :NIDCADREM,'
      '  NMESREF = :NMESREF,'
      '  NANOREF = :NANOREF,'
      '  CSEUNRO = :CSEUNRO,'
      '  CNOMFUN = :CNOMFUN,'
      '  NNUMCIC = :NNUMCIC,'
      '  NBCOPGT = :NBCOPGT,'
      '  NAGEPGT = :NAGEPGT,'
      '  NCTAPGT = :NCTAPGT,'
      '  CCODORI = :CCODORI,'
      '  CCTLORI = :CCTLORI,'
      '  NVLRLIQ = :NVLRLIQ,'
      '  NTIPOPGTO = :NTIPOPGTO,'
      '  NFORMAPGTO = :NFORMAPGTO,'
      '  NTIPOMOVTO = :NTIPOMOVTO,'
      '  CTIPOREM = :CTIPOREM,'
      '  CSITUACAO = :CSITUACAO,'
      '  CFLAGERRO = :CFLAGERRO,'
      '  NCODFUN = :NCODFUN,'
      '  NDIGAGE = :NDIGAGE,'
      '  CDIGCTA = :CDIGCTA'
      'WHERE'
      '  NIDCADREM = :OLD_NIDCADREM')
    SQLLock.Strings = (
      'SELECT * FROM cadrem'
      'WHERE'
      '  NIDCADREM = :NIDCADREM'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      'WHERE'
      '  NIDCADREM = :NIDCADREM')
    SQL.Strings = (
      'select '
      '  nidcadrem,'
      '  nmesref,'
      '  nanoref,'
      '  cseunro,'
      '  ncodfun,'
      '  cnomfun,'
      '  nnumcic,'
      '  nbcopgt,'
      '  nagepgt,'
      '  ndigage,'
      '  nctapgt,'
      '  cdigcta,'
      '  ccodori,'
      '  cctlori,'
      '  nvlrliq,'
      '  ntipopgto,'
      '  nformapgto,'
      '  cflagerro,'
      '  ntipomovto,'
      '  ctiporem,'
      '  csituacao  '
      'from '
      '  cadrem')
    Left = 140
    Top = 20
  end
  object DTS_062: TOraDataSource
    DataSet = QRY_062
    Left = 220
    Top = 24
  end
end
