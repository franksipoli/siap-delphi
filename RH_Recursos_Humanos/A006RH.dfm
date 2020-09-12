object FRM_A006RH: TFRM_A006RH
  Left = 114
  Top = 40
  Width = 631
  Height = 496
  Caption = '  Informações Financeiras'
  Color = clSilver
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object LMDSimplePanel11: TLMDSimplePanel
    Left = 7
    Top = 66
    Width = 569
    Height = 397
    UseDockManager = False
    Bevel.StyleInner = bvFrameLowered
    Bevel.LightColor = clGray
    Bevel.Mode = bmCustom
    Bevel.ShadowColor = clSilver
    Color = clSilver
    TabOrder = 0
    object DBGrid6: TDBGrid
      Left = 10
      Top = 101
      Width = 550
      Height = 112
      Color = 14281964
      FixedColor = clSilver
      Options = [dgEditing, dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'MS Sans Serif'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          Title.Alignment = taCenter
          Title.Caption = 'Cod'
          Width = 25
          Visible = True
        end
        item
          Expanded = False
          Title.Alignment = taCenter
          Title.Caption = 'Descrição das Vantagens'
          Width = 356
          Visible = True
        end
        item
          Expanded = False
          Title.Alignment = taCenter
          Title.Caption = 'Referência'
          Width = 60
          Visible = True
        end
        item
          Expanded = False
          Title.Alignment = taCenter
          Title.Caption = 'U'
          Width = 12
          Visible = True
        end
        item
          Expanded = False
          Title.Alignment = taCenter
          Title.Caption = 'Valor'
          Width = 60
          Visible = True
        end>
    end
    object LMDPanelFill4: TLMDPanelFill
      Left = 10
      Top = 84
      Width = 550
      Height = 16
      UseDockManager = False
      Alignment = agCenterLeft
      Bevel.Mode = bmStandard
      Bevel.StandardStyle = lsNone
      Caption = '  Vantagens Pecuniárias'
      FillObject.Style = sfGradient
      FillObject.Gradient.Color = 16053492
      FillObject.Gradient.ColorCount = 100
      FillObject.Gradient.EndColor = 10066329
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      FontFX.Style = tdSunken
      ParentFont = False
      TabOrder = 1
      object SpeedButton34: TSpeedButton
        Left = 492
        Top = 0
        Width = 19
        Height = 16
        Cursor = crHandPoint
        Hint = 'Anterior'
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
        ParentShowHint = False
        ShowHint = True
      end
      object SpeedButton35: TSpeedButton
        Left = 530
        Top = 0
        Width = 19
        Height = 16
        Cursor = crHandPoint
        Hint = 'Próximo'
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
        ParentShowHint = False
        ShowHint = True
      end
      object SpeedButton36: TSpeedButton
        Left = 511
        Top = 0
        Width = 19
        Height = 16
        Cursor = crHandPoint
        Hint = 'Detalhes da Movimentação Funcional'
        Flat = True
        Glyph.Data = {
          DE010000424DDE01000000000000760000002800000014000000120000000100
          08000000000068010000120B0000120B00001000000010000000000000000000
          8000008000000080800080000000800080008080000080808000C0C0C0000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00080808080808
          0808080808080808080808080808080808080808080808080808080808080808
          0808080808080808080700080808080808080808080808080808080807000008
          0808000808080808080808080808080800000808000008000808080808080808
          0808080700000000080008080008080808080808080700000007080800080008
          0800080808080808000008070000080808000800080800080808080800080008
          0800000808080008000808000808080800000808080800080808080008000808
          0808080800000800080800080808080800000808080808080000000800000808
          0808080000080808080808080800000000000808080800080800080808080808
          0808080808080008080000080008080808080808080808080800080800000000
          0808080808080808080808080808000008080808080808080808080808080808
          0808080808080808080808080808080808080808080808080808080808080808
          0808}
        ParentShowHint = False
        ShowHint = True
      end
      object SpeedButton37: TSpeedButton
        Left = 459
        Top = 0
        Width = 19
        Height = 16
        Cursor = crHandPoint
        Hint = 'Movimentação Funcional'
        Flat = True
        Glyph.Data = {
          D6020000424DD6020000000000003600000028000000100000000E0000000100
          180000000000A0020000C40E0000C40E0000000000000000000000FF0000FF00
          007F00403F00747B60BFBFBFC7CFC7979F8F2E7F2C00FF0000FF0000FF0000FF
          0000FF0000FF0000FF0000FF00000000800000808080DFDFDFC0C0C0808080FF
          FFFF8F8F8F00000000FF0000FF0000FF0000FF0000FF0000FF00007F00800000
          808080C0C0C0DFDFDFFFFFFFFFFFFF808000DFDFDF00000000000000FF0000FF
          0000FF0000FF0000FF00485720A0A0A0DFDFDFFFFFFFDFDFDFC0C0C0BFBFBFDF
          DFDFDFDFDF00000000FF0000FF0000FF0000FF0000FF0000FF00687760FFFFFF
          FFFFFFFFFFFFDFDFDFFFFFFFFFFFFFC0C0C06F6F5F00FF0000FF000000000000
          0000000000FF0000FF00909090C0C0C0FFFFFFFFFFFF808080C0C0C0FFFFFFC0
          C0C040604000FF00000000000000800000800000000000000000CFCFCFC0C0C0
          808080C0C0C0BF7FBF800080000000000000A0A0A00000008080808080800000
          00800000FF000000800025A5255FDF5F7F7F7FB7B7B753535320402060806090
          6090BFA7BFEFEFEF7F7F7F7F7F7F4040404000003F0000009F0000FF0000FF00
          00FF0000000000800000FF0000FF0000800070307000000000FF0000FF0000FF
          0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000
          FF0020102000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF00
          00FF0000FF0000FF0000FF0000FF0000FF00209F2080008000FF0000FF0000FF
          0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000
          FF0000DF0080008000000000FF0000FF0000FF0000FF0000FF0000FF0000FF00
          00FF0000FF0000FF0000FF0000FF0000FF0000FF0000800080008000000000FF
          0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000FF0000
          FF0000FF0000FF0000800080008000800000FF0000FF0000FF00}
        Margin = 0
        ParentShowHint = False
        ShowHint = True
        Spacing = 0
      end
    end
    object PageControlEx5: TPageControlEx
      Left = 9
      Top = 219
      Width = 551
      Height = 169
      Cursor = crHandPoint
      ActivePage = TBS_FORMADERECEBER
      DragCursor = crDefault
      HotTrack = True
      TabOrder = 2
      object TBS_FORMADERECEBER: TTabSheet
        Caption = 'Forma de Recebimento'
        ImageIndex = 5
        object LMDSimplePanel12: TLMDSimplePanel
          Left = 0
          Top = 0
          Width = 551
          Height = 149
          UseDockManager = False
          Align = alClient
          Bevel.StyleInner = bvLowered
          Bevel.BorderSides = [fsTop]
          Bevel.EdgeStyle = etSunkenOuter
          Bevel.LightColor = clSilver
          Bevel.Mode = bmEdge
          Bevel.ShadowColor = clGray
          TabOrder = 0
          object LMDGroupBox16: TLMDGroupBox
            Left = 0
            Top = 5
            Width = 550
            Height = 49
            BackFX.AlphaBlend.Strength = 0.600000023841858
            Bevel.StyleInner = bvFrameLowered
            Bevel.BorderSides = [fsTop]
            Bevel.LightColor = clGray
            Bevel.Mode = bmEdge
            Bevel.ShadowColor = clSilver
            Bevel.StandardStyle = lsFrameInset
            Caption = '  Forma de Recebimento  '
            CaptionFont.Charset = ANSI_CHARSET
            CaptionFont.Color = clWindowText
            CaptionFont.Height = -11
            CaptionFont.Name = 'Tahoma'
            CaptionFont.Style = [fsBold]
            CaptionParentFont = False
            Color = clSilver
            TabOrder = 0
            object Label103: TLabel
              Left = 3
              Top = 14
              Width = 62
              Height = 13
              Caption = '  Recebe por'
            end
            object Label119: TLabel
              Left = 132
              Top = 14
              Width = 25
              Height = 13
              Caption = '  Bco'
            end
            object Label120: TLabel
              Left = 183
              Top = 14
              Width = 83
              Height = 13
              Caption = '  Nome do Banco'
            end
            object Label121: TLabel
              Left = 353
              Top = 14
              Width = 19
              Height = 13
              Caption = '  Ag'
            end
            object Label122: TLabel
              Left = 383
              Top = 14
              Width = 64
              Height = 13
              Caption = '  Nº da Conta'
            end
            object Label123: TLabel
              Left = 468
              Top = 14
              Width = 74
              Height = 13
              Caption = ' Nº Cartão Pgto'
            end
            object RxDBComboEdit23: TRxDBComboEdit
              Left = 1
              Top = 28
              Width = 130
              Height = 21
              GlyphKind = gkDropDown
              NumGlyphs = 1
              TabOrder = 0
            end
            object RxDBComboEdit26: TRxDBComboEdit
              Left = 130
              Top = 28
              Width = 50
              Height = 21
              Glyph.Data = {
                AA030000424DAA03000000000000360000002800000011000000110000000100
                18000000000074030000C30E0000C30E00000000000000000000BFBFBFBFBFBF
                0000000000000000000000000000000000000000000000000000000000000000
                00BFBFBFBFBFBF00000000000000BFBFBF7F7F7FBFBFBFBFBFBFBFBFBFBFBFBF
                BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF000000BFBFBF0000000000000000
                0000BFBFBF7F7F7FFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFFFFFF00FFFF000000
                0000000000000000007F7F7F000000000000BFBFBF00BFBFBF7F7F7F00FFFFFF
                FFFFFFFFFFFFFFFF00FFFFFFFFFF0000007F7F7FBFBFBFBFBFBF7F7F7F000000
                7F7F7FBFBFBFBFBFBF00BFBFBF7F7F7FFFFFFFFFFFFFBFBFBF0000007F000000
                00007F7F7FBFBFBFBFBFBFFFFF007F7F7F7F7F7F000000BFBFBFBFBFBF00BFBF
                BF7F7F7FFFFFFFBFBFBF7F0000FF00007F00000000007F7F7F7F7F7FBFBFBFBF
                BFBF7F7F7FBFBFBF000000BFBFBFBFBFBF00BFBFBF7F7F7FFFFFFF7F7F7FFF00
                00FF00007F00000000007F7F7FFFFF00BFBFBFBFBFBF7F7F7FBFBFBF000000BF
                BFBFBFBFBF00BFBFBF7F7F7F00FFFF7F7F00BFBFBF7F7F007F7F000000007F7F
                7FFFFF00FFFF00BFBFBF7F7F7F7F7F7F000000BFBFBFBFBFBF00BFBFBF7F7F7F
                FFFFFF7F7F00FFFFFFBFBFBF007F00007F000000007F7F7FBFBFBFBFBFBF7F7F
                7F000000BFBFBFBFBFBFBFBFBF00BFBFBF7F7F7FFFFFFF7F7F00FFFFFFBFBFBF
                FF00007F7F00BFBFBF000000000000000000000000BFBFBFBFBFBFBFBFBFBFBF
                BF00BFBFBF7F7F7FFFFFFFBFBFBF7F7F00FFFFFF7F7F00007F007F7F00BFBFBF
                FFFFFFBFBFBF000000BFBFBFBFBFBFBFBFBFBFBFBF00BFBFBF7F7F7FFFFFFFFF
                FFFFBFBFBF7F7F007F7F007F7F00BFBFBFFFFFFF00FFFFBFBFBF000000BFBFBF
                BFBFBFBFBFBFBFBFBF00BFBFBF7F7F7FFFFFFFFFFFFF00FFFFFFFFFFFFFFFFFF
                FFFF00FFFF000000000000000000000000BFBFBFBFBFBFBFBFBFBFBFBF00BFBF
                BF7F7F7F00FFFFFFFFFFFFFFFFFFFFFF00FFFFFFFFFFFFFFFFBFBFBFFFFFFF7F
                7F7FBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF00BFBFBF7F7F7FFFFFFFFFFFFF00FF
                FFFFFFFFFFFFFFFFFFFF00FFFFBFBFBF7F7F7FBFBFBFBFBFBFBFBFBFBFBFBFBF
                BFBFBFBFBF00BFBFBF7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F
                7F7F7F7FBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF00BFBFBFBFBFBF
                BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
                BFBFBFBFBFBFBFBFBFBFBFBFBF00}
              NumGlyphs = 1
              TabOrder = 1
            end
            object DBEdit79: TDBEdit
              Left = 180
              Top = 28
              Width = 170
              Height = 21
              Color = 14281964
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 2
            end
            object DBEdit82: TDBEdit
              Left = 350
              Top = 28
              Width = 30
              Height = 21
              Color = clWhite
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 3
            end
            object DBEdit83: TDBEdit
              Left = 380
              Top = 28
              Width = 85
              Height = 21
              Color = clWhite
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 4
            end
            object DBEdit89: TDBEdit
              Left = 465
              Top = 28
              Width = 85
              Height = 21
              Color = clWhite
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 5
            end
          end
          object LMDGroupBox17: TLMDGroupBox
            Left = 0
            Top = 59
            Width = 550
            Height = 89
            Bevel.StyleInner = bvFrameLowered
            Bevel.BorderSides = [fsBottom, fsTop]
            Bevel.LightColor = clGray
            Bevel.Mode = bmEdge
            Bevel.ShadowColor = clSilver
            Bevel.StandardStyle = lsFrameInset
            Caption = '  Dotação Orçamentária  '
            CaptionFont.Charset = ANSI_CHARSET
            CaptionFont.Color = clWindowText
            CaptionFont.Height = -11
            CaptionFont.Name = 'Tahoma'
            CaptionFont.Style = [fsBold]
            CaptionParentFont = False
            Color = clSilver
            TabOrder = 1
            object Label125: TLabel
              Left = 4
              Top = 14
              Width = 39
              Height = 13
              Caption = '  Origem'
            end
            object Label126: TLabel
              Left = 89
              Top = 14
              Width = 45
              Height = 13
              Caption = '  Controle'
            end
            object Label127: TLabel
              Left = 254
              Top = 14
              Width = 35
              Height = 13
              Caption = '  Orgão'
            end
            object Label128: TLabel
              Left = 4
              Top = 54
              Width = 46
              Height = 13
              Caption = '  Unidade'
            end
            object Label129: TLabel
              Left = 267
              Top = 54
              Width = 94
              Height = 13
              Caption = '  Projeto / Atividade'
            end
            object DBEdit90: TDBEdit
              Left = 1
              Top = 28
              Width = 85
              Height = 21
              Color = 14281964
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
            end
            object DBEdit91: TDBEdit
              Left = 86
              Top = 28
              Width = 165
              Height = 21
              Color = 14281964
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 1
            end
            object DBEdit92: TDBEdit
              Left = 251
              Top = 28
              Width = 299
              Height = 21
              Color = 14281964
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 2
            end
            object DBEdit93: TDBEdit
              Left = 1
              Top = 68
              Width = 263
              Height = 21
              Color = 14281964
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 3
            end
            object DBEdit94: TDBEdit
              Left = 264
              Top = 68
              Width = 286
              Height = 21
              Color = 14281964
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 4
            end
          end
        end
      end
      object TBS_BENEFICIARIOS: TTabSheet
        Caption = 'Beneficiários'
        ImageIndex = 1
        object LMDSimplePanel13: TLMDSimplePanel
          Left = 0
          Top = 0
          Width = 551
          Height = 149
          UseDockManager = False
          Align = alClient
          Bevel.StyleInner = bvLowered
          Bevel.BorderSides = [fsTop]
          Bevel.EdgeStyle = etSunkenOuter
          Bevel.LightColor = clSilver
          Bevel.Mode = bmEdge
          Bevel.ShadowColor = clGray
          TabOrder = 0
          object LMDPanelFill5: TLMDPanelFill
            Left = 2
            Top = 2
            Width = 548
            Height = 16
            UseDockManager = False
            Alignment = agCenterLeft
            Bevel.Mode = bmStandard
            Bevel.StandardStyle = lsNone
            Caption = '  Beneficiários'
            FillObject.Style = sfGradient
            FillObject.Gradient.Color = 16053492
            FillObject.Gradient.ColorCount = 100
            FillObject.Gradient.EndColor = 10066329
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            FontFX.Style = tdSunken
            ParentFont = False
            TabOrder = 0
            object SpeedButton30: TSpeedButton
              Left = 490
              Top = 0
              Width = 19
              Height = 16
              Cursor = crHandPoint
              Hint = 'Anterior'
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
              ParentShowHint = False
              ShowHint = True
            end
            object SpeedButton31: TSpeedButton
              Left = 528
              Top = 0
              Width = 19
              Height = 16
              Cursor = crHandPoint
              Hint = 'Próximo'
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
              ParentShowHint = False
              ShowHint = True
            end
            object SpeedButton32: TSpeedButton
              Left = 509
              Top = 0
              Width = 19
              Height = 16
              Cursor = crHandPoint
              Hint = 'Detalhes da Movimentação Funcional'
              Flat = True
              Glyph.Data = {
                DE010000424DDE01000000000000760000002800000014000000120000000100
                08000000000068010000120B0000120B00001000000010000000000000000000
                8000008000000080800080000000800080008080000080808000C0C0C0000000
                FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00080808080808
                0808080808080808080808080808080808080808080808080808080808080808
                0808080808080808080700080808080808080808080808080808080807000008
                0808000808080808080808080808080800000808000008000808080808080808
                0808080700000000080008080008080808080808080700000007080800080008
                0800080808080808000008070000080808000800080800080808080800080008
                0800000808080008000808000808080800000808080800080808080008000808
                0808080800000800080800080808080800000808080808080000000800000808
                0808080000080808080808080800000000000808080800080800080808080808
                0808080808080008080000080008080808080808080808080800080800000000
                0808080808080808080808080808000008080808080808080808080808080808
                0808080808080808080808080808080808080808080808080808080808080808
                0808}
              ParentShowHint = False
              ShowHint = True
            end
          end
          object DBGrid5: TDBGrid
            Left = 1
            Top = 19
            Width = 548
            Height = 129
            Color = 14281964
            FixedColor = clSilver
            Options = [dgEditing, dgTitles, dgIndicator, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit]
            TabOrder = 1
            TitleFont.Charset = DEFAULT_CHARSET
            TitleFont.Color = clWindowText
            TitleFont.Height = -11
            TitleFont.Name = 'MS Sans Serif'
            TitleFont.Style = []
            Columns = <
              item
                Expanded = False
                Title.Alignment = taCenter
                Title.Caption = 'Tipo do Benefício'
                Width = 95
                Visible = True
              end
              item
                Expanded = False
                Title.Alignment = taCenter
                Title.Caption = 'Nome Completo do Beneficiário'
                Width = 277
                Visible = True
              end
              item
                Expanded = False
                Title.Alignment = taCenter
                Title.Caption = 'Parentesco'
                Width = 100
                Visible = True
              end
              item
                Expanded = False
                Title.Alignment = taCenter
                Title.Caption = '%'
                Width = 40
                Visible = True
              end>
          end
        end
      end
    end
    object PageControlEx6: TPageControlEx
      Left = 10
      Top = 7
      Width = 550
      Height = 75
      ActivePage = TBS_VCTOBASE
      TabOrder = 3
      object TBS_VCTOBASE: TTabSheet
        Caption = 'Vencimentos'
        ImageIndex = 5
        object LMDSimplePanel10: TLMDSimplePanel
          Left = 0
          Top = 0
          Width = 550
          Height = 55
          UseDockManager = False
          Align = alClient
          Bevel.StyleInner = bvLowered
          Bevel.BorderSides = [fsTop]
          Bevel.EdgeStyle = etSunkenOuter
          Bevel.LightColor = clSilver
          Bevel.Mode = bmEdge
          Bevel.ShadowColor = clGray
          TabOrder = 0
          object LMDGroupBox11: TLMDGroupBox
            Left = 0
            Top = 5
            Width = 550
            Height = 49
            BackFX.AlphaBlend.Strength = 0.600000023841858
            Bevel.StyleInner = bvFrameLowered
            Bevel.BorderSides = [fsTop]
            Bevel.LightColor = clGray
            Bevel.Mode = bmEdge
            Bevel.ShadowColor = clSilver
            Bevel.StandardStyle = lsFrameInset
            Caption = '  Informações Salariais  '
            CaptionFont.Charset = ANSI_CHARSET
            CaptionFont.Color = clWindowText
            CaptionFont.Height = -11
            CaptionFont.Name = 'Tahoma'
            CaptionFont.Style = [fsBold]
            CaptionParentFont = False
            Color = clSilver
            TabOrder = 0
            object Label107: TLabel
              Left = 3
              Top = 14
              Width = 27
              Height = 13
              Caption = '  Tipo'
            end
            object Label108: TLabel
              Left = 68
              Top = 14
              Width = 67
              Height = 13
              Caption = '  Identificação'
            end
            object Label110: TLabel
              Left = 211
              Top = 14
              Width = 14
              Height = 13
              Caption = 'Nv'
            end
            object Label111: TLabel
              Left = 188
              Top = 14
              Width = 17
              Height = 13
              Caption = ' Cls'
            end
            object Label112: TLabel
              Left = 228
              Top = 14
              Width = 59
              Height = 13
              Caption = ' Vencimento'
            end
            object Label113: TLabel
              Left = 317
              Top = 14
              Width = 54
              Height = 13
              Caption = ' Vantagens'
            end
            object Label114: TLabel
              Left = 383
              Top = 14
              Width = 67
              Height = 13
              Caption = 'Remuneração'
            end
            object Label115: TLabel
              Left = 452
              Top = 14
              Width = 20
              Height = 13
              Caption = ' HM'
            end
            object Label116: TLabel
              Left = 478
              Top = 14
              Width = 15
              Height = 13
              Caption = 'HS'
            end
            object Label117: TLabel
              Left = 495
              Top = 14
              Width = 44
              Height = 13
              Caption = '  Valor Hr'
            end
            object Label37: TLabel
              Left = 149
              Top = 14
              Width = 17
              Height = 13
              Caption = 'Grp'
            end
            object Label40: TLabel
              Left = 169
              Top = 14
              Width = 19
              Height = 13
              Caption = 'Sub'
            end
            object Label41: TLabel
              Left = 296
              Top = 14
              Width = 8
              Height = 13
              Caption = '%'
            end
            object DBEdit78: TDBEdit
              Left = 1
              Top = 28
              Width = 65
              Height = 21
              Color = 14281964
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
            end
            object DBEdit81: TDBEdit
              Left = 66
              Top = 28
              Width = 81
              Height = 21
              Color = 14281964
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 1
            end
            object DBEdit84: TDBEdit
              Left = 207
              Top = 28
              Width = 18
              Height = 21
              Color = 14281964
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 2
            end
            object DBEdit85: TDBEdit
              Left = 187
              Top = 28
              Width = 20
              Height = 21
              Color = 14281964
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 3
            end
            object DBEdit86: TDBEdit
              Left = 225
              Top = 28
              Width = 65
              Height = 21
              Color = 14281964
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 4
            end
            object DBEdit87: TDBEdit
              Left = 315
              Top = 28
              Width = 65
              Height = 21
              Color = 14281964
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 5
            end
            object DBEdit88: TDBEdit
              Left = 380
              Top = 28
              Width = 70
              Height = 21
              Color = 14281964
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 6
            end
            object DBEdit95: TDBEdit
              Left = 450
              Top = 28
              Width = 25
              Height = 21
              Color = 14281964
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 7
            end
            object DBEdit98: TDBEdit
              Left = 475
              Top = 28
              Width = 18
              Height = 21
              Color = 14281964
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 8
            end
            object DBEdit103: TDBEdit
              Left = 493
              Top = 28
              Width = 57
              Height = 21
              Color = 14281964
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 9
            end
            object DBEdit22: TDBEdit
              Left = 147
              Top = 28
              Width = 20
              Height = 21
              Color = 14281964
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 10
            end
            object DBEdit36: TDBEdit
              Left = 167
              Top = 28
              Width = 20
              Height = 21
              Color = 14281964
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 11
            end
            object DBEdit40: TDBEdit
              Left = 290
              Top = 28
              Width = 25
              Height = 21
              Color = 14281964
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 12
            end
          end
        end
      end
      object TBS_VCTOPENSAO: TTabSheet
        Caption = 'Vencimentos'
        ImageIndex = 5
        object LMDSimplePanel14: TLMDSimplePanel
          Left = 0
          Top = 0
          Width = 550
          Height = 55
          UseDockManager = False
          Align = alClient
          Bevel.StyleInner = bvLowered
          Bevel.BorderSides = [fsTop]
          Bevel.EdgeStyle = etSunkenOuter
          Bevel.LightColor = clSilver
          Bevel.Mode = bmEdge
          Bevel.ShadowColor = clGray
          TabOrder = 0
          object LMDGroupBox9: TLMDGroupBox
            Left = 0
            Top = 5
            Width = 550
            Height = 49
            Bevel.StyleInner = bvFrameLowered
            Bevel.BorderSides = [fsTop]
            Bevel.LightColor = clGray
            Bevel.Mode = bmEdge
            Bevel.ShadowColor = clSilver
            Bevel.StandardStyle = lsFrameInset
            Caption = '  Informações Salariais  '
            CaptionFont.Charset = ANSI_CHARSET
            CaptionFont.Color = clWindowText
            CaptionFont.Height = -11
            CaptionFont.Name = 'Tahoma'
            CaptionFont.Style = [fsBold]
            CaptionParentFont = False
            Color = clSilver
            TabOrder = 0
            object Label93: TLabel
              Left = 3
              Top = 14
              Width = 103
              Height = 13
              Caption = '  Origem do Benefício'
            end
            object Label94: TLabel
              Left = 383
              Top = 14
              Width = 56
              Height = 13
              Caption = '  Bs Cálculo'
            end
            object Label95: TLabel
              Left = 446
              Top = 14
              Width = 20
              Height = 13
              Caption = '    %'
            end
            object Label96: TLabel
              Left = 488
              Top = 14
              Width = 57
              Height = 13
              Caption = '  A Receber'
            end
            object DBEdit67: TDBEdit
              Left = 1
              Top = 28
              Width = 380
              Height = 21
              Color = 14281964
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 0
            end
            object DBEdit68: TDBEdit
              Left = 381
              Top = 28
              Width = 63
              Height = 21
              Color = 14281964
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 1
            end
            object DBEdit69: TDBEdit
              Left = 444
              Top = 28
              Width = 43
              Height = 21
              Color = 14281964
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 2
            end
            object DBEdit70: TDBEdit
              Left = 487
              Top = 28
              Width = 63
              Height = 21
              Color = 14281964
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              TabOrder = 3
            end
          end
        end
      end
    end
  end
  object Panel2: TPanel
    Left = 583
    Top = 0
    Width = 38
    Height = 465
    BevelOuter = bvNone
    ParentColor = True
    TabOrder = 1
    object Btn_Incluir: TSpeedButton
      Left = 2
      Top = 97
      Width = 32
      Height = 27
      Cursor = crHandPoint
      Flat = True
      Margin = 3
    end
    object Btn_Alterar: TSpeedButton
      Left = 2
      Top = 127
      Width = 32
      Height = 27
      Cursor = crHandPoint
      Flat = True
    end
    object Btn_Gravar: TSpeedButton
      Left = 2
      Top = 157
      Width = 32
      Height = 27
      Cursor = crHandPoint
      Flat = True
    end
    object Btn_Localizar: TSpeedButton
      Left = 2
      Top = 7
      Width = 32
      Height = 27
      Cursor = crHandPoint
      Flat = True
    end
    object Btn_Excluir: TSpeedButton
      Left = 2
      Top = 217
      Width = 32
      Height = 27
      Cursor = crHandPoint
      Flat = True
    end
    object BTN_SAIR: TSpeedButton
      Left = 2
      Top = 277
      Width = 32
      Height = 27
      Cursor = crHandPoint
      BiDiMode = bdLeftToRight
      Flat = True
      Glyph.Data = {
        BA060000424DBA06000000000000360400002800000019000000170000000100
        08000000000084020000C40E0000C40E00000001000000000000000000007B00
        0000FF000000007B00007B7B000000FF0000FFFF0000007B7B007B7B7B00BDBD
        BD0000FFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
        FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00090909090909
        0909090909090909080808090909090909090900000009090909090909090909
        0909090908040408090909090909090000000909090909090909090909090909
        0806060408090909090909000000090909090909090909090909090908060604
        0408090909090900000009090909090909090909090909090806060404040809
        0909090000000000000000000000000009090909080606040404000000000800
        0000090909090909090909000808080800060604040400080909090000000909
        0909090909080800090909090806060404040008090909000000090909090909
        0800040009090909080606040404000809090900000009090909090908000400
        0909090908060604040400080909090000000909090808080804040408090909
        0806040400040008090909000000090908080808080406040408090908060404
        0004000809090900000009040000000000040606040408090806060404040008
        0909090000000804060606060606060606040408080606040404000809090900
        0000080406060606060606060606040808060604040400080909090000000904
        0404040404040606060408090806060404040008090909000000090908080808
        0804060604080909080606040404000809090900000009090909090908040604
        0809090908060604040400080909090000000909090909090804040009090909
        0804060404040008090909000000090909090909080000000909090909080406
        0404000809090900000009090909090909090809090909090909090406040008
        0909090000000909090909090909080808080808080808000404000809090900
        000009090909090909090908080808080808080808080809090909000000}
      Margin = 1
      ParentBiDiMode = False
      OnClick = BTN_SAIRClick
    end
    object Btn_Avancar: TSpeedButton
      Left = 2
      Top = 37
      Width = 32
      Height = 27
      Cursor = crHandPoint
      Flat = True
    end
    object Btn_Retroceder: TSpeedButton
      Left = 2
      Top = 67
      Width = 32
      Height = 27
      Cursor = crHandPoint
      Flat = True
    end
    object Btn_Cancelar: TSpeedButton
      Left = 2
      Top = 187
      Width = 32
      Height = 27
      Cursor = crHandPoint
      Flat = True
    end
    object Btn_Imprimir: TSpeedButton
      Left = 2
      Top = 247
      Width = 32
      Height = 27
      Cursor = crHandPoint
      Flat = True
    end
  end
  object LMDGroupBox2: TLMDGroupBox
    Left = 7
    Top = 4
    Width = 569
    Height = 60
    Bevel.StyleInner = bvFrameLowered
    Bevel.BorderColor = cl3DLight
    Bevel.LightColor = clGray
    Bevel.Mode = bmCustom
    Bevel.ShadowColor = clSilver
    Bevel.StandardStyle = lsFrameInset
    Caption = '  Pessoa Pública  '
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
    TabOrder = 2
    object Label4: TLabel
      Left = 56
      Top = 14
      Width = 121
      Height = 13
      Caption = '  Nome da Pessoa Pública'
    end
    object Label6: TLabel
      Left = 10
      Top = 14
      Width = 43
      Height = 13
      Caption = 'Matricula'
    end
    object DED_CNOMEGRL: TDBEdit
      Left = 54
      Top = 28
      Width = 506
      Height = 21
      TabStop = False
      Color = 14281964
      DataField = 'CNOMEGRL'
      DataSource = DTM_A001RH.DTS_016
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object DED_NMATRICULA: TDBEdit
      Left = 9
      Top = 28
      Width = 45
      Height = 21
      TabStop = False
      Color = 14281964
      DataField = 'NMATRICULA'
      DataSource = DTM_A001RH.DTS_029
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
  end
end
