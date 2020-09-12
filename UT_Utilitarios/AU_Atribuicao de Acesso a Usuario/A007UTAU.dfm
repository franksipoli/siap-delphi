object FRM_A007UTAU: TFRM_A007UTAU
  Left = 73
  Top = 32
  BorderStyle = bsSingle
  ClientHeight = 481
  ClientWidth = 672
  Color = clSilver
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Scaled = False
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object LMDGroupBox3: TLMDGroupBox
    Left = 6
    Top = 6
    Width = 659
    Height = 469
    BackFX.AlphaBlend.Strength = 0.600000023841858
    Bevel.StyleInner = bvFrameLowered
    Bevel.BorderColor = cl3DLight
    Bevel.LightColor = clGray
    Bevel.Mode = bmCustom
    Bevel.ShadowColor = clSilver
    Bevel.StandardStyle = lsFrameInset
    Caption = '  Acesso à Campos  '
    CaptionFont.Charset = ANSI_CHARSET
    CaptionFont.Color = clWindowText
    CaptionFont.Height = -11
    CaptionFont.Name = 'Tahoma'
    CaptionFont.Style = [fsBold]
    CaptionParentFont = False
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentColor = True
    ParentFont = False
    TabOrder = 0
    object BTN_ADITEM1: TSpeedButton
      Left = 227
      Top = 204
      Width = 40
      Height = 34
      Cursor = crHandPoint
      Caption = 'Item'
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333303333
        333333333337F33333333333333033333333333333373F333333333333090333
        33333333337F7F33333333333309033333333333337373F33333333330999033
        3333333337F337F33333333330999033333333333733373F3333333309999903
        333333337F33337F33333333099999033333333373333373F333333099999990
        33333337FFFF3FF7F33333300009000033333337777F77773333333333090333
        33333333337F7F33333333333309033333333333337F7F333333333333090333
        33333333337F7F33333333333309033333333333337F7F333333333333090333
        33333333337F7F33333333333300033333333333337773333333}
      Layout = blGlyphBottom
      NumGlyphs = 2
      OnClick = BTN_ADITEM1Click
    end
    object BTN_RENITEM1: TSpeedButton
      Left = 343
      Top = 204
      Width = 40
      Height = 34
      Cursor = crHandPoint
      Caption = 'Item'
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333000333
        3333333333777F33333333333309033333333333337F7F333333333333090333
        33333333337F7F33333333333309033333333333337F7F333333333333090333
        33333333337F7F33333333333309033333333333FF7F7FFFF333333000090000
        3333333777737777F333333099999990333333373F3333373333333309999903
        333333337F33337F33333333099999033333333373F333733333333330999033
        3333333337F337F3333333333099903333333333373F37333333333333090333
        33333333337F7F33333333333309033333333333337373333333333333303333
        333333333337F333333333333330333333333333333733333333}
      Layout = blGlyphTop
      NumGlyphs = 2
      OnClick = BTN_RENITEM1Click
    end
    object BTN_ADDTODOS1: TSpeedButton
      Left = 275
      Top = 204
      Width = 40
      Height = 34
      Cursor = crHandPoint
      Caption = 'Tudo'
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333033333
        33333333373F33333333333330B03333333333337F7F33333333333330F03333
        333333337F7FF3333333333330B00333333333337F773FF33333333330F0F003
        333333337F7F773F3333333330B0B0B0333333337F7F7F7F3333333300F0F0F0
        333333377F73737F33333330B0BFBFB03333337F7F33337F33333330F0FBFBF0
        3333337F7333337F33333330BFBFBFB033333373F3333373333333330BFBFB03
        33333337FFFFF7FF3333333300000000333333377777777F333333330EEEEEE0
        33333337FFFFFF7FF3333333000000000333333777777777F33333330000000B
        03333337777777F7F33333330000000003333337777777773333}
      Layout = blGlyphBottom
      NumGlyphs = 2
      OnClick = BTN_ADDTODOS1Click
    end
    object BTN_RENTODOS1: TSpeedButton
      Left = 391
      Top = 204
      Width = 40
      Height = 34
      Cursor = crHandPoint
      BiDiMode = bdLeftToRight
      Caption = 'Tudo'
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000120B0000120B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333000000000
        333333777777777F33333330B00000003333337F7777777F3333333000000000
        333333777777777F333333330EEEEEE033333337FFFFFF7F3333333300000000
        333333377777777F3333333330BFBFB03333333373333373F33333330BFBFBFB
        03333337F33333F7F33333330FBFBF0F03333337F33337F7F33333330BFBFB0B
        03333337F3F3F7F7333333330F0F0F0033333337F7F7F773333333330B0B0B03
        3333333737F7F7F333333333300F0F03333333337737F7F33333333333300B03
        333333333377F7F33333333333330F03333333333337F7F33333333333330B03
        3333333333373733333333333333303333333333333373333333}
      Layout = blGlyphTop
      NumGlyphs = 2
      ParentBiDiMode = False
      OnClick = BTN_RENTODOS1Click
    end
    object PNL_APLIC1: TLMDPanelFill
      Left = 9
      Top = 19
      Width = 642
      Height = 19
      UseDockManager = False
      Alignment = agCenterLeft
      BackFX.AlphaBlend.Strength = 0.600000023841858
      Bevel.Mode = bmStandard
      Bevel.StandardStyle = lsNone
      Caption = '  Campos sem restrições de Aplicações do Usuário'
      FillObject.Style = sfGradient
      FillObject.Gradient.Color = 16053492
      FillObject.Gradient.ColorCount = 100
      FillObject.Gradient.EndColor = 10066329
      FillObject.Alignment = agCenter
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      FontFX.Style = tdSunken
      ParentFont = False
      TabOrder = 0
      object BTN_RETROCEDER1: TSpeedButton
        Left = 584
        Top = 0
        Width = 28
        Height = 19
        Cursor = crHandPoint
        Flat = True
        Glyph.Data = {
          DE000000424DDE0000000000000076000000280000000D0000000D0000000100
          0400000000006800000000000000000000001000000010000000000000000000
          BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
          7000777777077777700077777007777770007777060777777000777066000007
          7000770666666607700070666666660770007706666666077000777066000007
          7000777706077777700077777007777770007777770777777000777777777777
          7000}
        OnClick = BTN_RETROCEDER1Click
      end
      object BTN_AVANCAR1: TSpeedButton
        Left = 612
        Top = 0
        Width = 28
        Height = 19
        Cursor = crHandPoint
        Flat = True
        Glyph.Data = {
          DE000000424DDE0000000000000076000000280000000D0000000D0000000100
          0400000000006800000000000000000000001000000010000000000000000000
          BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
          7000777777077777700077777700777770007777770607777000770000066077
          7000770666666607700077066666666070007706666666077000770000066077
          7000777777060777700077777700777770007777770777777000777777777777
          7000}
        OnClick = BTN_AVANCAR1Click
      end
    end
    object DBG_CAMPOS1: TDBGrid
      Left = 9
      Top = 39
      Width = 642
      Height = 161
      DataSource = DTS_CPOUSU
      FixedColor = clSilver
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Options = [dgTitles, dgTabs, dgCancelOnExit, dgMultiSelect]
      ParentFont = False
      TabOrder = 1
      TitleFont.Charset = ANSI_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      OnDrawColumnCell = DBG_CAMPOS1DrawColumnCell
      OnMouseUp = DBG_CAMPOS1MouseUp
      Columns = <
        item
          Expanded = False
          FieldName = 'CDESCCAMPO'
          Title.Caption = 'Descrição do Campo'
          Width = 620
          Visible = True
        end>
    end
    object DBG_CAMPOS2: TDBGrid
      Left = 9
      Top = 261
      Width = 642
      Height = 165
      DataSource = DTS_054
      FixedColor = clSilver
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Options = [dgTitles, dgTabs, dgCancelOnExit, dgMultiSelect]
      ParentFont = False
      TabOrder = 2
      TitleFont.Charset = ANSI_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = [fsBold]
      OnDrawColumnCell = DBG_CAMPOS2DrawColumnCell
      OnMouseUp = DBG_CAMPOS2MouseUp
      Columns = <
        item
          Expanded = False
          FieldName = 'CDESCCAMPO'
          Title.Caption = 'Descrição do Campo'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = []
          Width = 263
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CTRATAMENT'
          Title.Caption = 'Tratamento'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = []
          Width = 105
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CCONDICAO'
          Title.Caption = 'Condição'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = []
          Width = 164
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CNOMEUSU'
          Title.Caption = 'Restringido por'
          Title.Font.Charset = ANSI_CHARSET
          Title.Font.Color = clWindowText
          Title.Font.Height = -11
          Title.Font.Name = 'Tahoma'
          Title.Font.Style = []
          Width = 89
          Visible = True
        end>
    end
    object PNL_APLIC2: TLMDPanelFill
      Left = 9
      Top = 241
      Width = 642
      Height = 19
      UseDockManager = False
      Alignment = agCenterLeft
      Bevel.Mode = bmStandard
      Bevel.StandardStyle = lsNone
      Caption = '  Campos com restrições das Aplicações do Usuário'
      FillObject.Style = sfGradient
      FillObject.Gradient.Color = 16053492
      FillObject.Gradient.ColorCount = 100
      FillObject.Gradient.EndColor = 10066329
      FillObject.Alignment = agCenter
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      FontFX.Style = tdSunken
      ParentFont = False
      TabOrder = 3
      object BTN_RETROCEDER2: TSpeedButton
        Left = 584
        Top = 0
        Width = 28
        Height = 19
        Cursor = crHandPoint
        Flat = True
        Glyph.Data = {
          DE000000424DDE0000000000000076000000280000000D0000000D0000000100
          0400000000006800000000000000000000001000000010000000000000000000
          BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
          7000777777077777700077777007777770007777060777777000777066000007
          7000770666666607700070666666660770007706666666077000777066000007
          7000777706077777700077777007777770007777770777777000777777777777
          7000}
        OnClick = BTN_RETROCEDER2Click
      end
      object BTN_AVANCAR2: TSpeedButton
        Left = 612
        Top = 0
        Width = 28
        Height = 19
        Cursor = crHandPoint
        Flat = True
        Glyph.Data = {
          DE000000424DDE0000000000000076000000280000000D0000000D0000000100
          0400000000006800000000000000000000001000000010000000000000000000
          BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
          7000777777077777700077777700777770007777770607777000770000066077
          7000770666666607700077066666666070007706666666077000770000066077
          7000777777060777700077777700777770007777770777777000777777777777
          7000}
        OnClick = BTN_AVANCAR2Click
      end
      object BTN_ACOES: TSpeedButton
        Left = 556
        Top = 0
        Width = 28
        Height = 19
        Cursor = crHandPoint
        Flat = True
        Glyph.Data = {
          C6050000424DC605000000000000360400002800000014000000140000000100
          08000000000090010000C30E0000C30E00000001000000000000000000004000
          00006000000080000000A0000000C0000000E0000000FF000000008000004080
          00006080000080800000A0800000C0800000E0800000FF80000000C0000040C0
          000060C0000080C00000A0C00000C0C00000E0C00000FFC0000000FF000040FF
          000060FF000080FF0000A0FF0000C0FF0000E0FF0000FFFF0000000040004000
          40006000400080004000A0004000C0004000E0004000FF004000008040004080
          40006080400080804000A0804000C0804000E0804000FF80400000C0400040C0
          400060C0400080C04000A0C04000C0C04000E0C04000FFC0400000FF400040FF
          400060FF400080FF4000A0FF4000C0FF4000E0FF4000FFFF4000000060004000
          60006000600080006000A0006000C0006000E0006000FF006000008060004080
          60006080600080806000A0806000C0806000E0806000FF80600000C0600040C0
          600060C0600080C06000A0C06000C0C06000E0C06000FFC0600000FF600040FF
          600060FF600080FF6000A0FF6000C0FF6000E0FF6000FFFF6000000080004000
          80006000800080008000A0008000C0008000E0008000FF008000008080004080
          80006080800080808000A0808000C0808000E0808000FF80800000C0800040C0
          800060C0800080C08000A0C08000C0C08000E0C08000FFC0800000FF800040FF
          800060FF800080FF8000A0FF8000C0FF8000E0FF8000FFFF80000000A0004000
          A0006000A0008000A000A000A000C000A000E000A000FF00A0000080A0004080
          A0006080A0008080A000A080A000C080A000E080A000FF80A00000C0A00040C0
          A00060C0A00080C0A000A0C0A000C0C0A000E0C0A000FFC0A00000FFA00040FF
          A00060FFA00080FFA000A0FFA000C0FFA000E0FFA000FFFFA0000000C0004000
          C0006000C0008000C000A000C000C000C000E000C000FF00C0000080C0004080
          C0006080C0008080C000A080C000C080C000E080C000FF80C00000C0C00040C0
          C00060C0C00080C0C000A0C0C000C0C0C000E0C0C000FFC0C00000FFC00040FF
          C00060FFC00080FFC000A0FFC000C0FFC000E0FFC000FFFFC0000000E0004000
          E0006000E0008000E000A000E000C000E000E000E000FF00E0000080E0004080
          E0006080E0008080E000A080E000C080E000E080E000FF80E00000C0E00040C0
          E00060C0E00080C0E000A0C0E000C0C0E000E0C0E000FFC0E00000FFE00040FF
          E00060FFE00080FFE000A0FFE000C0FFE000E0FFE000FFFFE0000000FF004000
          FF006000FF008000FF00A000FF00C000FF00E000FF00FF00FF000080FF004080
          FF006080FF008080FF00A080FF00C080FF00E080FF00FF80FF0000C0FF0040C0
          FF0060C0FF0080C0FF00A0C0FF00C0C0FF00E0C0FF00FFC0FF0000FFFF0040FF
          FF0060FFFF0080FFFF00A0FFFF00C0FFFF00E0FFFF00FFFFFF00B5B5B5B5B5B5
          B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5
          B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5
          B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5
          0000000000000000000000B5B5B5B5B5B5B5B5B5F8F8F8F8F8F8F8F8F8F800B5
          B5B5B5B5B5B5B5B5F80707070707070707F800B5B5B5B5B50404B5B5F8F8F8F8
          F8F8F8F8F8F80000000000000707B5B5F8070707079494949490949094949490
          0007B5B5F8070707001F040000949490909494900007B5B500F8F8F800901F04
          00949094949094940004B5B5B500000000DEDE1F0494949490940000B5B5B5B5
          B5B5B5B500009090040094909400B5B5B5B5B5B5B5B5B5B5B5B5B500901F0404
          B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B500001F04B5B5B5B5B5B5B5B5B5B5B5B5
          B5B5B5B5B5B5B51FB5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5
          B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5B5
          B5B5B5B5B5B5B5B5B5B5}
        OnClick = BTN_ACOESClick
      end
    end
    object BTN_CONFIRMAR: TBitBtn
      Left = 134
      Top = 433
      Width = 90
      Height = 25
      Cursor = crHandPoint
      Caption = 'Confirmar'
      Default = True
      TabOrder = 4
      OnClick = BTN_CONFIRMARClick
      Glyph.Data = {
        DE010000424DDE01000000000000760000002800000024000000120000000100
        0400000000006801000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333333333333333330000333333333333333333333333F33333333333
        00003333344333333333333333388F3333333333000033334224333333333333
        338338F3333333330000333422224333333333333833338F3333333300003342
        222224333333333383333338F3333333000034222A22224333333338F338F333
        8F33333300003222A3A2224333333338F3838F338F33333300003A2A333A2224
        33333338F83338F338F33333000033A33333A222433333338333338F338F3333
        0000333333333A222433333333333338F338F33300003333333333A222433333
        333333338F338F33000033333333333A222433333333333338F338F300003333
        33333333A222433333333333338F338F00003333333333333A22433333333333
        3338F38F000033333333333333A223333333333333338F830000333333333333
        333A333333333333333338330000333333333333333333333333333333333333
        0000}
      NumGlyphs = 2
    end
    object BTN_CANCELAR: TBitBtn
      Left = 434
      Top = 433
      Width = 90
      Height = 25
      Cursor = crHandPoint
      Caption = 'Cancelar'
      TabOrder = 5
      OnClick = BTN_CANCELARClick
      Kind = bkCancel
    end
  end
  object CDS_CPOUSU: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'CDESCCAMPO'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'NIDTBL_D'
        DataType = ftFloat
      end
      item
        Name = 'CTIPOCAMPO'
        DataType = ftString
        Size = 1
      end>
    IndexDefs = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'nidtbl_u'
        ParamType = ptInput
        Value = 0
      end>
    ProviderName = 'OP_CPOUSU'
    StoreDefs = True
    Left = 98
    Top = 112
    object CDS_CPOUSUCDESCCAMPO: TStringField
      DisplayLabel = 'Campo'
      FieldName = 'CDESCCAMPO'
      ProviderFlags = []
      Size = 50
    end
    object CDS_CPOUSUNIDTBL_D: TFloatField
      FieldName = 'NIDTBL_D'
      ProviderFlags = []
    end
    object CDS_CPOUSUCTIPOCAMPO: TStringField
      FieldName = 'CTIPOCAMPO'
      ProviderFlags = []
      Size = 1
    end
  end
  object OP_CPOUSU: TOraProvider
    DataSet = DTM_A007UTAU.QRY_CPOUSU
    Constraints = True
    Left = 170
    Top = 112
  end
  object DTS_CPOUSU: TOraDataSource
    DataSet = CDS_CPOUSU
    Left = 250
    Top = 112
  end
  object CDS_054: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'CDESCCAMPO'
        DataType = ftString
        Size = 50
      end
      item
        Name = 'CTIPOCAMPO'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'NIDTBL_U'
        DataType = ftInteger
      end
      item
        Name = 'NIDTBL_D'
        DataType = ftInteger
      end
      item
        Name = 'CCONDICAO'
        DataType = ftString
        Size = 30
      end
      item
        Name = 'CTIPOMASCA'
        DataType = ftString
        Size = 20
      end
      item
        Name = 'CTRATAMENT'
        DataType = ftString
        Size = 1
      end
      item
        Name = 'NIDTBL_UD'
        Attributes = [faRequired]
        DataType = ftFloat
      end
      item
        Name = 'NUSUAUTOR'
        DataType = ftFloat
      end
      item
        Name = 'CNOMEUSU'
        DataType = ftString
        Size = 10
      end
      item
        Name = 'DAT_ALTERAR'
        DataType = ftString
        Size = 1
      end>
    IndexDefs = <>
    Params = <
      item
        DataType = ftUnknown
        Name = 'nIdOperador'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'nidtbl_u'
        ParamType = ptUnknown
      end>
    ProviderName = 'OP_054'
    StoreDefs = True
    AfterScroll = CDS_054AfterScroll
    Left = 102
    Top = 332
    object CDS_054CDESCCAMPO: TStringField
      DisplayLabel = 'Campo'
      FieldName = 'CDESCCAMPO'
      ProviderFlags = []
      Size = 50
    end
    object CDS_054CTIPOCAMPO: TStringField
      FieldName = 'CTIPOCAMPO'
      ProviderFlags = []
      Size = 1
    end
    object CDS_054NIDTBL_U: TIntegerField
      FieldName = 'NIDTBL_U'
      ProviderFlags = []
    end
    object CDS_054NIDTBL_D: TIntegerField
      FieldName = 'NIDTBL_D'
    end
    object CDS_054CCONDICAO: TStringField
      FieldName = 'CCONDICAO'
      ProviderFlags = []
      Size = 30
    end
    object CDS_054CTIPOMASCA: TStringField
      FieldName = 'CTIPOMASCA'
      ProviderFlags = []
    end
    object CDS_054CTRATAMENT: TStringField
      FieldName = 'CTRATAMENT'
      ProviderFlags = []
      OnGetText = CDS_054CTRATAMENTGetText
      Size = 1
    end
    object CDS_054NIDTBL_UD: TFloatField
      FieldName = 'NIDTBL_UD'
      Required = True
    end
    object CDS_054NUSUAUTOR: TFloatField
      FieldName = 'NUSUAUTOR'
      ProviderFlags = []
    end
    object CDS_054CNOMEUSU: TStringField
      FieldName = 'CNOMEUSU'
      ProviderFlags = []
      Size = 10
    end
    object CDS_054DAT_ALTERAR: TStringField
      FieldName = 'DAT_ALTERAR'
      ProviderFlags = []
      Size = 1
    end
  end
  object OP_054: TOraProvider
    DataSet = DTM_A007UTAU.QRY_054
    Constraints = True
    BeforeUpdateRecord = OP_054BeforeUpdateRecord
    Left = 174
    Top = 336
  end
  object DTS_054: TOraDataSource
    DataSet = CDS_054
    Left = 254
    Top = 332
  end
  object QRY_RESTRINGICAMPO: TOraQuery
    Session = DMControle.Conexao
    SQL.Strings = (
      'begin'
      
        '  RESTRINGCAMPO(:NIDUSUARIO, :NIDOPERADOR, :NIDCAMPO, :CCONDICAO' +
        'CAMPO, :CMASCARA, :CTRATA);'
      'end;')
    Left = 622
    Top = 438
    ParamData = <
      item
        DataType = ftFloat
        Name = 'NIDUSUARIO'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'NIDOPERADOR'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'NIDCAMPO'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'CCONDICAOCAMPO'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'CMASCARA'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'CTRATA'
        ParamType = ptInput
      end>
  end
  object QRY_ATUALIZACAMPOREST: TOraQuery
    Session = DMControle.Conexao
    SQL.Strings = (
      'begin'
      
        '  mpl.ATUALIZACAMPOREST(:NIDUSUARIO, :NIDCAMPO, :CCONDICAOCAMPO,' +
        ' :CMASCARA, :CTRATA);'
      'end;')
    Left = 590
    Top = 438
    ParamData = <
      item
        DataType = ftFloat
        Name = 'NIDUSUARIO'
        ParamType = ptInput
      end
      item
        DataType = ftFloat
        Name = 'NIDCAMPO'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'CCONDICAOCAMPO'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'CMASCARA'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'CTRATA'
        ParamType = ptInput
      end>
  end
end
