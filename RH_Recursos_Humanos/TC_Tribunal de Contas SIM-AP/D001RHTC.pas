unit D001RHTC;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  Db, Ora, MemDS, DBAccess, VirtualTable;

type
  TDTM_A001RHTC = class(TDataModule)
    QRY_TCE: TOraQuery;
    DTS_TCE: TOraDataSource;
    QRY_TBL_P: TOraQuery;
    QRY_TBL_PNPMNOTCE: TFloatField;
    QRY_TBL_PNMESPGTO: TFloatField;
    QRY_TBL_PNANOPGTO: TFloatField;
    QRY_AMPENDERECO: TOraQuery;
    QRY_AMPPESSOAPUBLICA: TOraQuery;
    QRY_END: TOraQuery;
    QRY_ENDCNOMELOC: TStringField;
    QRY_ENDCNOMELOG: TStringField;
    QRY_ENDCNOMEBAI: TStringField;
    QRY_ENDCSIGLAUF: TStringField;
    QRY_ENDNCEP: TIntegerField;
    QRY_ENDCDDD: TStringField;
    QRY_AMPPESSOAPUBLICANPMNOTCE: TStringField;
    QRY_AMPPESSOAPUBLICACCPFCNPJ: TStringField;
    QRY_AMPPESSOAPUBLICADDTNASC: TStringField;
    QRY_AMPPESSOAPUBLICACNOMEGRL: TStringField;
    QRY_AMPPESSOAPUBLICACSEXO: TStringField;
    QRY_AMPPESSOAPUBLICACRGIE: TStringField;
    QRY_AMPPESSOAPUBLICACUFEMIRG: TStringField;
    QRY_AMPPESSOAPUBLICACPIS: TStringField;
    QRY_AMPPESSOAPUBLICANCARTTRAB: TStringField;
    QRY_AMPPESSOAPUBLICACNINFORMA1: TStringField;
    QRY_AMPPESSOAPUBLICACNINFORMA2: TStringField;
    QRY_AMPPESSOAPUBLICANMESPGTO: TStringField;
    QRY_AMPPESSOAPUBLICANANOPGTO: TStringField;
    QRY_AMPENDERECONPMNOTCE: TStringField;
    QRY_AMPENDERECOCCPFCNPJ: TStringField;
    QRY_AMPENDERECODDTNASC: TStringField;
    QRY_AMPENDERECOCNOMELOC: TStringField;
    QRY_AMPENDERECOCNOMELOG: TStringField;
    QRY_AMPENDERECOCNUMERO: TStringField;
    QRY_AMPENDERECOCCOMPLEMEN: TStringField;
    QRY_AMPENDERECOCNOMEBAI: TStringField;
    QRY_AMPENDERECOCSIGLAUF: TStringField;
    QRY_AMPENDERECONCEP: TStringField;
    QRY_AMPENDERECOCDDD: TStringField;
    QRY_AMPENDERECOCTELRES: TStringField;
    QRY_AMPENDERECOCTELCELULA: TStringField;
    QRY_AMPENDERECOCTELFAX: TStringField;
    QRY_AMPENDERECOCEMAIL: TStringField;
    QRY_AMPENDERECONMESPGTO: TStringField;
    QRY_AMPENDERECONANOPGTO: TStringField;
    QRY_ORGDPT: TOraQuery;
    QRY_DTPSET: TOraQuery;
    QRY_ORGDPTNIDTBXORG: TFloatField;
    QRY_ORGDPTCDESCRIORG: TStringField;
    QRY_ORGDPTNIDTBXDPT: TFloatField;
    QRY_ORGDPTCDESCRIDPT: TStringField;
    QRY_AMPLOTACAO: TOraQuery;
    QRY_AMPLOTACAONPMNOTCE: TStringField;
    QRY_AMPLOTACAONIDLOTACAO: TStringField;
    QRY_AMPLOTACAONFUNCAOGV: TStringField;
    QRY_AMPLOTACAONIDLOTAREC: TStringField;
    QRY_AMPLOTACAOCDESCRLOTA: TStringField;
    QRY_AMPLOTACAONMESPGTO: TStringField;
    QRY_AMPLOTACAONANOPGTO: TStringField;
    QRY_SETFGV: TOraQuery;
    DTS_DTPSET: TOraDataSource;
    QRY_ORGDPTNCODTCE: TFloatField;
    QRY_ORGDPTCFUNCAO: TStringField;
    QRY_SETFGVNIDTBXFGV: TFloatField;
    QRY_SETFGVCFUNCAO: TStringField;
    QRY_SETFGVNCODTCE: TFloatField;
    QRY_CADCRG: TOraQuery;
    QRY_AMPCARGO: TOraQuery;
    QRY_AMPCARGONPMNOTCE: TStringField;
    QRY_AMPCARGONIDCADCRG: TStringField;
    QRY_AMPCARGONCODTCE: TStringField;
    QRY_AMPCARGOCDESCRICRG: TStringField;
    QRY_AMPCARGONTOTVAGAS: TStringField;
    QRY_AMPCARGONVAGASDIS: TStringField;
    QRY_AMPCARGONCODTCE2: TStringField;
    QRY_AMPCARGONMESPGTO: TStringField;
    QRY_AMPCARGONANOPGTO: TStringField;
    QRY_CADCRGNIDCADCRG: TFloatField;
    QRY_CADCRGCDESCRICRG: TStringField;
    QRY_CADCRGNTOTVAGAS: TFloatField;
    QRY_CADCRGNIDTBXTCR: TFloatField;
    QRY_CADCRGNIDTBXGRO: TFloatField;
    QRY_CADCRGNIDTBXSGO: TFloatField;
    QRY_CADCRGNIDTBXSLR: TFloatField;
    QRY_CADCRGNIDTBXPCR: TFloatField;
    QRY_CADCRGNCODTCE: TFloatField;
    QRY_CADCRGNCODTCE2: TFloatField;
    QRY_CADCRGVAGAS: TFloatField;
    QRY_TAGSLR: TOraQuery;
    DTS_CADCRG: TOraDataSource;
    QRY_CADCRGCGRADUACAO: TStringField;
    QRY_CADCRGNIDSLRFIM: TFloatField;
    QRY_CADCRGNHORASSEM: TFloatField;
    QRY_CADCRGNIDTAGSLR: TFloatField;
    QRY_AMPCLASSECARGO: TOraQuery;
    QRY_TAGSLRNIDTAGSLR: TFloatField;
    QRY_TAGSLRCCLASSE: TStringField;
    QRY_TAGSLRNNIVEL: TFloatField;
    QRY_TAGSLRNVALORSLR: TFloatField;
    QRY_TAGSLRNIDTBXSLR: TFloatField;
    QRY_AMPCLASSECARGONPMNOTCE: TStringField;
    QRY_AMPCLASSECARGONIDTAGSLR: TStringField;
    QRY_AMPCLASSECARGONVALORSLR: TStringField;
    QRY_AMPCLASSECARGONMESPGTO: TStringField;
    QRY_AMPCLASSECARGONANOPGTO: TStringField;
    QRY_AMPCLASSECARGONIDCADCRG: TStringField;
    QRY_CADMOV: TOraQuery;
    QRY_CADMOVNIDCADMOV: TFloatField;
    QRY_CADMOVNVALORSLR: TFloatField;
    QRY_CADMOVDDATAFIM: TDateTimeField;
    QRY_CADMOVDDTOBITO: TDateTimeField;
    QRY_CADMOVNPERBENEFI: TFloatField;
    QRY_CADMOVCORGAOORI: TStringField;
    QRY_CADMOVCMOTIVO: TStringField;
    QRY_CADMOVNPERVANTAG: TFloatField;
    QRY_CADMOVDDTAQSINI: TDateTimeField;
    QRY_CADMOVDDTAQSFIM: TDateTimeField;
    QRY_CADMOVNIDATORVG: TFloatField;
    QRY_CADMOVNIDTPMRVG: TFloatField;
    QRY_CADMOVNIDCADATO: TFloatField;
    QRY_CADMOVNIDTAGFFU: TFloatField;
    QRY_CADMOVNIDCADCRG: TFloatField;
    QRY_CADMOVNIDTBXEDI: TFloatField;
    QRY_CADMOVNIDTBXAGI: TFloatField;
    QRY_CADMOVNIDTBXTBI: TFloatField;
    QRY_CADMOVNIDTBXGRP: TFloatField;
    QRY_CADMOVNIDTBXLTB: TFloatField;
    QRY_CADMOVNIDTAGSLR: TFloatField;
    QRY_CADMOVNIDTBXTPM: TFloatField;
    QRY_CADMOVNIDTAGOBT: TFloatField;
    QRY_CADMOVNIDTAGDST: TFloatField;
    QRY_CADMOVNIDTAGODP: TFloatField;
    QRY_CADMOVDDATAINI: TDateTimeField;
    QRY_CADMOVCULTCRGAPS: TStringField;
    QRY_CADMOVNMATRICULA: TFloatField;
    QRY_CADMOVCENVIADOTC: TStringField;
    DTS_CADMOV: TOraDataSource;
    QRY_TBXTCT: TOraQuery;
    QRY_CADATO: TOraQuery;
    QRY_TBXMVP: TOraQuery;
    QRY_TBXEDI: TOraQuery;
    QRY_TBXAGI: TOraQuery;
    QRY_TBXTCTNIDCADCRG: TFloatField;
    QRY_TBXTCTNCODTCE: TFloatField;
    QRY_CADATONIDCADATO: TFloatField;
    QRY_CADATOCNROATO: TStringField;
    QRY_CADATODDTCRIACAO: TDateTimeField;
    QRY_CADATODDTEFEITOS: TDateTimeField;
    QRY_CADATOCSUMULA: TStringField;
    QRY_CADATONEDICAO: TFloatField;
    QRY_CADATONPAGEDICAO: TFloatField;
    QRY_CADATOCNOMEARQ: TStringField;
    QRY_CADATONIDTBXVPB: TFloatField;
    QRY_CADATONIDTBXTAT: TFloatField;
    QRY_CADATONIDTBXRSV: TFloatField;
    QRY_CADATODDTPUBLIC: TDateTimeField;
    QRY_CADATOCATRIBUI: TStringField;
    QRY_CADATOCENVIADOTC: TStringField;
    QRY_CADATONCODTCE: TFloatField;
    QRY_TBXMVPNIDTBXTPM: TFloatField;
    QRY_TBXMVPCDESCRITPM: TStringField;
    QRY_TBXMVPCTIPORVG: TStringField;
    QRY_TBXMVPNIDTPMRVG: TFloatField;
    QRY_TBXMVPCFIXAST: TStringField;
    QRY_TBXMVPCCASCATA: TStringField;
    QRY_TBXMVPCTIPOMVTO: TStringField;
    QRY_TBXMVPNNROTAB: TFloatField;
    QRY_TBXMVPNIDTBXGMV: TFloatField;
    QRY_TBXMVPNIDCADEVE: TFloatField;
    QRY_TBXMVPNIDTBXSTS: TFloatField;
    QRY_TBXMVPCATO: TStringField;
    QRY_TBXMVPCCALCULA: TStringField;
    QRY_TBXMVPNIDTBXSPT: TFloatField;
    QRY_TBXMVPNIDTBXACR: TFloatField;
    QRY_TBXMVPNIDTBXMVP: TFloatField;
    QRY_TBXMVPNCODTCE: TFloatField;
    QRY_TBXEDINIDTBXEDI: TFloatField;
    QRY_TBXEDICNROEDITAL: TStringField;
    QRY_TBXEDIDDTEDITAL: TDateTimeField;
    QRY_TBXEDIDDTPUBLICA: TDateTimeField;
    QRY_TBXEDICDESCRIEDI: TStringField;
    QRY_TBXEDINIDTBXTPS: TFloatField;
    QRY_TBXEDINIDTBXVPB: TFloatField;
    QRY_TBXEDINCODTCE: TFloatField;
    QRY_TBXAGINIDTBXAGI: TFloatField;
    QRY_TBXAGICDESCRIAGI: TStringField;
    QRY_TBXAGINCODTCE: TFloatField;
    QRY_AMPATOMVTPESSOAL: TOraQuery;
    QRY_AMPVEICULOPUBLICACAO: TOraQuery;
    QRY_AMPVEICULOPUBLICACAONPMNOTCE: TStringField;
    QRY_AMPVEICULOPUBLICACAONIDTBXVPB: TStringField;
    QRY_AMPVEICULOPUBLICACAOCDESCRIVPB: TStringField;
    QRY_AMPVEICULOPUBLICACAONMESPGTO: TStringField;
    QRY_AMPVEICULOPUBLICACAONANOPGTO: TStringField;
    QRY_TBXVPB: TOraQuery;
    DTS_CADATO: TOraDataSource;
    QRY_TBXVPBNIDTBXVPB: TFloatField;
    QRY_TBXVPBCDESCRIVPB: TStringField;
    QRY_AMPEDITAL: TOraQuery;
    QRY_AMPMOVIMENTACAO: TOraQuery;
    QRY_TAGPAG: TOraQuery;
    QRY_AMPALOCACAOMENSAL: TOraQuery;
    QRY_TBXORI: TOraQuery;
    QRY_TBXORINIDTBXORI: TFloatField;
    QRY_TBXORICFUNDEF: TStringField;
    QRY_CADCRGNIDTBXCAT: TFloatField;
    QRY_CADCRGNCODTCE3: TFloatField;
    QRY_CADCRGNCODTCE4: TFloatField;
    QRY_AMPVALORESMENSAIS: TOraQuery;
    QRY_AMPVALORESMENSAISNPMNOTCE: TStringField;
    QRY_AMPVALORESMENSAISCCPFCNPJ: TStringField;
    QRY_AMPVALORESMENSAISDDTNASC: TStringField;
    QRY_AMPVALORESMENSAISNIDTBXSET: TStringField;
    QRY_AMPVALORESMENSAISNIDTAGSLR: TStringField;
    QRY_AMPVALORESMENSAISNIDTAGFFU: TStringField;
    QRY_AMPVALORESMENSAISNMESPGTO: TStringField;
    QRY_AMPVALORESMENSAISNANOPGTO: TStringField;
    QRY_AMPVALORESMENSAISNCODTCE: TStringField;
    QRY_AMPVALORESMENSAISNVALOREVE: TStringField;
    QRY_AMPVALORESMENSAISNIDCADCRG: TStringField;
    DTS_TAGPAG: TOraDataSource;
    QRY_TBL_PNPERPATRON: TFloatField;
    QRY_TBL_PNPERPROP: TFloatField;
    QRY_AMPAPOSENTADORIA: TOraQuery;
    QRY_AMPPENSAO: TOraQuery;
    QRY_TBXTBI: TOraQuery;
    QRY_TBXTBINCODTCE: TFloatField;
    QRY_TAGOBT: TOraQuery;
    QRY_TAGOBTCULTIMOCRG: TStringField;
    QRY_TAGOBTNIDTAGOBT: TFloatField;
    QRY_TAGOBTDDTOBITO: TDateTimeField;
    QRY_TAGOBTCMOTIVO: TStringField;
    QRY_TAGOBTNBSPENSAO: TFloatField;
    QRY_TAGOBTNIDCADSER: TFloatField;
    QRY_TAGOBTNIDTAGSLR: TFloatField;
    QRY_CADSER_ORI: TOraQuery;
    DTS_TAGOBT: TOraDataSource;
    QRY_CADSER_ORINIDCADGRL: TFloatField;
    QRY_CADSER_ORICNROAPOSEN: TStringField;
    QRY_CADSER_ORIDDTNASC: TDateTimeField;
    QRY_CADSER_ORICCPFCNPJ: TStringField;
    QRY_TBXGRP: TOraQuery;
    QRY_TBXGRPNCODTCE: TFloatField;
    QRY_CADATO_CRG: TOraQuery;
    QRY_AMPATOSCARGOS: TOraQuery;
    QRY_AMPHISTORICOATOSCARGO: TOraQuery;
    QRY_CADMOV_CRG: TOraQuery;
    QRY_CADATO_CRGNIDCADATO: TFloatField;
    QRY_CADATO_CRGCNROATO: TStringField;
    QRY_CADATO_CRGDDTCRIACAO: TDateTimeField;
    QRY_CADATO_CRGDDTEFEITOS: TDateTimeField;
    QRY_CADATO_CRGCSUMULA: TStringField;
    QRY_CADATO_CRGNEDICAO: TFloatField;
    QRY_CADATO_CRGNPAGEDICAO: TFloatField;
    QRY_CADATO_CRGCNOMEARQ: TStringField;
    QRY_CADATO_CRGNIDTBXVPB: TFloatField;
    QRY_CADATO_CRGNIDTBXTAT: TFloatField;
    QRY_CADATO_CRGNIDTBXRSV: TFloatField;
    QRY_CADATO_CRGDDTPUBLIC: TDateTimeField;
    QRY_CADATO_CRGCATRIBUI: TStringField;
    QRY_CADATO_CRGCENVIADOTC: TStringField;
    DTS_CADATO_CRG: TOraDataSource;
    QRY_CADMOV_CRGNCODTCE: TFloatField;
    QRY_CADMOV_CRGNIDCADCRG: TFloatField;
    QRY_CADMOV_CRGNCODTCE2: TFloatField;
    QRY_CADMOV_CRGNCODTCE3: TFloatField;
    QRY_CADATO_CRGNCODTCE: TFloatField;
    QRY_CADMOV_CRGNTOTVAGAS: TFloatField;
    QRY_CADTCE: TOraQuery;
    DTS_CADTCE: TOraDataSource;
    DTS_DADOS: TOraDataSource;
    QRY_DADOS: TVirtualTable;
    QRY_TBXTPM: TOraQuery;
    QRY_TCECCPFCNPJ: TStringField;
    QRY_TCECNOMEGRL: TStringField;
    QRY_TCECRGIE: TStringField;
    QRY_TCEDDTNASC: TDateTimeField;
    QRY_TCECSEXO: TStringField;
    QRY_TCECUFEMIRG: TStringField;
    QRY_TCECPIS: TStringField;
    QRY_TCENCARTTRAB: TFloatField;
    QRY_TCECTELRES: TStringField;
    QRY_TCECTELCELULA: TStringField;
    QRY_TCECTELFAX: TStringField;
    QRY_TCECEMAIL: TStringField;
    QRY_TCECNUMERO: TStringField;
    QRY_TCECCOMPLEMEN: TStringField;
    QRY_TCENIDCADLOG: TFloatField;
    QRY_TCECENVIARTC: TStringField;
    QRY_TCENIDCADGRL: TFloatField;
    QRY_TCENIDTAGODP: TFloatField;
    QRY_TCENIDTAGDST: TFloatField;
    QRY_TCENIDCADCRG: TFloatField;
    QRY_TCENIDTAGFFU: TFloatField;
    QRY_TCENIDTAGOCT: TFloatField;
    QRY_TCENIDTBXTPM: TFloatField;
    QRY_TCENMESPGTO: TFloatField;
    QRY_TCENANOPGTO: TFloatField;
    QRY_TCECNROAPOSEN: TStringField;
    QRY_TBXTPMNIDTBXTPM: TFloatField;
    QRY_TBXTPMNCODTCE: TFloatField;
    QRY_CARGOS: TOraQuery;
    QRY_CARGOSNIDCADCRG: TFloatField;
    QRY_CARGOSCDESCRICRG: TStringField;
    QRY_CARGOSNTOTVAGAS: TFloatField;
    QRY_CARGOSNCODTCE: TFloatField;
    QRY_CARGOSVAGAS: TFloatField;
    DTS_CARGOS: TOraDataSource;
    QRY_CARGOSNIDTAGSLR: TFloatField;
    QRY_CARGOSNCODTCE2: TFloatField;
    QRY_CLACRG: TOraQuery;
    FloatField1: TFloatField;
    StringField1: TStringField;
    FloatField2: TFloatField;
    FloatField3: TFloatField;
    FloatField4: TFloatField;
    QRY_CARGOSNIDSLRFIM: TFloatField;
    QRY_EXPTCE: TVirtualTable;
    DTS_EXPTCE: TOraDataSource;
    QRY_EXPTCECMESPGTO: TStringField;
    QRY_EXPTCECANOPGTO: TStringField;
    QRY_DADOSDAT_CHAVE: TStringField;
    QRY_DADOSDADOS: TStringField;
    QRY_AMPPESSOAPUBLICANIDCADTCE: TFloatField;
    QRY_AMPENDERECONIDCADTCE: TFloatField;
    QRY_AMPLOTACAONIDCADTCE: TFloatField;
    QRY_AMPCARGONIDCADTCE: TFloatField;
    QRY_AMPCLASSECARGONIDCADTCE: TFloatField;
    QRY_AMPVEICULOPUBLICACAONIDCADTCE: TFloatField;
    QRY_AMPVALORESMENSAISNIDCADTCE: TFloatField;
    QRY_TAGTXT: TOraQuery;
    DTS_TAGTXT: TOraDataSource;
    QRY_TCECSERIETRAB: TStringField;
    QRY_AMPPESSOAPUBLICACSERIETRAB: TStringField;
    QRY_TCENIDTAGSLR: TFloatField;
    QRY_DTPSETNIDTBXORG: TFloatField;
    QRY_DTPSETCDESCRIORG: TStringField;
    QRY_DTPSETNIDTBXDPT: TFloatField;
    QRY_DTPSETCDESCRIDPT: TStringField;
    QRY_DTPSETNCODTCE: TFloatField;
    QRY_DTPSETCFUNCAO: TStringField;
    QRY_ORGDPTNIDTAGODP: TFloatField;
    QRY_DTPSETNIDTAGODP: TFloatField;
    QRY_CARGOSNIDTBXSLR: TFloatField;
    QRY_CADCRGNPERPATRON: TFloatField;
    QRY_CADMOVNMESPGTO: TFloatField;
    QRY_CADMOVNANOPGTO: TFloatField;
    QRY_TCECENDTC: TStringField;
    QRY_TCENRFICHA: TFloatField;
    QRY_CADMOV2: TOraQuery;
    FloatField5: TFloatField;
    FloatField6: TFloatField;
    DateTimeField1: TDateTimeField;
    DateTimeField2: TDateTimeField;
    FloatField7: TFloatField;
    StringField2: TStringField;
    StringField3: TStringField;
    FloatField8: TFloatField;
    DateTimeField3: TDateTimeField;
    DateTimeField4: TDateTimeField;
    FloatField9: TFloatField;
    FloatField10: TFloatField;
    FloatField11: TFloatField;
    FloatField12: TFloatField;
    FloatField13: TFloatField;
    FloatField14: TFloatField;
    FloatField15: TFloatField;
    FloatField16: TFloatField;
    FloatField17: TFloatField;
    FloatField18: TFloatField;
    FloatField19: TFloatField;
    FloatField20: TFloatField;
    FloatField21: TFloatField;
    FloatField22: TFloatField;
    FloatField23: TFloatField;
    DateTimeField5: TDateTimeField;
    StringField4: TStringField;
    FloatField24: TFloatField;
    StringField5: TStringField;
    FloatField25: TFloatField;
    FloatField26: TFloatField;
    DTS_CADMOV2: TOraDataSource;
    QRY_CADATO2: TOraQuery;
    FloatField27: TFloatField;
    StringField6: TStringField;
    DateTimeField6: TDateTimeField;
    DateTimeField7: TDateTimeField;
    StringField7: TStringField;
    FloatField28: TFloatField;
    FloatField29: TFloatField;
    StringField8: TStringField;
    FloatField30: TFloatField;
    FloatField31: TFloatField;
    FloatField32: TFloatField;
    DateTimeField8: TDateTimeField;
    StringField9: TStringField;
    StringField10: TStringField;
    FloatField33: TFloatField;
    DTS_CADATO2: TOraDataSource;
    QRY_TBXVPB2: TOraQuery;
    FloatField34: TFloatField;
    StringField11: TStringField;
    QRY_TBXTCT2: TOraQuery;
    FloatField35: TFloatField;
    FloatField36: TFloatField;
    QRY_TBXTPM2: TOraQuery;
    FloatField37: TFloatField;
    FloatField38: TFloatField;
    QRY_TBXAGI2: TOraQuery;
    FloatField39: TFloatField;
    StringField12: TStringField;
    FloatField40: TFloatField;
    QRY_TBXEDI2: TOraQuery;
    FloatField41: TFloatField;
    StringField13: TStringField;
    DateTimeField9: TDateTimeField;
    DateTimeField10: TDateTimeField;
    StringField14: TStringField;
    FloatField42: TFloatField;
    FloatField43: TFloatField;
    FloatField44: TFloatField;
    QRY_TBXMVP2: TOraQuery;
    FloatField45: TFloatField;
    StringField15: TStringField;
    StringField16: TStringField;
    FloatField46: TFloatField;
    StringField17: TStringField;
    StringField18: TStringField;
    StringField19: TStringField;
    FloatField47: TFloatField;
    FloatField48: TFloatField;
    FloatField49: TFloatField;
    FloatField50: TFloatField;
    StringField20: TStringField;
    StringField21: TStringField;
    FloatField51: TFloatField;
    FloatField52: TFloatField;
    FloatField53: TFloatField;
    FloatField54: TFloatField;
    QRY_TCENIDTBXGRP: TFloatField;
    QRY_CADSER_ORINIDCADSER: TFloatField;
    QRY_CADSER_ORICNOMEGRL: TStringField;
    QRY_CADSER_ORICSEXO: TStringField;
    QRY_TAGPAGNVALORPAG: TFloatField;
    QRY_TAGPAGCDESCRIEVE: TStringField;
    QRY_TAGPAGNCODTCE: TFloatField;
    QRY_TCENPERSLR: TFloatField;
    QRY_TCENIDTAGOBT: TFloatField;
    QRY_TCEDDTADMISSA: TDateTimeField;
    QRY_TAGMVF: TOraQuery;
    QRY_TAGMVFNIDTAGMVF: TFloatField;
    QRY_TAGMVFNCODTCE: TFloatField;
    QRY_CADMOVCENVIADRVG: TStringField;
    QRY_AMPMOVIMENTACAONPMNOTCE: TStringField;
    QRY_AMPMOVIMENTACAOCCPFCNPJ: TStringField;
    QRY_AMPMOVIMENTACAODDTNASC: TStringField;
    QRY_AMPMOVIMENTACAONIDCADCRG: TStringField;
    QRY_AMPMOVIMENTACAONCODTCE: TStringField;
    QRY_AMPMOVIMENTACAONTEMATO: TStringField;
    QRY_AMPMOVIMENTACAONCODTCE2: TStringField;
    QRY_AMPMOVIMENTACAOCNROATO: TStringField;
    QRY_AMPMOVIMENTACAODDTCRIACAO: TStringField;
    QRY_AMPMOVIMENTACAONCODTCE3: TStringField;
    QRY_AMPMOVIMENTACAONCODTCE4: TStringField;
    QRY_AMPMOVIMENTACAONIDTBXEDI: TStringField;
    QRY_AMPMOVIMENTACAODDTEDITAL: TStringField;
    QRY_AMPMOVIMENTACAODDATAINI: TStringField;
    QRY_AMPMOVIMENTACAOCCAMPO1: TStringField;
    QRY_AMPMOVIMENTACAOCCAMPO2: TStringField;
    QRY_AMPMOVIMENTACAODDATAFIM: TStringField;
    QRY_AMPMOVIMENTACAONCODTCE5: TStringField;
    QRY_AMPMOVIMENTACAOCCAMPO3: TStringField;
    QRY_AMPMOVIMENTACAONMESPGTO: TStringField;
    QRY_AMPMOVIMENTACAONANOPGTO: TStringField;
    QRY_AMPMOVIMENTACAONIDCADTCE: TFloatField;
    QRY_AMPAPOSENTADORIANPMNOTCE: TStringField;
    QRY_AMPAPOSENTADORIACCPFCNPJ: TStringField;
    QRY_AMPAPOSENTADORIADDTNASC: TStringField;
    QRY_AMPAPOSENTADORIANCODTCE: TStringField;
    QRY_AMPAPOSENTADORIACNROAPOSEN: TStringField;
    QRY_AMPAPOSENTADORIANPERCENT: TStringField;
    QRY_AMPAPOSENTADORIACDESCRCRG: TStringField;
    QRY_AMPAPOSENTADORIANIDTAGSLR: TStringField;
    QRY_AMPAPOSENTADORIANPMNOTCE2: TStringField;
    QRY_AMPAPOSENTADORIADDTEFEITOS: TStringField;
    QRY_AMPAPOSENTADORIADDTFIM: TStringField;
    QRY_AMPAPOSENTADORIANMESPGTO: TStringField;
    QRY_AMPAPOSENTADORIANANOPGTO: TStringField;
    QRY_AMPAPOSENTADORIANIDCADTCE: TFloatField;
    QRY_AMPPENSAONPMNOTCE: TStringField;
    QRY_AMPPENSAOCCPFCNPJ: TStringField;
    QRY_AMPPENSAODDTNASC: TStringField;
    QRY_AMPPENSAONCODTCE2: TStringField;
    QRY_AMPPENSAONIDTAGFFU: TStringField;
    QRY_AMPPENSAONCODTCE: TStringField;
    QRY_AMPPENSAOCCPFCNPJ2: TStringField;
    QRY_AMPPENSAODDTNASC2: TStringField;
    QRY_AMPPENSAONCODTCE3: TStringField;
    QRY_AMPPENSAOCNROAPOSEN: TStringField;
    QRY_AMPPENSAONPERBENEFI: TStringField;
    QRY_AMPPENSAODDTEFEITOS: TStringField;
    QRY_AMPPENSAODDTFIM: TStringField;
    QRY_AMPPENSAONMESPGTO: TStringField;
    QRY_AMPPENSAONANOPGTO: TStringField;
    QRY_AMPPENSAONIDCADTCE: TFloatField;
    QRY_AMPATOMVTPESSOALNPMNOTCE: TStringField;
    QRY_AMPATOMVTPESSOALNCODTCE: TStringField;
    QRY_AMPATOMVTPESSOALCNROATO: TStringField;
    QRY_AMPATOMVTPESSOALDDTCRIACAO: TStringField;
    QRY_AMPATOMVTPESSOALDDTPUBLICA: TStringField;
    QRY_AMPATOMVTPESSOALNIDTBXVPB: TStringField;
    QRY_AMPATOMVTPESSOALCNOMEARQ: TStringField;
    QRY_AMPATOMVTPESSOALNMESPGTO: TStringField;
    QRY_AMPATOMVTPESSOALNANOPGTO: TStringField;
    QRY_AMPATOMVTPESSOALNIDTBXTAT: TStringField;
    QRY_AMPATOMVTPESSOALNIDCADTCE: TFloatField;
    QRY_AMPEDITALNPMNOTCE: TStringField;
    QRY_AMPEDITALNCODTCE: TStringField;
    QRY_AMPEDITALCNROEDITAL: TStringField;
    QRY_AMPEDITALDDTEDITAL: TStringField;
    QRY_AMPEDITALDDTPUBLICA: TStringField;
    QRY_AMPEDITALCDESCRIEDI: TStringField;
    QRY_AMPEDITALNIDTBXVPB: TStringField;
    QRY_AMPEDITALCNOMEARQ: TStringField;
    QRY_AMPEDITALNMESPGTO: TStringField;
    QRY_AMPEDITALNANOPGTO: TStringField;
    QRY_AMPEDITALNIDCADTCE: TFloatField;
    QRY_AMPATOSCARGOSNPMNOTCE: TStringField;
    QRY_AMPATOSCARGOSNCODTCE: TStringField;
    QRY_AMPATOSCARGOSCNROATO: TStringField;
    QRY_AMPATOSCARGOSDDTCRIACAO: TStringField;
    QRY_AMPATOSCARGOSDDTPUBLICA: TStringField;
    QRY_AMPATOSCARGOSNIDTBXVPB: TStringField;
    QRY_AMPATOSCARGOSCNOMEARQ: TStringField;
    QRY_AMPATOSCARGOSNMESPGTO: TStringField;
    QRY_AMPATOSCARGOSNANOPGTO: TStringField;
    QRY_AMPATOSCARGOSNIDCADTCE: TFloatField;
    QRY_AMPHISTORICOATOSCARGONPMNOTCE: TStringField;
    QRY_AMPHISTORICOATOSCARGOCNROATO: TStringField;
    QRY_AMPHISTORICOATOSCARGODDTPUBLICA: TStringField;
    QRY_AMPHISTORICOATOSCARGONCODTCE: TStringField;
    QRY_AMPHISTORICOATOSCARGONCODTCE2: TStringField;
    QRY_AMPHISTORICOATOSCARGONCODTCE3: TStringField;
    QRY_AMPHISTORICOATOSCARGONTOTVAGAS: TStringField;
    QRY_AMPHISTORICOATOSCARGOCCAMPO1: TStringField;
    QRY_AMPHISTORICOATOSCARGONMESPGTO: TStringField;
    QRY_AMPHISTORICOATOSCARGONANOPGTO: TStringField;
    QRY_AMPHISTORICOATOSCARGONIDCADCRG: TStringField;
    QRY_AMPHISTORICOATOSCARGONIDCADTCE: TFloatField;
    QRY_TBXENT: TOraQuery;
    DTS_TBXENT: TOraDataSource;
    QRY_AMPALOCACAOMENSALNPMNOTCE: TStringField;
    QRY_AMPALOCACAOMENSALCCPFCNPJ: TStringField;
    QRY_AMPALOCACAOMENSALDDTNASC: TStringField;
    QRY_AMPALOCACAOMENSALNIDTBXSET: TStringField;
    QRY_AMPALOCACAOMENSALNIDCADCRG: TStringField;
    QRY_AMPALOCACAOMENSALNIDTAGSLR: TStringField;
    QRY_AMPALOCACAOMENSALNIDTAGFFU: TStringField;
    QRY_AMPALOCACAOMENSALNCODTCE: TStringField;
    QRY_AMPALOCACAOMENSALCFUNDEF: TStringField;
    QRY_AMPALOCACAOMENSALNCODTCE3: TStringField;
    QRY_AMPALOCACAOMENSALNPERPATRON: TStringField;
    QRY_AMPALOCACAOMENSALNPERPROP: TStringField;
    QRY_AMPALOCACAOMENSALNCODTCE2: TStringField;
    QRY_AMPALOCACAOMENSALCORGAOORI: TStringField;
    QRY_AMPALOCACAOMENSALNMESPGTO: TStringField;
    QRY_AMPALOCACAOMENSALNANOPGTO: TStringField;
    QRY_AMPALOCACAOMENSALNIDCADTCE: TFloatField;
    QRY_TBXENTNIDTBXENT: TFloatField;
    QRY_TBXENTCDESCRIENT: TStringField;
    QRY_TBXENTNCODTCE: TFloatField;
    QRY_TAGTXTNIDCADTCE: TFloatField;
    QRY_TAGTXTNIDTAGTXT: TFloatField;
    QRY_TAGTXTDDTENVIO: TDateTimeField;
    QRY_TAGTXTCUSUARIO: TStringField;
    QRY_TAGTXTDAT_CHAVE: TStringField;
    QRY_TAGTXTSTATUS: TStringField;
    QRY_TAGTXTCCOMPETE: TStringField;
    QRY_TAGTXTCMESPGTO: TFloatField;
    QRY_TAGTXTCANOPGTO: TFloatField;
    QRY_CADTCEDAT_CHAVE: TStringField;
    QRY_CADTCENIDCADTCE: TFloatField;
    QRY_CADTCECMESPGTO: TFloatField;
    QRY_CADTCECANOPGTO: TFloatField;
    QRY_CADTCECUSUARIO: TStringField;
    QRY_CADTCENIDTBXENT: TFloatField;
    QRY_CADTCECCOMPETE: TStringField;
    QRY_CADTCESTATUS: TStringField;
    QRY_TBXTBICPERCAPO: TStringField;
    QRY_TBXTBI_1: TOraQuery;
    QRY_TBXTBI_1NCODTCE: TFloatField;
    QRY_TBXTBI_1NPERBENEFI: TFloatField;
    QRY_TAGOBTNIDTBXTBI: TFloatField;
    QRY_TBXTBI_LKP: TOraQuery;
    QRY_TBXTBI_LKPNIDTBXTBI: TFloatField;
    QRY_TBXTBI_LKPNCODTCE: TFloatField;
    QRY_TAGOBTLKP_NCODTCE: TStringField;
    procedure QRY_CADTCECalcFields(DataSet: TDataSet);
    procedure QRY_TAGTXTCalcFields(DataSet: TDataSet);
    procedure QRY_TBXEDICDESCRIEDIGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure StringField14GetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    procedure Tabelas(lAcaoTab: Boolean);
    procedure RefreshTabelas;
    { Public declarations }
  end;

var
  DTM_A001RHTC: TDTM_A001RHTC;

implementation

uses DMCTRL;

{$R *.DFM}

procedure TDTM_A001RHTC.QRY_CADTCECalcFields(DataSet: TDataSet);
begin
 if not DataSet.FieldByName('CMESPGTO').IsNull then
   begin
    if QRY_CADTCE.RecordCount > 0 then
       begin
         DataSet.FieldByName('STATUS').AsString := 'ENVIADO';
         DataSet.FieldByName('CCOMPETE').AsString :=
         UpperCase(LongMonthNames[DataSet.FieldByName('CMESPGTO').AsInteger])+'/'+
         DataSet.FieldByName('CANOPGTO').AsString;
       end
    else
       begin
         DataSet.FieldByName('STATUS').AsString := 'NAO ENVIADO';
         DataSet.FieldByName('CCOMPETE').AsString :=
         UpperCase(LongMonthNames[QRY_TBL_P.FieldByName('NMESPGTO').AsInteger])+'/'+
         QRY_TBL_P.FieldByName('NANOPGTO').AsString;
       end;
   end;
end;

procedure TDTM_A001RHTC.QRY_TAGTXTCalcFields(DataSet: TDataSet);
var cBimestre : String;
begin
  if not DataSet.FieldByName('DDTENVIO').IsNull then
    DataSet.FieldByName('STATUS').AsString := 'ENVIADO';
  if DataSet.FieldByName('CMESPGTO').AsInteger in [1,2] then
     cBimestre := '1º BIMESTRE'
  else
  if DataSet.FieldByName('CMESPGTO').AsInteger in [3,4] then
     cBimestre := '2º BIMESTRE'
  else
  if DataSet.FieldByName('CMESPGTO').AsInteger in [5,6] then
     cBimestre := '3º BIMESTRE'
  else
  if DataSet.FieldByName('CMESPGTO').AsInteger in [7,8] then
     cBimestre := '4º BIMESTRE'
  else
  if DataSet.FieldByName('CMESPGTO').AsInteger in [9,10] then
     cBimestre := '5º BIMESTRE'
  else
  if DataSet.FieldByName('CMESPGTO').AsInteger in [11,12] then
     cBimestre := '6º BIMESTRE';
  DataSet.FieldByName('CCOMPETE').AsString := cBimestre;

//  DataSet.FieldByName('CCOMPETE').AsString :=
//  UpperCase(LongMonthNames[QRY_CADTCE.FieldByName('CMESPGTO').AsInteger])+'/'+
//  QRY_CADTCE.FieldByName('CANOPGTO').AsString;
end;

procedure TDTM_A001RHTC.RefreshTabelas;
var nTab : integer;
begin
    for nTab:=0 to DTM_A001RHTC.ComponentCount-1 do
      begin
        if DTM_A001RHTC.Components[nTab] is TOraQuery then
          with TOraQuery(DTM_A001RHTC.Components[nTab])do
            Refresh;
      end;
end;

procedure TDTM_A001RHTC.Tabelas(lAcaoTab : Boolean);
var nTab : integer;
begin
    for nTab:=0 to DTM_A001RHTC.ComponentCount-1 do
      begin
        if DTM_A001RHTC.Components[nTab] is TOraQuery then
          with TOraQuery(DTM_A001RHTC.Components[nTab])do
            Active := lAcaoTab;
      end;
end;

procedure TDTM_A001RHTC.QRY_TBXEDICDESCRIEDIGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  Text := StringReplace(Sender.AsString,#$D#$A,'',[rfReplaceAll, rfIgnoreCase]);
end;

procedure TDTM_A001RHTC.StringField14GetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  Text := StringReplace(Sender.AsString,#$D#$A,'',[rfReplaceAll, rfIgnoreCase]);
end;

procedure TDTM_A001RHTC.DataModuleCreate(Sender: TObject);
begin
  Tabelas(False);
end;

end.
