object frmxloc_Pessoas: Tfrmxloc_Pessoas
  Left = 113
  Top = 188
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'Alterar Data | Vendas'
  ClientHeight = 199
  ClientWidth = 505
  Color = clBackground
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Verdana'
  Font.Style = []
  OldCreateOrder = False
  PopupMenu = PopupMenu1
  Position = poMainFormCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Bevel3: TBevel
    Left = 0
    Top = 0
    Width = 505
    Height = 3
    Align = alTop
    ExplicitTop = 44
    ExplicitWidth = 708
  end
  object Label1: TLabel
    Left = 55
    Top = 77
    Width = 281
    Height = 23
    Caption = 'Alterar a data das ventas:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -19
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label8: TLabel
    Left = 12
    Top = 144
    Width = 37
    Height = 23
    Caption = 'De:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -19
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label13: TLabel
    Left = 220
    Top = 144
    Width = 57
    Height = 23
    Caption = 'Para:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -19
    Font.Name = 'Verdana'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object FlatPanel1: TFlatPanel
    Left = 0
    Top = 3
    Width = 505
    Height = 38
    Color = clBlack
    ColorHighLight = clBtnFace
    ColorShadow = clBtnFace
    Align = alTop
    TabOrder = 0
    ExplicitWidth = 528
    object Label2: TLabel
      Left = 1291
      Top = 3
      Width = 94
      Height = 12
      Caption = 'F4 | REFER'#202'NCIA'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -9
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      Visible = False
    end
    object Bevel1: TBevel
      Left = 1163
      Top = 11
      Width = 2
      Height = 37
      Visible = False
    end
    object Label4: TLabel
      Left = 1171
      Top = 3
      Width = 12
      Height = 12
      Caption = 'F3'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -9
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
      Visible = False
    end
    object Label5: TLabel
      Left = 1301
      Top = 3
      Width = 12
      Height = 12
      Caption = 'F4'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -9
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
      Visible = False
    end
    object Label6: TLabel
      Left = 1397
      Top = 3
      Width = 253
      Height = 12
      Caption = 'F5 | INFORME OS PAR'#194'METROS DA PESQUISA'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -9
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      Visible = False
    end
    object Label3: TLabel
      Left = 1397
      Top = 3
      Width = 12
      Height = 12
      Caption = 'F5'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -9
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
      Visible = False
    end
    object Bevel2: TBevel
      Left = 434
      Top = -3
      Width = 2
      Height = 37
    end
    object SAIR: TLabel
      Left = 355
      Top = 7
      Width = 39
      Height = 18
      Caption = 'SAIR'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -16
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    object Label7: TLabel
      Left = 534
      Top = 7
      Width = 108
      Height = 18
      Caption = 'FINANCEIRO'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -15
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label9: TLabel
      Left = 569
      Top = 7
      Width = 70
      Height = 18
      Caption = 'CARTAO'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -15
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label10: TLabel
      Left = 727
      Top = 6
      Width = 101
      Height = 18
      Caption = 'Vendas-PDV'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -15
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label11: TLabel
      Left = 849
      Top = 8
      Width = 149
      Height = 18
      Caption = 'FINANCEIRO-PDV'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -15
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object combo_localizar: TComboBox
      Left = 1170
      Top = 17
      Width = 63
      Height = 21
      Style = csDropDownList
      ItemIndex = 0
      TabOrder = 1
      Text = 'NOME'
      Visible = False
      Items.Strings = (
        'NOME')
    end
    object combo_referencia: TComboBox
      Left = 1239
      Top = 18
      Width = 74
      Height = 20
      Style = csDropDownList
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Verdana'
      Font.Style = []
      ItemIndex = 0
      ParentFont = False
      TabOrder = 2
      Text = 'IN'#205'CIO'
      Visible = False
      Items.Strings = (
        'IN'#205'CIO'
        'PARTE')
    end
    object loc: TEdit
      Left = 1415
      Top = 18
      Width = 47
      Height = 20
      CharCase = ecUpperCase
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -9
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      Visible = False
      OnChange = locChange
      OnEnter = locEnter
      OnExit = locExit
      OnKeyDown = locKeyDown
      OnKeyPress = locKeyPress
    end
    object DateEdit1: TJvDateEdit
      Left = 1503
      Top = 17
      Width = 47
      Height = 21
      Color = 15916445
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000C40E0000C40E00000000000000000000FFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFDFB492D49C73D09567CD9162CA8D5DC8895AC6
        8655C28351C28351C28351C28351C28351C28351CFA07CFFFFFFFFFFFFD6A074
        F7F1ECF6EFE9F5ECE5F3E9E1F2E6DDF0E3DAEFE1D7EFE1D7EFE1D7EFE1D7EFE1
        D7EFE1D7C48A5DFFFFFFFFFFFFD8A379F8F2EDEACFBBE6C0A3E6BEA0E5BD9EE5
        BA99E2B794E0B48EDDAF88DBAA82D8AD88EFE1D7C58B5EFFFFFFFFFFFFDCA77D
        F8F2EEEACFB9FEFEFEFDFDFDFDFEFDFDFEFDFEFEFEFDFDFDFEFEFEFEFEFEDAAF
        8BEFE1D7C5895BFFFFFFFFFFFFDEA981F8F2EEE9CDB6FEFEFEBFDCC261AA68A0
        CCA4AAD1AE67AD6DAAD1AEFEFEFEDCB390EFE1D7C78C5EFFFFFFFFFFFFE0AD86
        F9F3EFE9CAB1FEFEFEFEFEFE61AA68D4E8D68BC090FEFEFE61AA68FEFEFEDEB7
        95EFE1D7C38553FFFFFFFFFFFFE2B08BF9F5F0E9C8ADFEFEFEFEFEFE61AA68D4
        E8D695C69AF8FBF86BB072FEFEFEE0BC9CEFE1D7C58554FFFFFFFFFFFFE4B38E
        F9F5F1E8C5A9FEFEFEAAD1AE6BB072D4E8D6AAD1AE64AC6BAAD1AEFEFEFEE3C0
        A3F1E6DDC78958FFFFFFFFFFFFE6B693FAF6F3E8C2A5FEFEFEFEFEFEFEFEFEFE
        FEFEFEFEFEFEFEFEFEFEFEFEFEFEE4C5AAF6F0EACA8E5EFFFFFFFFFFFFE8B997
        FAF6F364A3FE63A2FE61A1FE60A0FE5E9EFE5B9CFE5999FE5697FE5394FE5193
        FEFAF6F3CD9263FFFFFFFFFFFFEABC9AFAF6F363A3FE78BCFE74BAFE70B8FE6C
        B7FE67B2FE60AFFE59AAFE53A6FE3A7CFEFAF6F3D09669FFFFFFFFFFFFEBBE9D
        FAF6F364A3FE63A2FE5F9FFE5C9DFE5798FE5395FE4C8FFE468AFE4183FE3C7E
        FEFAF6F3D39A6EFFFFFFFFFFFFEEC5A7FAF6F3FAF6F3FAF6F3FAF6F3FAF6F3FA
        F6F3FAF6F3FAF6F3FAF6F3FAF6F3FAF6F3FAF6F3D7A277FFFFFFFFFFFFF7E0D1
        F0C7ABECBF9EEABD9CEABB99E8B995E6B692E5B48FE3B18BE1AE87DFAB83DCA8
        7FDBA47CE1B595FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF}
      ImageKind = ikCustom
      ShowNullDate = False
      TabOrder = 3
      Visible = False
      OnKeyPress = GRIDKeyPress
    end
    object AdvGlowButton1: TAdvGlowButton
      Left = 1468
      Top = 15
      Width = 29
      Height = 26
      AutoSize = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      ParentFont = False
      Picture.Data = {
        424D6E0400000000000036000000280000001300000012000000010018000000
        000038040000C40E0000C40E00000000000000000000F7F7F7DAA784C8641EC8
        641EC8641EC8641EC8641EC8641EC8641EC8641EC8641EC8641EC8641EC8641E
        C8641EC8641EC8641EDAA784F7F7F7000000E2B08DC8641ED16D27D5712BD571
        2BD5712BD5712BD5712BD5712BD5712BD5712BD5712BD5712BD5712BD5712BD5
        712BD16D27C8641EE2B08D000000C8641EDE8A4FDF8648D5722CD5722CD5722C
        D5722CD5722CD5722CD5722CD5722CD5722CD5722CD5722CD5722CD5722CD572
        2CD16E28C8641E000000C8641EE89A64DF8749D6732DD6732DD6732DD6732DD6
        732DD6732DD6732DD6732DCB6822C8641ED6732DD6732DD6732DD6732DD6732D
        C8641E000000C8641EE89A64E08749D7732DD7732DD7732DD7732DD7732DD773
        2DD7732DCC6822C8641EF2DAC8FFFFFFD7732DD7732DD7732DD7732DC8641E00
        0000C8641EE89A64E08749D7742ED5722CCD6923C96620C96620CD6923CC6822
        C8641EF2DAC8FFFFFFF5DDCBD7742ED7742ED7742ED7742EC8641E000000C864
        1EE89A64E0884AD5722CC9651FCE7436EDCCB5FAF0EAFAF0EAEDCCB5F3DDCEFF
        FFFFF5DDCCD8752FD8752FD8752FD8752FD8752FC8641E000000C8641EE89A64
        E1894BCE6A24D17E43FBF4EFFFFFFFFFFFFFFFFFFFFFFFFFFCF4F0F7E3D4DA77
        31DA7731DA7731DA7731DA7731DA7731C8641E000000C8641EE89A64E2894BC9
        651FEECEB8FFFFFFF5D9C5DF8545DF8545F5D9C5FFFFFFF4D4BEDB7731DB7731
        DB7731DB7731DB7731DB7731C8641E000000C8641EE89A64E2894BC9651FFCF6
        F2FFFFFFE08648DC7832DC7832E08648FFFFFFFDF9F5DC7832DC7832DC7832DC
        7832DC7832DC7832C8641E000000C8641EE89A64E38A4CCF6B25FCF6F2FFFFFF
        DF8545DC7832DC7832DF8545FFFFFFFDF9F5DD7A34DD7A34DD7A34DD7A34DD7A
        34DD7A34C8641E000000C8641EE89A64E38B4DDB7731EECDB6FFFFFFF6DECCE3
        955DE3955DF6DECCFFFFFFF5D5BFDE7B35DE7B35DE7B35DE7B35DE7B35DE7B35
        C8641E000000C8641EE89A64E48B4DDF7C36E28D52FCF5F0FFFFFFFFFFFFFFFF
        FFFFFFFFFDF6F1E49257DF7C36DF7C36DF7C36DF7C36DF7C36DF7C36C8641E00
        0000C8641EE89A64E48B4DDF7C36DF7C36E28A4BF4D2BAFCF1EAFCF1EAF4D2BA
        E28A4BDF7C36DF7C36DF7C36DF7C36DF7C36DF7C36DF7C36C8641E000000C864
        1EE89A64E48C4EE07D37E07D37E07D37E07D37E07D37E07D37E07D37E07D37E0
        7D37E07D37E07D37E07D37E07D37E07D37E07D37C8641E000000C8641EDE8A4F
        E89A64E58C4EE58C4EE58C4EE58C4EE58C4EE58C4EE58C4EE58C4EE58C4EE58C
        4EE58C4EE58C4EE58C4EE58C4ED97630C8641E000000E3B18EC8641EDE8A4FE8
        9A64E89A64E89A64E89A64E89A64E89A64E89A64E89A64E89A64E89A64E89A64
        E89A64E89A64DE8A4FC8641EE3B18E000000FFFFFFE3B18EC8641EC8641EC864
        1EC8641EC8641EC8641EC8641EC8641EC8641EC8641EC8641EC8641EC8641EC8
        641EC8641EE3B18EFFFFFF000000}
      Transparent = True
      TabOrder = 4
      Visible = False
      OnClick = AdvGlowButton1Click
      Appearance.BorderColor = 12631218
      Appearance.BorderColorHot = 10079963
      Appearance.BorderColorDown = 4548219
      Appearance.Color = 14671574
      Appearance.ColorTo = 15000283
      Appearance.ColorChecked = 7915518
      Appearance.ColorCheckedTo = 11918331
      Appearance.ColorDisabled = 15921906
      Appearance.ColorDisabledTo = 15921906
      Appearance.ColorDown = 7778289
      Appearance.ColorDownTo = 4296947
      Appearance.ColorHot = 15465983
      Appearance.ColorHotTo = 11332863
      Appearance.ColorMirror = 14144974
      Appearance.ColorMirrorTo = 15197664
      Appearance.ColorMirrorHot = 5888767
      Appearance.ColorMirrorHotTo = 10807807
      Appearance.ColorMirrorDown = 946929
      Appearance.ColorMirrorDownTo = 5021693
      Appearance.ColorMirrorChecked = 10480637
      Appearance.ColorMirrorCheckedTo = 5682430
      Appearance.ColorMirrorDisabled = 11974326
      Appearance.ColorMirrorDisabledTo = 15921906
      Appearance.GradientHot = ggVertical
      Appearance.GradientMirrorHot = ggVertical
      Appearance.GradientDown = ggVertical
      Appearance.GradientMirrorDown = ggVertical
      Appearance.GradientChecked = ggVertical
    end
    object AdvMetroButton2: TAdvMetroButton
      Left = 450
      Top = -1
      Width = 40
      Height = 35
      Appearance.PictureColor = clWhite
      Appearance.PictureColorHover = clRed
      Appearance.PictureColorDown = clRed
      Caption = 'X'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -20
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 5
      Version = '1.1.2.0'
      OnClick = AdvMetroButton2Click
    end
  end
  object GRID: TwwDBGrid
    Left = 704
    Top = 144
    Width = 258
    Height = 181
    IniAttributes.Delimiter = ';;'
    IniAttributes.UnicodeIniFile = False
    TitleColor = clBtnFace
    FixedCols = 1
    ShowHorzScrollBar = True
    DataSource = ds
    KeyOptions = [dgEnterToTab, dgAllowDelete, dgAllowInsert]
    TabOrder = 1
    TitleAlignment = taLeftJustify
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Verdana'
    TitleFont.Style = []
    TitleLines = 1
    TitleButtons = False
    OnDblClick = GRIDEnter
    OnEnter = GRIDEnter
    OnExit = GRIDExit
    OnKeyPress = GRIDKeyPress
    PaintOptions.AlternatingRowColor = 16250871
    PaintOptions.ActiveRecordColor = clBlack
  end
  object GRID2: TwwDBGrid
    Left = 1151
    Top = 176
    Width = 592
    Height = 305
    IniAttributes.Delimiter = ';;'
    IniAttributes.UnicodeIniFile = False
    TitleColor = clBtnFace
    FixedCols = 1
    ShowHorzScrollBar = True
    DataSource = ds1
    KeyOptions = [dgEnterToTab, dgAllowDelete, dgAllowInsert]
    TabOrder = 2
    TitleAlignment = taLeftJustify
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Verdana'
    TitleFont.Style = []
    TitleLines = 1
    TitleButtons = False
    OnDblClick = GRIDEnter
    OnEnter = GRIDEnter
    OnExit = GRIDExit
    OnKeyPress = GRIDKeyPress
    PaintOptions.AlternatingRowColor = 16250871
    PaintOptions.ActiveRecordColor = clBlack
  end
  object GRID3: TwwDBGrid
    Left = 1712
    Top = -44
    Width = 258
    Height = 181
    IniAttributes.Delimiter = ';;'
    IniAttributes.UnicodeIniFile = False
    TitleColor = clBtnFace
    FixedCols = 1
    ShowHorzScrollBar = True
    DataSource = ds2
    KeyOptions = [dgEnterToTab, dgAllowDelete, dgAllowInsert]
    TabOrder = 3
    TitleAlignment = taLeftJustify
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Verdana'
    TitleFont.Style = []
    TitleLines = 1
    TitleButtons = False
    OnDblClick = GRIDEnter
    OnEnter = GRIDEnter
    OnExit = GRIDExit
    OnKeyPress = GRIDKeyPress
    PaintOptions.AlternatingRowColor = 16250871
    PaintOptions.ActiveRecordColor = clBlack
  end
  object GRID4: TwwDBGrid
    Left = 1433
    Top = -44
    Width = 258
    Height = 181
    IniAttributes.Delimiter = ';;'
    IniAttributes.UnicodeIniFile = False
    TitleColor = clBtnFace
    FixedCols = 1
    ShowHorzScrollBar = True
    DataSource = ds3
    KeyOptions = [dgEnterToTab, dgAllowDelete, dgAllowInsert]
    TabOrder = 4
    TitleAlignment = taLeftJustify
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Verdana'
    TitleFont.Style = []
    TitleLines = 1
    TitleButtons = False
    OnDblClick = GRIDEnter
    OnEnter = GRIDEnter
    OnExit = GRIDExit
    OnKeyPress = GRIDKeyPress
    PaintOptions.AlternatingRowColor = 16250871
    PaintOptions.ActiveRecordColor = clBlack
  end
  object GRID5: TwwDBGrid
    Left = 1992
    Top = -44
    Width = 335
    Height = 181
    IniAttributes.Delimiter = ';;'
    IniAttributes.UnicodeIniFile = False
    TitleColor = clBtnFace
    FixedCols = 1
    ShowHorzScrollBar = True
    DataSource = ds4
    KeyOptions = [dgEnterToTab, dgAllowDelete, dgAllowInsert]
    TabOrder = 5
    TitleAlignment = taLeftJustify
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Verdana'
    TitleFont.Style = []
    TitleLines = 1
    TitleButtons = False
    OnDblClick = GRIDEnter
    OnEnter = GRIDEnter
    OnExit = GRIDExit
    OnKeyPress = GRIDKeyPress
    PaintOptions.AlternatingRowColor = 16250871
    PaintOptions.ActiveRecordColor = clBlack
  end
  object FlatPanel2: TFlatPanel
    Left = 1134
    Top = 145
    Width = 1205
    Height = 25
    Color = clBlack
    ColorHighLight = clBtnFace
    ColorShadow = clBtnFace
    TabOrder = 6
    object Label12: TLabel
      Left = 917
      Top = 3
      Width = 94
      Height = 12
      Caption = 'F4 | REFER'#202'NCIA'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -9
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      Visible = False
    end
    object Bevel4: TBevel
      Left = 1017
      Top = 1
      Width = 2
      Height = 37
      Visible = False
    end
    object Label14: TLabel
      Left = 927
      Top = 3
      Width = 12
      Height = 12
      Caption = 'F4'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -9
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
      Visible = False
    end
    object Label15: TLabel
      Left = 1023
      Top = 3
      Width = 253
      Height = 12
      Caption = 'F5 | INFORME OS PAR'#194'METROS DA PESQUISA'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -9
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
      Visible = False
    end
    object Label16: TLabel
      Left = 1023
      Top = 3
      Width = 12
      Height = 12
      Caption = 'F5'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -9
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
      Visible = False
    end
    object Bevel5: TBevel
      Left = 1179
      Top = 31
      Width = 2
      Height = 37
    end
    object Label17: TLabel
      Left = 1102
      Top = 43
      Width = 39
      Height = 18
      Caption = 'SAIR'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -16
      Font.Name = 'Verdana'
      Font.Style = []
      ParentFont = False
    end
    object Label19: TLabel
      Left = 17
      Top = 3
      Width = 54
      Height = 18
      Caption = 'CAIXA'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -15
      Font.Name = 'Verdana'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object AdvGlowButton2: TAdvGlowButton
      Left = 1094
      Top = 15
      Width = 29
      Height = 26
      AutoSize = True
      Font.Charset = ANSI_CHARSET
      Font.Color = clWhite
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      NotesFont.Charset = DEFAULT_CHARSET
      NotesFont.Color = clWindowText
      NotesFont.Height = -11
      NotesFont.Name = 'Tahoma'
      NotesFont.Style = []
      ParentFont = False
      Picture.Data = {
        424D6E0400000000000036000000280000001300000012000000010018000000
        000038040000C40E0000C40E00000000000000000000F7F7F7DAA784C8641EC8
        641EC8641EC8641EC8641EC8641EC8641EC8641EC8641EC8641EC8641EC8641E
        C8641EC8641EC8641EDAA784F7F7F7000000E2B08DC8641ED16D27D5712BD571
        2BD5712BD5712BD5712BD5712BD5712BD5712BD5712BD5712BD5712BD5712BD5
        712BD16D27C8641EE2B08D000000C8641EDE8A4FDF8648D5722CD5722CD5722C
        D5722CD5722CD5722CD5722CD5722CD5722CD5722CD5722CD5722CD5722CD572
        2CD16E28C8641E000000C8641EE89A64DF8749D6732DD6732DD6732DD6732DD6
        732DD6732DD6732DD6732DCB6822C8641ED6732DD6732DD6732DD6732DD6732D
        C8641E000000C8641EE89A64E08749D7732DD7732DD7732DD7732DD7732DD773
        2DD7732DCC6822C8641EF2DAC8FFFFFFD7732DD7732DD7732DD7732DC8641E00
        0000C8641EE89A64E08749D7742ED5722CCD6923C96620C96620CD6923CC6822
        C8641EF2DAC8FFFFFFF5DDCBD7742ED7742ED7742ED7742EC8641E000000C864
        1EE89A64E0884AD5722CC9651FCE7436EDCCB5FAF0EAFAF0EAEDCCB5F3DDCEFF
        FFFFF5DDCCD8752FD8752FD8752FD8752FD8752FC8641E000000C8641EE89A64
        E1894BCE6A24D17E43FBF4EFFFFFFFFFFFFFFFFFFFFFFFFFFCF4F0F7E3D4DA77
        31DA7731DA7731DA7731DA7731DA7731C8641E000000C8641EE89A64E2894BC9
        651FEECEB8FFFFFFF5D9C5DF8545DF8545F5D9C5FFFFFFF4D4BEDB7731DB7731
        DB7731DB7731DB7731DB7731C8641E000000C8641EE89A64E2894BC9651FFCF6
        F2FFFFFFE08648DC7832DC7832E08648FFFFFFFDF9F5DC7832DC7832DC7832DC
        7832DC7832DC7832C8641E000000C8641EE89A64E38A4CCF6B25FCF6F2FFFFFF
        DF8545DC7832DC7832DF8545FFFFFFFDF9F5DD7A34DD7A34DD7A34DD7A34DD7A
        34DD7A34C8641E000000C8641EE89A64E38B4DDB7731EECDB6FFFFFFF6DECCE3
        955DE3955DF6DECCFFFFFFF5D5BFDE7B35DE7B35DE7B35DE7B35DE7B35DE7B35
        C8641E000000C8641EE89A64E48B4DDF7C36E28D52FCF5F0FFFFFFFFFFFFFFFF
        FFFFFFFFFDF6F1E49257DF7C36DF7C36DF7C36DF7C36DF7C36DF7C36C8641E00
        0000C8641EE89A64E48B4DDF7C36DF7C36E28A4BF4D2BAFCF1EAFCF1EAF4D2BA
        E28A4BDF7C36DF7C36DF7C36DF7C36DF7C36DF7C36DF7C36C8641E000000C864
        1EE89A64E48C4EE07D37E07D37E07D37E07D37E07D37E07D37E07D37E07D37E0
        7D37E07D37E07D37E07D37E07D37E07D37E07D37C8641E000000C8641EDE8A4F
        E89A64E58C4EE58C4EE58C4EE58C4EE58C4EE58C4EE58C4EE58C4EE58C4EE58C
        4EE58C4EE58C4EE58C4EE58C4ED97630C8641E000000E3B18EC8641EDE8A4FE8
        9A64E89A64E89A64E89A64E89A64E89A64E89A64E89A64E89A64E89A64E89A64
        E89A64E89A64DE8A4FC8641EE3B18E000000FFFFFFE3B18EC8641EC8641EC864
        1EC8641EC8641EC8641EC8641EC8641EC8641EC8641EC8641EC8641EC8641EC8
        641EC8641EE3B18EFFFFFF000000}
      Transparent = True
      TabOrder = 0
      Visible = False
      OnClick = AdvGlowButton1Click
      Appearance.BorderColor = 12631218
      Appearance.BorderColorHot = 10079963
      Appearance.BorderColorDown = 4548219
      Appearance.Color = 14671574
      Appearance.ColorTo = 15000283
      Appearance.ColorChecked = 7915518
      Appearance.ColorCheckedTo = 11918331
      Appearance.ColorDisabled = 15921906
      Appearance.ColorDisabledTo = 15921906
      Appearance.ColorDown = 7778289
      Appearance.ColorDownTo = 4296947
      Appearance.ColorHot = 15465983
      Appearance.ColorHotTo = 11332863
      Appearance.ColorMirror = 14144974
      Appearance.ColorMirrorTo = 15197664
      Appearance.ColorMirrorHot = 5888767
      Appearance.ColorMirrorHotTo = 10807807
      Appearance.ColorMirrorDown = 946929
      Appearance.ColorMirrorDownTo = 5021693
      Appearance.ColorMirrorChecked = 10480637
      Appearance.ColorMirrorCheckedTo = 5682430
      Appearance.ColorMirrorDisabled = 11974326
      Appearance.ColorMirrorDisabledTo = 15921906
      Appearance.GradientHot = ggVertical
      Appearance.GradientMirrorHot = ggVertical
      Appearance.GradientDown = ggVertical
      Appearance.GradientMirrorDown = ggVertical
      Appearance.GradientChecked = ggVertical
    end
    object AdvMetroButton1: TAdvMetroButton
      Left = 1195
      Top = 33
      Width = 40
      Height = 35
      Appearance.PictureColor = clWhite
      Appearance.PictureColorHover = clRed
      Appearance.PictureColorDown = clRed
      Caption = 'X'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -20
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      Version = '1.1.2.0'
      OnClick = AdvMetroButton2Click
    end
  end
  object batualiza: TAdvGlowButton
    Left = 419
    Top = 209
    Width = 78
    Height = 68
    Caption = 'Atualiza'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ImageIndex = 49
    FocusType = ftHot
    NotesFont.Charset = DEFAULT_CHARSET
    NotesFont.Color = clWindowText
    NotesFont.Height = -11
    NotesFont.Name = 'Tahoma'
    NotesFont.Style = []
    ParentFont = False
    Picture.Data = {
      89504E470D0A1A0A0000000D49484452000000280000002808060000008CFEB8
      6D000000097048597300000EC300000EC301C76FA864000000206348524D0000
      7A25000080830000F9FF000080E8000052080001155800003A970000176FD75A
      1F90000008864944415478DABC99EB5353F919C79F999DEDCC76A6339DDDFE01
      DDBEEBBEA9BB9D6D5F75A69D76775D47EE8B8ABA8EAE407272218AE215E4A695
      AB562E2AB99C9344C05557AD1740856C88E2B22C2190730E49B4C072B1545DA4
      482040027EFB2201091709227DF19D49CE9CCCEF73BECFEF79F27B9E4366A4D3
      6CDD45269926D388131832B89454D9A1249D2023635732B10E2571ED2AE24419
      B1A2F4B79C2095B322C37222636205692F2B488759413AACE3A5FD7A87EC2E27
      32E51C2FDDCB8AD235ACC810C7CB886D5790B15345FA072A323AE464702A48C7
      337467EC30DD4316CDE5A15001CF75EF25D6A17C9713E407599171B28214D3D2
      F12F3FCF5CB34B82AF894C17C733C7D876C5AFCF75ED22C3C35D6F06F07C6712
      E904D9DB7AA732871599219697CC83095D12E804A94FEF909D655DAAF7CE3915
      2B047C9044951DCA30AD5DD2A1B3278215560217ECAE96970C1A9DCC76836B09
      400BD283743F7093C12127AD9DC99A7EF2370136D7CD80A3259CC0509D2F8DBE
      43F63C1E324DA507A97E2A936ABD69A46F67CA356D890BEEAF3729AD5D021D2F
      A9BDE5394477A7B2E6F190B6337D46BA1F8F92A1EB10E94549C5EAB8B6B8F442
      82C5D8798074DD478398E8A63B836EBA33A8C69D493746B248D79E9455D612FF
      7F85630529D4B678687845E5B5E79954E3CEA29BEE74BAE9CE20BAD29F4C97FB
      93E9DA9314BADAAFFA33CBAF7E58174C1C5E0A9D3D0197FB92B65F7F924297FB
      93E94A7F325179EF7EAAEC3B485CE7DEB7CE5A137E5A591959A17809CE5AE3C1
      75EC79AFB2EF1095F7EE27FAE6592A5D194CA78A4E558EC6B6DAA1952C591134
      B6785474247D7DE5D911FA66309548E3DA431AE7EE77B4BCD4C7AD5A6230E044
      198A5B37A0C8F6053881012B300BDECB095268ED89D038541F685C7B880C8EDD
      A4171407593E71F5E00406F9D6B5A8ED52C3D2538E82E6B5D0099200E842BF49
      0427C8CF181CBB89F4A2823881E95B4DB802EB5A5C72650093000054779C425E
      F3A7D00989AF80649E73A2E26D6245C56F5613AED0BA0E975C1998F2022FBC80
      6F02C02450DD598402EBBA57EE574E9487132730AAD500E40419F29BD7E2A22B
      1D535E003E6078741CC3A3E3989C003005343CAAC4197E0B748BEC7D4E906A48
      2F32E52C1FDA826AFB0E94D9B7831365AFBE579421AFF9335C741D81CFFB02F0
      01EED1718C7826E01E1D8767CC1F6B6BF71DE47DB70E06A77CB128D493DE21B3
      CC3BBBCDFD1B12E538D3F62534FC4E68F80494B6C6412F2A1609AB0CF9B3E126
      FDCE4DC38D8F4F01009ABA6FE240F5C7385ABB16EAD69D38E74A9A57B8399179
      48AC207DB4145C695B1C4EB644A267D08127EE1E9C6EDB82225BCC1CC8E96CFD
      3CC8B9D9706301B81F7AAA9052F53B64D77D8A7C7334724C1128B37D85732EE5
      DCF5078815A49EA5E122E0FAA91178E1CFC2DE21178A5B37A2B835167A511E94
      10175C6998F4629E73D370CD3D3548A95A83ECBA4F516889457E7D3472BF8D9C
      81343A8320475E09A8E177E274DB66389F36020046C77C707B26801740DFD043
      14D96251D2BA1106518902EBE7B8E04CF5C3CD736E3200571D80FB64066E5A7E
      C8F0B99023A4E3A5FF592CCD4F58D743786C01008C78BC707BFC8B8E7ABC7EC8
      FF3E40716B2C321BFF888BAE54F82626170D6B734F35F6557D88AC05E016820C
      ECC941323865F7B58B24C999B6ADB8E83A8CA1D1416012708F4EF817F64C60D4
      E3035E00AEA74DB8F4E00846C7BCC161F5CC76AE06FBAA3E4476DDDF16859B0B
      79B665072A1EAA3A49DFCE7CAD5BE404A317E538D112069DC060D833044CCD86
      1CC788C7EBAF693E7F010E726ECCEF9CB5F73652AAD620ABF69325E15E424620
      C71481B3B61D0DC4F1D2FD4B65F14BC8E741902301273D635333DF673BD7D27B
      27E05CE8703390E608E49BA38CC48A8A0F963C8E8B729C6809072B3070CF7172
      B6DC9E5945B8F776C8615D4879F55138716F631C71829C58413AB01CC8859C9C
      1DD696DEDBD857F511B26A5F0FCEAF18EFC9868D3F2743FB2EE204797E28C72D
      BD28C7096B580072DAC9F1A052E20FEB47C8AAFDEB6BC3E59A2351608EA92CAA
      8F23D23854A46E57FE4A6B97800BA5FB12E528B4AE072728E0F63C072601CF98
      0F00D0FAA8CE5F4A5600576089C1F1BA089C34C7FCA1D4BC89E8D2B30374F9D9
      612AEF506AB4211EF9F5A21C852DEBC10972B83D6E0080ADAF16FBAB7FBFC2B0
      46E3D89D7094366DB973BD4345573B1444E71F1FA20B8FD3C8D0B3EF1765B6C4
      89509B26BD28C7496B38FED9F17734765F415ACD9F9055B732B83C7314B26F85
      A1CCB5FDFDF3FF5690B14F4254D9A9A28A4E155DEC4EA60B5DF24D3A7B0274A1
      36DBA21C65FC3614FE108E1CF37AE49AA25E1B2EBF3E1A397591286DDA7A5063
      FF8A4A6D5BE974CB97445543A95435944AB786D2E8C6F323A415151AF5321A77
      1D2F81C121F79F64EAA371BC2E7CF97096681CBB15863C4B94F9EA4012553FDB
      43D70676D1F5815D445C4FE64BF51D2363D721E2F8843A9D5D02560CBD9D343A
      FD47AFFCFA68E498C2971DDA9CDA28A7BA7DDB5B158F7792BE773B19025A7078
      54E74D238343F6ADA63561593DEFEB40E69822916B8A6CBF3194F2CB86A96C32
      4DA50569DEB8EB1E32E81EB2A8A243496A9BA47CB9BD88C11122A4390A79E648
      E49AA36B0A2C1B7E56EB4DA5EF719C2CC80CD2BC81A10519548F74323E5010E7
      5052C5BF94F15ABBC4EB1F6086E6E434648165E13D996B8A448E2912A7EE6F38
      50DCB499F2EBBFA0EA91FD741F47979EB0CE00BA1464702AE97C978AB482EC7D
      BD53C14ECF4F42019D1DEE69C8BCFA28E499A370B221F6EAA9A6B835254D9BA9
      A4298EF2CC31AF07A87728A9B223C93F44FF712FB10EE5C79C202B6245E67168
      D9AD804E90A0C012833C73D470BE3946F38F860D7F51B76DA392D6AD54D4B889
      8ABFDFF466008D9DC9A47324055E43C8DF6145691827484B5881A9E3FC53FFA7
      D3AF2158413AC089CC4356905ACA5D496A755BFCA67C73F4BB85E6582A6ADC48
      6ADB562A6AD91C12E0FF0600783C0BEA8110C4080000000049454E44AE426082}
    Transparent = True
    TabOrder = 7
    Visible = False
    OnClick = batualizaClick
    Appearance.BorderColor = 14727579
    Appearance.BorderColorHot = 10079963
    Appearance.BorderColorDown = 4548219
    Appearance.BorderColorChecked = clBlack
    Appearance.Color = 15653832
    Appearance.ColorTo = 16178633
    Appearance.ColorChecked = 7915518
    Appearance.ColorCheckedTo = 11918331
    Appearance.ColorDisabled = 15921906
    Appearance.ColorDisabledTo = 15921906
    Appearance.ColorDown = 7778289
    Appearance.ColorDownTo = 4296947
    Appearance.ColorHot = 15465983
    Appearance.ColorHotTo = 11332863
    Appearance.ColorMirror = 15586496
    Appearance.ColorMirrorTo = 16245200
    Appearance.ColorMirrorHot = 5888767
    Appearance.ColorMirrorHotTo = 10807807
    Appearance.ColorMirrorDown = 946929
    Appearance.ColorMirrorDownTo = 5021693
    Appearance.ColorMirrorChecked = 10480637
    Appearance.ColorMirrorCheckedTo = 5682430
    Appearance.ColorMirrorDisabled = 11974326
    Appearance.ColorMirrorDisabledTo = 15921906
    Appearance.GradientHot = ggVertical
    Appearance.GradientMirrorHot = ggVertical
    Appearance.GradientDown = ggVertical
    Appearance.GradientMirrorDown = ggVertical
    Appearance.GradientChecked = ggVertical
    Layout = blGlyphTop
  end
  object ed_data: TJvDateEdit
    Left = 55
    Top = 148
    Width = 122
    Height = 19
    DateFormat = 'DD/MM/YYYY'
    Color = clWhite
    Flat = True
    ParentFlat = False
    NumGlyphs = 2
    ShowNullDate = False
    TabOrder = 8
  end
  object ed_data1: TJvDateEdit
    Left = 283
    Top = 148
    Width = 111
    Height = 19
    DateFormat = 'DD/MM/YYYY'
    Color = clWhite
    Flat = True
    ParentFlat = False
    NumGlyphs = 2
    ShowNullDate = False
    TabOrder = 9
  end
  object balterar: TAdvGlowButton
    Left = 419
    Top = 99
    Width = 78
    Height = 68
    Caption = 'Alterar'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ImageIndex = 49
    FocusType = ftHot
    NotesFont.Charset = DEFAULT_CHARSET
    NotesFont.Color = clWindowText
    NotesFont.Height = -11
    NotesFont.Name = 'Tahoma'
    NotesFont.Style = []
    ParentFont = False
    Picture.Data = {
      89504E470D0A1A0A0000000D49484452000000280000002808060000008CFEB8
      6D000000097048597300000EC300000EC301C76FA864000000206348524D0000
      7A25000080830000F9FF000080E8000052080001155800003A970000176FD75A
      1F900000080B4944415478DACCD97D6C13E71D07F09F5475121D952A5A69FFAC
      D3289D265835A125B109797142C8DDD94E020DB4B0499B52606BA5ADDBA4B132
      A4556AB796A24E9BAA092DB11D423A12C0F6DDD971DEB0EF9CB3F3421A62DFD9
      0E792D813681F212C668422821C0777FD87971088C12A3ED8FEF1F7792ED8F7E
      CFFD9EE7B9C7648042F3938B20196EFB89D30432F679881D70934915A864A081
      8A232E2A39554F464D244EE557731AFF4B5613AAD888E067557E8455F97156E5
      C7D930FF0513155A594DA8E1547E37A7896B8D9A40A68848C5AA48E65E0F15F5
      7AC81C13C974AA8E8C61810C37A4F86F2FF0D0C302370D355249C4B5C21415F7
      729AD0CFAA3C66137622E95AE5C1869C60C373D79C269CE134E1FD6255FCAEB9
      AF9E8AFBEA5300ECF7103B5847665578D2D4E3DE6F54F96BCC6298870CA33AC1
      85F969362A5614F7D43D6BEE7191A9770940535F3D3103EE6263B7E334137282
      7944583292071376820D39AF7231A1CCDCEB79303007CA6CB2A150365AC90085
      D89848A690F06EFC0B970EBB27E138D6A80A07385520C32D3F65A395B2E77972
      A010E5DF519262B81324C3949FD88850C37539929EA3C7926E07D89053CA9B94
      C87027788F87760C2BB3F9C5676DB46D58A202D559FBB8404C220BEF6F083B82
      5B3FF5D2EB9FB72599A8683240E644364FB6D2A698E75DA6F358CA61C6308F8D
      1A8F1F0CD991DEE78069C1C8309FD851A2BA8EBC3C1E24F36490CC93012A9A0C
      10157DE68967B4810A46EAF20AC20E70E1D4E372634EBC346447D5D166FC5EF2
      E0C5E1633086797033D35098C7C690031BCEBACB8A461B665D543AECA5D23312
      BDD2D7F484A9C33EC6849D60B514E25401B99A1DABFA6B61713601BF3E819BEF
      04B1ED1311DF3F6D4F42322A0F63C7316CE96D7C76CB59894A87BD44259764DA
      7459216EC8B39FE9B2A7B672AA80DCB01DAB066B61B33701BF6AC1B57D41E08F
      ADF8EA9D20B6758A5873DA0E5358981BEA2E3B98C1BA639B2EB5D0A64B32D1AB
      917A7A55F32C3386F8E9422DF5B817BBAA50712E0A0C4F60E2BD202EEF6EC2C5
      0F03B8FB761078BB0DBF531A90363837F9331A0FF6A4035B55F79A6DD17AA22D
      BD8D648EBAF716861D29C399540772C34EAC8CCAA8383B088C7D852BD33731FA
      C518C6DE5770717723A6FFDC0EECE9C09BF65AAC39550B738F7BF6F38561274C
      51B17C4B6F2351912612A70AA34CCA2AE7408EE6C10BAA07555D1F00572630F6
      6F60F4FC059CBB3D8991F397817D9DC05B4194B90F6345EB47D07B2D60424E98
      6373484E15BE2CD2C427C918115E60538C5BD9D381EAF6B700D70A4CB5EFC4E7
      5781D1ABC0C8B98B980270F7F435BC565385E5ED1F41275B917EBC1C19BE38D2
      944032AA139C269410A709BF792CB8A63598F66663D2FD6D8CB7EDC4C8D5BBB8
      3901DC1D9BC0CF340F962B7F85CE67815EB24227DB90B60892D3041B7111B166
      A9CBD9BDB8D5B8E5CDC2B8AF00D77DF9B8E17E1E38F173E05F17F0D32E1F9EAE
      FB003AC91AC7CD4BBAB7228174C01C7381D58400B15131C8869C4B6A8838AE7D
      1637EDCDC6B86F03AEFBF231EEDB08F87440D32A94491F627973353216C1CD22
      672AD9ED80F954DD10B12A7F6EE9954BE01A17E20AE2385F067649EFC571BE8A
      FBE2663233DC8521C7156255FE466A8775212E1DBBA47D784A72252A6779206E
      3E522759AF3F127031DCE2958BE39649AE459FB9FF960C9FE53AB161FEC2D759
      7B1FA5728F824BE42A313D6207DBED4C5143CCE1764AFBF04D49FC5AC39A1C0B
      7472E530B151F1D8C374F1C33744BC72719CED117171A05EB6B513A70A7BFED7
      0DB1E8F32759B14EB6FE938C1171CDFF43432C06CCF457FE988C9A40ACCA5FB9
      1F70A32A6275A405D5ED7B1E77432CCC2DBDDFF61495F6369029EAFACBFDB65B
      2FC55AF0B7CE3F01F5DFC3B4370B1389E52BB50DB1707AB1422F5B8F64B65412
      6D0DBBA934243EC79D74C6378BF37085AA801F6A3EF485DF0094745C6BCA7D4C
      0D313F366448E558EF2FD765B758898ACE1DA7E2F33E62FADD36E664F2963F5F
      75214BF5E074E40D2062C64D85C1974D06C09791D286485A8B7DE558277FECCB
      0F8894A7F0449BCFCBB4F9BC422F7F7AFC69AED33135FFEC255BF5A05015705B
      DD0EC4F2811E33D096061C4FC38E143644F2F01E40764BF5CADC80937294A344
      A57D2EDAD2E7A2D2C13A6207C4ED05A1B9D7CE2CD583ADEA510C7495A1ABB30C
      8D5DBFC5D1136FE235793F9EF139528E4BF75520D35FBB373FE02483524B06E5
      0891695C8E6742A6E289162A8AD559D9C4DB1DA30A2889F2C8E9A8C1F38D87F0
      ADE6C378CE6BC777A45A644A96940D6B7C5A29875EAA500C8A87F2142F199426
      32284D443BCE0467F3FA483BFD64C8471B4FDA6536F1BECA6802F2A30DC8EAA8
      C5DAE672A4FB52875A50BDFE6CFFC1273604AAC8A054CE860AA794B9DC0AD086
      A900E55D97888D082DECC9F8E111A70930F7B861E8A8415A737CAF963A5C0574
      92A537C7DFF08C41F19341F19141F1CE86B2A02C482BE522406C8F48A66EA186
      09C7CF05E7237FD4FC8F14222B9AF592F51B86163FE52B9D6450DA9272FF03CC
      8848E6DE7A62FADDBBB86EC72D26E404AB0930C7968ECC902CD04916AC93ABFE
      B04E3E483AA982725ABC94A7B491415192F2E013D6FE7A6287EAC81C16561A63
      AEAA9943C7A5212DD04B95AE4CB972ED7A7F35E9E5434B00F6D5133B9838E51F
      6AA4624DCC3046C4BF7311F1E20C32EDBEC87BEE8DEB24AB2D53B6E667F93FA6
      F5721565FA0F915EAE4A1170A0818A23E2CCDF10CB8C9A506CEEA93B90DB7158
      4EF759FA7592F5720231AE93AC57F4926D482FD9827AD96AD5C9B6ED3AC9B642
      2F592953B65196BF9A32E5830F05FCCF00AAD5CA2D4DE4BAAB0000000049454E
      44AE426082}
    Transparent = True
    TabOrder = 10
    OnClick = balterarClick
    Appearance.BorderColor = 14727579
    Appearance.BorderColorHot = 10079963
    Appearance.BorderColorDown = 4548219
    Appearance.BorderColorChecked = clBlack
    Appearance.Color = 15653832
    Appearance.ColorTo = 16178633
    Appearance.ColorChecked = 7915518
    Appearance.ColorCheckedTo = 11918331
    Appearance.ColorDisabled = 15921906
    Appearance.ColorDisabledTo = 15921906
    Appearance.ColorDown = 7778289
    Appearance.ColorDownTo = 4296947
    Appearance.ColorHot = 15465983
    Appearance.ColorHotTo = 11332863
    Appearance.ColorMirror = 15586496
    Appearance.ColorMirrorTo = 16245200
    Appearance.ColorMirrorHot = 5888767
    Appearance.ColorMirrorHotTo = 10807807
    Appearance.ColorMirrorDown = 946929
    Appearance.ColorMirrorDownTo = 5021693
    Appearance.ColorMirrorChecked = 10480637
    Appearance.ColorMirrorCheckedTo = 5682430
    Appearance.ColorMirrorDisabled = 11974326
    Appearance.ColorMirrorDisabledTo = 15921906
    Appearance.GradientHot = ggVertical
    Appearance.GradientMirrorHot = ggVertical
    Appearance.GradientDown = ggVertical
    Appearance.GradientMirrorDown = ggVertical
    Appearance.GradientChecked = ggVertical
    Layout = blGlyphTop
  end
  object PopupMenu1: TPopupMenu
    Left = 272
    Top = 237
    object Localizarpor1: TMenuItem
      Caption = 'Localizar por...'
      ShortCut = 114
      OnClick = Localizarpor1Click
    end
    object Referncia1: TMenuItem
      Caption = 'Refer'#234'ncia da Pesquisa'
      ShortCut = 115
      OnClick = Referncia1Click
    end
    object ParmetrosdaPesquisa1: TMenuItem
      Caption = 'Par'#226'metros da Pesquisa'
      ShortCut = 116
      OnClick = ParmetrosdaPesquisa1Click
    end
    object N1: TMenuItem
      Caption = '-'
    end
    object Fechar1: TMenuItem
      Caption = 'Fechar/Voltar'
      ShortCut = 27
      OnClick = Fechar1Click
    end
  end
  object ds: TDataSource
    DataSet = query
    Left = 240
    Top = 181
  end
  object query: TZQuery
    Connection = frmmodulo.Conexao
    SQL.Strings = (
      'select * from c000035')
    Params = <>
    Left = 272
    Top = 181
  end
  object ds1: TDataSource
    DataSet = ZQuery1
    Left = 223
    Top = 466
  end
  object ZQuery1: TZQuery
    Connection = frmmodulo.Conexao
    SQL.Strings = (
      'select * from c000035')
    Params = <>
    Left = 287
    Top = 458
  end
  object ds2: TDataSource
    DataSet = ZQuery2
    Left = 633
    Top = 117
  end
  object ZQuery2: TZQuery
    Connection = frmmodulo.Conexao
    SQL.Strings = (
      'select * from c000035')
    Params = <>
    Left = 697
    Top = 109
  end
  object ds3: TDataSource
    DataSet = ZQuery3
    Left = 87
    Top = 212
  end
  object ZQuery3: TZQuery
    Connection = frmmodulo.Conexao_pdv
    SQL.Strings = (
      'select * from c000035')
    Params = <>
    Left = 151
    Top = 204
  end
  object ds4: TDataSource
    DataSet = ZQuery4
    Left = 990
    Top = 100
  end
  object ZQuery4: TZQuery
    Connection = frmmodulo.Conexao
    SQL.Strings = (
      'select * from c000035')
    Params = <>
    Left = 1054
    Top = 92
  end
end
