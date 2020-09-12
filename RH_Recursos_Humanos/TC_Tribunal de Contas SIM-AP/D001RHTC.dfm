object DTM_A001RHTC: TDTM_A001RHTC
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 17
  Top = 21
  Height = 655
  Width = 970
  object QRY_TBXENT: TOraQuery
    Session = DMControle.Conexao
    SQL.Strings = (
      'select * from tbxent where nidtbxent = :nidtbxent')
    Left = 276
    Top = 156
    ParamData = <
      item
        DataType = ftInteger
        Name = 'nidtbxent'
        ParamType = ptInput
        Value = 2
      end>
    object QRY_TBXENTNIDTBXENT: TFloatField
      FieldName = 'NIDTBXENT'
      Required = True
    end
    object QRY_TBXENTCDESCRIENT: TStringField
      FieldName = 'CDESCRIENT'
      Size = 40
    end
    object QRY_TBXENTNCODTCE: TFloatField
      FieldName = 'NCODTCE'
    end
  end
  object DTS_TBXENT: TOraDataSource
    DataSet = QRY_TBXENT
    Left = 352
    Top = 160
  end
  object QRY_TBL_P: TOraQuery
    Session = DMControle.Conexao
    SQL.Strings = (
      'select nPmNoTce, nMesPgto, nAnoPgto, nPerPatron, nPerProp'
      'from tbl_p')
    Left = 21
    Top = 411
    object QRY_TBL_PNPMNOTCE: TFloatField
      FieldName = 'NPMNOTCE'
    end
    object QRY_TBL_PNMESPGTO: TFloatField
      FieldName = 'NMESPGTO'
    end
    object QRY_TBL_PNANOPGTO: TFloatField
      FieldName = 'NANOPGTO'
    end
    object QRY_TBL_PNPERPATRON: TFloatField
      FieldName = 'NPERPATRON'
    end
    object QRY_TBL_PNPERPROP: TFloatField
      FieldName = 'NPERPROP'
    end
  end
  object QRY_TCE: TOraQuery
    SQLInsert.Strings = (
      'INSERT INTO cadfis'
      '  (CENVIARTC)'
      'VALUES'
      '  (:CENVIARTC)')
    SQLDelete.Strings = (
      'DELETE FROM cadfis'
      'WHERE'
      '  NIDCADGRL = :NIDCADGRL')
    SQLUpdate.Strings = (
      'UPDATE cadfis'
      'SET'
      '  CENVIARTC = :CENVIARTC'
      'WHERE'
      '  NIDCADGRL = :OLD_NIDCADGRL')
    SQLLock.Strings = (
      'SELECT * FROM cadfis'
      'WHERE'
      '  NIDCADGRL = :NIDCADGRL'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      'WHERE'
      '  NIDCADGRL = :NIDCADGRL')
    Session = DMControle.Conexao
    SQL.Strings = (
      
        'select distinct tagpag.nidtagffu, cadgrl.ccpfcnpj, cadgrl.cnomeg' +
        'rl, cadgrl.crgie,'
      '       cadfis.ddtnasc, cadfis.csexo, cadfis.cufemirg,'
      '       cadfis.cpis, cadfis.ncarttrab, cadfis.cserietrab,'
      '       cadgrl.ctelres, cadgrl.ctelcelula, cadgrl.ctelfax,'
      '       cadgrl.cemail, cadgrl.cnumero, cadgrl.ccomplemen,'
      '       cadgrl.nidcadlog, cadfis.cenviartc, cadfis.nidcadgrl,'
      '       cadfis.cendtc, tagffu.nidtagodp, tagffu.nidtagdst, '
      
        '       tagffu.nidcadcrg, tagffu.nidtagffu as nrficha, tagffu.nid' +
        'tagoct, '
      '       tagffu.nidtagslr, tagmvf.nidtbxtpm, tagffu.nidtbxgrp,'
      '       tagffu.nperslr, tagffu.nidtagobt, tagffu.ddtadmissa,'
      '       tbl_p.nmespgto, tbl_p.nanopgto, cadser.cnroaposen'
      'from cadgrl, cadfis, cadser, tagffu, tagmvf, cadcrg, '
      '     tbxtcr, tbl_p, tagpag'
      'where tagpag.nidtagffu = tagffu.nidtagffu and'
      '      cadser.nidcadser = tagffu.nidcadser and'
      '      cadfis.nidcadgrl = cadser.nidcadgrl and'
      '      cadgrl.nidcadgrl = cadfis.nidcadgrl and'
      '      tagmvf.nidtagffu = tagffu.nidtagffu and'
      '      tagmvf.cmvfinicio = '#39'S'#39' and '
      '      cadcrg.nidcadcrg = tagffu.nidcadcrg and'
      '      tbxtcr.nidtbxtcr = cadcrg.nidtbxtcr and'
      '      tbxtcr.cacaotce = :cParam and'
      '      tagpag.NMESPAG = :nmespgto and'
      '      tagpag.NANOPAG = :nanopgto and'
      '      tagffu.nidtbxent = :nidtbxent and'
      '      tagpag.nidtagffu not in (7112,7521,7586,7116,7115)')
    MasterSource = DTS_TBXENT
    FetchAll = True
    Left = 20
    Top = 8
    ParamData = <
      item
        DataType = ftString
        Name = 'cParam'
        ParamType = ptInput
        Value = 'P'
      end
      item
        DataType = ftInteger
        Name = 'nmespgto'
        ParamType = ptInput
        Value = 9
      end
      item
        DataType = ftInteger
        Name = 'nanopgto'
        ParamType = ptInput
        Value = 2005
      end
      item
        DataType = ftFloat
        Name = 'NIDTBXENT'
        ParamType = ptInput
        Value = 2
      end>
    object QRY_TCECCPFCNPJ: TStringField
      FieldName = 'CCPFCNPJ'
      Size = 14
    end
    object QRY_TCECNOMEGRL: TStringField
      FieldName = 'CNOMEGRL'
      Required = True
      Size = 70
    end
    object QRY_TCECRGIE: TStringField
      FieldName = 'CRGIE'
    end
    object QRY_TCEDDTNASC: TDateTimeField
      FieldName = 'DDTNASC'
    end
    object QRY_TCECSEXO: TStringField
      FieldName = 'CSEXO'
      FixedChar = True
      Size = 1
    end
    object QRY_TCECUFEMIRG: TStringField
      FieldName = 'CUFEMIRG'
      Size = 2
    end
    object QRY_TCECPIS: TStringField
      FieldName = 'CPIS'
      Size = 11
    end
    object QRY_TCENCARTTRAB: TFloatField
      FieldName = 'NCARTTRAB'
    end
    object QRY_TCECTELRES: TStringField
      FieldName = 'CTELRES'
      Size = 10
    end
    object QRY_TCECTELCELULA: TStringField
      FieldName = 'CTELCELULA'
      Size = 10
    end
    object QRY_TCECTELFAX: TStringField
      FieldName = 'CTELFAX'
      Size = 10
    end
    object QRY_TCECEMAIL: TStringField
      FieldName = 'CEMAIL'
      Size = 30
    end
    object QRY_TCECNUMERO: TStringField
      FieldName = 'CNUMERO'
      Size = 15
    end
    object QRY_TCECCOMPLEMEN: TStringField
      FieldName = 'CCOMPLEMEN'
      Size = 25
    end
    object QRY_TCENIDCADLOG: TFloatField
      FieldName = 'NIDCADLOG'
      Required = True
    end
    object QRY_TCECENVIARTC: TStringField
      FieldName = 'CENVIARTC'
      FixedChar = True
      Size = 1
    end
    object QRY_TCENIDCADGRL: TFloatField
      FieldName = 'NIDCADGRL'
      Required = True
    end
    object QRY_TCENIDTAGODP: TFloatField
      FieldName = 'NIDTAGODP'
    end
    object QRY_TCENIDTAGDST: TFloatField
      FieldName = 'NIDTAGDST'
    end
    object QRY_TCENIDCADCRG: TFloatField
      FieldName = 'NIDCADCRG'
      Required = True
    end
    object QRY_TCENIDTAGFFU: TFloatField
      FieldName = 'NIDTAGFFU'
      Required = True
    end
    object QRY_TCENIDTAGSLR: TFloatField
      FieldName = 'NIDTAGSLR'
    end
    object QRY_TCENIDTAGOCT: TFloatField
      FieldName = 'NIDTAGOCT'
    end
    object QRY_TCENIDTBXTPM: TFloatField
      FieldName = 'NIDTBXTPM'
      Required = True
    end
    object QRY_TCENMESPGTO: TFloatField
      FieldName = 'NMESPGTO'
    end
    object QRY_TCENANOPGTO: TFloatField
      FieldName = 'NANOPGTO'
    end
    object QRY_TCECNROAPOSEN: TStringField
      FieldName = 'CNROAPOSEN'
      Size = 10
    end
    object QRY_TCECSERIETRAB: TStringField
      FieldName = 'CSERIETRAB'
      Size = 5
    end
    object QRY_TCECENDTC: TStringField
      FieldName = 'CENDTC'
      FixedChar = True
      Size = 1
    end
    object QRY_TCENRFICHA: TFloatField
      FieldName = 'NRFICHA'
      Required = True
    end
    object QRY_TCENIDTBXGRP: TFloatField
      FieldName = 'NIDTBXGRP'
    end
    object QRY_TCENPERSLR: TFloatField
      FieldName = 'NPERSLR'
    end
    object QRY_TCENIDTAGOBT: TFloatField
      FieldName = 'NIDTAGOBT'
    end
    object QRY_TCEDDTADMISSA: TDateTimeField
      FieldName = 'DDTADMISSA'
      Required = True
    end
  end
  object DTS_TCE: TOraDataSource
    DataSet = QRY_TCE
    Left = 23
    Top = 61
  end
  object QRY_AMPENDERECO: TOraQuery
    SQLInsert.Strings = (
      'INSERT INTO ampendereco'
      
        '  (NPMNOTCE, CCPFCNPJ, DDTNASC, CNOMELOC, CNOMELOG, CNUMERO, CCO' +
        'MPLEMEN, CNOMEBAI, CSIGLAUF, NCEP, CDDD, CTELRES, CTELCELULA, CT' +
        'ELFAX, CEMAIL, NMESPGTO, NANOPGTO, NIDCADTCE)'
      'VALUES'
      
        '  (:NPMNOTCE, :CCPFCNPJ, :DDTNASC, :CNOMELOC, :CNOMELOG, :CNUMER' +
        'O, :CCOMPLEMEN, :CNOMEBAI, :CSIGLAUF, :NCEP, :CDDD, :CTELRES, :C' +
        'TELCELULA, :CTELFAX, :CEMAIL, :NMESPGTO, :NANOPGTO, :NIDCADTCE)')
    SQLDelete.Strings = (
      'DELETE FROM ampendereco'
      'WHERE'
      '  NPMNOTCE = :NPMNOTCE and'
      '  CCPFCNPJ = :CCPFCNPJ and'
      '  DDTNASC = :DDTNASC and'
      '  NMESPGTO = :NMESPGTO and'
      '  NANOPGTO = :NANOPGTO')
    SQLUpdate.Strings = (
      'UPDATE ampendereco'
      'SET'
      '  NPMNOTCE = :NPMNOTCE,'
      '  CCPFCNPJ = :CCPFCNPJ,'
      '  DDTNASC = :DDTNASC,'
      '  CNOMELOC = :CNOMELOC,'
      '  CNOMELOG = :CNOMELOG,'
      '  CNUMERO = :CNUMERO,'
      '  CCOMPLEMEN = :CCOMPLEMEN,'
      '  CNOMEBAI = :CNOMEBAI,'
      '  CSIGLAUF = :CSIGLAUF,'
      '  NCEP = :NCEP,'
      '  CDDD = :CDDD,'
      '  CTELRES = :CTELRES,'
      '  CTELCELULA = :CTELCELULA,'
      '  CTELFAX = :CTELFAX,'
      '  CEMAIL = :CEMAIL,'
      '  NMESPGTO = :NMESPGTO,'
      '  NANOPGTO = :NANOPGTO,'
      '  NIDCADTCE = :NIDCADTCE'
      'WHERE'
      '  NPMNOTCE = :OLD_NPMNOTCE and'
      '  CCPFCNPJ = :OLD_CCPFCNPJ and'
      '  DDTNASC = :OLD_DDTNASC and'
      '  NMESPGTO = :OLD_NMESPGTO and'
      '  NANOPGTO = :OLD_NANOPGTO')
    SQLLock.Strings = (
      'SELECT * FROM ampendereco'
      'WHERE'
      '  NPMNOTCE = :NPMNOTCE and'
      '  CCPFCNPJ = :CCPFCNPJ and'
      '  DDTNASC = :DDTNASC and'
      '  NMESPGTO = :NMESPGTO and'
      '  NANOPGTO = :NANOPGTO'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      'WHERE'
      '  NPMNOTCE = :NPMNOTCE and'
      '  CCPFCNPJ = :CCPFCNPJ and'
      '  DDTNASC = :DDTNASC and'
      '  NMESPGTO = :NMESPGTO and'
      '  NANOPGTO = :NANOPGTO')
    Session = DMControle.Conexao
    SQL.Strings = (
      'select * from ampendereco')
    Left = 59
    Top = 259
    object QRY_AMPENDERECONPMNOTCE: TStringField
      FieldName = 'NPMNOTCE'
      Size = 7
    end
    object QRY_AMPENDERECOCCPFCNPJ: TStringField
      FieldName = 'CCPFCNPJ'
      Size = 11
    end
    object QRY_AMPENDERECODDTNASC: TStringField
      FieldName = 'DDTNASC'
      Size = 10
    end
    object QRY_AMPENDERECOCNOMELOC: TStringField
      FieldName = 'CNOMELOC'
      Size = 40
    end
    object QRY_AMPENDERECOCNOMELOG: TStringField
      FieldName = 'CNOMELOG'
      Size = 50
    end
    object QRY_AMPENDERECOCNUMERO: TStringField
      FieldName = 'CNUMERO'
      Size = 5
    end
    object QRY_AMPENDERECOCCOMPLEMEN: TStringField
      FieldName = 'CCOMPLEMEN'
      Size = 35
    end
    object QRY_AMPENDERECOCNOMEBAI: TStringField
      FieldName = 'CNOMEBAI'
      Size = 60
    end
    object QRY_AMPENDERECOCSIGLAUF: TStringField
      FieldName = 'CSIGLAUF'
      Size = 2
    end
    object QRY_AMPENDERECONCEP: TStringField
      FieldName = 'NCEP'
      Size = 8
    end
    object QRY_AMPENDERECOCDDD: TStringField
      FieldName = 'CDDD'
      Size = 4
    end
    object QRY_AMPENDERECOCTELRES: TStringField
      FieldName = 'CTELRES'
    end
    object QRY_AMPENDERECOCTELCELULA: TStringField
      FieldName = 'CTELCELULA'
    end
    object QRY_AMPENDERECOCTELFAX: TStringField
      FieldName = 'CTELFAX'
    end
    object QRY_AMPENDERECOCEMAIL: TStringField
      FieldName = 'CEMAIL'
      Size = 250
    end
    object QRY_AMPENDERECONMESPGTO: TStringField
      FieldName = 'NMESPGTO'
      Size = 2
    end
    object QRY_AMPENDERECONANOPGTO: TStringField
      FieldName = 'NANOPGTO'
      Size = 4
    end
    object QRY_AMPENDERECONIDCADTCE: TFloatField
      FieldName = 'NIDCADTCE'
    end
  end
  object QRY_AMPPESSOAPUBLICA: TOraQuery
    SQLInsert.Strings = (
      'INSERT INTO amppessoapublica'
      
        '  (NPMNOTCE, CCPFCNPJ, DDTNASC, CNOMEGRL, CSEXO, CRGIE, CUFEMIRG' +
        ', CPIS, NCARTTRAB, CSERIETRAB, CNINFORMA1, CNINFORMA2, NMESPGTO,' +
        ' NANOPGTO, NIDCADTCE)'
      'VALUES'
      
        '  (:NPMNOTCE, :CCPFCNPJ, :DDTNASC, :CNOMEGRL, :CSEXO, :CRGIE, :C' +
        'UFEMIRG, :CPIS, :NCARTTRAB, :CSERIETRAB, :CNINFORMA1, :CNINFORMA' +
        '2, :NMESPGTO, :NANOPGTO, :NIDCADTCE)')
    SQLDelete.Strings = (
      'DELETE FROM amppessoapublica'
      'WHERE'
      '  NPMNOTCE = :NPMNOTCE and'
      '  CCPFCNPJ = :CCPFCNPJ and'
      '  DDTNASC = :DDTNASC and'
      '  NMESPGTO = :NMESPGTO and'
      '  NANOPGTO = :NANOPGTO')
    SQLUpdate.Strings = (
      'UPDATE amppessoapublica'
      'SET'
      '  NPMNOTCE = :NPMNOTCE,'
      '  CCPFCNPJ = :CCPFCNPJ,'
      '  DDTNASC = :DDTNASC,'
      '  CNOMEGRL = :CNOMEGRL,'
      '  CSEXO = :CSEXO,'
      '  CRGIE = :CRGIE,'
      '  CUFEMIRG = :CUFEMIRG,'
      '  CPIS = :CPIS,'
      '  NCARTTRAB = :NCARTTRAB,'
      '  CSERIETRAB = :CSERIETRAB,'
      '  CNINFORMA1 = :CNINFORMA1,'
      '  CNINFORMA2 = :CNINFORMA2,'
      '  NMESPGTO = :NMESPGTO,'
      '  NANOPGTO = :NANOPGTO,'
      '  NIDCADTCE = :NIDCADTCE'
      'WHERE'
      '  NPMNOTCE = :OLD_NPMNOTCE and'
      '  CCPFCNPJ = :OLD_CCPFCNPJ and'
      '  DDTNASC = :OLD_DDTNASC and'
      '  NMESPGTO = :OLD_NMESPGTO and'
      '  NANOPGTO = :OLD_NANOPGTO')
    SQLLock.Strings = (
      'SELECT * FROM amppessoapublica'
      'WHERE'
      '  NPMNOTCE = :NPMNOTCE and'
      '  CCPFCNPJ = :CCPFCNPJ and'
      '  DDTNASC = :DDTNASC and'
      '  NMESPGTO = :NMESPGTO and'
      '  NANOPGTO = :NANOPGTO'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      'WHERE'
      '  NPMNOTCE = :NPMNOTCE and'
      '  CCPFCNPJ = :CCPFCNPJ and'
      '  DDTNASC = :DDTNASC and'
      '  NMESPGTO = :NMESPGTO and'
      '  NANOPGTO = :NANOPGTO')
    Session = DMControle.Conexao
    SQL.Strings = (
      'select * from amppessoapublica')
    Left = 59
    Top = 207
    object QRY_AMPPESSOAPUBLICANPMNOTCE: TStringField
      FieldName = 'NPMNOTCE'
      Size = 7
    end
    object QRY_AMPPESSOAPUBLICACCPFCNPJ: TStringField
      FieldName = 'CCPFCNPJ'
      Required = True
      Size = 11
    end
    object QRY_AMPPESSOAPUBLICADDTNASC: TStringField
      FieldName = 'DDTNASC'
      Size = 10
    end
    object QRY_AMPPESSOAPUBLICACNOMEGRL: TStringField
      FieldName = 'CNOMEGRL'
      Size = 50
    end
    object QRY_AMPPESSOAPUBLICACSEXO: TStringField
      FieldName = 'CSEXO'
      Size = 1
    end
    object QRY_AMPPESSOAPUBLICACRGIE: TStringField
      FieldName = 'CRGIE'
      Size = 15
    end
    object QRY_AMPPESSOAPUBLICACUFEMIRG: TStringField
      FieldName = 'CUFEMIRG'
      Size = 2
    end
    object QRY_AMPPESSOAPUBLICACPIS: TStringField
      FieldName = 'CPIS'
      Size = 11
    end
    object QRY_AMPPESSOAPUBLICANCARTTRAB: TStringField
      FieldName = 'NCARTTRAB'
      Size = 9
    end
    object QRY_AMPPESSOAPUBLICACSERIETRAB: TStringField
      FieldName = 'CSERIETRAB'
      Size = 3
    end
    object QRY_AMPPESSOAPUBLICACNINFORMA1: TStringField
      FieldName = 'CNINFORMA1'
      Size = 10
    end
    object QRY_AMPPESSOAPUBLICACNINFORMA2: TStringField
      FieldName = 'CNINFORMA2'
      Size = 15
    end
    object QRY_AMPPESSOAPUBLICANMESPGTO: TStringField
      FieldName = 'NMESPGTO'
      Size = 2
    end
    object QRY_AMPPESSOAPUBLICANANOPGTO: TStringField
      FieldName = 'NANOPGTO'
      Size = 4
    end
    object QRY_AMPPESSOAPUBLICANIDCADTCE: TFloatField
      FieldName = 'NIDCADTCE'
    end
  end
  object QRY_AMPLOTACAO: TOraQuery
    SQLInsert.Strings = (
      'INSERT INTO ampunidadelotacao'
      
        '  (NPMNOTCE, NIDLOTACAO, NFUNCAOGV, NIDLOTAREC, CDESCRLOTA, NMES' +
        'PGTO, NANOPGTO, NIDCADTCE)'
      'VALUES'
      
        '  (:NPMNOTCE, :NIDLOTACAO, :NFUNCAOGV, :NIDLOTAREC, :CDESCRLOTA,' +
        ' :NMESPGTO, :NANOPGTO, :NIDCADTCE)')
    SQLDelete.Strings = (
      'DELETE FROM ampunidadelotacao'
      'WHERE'
      '  NPMNOTCE = :NPMNOTCE and'
      '  NIDLOTACAO = :NIDLOTACAO and'
      '  NIDLOTAREC = :NIDLOTAREC and'
      '  NMESPGTO = :NMESPGTO and'
      '  NANOPGTO = :NANOPGTO')
    SQLUpdate.Strings = (
      'UPDATE ampunidadelotacao'
      'SET'
      '  NPMNOTCE = :NPMNOTCE,'
      '  NIDLOTACAO = :NIDLOTACAO,'
      '  NFUNCAOGV = :NFUNCAOGV,'
      '  NIDLOTAREC = :NIDLOTAREC,'
      '  CDESCRLOTA = :CDESCRLOTA,'
      '  NMESPGTO = :NMESPGTO,'
      '  NANOPGTO = :NANOPGTO,'
      '  NIDCADTCE = :NIDCADTCE'
      'WHERE'
      '  NPMNOTCE = :OLD_NPMNOTCE and'
      '  NIDLOTACAO = :OLD_NIDLOTACAO and'
      '  NIDLOTAREC = :OLD_NIDLOTAREC and'
      '  NMESPGTO = :OLD_NMESPGTO and'
      '  NANOPGTO = :OLD_NANOPGTO')
    SQLLock.Strings = (
      'SELECT * FROM ampunidadelotacao'
      'WHERE'
      '  NPMNOTCE = :NPMNOTCE and'
      '  NIDLOTACAO = :NIDLOTACAO and'
      '  NIDLOTAREC = :NIDLOTAREC and'
      '  NMESPGTO = :NMESPGTO and'
      '  NANOPGTO = :NANOPGTO'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      'WHERE'
      '  NPMNOTCE = :NPMNOTCE and'
      '  NIDLOTACAO = :NIDLOTACAO and'
      '  NIDLOTAREC = :NIDLOTAREC and'
      '  NMESPGTO = :NMESPGTO and'
      '  NANOPGTO = :NANOPGTO')
    Session = DMControle.Conexao
    SQL.Strings = (
      'select * from ampunidadelotacao')
    Left = 59
    Top = 307
    object QRY_AMPLOTACAONPMNOTCE: TStringField
      FieldName = 'NPMNOTCE'
      Size = 7
    end
    object QRY_AMPLOTACAONIDLOTACAO: TStringField
      FieldName = 'NIDLOTACAO'
      Size = 10
    end
    object QRY_AMPLOTACAONFUNCAOGV: TStringField
      FieldName = 'NFUNCAOGV'
      Size = 2
    end
    object QRY_AMPLOTACAONIDLOTAREC: TStringField
      FieldName = 'NIDLOTAREC'
      Size = 10
    end
    object QRY_AMPLOTACAOCDESCRLOTA: TStringField
      FieldName = 'CDESCRLOTA'
      Size = 100
    end
    object QRY_AMPLOTACAONMESPGTO: TStringField
      FieldName = 'NMESPGTO'
      Size = 2
    end
    object QRY_AMPLOTACAONANOPGTO: TStringField
      FieldName = 'NANOPGTO'
      Size = 4
    end
    object QRY_AMPLOTACAONIDCADTCE: TFloatField
      FieldName = 'NIDCADTCE'
    end
  end
  object QRY_AMPCARGO: TOraQuery
    SQLInsert.Strings = (
      'INSERT INTO ampcargo'
      
        '  (NPMNOTCE, NIDCADCRG, NCODTCE, CDESCRICRG, NTOTVAGAS, NVAGASDI' +
        'S, NCODTCE2, NMESPGTO, NANOPGTO, NIDCADTCE)'
      'VALUES'
      
        '  (:NPMNOTCE, :NIDCADCRG, :NCODTCE, :CDESCRICRG, :NTOTVAGAS, :NV' +
        'AGASDIS, :NCODTCE2, :NMESPGTO, :NANOPGTO, :NIDCADTCE)')
    SQLDelete.Strings = (
      'DELETE FROM ampcargo'
      'WHERE'
      '  NPMNOTCE = :NPMNOTCE and'
      '  NIDCADCRG = :NIDCADCRG and'
      '  NMESPGTO = :NMESPGTO and'
      '  NANOPGTO = :NANOPGTO')
    SQLUpdate.Strings = (
      'UPDATE ampcargo'
      'SET'
      '  NPMNOTCE = :NPMNOTCE,'
      '  NIDCADCRG = :NIDCADCRG,'
      '  NCODTCE = :NCODTCE,'
      '  CDESCRICRG = :CDESCRICRG,'
      '  NTOTVAGAS = :NTOTVAGAS,'
      '  NVAGASDIS = :NVAGASDIS,'
      '  NCODTCE2 = :NCODTCE2,'
      '  NMESPGTO = :NMESPGTO,'
      '  NANOPGTO = :NANOPGTO,'
      '  NIDCADTCE = :NIDCADTCE'
      'WHERE'
      '  NPMNOTCE = :OLD_NPMNOTCE and'
      '  NIDCADCRG = :OLD_NIDCADCRG and'
      '  NMESPGTO = :OLD_NMESPGTO and'
      '  NANOPGTO = :OLD_NANOPGTO')
    SQLLock.Strings = (
      'SELECT * FROM ampcargo'
      'WHERE'
      '  NPMNOTCE = :NPMNOTCE and'
      '  NIDCADCRG = :NIDCADCRG and'
      '  NMESPGTO = :NMESPGTO and'
      '  NANOPGTO = :NANOPGTO'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      'WHERE'
      '  NPMNOTCE = :NPMNOTCE and'
      '  NIDCADCRG = :NIDCADCRG and'
      '  NMESPGTO = :NMESPGTO and'
      '  NANOPGTO = :NANOPGTO')
    Session = DMControle.Conexao
    SQL.Strings = (
      'select * from ampcargo')
    Left = 87
    Top = 208
    object QRY_AMPCARGONPMNOTCE: TStringField
      FieldName = 'NPMNOTCE'
      Size = 7
    end
    object QRY_AMPCARGONIDCADCRG: TStringField
      FieldName = 'NIDCADCRG'
      Size = 10
    end
    object QRY_AMPCARGONCODTCE: TStringField
      FieldName = 'NCODTCE'
      Size = 1
    end
    object QRY_AMPCARGOCDESCRICRG: TStringField
      FieldName = 'CDESCRICRG'
      Size = 40
    end
    object QRY_AMPCARGONTOTVAGAS: TStringField
      FieldName = 'NTOTVAGAS'
      Size = 4
    end
    object QRY_AMPCARGONVAGASDIS: TStringField
      FieldName = 'NVAGASDIS'
      Size = 4
    end
    object QRY_AMPCARGONCODTCE2: TStringField
      FieldName = 'NCODTCE2'
      Size = 5
    end
    object QRY_AMPCARGONMESPGTO: TStringField
      FieldName = 'NMESPGTO'
      Size = 2
    end
    object QRY_AMPCARGONANOPGTO: TStringField
      FieldName = 'NANOPGTO'
      Size = 4
    end
    object QRY_AMPCARGONIDCADTCE: TFloatField
      FieldName = 'NIDCADTCE'
    end
  end
  object QRY_AMPCLASSECARGO: TOraQuery
    SQLInsert.Strings = (
      'INSERT INTO ampclassecargo'
      
        '  (NPMNOTCE, NIDTAGSLR, NVALORSLR, NMESPGTO, NANOPGTO, NIDCADCRG' +
        ', NIDCADTCE)'
      'VALUES'
      
        '  (:NPMNOTCE, :NIDTAGSLR, :NVALORSLR, :NMESPGTO, :NANOPGTO, :NID' +
        'CADCRG, :NIDCADTCE)')
    SQLDelete.Strings = (
      'DELETE FROM ampclassecargo'
      'WHERE'
      '  NPMNOTCE = :NPMNOTCE and'
      '  NIDTAGSLR = :NIDTAGSLR and'
      '  NMESPGTO = :NMESPGTO and'
      '  NANOPGTO = :NANOPGTO and'
      '  NIDCADCRG = :NIDCADCRG')
    SQLUpdate.Strings = (
      'UPDATE ampclassecargo'
      'SET'
      '  NPMNOTCE = :NPMNOTCE,'
      '  NIDTAGSLR = :NIDTAGSLR,'
      '  NVALORSLR = :NVALORSLR,'
      '  NMESPGTO = :NMESPGTO,'
      '  NANOPGTO = :NANOPGTO,'
      '  NIDCADCRG = :NIDCADCRG,'
      '  NIDCADTCE = :NIDCADTCE'
      'WHERE'
      '  NPMNOTCE = :OLD_NPMNOTCE and'
      '  NIDTAGSLR = :OLD_NIDTAGSLR and'
      '  NMESPGTO = :OLD_NMESPGTO and'
      '  NANOPGTO = :OLD_NANOPGTO and'
      '  NIDCADCRG = :OLD_NIDCADCRG')
    SQLLock.Strings = (
      'SELECT * FROM ampclassecargo'
      'WHERE'
      '  NPMNOTCE = :NPMNOTCE and'
      '  NIDTAGSLR = :NIDTAGSLR and'
      '  NMESPGTO = :NMESPGTO and'
      '  NANOPGTO = :NANOPGTO and'
      '  NIDCADCRG = :NIDCADCRG'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      'WHERE'
      '  NPMNOTCE = :NPMNOTCE and'
      '  NIDTAGSLR = :NIDTAGSLR and'
      '  NMESPGTO = :NMESPGTO and'
      '  NANOPGTO = :NANOPGTO and'
      '  NIDCADCRG = :NIDCADCRG')
    Session = DMControle.Conexao
    SQL.Strings = (
      'select * from ampclassecargo')
    Left = 87
    Top = 260
    object QRY_AMPCLASSECARGONPMNOTCE: TStringField
      FieldName = 'NPMNOTCE'
      Size = 7
    end
    object QRY_AMPCLASSECARGONIDCADCRG: TStringField
      FieldName = 'NIDCADCRG'
      Size = 10
    end
    object QRY_AMPCLASSECARGONIDTAGSLR: TStringField
      FieldName = 'NIDTAGSLR'
      Size = 10
    end
    object QRY_AMPCLASSECARGONVALORSLR: TStringField
      FieldName = 'NVALORSLR'
      Size = 7
    end
    object QRY_AMPCLASSECARGONMESPGTO: TStringField
      FieldName = 'NMESPGTO'
      Size = 2
    end
    object QRY_AMPCLASSECARGONANOPGTO: TStringField
      FieldName = 'NANOPGTO'
      Size = 4
    end
    object QRY_AMPCLASSECARGONIDCADTCE: TFloatField
      FieldName = 'NIDCADTCE'
    end
  end
  object QRY_AMPATOMVTPESSOAL: TOraQuery
    SQLInsert.Strings = (
      'INSERT INTO ampatomovimentacaopessoal'
      
        '  (NPMNOTCE, NCODTCE, CNROATO, DDTCRIACAO, DDTPUBLICA, NIDTBXVPB' +
        ', CNOMEARQ, NMESPGTO, NANOPGTO, NIDTBXTAT, NIDCADTCE)'
      'VALUES'
      
        '  (:NPMNOTCE, :NCODTCE, :CNROATO, :DDTCRIACAO, :DDTPUBLICA, :NID' +
        'TBXVPB, :CNOMEARQ, :NMESPGTO, :NANOPGTO, :NIDTBXTAT, :NIDCADTCE)')
    SQLDelete.Strings = (
      'DELETE FROM ampatomovimentacaopessoal'
      'WHERE'
      '  NPMNOTCE = :NPMNOTCE and'
      '  NCODTCE = :NCODTCE and'
      '  CNROATO = :CNROATO and'
      '  DDTCRIACAO = :DDTCRIACAO')
    SQLUpdate.Strings = (
      'UPDATE ampatomovimentacaopessoal'
      'SET'
      '  NPMNOTCE = :NPMNOTCE,'
      '  NCODTCE = :NCODTCE,'
      '  CNROATO = :CNROATO,'
      '  DDTCRIACAO = :DDTCRIACAO,'
      '  DDTPUBLICA = :DDTPUBLICA,'
      '  NIDTBXVPB = :NIDTBXVPB,'
      '  CNOMEARQ = :CNOMEARQ,'
      '  NMESPGTO = :NMESPGTO,'
      '  NANOPGTO = :NANOPGTO,'
      '  NIDTBXTAT = :NIDTBXTAT,'
      '  NIDCADTCE = :NIDCADTCE'
      'WHERE'
      '  NPMNOTCE = :OLD_NPMNOTCE and'
      '  NCODTCE = :OLD_NCODTCE and'
      '  CNROATO = :OLD_CNROATO and'
      '  DDTCRIACAO = :OLD_DDTCRIACAO')
    SQLLock.Strings = (
      'SELECT * FROM ampatomovimentacaopessoal'
      'WHERE'
      '  NPMNOTCE = :NPMNOTCE and'
      '  NCODTCE = :NCODTCE and'
      '  CNROATO = :CNROATO and'
      '  DDTCRIACAO = :DDTCRIACAO'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      'WHERE'
      '  NPMNOTCE = :NPMNOTCE and'
      '  NCODTCE = :NCODTCE and'
      '  CNROATO = :CNROATO and'
      '  DDTCRIACAO = :DDTCRIACAO')
    Session = DMControle.Conexao
    SQL.Strings = (
      'select * from ampatomovimentacaopessoal')
    Left = 91
    Top = 308
    object QRY_AMPATOMVTPESSOALNPMNOTCE: TStringField
      FieldName = 'NPMNOTCE'
      Size = 7
    end
    object QRY_AMPATOMVTPESSOALNCODTCE: TStringField
      FieldName = 'NCODTCE'
      Size = 2
    end
    object QRY_AMPATOMVTPESSOALCNROATO: TStringField
      FieldName = 'CNROATO'
      Size = 10
    end
    object QRY_AMPATOMVTPESSOALDDTCRIACAO: TStringField
      FieldName = 'DDTCRIACAO'
      Size = 10
    end
    object QRY_AMPATOMVTPESSOALDDTPUBLICA: TStringField
      FieldName = 'DDTPUBLICA'
      Size = 10
    end
    object QRY_AMPATOMVTPESSOALNIDTBXVPB: TStringField
      FieldName = 'NIDTBXVPB'
      Size = 3
    end
    object QRY_AMPATOMVTPESSOALCNOMEARQ: TStringField
      FieldName = 'CNOMEARQ'
      Size = 250
    end
    object QRY_AMPATOMVTPESSOALNMESPGTO: TStringField
      FieldName = 'NMESPGTO'
      Size = 2
    end
    object QRY_AMPATOMVTPESSOALNANOPGTO: TStringField
      FieldName = 'NANOPGTO'
      Size = 4
    end
    object QRY_AMPATOMVTPESSOALNIDTBXTAT: TStringField
      FieldName = 'NIDTBXTAT'
      Size = 2
    end
    object QRY_AMPATOMVTPESSOALNIDCADTCE: TFloatField
      FieldName = 'NIDCADTCE'
    end
  end
  object QRY_AMPVEICULOPUBLICACAO: TOraQuery
    SQLInsert.Strings = (
      'INSERT INTO ampveiculopublicacao'
      
        '  (NPMNOTCE, NIDTBXVPB, CDESCRIVPB, NMESPGTO, NANOPGTO, NIDCADTC' +
        'E)'
      'VALUES'
      
        '  (:NPMNOTCE, :NIDTBXVPB, :CDESCRIVPB, :NMESPGTO, :NANOPGTO, :NI' +
        'DCADTCE)')
    SQLDelete.Strings = (
      'DELETE FROM ampveiculopublicacao'
      'WHERE'
      '  NPMNOTCE = :NPMNOTCE and'
      '  NIDTBXVPB = :NIDTBXVPB and'
      '  NMESPGTO = :NMESPGTO and'
      '  NANOPGTO = :NANOPGTO')
    SQLUpdate.Strings = (
      'UPDATE ampveiculopublicacao'
      'SET'
      '  NPMNOTCE = :NPMNOTCE,'
      '  NIDTBXVPB = :NIDTBXVPB,'
      '  CDESCRIVPB = :CDESCRIVPB,'
      '  NMESPGTO = :NMESPGTO,'
      '  NANOPGTO = :NANOPGTO,'
      '  NIDCADTCE = :NIDCADTCE'
      'WHERE'
      '  NPMNOTCE = :OLD_NPMNOTCE and'
      '  NIDTBXVPB = :OLD_NIDTBXVPB and'
      '  NMESPGTO = :OLD_NMESPGTO and'
      '  NANOPGTO = :OLD_NANOPGTO')
    SQLLock.Strings = (
      'SELECT * FROM ampveiculopublicacao'
      'WHERE'
      '  NPMNOTCE = :NPMNOTCE and'
      '  NIDTBXVPB = :NIDTBXVPB and'
      '  NMESPGTO = :NMESPGTO and'
      '  NANOPGTO = :NANOPGTO'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      'WHERE'
      '  NPMNOTCE = :NPMNOTCE and'
      '  NIDTBXVPB = :NIDTBXVPB and'
      '  NMESPGTO = :NMESPGTO and'
      '  NANOPGTO = :NANOPGTO')
    Session = DMControle.Conexao
    SQL.Strings = (
      'select * from ampveiculopublicacao')
    Left = 116
    Top = 208
    object QRY_AMPVEICULOPUBLICACAONPMNOTCE: TStringField
      FieldName = 'NPMNOTCE'
      Size = 7
    end
    object QRY_AMPVEICULOPUBLICACAONIDTBXVPB: TStringField
      FieldName = 'NIDTBXVPB'
      Size = 3
    end
    object QRY_AMPVEICULOPUBLICACAOCDESCRIVPB: TStringField
      FieldName = 'CDESCRIVPB'
      Size = 40
    end
    object QRY_AMPVEICULOPUBLICACAONMESPGTO: TStringField
      FieldName = 'NMESPGTO'
      Size = 2
    end
    object QRY_AMPVEICULOPUBLICACAONANOPGTO: TStringField
      FieldName = 'NANOPGTO'
      Size = 4
    end
    object QRY_AMPVEICULOPUBLICACAONIDCADTCE: TFloatField
      FieldName = 'NIDCADTCE'
    end
  end
  object QRY_AMPMOVIMENTACAO: TOraQuery
    SQLInsert.Strings = (
      'INSERT INTO ampmovimentacao'
      
        '  (NPMNOTCE, CCPFCNPJ, DDTNASC, NIDCADCRG, NCODTCE, NTEMATO, NCO' +
        'DTCE2, CNROATO, DDTCRIACAO, NCODTCE3, NCODTCE4, NIDTBXEDI, DDTED' +
        'ITAL, DDATAINI, CCAMPO1, CCAMPO2, DDATAFIM, NCODTCE5, CCAMPO3, N' +
        'MESPGTO, NANOPGTO, NIDCADTCE)'
      'VALUES'
      
        '  (:NPMNOTCE, :CCPFCNPJ, :DDTNASC, :NIDCADCRG, :NCODTCE, :NTEMAT' +
        'O, :NCODTCE2, :CNROATO, :DDTCRIACAO, :NCODTCE3, :NCODTCE4, :NIDT' +
        'BXEDI, :DDTEDITAL, :DDATAINI, :CCAMPO1, :CCAMPO2, :DDATAFIM, :NC' +
        'ODTCE5, :CCAMPO3, :NMESPGTO, :NANOPGTO, :NIDCADTCE)')
    SQLDelete.Strings = (
      'DELETE FROM ampmovimentacao'
      'WHERE'
      ' NPMNOTCE = :NPMNOTCE and'
      '  CCPFCNPJ = :CCPFCNPJ and'
      '  DDTNASC = :DDTNASC and'
      '  CNROATO = :CNROATO and'
      '  NMESPGTO = :NMESPGTO and'
      '  NANOPGTO = :NANOPGTO')
    SQLUpdate.Strings = (
      'UPDATE ampmovimentacao'
      'SET'
      '  NPMNOTCE = :NPMNOTCE,'
      '  CCPFCNPJ = :CCPFCNPJ,'
      '  DDTNASC = :DDTNASC,'
      '  NIDCADCRG = :NIDCADCRG,'
      '  NCODTCE = :NCODTCE,'
      '  NTEMATO = :NTEMATO,'
      '  NCODTCE2 = :NCODTCE2,'
      '  CNROATO = :CNROATO,'
      '  DDTCRIACAO = :DDTCRIACAO,'
      '  NCODTCE3 = :NCODTCE3,'
      '  NCODTCE4 = :NCODTCE4,'
      '  NIDTBXEDI = :NIDTBXEDI,'
      '  DDTEDITAL = :DDTEDITAL,'
      '  DDATAINI = :DDATAINI,'
      '  CCAMPO1 = :CCAMPO1,'
      '  CCAMPO2 = :CCAMPO2,'
      '  DDATAFIM = :DDATAFIM,'
      '  NCODTCE5 = :NCODTCE5,'
      '  CCAMPO3 = :CCAMPO3,'
      '  NMESPGTO = :NMESPGTO,'
      '  NANOPGTO = :NANOPGTO,'
      '  NIDCADTCE = :NIDCADTCE'
      'WHERE'
      '  NPMNOTCE = :OLD_NPMNOTCE')
    SQLLock.Strings = (
      'SELECT * FROM ampmovimentacao'
      'WHERE'
      '  NPMNOTCE = :NPMNOTCE and'
      '  CCPFCNPJ = :CCPFCNPJ and'
      '  DDTNASC = :DDTNASC and'
      '  CNROATO = :CNROATO and'
      '  NMESPGTO = :NMESPGTO and'
      '  NANOPGTO = :NANOPGTO'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      'WHERE'
      '  NPMNOTCE = :NPMNOTCE and'
      '  CCPFCNPJ = :CCPFCNPJ and'
      '  DDTNASC = :DDTNASC and'
      '  CNROATO = :CNROATO and'
      '  NMESPGTO = :NMESPGTO and'
      '  NANOPGTO = :NANOPGTO')
    Session = DMControle.Conexao
    SQL.Strings = (
      'select * from ampmovimentacao')
    Left = 120
    Top = 308
    object QRY_AMPMOVIMENTACAONPMNOTCE: TStringField
      FieldName = 'NPMNOTCE'
      Size = 7
    end
    object QRY_AMPMOVIMENTACAOCCPFCNPJ: TStringField
      FieldName = 'CCPFCNPJ'
      Size = 11
    end
    object QRY_AMPMOVIMENTACAODDTNASC: TStringField
      FieldName = 'DDTNASC'
      Size = 10
    end
    object QRY_AMPMOVIMENTACAONIDCADCRG: TStringField
      FieldName = 'NIDCADCRG'
      Size = 10
    end
    object QRY_AMPMOVIMENTACAONCODTCE: TStringField
      FieldName = 'NCODTCE'
      Size = 1
    end
    object QRY_AMPMOVIMENTACAONTEMATO: TStringField
      FieldName = 'NTEMATO'
      Size = 1
    end
    object QRY_AMPMOVIMENTACAONCODTCE2: TStringField
      FieldName = 'NCODTCE2'
      Size = 2
    end
    object QRY_AMPMOVIMENTACAOCNROATO: TStringField
      FieldName = 'CNROATO'
      Size = 10
    end
    object QRY_AMPMOVIMENTACAODDTCRIACAO: TStringField
      FieldName = 'DDTCRIACAO'
      Size = 10
    end
    object QRY_AMPMOVIMENTACAONCODTCE3: TStringField
      FieldName = 'NCODTCE3'
      Size = 2
    end
    object QRY_AMPMOVIMENTACAONCODTCE4: TStringField
      FieldName = 'NCODTCE4'
      Size = 2
    end
    object QRY_AMPMOVIMENTACAONIDTBXEDI: TStringField
      FieldName = 'NIDTBXEDI'
      Size = 10
    end
    object QRY_AMPMOVIMENTACAODDTEDITAL: TStringField
      FieldName = 'DDTEDITAL'
      Size = 10
    end
    object QRY_AMPMOVIMENTACAODDATAINI: TStringField
      FieldName = 'DDATAINI'
      Size = 10
    end
    object QRY_AMPMOVIMENTACAOCCAMPO1: TStringField
      FieldName = 'CCAMPO1'
      Size = 9
    end
    object QRY_AMPMOVIMENTACAOCCAMPO2: TStringField
      FieldName = 'CCAMPO2'
      Size = 9
    end
    object QRY_AMPMOVIMENTACAODDATAFIM: TStringField
      FieldName = 'DDATAFIM'
      Size = 10
    end
    object QRY_AMPMOVIMENTACAONCODTCE5: TStringField
      FieldName = 'NCODTCE5'
      Size = 2
    end
    object QRY_AMPMOVIMENTACAOCCAMPO3: TStringField
      FieldName = 'CCAMPO3'
      Size = 100
    end
    object QRY_AMPMOVIMENTACAONMESPGTO: TStringField
      FieldName = 'NMESPGTO'
      Size = 2
    end
    object QRY_AMPMOVIMENTACAONANOPGTO: TStringField
      FieldName = 'NANOPGTO'
      Size = 4
    end
    object QRY_AMPMOVIMENTACAONIDCADTCE: TFloatField
      FieldName = 'NIDCADTCE'
    end
  end
  object QRY_AMPALOCACAOMENSAL: TOraQuery
    SQLInsert.Strings = (
      'INSERT INTO ampalocacaomensal'
      
        '  (NPMNOTCE, CCPFCNPJ, DDTNASC, NIDTBXSET, NIDCADCRG, NIDTAGSLR,' +
        ' NIDTAGFFU, NCODTCE, CFUNDEF, NCODTCE3, NPERPATRON, NPERPROP, NC' +
        'ODTCE2, CORGAOORI, NMESPGTO, NANOPGTO, NIDCADTCE)'
      'VALUES'
      
        '  (:NPMNOTCE, :CCPFCNPJ, :DDTNASC, :NIDTBXSET, :NIDCADCRG, :NIDT' +
        'AGSLR, :NIDTAGFFU, :NCODTCE, :CFUNDEF, :NCODTCE3, :NPERPATRON, :' +
        'NPERPROP, :NCODTCE2, :CORGAOORI, :NMESPGTO, :NANOPGTO, :NIDCADTC' +
        'E)')
    SQLDelete.Strings = (
      'DELETE FROM ampalocacaomensal'
      'WHERE'
      '  NPMNOTCE = :NPMNOTCE and'
      '  CCPFCNPJ = :CCPFCNPJ and'
      '  DDTNASC = :DDTNASC and'
      '  NIDTBXSET = :NIDTBXSET and'
      '  NIDCADCRG = :NIDCADCRG and'
      '  NIDTAGSLR = :NIDTAGSLR and'
      '  NIDTAGFFU = :NIDTAGFFU')
    SQLUpdate.Strings = (
      'UPDATE ampalocacaomensal'
      'SET'
      '  NPMNOTCE = :NPMNOTCE,'
      '  CCPFCNPJ = :CCPFCNPJ,'
      '  DDTNASC = :DDTNASC,'
      '  NIDTBXSET = :NIDTBXSET,'
      '  NIDCADCRG = :NIDCADCRG,'
      '  NIDTAGSLR = :NIDTAGSLR,'
      '  NIDTAGFFU = :NIDTAGFFU,'
      '  NCODTCE = :NCODTCE,'
      '  CFUNDEF = :CFUNDEF,'
      '  NCODTCE3 = :NCODTCE3,'
      '  NPERPATRON = :NPERPATRON,'
      '  NPERPROP = :NPERPROP,'
      '  NCODTCE2 = :NCODTCE2,'
      '  CORGAOORI = :CORGAOORI,'
      '  NMESPGTO = :NMESPGTO,'
      '  NANOPGTO = :NANOPGTO,'
      '  NIDCADTCE = :NIDCADTCE'
      'WHERE'
      '  NPMNOTCE = :OLD_NPMNOTCE and'
      '  CCPFCNPJ = :OLD_CCPFCNPJ and'
      '  DDTNASC = :OLD_DDTNASC and'
      '  NIDTBXSET = :OLD_NIDTBXSET and'
      '  NIDCADCRG = :OLD_NIDCADCRG and'
      '  NIDTAGSLR = :OLD_NIDTAGSLR and'
      '  NIDTAGFFU = :OLD_NIDTAGFFU')
    SQLLock.Strings = (
      'SELECT * FROM ampalocacaomensal'
      'WHERE'
      '  NPMNOTCE = :NPMNOTCE and'
      '  CCPFCNPJ = :CCPFCNPJ and'
      '  DDTNASC = :DDTNASC and'
      '  NIDTBXSET = :NIDTBXSET and'
      '  NIDCADCRG = :NIDCADCRG and'
      '  NIDTAGSLR = :NIDTAGSLR and'
      '  NIDTAGFFU = :NIDTAGFFU'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      'WHERE'
      '  NPMNOTCE = :NPMNOTCE and'
      '  CCPFCNPJ = :CCPFCNPJ and'
      '  DDTNASC = :DDTNASC and'
      '  NIDTBXSET = :NIDTBXSET and'
      '  NIDCADCRG = :NIDCADCRG and'
      '  NIDTAGSLR = :NIDTAGSLR and'
      '  NIDTAGFFU = :NIDTAGFFU')
    Session = DMControle.Conexao
    SQL.Strings = (
      'select * from ampalocacaomensal')
    Left = 144
    Top = 208
    object QRY_AMPALOCACAOMENSALNPMNOTCE: TStringField
      FieldName = 'NPMNOTCE'
      Size = 7
    end
    object QRY_AMPALOCACAOMENSALCCPFCNPJ: TStringField
      FieldName = 'CCPFCNPJ'
      Size = 11
    end
    object QRY_AMPALOCACAOMENSALDDTNASC: TStringField
      FieldName = 'DDTNASC'
      Size = 10
    end
    object QRY_AMPALOCACAOMENSALNIDTBXSET: TStringField
      FieldName = 'NIDTBXSET'
      Size = 10
    end
    object QRY_AMPALOCACAOMENSALNIDCADCRG: TStringField
      FieldName = 'NIDCADCRG'
      Size = 10
    end
    object QRY_AMPALOCACAOMENSALNIDTAGSLR: TStringField
      FieldName = 'NIDTAGSLR'
      Size = 10
    end
    object QRY_AMPALOCACAOMENSALNIDTAGFFU: TStringField
      FieldName = 'NIDTAGFFU'
      Size = 12
    end
    object QRY_AMPALOCACAOMENSALNCODTCE: TStringField
      FieldName = 'NCODTCE'
      Size = 3
    end
    object QRY_AMPALOCACAOMENSALCFUNDEF: TStringField
      FieldName = 'CFUNDEF'
      Size = 1
    end
    object QRY_AMPALOCACAOMENSALNCODTCE3: TStringField
      FieldName = 'NCODTCE3'
      Size = 2
    end
    object QRY_AMPALOCACAOMENSALNPERPATRON: TStringField
      FieldName = 'NPERPATRON'
      Size = 5
    end
    object QRY_AMPALOCACAOMENSALNPERPROP: TStringField
      FieldName = 'NPERPROP'
      Size = 5
    end
    object QRY_AMPALOCACAOMENSALNCODTCE2: TStringField
      FieldName = 'NCODTCE2'
      Size = 1
    end
    object QRY_AMPALOCACAOMENSALCORGAOORI: TStringField
      FieldName = 'CORGAOORI'
      Size = 40
    end
    object QRY_AMPALOCACAOMENSALNMESPGTO: TStringField
      FieldName = 'NMESPGTO'
      Size = 2
    end
    object QRY_AMPALOCACAOMENSALNANOPGTO: TStringField
      FieldName = 'NANOPGTO'
      Size = 4
    end
    object QRY_AMPALOCACAOMENSALNIDCADTCE: TFloatField
      FieldName = 'NIDCADTCE'
    end
  end
  object QRY_AMPVALORESMENSAIS: TOraQuery
    SQLInsert.Strings = (
      'INSERT INTO ampvaloresmensais'
      
        '  (NPMNOTCE, CCPFCNPJ, DDTNASC, NIDTBXSET, NIDTAGSLR, NIDTAGFFU,' +
        ' NMESPGTO, NANOPGTO, NCODTCE, NVALOREVE, NIDCADCRG, NIDCADTCE)'
      'VALUES'
      
        '  (:NPMNOTCE, :CCPFCNPJ, :DDTNASC, :NIDTBXSET, :NIDTAGSLR, :NIDT' +
        'AGFFU, :NMESPGTO, :NANOPGTO, :NCODTCE, :NVALOREVE, :NIDCADCRG, :' +
        'NIDCADTCE)')
    SQLDelete.Strings = (
      'DELETE FROM ampvaloresmensais'
      'WHERE'
      '  NPMNOTCE = :NPMNOTCE and'
      '  CCPFCNPJ = :CCPFCNPJ and'
      '  DDTNASC = :DDTNASC and'
      '  NIDTBXSET = :NIDTBXSET and'
      '  NIDTAGSLR = :NIDTAGSLR and'
      '  NIDTAGFFU = :NIDTAGFFU and'
      '  NMESPGTO = :NMESPGTO and'
      '  NANOPGTO = :NANOPGTO and'
      '  NCODTCE = :NCODTCE and'
      '  NIDCADCRG = :NIDCADCRG')
    SQLUpdate.Strings = (
      'UPDATE ampvaloresmensais'
      'SET'
      '  NPMNOTCE = :NPMNOTCE,'
      '  CCPFCNPJ = :CCPFCNPJ,'
      '  DDTNASC = :DDTNASC,'
      '  NIDTBXSET = :NIDTBXSET,'
      '  NIDTAGSLR = :NIDTAGSLR,'
      '  NIDTAGFFU = :NIDTAGFFU,'
      '  NMESPGTO = :NMESPGTO,'
      '  NANOPGTO = :NANOPGTO,'
      '  NCODTCE = :NCODTCE,'
      '  NVALOREVE = :NVALOREVE,'
      '  NIDCADCRG = :NIDCADCRG,'
      '  NIDCADTCE = :NIDCADTCE'
      'WHERE'
      '  NPMNOTCE = :OLD_NPMNOTCE and'
      '  CCPFCNPJ = :OLD_CCPFCNPJ and'
      '  DDTNASC = :OLD_DDTNASC and'
      '  NIDTBXSET = :OLD_NIDTBXSET and'
      '  NIDTAGSLR = :OLD_NIDTAGSLR and'
      '  NIDTAGFFU = :OLD_NIDTAGFFU and'
      '  NMESPGTO = :OLD_NMESPGTO and'
      '  NANOPGTO = :OLD_NANOPGTO and'
      '  NCODTCE = :OLD_NCODTCE and'
      '  NIDCADCRG = :OLD_NIDCADCRG')
    SQLLock.Strings = (
      'SELECT * FROM ampvaloresmensais'
      'WHERE'
      '  NPMNOTCE = :NPMNOTCE and'
      '  CCPFCNPJ = :CCPFCNPJ and'
      '  DDTNASC = :DDTNASC and'
      '  NIDTBXSET = :NIDTBXSET and'
      '  NIDTAGSLR = :NIDTAGSLR and'
      '  NIDTAGFFU = :NIDTAGFFU and'
      '  NMESPGTO = :NMESPGTO and'
      '  NANOPGTO = :NANOPGTO and'
      '  NCODTCE = :NCODTCE and'
      '  NIDCADCRG = :NIDCADCRG'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      'WHERE'
      '  NPMNOTCE = :NPMNOTCE and'
      '  CCPFCNPJ = :CCPFCNPJ and'
      '  DDTNASC = :DDTNASC and'
      '  NIDTBXSET = :NIDTBXSET and'
      '  NIDTAGSLR = :NIDTAGSLR and'
      '  NIDTAGFFU = :NIDTAGFFU and'
      '  NMESPGTO = :NMESPGTO and'
      '  NANOPGTO = :NANOPGTO and'
      '  NCODTCE = :NCODTCE and'
      '  NIDCADCRG = :NIDCADCRG')
    Session = DMControle.Conexao
    SQL.Strings = (
      'select * from ampvaloresmensais')
    Left = 144
    Top = 260
    object QRY_AMPVALORESMENSAISNPMNOTCE: TStringField
      FieldName = 'NPMNOTCE'
      Size = 7
    end
    object QRY_AMPVALORESMENSAISCCPFCNPJ: TStringField
      FieldName = 'CCPFCNPJ'
      Size = 11
    end
    object QRY_AMPVALORESMENSAISDDTNASC: TStringField
      FieldName = 'DDTNASC'
      Size = 10
    end
    object QRY_AMPVALORESMENSAISNIDTBXSET: TStringField
      FieldName = 'NIDTBXSET'
      Size = 10
    end
    object QRY_AMPVALORESMENSAISNIDCADCRG: TStringField
      FieldName = 'NIDCADCRG'
      Size = 10
    end
    object QRY_AMPVALORESMENSAISNIDTAGSLR: TStringField
      FieldName = 'NIDTAGSLR'
      Size = 10
    end
    object QRY_AMPVALORESMENSAISNIDTAGFFU: TStringField
      FieldName = 'NIDTAGFFU'
      Size = 12
    end
    object QRY_AMPVALORESMENSAISNMESPGTO: TStringField
      FieldName = 'NMESPGTO'
      Size = 2
    end
    object QRY_AMPVALORESMENSAISNANOPGTO: TStringField
      FieldName = 'NANOPGTO'
      Size = 4
    end
    object QRY_AMPVALORESMENSAISNCODTCE: TStringField
      FieldName = 'NCODTCE'
      Size = 3
    end
    object QRY_AMPVALORESMENSAISNVALOREVE: TStringField
      DisplayWidth = 8
      FieldName = 'NVALOREVE'
      Size = 8
    end
    object QRY_AMPVALORESMENSAISNIDCADTCE: TFloatField
      FieldName = 'NIDCADTCE'
    end
  end
  object QRY_AMPEDITAL: TOraQuery
    SQLInsert.Strings = (
      'INSERT INTO ampedital'
      
        '  (NPMNOTCE, NCODTCE, CNROEDITAL, DDTEDITAL, DDTPUBLICA, CDESCRI' +
        'EDI, NIDTBXVPB, CNOMEARQ, NMESPGTO, NANOPGTO, NIDCADTCE)'
      'VALUES'
      
        '  (:NPMNOTCE, :NCODTCE, :CNROEDITAL, :DDTEDITAL, :DDTPUBLICA, :C' +
        'DESCRIEDI, :NIDTBXVPB, :CNOMEARQ, :NMESPGTO, :NANOPGTO, :NIDCADT' +
        'CE)')
    SQLDelete.Strings = (
      'DELETE FROM ampedital'
      'WHERE'
      '  NPMNOTCE = :NPMNOTCE and'
      '  NCODTCE = :NCODTCE and'
      '  CNROEDITAL = :CNROEDITAL and'
      '  DDTEDITAL = :DDTEDITAL')
    SQLUpdate.Strings = (
      'UPDATE ampedital'
      'SET'
      '  NPMNOTCE = :NPMNOTCE,'
      '  NCODTCE = :NCODTCE,'
      '  CNROEDITAL = :CNROEDITAL,'
      '  DDTEDITAL = :DDTEDITAL,'
      '  DDTPUBLICA = :DDTPUBLICA,'
      '  CDESCRIEDI = :CDESCRIEDI,'
      '  NIDTBXVPB = :NIDTBXVPB,'
      '  CNOMEARQ = :CNOMEARQ,'
      '  NMESPGTO = :NMESPGTO,'
      '  NANOPGTO = :NANOPGTO,'
      '  NIDCADTCE = :NIDCADTCE'
      'WHERE'
      '  NPMNOTCE = :OLD_NPMNOTCE and'
      '  NCODTCE = :OLD_NCODTCE and'
      '  CNROEDITAL = :OLD_CNROEDITAL and'
      '  DDTEDITAL = :OLD_DDTEDITAL')
    SQLLock.Strings = (
      'SELECT * FROM ampedital'
      'WHERE'
      '  NPMNOTCE = :NPMNOTCE and'
      '  NCODTCE = :NCODTCE and'
      '  CNROEDITAL = :CNROEDITAL and'
      '  DDTEDITAL = :DDTEDITAL'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      'WHERE'
      '  NPMNOTCE = :NPMNOTCE and'
      '  NCODTCE = :NCODTCE and'
      '  CNROEDITAL = :CNROEDITAL and'
      '  DDTEDITAL = :DDTEDITAL')
    Session = DMControle.Conexao
    SQL.Strings = (
      'select * from ampedital')
    Left = 116
    Top = 260
    object QRY_AMPEDITALNPMNOTCE: TStringField
      FieldName = 'NPMNOTCE'
      Size = 7
    end
    object QRY_AMPEDITALNCODTCE: TStringField
      FieldName = 'NCODTCE'
      Size = 2
    end
    object QRY_AMPEDITALCNROEDITAL: TStringField
      FieldName = 'CNROEDITAL'
      Size = 10
    end
    object QRY_AMPEDITALDDTEDITAL: TStringField
      FieldName = 'DDTEDITAL'
      Size = 10
    end
    object QRY_AMPEDITALDDTPUBLICA: TStringField
      FieldName = 'DDTPUBLICA'
      Size = 10
    end
    object QRY_AMPEDITALCDESCRIEDI: TStringField
      FieldName = 'CDESCRIEDI'
      Size = 250
    end
    object QRY_AMPEDITALNIDTBXVPB: TStringField
      FieldName = 'NIDTBXVPB'
      Size = 3
    end
    object QRY_AMPEDITALCNOMEARQ: TStringField
      FieldName = 'CNOMEARQ'
      Size = 250
    end
    object QRY_AMPEDITALNMESPGTO: TStringField
      FieldName = 'NMESPGTO'
      Size = 2
    end
    object QRY_AMPEDITALNANOPGTO: TStringField
      FieldName = 'NANOPGTO'
      Size = 4
    end
    object QRY_AMPEDITALNIDCADTCE: TFloatField
      FieldName = 'NIDCADTCE'
    end
  end
  object QRY_AMPAPOSENTADORIA: TOraQuery
    SQLInsert.Strings = (
      'INSERT INTO ampaposentadoria'
      
        '  (NPMNOTCE, CCPFCNPJ, DDTNASC, NCODTCE, CNROAPOSEN, NPERCENT, C' +
        'DESCRCRG, NIDTAGSLR, NPMNOTCE2, DDTEFEITOS, DDTFIM, NMESPGTO, NA' +
        'NOPGTO, NIDCADTCE)'
      'VALUES'
      
        '  (:NPMNOTCE, :CCPFCNPJ, :DDTNASC, :NCODTCE, :CNROAPOSEN, :NPERC' +
        'ENT, :CDESCRCRG, :NIDTAGSLR, :NPMNOTCE2, :DDTEFEITOS, :DDTFIM, :' +
        'NMESPGTO, :NANOPGTO, :NIDCADTCE)')
    SQLDelete.Strings = (
      'DELETE FROM ampaposentadoria'
      'WHERE'
      '  NPMNOTCE = :NPMNOTCE and'
      '  CCPFCNPJ = :CCPFCNPJ and'
      '  DDTNASC = :DDTNASC and'
      '  NCODTCE = :NCODTCE and'
      '  CNROAPOSEN = :CNROAPOSEN and'
      '  NMESPGTO = :NMESPGTO and'
      '  NANOPGTO = :NANOPGTO')
    SQLUpdate.Strings = (
      'UPDATE ampaposentadoria'
      'SET'
      '  NPMNOTCE = :NPMNOTCE,'
      '  CCPFCNPJ = :CCPFCNPJ,'
      '  DDTNASC = :DDTNASC,'
      '  NCODTCE = :NCODTCE,'
      '  CNROAPOSEN = :CNROAPOSEN,'
      '  NPERCENT = :NPERCENT,'
      '  CDESCRCRG = :CDESCRCRG,'
      '  NIDTAGSLR = :NIDTAGSLR,'
      '  NPMNOTCE2 = :NPMNOTCE2,'
      '  DDTEFEITOS = :DDTEFEITOS,'
      '  DDTFIM = :DDTFIM,'
      '  NMESPGTO = :NMESPGTO,'
      '  NANOPGTO = :NANOPGTO,'
      '  NIDCADTCE = :NIDCADTCE'
      'WHERE'
      '  NPMNOTCE = :OLD_NPMNOTCE and'
      '  CCPFCNPJ = :OLD_CCPFCNPJ and'
      '  DDTNASC = :OLD_DDTNASC and'
      '  NCODTCE = :OLD_NCODTCE and'
      '  CNROAPOSEN = :OLD_CNROAPOSEN and'
      '  NMESPGTO = :OLD_NMESPGTO and'
      '  NANOPGTO = :OLD_NANOPGTO')
    SQLLock.Strings = (
      'SELECT * FROM ampaposentadoria'
      'WHERE'
      '  NPMNOTCE = :NPMNOTCE and'
      '  CCPFCNPJ = :CCPFCNPJ and'
      '  DDTNASC = :DDTNASC and'
      '  NCODTCE = :NCODTCE and'
      '  CNROAPOSEN = :CNROAPOSEN and'
      '  NMESPGTO = :NMESPGTO and'
      '  NANOPGTO = :NANOPGTO'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      'WHERE'
      '  NPMNOTCE = :NPMNOTCE and'
      '  CCPFCNPJ = :CCPFCNPJ and'
      '  DDTNASC = :DDTNASC and'
      '  NCODTCE = :NCODTCE and'
      '  CNROAPOSEN = :CNROAPOSEN')
    Session = DMControle.Conexao
    SQL.Strings = (
      'select * from ampaposentadoria')
    Left = 60
    Top = 352
    object QRY_AMPAPOSENTADORIANPMNOTCE: TStringField
      FieldName = 'NPMNOTCE'
      Size = 7
    end
    object QRY_AMPAPOSENTADORIACCPFCNPJ: TStringField
      FieldName = 'CCPFCNPJ'
      Size = 11
    end
    object QRY_AMPAPOSENTADORIADDTNASC: TStringField
      FieldName = 'DDTNASC'
      Size = 10
    end
    object QRY_AMPAPOSENTADORIANCODTCE: TStringField
      FieldName = 'NCODTCE'
      Size = 2
    end
    object QRY_AMPAPOSENTADORIACNROAPOSEN: TStringField
      FieldName = 'CNROAPOSEN'
      Size = 12
    end
    object QRY_AMPAPOSENTADORIANPERCENT: TStringField
      FieldName = 'NPERCENT'
      Size = 5
    end
    object QRY_AMPAPOSENTADORIACDESCRCRG: TStringField
      FieldName = 'CDESCRCRG'
      Size = 40
    end
    object QRY_AMPAPOSENTADORIANIDTAGSLR: TStringField
      FieldName = 'NIDTAGSLR'
      Size = 5
    end
    object QRY_AMPAPOSENTADORIANPMNOTCE2: TStringField
      FieldName = 'NPMNOTCE2'
      Size = 7
    end
    object QRY_AMPAPOSENTADORIADDTEFEITOS: TStringField
      FieldName = 'DDTEFEITOS'
      Size = 10
    end
    object QRY_AMPAPOSENTADORIADDTFIM: TStringField
      FieldName = 'DDTFIM'
      Size = 10
    end
    object QRY_AMPAPOSENTADORIANMESPGTO: TStringField
      FieldName = 'NMESPGTO'
      Size = 2
    end
    object QRY_AMPAPOSENTADORIANANOPGTO: TStringField
      FieldName = 'NANOPGTO'
      Size = 4
    end
    object QRY_AMPAPOSENTADORIANIDCADTCE: TFloatField
      FieldName = 'NIDCADTCE'
    end
  end
  object QRY_AMPATOSCARGOS: TOraQuery
    SQLInsert.Strings = (
      'INSERT INTO ampatoscargo'
      
        '  (NPMNOTCE, NCODTCE, CNROATO, DDTCRIACAO, DDTPUBLICA, NIDTBXVPB' +
        ', CNOMEARQ, NMESPGTO, NANOPGTO, NIDCADTCE)'
      'VALUES'
      
        '  (:NPMNOTCE, :NCODTCE, :CNROATO, :DDTCRIACAO, :DDTPUBLICA, :NID' +
        'TBXVPB, :CNOMEARQ, :NMESPGTO, :NANOPGTO, :NIDCADTCE)')
    SQLDelete.Strings = (
      'DELETE FROM ampatoscargo'
      'WHERE'
      '  NPMNOTCE = :NPMNOTCE and'
      '  NCODTCE = :NCODTCE and'
      '  CNROATO = :CNROATO and'
      '  DDTCRIACAO = :DDTCRIACAO')
    SQLUpdate.Strings = (
      'UPDATE ampatoscargo'
      'SET'
      '  NPMNOTCE = :NPMNOTCE,'
      '  NCODTCE = :NCODTCE,'
      '  CNROATO = :CNROATO,'
      '  DDTCRIACAO = :DDTCRIACAO,'
      '  DDTPUBLICA = :DDTPUBLICA,'
      '  NIDTBXVPB = :NIDTBXVPB,'
      '  CNOMEARQ = :CNOMEARQ,'
      '  NMESPGTO = :NMESPGTO,'
      '  NANOPGTO = :NANOPGTO,'
      '  NIDCADTCE = :NIDCADTCE'
      'WHERE'
      '  NPMNOTCE = :OLD_NPMNOTCE and'
      '  NCODTCE = :OLD_NCODTCE and'
      '  CNROATO = :OLD_CNROATO and'
      '  DDTCRIACAO = :OLD_DDTCRIACAO')
    SQLLock.Strings = (
      'SELECT * FROM ampatoscargo'
      'WHERE'
      '  NPMNOTCE = :NPMNOTCE and'
      '  NCODTCE = :NCODTCE and'
      '  CNROATO = :CNROATO and'
      '  DDTCRIACAO = :DDTCRIACAO'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      'WHERE'
      '  NPMNOTCE = :NPMNOTCE and'
      '  NCODTCE = :NCODTCE and'
      '  CNROATO = :CNROATO and'
      '  DDTCRIACAO = :DDTCRIACAO')
    Session = DMControle.Conexao
    SQL.Strings = (
      'select * from ampatoscargo')
    Left = 116
    Top = 352
    object QRY_AMPATOSCARGOSNPMNOTCE: TStringField
      FieldName = 'NPMNOTCE'
      Size = 7
    end
    object QRY_AMPATOSCARGOSNCODTCE: TStringField
      FieldName = 'NCODTCE'
      Size = 2
    end
    object QRY_AMPATOSCARGOSCNROATO: TStringField
      FieldName = 'CNROATO'
      Size = 10
    end
    object QRY_AMPATOSCARGOSDDTCRIACAO: TStringField
      FieldName = 'DDTCRIACAO'
      Size = 10
    end
    object QRY_AMPATOSCARGOSDDTPUBLICA: TStringField
      FieldName = 'DDTPUBLICA'
      Size = 10
    end
    object QRY_AMPATOSCARGOSNIDTBXVPB: TStringField
      FieldName = 'NIDTBXVPB'
      Size = 3
    end
    object QRY_AMPATOSCARGOSCNOMEARQ: TStringField
      FieldName = 'CNOMEARQ'
      Size = 250
    end
    object QRY_AMPATOSCARGOSNMESPGTO: TStringField
      FieldName = 'NMESPGTO'
      Size = 2
    end
    object QRY_AMPATOSCARGOSNANOPGTO: TStringField
      FieldName = 'NANOPGTO'
      Size = 4
    end
    object QRY_AMPATOSCARGOSNIDCADTCE: TFloatField
      FieldName = 'NIDCADTCE'
    end
  end
  object QRY_AMPHISTORICOATOSCARGO: TOraQuery
    SQLInsert.Strings = (
      'INSERT INTO amphistoricoatoscargo'
      
        '  (NPMNOTCE, CNROATO, DDTPUBLICA, NCODTCE, NCODTCE2, NCODTCE3, N' +
        'TOTVAGAS, CCAMPO1, NMESPGTO, NANOPGTO, NIDCADCRG, NIDCADTCE)'
      'VALUES'
      
        '  (:NPMNOTCE, :CNROATO, :DDTPUBLICA, :NCODTCE, :NCODTCE2, :NCODT' +
        'CE3, :NTOTVAGAS, :CCAMPO1, :NMESPGTO, :NANOPGTO, :NIDCADCRG, :NI' +
        'DCADTCE)')
    SQLDelete.Strings = (
      'DELETE FROM amphistoricoatoscargo'
      'WHERE'
      '  NPMNOTCE = :NPMNOTCE and'
      '  CNROATO = :CNROATO and'
      '  DDTPUBLICA = :DDTPUBLICA and'
      '  NCODTCE = :NCODTCE and'
      '  NCODTCE2 = :NCODTCE2 and'
      '  NCODTCE3 = :NCODTCE3')
    SQLUpdate.Strings = (
      'UPDATE amphistoricoatoscargo'
      'SET'
      '  NPMNOTCE = :NPMNOTCE,'
      '  CNROATO = :CNROATO,'
      '  DDTPUBLICA = :DDTPUBLICA,'
      '  NCODTCE = :NCODTCE,'
      '  NCODTCE2 = :NCODTCE2,'
      '  NCODTCE3 = :NCODTCE3,'
      '  NTOTVAGAS = :NTOTVAGAS,'
      '  CCAMPO1 = :CCAMPO1,'
      '  NMESPGTO = :NMESPGTO,'
      '  NANOPGTO = :NANOPGTO,'
      '  NIDCADCRG = :NIDCADCRG,'
      '  NIDCADTCE = :NIDCADTCE'
      'WHERE'
      '  NPMNOTCE = :OLD_NPMNOTCE and'
      '  CNROATO = :OLD_CNROATO and'
      '  DDTPUBLICA = :OLD_DDTPUBLICA and'
      '  NCODTCE = :OLD_NCODTCE and'
      '  NCODTCE2 = :OLD_NCODTCE2 and'
      '  NCODTCE3 = :OLD_NCODTCE3')
    SQLLock.Strings = (
      'SELECT * FROM amphistoricoatoscargo'
      'WHERE'
      '  NPMNOTCE = :NPMNOTCE and'
      '  CNROATO = :CNROATO and'
      '  DDTPUBLICA = :DDTPUBLICA and'
      '  NCODTCE = :NCODTCE and'
      '  NCODTCE2 = :NCODTCE2 and'
      '  NCODTCE3 = :NCODTCE3'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      'WHERE'
      '  NPMNOTCE = :NPMNOTCE and'
      '  CNROATO = :CNROATO and'
      '  DDTPUBLICA = :DDTPUBLICA and'
      '  NCODTCE = :NCODTCE and'
      '  NCODTCE2 = :NCODTCE2 and'
      '  NCODTCE3 = :NCODTCE3')
    Session = DMControle.Conexao
    SQL.Strings = (
      'select * from amphistoricoatoscargo')
    Left = 144
    Top = 352
    object QRY_AMPHISTORICOATOSCARGONPMNOTCE: TStringField
      FieldName = 'NPMNOTCE'
      Size = 7
    end
    object QRY_AMPHISTORICOATOSCARGOCNROATO: TStringField
      FieldName = 'CNROATO'
      Size = 10
    end
    object QRY_AMPHISTORICOATOSCARGODDTPUBLICA: TStringField
      FieldName = 'DDTPUBLICA'
      Size = 10
    end
    object QRY_AMPHISTORICOATOSCARGONCODTCE: TStringField
      FieldName = 'NCODTCE'
      Size = 2
    end
    object QRY_AMPHISTORICOATOSCARGONCODTCE2: TStringField
      FieldName = 'NCODTCE2'
      Size = 3
    end
    object QRY_AMPHISTORICOATOSCARGONCODTCE3: TStringField
      FieldName = 'NCODTCE3'
      Size = 3
    end
    object QRY_AMPHISTORICOATOSCARGONTOTVAGAS: TStringField
      FieldName = 'NTOTVAGAS'
      Size = 4
    end
    object QRY_AMPHISTORICOATOSCARGOCCAMPO1: TStringField
      FieldName = 'CCAMPO1'
      Size = 5
    end
    object QRY_AMPHISTORICOATOSCARGONMESPGTO: TStringField
      FieldName = 'NMESPGTO'
      Size = 2
    end
    object QRY_AMPHISTORICOATOSCARGONANOPGTO: TStringField
      FieldName = 'NANOPGTO'
      Size = 4
    end
    object QRY_AMPHISTORICOATOSCARGONIDCADCRG: TStringField
      FieldName = 'NIDCADCRG'
      Size = 10
    end
    object QRY_AMPHISTORICOATOSCARGONIDCADTCE: TFloatField
      FieldName = 'NIDCADTCE'
    end
  end
  object QRY_END: TOraQuery
    SQL.Strings = (
      'select tbxloc.CNOMELOC, cadlog.CNOMELOG, tbxbai.CNOMEBAI,'
      '       tbxufd.CSIGLAUF, cadlog.NCEP, tbxloc.CDDD'
      'from tbxloc, cadlog, tbxbai, tbxufd'
      'where cadlog.NIDTBXBAI = tbxbai.NIDTBXBAI and'
      '      tbxbai.NIDTBXLOC = tbxloc.NIDTBXLOC and'
      '      tbxloc.NIDTBXUFD = tbxufd.NIDTBXUFD and'
      '      cadlog.NIDCADLOG = :nidcadlog '
      '      ')
    MasterSource = DTS_TCE
    Left = 23
    Top = 109
    ParamData = <
      item
        DataType = ftFloat
        Name = 'NIDCADLOG'
        ParamType = ptInput
        Value = 669847
      end>
    object QRY_ENDCNOMELOC: TStringField
      FieldName = 'CNOMELOC'
      Size = 60
    end
    object QRY_ENDCNOMELOG: TStringField
      FieldName = 'CNOMELOG'
      Size = 80
    end
    object QRY_ENDCNOMEBAI: TStringField
      FieldName = 'CNOMEBAI'
      Size = 72
    end
    object QRY_ENDCSIGLAUF: TStringField
      FieldName = 'CSIGLAUF'
      Size = 2
    end
    object QRY_ENDNCEP: TIntegerField
      FieldName = 'NCEP'
    end
    object QRY_ENDCDDD: TStringField
      FieldName = 'CDDD'
      Size = 3
    end
  end
  object QRY_ORGDPT: TOraQuery
    SQL.Strings = (
      'select tbxorg.NIDTBXORG, tbxorg.CDESCRIORG, '
      '       tbxdpt.NIDTBXDPT, tbxdpt.CDESCRIDPT,'
      '       tbxfgv.NCODTCE, tbxfgv.CFUNCAO, tagodp.NIDTAGODP'
      'from tbxorg, tbxdpt, tagodp, tbxfgv'
      'where tagodp.NIDTBXORG = tbxorg.NIDTBXORG and'
      '      tagodp.NIDTBXDPT = tbxdpt.NIDTBXDPT and'
      '      tbxorg.NIDTBXFGV = tbxfgv.NIDTBXFGV and'
      '      tagodp.NIDTAGODP = :nidtagodp')
    MasterSource = DTS_TCE
    Left = 106
    Top = 109
    ParamData = <
      item
        DataType = ftFloat
        Name = 'NIDTAGODP'
        ParamType = ptInput
        Value = 290
      end>
    object QRY_ORGDPTNIDTBXORG: TFloatField
      FieldName = 'NIDTBXORG'
      Required = True
    end
    object QRY_ORGDPTCDESCRIORG: TStringField
      FieldName = 'CDESCRIORG'
      Required = True
      Size = 50
    end
    object QRY_ORGDPTNIDTBXDPT: TFloatField
      FieldName = 'NIDTBXDPT'
      Required = True
    end
    object QRY_ORGDPTCDESCRIDPT: TStringField
      FieldName = 'CDESCRIDPT'
      Required = True
      Size = 40
    end
    object QRY_ORGDPTNCODTCE: TFloatField
      FieldName = 'NCODTCE'
    end
    object QRY_ORGDPTCFUNCAO: TStringField
      FieldName = 'CFUNCAO'
      Size = 30
    end
    object QRY_ORGDPTNIDTAGODP: TFloatField
      FieldName = 'NIDTAGODP'
      Required = True
    end
  end
  object QRY_DTPSET: TOraQuery
    SQL.Strings = (
      'select tbxorg.NIDTBXORG, tbxorg.CDESCRIORG, '
      '       tbxdpt.NIDTBXDPT, tbxdpt.CDESCRIDPT,'
      '       tbxfgv.NCODTCE, tbxfgv.CFUNCAO, tagodp.NIDTAGODP'
      'from tbxorg, tbxdpt, tagodp, tbxfgv'
      'where tagodp.NIDTBXORG = tbxorg.NIDTBXORG and'
      '      tagodp.NIDTBXDPT = tbxdpt.NIDTBXDPT and'
      '      tbxdpt.NIDTBXFGV = tbxfgv.NIDTBXFGV and'
      '      tagodp.NIDTAGODP = :nidtagodp')
    MasterSource = DTS_TCE
    Left = 90
    Top = 5
    ParamData = <
      item
        DataType = ftFloat
        Name = 'NIDTAGODP'
        ParamType = ptInput
        Value = Null
      end>
    object QRY_DTPSETNIDTBXORG: TFloatField
      FieldName = 'NIDTBXORG'
      Required = True
    end
    object QRY_DTPSETCDESCRIORG: TStringField
      FieldName = 'CDESCRIORG'
      Required = True
      Size = 50
    end
    object QRY_DTPSETNIDTBXDPT: TFloatField
      FieldName = 'NIDTBXDPT'
      Required = True
    end
    object QRY_DTPSETCDESCRIDPT: TStringField
      FieldName = 'CDESCRIDPT'
      Required = True
      Size = 40
    end
    object QRY_DTPSETNCODTCE: TFloatField
      FieldName = 'NCODTCE'
    end
    object QRY_DTPSETCFUNCAO: TStringField
      FieldName = 'CFUNCAO'
      Size = 30
    end
    object QRY_DTPSETNIDTAGODP: TFloatField
      FieldName = 'NIDTAGODP'
      Required = True
    end
  end
  object DTS_DTPSET: TOraDataSource
    DataSet = QRY_DTPSET
    Left = 94
    Top = 57
  end
  object QRY_SETFGV: TOraQuery
    SQL.Strings = (
      'select tbxfgv.* '
      'from tbxfgv '
      'where tbxfgv.NIDTBXFGV = :NIDTBXFGV')
    MasterSource = DTS_DTPSET
    Left = 195
    Top = 157
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'NIDTBXFGV'
      end>
    object QRY_SETFGVNIDTBXFGV: TFloatField
      FieldName = 'NIDTBXFGV'
      Required = True
    end
    object QRY_SETFGVCFUNCAO: TStringField
      FieldName = 'CFUNCAO'
      Size = 30
    end
    object QRY_SETFGVNCODTCE: TFloatField
      FieldName = 'NCODTCE'
    end
  end
  object QRY_CADCRG: TOraQuery
    SQL.Strings = (
      'select cadcrg.*,tbxtct.NCODTCE,tbxpcr.NCODTCE as NCODTCE2,'
      
        'tbxcat.NCODTCE as NCODTCE3, tbxrpv.nperpatron, tbxrpv.NCODTCE as' +
        ' NCODTCE4,'
      
        '(select count(*) from tagffu where nidcadcrg = :nidcadcrg) as va' +
        'gas'
      'from cadcrg, tbxtcr, tbxtct, tbxpcr, tbxcat, tagrpc, tbxrpv'
      'where cadcrg.NIDTBXTCR = tbxtcr.NIDTBXTCR and'
      '      tbxtcr.NIDTBXTCT = tbxtct.NIDTBXTCT and'
      '      tbxtcr.NIDTBXTCR = tagrpc.NIDTBXTCR and'
      '      tagrpc.NIDTBXRPV = tbxrpv.NIDTBXRPV and'
      '      cadcrg.NIDTBXPCR = tbxpcr.NIDTBXPCR and'
      '      cadcrg.NIDTBXCAT = tbxcat.NIDTBXCAT and'
      '      cadcrg.NIDCADCRG = :nidcadcrg')
    MasterSource = DTS_TCE
    Left = 175
    Top = 5
    ParamData = <
      item
        DataType = ftFloat
        Name = 'NIDCADCRG'
        ParamType = ptInput
        Value = 533
      end>
    object QRY_CADCRGNIDCADCRG: TFloatField
      FieldName = 'NIDCADCRG'
      Required = True
    end
    object QRY_CADCRGCDESCRICRG: TStringField
      FieldName = 'CDESCRICRG'
      Size = 40
    end
    object QRY_CADCRGNTOTVAGAS: TFloatField
      FieldName = 'NTOTVAGAS'
    end
    object QRY_CADCRGNIDTBXTCR: TFloatField
      FieldName = 'NIDTBXTCR'
      Required = True
    end
    object QRY_CADCRGNIDTBXGRO: TFloatField
      FieldName = 'NIDTBXGRO'
      Required = True
    end
    object QRY_CADCRGNIDTBXSGO: TFloatField
      FieldName = 'NIDTBXSGO'
      Required = True
    end
    object QRY_CADCRGNIDTBXSLR: TFloatField
      FieldName = 'NIDTBXSLR'
      Required = True
    end
    object QRY_CADCRGNIDTBXPCR: TFloatField
      FieldName = 'NIDTBXPCR'
    end
    object QRY_CADCRGNCODTCE: TFloatField
      FieldName = 'NCODTCE'
      Required = True
    end
    object QRY_CADCRGNCODTCE2: TFloatField
      FieldName = 'NCODTCE2'
      Required = True
    end
    object QRY_CADCRGVAGAS: TFloatField
      FieldName = 'VAGAS'
    end
    object QRY_CADCRGCGRADUACAO: TStringField
      FieldName = 'CGRADUACAO'
      Size = 250
    end
    object QRY_CADCRGNIDSLRFIM: TFloatField
      FieldName = 'NIDSLRFIM'
      Required = True
    end
    object QRY_CADCRGNHORASSEM: TFloatField
      FieldName = 'NHORASSEM'
    end
    object QRY_CADCRGNIDTAGSLR: TFloatField
      FieldName = 'NIDTAGSLR'
      Required = True
    end
    object QRY_CADCRGNIDTBXCAT: TFloatField
      FieldName = 'NIDTBXCAT'
    end
    object QRY_CADCRGNCODTCE3: TFloatField
      FieldName = 'NCODTCE3'
      Required = True
    end
    object QRY_CADCRGNCODTCE4: TFloatField
      FieldName = 'NCODTCE4'
    end
    object QRY_CADCRGNPERPATRON: TFloatField
      FieldName = 'NPERPATRON'
    end
  end
  object DTS_CADCRG: TOraDataSource
    DataSet = QRY_CADCRG
    Left = 175
    Top = 57
  end
  object QRY_TAGSLR: TOraQuery
    SQL.Strings = (
      'select tagslr.*'
      'from tagslr'
      'where tagslr.NIDTBXSLR = :nidtbxslr and '
      
        '      (tagslr.CCLASSE >= (select cclasse from tagslr where nidta' +
        'gslr = :nidtagslr) and'
      
        '       tagslr.NNIVEL >= (select nnivel from tagslr where nidtags' +
        'lr = :nidtagslr)) and'
      
        '      (tagslr.CCLASSE <= (select cclasse from tagslr where nidta' +
        'gslr = :nidslrfim) and'
      
        '       tagslr.NNIVEL <= (select nnivel from tagslr where nidtags' +
        'lr = :nidslrfim))')
    MasterSource = DTS_CADCRG
    Left = 195
    Top = 109
    ParamData = <
      item
        DataType = ftFloat
        Name = 'NIDTBXSLR'
        ParamType = ptInput
        Value = 1
      end
      item
        DataType = ftFloat
        Name = 'NIDTAGSLR'
        ParamType = ptInput
        Value = 1
      end
      item
        DataType = ftFloat
        Name = 'NIDSLRFIM'
        ParamType = ptInput
        Value = 9
      end>
    object QRY_TAGSLRNIDTAGSLR: TFloatField
      FieldName = 'NIDTAGSLR'
      Required = True
    end
    object QRY_TAGSLRCCLASSE: TStringField
      FieldName = 'CCLASSE'
      Size = 3
    end
    object QRY_TAGSLRNNIVEL: TFloatField
      FieldName = 'NNIVEL'
      Required = True
    end
    object QRY_TAGSLRNVALORSLR: TFloatField
      FieldName = 'NVALORSLR'
      Required = True
    end
    object QRY_TAGSLRNIDTBXSLR: TFloatField
      FieldName = 'NIDTBXSLR'
      Required = True
    end
  end
  object QRY_CADMOV: TOraQuery
    SQLInsert.Strings = (
      'INSERT INTO cadmov'
      '  (CENVIADOTC, NMESPGTO, NANOPGTO, CENVIADRVG)'
      'VALUES'
      '  (:CENVIADOTC, :NMESPGTO, :NANOPGTO, :CENVIADRVG)')
    SQLDelete.Strings = (
      'DELETE FROM cadmov'
      'WHERE'
      '  NIDCADMOV = :NIDCADMOV')
    SQLUpdate.Strings = (
      'UPDATE cadmov'
      'SET'
      '  CENVIADOTC = :CENVIADOTC,'
      '  NMESPGTO = :NMESPGTO,'
      '  NANOPGTO = :NANOPGTO,'
      '  CENVIADRVG = :CENVIADRVG'
      'WHERE'
      '  NIDCADMOV = :OLD_NIDCADMOV')
    SQLLock.Strings = (
      'SELECT * FROM cadmov'
      'WHERE'
      '  NIDCADMOV = :NIDCADMOV'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      'WHERE'
      '  NIDCADMOV = :NIDCADMOV')
    SQL.Strings = (
      'select cadmov.* '
      'from cadmov, tbxtpm, tbxmvp'
      'where cadmov.nidtagffu = :nidtagffu and'
      '      cadmov.cenviadotc = '#39'N'#39' and'
      '      cadmov.nidcadato <> 0 and'
      '      cadmov.nidtbxtpm = tbxtpm.nidtbxtpm and'
      '      tbxtpm.nidtbxmvp = tbxmvp.nidtbxmvp and'
      '      tbxmvp.ncodtce is not null')
    MasterSource = DTS_TCE
    Left = 514
    Top = 235
    ParamData = <
      item
        DataType = ftFloat
        Name = 'NIDTAGFFU'
        ParamType = ptInput
        Value = 3848
      end>
    object QRY_CADMOVNIDCADMOV: TFloatField
      FieldName = 'NIDCADMOV'
      Required = True
    end
    object QRY_CADMOVNVALORSLR: TFloatField
      FieldName = 'NVALORSLR'
    end
    object QRY_CADMOVDDATAFIM: TDateTimeField
      FieldName = 'DDATAFIM'
    end
    object QRY_CADMOVDDTOBITO: TDateTimeField
      FieldName = 'DDTOBITO'
    end
    object QRY_CADMOVNPERBENEFI: TFloatField
      FieldName = 'NPERBENEFI'
    end
    object QRY_CADMOVCORGAOORI: TStringField
      FieldName = 'CORGAOORI'
      Size = 50
    end
    object QRY_CADMOVCMOTIVO: TStringField
      FieldName = 'CMOTIVO'
      Size = 250
    end
    object QRY_CADMOVNPERVANTAG: TFloatField
      FieldName = 'NPERVANTAG'
    end
    object QRY_CADMOVDDTAQSINI: TDateTimeField
      FieldName = 'DDTAQSINI'
    end
    object QRY_CADMOVDDTAQSFIM: TDateTimeField
      FieldName = 'DDTAQSFIM'
    end
    object QRY_CADMOVNIDATORVG: TFloatField
      FieldName = 'NIDATORVG'
    end
    object QRY_CADMOVNIDTPMRVG: TFloatField
      FieldName = 'NIDTPMRVG'
    end
    object QRY_CADMOVNIDCADATO: TFloatField
      FieldName = 'NIDCADATO'
    end
    object QRY_CADMOVNIDTAGFFU: TFloatField
      FieldName = 'NIDTAGFFU'
    end
    object QRY_CADMOVNIDCADCRG: TFloatField
      FieldName = 'NIDCADCRG'
    end
    object QRY_CADMOVNIDTBXEDI: TFloatField
      FieldName = 'NIDTBXEDI'
    end
    object QRY_CADMOVNIDTBXAGI: TFloatField
      FieldName = 'NIDTBXAGI'
    end
    object QRY_CADMOVNIDTBXTBI: TFloatField
      FieldName = 'NIDTBXTBI'
    end
    object QRY_CADMOVNIDTBXGRP: TFloatField
      FieldName = 'NIDTBXGRP'
    end
    object QRY_CADMOVNIDTBXLTB: TFloatField
      FieldName = 'NIDTBXLTB'
    end
    object QRY_CADMOVNIDTAGSLR: TFloatField
      FieldName = 'NIDTAGSLR'
    end
    object QRY_CADMOVNIDTBXTPM: TFloatField
      FieldName = 'NIDTBXTPM'
      Required = True
    end
    object QRY_CADMOVNIDTAGOBT: TFloatField
      FieldName = 'NIDTAGOBT'
    end
    object QRY_CADMOVNIDTAGDST: TFloatField
      FieldName = 'NIDTAGDST'
    end
    object QRY_CADMOVNIDTAGODP: TFloatField
      FieldName = 'NIDTAGODP'
    end
    object QRY_CADMOVDDATAINI: TDateTimeField
      FieldName = 'DDATAINI'
    end
    object QRY_CADMOVCULTCRGAPS: TStringField
      FieldName = 'CULTCRGAPS'
      Size = 50
    end
    object QRY_CADMOVNMATRICULA: TFloatField
      FieldName = 'NMATRICULA'
    end
    object QRY_CADMOVCENVIADOTC: TStringField
      FieldName = 'CENVIADOTC'
      FixedChar = True
      Size = 1
    end
    object QRY_CADMOVNMESPGTO: TFloatField
      FieldName = 'NMESPGTO'
    end
    object QRY_CADMOVNANOPGTO: TFloatField
      FieldName = 'NANOPGTO'
    end
    object QRY_CADMOVCENVIADRVG: TStringField
      FieldName = 'CENVIADRVG'
      FixedChar = True
      Size = 1
    end
  end
  object DTS_CADMOV: TOraDataSource
    AutoEdit = False
    DataSet = QRY_CADMOV
    Left = 518
    Top = 287
  end
  object QRY_AMPPENSAO: TOraQuery
    SQLInsert.Strings = (
      'INSERT INTO amppensao'
      
        '  (NPMNOTCE, CCPFCNPJ, DDTNASC, NCODTCE2, NIDTAGFFU, NCODTCE, CC' +
        'PFCNPJ2, DDTNASC2, NCODTCE3, CNROAPOSEN, NPERBENEFI, DDTEFEITOS,' +
        ' DDTFIM, NMESPGTO, NANOPGTO, NIDCADTCE)'
      'VALUES'
      
        '  (:NPMNOTCE, :CCPFCNPJ, :DDTNASC, :NCODTCE2, :NIDTAGFFU, :NCODT' +
        'CE, :CCPFCNPJ2, :DDTNASC2, :NCODTCE3, :CNROAPOSEN, :NPERBENEFI, ' +
        ':DDTEFEITOS, :DDTFIM, :NMESPGTO, :NANOPGTO, :NIDCADTCE)')
    SQLDelete.Strings = (
      'DELETE FROM amppensao'
      'WHERE'
      '  NPMNOTCE = :NPMNOTCE and'
      '  CCPFCNPJ = :CCPFCNPJ and'
      '  DDTNASC = :DDTNASC and'
      '  NCODTCE2 = :NCODTCE2 and'
      '  NIDTAGFFU = :NIDTAGFFU')
    SQLUpdate.Strings = (
      'UPDATE amppensao'
      'SET'
      '  NPMNOTCE = :NPMNOTCE,'
      '  CCPFCNPJ = :CCPFCNPJ,'
      '  DDTNASC = :DDTNASC,'
      '  NCODTCE2 = :NCODTCE2,'
      '  NIDTAGFFU = :NIDTAGFFU,'
      '  NCODTCE = :NCODTCE,'
      '  CCPFCNPJ2 = :CCPFCNPJ2,'
      '  DDTNASC2 = :DDTNASC2,'
      '  NCODTCE3 = :NCODTCE3,'
      '  CNROAPOSEN = :CNROAPOSEN,'
      '  NPERBENEFI = :NPERBENEFI,'
      '  DDTEFEITOS = :DDTEFEITOS,'
      '  DDTFIM = :DDTFIM,'
      '  NMESPGTO = :NMESPGTO,'
      '  NANOPGTO = :NANOPGTO,'
      '  NIDCADTCE = :NIDCADTCE'
      'WHERE'
      '  NPMNOTCE = :OLD_NPMNOTCE and'
      '  CCPFCNPJ = :OLD_CCPFCNPJ and'
      '  DDTNASC = :OLD_DDTNASC and'
      '  NCODTCE2 = :OLD_NCODTCE2 and'
      '  NIDTAGFFU = :OLD_NIDTAGFFU')
    SQLLock.Strings = (
      'SELECT * FROM amppensao'
      'WHERE'
      '  NPMNOTCE = :NPMNOTCE and'
      '  CCPFCNPJ = :CCPFCNPJ and'
      '  DDTNASC = :DDTNASC and'
      '  NCODTCE2 = :NCODTCE2 and'
      '  NIDTAGFFU = :NIDTAGFFU'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      'WHERE'
      '  NPMNOTCE = :NPMNOTCE and'
      '  CCPFCNPJ = :CCPFCNPJ and'
      '  DDTNASC = :DDTNASC and'
      '  NCODTCE2 = :NCODTCE2 and'
      '  NIDTAGFFU = :NIDTAGFFU')
    Session = DMControle.Conexao
    SQL.Strings = (
      'select * from amppensao')
    Left = 88
    Top = 352
    object QRY_AMPPENSAONPMNOTCE: TStringField
      FieldName = 'NPMNOTCE'
      Size = 7
    end
    object QRY_AMPPENSAOCCPFCNPJ: TStringField
      FieldName = 'CCPFCNPJ'
      Size = 11
    end
    object QRY_AMPPENSAODDTNASC: TStringField
      FieldName = 'DDTNASC'
      Size = 10
    end
    object QRY_AMPPENSAONCODTCE2: TStringField
      FieldName = 'NCODTCE2'
      Size = 2
    end
    object QRY_AMPPENSAONIDTAGFFU: TStringField
      FieldName = 'NIDTAGFFU'
      Size = 5
    end
    object QRY_AMPPENSAONCODTCE: TStringField
      FieldName = 'NCODTCE'
      Size = 2
    end
    object QRY_AMPPENSAOCCPFCNPJ2: TStringField
      FieldName = 'CCPFCNPJ2'
      Size = 11
    end
    object QRY_AMPPENSAODDTNASC2: TStringField
      FieldName = 'DDTNASC2'
      Size = 10
    end
    object QRY_AMPPENSAONCODTCE3: TStringField
      FieldName = 'NCODTCE3'
      Size = 2
    end
    object QRY_AMPPENSAOCNROAPOSEN: TStringField
      FieldName = 'CNROAPOSEN'
      Size = 12
    end
    object QRY_AMPPENSAONPERBENEFI: TStringField
      FieldName = 'NPERBENEFI'
      Size = 6
    end
    object QRY_AMPPENSAODDTEFEITOS: TStringField
      FieldName = 'DDTEFEITOS'
      Size = 10
    end
    object QRY_AMPPENSAODDTFIM: TStringField
      FieldName = 'DDTFIM'
      Size = 10
    end
    object QRY_AMPPENSAONMESPGTO: TStringField
      FieldName = 'NMESPGTO'
      Size = 2
    end
    object QRY_AMPPENSAONANOPGTO: TStringField
      FieldName = 'NANOPGTO'
      Size = 4
    end
    object QRY_AMPPENSAONIDCADTCE: TFloatField
      FieldName = 'NIDCADTCE'
    end
  end
  object QRY_TBXTCT: TOraQuery
    SQL.Strings = (
      'select cadcrg.nidcadcrg, tbxtct.NCODTCE'
      'from cadcrg, tbxtcr, tbxtct'
      'where cadcrg.NIDTBXTCR = tbxtcr.NIDTBXTCR and'
      '      tbxtcr.NIDTBXTCT = tbxtct.NIDTBXTCT and'
      '      cadcrg.NIDCADCRG = :nidcadcrg')
    MasterSource = DTS_TCE
    Left = 436
    Top = 403
    ParamData = <
      item
        DataType = ftFloat
        Name = 'NIDCADCRG'
        ParamType = ptInput
        Value = 527
      end>
    object QRY_TBXTCTNIDCADCRG: TFloatField
      FieldName = 'NIDCADCRG'
      Required = True
    end
    object QRY_TBXTCTNCODTCE: TFloatField
      FieldName = 'NCODTCE'
      Required = True
    end
  end
  object QRY_CADATO: TOraQuery
    SQLInsert.Strings = (
      'INSERT INTO cadato'
      '  (CENVIADOTC)'
      'VALUES'
      '  (:CENVIADOTC)')
    SQLDelete.Strings = (
      'DELETE FROM cadato'
      'WHERE'
      '  NIDCADATO = :NIDCADATO')
    SQLUpdate.Strings = (
      'UPDATE cadato'
      'SET'
      '  CENVIADOTC = :CENVIADOTC'
      'WHERE'
      '  NIDCADATO = :OLD_NIDCADATO')
    SQLLock.Strings = (
      'SELECT * FROM cadato'
      'WHERE'
      '  NIDCADATO = :NIDCADATO'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      'WHERE'
      '  NIDCADATO = :NIDCADATO')
    SQL.Strings = (
      'select cadato.*, tbxtat.NCODTCE'
      'from cadato, tbxtat'
      'where cadato.NIDTBXTAT = tbxtat.NIDTBXTAT and'
      '      cadato.NIDCADATO = :nidcadato'
      '')
    MasterSource = DTS_CADMOV
    Left = 433
    Top = 243
    ParamData = <
      item
        DataType = ftFloat
        Name = 'NIDCADATO'
        ParamType = ptInput
        Value = 0
      end>
    object QRY_CADATONIDCADATO: TFloatField
      FieldName = 'NIDCADATO'
      Required = True
    end
    object QRY_CADATOCNROATO: TStringField
      FieldName = 'CNROATO'
      Required = True
      Size = 10
    end
    object QRY_CADATODDTCRIACAO: TDateTimeField
      FieldName = 'DDTCRIACAO'
      Required = True
    end
    object QRY_CADATODDTEFEITOS: TDateTimeField
      FieldName = 'DDTEFEITOS'
      Required = True
    end
    object QRY_CADATOCSUMULA: TStringField
      FieldName = 'CSUMULA'
      Size = 250
    end
    object QRY_CADATONEDICAO: TFloatField
      FieldName = 'NEDICAO'
      Required = True
    end
    object QRY_CADATONPAGEDICAO: TFloatField
      FieldName = 'NPAGEDICAO'
      Required = True
    end
    object QRY_CADATOCNOMEARQ: TStringField
      FieldName = 'CNOMEARQ'
      Size = 30
    end
    object QRY_CADATONIDTBXVPB: TFloatField
      FieldName = 'NIDTBXVPB'
      Required = True
    end
    object QRY_CADATONIDTBXTAT: TFloatField
      FieldName = 'NIDTBXTAT'
      Required = True
    end
    object QRY_CADATONIDTBXRSV: TFloatField
      FieldName = 'NIDTBXRSV'
      Required = True
    end
    object QRY_CADATODDTPUBLIC: TDateTimeField
      FieldName = 'DDTPUBLIC'
      Required = True
    end
    object QRY_CADATOCATRIBUI: TStringField
      FieldName = 'CATRIBUI'
      Size = 250
    end
    object QRY_CADATOCENVIADOTC: TStringField
      FieldName = 'CENVIADOTC'
      FixedChar = True
      Size = 1
    end
    object QRY_CADATONCODTCE: TFloatField
      FieldName = 'NCODTCE'
    end
  end
  object DTS_CADATO: TOraDataSource
    AutoEdit = False
    DataSet = QRY_CADATO
    Left = 433
    Top = 295
  end
  object QRY_TBXMVP: TOraQuery
    Session = DMControle.Conexao
    SQL.Strings = (
      'select tbxtpm.*, tbxmvp.NCODTCE'
      'from tbxtpm, tbxmvp'
      'where tbxtpm.NIDTBXMVP = tbxmvp.NIDTBXMVP and'
      '      tbxtpm.NIDTBXTPM = :nidtbxtpm')
    MasterSource = DTS_CADMOV
    Left = 616
    Top = 247
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'nidtbxtpm'
      end>
    object QRY_TBXMVPNIDTBXTPM: TFloatField
      FieldName = 'NIDTBXTPM'
      Required = True
    end
    object QRY_TBXMVPCDESCRITPM: TStringField
      FieldName = 'CDESCRITPM'
      Required = True
      Size = 50
    end
    object QRY_TBXMVPCTIPORVG: TStringField
      FieldName = 'CTIPORVG'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QRY_TBXMVPNIDTPMRVG: TFloatField
      FieldName = 'NIDTPMRVG'
    end
    object QRY_TBXMVPCFIXAST: TStringField
      FieldName = 'CFIXAST'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QRY_TBXMVPCCASCATA: TStringField
      FieldName = 'CCASCATA'
      FixedChar = True
      Size = 1
    end
    object QRY_TBXMVPCTIPOMVTO: TStringField
      FieldName = 'CTIPOMVTO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object QRY_TBXMVPNNROTAB: TFloatField
      FieldName = 'NNROTAB'
    end
    object QRY_TBXMVPNIDTBXGMV: TFloatField
      FieldName = 'NIDTBXGMV'
      Required = True
    end
    object QRY_TBXMVPNIDCADEVE: TFloatField
      FieldName = 'NIDCADEVE'
    end
    object QRY_TBXMVPNIDTBXSTS: TFloatField
      FieldName = 'NIDTBXSTS'
    end
    object QRY_TBXMVPCATO: TStringField
      FieldName = 'CATO'
      FixedChar = True
      Size = 1
    end
    object QRY_TBXMVPCCALCULA: TStringField
      FieldName = 'CCALCULA'
      FixedChar = True
      Size = 1
    end
    object QRY_TBXMVPNIDTBXSPT: TFloatField
      FieldName = 'NIDTBXSPT'
    end
    object QRY_TBXMVPNIDTBXACR: TFloatField
      FieldName = 'NIDTBXACR'
    end
    object QRY_TBXMVPNIDTBXMVP: TFloatField
      FieldName = 'NIDTBXMVP'
    end
    object QRY_TBXMVPNCODTCE: TFloatField
      FieldName = 'NCODTCE'
    end
  end
  object QRY_TBXEDI: TOraQuery
    Session = DMControle.Conexao
    SQL.Strings = (
      'select tbxedi.*, tbxtps.ncodtce'
      'from tbxedi, tbxtps'
      'where tbxedi.nidtbxtps = tbxtps.nidtbxtps and'
      '      tbxedi.nidtbxedi = :nidtbxedi'
      '')
    MasterSource = DTS_CADMOV
    Left = 616
    Top = 303
    ParamData = <
      item
        DataType = ftFloat
        Name = 'NIDTBXEDI'
        ParamType = ptInput
        Value = 8
      end>
    object QRY_TBXEDINIDTBXEDI: TFloatField
      FieldName = 'NIDTBXEDI'
      Required = True
    end
    object QRY_TBXEDICNROEDITAL: TStringField
      FieldName = 'CNROEDITAL'
      Required = True
      Size = 10
    end
    object QRY_TBXEDIDDTEDITAL: TDateTimeField
      FieldName = 'DDTEDITAL'
      Required = True
    end
    object QRY_TBXEDIDDTPUBLICA: TDateTimeField
      FieldName = 'DDTPUBLICA'
      Required = True
    end
    object QRY_TBXEDICDESCRIEDI: TStringField
      FieldName = 'CDESCRIEDI'
      Required = True
      OnGetText = QRY_TBXEDICDESCRIEDIGetText
      Size = 250
    end
    object QRY_TBXEDINIDTBXTPS: TFloatField
      FieldName = 'NIDTBXTPS'
      Required = True
    end
    object QRY_TBXEDINIDTBXVPB: TFloatField
      FieldName = 'NIDTBXVPB'
      Required = True
    end
    object QRY_TBXEDINCODTCE: TFloatField
      FieldName = 'NCODTCE'
    end
  end
  object QRY_TBXAGI: TOraQuery
    Session = DMControle.Conexao
    SQL.Strings = (
      'select tbxagi.*'
      'from tbxagi'
      'where tbxagi.nidtbxagi = :nidtbxagi')
    MasterSource = DTS_CADMOV
    Left = 616
    Top = 351
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'nidtbxagi'
      end>
    object QRY_TBXAGINIDTBXAGI: TFloatField
      FieldName = 'NIDTBXAGI'
      Required = True
    end
    object QRY_TBXAGICDESCRIAGI: TStringField
      FieldName = 'CDESCRIAGI'
      Required = True
      Size = 30
    end
    object QRY_TBXAGINCODTCE: TFloatField
      FieldName = 'NCODTCE'
    end
  end
  object QRY_TBXVPB: TOraQuery
    SQL.Strings = (
      'select tbxvpb.* '
      'from tbxvpb'
      'where tbxvpb.nidtbxvpb = :nidtbxvpb')
    MasterSource = DTS_CADATO
    Left = 433
    Top = 347
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'nidtbxvpb'
      end>
    object QRY_TBXVPBNIDTBXVPB: TFloatField
      FieldName = 'NIDTBXVPB'
      Required = True
    end
    object QRY_TBXVPBCDESCRIVPB: TStringField
      FieldName = 'CDESCRIVPB'
      Required = True
      Size = 40
    end
  end
  object QRY_TAGPAG: TOraQuery
    SQL.Strings = (
      
        'select sum(tagpag.nvalorpag) as nvalorpag, cadeve.cdescrieve, tb' +
        'xvpd.ncodtce'
      'from tagpag, cadeve, tbxvpd'
      'where tagpag.nidtagffu = :nidtagffu and'
      '      tagpag.nmespag = :nmespgto and'
      '      tagpag.nanopag = :nanopgto and'
      '      tagpag.nidcadeve = cadeve.nidcadeve and'
      '      cadeve.nidtbxvpd = tbxvpd.nidtbxvpd and'
      '      tbxvpd.ncodtce > 0'
      'group by cadeve.cdescrieve, tbxvpd.ncodtce')
    MasterSource = DTS_TCE
    Left = 255
    Top = 5
    ParamData = <
      item
        DataType = ftFloat
        Name = 'NIDTAGFFU'
        ParamType = ptInput
        Value = 1906
      end
      item
        DataType = ftFloat
        Name = 'NMESPGTO'
        ParamType = ptInput
        Value = 1
      end
      item
        DataType = ftFloat
        Name = 'NANOPGTO'
        ParamType = ptInput
        Value = 2005
      end>
    object QRY_TAGPAGNVALORPAG: TFloatField
      FieldName = 'NVALORPAG'
    end
    object QRY_TAGPAGCDESCRIEVE: TStringField
      FieldName = 'CDESCRIEVE'
      Required = True
      Size = 30
    end
    object QRY_TAGPAGNCODTCE: TFloatField
      FieldName = 'NCODTCE'
    end
  end
  object DTS_TAGPAG: TOraDataSource
    AutoEdit = False
    DataSet = QRY_TAGPAG
    Left = 257
    Top = 53
  end
  object QRY_TBXORI: TOraQuery
    SQL.Strings = (
      'select tbxori.NIDTBXORI, tbxori.CFUNDEF '
      'from tagoct, tbxori'
      'where tagoct.NIDTBXORI = tbxori.NIDTBXORI and'
      '      tagoct.NIDTAGOCT = :nidtagoct')
    MasterSource = DTS_TCE
    Left = 107
    Top = 157
    ParamData = <
      item
        DataType = ftFloat
        Name = 'NIDTAGOCT'
        ParamType = ptInput
        Value = 1
      end>
    object QRY_TBXORINIDTBXORI: TFloatField
      FieldName = 'NIDTBXORI'
      Required = True
    end
    object QRY_TBXORICFUNDEF: TStringField
      FieldName = 'CFUNDEF'
      Required = True
      FixedChar = True
      Size = 1
    end
  end
  object QRY_TBXTBI: TOraQuery
    Session = DMControle.Conexao
    SQL.Strings = (
      'select tbxtbi.ncodtce, tbxtbi.cpercapo'
      'from tbxtbi'
      'where tbxtbi.nidtbxtbi = :nidtbxtbi')
    MasterSource = DTS_CADMOV
    Left = 616
    Top = 399
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'nidtbxtbi'
      end>
    object QRY_TBXTBINCODTCE: TFloatField
      FieldName = 'NCODTCE'
    end
    object QRY_TBXTBICPERCAPO: TStringField
      FieldName = 'CPERCAPO'
      FixedChar = True
      Size = 1
    end
  end
  object QRY_TAGOBT: TOraQuery
    SQL.Strings = (
      'select tagobt.*'
      'from tagobt'
      'where tagobt.nidtagobt = :nidtagobt')
    MasterSource = DTS_TCE
    Left = 521
    Top = 337
    ParamData = <
      item
        DataType = ftFloat
        Name = 'NIDTAGOBT'
        ParamType = ptInput
        Value = Null
      end>
    object QRY_TAGOBTCULTIMOCRG: TStringField
      FieldName = 'CULTIMOCRG'
      Required = True
      Size = 60
    end
    object QRY_TAGOBTNIDTAGOBT: TFloatField
      FieldName = 'NIDTAGOBT'
      Required = True
    end
    object QRY_TAGOBTDDTOBITO: TDateTimeField
      FieldName = 'DDTOBITO'
      Required = True
    end
    object QRY_TAGOBTCMOTIVO: TStringField
      FieldName = 'CMOTIVO'
      Size = 250
    end
    object QRY_TAGOBTNBSPENSAO: TFloatField
      FieldName = 'NBSPENSAO'
      Required = True
    end
    object QRY_TAGOBTNIDCADSER: TFloatField
      FieldName = 'NIDCADSER'
    end
    object QRY_TAGOBTNIDTAGSLR: TFloatField
      FieldName = 'NIDTAGSLR'
      Required = True
    end
    object QRY_TAGOBTNIDTBXTBI: TFloatField
      FieldName = 'NIDTBXTBI'
    end
    object QRY_TAGOBTLKP_NCODTCE: TStringField
      FieldKind = fkLookup
      FieldName = 'LKP_NCODTCE'
      LookupDataSet = QRY_TBXTBI_LKP
      LookupKeyFields = 'NIDTBXTBI'
      LookupResultField = 'NCODTCE'
      KeyFields = 'NIDTBXTBI'
      Size = 2
      Lookup = True
    end
  end
  object DTS_TAGOBT: TOraDataSource
    AutoEdit = False
    DataSet = QRY_TAGOBT
    Left = 518
    Top = 387
  end
  object QRY_CADSER_ORI: TOraQuery
    SQL.Strings = (
      'select cadser.nidcadgrl, cadser.cnroaposen, cadfis.ddtnasc,'
      '       cadgrl.ccpfcnpj, cadser.nidcadser, cadgrl.cnomegrl,'
      '       cadfis.csexo'
      'from cadser, cadfis, cadgrl'
      'where cadser.nidcadgrl = cadfis.nidcadgrl and'
      '      cadfis.nidcadgrl = cadgrl.nidcadgrl and'
      '      cadser.nidcadser = :nidcadser')
    MasterSource = DTS_TAGOBT
    Left = 517
    Top = 449
    ParamData = <
      item
        DataType = ftFloat
        Name = 'NIDCADSER'
        ParamType = ptInput
        Value = Null
      end>
    object QRY_CADSER_ORINIDCADGRL: TFloatField
      FieldName = 'NIDCADGRL'
      Required = True
    end
    object QRY_CADSER_ORICNROAPOSEN: TStringField
      FieldName = 'CNROAPOSEN'
      Size = 10
    end
    object QRY_CADSER_ORIDDTNASC: TDateTimeField
      FieldName = 'DDTNASC'
    end
    object QRY_CADSER_ORICCPFCNPJ: TStringField
      FieldName = 'CCPFCNPJ'
      Size = 14
    end
    object QRY_CADSER_ORINIDCADSER: TFloatField
      FieldName = 'NIDCADSER'
      Required = True
    end
    object QRY_CADSER_ORICNOMEGRL: TStringField
      FieldName = 'CNOMEGRL'
      Required = True
      Size = 70
    end
    object QRY_CADSER_ORICSEXO: TStringField
      FieldName = 'CSEXO'
      FixedChar = True
      Size = 1
    end
  end
  object QRY_TBXGRP: TOraQuery
    SQL.Strings = (
      'select tbxvpr.NCODTCE'
      'from tbxgrp, tbxvpr'
      'where tbxgrp.NIDTBXGRP = :nidtbxgrp and'
      '      tbxgrp.NIDTBXVPR = tbxvpr.NIDTBXVPR'
      '     ')
    MasterSource = DTS_TCE
    Left = 23
    Top = 155
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'nidtbxgrp'
      end>
    object QRY_TBXGRPNCODTCE: TFloatField
      FieldName = 'NCODTCE'
    end
  end
  object QRY_CADATO_CRG: TOraQuery
    Session = DMControle.Conexao
    SQL.Strings = (
      'select cadato.*, tbxtat.NCODTCE'
      'from cadmov, tbxtpm, cadato, tbxtat'
      'where cadato.NIDCADATO = cadmov.NIDCADATO and'
      '      cadato.NIDTBXTAT = tbxtat.NIDTBXTAT and'
      '      cadmov.NIDTBXTPM = tbxtpm.NIDTBXTPM and'
      '      tbxtpm.CTIPOMVTO = '#39'C'#39)
    FetchAll = True
    Left = 249
    Top = 227
    object QRY_CADATO_CRGNIDCADATO: TFloatField
      FieldName = 'NIDCADATO'
      Required = True
    end
    object QRY_CADATO_CRGCNROATO: TStringField
      FieldName = 'CNROATO'
      Required = True
      Size = 10
    end
    object QRY_CADATO_CRGDDTCRIACAO: TDateTimeField
      FieldName = 'DDTCRIACAO'
      Required = True
    end
    object QRY_CADATO_CRGDDTEFEITOS: TDateTimeField
      FieldName = 'DDTEFEITOS'
      Required = True
    end
    object QRY_CADATO_CRGCSUMULA: TStringField
      FieldName = 'CSUMULA'
      Required = True
      Size = 250
    end
    object QRY_CADATO_CRGNEDICAO: TFloatField
      FieldName = 'NEDICAO'
      Required = True
    end
    object QRY_CADATO_CRGNPAGEDICAO: TFloatField
      FieldName = 'NPAGEDICAO'
      Required = True
    end
    object QRY_CADATO_CRGCNOMEARQ: TStringField
      FieldName = 'CNOMEARQ'
      Required = True
      Size = 30
    end
    object QRY_CADATO_CRGNIDTBXVPB: TFloatField
      FieldName = 'NIDTBXVPB'
      Required = True
    end
    object QRY_CADATO_CRGNIDTBXTAT: TFloatField
      FieldName = 'NIDTBXTAT'
      Required = True
    end
    object QRY_CADATO_CRGNIDTBXRSV: TFloatField
      FieldName = 'NIDTBXRSV'
      Required = True
    end
    object QRY_CADATO_CRGDDTPUBLIC: TDateTimeField
      FieldName = 'DDTPUBLIC'
      Required = True
    end
    object QRY_CADATO_CRGCATRIBUI: TStringField
      FieldName = 'CATRIBUI'
      Size = 250
    end
    object QRY_CADATO_CRGCENVIADOTC: TStringField
      FieldName = 'CENVIADOTC'
      FixedChar = True
      Size = 1
    end
    object QRY_CADATO_CRGNCODTCE: TFloatField
      FieldName = 'NCODTCE'
    end
  end
  object QRY_CADMOV_CRG: TOraQuery
    Session = DMControle.Conexao
    SQL.Strings = (
      'select tbxtat.NCODTCE, cadmov.NIDCADCRG, '
      '       tbxacr.NCODTCE as ncodtce2, '
      '       tbxvpd.NCODTCE as ncodtce3,'
      '       cadcrg.nTotVagas'
      'from cadmov, tbxtpm, cadato, tbxtat, tbxacr, '
      '     tbxvpd, cadeve, cadcrg'
      'where cadmov.NIDCADATO = :nidcadato and'
      '      tbxtat.NIDTBXTAT = :nidtbxtat and'
      '      cadmov.nidtbxtpm = tbxtpm.nidtbxtpm and '
      '      tbxtpm.NIDTBXACR = tbxacr.NIDTBXACR and'
      '      tbxacr.NCODTCE in (2,3,4,23) and'
      '      tbxtpm.NIDCADEVE = cadeve.NIDCADEVE and'
      '      cadeve.NIDTBXVPD = tbxvpd.NIDTBXVPD and'
      '      cadmov.NIDCADCRG = cadcrg.NIDCADCRG'
      '      ')
    MasterSource = DTS_CADATO_CRG
    Left = 337
    Top = 247
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'nidcadato'
      end
      item
        DataType = ftUnknown
        Name = 'nidtbxtat'
      end>
    object QRY_CADMOV_CRGNCODTCE: TFloatField
      FieldName = 'NCODTCE'
    end
    object QRY_CADMOV_CRGNIDCADCRG: TFloatField
      FieldName = 'NIDCADCRG'
    end
    object QRY_CADMOV_CRGNCODTCE2: TFloatField
      FieldName = 'NCODTCE2'
    end
    object QRY_CADMOV_CRGNCODTCE3: TFloatField
      FieldName = 'NCODTCE3'
    end
    object QRY_CADMOV_CRGNTOTVAGAS: TFloatField
      FieldName = 'NTOTVAGAS'
    end
  end
  object DTS_CADATO_CRG: TOraDataSource
    DataSet = QRY_CADATO_CRG
    Left = 251
    Top = 273
  end
  object QRY_CADTCE: TOraQuery
    SQLInsert.Strings = (
      'INSERT INTO cadtce'
      '  (NIDCADTCE, CMESPGTO, CANOPGTO, CUSUARIO, NIDTBXENT)'
      'VALUES'
      '  (:NIDCADTCE, :CMESPGTO, :CANOPGTO, :CUSUARIO, :NIDTBXENT)')
    SQLDelete.Strings = (
      'DELETE FROM cadtce'
      'WHERE'
      '  NIDCADTCE = :NIDCADTCE')
    SQLUpdate.Strings = (
      'UPDATE cadtce'
      'SET'
      '  NIDCADTCE = :NIDCADTCE,'
      '  CMESPGTO = :CMESPGTO,'
      '  CANOPGTO = :CANOPGTO,'
      '  CUSUARIO = :CUSUARIO,'
      '  NIDTBXENT = :NIDTBXENT'
      'WHERE'
      '  NIDCADTCE = :OLD_NIDCADTCE')
    SQLLock.Strings = (
      'SELECT * FROM cadtce'
      'WHERE'
      '  NIDCADTCE = :NIDCADTCE'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      'WHERE'
      '  NIDCADTCE = :NIDCADTCE')
    Session = DMControle.Conexao
    SQL.Strings = (
      'select cadtce.cmespgto||cadtce.canopgto as dat_chave, cadtce.*'
      'from cadtce where cadtce.nidtbxent = :nidtbxent'
      'order by dat_chave desc')
    MasterSource = DTS_TBXENT
    OnCalcFields = QRY_CADTCECalcFields
    Left = 236
    Top = 412
    ParamData = <
      item
        DataType = ftFloat
        Name = 'NIDTBXENT'
        ParamType = ptInput
        Value = 2
      end>
    object QRY_CADTCEDAT_CHAVE: TStringField
      FieldName = 'DAT_CHAVE'
      Size = 80
    end
    object QRY_CADTCENIDCADTCE: TFloatField
      FieldName = 'NIDCADTCE'
      Required = True
    end
    object QRY_CADTCECMESPGTO: TFloatField
      FieldName = 'CMESPGTO'
    end
    object QRY_CADTCECANOPGTO: TFloatField
      FieldName = 'CANOPGTO'
    end
    object QRY_CADTCECUSUARIO: TStringField
      FieldName = 'CUSUARIO'
      Size = 15
    end
    object QRY_CADTCENIDTBXENT: TFloatField
      FieldName = 'NIDTBXENT'
    end
    object QRY_CADTCECCOMPETE: TStringField
      FieldKind = fkCalculated
      FieldName = 'CCOMPETE'
      Size = 15
      Calculated = True
    end
    object QRY_CADTCESTATUS: TStringField
      FieldKind = fkCalculated
      FieldName = 'STATUS'
      Size = 15
      Calculated = True
    end
  end
  object DTS_CADTCE: TOraDataSource
    AutoEdit = False
    DataSet = QRY_CADTCE
    Left = 237
    Top = 453
  end
  object QRY_DADOS: TVirtualTable
    Options = [voPersistentData, voStored]
    FieldDefs = <
      item
        Name = 'DAT_CHAVE'
        DataType = ftString
        Size = 15
      end
      item
        Name = 'DADOS'
        DataType = ftString
        Size = 15
      end>
    Left = 91
    Top = 411
    Data = {
      0100020009004441545F434841564501000F0005004441444F5301000F000000
      00000000}
    object QRY_DADOSDAT_CHAVE: TStringField
      Alignment = taCenter
      FieldName = 'DAT_CHAVE'
      Size = 15
    end
    object QRY_DADOSDADOS: TStringField
      Alignment = taCenter
      FieldName = 'DADOS'
      Size = 15
    end
  end
  object DTS_DADOS: TOraDataSource
    AutoEdit = False
    DataSet = QRY_DADOS
    Left = 91
    Top = 454
  end
  object QRY_TBXTPM: TOraQuery
    Session = DMControle.Conexao
    SQL.Strings = (
      'select tbxtpm.nidtbxtpm, tbxspt.ncodtce'
      'from tbxtpm, tbxspt'
      'where tbxtpm.nidtbxspt = tbxspt.nidtbxspt and'
      '      tbxtpm.nidtbxtpm = :nidtbxtpm ')
    MasterSource = DTS_CADMOV
    Left = 616
    Top = 453
    ParamData = <
      item
        DataType = ftFloat
        Name = 'NIDTBXTPM'
        ParamType = ptInput
        Value = 54
      end>
    object QRY_TBXTPMNIDTBXTPM: TFloatField
      FieldName = 'NIDTBXTPM'
      Required = True
    end
    object QRY_TBXTPMNCODTCE: TFloatField
      FieldName = 'NCODTCE'
    end
  end
  object QRY_CARGOS: TOraQuery
    Session = DMControle.Conexao
    SQL.Strings = (
      
        'select cadcrg.nidtbxslr, cadcrg.nidcadcrg,cadcrg.CDESCRICRG,cadc' +
        'rg.NTOTVAGAS, '
      '       cadcrg.NIDTAGSLR, cadcrg.nidslrfim,'
      '       tbxtct.NCODTCE, tbxpcr.NCODTCE as ncodtce2, '
      
        '(select count(*) from tagffu where nidcadcrg = cadcrg.nidcadcrg)' +
        ' as vagas'
      'from cadcrg, tbxtcr, tbxtct, tbxpcr'
      'where cadcrg.NIDTBXTCR = tbxtcr.NIDTBXTCR and'
      '      tbxtcr.NIDTBXTCT = tbxtct.NIDTBXTCT and'
      '      cadcrg.NIDTBXPCR = tbxpcr.NIDTBXPCR and'
      '      tbxtcr.CACAOTCE <> '#39'P'#39' and tbxtcr.CACAOTCE <> '#39'I'#39' and'
      '      tbxtcr.CACAOTCE <> '#39' '#39)
    FetchAll = True
    Left = 259
    Top = 321
    object QRY_CARGOSNIDTBXSLR: TFloatField
      FieldName = 'NIDTBXSLR'
      Required = True
    end
    object QRY_CARGOSNIDCADCRG: TFloatField
      FieldName = 'NIDCADCRG'
      Required = True
    end
    object QRY_CARGOSCDESCRICRG: TStringField
      FieldName = 'CDESCRICRG'
      Size = 40
    end
    object QRY_CARGOSNTOTVAGAS: TFloatField
      FieldName = 'NTOTVAGAS'
    end
    object QRY_CARGOSNCODTCE: TFloatField
      FieldName = 'NCODTCE'
      Required = True
    end
    object QRY_CARGOSVAGAS: TFloatField
      FieldName = 'VAGAS'
    end
    object QRY_CARGOSNIDTAGSLR: TFloatField
      FieldName = 'NIDTAGSLR'
      Required = True
    end
    object QRY_CARGOSNCODTCE2: TFloatField
      FieldName = 'NCODTCE2'
      Required = True
    end
    object QRY_CARGOSNIDSLRFIM: TFloatField
      FieldName = 'NIDSLRFIM'
      Required = True
    end
  end
  object DTS_CARGOS: TOraDataSource
    DataSet = QRY_CARGOS
    Left = 259
    Top = 365
  end
  object QRY_CLACRG: TOraQuery
    Session = DMControle.Conexao
    SQL.Strings = (
      'select tagslr.*'
      'from tagslr'
      
        'where (tagslr.CCLASSE >= (select cclasse from tagslr where nidta' +
        'gslr = :nidtagslr) and'
      
        '       tagslr.NNIVEL >= (select nnivel from tagslr where nidtags' +
        'lr = :nidtagslr)) and'
      
        '      (tagslr.CCLASSE <= (select cclasse from tagslr where nidta' +
        'gslr = :nidslrfim) and'
      
        '       tagslr.NNIVEL <= (select nnivel from tagslr where nidtags' +
        'lr = :nidslrfim)) and'
      '       tagslr.NIDTBXSLR = :nidtbxslr')
    MasterSource = DTS_CARGOS
    Left = 338
    Top = 329
    ParamData = <
      item
        DataType = ftFloat
        Name = 'NIDTAGSLR'
        ParamType = ptInput
        Value = 6862
      end
      item
        DataType = ftFloat
        Name = 'NIDSLRFIM'
        ParamType = ptInput
        Value = 6862
      end
      item
        DataType = ftFloat
        Name = 'NIDTBXSLR'
        ParamType = ptInput
        Value = 233
      end>
    object FloatField1: TFloatField
      FieldName = 'NIDTAGSLR'
      Required = True
    end
    object StringField1: TStringField
      FieldName = 'CCLASSE'
      Size = 3
    end
    object FloatField2: TFloatField
      FieldName = 'NNIVEL'
      Required = True
    end
    object FloatField3: TFloatField
      FieldName = 'NVALORSLR'
      Required = True
    end
    object FloatField4: TFloatField
      FieldName = 'NIDTBXSLR'
      Required = True
    end
  end
  object QRY_EXPTCE: TVirtualTable
    Options = [voPersistentData, voStored]
    FieldDefs = <
      item
        Name = 'CMESPGTO'
        DataType = ftString
        Size = 2
      end
      item
        Name = 'CANOPGTO'
        DataType = ftString
        Size = 4
      end>
    Left = 155
    Top = 411
    Data = {
      010002000800434D45535047544F01000200080043414E4F5047544F01000400
      000000000000}
    object QRY_EXPTCECMESPGTO: TStringField
      FieldName = 'CMESPGTO'
      Size = 2
    end
    object QRY_EXPTCECANOPGTO: TStringField
      FieldName = 'CANOPGTO'
      Size = 4
    end
  end
  object DTS_EXPTCE: TOraDataSource
    AutoEdit = False
    DataSet = QRY_EXPTCE
    Left = 159
    Top = 454
  end
  object QRY_TAGTXT: TOraQuery
    SQLInsert.Strings = (
      'INSERT INTO tagtxt'
      '  (NIDTAGTXT, DDTENVIO, CUSUARIO, NIDCADTCE)'
      'VALUES'
      '  (:NIDTAGTXT, :DDTENVIO, :CUSUARIO, :NIDCADTCE)')
    SQLDelete.Strings = (
      'DELETE FROM tagtxt'
      'WHERE'
      '  NIDTAGTXT = :NIDTAGTXT')
    SQLUpdate.Strings = (
      'UPDATE tagtxt'
      'SET'
      '  NIDTAGTXT = :NIDTAGTXT,'
      '  DDTENVIO = :DDTENVIO,'
      '  CUSUARIO = :CUSUARIO,'
      '  NIDCADTCE = :NIDCADTCE'
      'WHERE'
      '  NIDTAGTXT = :OLD_NIDTAGTXT')
    SQLLock.Strings = (
      'SELECT * FROM tagtxt'
      'WHERE'
      '  NIDTAGTXT = :NIDTAGTXT'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      'WHERE'
      '  NIDTAGTXT = :NIDTAGTXT')
    Session = DMControle.Conexao
    SQL.Strings = (
      'select tagtxt.nidcadtce, tagtxt.nidtagtxt,  '
      'tagtxt.ddtenvio, tagtxt.cusuario, '
      'cadtce.cmespgto||'#39'-'#39'||cadtce.canopgto as dat_chave, '
      'cadtce.cmespgto,'
      'cadtce.canopgto '
      'from cadtce, tagtxt'
      'where tagtxt.nidcadtce = cadtce.nidcadtce and'
      '      cadtce.nidtbxent = :nidtbxent'
      'order by tagtxt.ddtenvio desc')
    MasterSource = DTS_TBXENT
    OnCalcFields = QRY_TAGTXTCalcFields
    Left = 312
    Top = 412
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'nidtbxent'
      end>
    object QRY_TAGTXTNIDCADTCE: TFloatField
      FieldName = 'NIDCADTCE'
      Required = True
    end
    object QRY_TAGTXTNIDTAGTXT: TFloatField
      FieldName = 'NIDTAGTXT'
      Required = True
    end
    object QRY_TAGTXTDDTENVIO: TDateTimeField
      FieldName = 'DDTENVIO'
    end
    object QRY_TAGTXTCUSUARIO: TStringField
      FieldName = 'CUSUARIO'
      Size = 15
    end
    object QRY_TAGTXTDAT_CHAVE: TStringField
      FieldName = 'DAT_CHAVE'
      FixedChar = True
      Size = 7
    end
    object QRY_TAGTXTSTATUS: TStringField
      FieldKind = fkCalculated
      FieldName = 'STATUS'
      Size = 15
      Calculated = True
    end
    object QRY_TAGTXTCCOMPETE: TStringField
      FieldKind = fkCalculated
      FieldName = 'CCOMPETE'
      Size = 15
      Calculated = True
    end
    object QRY_TAGTXTCMESPGTO: TFloatField
      FieldName = 'CMESPGTO'
    end
    object QRY_TAGTXTCANOPGTO: TFloatField
      FieldName = 'CANOPGTO'
    end
  end
  object DTS_TAGTXT: TOraDataSource
    AutoEdit = False
    DataSet = QRY_TAGTXT
    Left = 313
    Top = 457
  end
  object QRY_CADMOV2: TOraQuery
    SQLInsert.Strings = (
      'INSERT INTO cadmov'
      '  (CENVIADOTC)'
      'VALUES'
      '  (:CENVIADOTC)')
    SQLDelete.Strings = (
      'DELETE FROM cadmov'
      'WHERE'
      '  NIDCADMOV = :NIDCADMOV')
    SQLUpdate.Strings = (
      'UPDATE cadmov'
      'SET'
      '  CENVIADOTC = :CENVIADOTC'
      'WHERE'
      '  NIDCADMOV = :OLD_NIDCADMOV')
    SQLLock.Strings = (
      'SELECT * FROM cadmov'
      'WHERE'
      '  NIDCADMOV = :NIDCADMOV'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      'WHERE'
      '  NIDCADMOV = :NIDCADMOV')
    Session = DMControle.Conexao
    SQL.Strings = (
      'select cadmov.* '
      'from cadmov, tbxtpm, tbxmvp'
      'where cadmov.nidtagffu = :nidtagffu and'
      '      cadmov.nmespgto = :nmespgto and'
      '      cadmov.nanopgto = :nanopgto and'
      '      cadmov.nidatorvg <> 0 and'
      '      cadmov.cenviadrvg = '#39'N'#39'and'
      '      cadmov.nidtpmrvg = tbxtpm.nidtbxtpm and'
      '      tbxtpm.nidtbxmvp = tbxmvp.nidtbxmvp and'
      '      tbxmvp.ncodtce is not null')
    MasterSource = DTS_TCE
    Left = 514
    Top = 9
    ParamData = <
      item
        DataType = ftFloat
        Name = 'NIDTAGFFU'
        ParamType = ptInput
        Value = 3203
      end
      item
        DataType = ftUnknown
        Name = 'nmespgto'
      end
      item
        DataType = ftUnknown
        Name = 'nanopgto'
      end>
    object FloatField5: TFloatField
      FieldName = 'NIDCADMOV'
      Required = True
    end
    object FloatField6: TFloatField
      FieldName = 'NVALORSLR'
    end
    object DateTimeField1: TDateTimeField
      FieldName = 'DDATAFIM'
    end
    object DateTimeField2: TDateTimeField
      FieldName = 'DDTOBITO'
    end
    object FloatField7: TFloatField
      FieldName = 'NPERBENEFI'
    end
    object StringField2: TStringField
      FieldName = 'CORGAOORI'
      Size = 50
    end
    object StringField3: TStringField
      FieldName = 'CMOTIVO'
      Size = 250
    end
    object FloatField8: TFloatField
      FieldName = 'NPERVANTAG'
    end
    object DateTimeField3: TDateTimeField
      FieldName = 'DDTAQSINI'
    end
    object DateTimeField4: TDateTimeField
      FieldName = 'DDTAQSFIM'
    end
    object FloatField9: TFloatField
      FieldName = 'NIDATORVG'
    end
    object FloatField10: TFloatField
      FieldName = 'NIDTPMRVG'
    end
    object FloatField11: TFloatField
      FieldName = 'NIDCADATO'
    end
    object FloatField12: TFloatField
      FieldName = 'NIDTAGFFU'
    end
    object FloatField13: TFloatField
      FieldName = 'NIDCADCRG'
    end
    object FloatField14: TFloatField
      FieldName = 'NIDTBXEDI'
    end
    object FloatField15: TFloatField
      FieldName = 'NIDTBXAGI'
    end
    object FloatField16: TFloatField
      FieldName = 'NIDTBXTBI'
    end
    object FloatField17: TFloatField
      FieldName = 'NIDTBXGRP'
    end
    object FloatField18: TFloatField
      FieldName = 'NIDTBXLTB'
    end
    object FloatField19: TFloatField
      FieldName = 'NIDTAGSLR'
    end
    object FloatField20: TFloatField
      FieldName = 'NIDTBXTPM'
      Required = True
    end
    object FloatField21: TFloatField
      FieldName = 'NIDTAGOBT'
    end
    object FloatField22: TFloatField
      FieldName = 'NIDTAGDST'
    end
    object FloatField23: TFloatField
      FieldName = 'NIDTAGODP'
    end
    object DateTimeField5: TDateTimeField
      FieldName = 'DDATAINI'
    end
    object StringField4: TStringField
      FieldName = 'CULTCRGAPS'
      Size = 50
    end
    object FloatField24: TFloatField
      FieldName = 'NMATRICULA'
    end
    object StringField5: TStringField
      FieldName = 'CENVIADOTC'
      FixedChar = True
      Size = 1
    end
    object FloatField25: TFloatField
      FieldName = 'NMESPGTO'
    end
    object FloatField26: TFloatField
      FieldName = 'NANOPGTO'
    end
  end
  object DTS_CADMOV2: TOraDataSource
    AutoEdit = False
    DataSet = QRY_CADMOV2
    Left = 518
    Top = 61
  end
  object QRY_CADATO2: TOraQuery
    SQLInsert.Strings = (
      'INSERT INTO cadato'
      '  (CENVIADOTC)'
      'VALUES'
      '  (:CENVIADOTC)')
    SQLDelete.Strings = (
      'DELETE FROM cadato'
      'WHERE'
      '  NIDCADATO = :NIDCADATO')
    SQLUpdate.Strings = (
      'UPDATE cadato'
      'SET'
      '  CENVIADOTC = :CENVIADOTC'
      'WHERE'
      '  NIDCADATO = :OLD_NIDCADATO')
    SQLLock.Strings = (
      'SELECT * FROM cadato'
      'WHERE'
      '  NIDCADATO = :NIDCADATO'
      'FOR UPDATE NOWAIT')
    SQLRefresh.Strings = (
      'WHERE'
      '  NIDCADATO = :NIDCADATO')
    Session = DMControle.Conexao
    SQL.Strings = (
      'select cadato.*, tbxtat.NCODTCE'
      'from cadato, tbxtat'
      'where cadato.NIDTBXTAT = tbxtat.NIDTBXTAT and'
      '      cadato.NIDCADATO = :nidcadato'
      '')
    MasterSource = DTS_CADMOV2
    Left = 425
    Top = 9
    ParamData = <
      item
        DataType = ftFloat
        Name = 'NIDCADATO'
        ParamType = ptInput
        Value = Null
      end>
    object FloatField27: TFloatField
      FieldName = 'NIDCADATO'
      Required = True
    end
    object StringField6: TStringField
      FieldName = 'CNROATO'
      Required = True
      Size = 10
    end
    object DateTimeField6: TDateTimeField
      FieldName = 'DDTCRIACAO'
      Required = True
    end
    object DateTimeField7: TDateTimeField
      FieldName = 'DDTEFEITOS'
      Required = True
    end
    object StringField7: TStringField
      FieldName = 'CSUMULA'
      Size = 250
    end
    object FloatField28: TFloatField
      FieldName = 'NEDICAO'
      Required = True
    end
    object FloatField29: TFloatField
      FieldName = 'NPAGEDICAO'
      Required = True
    end
    object StringField8: TStringField
      FieldName = 'CNOMEARQ'
      Size = 30
    end
    object FloatField30: TFloatField
      FieldName = 'NIDTBXVPB'
      Required = True
    end
    object FloatField31: TFloatField
      FieldName = 'NIDTBXTAT'
      Required = True
    end
    object FloatField32: TFloatField
      FieldName = 'NIDTBXRSV'
      Required = True
    end
    object DateTimeField8: TDateTimeField
      FieldName = 'DDTPUBLIC'
      Required = True
    end
    object StringField9: TStringField
      FieldName = 'CATRIBUI'
      Size = 250
    end
    object StringField10: TStringField
      FieldName = 'CENVIADOTC'
      FixedChar = True
      Size = 1
    end
    object FloatField33: TFloatField
      FieldName = 'NCODTCE'
    end
  end
  object DTS_CADATO2: TOraDataSource
    AutoEdit = False
    DataSet = QRY_CADATO2
    Left = 429
    Top = 65
  end
  object QRY_TBXVPB2: TOraQuery
    Session = DMControle.Conexao
    SQL.Strings = (
      'select tbxvpb.* '
      'from tbxvpb'
      'where tbxvpb.nidtbxvpb = :nidtbxvpb')
    MasterSource = DTS_CADATO2
    Left = 429
    Top = 121
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'nidtbxvpb'
      end>
    object FloatField34: TFloatField
      FieldName = 'NIDTBXVPB'
      Required = True
    end
    object StringField11: TStringField
      FieldName = 'CDESCRIVPB'
      Required = True
      Size = 40
    end
  end
  object QRY_TBXTCT2: TOraQuery
    Session = DMControle.Conexao
    SQL.Strings = (
      'select cadcrg.nidcadcrg, tbxtct.NCODTCE'
      'from cadcrg, tbxtcr, tbxtct'
      'where cadcrg.NIDTBXTCR = tbxtcr.NIDTBXTCR and'
      '      tbxtcr.NIDTBXTCT = tbxtct.NIDTBXTCT and'
      '      cadcrg.NIDCADCRG = :nidcadcrg')
    MasterSource = DTS_CADMOV2
    Left = 600
    Top = 11
    ParamData = <
      item
        DataType = ftFloat
        Name = 'NIDCADCRG'
        ParamType = ptInput
        Value = Null
      end>
    object FloatField35: TFloatField
      FieldName = 'NIDCADCRG'
      Required = True
    end
    object FloatField36: TFloatField
      FieldName = 'NCODTCE'
      Required = True
    end
  end
  object QRY_TBXTPM2: TOraQuery
    Session = DMControle.Conexao
    SQL.Strings = (
      'select tbxtpm.nidtbxtpm, tbxspt.ncodtce'
      'from tbxtpm, tbxspt'
      'where tbxtpm.nidtbxspt = tbxspt.nidtbxspt and'
      '      tbxtpm.nidtbxtpm = :nidtbxtpm ')
    MasterSource = DTS_CADMOV2
    Left = 520
    Top = 121
    ParamData = <
      item
        DataType = ftFloat
        Name = 'NIDTBXTPM'
        ParamType = ptInput
        Value = 54
      end>
    object FloatField37: TFloatField
      FieldName = 'NIDTBXTPM'
      Required = True
    end
    object FloatField38: TFloatField
      FieldName = 'NCODTCE'
    end
  end
  object QRY_TBXAGI2: TOraQuery
    Session = DMControle.Conexao
    SQL.Strings = (
      'select tbxagi.*'
      'from tbxagi'
      'where tbxagi.nidtbxagi = :nidtbxagi')
    MasterSource = DTS_CADMOV2
    Left = 604
    Top = 63
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'nidtbxagi'
      end>
    object FloatField39: TFloatField
      FieldName = 'NIDTBXAGI'
      Required = True
    end
    object StringField12: TStringField
      FieldName = 'CDESCRIAGI'
      Required = True
      Size = 30
    end
    object FloatField40: TFloatField
      FieldName = 'NCODTCE'
    end
  end
  object QRY_TBXEDI2: TOraQuery
    Session = DMControle.Conexao
    SQL.Strings = (
      'select tbxedi.*, tbxtps.ncodtce'
      'from tbxedi, tbxtps'
      'where tbxedi.nidtbxtps = tbxtps.nidtbxtps and'
      '      tbxedi.nidtbxedi = :nidtbxedi'
      '')
    MasterSource = DTS_CADMOV2
    Left = 608
    Top = 119
    ParamData = <
      item
        DataType = ftFloat
        Name = 'NIDTBXEDI'
        ParamType = ptInput
        Value = 8
      end>
    object FloatField41: TFloatField
      FieldName = 'NIDTBXEDI'
      Required = True
    end
    object StringField13: TStringField
      FieldName = 'CNROEDITAL'
      Required = True
      Size = 10
    end
    object DateTimeField9: TDateTimeField
      FieldName = 'DDTEDITAL'
      Required = True
    end
    object DateTimeField10: TDateTimeField
      FieldName = 'DDTPUBLICA'
      Required = True
    end
    object StringField14: TStringField
      FieldName = 'CDESCRIEDI'
      Required = True
      OnGetText = StringField14GetText
      Size = 250
    end
    object FloatField42: TFloatField
      FieldName = 'NIDTBXTPS'
      Required = True
    end
    object FloatField43: TFloatField
      FieldName = 'NIDTBXVPB'
      Required = True
    end
    object FloatField44: TFloatField
      FieldName = 'NCODTCE'
    end
  end
  object QRY_TBXMVP2: TOraQuery
    Session = DMControle.Conexao
    SQL.Strings = (
      'select tbxtpm.*, tbxmvp.NCODTCE'
      'from tbxtpm, tbxmvp'
      'where tbxtpm.NIDTBXMVP = tbxmvp.NIDTBXMVP and'
      '      tbxtpm.NIDTBXTPM = :nidtbxtpm')
    MasterSource = DTS_CADMOV2
    Left = 608
    Top = 175
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'nidtbxtpm'
      end>
    object FloatField45: TFloatField
      FieldName = 'NIDTBXTPM'
      Required = True
    end
    object StringField15: TStringField
      FieldName = 'CDESCRITPM'
      Required = True
      Size = 50
    end
    object StringField16: TStringField
      FieldName = 'CTIPORVG'
      Required = True
      FixedChar = True
      Size = 1
    end
    object FloatField46: TFloatField
      FieldName = 'NIDTPMRVG'
    end
    object StringField17: TStringField
      FieldName = 'CFIXAST'
      Required = True
      FixedChar = True
      Size = 1
    end
    object StringField18: TStringField
      FieldName = 'CCASCATA'
      FixedChar = True
      Size = 1
    end
    object StringField19: TStringField
      FieldName = 'CTIPOMVTO'
      Required = True
      FixedChar = True
      Size = 1
    end
    object FloatField47: TFloatField
      FieldName = 'NNROTAB'
    end
    object FloatField48: TFloatField
      FieldName = 'NIDTBXGMV'
      Required = True
    end
    object FloatField49: TFloatField
      FieldName = 'NIDCADEVE'
    end
    object FloatField50: TFloatField
      FieldName = 'NIDTBXSTS'
    end
    object StringField20: TStringField
      FieldName = 'CATO'
      FixedChar = True
      Size = 1
    end
    object StringField21: TStringField
      FieldName = 'CCALCULA'
      FixedChar = True
      Size = 1
    end
    object FloatField51: TFloatField
      FieldName = 'NIDTBXSPT'
    end
    object FloatField52: TFloatField
      FieldName = 'NIDTBXACR'
    end
    object FloatField53: TFloatField
      FieldName = 'NIDTBXMVP'
    end
    object FloatField54: TFloatField
      FieldName = 'NCODTCE'
    end
  end
  object QRY_TAGMVF: TOraQuery
    Session = DMControle.Conexao
    SQL.Strings = (
      'select tagmvf.nidtagmvf, tbxspt.ncodtce'
      'from tagmvf, tbxspt, tbxtpm'
      'where tbxtpm.nidtbxspt = tbxspt.nidtbxspt and'
      '      tagmvf.nidtbxtpm = tbxtpm.nidtbxtpm and'
      '      tagmvf.nidtagffu = :nidtagffu  and'
      '      tagmvf.cmvfinicio = '#39'S'#39)
    MasterSource = DTS_TCE
    Left = 431
    Top = 170
    ParamData = <
      item
        DataType = ftFloat
        Name = 'NIDTAGFFU'
        ParamType = ptInput
        Value = 3848
      end>
    object QRY_TAGMVFNIDTAGMVF: TFloatField
      FieldName = 'NIDTAGMVF'
      Required = True
    end
    object QRY_TAGMVFNCODTCE: TFloatField
      FieldName = 'NCODTCE'
    end
  end
  object QRY_TBXTBI_1: TOraQuery
    Session = DMControle.Conexao
    SQL.Strings = (
      'select'
      '  tbxtbi.ncodtce,'
      '  cadmov.nperbenefi'
      'from'
      '  tagmvf,'
      '  tbxtpm,'
      '  cadmov,'
      '  tbxtbi'
      'where'
      '  tagmvf.nidtagffu = :nidtagffu and'
      '  tagmvf.cmvfinicio = '#39'S'#39' and'
      '  tbxtpm.nidtbxtpm = tagmvf.nidtbxtpm and'
      '  cadmov.nidtagffu = :nidtagffu and'
      '  cadmov.nidtbxtpm = tbxtpm.nidtbxtpm and'
      '  cadmov.nidtbxtbi = tbxtbi.nidtbxtbi')
    MasterSource = DTS_TCE
    Left = 416
    Top = 463
    ParamData = <
      item
        DataType = ftFloat
        Name = 'NIDTAGFFU'
        ParamType = ptInput
        Value = 3197
      end>
    object QRY_TBXTBI_1NCODTCE: TFloatField
      FieldName = 'NCODTCE'
    end
    object QRY_TBXTBI_1NPERBENEFI: TFloatField
      FieldName = 'NPERBENEFI'
    end
  end
  object QRY_TBXTBI_LKP: TOraQuery
    Session = DMControle.Conexao
    SQL.Strings = (
      'select tbxtbi.nidtbxtbi, tbxtbi.ncodtce'
      'from tbxtbi')
    MasterSource = DTS_CADMOV
    Active = True
    Left = 520
    Top = 515
    object QRY_TBXTBI_LKPNIDTBXTBI: TFloatField
      FieldName = 'NIDTBXTBI'
      Required = True
    end
    object QRY_TBXTBI_LKPNCODTCE: TFloatField
      FieldName = 'NCODTCE'
    end
  end
end
