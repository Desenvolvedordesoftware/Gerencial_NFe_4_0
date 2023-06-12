object frmvenda_impressaoCP: Tfrmvenda_impressaoCP
  Left = 377
  Top = 145
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = 'Aviso de Impress'#227'o'
  ClientHeight = 131
  ClientWidth = 496
  Color = clDefault
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PopupMenu = PopupMenu2
  Position = poMainFormCenter
  Scaled = False
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Bevel2: TBevel
    Left = 58
    Top = 8
    Width = 391
    Height = 25
  end
  object Label3: TLabel
    Left = 96
    Top = 12
    Width = 305
    Height = 23
    Alignment = taCenter
    AutoSize = False
    Caption = 'Pedido de Venda'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 19
    Top = 41
    Width = 57
    Height = 19
    Caption = 'Modelo:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label1: TLabel
    Left = 232
    Top = 66
    Width = 35
    Height = 19
    Caption = 'Vias:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    Visible = False
  end
  object combo_modelo: TComboBox
    Left = 80
    Top = 39
    Width = 337
    Height = 21
    Style = csDropDownList
    TabOrder = 0
    OnKeyPress = combo_modeloKeyPress
    Items.Strings = (
      '01 - Cupom Fiscal'
      '02 - Nota Fiscal'
      '03 - Bobina'
      '04 - Formul'#225'rio Cont'#237'nuo - Raz'#227'o'
      '05 - Formul'#225'rio Cont'#237'nuo - Carta'
      '06 - ---'
      '07 - Contrato/Guia de Entrega/Carn'#234
      '08 - Personalizado'
      '09 - ---'
      '10 - Papel Raz'#227'o - Laser / Tinta'
      '11 - Formul'#225'rio Cont'#237'nuo - Raz'#227'o 2 '
      '12 - Contrato/Guia de Entrega/Carn'#234'+Capa'
      '13 - Bobina sem formata'#231#227'o'
      '14 - Pedido + Carn'#234
      '15 - Contrato/Carn'#234
      '16 - Pedido + Carn'#234' com c'#243'digo de barras'
      '17 - Raz'#227'o Laser - 2')
  end
  object bgravar: TAdvGlowButton
    Left = 72
    Top = 66
    Width = 119
    Height = 48
    Caption = 'Imprimir'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
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
      6D0000001974455874536F6674776172650041646F626520496D616765526561
      647971C9653C0000032269545874584D4C3A636F6D2E61646F62652E786D7000
      000000003C3F787061636B657420626567696E3D22EFBBBF222069643D225735
      4D304D7043656869487A7265537A4E54637A6B633964223F3E203C783A786D70
      6D65746120786D6C6E733A783D2261646F62653A6E733A6D6574612F2220783A
      786D70746B3D2241646F626520584D5020436F726520352E332D633031312036
      362E3134353636312C20323031322F30322F30362D31343A35363A3237202020
      2020202020223E203C7264663A52444620786D6C6E733A7264663D2268747470
      3A2F2F7777772E77332E6F72672F313939392F30322F32322D7264662D73796E
      7461782D6E7323223E203C7264663A4465736372697074696F6E207264663A61
      626F75743D222220786D6C6E733A786D703D22687474703A2F2F6E732E61646F
      62652E636F6D2F7861702F312E302F2220786D6C6E733A786D704D4D3D226874
      74703A2F2F6E732E61646F62652E636F6D2F7861702F312E302F6D6D2F222078
      6D6C6E733A73745265663D22687474703A2F2F6E732E61646F62652E636F6D2F
      7861702F312E302F73547970652F5265736F75726365526566232220786D703A
      43726561746F72546F6F6C3D2241646F62652050686F746F73686F7020435336
      202857696E646F7773292220786D704D4D3A496E7374616E636549443D22786D
      702E6969643A4442423443394332453238313131453242394338393942364543
      3838344544452220786D704D4D3A446F63756D656E7449443D22786D702E6469
      643A444242344339433345323831313145324239433839394236454338383445
      4445223E203C786D704D4D3A4465726976656446726F6D2073745265663A696E
      7374616E636549443D22786D702E6969643A4442423443394330453238313131
      453242394338393942364543383834454445222073745265663A646F63756D65
      6E7449443D22786D702E6469643A444242344339433145323831313145324239
      4338393942364543383834454445222F3E203C2F7264663A4465736372697074
      696F6E3E203C2F7264663A5244463E203C2F783A786D706D6574613E203C3F78
      7061636B657420656E643D2272223F3EB0957FD5000005934944415478DAB458
      796C944514DF6F7771972A68418A55A828A0126F118D174710242A55A99188C4
      A0A051226852A3A2FC2189670C1210E21545413C62A8578C468D8A94C32ACAA1
      50143CD046C156DBDADA935D7F4F7F93BC0CF35D5D7DC92FFB7DB333F3BD79F3
      DEEFBD192FF1FAEE4401520C9C0C1C0D0C0306B37D1FB013A803B6033FF7F403
      E91E8EBB02A800C6024785F46D04D6006F02AB81A6381FF26258F030A012B806
      38A6870B6B0656028B816FFF4B0567008BA8A416B14C35F035B00D680572C021
      DCF2138151C045406F6BECBDC08242153C18781128576DB5C012E0AD18BE25BE
      7A213007B840B56FE68E6CEF8982A5C046A08CEF5DC05DC0A389C2642AE73852
      B58D06D6BA3A277D2619CE2D33CA7DCCB64295137905380E7846B57D024C8E6A
      C15EA487017C7F0998E6183B1F28017600ED4011ADD200FCC13E296028836A36
      F0BB35C7DDC0FDEA5D28EBAB300B562BE51EF7514EE4626E8B44E37EBA80F4AF
      A1C2ED54482C7625B9D29607809BD4FB7A06982F0FDE069CC5E71AAEDA4F44B1
      0DC067C011C04C06CD3C354EA2FA58E053A0DB679E2781D3A8681F600530C565
      C1C3492586AFC685F8529E1FFF15B81E7896ED39D5A705C870ABF30173DD4C83
      982430C665C145EA7916F0578882B2ADFD80D3ADF63FD573378D20CAFD1032DF
      D5800988E74C32300ACA164DE7F337C0AB8E09FA026703597E70180324C5F11E
      FB9558E33AD8E73AE07BBE6FB41622F21DB7F75A600870BEC48351708AEA38CF
      A1DC74A628DB823B494163022CD3C4452DB1DA672AB730720F1534DB5E6D7CD0
      34FE065459834EA1723F311A2F21DE67646642B6EE5046F46C8EABA0B5840747
      5A7D25C8DE5346CBA64929A3D8B8DAF101132C93AC9434993ED816A26086D65E
      C5E013F9859422696F93D5FF1D6022AD3E3EC9BD3696DCE213AD229D8E3CDD19
      2173E4E89F65563248F88CDFA0893B490737B2CB31C0F057918FF2D900E58AA8
      9C4D31073928C9C82665E94169E658530C6C899153F3E4B9462E2277401AFD37
      E535B3AF1771DE6E72ABB046495A95E96D21D5AE6D0549F81358403CE5503049
      4A91FC7A8E9514F2214AB6184BA7AD95B95669B670AFD5FE323F5C4C453CC782
      52F4BDA7C999461AACB903CF24A6E8EC4DC7EFB0FAD4292ED4E5D6E2024AAE49
      8AD6FC7CF71FB74BABC0E8C5ED5863757E0DF8025848EC67A19065FEF6420E5F
      1E5DA75E9C9E054182F56695CF9881FCAD4F93938C1CEF50B0933CF908B734AB
      F2EF97B4788B8332CA18AD397E7004776B1BA9E44E2ED69633E836227B44C175
      EACF9302B8ACD2F2AFE7811FF9DF7292765EEDC6E7AABF649165CC245B43B6FF
      3CF5BC23CD90167A3915B81C981B3241526588264EF8905230C93A70197DBA51
      A5C38111FC739CA2BD0FCDC74C213098D41145C1149DBC2FD1C69CDB41EE2B66
      0957AB22381932773FD68326E535271565185918231A3354A8CBDAFEFECCEB43
      790D3228E27CF7A9E7C7743D58C7AB897246F244555504317E293FEEF99CDEF6
      B1EE6B88A05C094B2C73B7F3816DF239EA7979C454D7C980C83920117F15179C
      8A30DF2AABA23FA0E4DF4313CFE7F1F15D45A87E915D43C7F7AB6A522CD1C2F2
      F002DE3C887CC45B0BDF73F16646B4F1C7DB1DE7E6563E6F55E55410519772D1
      97026F5BFF4F53D6EB62BFFAA0EBB7D1F4810CB94F14BAD5B2DC5EFADEC89829
      CE2E6E67314F1B19AB95F353B0D91C58A8E45C6EE38DFC4FD8FF4CE6CB7C0CE5
      727423230FF2AE479F51D6C7B93C3A813ED64725F64AC7E129AEC8E29FE0D59C
      910ABFBC1C449CB554D2D0CD001E0BC5B237909CA38A7CE73272E35AA5DC2E2A
      5C55E805E61DC0C38EA2F20D160CEBC8A5ADAAA497059DCB6B8D72EBBA2DC122
      F7168BE40BBA021ECE6099C11CEB92769561FC225B6ECB96BAFCAD500575BE9C
      CA63E77875000A926A9EA35FE099F87FB944F70BA411ACFDFAF3EACCE35637F2
      B0BFDB2ABD62C9DF020C009946633A8EAB94390000000049454E44AE426082}
    Transparent = True
    TabOrder = 1
    OnClick = bgravarClick
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
  end
  object bcancelar: TAdvGlowButton
    Left = 304
    Top = 66
    Width = 135
    Height = 48
    Caption = 'ESC | Sair'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWhite
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
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
      6D0000001974455874536F6674776172650041646F626520496D616765526561
      647971C9653C0000032269545874584D4C3A636F6D2E61646F62652E786D7000
      000000003C3F787061636B657420626567696E3D22EFBBBF222069643D225735
      4D304D7043656869487A7265537A4E54637A6B633964223F3E203C783A786D70
      6D65746120786D6C6E733A783D2261646F62653A6E733A6D6574612F2220783A
      786D70746B3D2241646F626520584D5020436F726520352E332D633031312036
      362E3134353636312C20323031322F30322F30362D31343A35363A3237202020
      2020202020223E203C7264663A52444620786D6C6E733A7264663D2268747470
      3A2F2F7777772E77332E6F72672F313939392F30322F32322D7264662D73796E
      7461782D6E7323223E203C7264663A4465736372697074696F6E207264663A61
      626F75743D222220786D6C6E733A786D703D22687474703A2F2F6E732E61646F
      62652E636F6D2F7861702F312E302F2220786D6C6E733A786D704D4D3D226874
      74703A2F2F6E732E61646F62652E636F6D2F7861702F312E302F6D6D2F222078
      6D6C6E733A73745265663D22687474703A2F2F6E732E61646F62652E636F6D2F
      7861702F312E302F73547970652F5265736F75726365526566232220786D703A
      43726561746F72546F6F6C3D2241646F62652050686F746F73686F7020435336
      202857696E646F7773292220786D704D4D3A496E7374616E636549443D22786D
      702E6969643A3039393945413941453238333131453238343743414236334536
      3745374338342220786D704D4D3A446F63756D656E7449443D22786D702E6469
      643A303939394541394245323833313145323834374341423633453637453743
      3834223E203C786D704D4D3A4465726976656446726F6D2073745265663A696E
      7374616E636549443D22786D702E6969643A3039393945413938453238333131
      453238343743414236334536374537433834222073745265663A646F63756D65
      6E7449443D22786D702E6469643A303939394541393945323833313145323834
      3743414236334536374537433834222F3E203C2F7264663A4465736372697074
      696F6E3E203C2F7264663A5244463E203C2F783A786D706D6574613E203C3F78
      7061636B657420656E643D2272223F3E92C56603000005424944415478DAB459
      096C5645107EFDE9A140550C0A22281EA0B68AB55A3945A336206942288848A2
      522F30468518538F88423882311062D06A0236864304154AAAC12018AD28B14A
      3C209E512CD6563C38022DE5A8DF906FC964B2EFFDEFB53F937C79EFEDEEBF3B
      3B3B333B337F56B0EE97A08374317023500CF407FA1059C01EE00FA001F806D8
      027CD79145B2138E3F1DB81DB81BB825625C2FE04AD3F625B01A7803688EBB60
      5602095602D381DE9EBE6F814D945C3B7001308C4C7631635B80D78067810399
      607030F00A708D6A6B2243EB817AE0376024702DD00AAC04F6F1C80B80F15487
      2BCC1C8F026B3AC3A0486C91FAFE1B984309B4A8F6451C2B923C0BE80714023B
      CD7CA21E4F0345AAED55605A1803A908E6E61AE684A901C062C39CDBC8526010
      8F57689667CE353C89E754DB54E09DA40C2EE64E03EAD4784EB437624396E97F
      23C6CEA63A34F07B1C2D3D16830F5037840E02433D3B1429D5028D6A116D998D
      94E6E3C00C1EB9A5AF28CD1DFCBE89A710C960318FD2D175C036CFE49F03A540
      15F036DBB4B58A0F1C023CC1A3FE8912B3F40F99DCCDEF7BAD3E5A0657ABF73B
      80EF438EE83CEAD16CEA9FD0F9AAFF6A602D5DD219401EF04CC85C47805BD5F7
      CB40BE8FC187814B9565BD15A14387B9B0A663EA5DA4F95F44BFA51F80BB4E7A
      9620A8B60CCA0DB14029FBB4188EDB4ABFDD30739AE9FF2BCD7CCB792D0A9503
      57E945EE01BAF1FDF920F3243A791B0DAB06181E32EE3EF5FE986670129FADC6
      F7658AE4542EA20A950075BC592CD513421381DC142F7637B89A4A9B8EE43873
      4D5B9E0942B40A08632B80CB6860CE627DB4844F3194D132D128D5B93E82A947
      E82A0E928166A38BC78D7E9E637E7FD4BC87050A75EABD4C16BAC158938F36C8
      60E053A02719DCA7AC4EE6D0977A99E7D6C98F69D53F03BF52250666F3889D95
      FD1EF2A3323A5C67406D0C52DD4275667CADF94E1AAC6E2383BDB39583FD3A62
      57ED3420BDFB548205C565F44D307E0F9F3DB4AEEC4F6314DA0872E2049B8676
      2718EBE6EE9AA20E25A5233CE2CB5578752A282BA5C4D93DE68F52B4E40A7AFE
      5D948E040EE7668831C7CB2159EC4F7E14C694A6DCB31318AD94D0872E675B33
      C3B5F4A946349DCDE75EEDCFFAF2B876C538DE8F4CDBC7C093C07C866BDDD3DC
      48C7D3AC51E2F296147D9BA381113B3E1643324F31AC5AC8F4208CDA2252DE0B
      79E39CF089C2E007AA7354048371DDCA3C86FB2B23C6E49AE847D310F5BE31C5
      90DD45CDF7471C6B410225AF62349E17D29FA374DFD2432AE6AC71527993CF33
      19B85A7A1F189B8041A7C73D3D7D2E3059E7E92B50FD9201B63806972A1D9B1F
      221109402F89C9E0609573589AC1E70E4FDF3293599ED4AB032A57CD674E6C25
      E8F2853854CD54B5D5A3CB6369449646AB8D6D7671A1AD2C34A9E0A194E58D40
      05B5AB5834DADC4107FC0930C2E3077BD116725452D6E4CB2BEE54EF352A6271
      7A2A6D1F9AF6B83493CC957AFA3629E62A1D733E06B730977589D47695E9053C
      9EAD8CD7C624606E19C3B50A732A5D389F2BD5BD0BBC90AEB2F022C3F38085A0
      7AEEDCD1704AB29696561871674FA4342A783AD5AABF3F6B864355CC589EA4BA
      25B9F183C601EBE4BB94D62F658D43F4A50DBC218A94DF9434628A89B0E5BE7E
      49F9C93A26EF879396DFE618A676B26D95B91EC5775ECF4BFE28A39BF7B8C956
      73534DA7C5EA6AC6A4CE14306F065E37715F036B322B549A184683A8BBE5A62E
      D8C6DCB72A1325E0AEF48D53693C36FAFD8252DBCF3BB61B5D45914A336D0DA8
      3246E494A846EDFC9528FC64579A48408D540D09C77E8C1D5277E26F8862BA1A
      61B40F739B5C3AE136168F1A99468A3E7EE6338274F4BF000300DD60333ABE03
      1B2E0000000049454E44AE426082}
    Transparent = True
    TabOrder = 2
    OnClick = bcancelarClick
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
  end
  object evias: TRzSpinEdit
    Left = 217
    Top = 91
    Width = 66
    Height = 27
    Max = 100.000000000000000000
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    Visible = False
  end
  object PopupMenu1: TPopupMenu
    Left = 456
    Top = 8
    object TPCupom_Fiscal: TMenuItem
      Caption = 'Cupom Fiscal'
      OnClick = TPCupom_FiscalClick
    end
    object TPNota_Fiscal: TMenuItem
      Caption = 'Nota Fiscal'
      OnClick = TPNota_FiscalClick
    end
    object TPBobina: TMenuItem
      Caption = 'Bobina'
      OnClick = TPBobinaClick
    end
    object TPRazao: TMenuItem
      Caption = 'Formul'#225'rio Cont'#237'nuo - Raz'#227'o'
      OnClick = TPRazaoClick
    end
    object TPCarta: TMenuItem
      Caption = 'Formul'#225'rio Cont'#237'nuo - Carta'
      OnClick = TPCartaClick
    end
    object TPContrato: TMenuItem
      Caption = 'Contrato/Entrega'
      OnClick = TPContratoClick
    end
    object TPPersonalizado: TMenuItem
      Caption = 'Personalizado'
      OnClick = TPPersonalizadoClick
    end
    object TPa4tinta: TMenuItem
      Caption = 'Papel A4 - Laser / Tinta'
    end
    object tprazaotinta: TMenuItem
      Caption = 'Papel Raz'#227'o - Laser / Tinta'
      OnClick = tprazaotintaClick
    end
    object FormulrioContnuoRazo21: TMenuItem
      Caption = 'Formul'#225'rio Cont'#237'nuo - Raz'#227'o 2'
      OnClick = FormulrioContnuoRazo21Click
    end
    object ContratoCapa1: TMenuItem
      Caption = 'Contrato + Capa'
      OnClick = ContratoCapa1Click
    end
    object Bobinasemformatao1: TMenuItem
      Caption = 'Bobina sem formata'#231#227'o'
      OnClick = Bobinasemformatao1Click
    end
    object PedidoCarne1: TMenuItem
      Caption = 'Pedido+Carne'
      OnClick = PedidoCarne1Click
    end
    object TPContrato1: TMenuItem
      Caption = 'Contrato'
      OnClick = TPContrato1Click
    end
    object PedidoCarncomcdigodebarras1: TMenuItem
      Caption = 'Pedido + Carn'#234' com c'#243'digo de barras'
      OnClick = PedidoCarncomcdigodebarras1Click
    end
    object RazoLaser21: TMenuItem
      Caption = 'Raz'#227'o - Laser 2'
      OnClick = RazoLaser21Click
    end
  end
  object fxvenda: TfrxReport
    Version = '5.4.6'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 39188.758111979200000000
    ReportOptions.LastChange = 43477.588631863430000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      ''
      'procedure npaginaOnAfterData(Sender: TfrxComponent);'
      'begin'
      '  if COPY(npagina.text,1,1) <> '#39'1'#39' then'
      '  begin'
      '    pagefooter1.printonfirstpage := false;'
      '   // NCONTINUA.VISIBLE := TRUE;'
      '  end'
      '  else'
      '  begin'
      '    pagefooter1.printonfirstpage := true;'
      '  //  NCONTINUA.VISIBLE := FALSE;'
      '  end;'
      'end;'
      ''
      'BEGIN'
      'END.')
    Left = 8
    Top = 104
    Datasets = <
      item
        DataSet = FSCLIENTE
        DataSetName = 'FSCLIENTE'
      end
      item
        DataSet = fscontasreceber
        DataSetName = 'fscontasreceber'
      end
      item
        DataSet = fsvenda
        DataSetName = 'fsvenda'
      end
      item
        DataSet = frxDBDataset1
        DataSetName = 'fsvenda_produto'
      end
      item
        DataSet = frmmodulo.fxemitente
        DataSetName = 'fxemitente'
      end
      item
        DataSet = frmmodulo.fxrelatorio
        DataSetName = 'fxrelatorio'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page2: TfrxReportPage
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -13
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      PaperWidth = 210.000000000000000000
      PaperHeight = 148.500000000000000000
      PaperSize = 256
      LeftMargin = 7.800000000000000000
      RightMargin = 8.200000000000000000
      TopMargin = 5.000000000000000000
      BottomMargin = 5.000000000000000000
      Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
      Frame.Width = 0.500000000000000000
      OnAfterPrint = 'Page2OnAfterPrint'
      object PageHeader1: TfrxPageHeader
        FillType = ftBrush
        Height = 166.299320000000000000
        Top = 18.897650000000000000
        Width = 733.228820000000000000
        object Shape11: TfrxShapeView
          Top = 146.929190000000000000
          Width = 733.228820000000000000
          Height = 15.118120000000000000
          Frame.Width = 0.500000000000000000
        end
        object Memo34: TfrxMemoView
          Left = 5.559060000000000000
          Top = 148.708720000000000000
          Width = 41.574830000000000000
          Height = 11.338590000000000000
          DataSet = frxDBDataset1
          DataSetName = 'fsvenda_produto'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'C'#211'DIGO')
          ParentFont = False
        end
        object Memo35: TfrxMemoView
          Left = 64.252010000000000000
          Top = 148.708720000000000000
          Width = 336.378170000000000000
          Height = 11.338590000000000000
          DataSet = frxDBDataset1
          DataSetName = 'fsvenda_produto'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'PRODUTO')
          ParentFont = False
        end
        object Memo36: TfrxMemoView
          Left = 404.409710000000000000
          Top = 148.708720000000000000
          Width = 52.913420000000000000
          Height = 11.338590000000000000
          DataSet = frxDBDataset1
          DataSetName = 'fsvenda_produto'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'UNID.')
          ParentFont = False
        end
        object Memo37: TfrxMemoView
          Left = 464.882190000000000000
          Top = 148.708720000000000000
          Width = 83.149660000000000000
          Height = 11.338590000000000000
          DataSet = frxDBDataset1
          DataSetName = 'fsvenda_produto'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'QTDE.')
          ParentFont = False
        end
        object Memo38: TfrxMemoView
          Left = 551.811380000000000000
          Top = 148.708720000000000000
          Width = 83.149660000000000000
          Height = 11.338590000000000000
          DataSet = frxDBDataset1
          DataSetName = 'fsvenda_produto'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'PRE'#199'O-R$')
          ParentFont = False
        end
        object Memo39: TfrxMemoView
          Left = 638.740570000000000000
          Top = 148.708720000000000000
          Width = 83.149660000000000000
          Height = 11.338590000000000000
          DataSet = frxDBDataset1
          DataSetName = 'fsvenda_produto'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'TOTAL-R$')
          ParentFont = False
        end
        object Line14: TfrxLineView
          Left = 53.913420000000000000
          Top = 163.070922280000000000
          Height = 336.377879530000000000
          Color = clBlack
          Frame.Width = 0.500000000000000000
          Diagonal = True
        end
        object Line15: TfrxLineView
          Left = 408.189240000000000000
          Top = 163.968572280000000000
          Height = 336.377874650000000000
          Color = clBlack
          Frame.Width = 0.500000000000000000
          Diagonal = True
        end
        object Line16: TfrxLineView
          Left = 449.764070000000000000
          Top = 163.748102280000000000
          Height = 336.377879530000000000
          Color = clBlack
          Frame.Width = 0.500000000000000000
          Diagonal = True
        end
        object Line17: TfrxLineView
          Left = 551.811380000000000000
          Top = 164.189042280000000000
          Height = 336.377879530000000000
          Color = clBlack
          Frame.Width = 0.500000000000000000
          Diagonal = True
        end
        object Line18: TfrxLineView
          Left = 642.520100000000000000
          Top = 162.968572280000000000
          Height = 336.377879530000000000
          Color = clBlack
          Frame.Width = 0.500000000000000000
          Diagonal = True
        end
        object npagina: TfrxMemoView
          Left = 483.779840000000000000
          Top = 3.779530000000000000
          Width = 3.779530000000000000
          Height = 11.338590000000000000
          Visible = False
          OnAfterData = 'npaginaOnAfterData'
          DataField = 'LINHA9'
          DataSet = frmmodulo.fxrelatorio
          DataSetName = 'fxrelatorio'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[fxrelatorio."LINHA9"]')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          Left = 1.133858270000000000
          Top = 84.118120000000000000
          Width = 94.488250000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -7
          Font.Name = 'Tahoma'
          Font.Style = []
          Memo.UTF8W = (
            'Cliente')
          ParentFont = False
        end
        object Line4: TfrxLineView
          Top = 110.795300000000000000
          Width = 733.228820000000000000
          Color = clBlack
          Frame.Width = 0.500000000000000000
          Diagonal = True
        end
        object Memo87: TfrxMemoView
          Left = 0.755905510000000000
          Top = 92.677180000000000000
          Width = 442.205010000000000000
          Height = 18.897650000000000000
          DataSet = FSCLIENTE
          DataSetName = 'FSCLIENTE'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[FSCLIENTE."CODIGO"]  [FSCLIENTE."NOME"]')
          ParentFont = False
        end
        object Line6: TfrxLineView
          Left = 449.764070000000000000
          Top = 107.795300000000000000
          Height = -22.677180000000000000
          Color = clBlack
          Frame.Width = 0.500000000000000000
          Diagonal = True
        end
        object Memo5: TfrxMemoView
          Left = 453.543600000000000000
          Top = 84.118120000000000000
          Width = 90.708720000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -7
          Font.Name = 'Tahoma'
          Font.Style = []
          Memo.UTF8W = (
            'CPF/CNPJ')
          ParentFont = False
        end
        object Line7: TfrxLineView
          Left = 566.929500000000000000
          Top = 107.795300000000000000
          Height = -22.677180000000000000
          Color = clBlack
          Frame.Width = 0.500000000000000000
          Diagonal = True
        end
        object Memo6: TfrxMemoView
          Left = 570.709030000000000000
          Top = 84.118120000000000000
          Width = 86.929190000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -7
          Font.Name = 'Tahoma'
          Font.Style = []
          Memo.UTF8W = (
            'Identidade / Insc.Estadual')
          ParentFont = False
        end
        object Line19: TfrxLineView
          Left = 661.417750000000000000
          Top = 107.795300000000000000
          Height = -22.677180000000000000
          Color = clBlack
          Frame.Width = 0.500000000000000000
          Diagonal = True
        end
        object Memo7: TfrxMemoView
          Left = 665.197280000000000000
          Top = 84.118120000000000000
          Width = 71.811070000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -7
          Font.Name = 'Tahoma'
          Font.Style = []
          Memo.UTF8W = (
            'Data da Compra')
          ParentFont = False
        end
        object Memo93: TfrxMemoView
          Left = 664.197280000000000000
          Top = 92.677180000000000000
          Width = 64.252010000000000000
          Height = 15.118120000000000000
          DataField = 'DATA'
          DataSet = fsvenda
          DataSetName = 'fsvenda'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[fsvenda."DATA"]')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          Left = 452.543600000000000000
          Top = 93.456710000000000000
          Width = 109.606370000000000000
          Height = 15.118120000000000000
          DataSet = FSCLIENTE
          DataSetName = 'FSCLIENTE'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[FSCLIENTE."CPF"]')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          Left = 549.811380000000000000
          Top = 116.354360000000000000
          Width = 109.606370000000000000
          Height = 15.118120000000000000
          DataField = 'RG'
          DataSet = FSCLIENTE
          DataSetName = 'FSCLIENTE'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[FSCLIENTE."RG"]')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          Left = 1.133858270000000000
          Top = 111.795300000000000000
          Width = 34.015770000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -7
          Font.Name = 'Tahoma'
          Font.Style = []
          Memo.UTF8W = (
            'Endere'#231'o:')
          ParentFont = False
        end
        object Line20: TfrxLineView
          Left = 245.669450000000000000
          Top = 145.811070000000000000
          Height = -34.015770000000000000
          Color = clBlack
          Frame.Width = 0.500000000000000000
          Diagonal = True
        end
        object Memo11: TfrxMemoView
          Left = 2.779530000000000000
          Top = 119.354360000000000000
          Width = 234.330860000000000000
          Height = 15.118120000000000000
          DataField = 'ENDERECO'
          DataSet = FSCLIENTE
          DataSetName = 'FSCLIENTE'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[FSCLIENTE."ENDERECO"]')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          Left = 3.000000000000000000
          Top = 127.692950000000000000
          Width = 234.330860000000000000
          Height = 15.118120000000000000
          DataField = 'BAIRRO'
          DataSet = FSCLIENTE
          DataSetName = 'FSCLIENTE'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[FSCLIENTE."BAIRRO"]')
          ParentFont = False
        end
        object Memo13: TfrxMemoView
          Left = 249.448980000000000000
          Top = 111.795300000000000000
          Width = 34.015770000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -7
          Font.Name = 'Tahoma'
          Font.Style = []
          Memo.UTF8W = (
            'Cidade/UF')
          ParentFont = False
        end
        object Line21: TfrxLineView
          Left = 355.275820000000000000
          Top = 145.811070000000000000
          Height = -34.015770000000000000
          Color = clBlack
          Frame.Width = 0.500000000000000000
          Diagonal = True
        end
        object Memo14: TfrxMemoView
          Left = 245.669450000000000000
          Top = 123.133890000000000000
          Width = 105.826840000000000000
          Height = 22.677180000000000000
          DataSet = FSCLIENTE
          DataSetName = 'FSCLIENTE'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[FSCLIENTE."CIDADE"] / [FSCLIENTE."UF"]')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          Left = 359.055350000000000000
          Top = 111.795300000000000000
          Width = 45.354360000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -7
          Font.Name = 'Tahoma'
          Font.Style = []
          Memo.UTF8W = (
            'Complemento')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          Left = 358.055350000000000000
          Top = 122.354360000000000000
          Width = 139.842610000000000000
          Height = 18.897650000000000000
          DataField = 'COMPLEMENTO'
          DataSet = FSCLIENTE
          DataSetName = 'FSCLIENTE'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[FSCLIENTE."COMPLEMENTO"]')
          ParentFont = False
        end
        object Line22: TfrxLineView
          Left = 502.677490000000000000
          Top = 145.811070000000000000
          Height = -34.015770000000000000
          Color = clBlack
          Frame.Width = 0.500000000000000000
          Diagonal = True
        end
        object Memo17: TfrxMemoView
          Left = 507.457020000000000000
          Top = 111.795300000000000000
          Width = 45.354360000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -7
          Font.Name = 'Tahoma'
          Font.Style = []
          Memo.UTF8W = (
            'Telefones')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          Left = 506.457020000000000000
          Top = 120.354360000000000000
          Width = 113.385900000000000000
          Height = 22.677180000000000000
          DataSet = FSCLIENTE
          DataSetName = 'FSCLIENTE'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            
              '[FSCLIENTE."TELEFONE1"]  [FSCLIENTE."TELEFONE2"]  [FSCLIENTE."CE' +
              'LULAR"]')
          ParentFont = False
        end
        object Line23: TfrxLineView
          Left = 623.622450000000000000
          Top = 145.811070000000000000
          Height = -34.015770000000000000
          Color = clBlack
          Frame.Width = 0.500000000000000000
          Diagonal = True
        end
        object Memo19: TfrxMemoView
          Left = 625.401980000000000000
          Top = 113.795300000000000000
          Width = 26.456710000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -7
          Font.Name = 'Tahoma'
          Font.Style = []
          Memo.UTF8W = (
            'Caixa:')
          ParentFont = False
        end
        object Line24: TfrxLineView
          Left = 623.622450000000000000
          Top = 125.913420000000000000
          Width = 109.606370000000000000
          Color = clBlack
          Frame.Width = 0.500000000000000000
          Diagonal = True
        end
        object Memo100: TfrxMemoView
          Left = 659.638220000000000000
          Top = 113.795300000000000000
          Width = 71.811070000000000000
          Height = 15.118120000000000000
          DataField = 'CODCAIXA'
          DataSet = fsvenda
          DataSetName = 'fsvenda'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[fsvenda."CODCAIXA"]')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          Left = 625.401980000000000000
          Top = 127.133890000000000000
          Width = 34.015770000000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -7
          Font.Name = 'Tahoma'
          Font.Style = []
          Memo.UTF8W = (
            'Vendedor:')
          ParentFont = False
        end
        object Memo96: TfrxMemoView
          Left = 660.417750000000000000
          Top = 127.133890000000000000
          Width = 68.031540000000000000
          Height = 15.118120000000000000
          DataField = 'vendedor'
          DataSet = fsvenda
          DataSetName = 'fsvenda'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          Memo.UTF8W = (
            '[fsvenda."vendedor"]')
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          Left = 159.385900000000000000
          Top = 4.000000000000000000
          Width = 374.173470000000000000
          Height = 18.897640240000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'Courier New'
          Font.Style = [fsBold]
          Fill.BackColor = 14211288
          HAlign = haCenter
          Memo.UTF8W = (
            '[fxemitente."FANTASIA"]')
          ParentFont = False
          Formats = <
            item
            end
            item
            end>
        end
        object Memo1: TfrxMemoView
          Left = 136.063080000000000000
          Top = 42.795300000000000000
          Width = 438.425480000000000000
          Height = 37.795300000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Tahoma'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'ENDERE'#199'O:  [<fxemitente."ENDERECO">]     '
            
              'BAIRRO:  [<fxemitente."BAIRRO">]    CIDADE:  [<fxemitente."CIDAD' +
              'E">]    UF:  [<fxemitente."UF">] '
            'TELEFONE:  [<fxemitente."TELEFONE">]')
          ParentFont = False
          Formats = <
            item
            end
            item
            end
            item
            end
            item
            end
            item
            end
            item
            end
            item
            end>
        end
        object Memo22: TfrxMemoView
          Left = 113.385900000000000000
          Top = 24.236240000000000000
          Width = 461.102660000000000000
          Height = 15.118120000000000000
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'CNPJ:[<fxemitente."CNPJ">]')
          ParentFont = False
        end
        object Line1: TfrxLineView
          Left = 1.220470000000000000
          Top = 84.149660000000000000
          Width = 733.228820000000000000
          Color = clBlack
          Frame.Width = 0.500000000000000000
          Diagonal = True
        end
        object imgLogomarca: TfrxPictureView
          Left = 16.440940000000000000
          Top = 3.779530000000000000
          Width = 83.149660000000000000
          Height = 75.590600000000000000
          Picture.Data = {
            0A544A504547496D6167655D540000FFD8FFE10E164578696600004D4D002A00
            0000080007011200030000000100010000011A00050000000100000062011B00
            05000000010000006A012800030000000100020000013100020000001E000000
            720132000200000014000000908769000400000001000000A4000000D0000EA6
            0000002710000EA6000000271041646F62652050686F746F73686F7020435336
            202857696E646F77732900323031393A30313A31322031333A34323A31360000
            03A001000300000001FFFF0000A002000400000001000000A0A0030004000000
            010000009E0000000000000006010300030000000100060000011A0005000000
            010000011E011B00050000000100000126012800030000000100020000020100
            04000000010000012E020200040000000100000CE00000000000000048000000
            010000004800000001FFD8FFED000C41646F62655F434D0002FFEE000E41646F
            626500648000000001FFDB0084000C08080809080C09090C110B0A0B11150F0C
            0C0F1518131315131318110C0C0C0C0C0C110C0C0C0C0C0C0C0C0C0C0C0C0C0C
            0C0C0C0C0C0C0C0C0C0C0C0C0C0C010D0B0B0D0E0D100E0E10140E0E0E14140E
            0E0E0E14110C0C0C0C0C11110C0C0C0C0C0C110C0C0C0C0C0C0C0C0C0C0C0C0C
            0C0C0C0C0C0C0C0C0C0C0C0C0C0C0CFFC0001108009E00A00301220002110103
            1101FFDD0004000AFFC4013F0000010501010101010100000000000000030001
            020405060708090A0B0100010501010101010100000000000000010002030405
            060708090A0B1000010401030204020507060805030C33010002110304211231
            054151611322718132061491A1B14223241552C16233347282D14307259253F0
            E1F163733516A2B283264493546445C2A3743617D255E265F2B384C3D375E3F3
            462794A485B495C4D4E4F4A5B5C5D5E5F55666768696A6B6C6D6E6F637475767
            778797A7B7C7D7E7F71100020201020404030405060707060535010002110321
            3112044151617122130532819114A1B14223C152D1F0332462E1728292435315
            637334F1250616A2B283072635C2D2449354A317644555367465E2F2B384C3D3
            75E3F34694A485B495C4D4E4F4A5B5C5D5E5F55666768696A6B6C6D6E6F62737
            475767778797A7B7C7FFDA000C03010002110311003F00F55492492529249249
            4A4CE735AD2E710D68D493A001733F59FEBEF48E81BB1C1FB567469457C3678F
            5ACFA2DFEA7F38BCABAF7D70EB9D79C465DDB68265B8D5FB6B11FC9F739DFDA7
            24A7D4BAC7F8C8FAB5D309632D39B6EA36E3C3803FCAB1CE6B7FCCDEB90EA1FE
            377AB5C1CDC1C5AF1476B09F51DFF487A6B8149253D0657D7DFAD994DDB6F507
            B47FC186D7FF009E5AC59F67D61EBB6087F50C933FF0AFFF00C92CF49253A0CF
            AC3D759F47A8648FFAEBFF00F24AFE2FD7CFAD98ADDB5750B08FF840DB3FF3F3
            5EB012494F7BD3BFC6EF57A5AD6676357971CD80FA6E3FE60F4FFE82EBFA3FF8
            C9FAB7D4C865963B06DFDDC886B49FE458D73BFE9EC5E26924A7E966B9AF6873
            08734EA08D4109D781741FADDD6FA0BC7D8AE9A265D8F60DD5BBFB3F49BFD872
            F55FAB1F5FFA475EDB8EF3F64CE8D697FD171EFE959F47FB1F4D253D42492492
            94924924A7FFD0F5549249252979C7D7BFF18829F53A4F44B26DD5B9196D3F47
            B1AE823F3FFE17F3117FC637D78761B5FD0FA63E321ED8CABDA7E803A7A2CFF8
            477F84FDC5E5449264F279494BBDEE7B8BDE4B9C7524EA5324924A5249249294
            924924A5249249294924924A5276B9CC7073496B86A08E42649253E9DF513FC6
            21B0D7D27ADD9EEFA38F98F3CFEED7713FF9F57A42F9A418D468BD4BFC5CFD78
            3922BE87D51F37011897B8FD203FC03FF97FE8D253E8A924924A7FFFD1F555CF
            7D76FACADFABFD1DF756E1F6CBCFA78CD3AFB8FD2B0FF519FF004D741C6A5785
            FD7AEBFF00B73AF5B6D6E9C5C7FD1630FE4B7E93BFB766F494E05B6D9758EB6D
            717D8F25CF7BB5249FA4E2A09249294924BA3FA818F464FD66C7AB22B6DD596B
            A58F01CDE3F75C929E7125F433FA07430C7474FC6D01FF0004CFFC8AF02EA4D6
            B73EF6B406B43C80068024A6B249249294924924A5249249294924924A529556
            D94D8DB6A71658C21CC7374208D5AE0A2924A7DD3EA37D666FD60E8ED7DAE073
            71FF00479206927F32C1FD767FD35D1AF07FA91D7DDD0FAED37B9D18D77E8B24
            7F21C7E97F61C17BBF3A8494FF00FFD2EDBEBCF571D27EAD655C1C5B6DCD3452
            46843EC0ED7FB2D0E5E0E4C993DD7A5FF8E1EA06703A735DED3BEEB1BE7ED654
            7FF3EAF34494A49249252974FF00E2E3FF001558FF00D57FE45CC2E9FF00C5C7
            FE2AB1FF00AAFF00C8929F6EB3F9B77C0FE45F3A754FF94723FAE57D1767F36E
            F81FC8BE74EA9FF28E47F5CA4A6AA49249294924924A5249249294924924A524
            9249295E6BDD7EA17583D5BEADE3D8F25D763FEAF713C973037DDFDA6398BC29
            7A3FF89EEA0464E774E73BDAF636EADBFCA07659FF0044B5253FFFD3C9FF0019
            D90EBBEB6E4D64CB68656C6794B18F77FD272E4D741F5F6D16FD6CEA0E1DACD9
            AFF200AFFEFAB9F494A49249252974FF00E2E3FF001558FF00D57FE45CC2E9FF
            00C5C7FE2AB1FF00AAFF00C8929F6EB3F9B77C0FE45F3A754FF94723FAE57D17
            67F36EF81FC8BE74EA9FF28E47F5CA4A6AAB7D2BA665755CDAF07136FAD71DAC
            DE607F9CAA2E8BEA07FE2A70BFAE12537FFF001A9FAD7E18FF00F6EFFE6097FE
            353F5AFC31FF00EDDFFCC17B3211C9C7060DAC0472370494F8F7FE353F5AFC31
            FF00EDDFFCC12FFC6A7EB5F863FF00DBBFF982F61FB5637FA667F9C3FBD2FB56
            37FA667F9C3FBD253F3FF5DFABFD43A0E58C4CFD9EA96870F4DDB841F386ACD5
            DAFF008D6B19675F61638387A4DD5A67F22E2925292492494A5D4FF8B3C8755F
            5BB11A0C36D6D8C70F1FD1BDCDFF00A4B965B9F522D755F5ABA739A609B837E4
            EF61FF00A2E494FF00FFD4E7FF00C60D62BFADDD41A0402E6BBFCE6B5FFF007E
            5CEAEC3FC69E21A7EB4BEF3C64D75BC7F65ADABFEF8B8F494A49249252974FFE
            2E3FF1558FFD57FE45CC2DAFAA1D5B13A3F5CA73B3377A3587076C1B8EA3F764
            24A7DF080410783A2E3AFF00F159F56EFB9F73DF91B9E64C3DB127FB097FE3AD
            F557C723FEDA1FF934BFF1D6FAA9FF00763FEDA1FF0093494C3FF1A5FAB3FE93
            27FCF6FF00E9356FA4FF008BAE83D273EACFC57DE6EA4CB43DE08F9FB02AFF00
            F8EB7D54FF00BB1FF6D0FF00C9AB7D2BFC61FD5EEAB9D5E0E27ADEB5C76B77D7
            03EFDC929E96CFE6DDF03F917CF5D79CEFDB59DA9FE7DFFF005457D0C402083C
            1D172F93FE2DFEAAE564599175169B2D717BC8B5C353A9D024A7C4B73BC4FDE9
            6E7789FBD7B3BFFC57FD510D24516C804FF3AFFEF5E3D9D5329CBBAAAF4631C5
            AD07C024A40493CEA924924A5249249294B7FEA1D3EB7D6CE9CC988B377F981D
            67FDF5602EBFFC56E1BAFF00AD555E3E8E2D763DDFDA6BA91FF4AC494FFFD5D0
            FF001C1D38BF0F07A9378A5EEA5FFF005C01ECFF00CF4F5E5ABE83FACDD24758
            E87978100D96564D24F6B009ACFF009CBE7EB18EADEE63C439A4820F88494C52
            492494A4924925292492494A5D17D40FFC54E17F5C2E75745F503FF15385FD70
            929F7471DAD27C04AE2333FC6B747C4CBBB15F897B9D4BCB1C46D825A63F7976
            D67F36EF81FC8BE79EBFFF002D677FC7BFFEA9253E92EFF1BDD14B48FB1E46A0
            8FCCFF00C92F2DCCB9B7E55B734102C7170079D5052494A4924925292492494A
            5EA3FE27FA69662E6F537716B9B8ECFEC0F51FFF009F18BCBDAD73DC1AD125C6
            000BE81FAB1D23F63743C4C0207A95B01B88EF63BDD624A7FFD6F555E39FE33B
            EAF3BA77583D4A9646267FBA40D1B681FA467F6B6FA8BD8D66FD60E898FD73A5
            5DD3AFF6FA826BB3BB5E356BDA929F9E9256FAA74CCBE959F6E0E5B765D4B8B4
            F811D9CDFE4B954494A4924925292492494A5D17D40FFC54E17F5C2E7558C1CE
            CAE9F92CCAC3B0D57D6658F1120FCD253F4659FCDBBE07F22F9EBAFF00FCB59D
            FF001EFF00CAB44FD7EFADA4107A8BE0E87DADFF00C82C2BEEB322E7DF6BB7D9
            638B9EEF127929298249249294924924A52492B5D33A6E5754CEA70711BBEEBD
            C1ADF013F9CEFE4B5253D3FF008B4FABAEEA9D64675CD9C4C03BDC4890EB3FC1
            D5FF00A317B32CCFAB9D0F1FA1749A7A7D3EE2C1BADB220BDE75738FFD437F90
            B4D253FFD7F5549249253CBFD78FA9B4FD62C3F5A8019D4E86FE86CE378FA5E8
            D9FF00A2FF007178A64E35F8B7BF1F2186BBAA25AF63841042FA4D72FF005CBE
            A3E1FD61A0DF4EDA3A9560FA76F01FFF00077C7FE7CFCC494F8824ADF54E959F
            D272DD899F4BA9B9BAC3B823F7D87F39AAA24A5249249294924924A524924929
            4924924A52492B5D37A5E7F55CA6E26052EBEE77E6B7B0FDE77EEB52521C7C7B
            F26F6518EC75B6D84358C6824927E0BDA7EA37D4CA7EAF620C8C901FD4EF68F5
            5FA7E8DA7FC0D7FF00A31C97D4CFA8D89F57AA19391B6FEA6F1EFB796B27F329
            9FFCF8BAA494A49249253FFFD0F554924925292492494D1EADD13A6758C7FB3F
            50A1B733F349D1CD3FBCC78F735799FD60FF00155D4B10BAFE8EFF00B6D1C8A5
            C40B47FD456FFECAF5A49253F36E462E4E2D86AC8A9F558D30E6BC16907FB484
            BE80FAC1FF00363D11FB7FECBB20ECFB46DDDE7E96EFD27FDB6BCE7A974EFF00
            15B7EE385D5ACC4B09D3F457DB58F833D16FFE7D494F0A92DBC9E8DF57582717
            EB0557793F1B26B3FF009EAD542CC1C36FD0EA143FE0CBC7FD563A4A69A4AE57
            8386EFA5D42867C5979FFA9C757F1BA37D5E789C9FAC14D3E4CC6C9B0FFE7AA9
            25388894636464D82BC7ADD6BDC603580933FD95DB74DE9DFE2B690DFB6F56B3
            2ED1CFE8AFAAB3FD9F45CEFF00C157A2FD5EFF009ADE91FF009BFF0065DB037F
            D9F6EF8EDEAC7E97FEDC494F9DFD5EFF00155D4F30B6EEB0EFB0D13AD421D6B8
            7CB7D75FF6D7A6F48E87D2FA3638C7E9F43696FE73B9738FEF3DE55F49252924
            92494A49249253FFD9FFED163650686F746F73686F7020332E30003842494D04
            25000000000010000000000000000000000000000000003842494D043A000000
            0000F9000000100000000100000000000B7072696E744F757470757400000005
            0000000050737453626F6F6C0100000000496E7465656E756D00000000496E74
            6500000000436C726D0000000F7072696E745369787465656E426974626F6F6C
            000000000B7072696E7465724E616D65544558540000000100000000000F7072
            696E7450726F6F6653657475704F626A63000000160043006F006E0066006900
            6700750072006100E700E3006F002000640065002000500072006F0076006100
            000000000A70726F6F6653657475700000000100000000426C746E656E756D00
            00000C6275696C74696E50726F6F660000000970726F6F66434D594B00384249
            4D043B00000000022D00000010000000010000000000127072696E744F757470
            75744F7074696F6E7300000017000000004370746E626F6F6C0000000000436C
            6272626F6F6C00000000005267734D626F6F6C000000000043726E43626F6F6C
            0000000000436E7443626F6F6C00000000004C626C73626F6F6C00000000004E
            677476626F6F6C0000000000456D6C44626F6F6C0000000000496E7472626F6F
            6C000000000042636B674F626A63000000010000000000005247424300000003
            0000000052642020646F7562406FE000000000000000000047726E20646F7562
            406FE0000000000000000000426C2020646F7562406FE0000000000000000000
            42726454556E744623526C74000000000000000000000000426C6420556E7446
            23526C7400000000000000000000000052736C74556E74462350786C40580000
            000000000000000A766563746F7244617461626F6F6C01000000005067507365
            6E756D00000000506750730000000050675043000000004C656674556E744623
            526C74000000000000000000000000546F7020556E744623526C740000000000
            0000000000000053636C20556E74462350726340590000000000000000001063
            726F705768656E5072696E74696E67626F6F6C000000000E63726F7052656374
            426F74746F6D6C6F6E67000000000000000C63726F70526563744C6566746C6F
            6E67000000000000000D63726F705265637452696768746C6F6E670000000000
            00000B63726F7052656374546F706C6F6E6700000000003842494D03ED000000
            000010006000000001000200600000000100023842494D042600000000000E00
            0000000000000000003F8000003842494D040D00000000000400000078384249
            4D04190000000000040000001E3842494D03F300000000000900000000000000
            0001003842494D271000000000000A000100000000000000023842494D03F500
            0000000048002F66660001006C66660006000000000001002F6666000100A199
            9A0006000000000001003200000001005A000000060000000000010035000000
            01002D000000060000000000013842494D03F80000000000700000FFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF03E800000000FFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFFFFFFFFFF03E800000000FFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFFFFFF03E800000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFF03E800003842494D040000000000000200013842494D0402000000
            000004000000003842494D043000000000000201013842494D042D0000000000
            060001000000023842494D040800000000001000000001000002400000024000
            0000003842494D041E000000000004000000003842494D041A00000000034D00
            00000600000000000000000000009E000000A00000000C00530065006D002000
            5400ED00740075006C006F002D00310000000100000000000000000000000000
            000000000000010000000000000000000000A00000009E000000000000000000
            0000000000000001000000000000000000000000000000000000001000000001
            0000000000006E756C6C0000000200000006626F756E64734F626A6300000001
            000000000000526374310000000400000000546F70206C6F6E67000000000000
            00004C6566746C6F6E67000000000000000042746F6D6C6F6E670000009E0000
            0000526768746C6F6E67000000A000000006736C69636573566C4C7300000001
            4F626A6300000001000000000005736C6963650000001200000007736C696365
            49446C6F6E67000000000000000767726F757049446C6F6E6700000000000000
            066F726967696E656E756D0000000C45536C6963654F726967696E0000000D61
            75746F47656E6572617465640000000054797065656E756D0000000A45536C69
            63655479706500000000496D672000000006626F756E64734F626A6300000001
            000000000000526374310000000400000000546F70206C6F6E67000000000000
            00004C6566746C6F6E67000000000000000042746F6D6C6F6E670000009E0000
            0000526768746C6F6E67000000A00000000375726C5445585400000001000000
            0000006E756C6C54455854000000010000000000004D73676554455854000000
            01000000000006616C74546167544558540000000100000000000E63656C6C54
            657874497348544D4C626F6F6C010000000863656C6C54657874544558540000
            0001000000000009686F727A416C69676E656E756D0000000F45536C69636548
            6F727A416C69676E0000000764656661756C740000000976657274416C69676E
            656E756D0000000F45536C69636556657274416C69676E000000076465666175
            6C740000000B6267436F6C6F7254797065656E756D0000001145536C69636542
            47436F6C6F7254797065000000004E6F6E6500000009746F704F75747365746C
            6F6E67000000000000000A6C6566744F75747365746C6F6E6700000000000000
            0C626F74746F6D4F75747365746C6F6E67000000000000000B72696768744F75
            747365746C6F6E6700000000003842494D042800000000000C000000023FF000
            00000000003842494D041100000000000101003842494D041400000000000400
            0000023842494D040C000000000CFC00000001000000A00000009E000001E000
            01284000000CE000180001FFD8FFED000C41646F62655F434D0002FFEE000E41
            646F626500648000000001FFDB0084000C08080809080C09090C110B0A0B1115
            0F0C0C0F1518131315131318110C0C0C0C0C0C110C0C0C0C0C0C0C0C0C0C0C0C
            0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C010D0B0B0D0E0D100E0E10140E0E0E14
            140E0E0E0E14110C0C0C0C0C11110C0C0C0C0C0C110C0C0C0C0C0C0C0C0C0C0C
            0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0CFFC0001108009E00A0030122000211
            01031101FFDD0004000AFFC4013F000001050101010101010000000000000003
            0001020405060708090A0B010001050101010101010000000000000001000203
            0405060708090A0B1000010401030204020507060805030C3301000211030421
            1231054151611322718132061491A1B14223241552C16233347282D143072592
            53F0E1F163733516A2B283264493546445C2A3743617D255E265F2B384C3D375
            E3F3462794A485B495C4D4E4F4A5B5C5D5E5F55666768696A6B6C6D6E6F63747
            5767778797A7B7C7D7E7F7110002020102040403040506070706053501000211
            03213112044151617122130532819114A1B14223C152D1F0332462E172829243
            5315637334F1250616A2B283072635C2D2449354A317644555367465E2F2B384
            C3D375E3F34694A485B495C4D4E4F4A5B5C5D5E5F55666768696A6B6C6D6E6F6
            2737475767778797A7B7C7FFDA000C03010002110311003F00F5549249252924
            92494A4CE735AD2E710D68D493A001733F59FEBEF48E81BB1C1FB567469457C3
            678F5ACFA2DFEA7F38BCABAF7D70EB9D79C465DDB68265B8D5FB6B11FC9F739D
            FDA724A7D4BAC7F8C8FAB5D309632D39B6EA36E3C3803FCAB1CE6B7FCCDEB90E
            A1FE377AB5C1CDC1C5AF1476B09F51DFF487A6B8149253D0657D7DFAD994DDB6
            F507B47FC186D7FF009E5AC59F67D61EBB6087F50C933FF0AFFF00C92CF49253
            A0CFAC3D759F47A8648FFAEBFF00F24AFE2FD7CFAD98ADDB5750B08FF840DB3F
            F3F35EB012494F7BD3BFC6EF57A5AD6676357971CD80FA6E3FE60F4FFE82EBFA
            3FF8C9FAB7D4C865963B06DFDDC886B49FE458D73BFE9EC5E26924A7E966B9AF
            687308734EA08D4109D781741FADDD6FA0BC7D8AE9A265D8F60DD5BBFB3F49BF
            D872F55FAB1F5FFA475EDB8EF3F64CE8D697FD171EFE959F47FB1F4D253D4249
            249294924924A7FFD0F5549249252979C7D7BFF18829F53A4F44B26DD5B9196D
            3F47B1AE823F3FFE17F3117FC637D78761B5FD0FA63E321ED8CABDA7E803A7A2
            CFF8477F84FDC5E5449264F279494BBDEE7B8BDE4B9C7524EA5324924A524924
            9294924924A5249249294924924A5276B9CC7073496B86A08E42649253E9DF51
            3FC621B0D7D27ADD9EEFA38F98F3CFEED7713FF9F57A42F9A418D468BD4BFC5C
            FD783922BE87D51F37011897B8FD203FC03FF97FE8D253E8A924924A7FFFD1F5
            55CF7D76FACADFABFD1DF756E1F6CBCFA78CD3AFB8FD2B0FF519FF004D741C6A
            5785FD7AEBFF00B73AF5B6D6E9C5C7FD1630FE4B7E93BFB766F494E05B6D9758
            EB6D717D8F25CF7BB5249FA4E2A09249294924BA3FA818F464FD66C7AB22B6DD
            596BA58F01CDE3F75C929E7125F433FA07430C7474FC6D01FF0004CFFC8AF02E
            A4D6B73EF6B406B43C80068024A6B249249294924924A5249249294924924A52
            9556D94D8DB6A71658C21CC7374208D5AE0A2924A7DD3EA37D666FD60E8ED7DA
            E07371FF00479206927F32C1FD767FD35D1AF07FA91D7DDD0FAED37B9D18D77E
            8B247F21C7E97F61C17BBF3A8494FF00FFD2EDBEBCF571D27EAD655C1C5B6DCD
            345246843EC0ED7FB2D0E5E0E4C993DD7A5FF8E1EA06703A735DED3BEEB1BE7E
            D6547FF3EAF34494A49249252974FF00E2E3FF001558FF00D57FE45CC2E9FF00
            C5C7FE2AB1FF00AAFF00C8929F6EB3F9B77C0FE45F3A754FF94723FAE57D1767
            F36EF81FC8BE74EA9FF28E47F5CA4A6AA49249294924924A5249249294924924
            A5249249295E6BDD7EA17583D5BEADE3D8F25D763FEAF713C973037DDFDA6398
            BC297A3FF89EEA0464E774E73BDAF636EADBFCA07659FF0044B5253FFFD3C9FF
            0019D90EBBEB6E4D64CB68656C6794B18F77FD272E4D741F5F6D16FD6CEA0E1D
            ACD9AFF200AFFEFAB9F494A49249252974FF00E2E3FF001558FF00D57FE45CC2
            E9FF00C5C7FE2AB1FF00AAFF00C8929F6EB3F9B77C0FE45F3A754FF94723FAE5
            7D1767F36EF81FC8BE74EA9FF28E47F5CA4A6AAB7D2BA665755CDAF07136FAD7
            1DACDE607F9CAA2E8BEA07FE2A70BFAE12537FFF001A9FAD7E18FF00F6EFFE60
            97FE353F5AFC31FF00EDDFFCC17B3211C9C7060DAC0472370494F8F7FE353F5A
            FC31FF00EDDFFCC12FFC6A7EB5F863FF00DBBFF982F61FB5637FA667F9C3FBD2
            FB5637FA667F9C3FBD253F3FF5DFABFD43A0E58C4CFD9EA96870F4DDB841F386
            ACD5DAFF008D6B19675F61638387A4DD5A67F22E2925292492494A5D4FF8B3C8
            755F5BB11A0C36D6D8C70F1FD1BDCDFF00A4B965B9F522D755F5ABA739A609B8
            37E4EF61FF00A2E494FF00FFD4E7FF00C60D62BFADDD41A0402E6BBFCE6B5FFF
            007E5CEAEC3FC69E21A7EB4BEF3C64D75BC7F65ADABFEF8B8F494A4924925297
            4FFE2E3FF1558FFD57FE45CC2DAFAA1D5B13A3F5CA73B3377A3587076C1B8EA3
            F76424A7DF080410783A2E3AFF00F159F56EFB9F73DF91B9E64C3DB127FB097F
            E3ADF557C723FEDA1FF934BFF1D6FAA9FF00763FEDA1FF0093494C3FF1A5FAB3
            FE9327FCF6FF00E9356FA4FF008BAE83D273EACFC57DE6EA4CB43DE08F9FB02A
            FF00F8EB7D54FF00BB1FF6D0FF00C9AB7D2BFC61FD5EEAB9D5E0E27ADEB5C76B
            77D703EFDC929E96CFE6DDF03F917CF5D79CEFDB59DA9FE7DFFF005457D0C402
            083C1D172F93FE2DFEAAE564599175169B2D717BC8B5C353A9D024A7C4B73BC4
            FDE96E7789FBD7B3BFFC57FD510D24516C804FF3AFFEF5E3D9D5329CBBAAAF46
            31C5AD07C024A40493CEA924924A5249249294B7FEA1D3EB7D6CE9CC988B377F
            981D67FDF5602EBFFC56E1BAFF00AD555E3E8E2D763DDFDA6BA91FF4AC494FFF
            D5D0FF001C1D38BF0F07A9378A5EEA5FFF005C01ECFF00CF4F5E5ABE83FACDD2
            4758E87978100D96564D24F6B009ACFF009CBE7EB18EADEE63C439A4820F8849
            4C52492494A4924925292492494A5D17D40FFC54E17F5C2E75745F503FF15385
            FD70929F7471DAD27C04AE2333FC6B747C4CBBB15F897B9D4BCB1C46D825A63F
            7976D67F36EF81FC8BE79EBFFF002D677FC7BFFEA9253E92EFF1BDD14B48FB1E
            46A08FCCFF00C92F2DCCB9B7E55B734102C7170079D5052494A4924925292492
            494A5EA3FE27FA69662E6F537716B9B8ECFEC0F51FFF009F18BCBDAD73DC1AD1
            25C6000BE81FAB1D23F63743C4C0207A95B01B88EF63BDD624A7FFD6F555E39F
            E33BEAF3BA77583D4A9646267FBA40D1B681FA467F6B6FA8BD8D66FD60E898FD
            73A55DD3AFF6FA826BB3BB5E356BDA929F9E9256FAA74CCBE959F6E0E5B765D4
            B8B4F811D9CDFE4B954494A4924925292492494A5D17D40FFC54E17F5C2E7558
            C1CECAE9F92CCAC3B0D57D6658F1120FCD253F4659FCDBBE07F22F9EBAFF00FC
            B59DFF001EFF00CAB44FD7EFADA4107A8BE0E87DADFF00C82C2BEEB322E7DF6B
            B7D9638B9EEF127929298249249294924924A52492B5D33A6E5754CEA70711BB
            EEBDC1ADF013F9CEFE4B5253D3FF008B4FABAEEA9D64675CD9C4C03BDC4890EB
            3FC1D5FF00A317B32CCFAB9D0F1FA1749A7A7D3EE2C1BADB220BDE75738FFD43
            7F90B4D253FFD7F5549249253CBFD78FA9B4FD62C3F5A8019D4E86FE86CE378F
            A5E8D9FF00A2FF007178A64E35F8B7BF1F2186BBAA25AF63841042FA4D72FF00
            5CBEA3E1FD61A0DF4EDA3A9560FA76F01FFF00077C7FE7CFCC494F8824ADF54E
            959FD272DD899F4BA9B9BAC3B823F7D87F39AAA24A5249249294924924A52492
            49294924924A52492B5D37A5E7F55CA6E26052EBEE77E6B7B0FDE77EEB52521C
            7C7BF26F6518EC75B6D84358C6824927E0BDA7EA37D4CA7EAF620C8C901FD4EF
            68F55FA7E8DA7FC0D7FF00A31C97D4CFA8D89F57AA19391B6FEA6F1EFB796B27
            F3299FFCF8BAA494A49249253FFFD0F554924925292492494D1EADD13A6758C7
            FB3F50A1B733F349D1CD3FBCC78F735799FD60FF00155D4B10BAFE8EFF00B6D1
            C8A5C40B47FD456FFECAF5A49253F36E462E4E2D86AC8A9F558D30E6BC16907F
            B484BE80FAC1FF00363D11FB7FECBB20ECFB46DDDE7E96EFD27FDB6BCE7A974E
            FF0015B7EE385D5ACC4B09D3F457DB58F833D16FFE7D494F0A92DBC9E8DF5758
            2717EB0557793F1B26B3FF009EAD542CC1C36FD0EA143FE0CBC7FD563A4A69A4
            AE578386EFA5D42867C5979FFA9C757F1BA37D5E789C9FAC14D3E4CC6C9B0FFE
            7AA925388894636464D82BC7ADD6BDC603580933FD95DB74DE9DFE2B690DFB6F
            56B32ED1CFE8AFAAB3FD9F45CEFF00C157A2FD5EFF009ADE91FF009BFF0065DB
            037FD9F6EF8EDEAC7E97FEDC494F9DFD5EFF00155D4F30B6EEB0EFB0D13AD421
            D6B87CB7D75FF6D7A6F48E87D2FA3638C7E9F43696FE73B9738FEF3DE55F4925
            292492494A49249253FFD93842494D042100000000005500000001010000000F
            00410064006F00620065002000500068006F0074006F00730068006F00700000
            001300410064006F00620065002000500068006F0074006F00730068006F0070
            002000430053003600000001003842494D040600000000000700080000000101
            00FFE10E31687474703A2F2F6E732E61646F62652E636F6D2F7861702F312E30
            2F003C3F787061636B657420626567696E3D22EFBBBF222069643D2257354D30
            4D7043656869487A7265537A4E54637A6B633964223F3E203C783A786D706D65
            746120786D6C6E733A783D2261646F62653A6E733A6D6574612F2220783A786D
            70746B3D2241646F626520584D5020436F726520352E332D633031312036362E
            3134353636312C20323031322F30322F30362D31343A35363A32372020202020
            202020223E203C7264663A52444620786D6C6E733A7264663D22687474703A2F
            2F7777772E77332E6F72672F313939392F30322F32322D7264662D73796E7461
            782D6E7323223E203C7264663A4465736372697074696F6E207264663A61626F
            75743D222220786D6C6E733A786D703D22687474703A2F2F6E732E61646F6265
            2E636F6D2F7861702F312E302F2220786D6C6E733A786D704D4D3D2268747470
            3A2F2F6E732E61646F62652E636F6D2F7861702F312E302F6D6D2F2220786D6C
            6E733A73744576743D22687474703A2F2F6E732E61646F62652E636F6D2F7861
            702F312E302F73547970652F5265736F757263654576656E74232220786D6C6E
            733A70686F746F73686F703D22687474703A2F2F6E732E61646F62652E636F6D
            2F70686F746F73686F702F312E302F2220786D6C6E733A64633D22687474703A
            2F2F7075726C2E6F72672F64632F656C656D656E74732F312E312F2220786D70
            3A43726561746F72546F6F6C3D2241646F62652050686F746F73686F70204353
            36202857696E646F7773292220786D703A437265617465446174653D22323031
            392D30312D31325431333A34323A31362D30333A30302220786D703A4D657461
            64617461446174653D22323031392D30312D31325431333A34323A31362D3033
            3A30302220786D703A4D6F64696679446174653D22323031392D30312D313254
            31333A34323A31362D30333A30302220786D704D4D3A496E7374616E63654944
            3D22786D702E6969643A35343738424644393838313645393131393239354634
            463039313031413944372220786D704D4D3A446F63756D656E7449443D22786D
            702E6469643A3533373842464439383831364539313139323935463446303931
            3031413944372220786D704D4D3A4F726967696E616C446F63756D656E744944
            3D22786D702E6469643A35333738424644393838313645393131393239354634
            46303931303141394437222070686F746F73686F703A436F6C6F724D6F64653D
            2233222064633A666F726D61743D22696D6167652F6A706567223E203C786D70
            4D4D3A486973746F72793E203C7264663A5365713E203C7264663A6C69207374
            4576743A616374696F6E3D2263726561746564222073744576743A696E737461
            6E636549443D22786D702E6969643A3533373842464439383831364539313139
            323935463446303931303141394437222073744576743A7768656E3D22323031
            392D30312D31325431333A34323A31362D30333A3030222073744576743A736F
            6674776172654167656E743D2241646F62652050686F746F73686F7020435336
            202857696E646F777329222F3E203C7264663A6C692073744576743A61637469
            6F6E3D227361766564222073744576743A696E7374616E636549443D22786D70
            2E6969643A353437384246443938383136453931313932393546344630393130
            3141394437222073744576743A7768656E3D22323031392D30312D3132543133
            3A34323A31362D30333A3030222073744576743A736F6674776172654167656E
            743D2241646F62652050686F746F73686F7020435336202857696E646F777329
            222073744576743A6368616E6765643D222F222F3E203C2F7264663A5365713E
            203C2F786D704D4D3A486973746F72793E203C70686F746F73686F703A446F63
            756D656E74416E636573746F72733E203C7264663A4261673E203C7264663A6C
            693E463741324344423835314536393944344545414242343234463336353844
            42413C2F7264663A6C693E203C2F7264663A4261673E203C2F70686F746F7368
            6F703A446F63756D656E74416E636573746F72733E203C2F7264663A44657363
            72697074696F6E3E203C2F7264663A5244463E203C2F783A786D706D6574613E
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            2020202020202020202020202020202020202020202020202020202020202020
            203C3F787061636B657420656E643D2277223F3EFFEE000E41646F6265006440
            00000001FFDB0084000101010101010101010101010101010101010101010101
            0101010101010101010101010101010101010101020202020202020202020203
            0303030303030303030101010101010101010101020201020203030303030303
            0303030303030303030303030303030303030303030303030303030303030303
            03030303030303030303FFC0001108009E00A003011100021101031101FFDD00
            040014FFC401A20000000602030100000000000000000000070806050409030A
            0201000B0100000603010101000000000000000000060504030702080109000A
            0B10000201030401030302030303020609750102030411051206210713220008
            31144132231509514216612433175271811862912543A1B1F02634720A19C1D1
            3527E1533682F192A24454734546374763285556571AB2C2D2E2F26483749384
            65A3B3C3D3E3293866F3752A393A48494A58595A6768696A767778797A858687
            88898A9495969798999AA4A5A6A7A8A9AAB4B5B6B7B8B9BAC4C5C6C7C8C9CAD4
            D5D6D7D8D9DAE4E5E6E7E8E9EAF4F5F6F7F8F9FA110002010302040403050404
            040606056D010203110421120531060022134151073261147108428123911552
            A162163309B124C1D14372F017E18234259253186344F1A2B226351954364564
            270A7383934674C2D2E2F255657556378485A3B3C3D3E3F3291A94A4B4C4D4E4
            F495A5B5C5D5E5F52847576638768696A6B6C6D6E6F667778797A7B7C7D7E7F7
            485868788898A8B8C8D8E8F839495969798999A9B9C9D9E9F92A3A4A5A6A7A8A
            9AAABACADAEAFAFFDA000C03010002110311003F00DFE3DFBAF75EF7EEBDD7BD
            FBAF75EF7EEBDD7BDFBAF750F2190A0C4D0D5E4F295B498DC6D053CB575D90AF
            A9868E8A8E9604324D53555550F1C14F0431A9667760AA05C9F7EEBDD50DFCBF
            FF00851F7F2D9F8A9513E0707BF333F25379C46AE9A5C27412EDCDC786C56469
            CC91A5367B7766B70E0B090A34D1D9CD0364A48D4DCC7F407DD7BAD713E417FC
            2BA3E59EF7A4C9E27E3F746F5B7485348D30C76ECCB57CFD97BAA9E9DC32248D
            459AC3D26D28AAE1521C07A4A88CB0B10471EFDD7BAA97ECDFE7CBFCD87B6689
            F1BBA7E606FAC752990B347B0B17B43AD18BB24B1947AAEBCC1ED8A9780C1310
            636668F500DA4B2A91EEBDD145CFFF00307F9CDB9A3922CD7CBCF9235B1CDFE7
            50F74F62A2B5FEA02C5B863B73F8161EFDD7BAF617F9837CE6C0E838BF97DF24
            E03171186EEBEC89B4802C15566DC520D36E2DEFDD7BA36DD65FCF8FF9AFF52D
            12E3B6B7CC0DF95F48B309847BF31BB5BB2D83058D0A89FB136F6E6A84808887
            EDAC8A972C782CC4FBAF756C9F1EBFE15CDF2E762E3B1985EFFE90EB5EF48E9C
            C11D7EEDA0AF9FAD3775622BA8A89A4A4DBD89AFDA66674B9511E3E9D3558702
            FEFDD7BAD8E3E1FF00FC291BF96F7CA79A0C0EE5DE79CF8CFBCDD696018BEF84
            DBF82DBB93C8CCD145252E037861F3D99C6CF124D280AF904C633AF213836F75
            EEAFBB1B93C7666828F2B88AFA3CA633214F0D5D0E471F530D6515652D446B2C
            1534B554EF2413C1344E195D58AB29041F7EEBDD4DF7EEBDD7BDFBAF75EF7EEB
            DD7BDFBAF75EF7EEBDD7FFD0DFE3DFBAF75EF7EEBDD7BDFBAF75EF7EEBDD517F
            F339FE7D7F123F9763657AEA92B1FBC7E47C74224A7EACD955092E2B6B4F570D
            4FD8D4F626EE04E2308B1D4429E4C6C32CB9665923BC31248B28F75EEB403F9E
            3FCE07E6F7F30AC9E469FB9FB364C475AD4D652D7E2BA63AFA1A9DB5D65887A4
            00535453E2E4ACC9E672D5713C5A9AAABEB6A64F283A5829D3EFDD7BAABB3EAE
            4F3FEBF3637B9201E0127EA47D7F3EFDD7BAF1E793626F7B900D8DADC7F4F7EE
            BDD7BDFBAF75DDC8FA13EFDD7BAEAF7FAFBF75EEBD7B7D3DFBAF75DDCFFAFF00
            E2793FEB5CF36F7EEBDD74072080350FD2C40620FF00813C8FF6FEFDD7BAB38F
            819FCDCBE6BFF2F1CBC03A33B28D775DBE493259CE9DDF74726E2EB7DC4E51A0
            D7578AA792872F89AD646B1A8A0ACA3A870AA1A521401EEBDD6FF3FCB13F9FB7
            C4AFE61CF8AEB7CBD51E8AF91CF8F89E7EB6DE5531C782DD9554F4F07F11A9EB
            EDD85DB195E8F54EDE1C6D5CB0E50A03A639823B8F75EEAF7FDFBAF75EF7EEBD
            D7BDFBAF75EF7EEBDD7FFFD1DFE3DFBAF75EF7EEBDD74CCA8ACEECAA8AA59998
            8555551766663601401C9F7EEBDD6967FCF5FF00E144316C81BB7E1DFC09DDF1
            54EF0D594DB5DC5F2136F64265FEE9944971D92D9DD5B92A3F15F722544A52AF
            394F52AF8D923D14EAF213247EEBDD689995CAE4F3B92ACCBE62BEAF2B93C854
            4B575D90AEA99AB2B2A2A266324B35454CEEF34F2BBB125D896FF1F7EEBDD37F
            F5E073FED23E9C10071C2822E00E01E7EA4FBF75EEBDEFDD7BAF7BF75EEBDEFD
            D7BAF7BF75EEBDEFDD7BAF7BF75EEBDEFDD7BAF7FBEE79F7EEBDD7BFD7E7FE0D
            EAB8FA58EABDC0FE8781EFDD7BA9D8DCA6470D90A3CAE26BEBB1993C7D445554
            590C7D44F4F5D49510C8B2C33D2CF4F2473C7343220642AC0AB004107DFBAF75
            BCC7F228FF008511CDB8EAB687C39F9EBBBA9D729298B03D49F2337366653265
            67291458AD95D9992C846C95159332B47459D9AAD9EA66923A7996E04BEFDD7B
            ADDA11D24459236578DD55D1D18323A300CACACA4AB2B29B823823DFBAF75CBD
            FBAF75EF7EEBDD7FFFD2DFE3DFBAF75EF7EEBDD69CDFF0A33FE77B59D2F45BA7
            E02FC51DC6F4DDA19FC2C98EEFAED6C1565349375FE1F272CD455BD67B72A226
            98D1EF0CB63E09A3CB54B88A5C7534F1C74EC6A6566A7F75EEB40C9659679659
            E691E59E77796796462F24D2C8DADE595D89692566FED1B9B122F627DFBAF758
            FDFBAF75EF7EEBDD7BDFBAF75EF7EEBDD7BDFBAF75EF7EEBDD7BDFBAF75EF7EE
            BDD7BDFBAF75EF7EEBDD7BDFBAF75EF7EEBDD738E492291258A478648DD24492
            2255D248DF5C722692099237E54FD4102DEFDD7BADF67FE1397FCF02AFB420DA
            9F007E596E5A8ACEC0C7D0D2E27E3DF6AE72B29756EBC5D146B4749D5BB9EB27
            7A79EAB3F8F80411612AED552E4135C13CBE6488CBEEBDD6E69EFDD7BAF7BF75
            EEBFFFD3DFE3DFBAF754F1FCECBF993507F2DDF8779FDE9B6B258F5EF9ECCAB4
            D85D2389AA896B160CED629A8CD6EDC8D22CC93458CDB18082A248662AF11C9B
            D2C4EACB230F7EEBDD7CA57756E9DC7BE372673786F0CD64B726EADCD93AFCEE
            E0CF662A64AFC9E5F2F94AC6ABC964EBAB272F34F515F5CECECD212ECDEA2751
            BFBF75EE983DFBAF75EFF636FF001B5EDFE36E2F6F7EEBDD77F5E40007D08620
            90DF952752FD4722DA8FBF75EEBA2081722DA412E0AB5ADFEAB90A05BFD703DF
            BAF75EB589048B823F490D66007A4817F4BA1D61813F5FE9EFDD7BAF7BF75EEB
            DEFDD7BAF7BF75EEBDEFDD7BAF7BF75EEBDEFDD7BAF7BF75EEBDEFDD7BAF7BF7
            5EE9EF6CEE5CFECBDC584DDDB4F2F91DBDB9B6D65A833D80CE61AA25A1CAE233
            38BAA8AB71B92C75553DA5A6AEA0AB812481D7D51C8A0AD8FBF75EEBEAABFC8E
            7F99750FF31DF87F84CDEEDCC50D47C86EA2306C8EEFC7D3C2B45F7F5E8D52DB
            5F7AD0D1B544D2CB45BAB6F450C9533285886512A5142A8551EEBDD5D07BF75E
            EBFFD4DFD9DD2247965748E38D19E491D82222202CEEEEC42AA2A8B927803DFB
            AF75F288FE7A9F3E5FE7C7CF3EC0DD5B6B375190E98EAC8A0EB1E9980EB86293
            6DE06ED9ACE352891E08EAF70EEEACC854EB3FBCD48D0A39FDB555F75EEA9A3F
            DE2E751B0B5CD9C7ABFD55B59B5FE879FAFBF75EEBDEFDD7BAF7BF75EEAE8FF9
            0275F6C4ECFF00E65DD49B43B23666D7DFDB56BB6F6F196B36DEF2C163372E0A
            AA482815E179F1598A6ACA195A363C1287DFBAF75F4A0CD7C05F839161B2F245
            F0FF00E33C72438BAE68A48FA47AE1248DA3A39191D245DBA1D5D185C106E0FB
            F75EEBE44FF23F1F4189EF6ED4C5E2E8A971B8DA0DE999A7A2C7D0D3C54B4549
            023C4A90D35340A90C11228B2AAA800703DFBAF740A7BF75EEBDEFDD7BAF7BF7
            5EEBDEFDD7BAF7BF75EEBDEFDD7BAF7BF75EEBDEFDD7BAF7BF75EEBDEFDD7BAB
            79FE495F3E6B7F97FF00CE7EBCDFB96CBCD43D47D86CBD61DD34B769613B273D
            5D4953FC6BECECD1CB5BB7B338EA5A989D544DA15A35215C83EEBDD7D6523923
            963496274922911648E48D83C7246E0323A3A92AE8EA6E08E08F7EEBDD7FFFD5
            DA17F9E47CB58FE1EFF2DBEFEDED4592ABC4EF4EC7C0D6F47F5B57D054352D75
            16F7EC7C0E76969323473A45298AA71186C7D75646DE9B3C03D40DBDFBAF75F2
            679E692A259A795DE496795E699CB162D2C8DA999AE796763727926FEFDD7BAC
            5EFDD7BAF7BF75EEBDEFDD7BABD3FF0084E5FF00DBD43A6BFF000DADEDFF00BA
            E4F7EEBDD7D49B3DFF00163CDFFDAAB23FFB852FBF75EEBE2FBF27FF00ECA17B
            7BFF000F9CDFFD6D8BDFBAF74047BF75EEBDEFDD7BAF7BF75EEBDEFDD7BAF7BF
            75EEBDEFDD7BAF7BF75EEBDEFDD7BAF7BF75EEBDEFDD7BAE48EF1BACB192B223
            A488C3921D1B5A11C83756E47F8FBF75EEBEAF1FC857E60CFF00323F96DF4DEE
            8CEE4AB32DBFFA9449D17D8D91C84CF3D764B726C5C3E0EA68B2F5124AAB24B2
            64F6BE731F248E756A9FC835120FBF75EEBFFFD61B3FE1617F206A565F88DF19
            3139A85B1F343D81DBBBDB051BA9953230C9B7B6DEC1ADA850A64564A39B3AB1
            8B852B2B92090A57DD7BAD1EFF00E26D7FC5EDF4F7EEBDD7BDFBAF75EF7EEBDD
            7BDFBAF757A7FF0009CBFF00B7A874D7FE1B5BDBFF0075C9EFDD7BAFA9367BFE
            2C79BFFB55647FF70A5F7EEBDD7C5F7E4FFF00D942F6F7FE1F39BFFADB17BF75
            EE808F7EEBDD7BDFBAF75EF7EEBDD7BDFBAF75EF7EEBDD7BDFBAF75EF7EEBDD7
            BDFBAF75EF7EEBDD7BDFBAF75EB6AE3FAF1CDADCF1CDF8F7EEBDD6E9DFF08FAF
            9015745D8DF2A7E3464F2EEB8ACFED4DA9DB5B4F0CF2D4783F8EE16BE7DBFBAE
            6A5A76BD2C73CF8BC8D0EA75D2F2C74A2FA8462DEEBDD7FFD7AF2FF8538F61E4
            B79FF367EE7DBD5158F5588EB7D9FD4BB5F01095B2D0A55F5A6D4CFE6E01C8E1
            F3595A86D5CDC9FE9EFDD7BAD7D3DFBAF75EF7EEBDD7BDFBAF75EF7EEBDD5E9F
            FC272FFEDEA1D35FF86D6F6FFDD727BF75EEBEA4D9EFF8B1E6FF00ED5591FF00
            DC297DFBAF75F17DF93FFF00650BDBDFF87CE6FF00EB6C5EFDD7BA023FD6B5FF
            0017BDBFD8DAC6DEFDD7BA30DF16BE31F66FCC0EEBD95D07D3EB816DF9BFB2D1
            E1F01FDE8CB7F05C2FDCCACD1C5F79934A6AB6A75925751710B955E6CDF43EEB
            DD5E4FFD029DFCD57FE55FE3A7FE8E2ABFFEC23DFBAF75EFFA053BF9AAFF00CA
            BFC74FFD1C557FFD847BF75EEBDFF40A77F355FF00957F8E9FFA38AAFF00FB08
            F7EEBDD7BFE814EFE6ABFF002AFF001D7FD8770D593FEC07F7245CFF00B11EFD
            D7BAA8AF9D3F00BBF7F978F6AD274F7C854D989BC2BB0543B8E99763EE29B736
            2BF8764B9A7596BA4C5E34C73228274E9E7F27DFBAF74497DFBAF75EF7EEBDD7
            BDFBAF75D8B5C5FE97E7F3C7E78F7EEBDD5F87FC268F7E57ECFF00E6E7F1F713
            155CB06337DE0BB6B6B66E188B30AC0FD45BE3258AA6656D5FE4B1E76829E536
            B69641F816F7EEBDD7FFD0A65FE7CFBA60DE1FCD8FE6265608E748E8FB0E1DB0
            C2A523594CDB33078EDA93BA88DE40607A8C3931127518F49215AE07BAF75503
            EFDD7BAF7BF75EEBDEFDD7BAF7BF75EEAF4FFE1397FF006F50E9AFFC36B7B7FE
            EB93DFBAF75F526CF7FC58F37FF6AAC8FF00EE14BEFDD7BAF8BEFC9FFF00B285
            EDEFFC3E737FF5B62F7EEBDD011FEFB9E7FDE0F07DFBAF75735FC81FFEDE97F1
            78F3A8EF9C6A9624962A2A21B2EA3CDBDFBAF75F5746654567660AAAA5999880
            15545CB12780001EFDD7BA45D4764F5ED24D25355EFDD974D530C8F14D04FBA3
            070CB14B136996196292B95E39633C10D6208FA7BF75EEB17FA51EB4FF009F87
            B1BFF42EDBDFFD71F7EEBDD78F68F5A58FFC643D8DFF00A176DEFF0089C8DBDF
            BAF75F3ACFF8556E7709B83E7BED8ADC0E63179BA5FF00451B521FBBC457D1E4
            E995E3A799A489AA2826A88D5E35FA82E393C83EFDD7BAD5F7DFBAF75EF7EEBD
            D7BDFBAF75EF7EEBDD5AAFF245DCB5DB53F9A8FC30CB63AA5E9A79BB8F0D8379
            9122959E8773C553B77254FA678E4454AAC6E56688B001943EA52182B0F75EEB
            FFD1A82FF8504EDEA7DB3FCDC3E5DD0D2D34549155EE9DB59E314312A46F51BA
            B63ED7DC759505508066ABABC9492BB117691CB1E4FBF75EEA993DFBAF75EF7E
            EBDD7BDFBAF75EF7EEBDD5E9FF00C272FF00EDEA1D35FF0086D6F6FF00DD727B
            F75EEBEA67574F1D65256524C5962AAA79E9E528555C473C263728CC195582B1
            B120807DFBAF75ADA6F8FF0084B27F2E1EC0DDFB877AE73747C8E8B2FB9B2951
            96C8A50761EDB86852B2A998CE94B0CBB12792187515D2AD248DE9FAF26FEEBD
            D25FFE8132FE59BFF3D67C9BFF00D18FB5BFFB00F7EEBDD18EF89DFF0009D7F8
            25F0E3BD362FC83EA9DC1DEF59BE3AFF002D1E5B0B4DBAB7CE0729837A88A48E
            487EFA8A8F6563EA245564F5289975293C83EA1EEBDD5EBEE2246DFCE904A918
            7C9905490411453D8822C4107F3EFDD7BAF8E4FCF2C9E453E697CA554AFAD55F
            F4E5D8CB65AA9C0D2372D780B60FF403E83F1EFDD7BA297FC4F25FF3B0AEFF00
            CEBA8FFAF9EFDD7BAF7F14C9FF00CEC6BBFD855D40FF00AE9EFDD7BA8D34F354
            3F92A2592793485D72BB48FA57F48D4E49B2FE3FA7BF75EEB17BF75EEBDEFDD7
            BAF7BF75EEBDF4E7FA7F5FA7FB1F7EEBDD5BA7F223D9FF00DF7FE6C3F0DB0BE7
            FB614BD9326E3321844E08D93B7F39BD0C0B1F9616B55C782F1192E7C7AF5D9A
            DA4FBAF75FFFD2251FF0A98EA6ABD8BFCD23756FE9630B45DCFD67D6BBAA82D0
            AC6A536C6CFC1EC0ACD2FA7F718E476DBBB35EF77B7E3DFBAF75ADF7BF75EEBD
            EFDD7BAF7BF75EEBDC7E4D87E4F3C0FC9E031E3FD63EFDD7BAB39FE509F2CBAA
            3E13FCE1EBBF901DD877326C1DB186DC947953B4B0B067F3627CAD1C10D2AD2E
            2E5C9E39A48F586259987BF75EEB784FFA0AC7F9560BFEFF00C8D209078E9FA1
            FA691FF67AFD757BF75EEB8FFD0563FCAA7EBE4F91F7B004FF00A1FA1B903E80
            9FEFADDBFD8FBF75EEBBFF00A0ACBF9551E3C9F2305FF2DD3F4217FE422379B1
            0BFD6C0FFADEFDD7BA30DF16FF00E142DFCBE7E60776EC9E82EA097BB1B7EEFF
            00CB4388C08DD3D694F83C31A996411C6D57905DCB58F046CEE05FC6F61CDB8F
            7EEBDD5E355D345594B5349382D05553CD4D3286285A29E368A401C72A4A31E4
            7D3DFBAF75443D91FF0009BCFE563DAFBFB78F65EF2EB1ECDACDD9BEF70E4F73
            EE2ABA5EE5DF1434D5198CBD5495B5F514F43475C29E9239EA256211404406CA
            00E3DFBAF741DE57FE1307FCA46931792AB87AA7B4C4D4B415951117EEFDFCC8
            24829E4910BAB646252A1945C16516FC8FAFBF75EEBE6DBDDDB530FB1FB6FB0F
            68EDF8A68309B737464B118C86A277A99A2A4A4959221355C8CED512B05FAFD0
            FBF75EE82BF7EEBDD7BDFBAF75EF7EEBDD7BDFBAF75E1FE3F4FCDBFDF1F7EEBD
            D6C6DFF0971EA0C87607F34FD8FBFA18D8E37A37AF3B3F79658187CD169DCDB1
            73BD758E47947A6191327BB2292363724C640FF0F75EEBFFD338BFF0B03F8F15
            59EE9EF8B1F27E814783AEF78EEEE9FDC0B1C40CB30EC6A1C76E9DB93CF2D895
            A5A1FEE164D7FA792A17917E7DD7BAD08BDFBAF75EF7EEBDD7BDFBAF75EFF7DC
            71EFDD7BAEC1B7D38B9D44000027FA91F43EFDD7BAE2001C5BFDF5EFFEF7EFDD
            7BAEFDFBAF75EF7EEBDD5CD7F20616FE695F17BFC77CE3413F9216A612013F53
            6F7EEBDD7D5AEBEA968686B2B5D59928E92A2A9D57F532D3C2F332ADC81A884E
            391EFDD7BAD5CFB8FF00E155DF10BA63B5FB0FA9B3BF1F3BFB2B98EB9DE19DD9
            F92C862E4D8A686B6BB01919B1F3D5D1A4F9E8EA129E5929CB0F220201FAFBF7
            5EE82BC9FF00C2BCBE1856E3721469F1BBE45ABD5D0D5D32B3CBB034069E0922
            52F6DC24E905F9B0BDBDFBAF75A1076F6F3A2EC3ECFDEFBE31D4B534541B9F71
            6432F47495DE15ABA782AE56290D434524D0493AAFEA11B95B9E3DFBAF741CFB
            F75EEBDEFDD7BAF7BF75EEBDEFDD7BAF5EDCF1C73C8B8FF623F23DFBAF75BE77
            FC23F3E38D4E17ABFE517CAAAED221DEBB9F6F746EDF46BFDC08F62D1C5BCF71
            CECA615021A93BC31603091B53C4E0A8D009F75EEBFFD4DC2FF9977C4DA3F9B5
            F08BE40FC79FB2A1AADCDBB361E6AB3AE6A3212490D3E2FB2F0D41535DB2B24F
            3C4AEF0C6998448A5215BF66571637B7BF75EEBE3E39DC2E436E66F2B80CBD35
            45164F0D91ADC5D6D25543253D44159412986AA19E0955648A48E443C100D8FB
            F75EE9ABDFBAF75EF7EEBDD7BDFBAF75EF7EEBDD7BDFBAF75EF7EEBDD7BDFBAF
            75735FC81FFEDE95F17BFF000FAC77FEE443EFDD7BAFAAEEE3FF008F7B3BFF00
            6A6CA7FEE0CFEFDD7BAF8DEFCF4E7E69FCA5BD8FFC672EC61CF3FF00312568E2
            F7B1F48F7EEBDD149B0FE83FDB7BF75EEBC001F400724F000372029B1FA8B81C
            FF005F7EEBDD77EFDD7BAF7BF75EEBDEFDD7BAF71F9FA7E6DFD3F3EFDD7BA9F8
            BC6D666321418AA0825A8AEC8D64143494F4F13D454CD5334DE048E28233AE46
            661AAC083F8047BF75EEBEC1BFCB23E2527C22F83DD03F1E2AE9B1F16ECDA7B3
            28ABFB16AF1AAFE0CA76267D465375D699240259CC55D3FDB23B004C34E82C00
            007BAF75FFD5DFE3DFBAF75F35FF00F8539FF2F4C97C65F98953F27B64EDF6A5
            E93F9452D2E666ACA2A48A9B0FB6FB86971F352EECDAC9153FA60933343875CD
            ABBAA099EBA655B989ADEEBDD6B1FEFDD7BAF7BF75EEBDEFDD7BAF7BF75EEBDE
            FDD7BAF7BF75EEBDFEFB9E7FDE0104FBF75EEAE63F903B7FD8D33E2F2F00FF00
            7E31CDA4925D40A9879D0A8DE93FE27DFBAF75F55DDC44FF0077F3BFF6A6C9FD
            11CFFCA14FF850CC7FD8027DFBAF75F1C0F9E9FF0065A9F29BFC3BD3B1C05B32
            DBFDFC95DC97602E47FA9D209F7EEBDD149F7EEBDD7BDFBAF75EF7EEBDD7BDFB
            AF75EF7EEBDD7B8FCFD3F3FEB7BF75EEB649FF0084D4FF002EDC9FCB5F99141D
            FF00BCF0524DD1DF172B29B75E4EBEBA8A3ACC26E7ECFF00240FB3F61BAC92C4
            B24E9155BE5E721678D20A1114AA3EE23BFBAF75F4C7F7EEBDD7FFD6DFE3DFBA
            F744BBF980FC2AEBCFE601F167B1FE3576138C6C5BAE929B21B4F75C34B4B519
            3D97BD30B5095D81DC38D7A9A6AAF07EE23D255E85F2498FAA9E35219C30F75E
            EBE485F28FE3476AFC42EF4EC1F8FDDCD829707BE7AF73B5987C87A1D71B95A5
            8A575C767B075332C7F7D85CE53C7F714935809A9995D793A7DFBAF745F7DFBA
            F75EF7EEBDD7BDFBAF75EF7EEBDD7BDFBAF75EFF00617FF01F9FF0F7EEBDD0B5
            D23DE7DA7F1CBB236E76EF4BEEFAED8FD87B4EB5323B7F725053D054D5636B62
            20A4C94F91A3ADA394A90080F13D8F22C79F7EEBDD595547F3F3FE6D95704F4B
            51F31F7BC9054C3253CE876F6C3B3C332347221FF7E7FD19188F7EEBDD5526F6
            DE7B93B1777EE4DF7BC729267376EEECD64770EE3CBCD153C3364F3195A87ABC
            857CD153C305346F51512B3158E3445BFA40E3DFBAF7496F7EEBDD7BDFBAF75E
            F7EEBDD7BDFBAF75EE3F26C3F26F6B0FEB7B1B7FB63EFDD7BA1DFE347C72ED0F
            963DDFD77D01D41849739BF3B237263B6EE2A35595B1F8F15B55047579BCBCF4
            F0D47D8607094529ABACA8BC821A552E4594FBF75EEBEB6DFCBABE0F6C0FE5ED
            F14BAE3E37EC634F93ADDBF495197DFBBC85051D16477CEFDCE54495F9ECF645
            E92081AA62A669528283CA1A58B19474F1B3332163EEBDD1E3F7EEBDD7FFD7DF
            E3DFBAF75EF7EEBDD50F7F3BEFE4E1B33F997750CDBEBAFE8F1BB6FE5D7586DD
            A987AD775BA5352D36FBC253557F1593ACB78D4B7DBBCF4954E6A3F83D44B3A4
            58DAFAB6924D50BC807BAF75F305EC6EB9DF3D45BEB7475AF656D8CBECEDF1B3
            7335DB7F71EDBCE50CF8FC8E332D8E9DE9EB619A2AA1139875461E0745759A36
            D41C820FBF75EE915EFDD7BAF7BF75EEBDEFDD7BAF7BF75EEBDEFDD7BAF7FBEF
            A7FC4FD7DFBAF75EF7EEBDD77727EBCFBF75EEBAF7EEBDD7BDFBAF75EF7EEBDD
            7B8FCFD3F372178FF5CF03FD73EFDD7BA59F5F75EEF7ED5DE9B6FAF3AE76BE73
            79EF6DDD95A3C26DCDB7B771790CB6632992AC9BC51474B458EA79A7982907C8
            56DE24BBB1005FDFBAF75F4E5FE46DFC99B697F2DAEA783B2BB431F8CDC5F2F7
            B37014237BE7CC347531758606AA28EB0F58ED5AA866AE8C4D4F33AA666BA9E7
            30646A29E3112AC312993DD7BABF8F7EEBDD7BDFBAF75FFFD0DFE3DFBAF75EF7
            EEBDD7BDFBAF7543DFCE3FF921750FF32CD9555BFB63C784EB0F967B57155C76
            8760474A94385EC1B53C7F6DB47B48D053BCF5B472C94B1474B963154D662C0F
            4A4B09785BDD7BAF9AC7C9FF008A9DF1F0E3B572DD37F227AF737D75BE718A2A
            62A1CC53B41439BC44AD32526E0DB99190AC398C1573D24A21AA87CB14851C02
            0A903DD7BA2F1C0E2FF41703FB4D71F507F4155BFE39B7BF75EEBAF7EEBDD7BD
            FBAF75EF7EEBDD7BDFBAF75EF7EEBDD7BDFBAF75EF7EEBDD7BDFBAF75EBDB936
            B0E4EA240FF6247207BF75EE87EF8DBF17FBD3E5CF68E2BA73E3DF5DEE0EC9DF
            795579FF008560E94D40C663229218AA3399D9D15A1C2E1290D44666ABA92904
            4AF763F41EFDD7BAFA4E7F26AFE46BD4DFCB636B50767F63A613B3BE5E6E0C5B
            47B8B7D247257EDEEB9A7AD8123A9DABD683211A488AAA654A9CC9829ABAB927
            7888482C87DD7BABF6F7EEBDD7BDFBAF75EF7EEBDD7FFFD1DFE3DFBAF75EF7EE
            BDD7BDFBAF75EF7EEBDD159F95FF000AFE337CDBEBF9BADFE4A755E07B1304AB
            2BE22BAA966A0DCBB66B9E29A28B27B6B7263A4A6CAE2AB29CCC5C0590C12371
            2C72292A7DD7BAD1B3F981FF00C2553E47F4E4D9DDF9F09370C9F237AF229454
            D2F5B676AF0783EE7C4C0C5E4AC6F34E36DECFDCF494D18BA0A2682B24274AD2
            31B13EEBDD6AC7BFFAC3B17AA77064B6A765EC5DD9B1372E1ABA6C6E4F07BB30
            793DBD92A3ADA76D32D354536528A090480FD0A82BF9E47BF75EE9096FF5CDB9
            E09BF3F8D324709217F256FEFDD7BAF7BF75EEBDEFDD7BAF7BF75EEBC39E3FDE
            FDFBAF75E1FD6DE93700B11C91F85B69BFBF75EE96BB17ADBB0BB3B3B41B67AE
            B656E8DEFB832957163F1F87DAF81C9E72BEAAB2791638A2869B19055C8EF23B
            800580FF005BEBEFDD7BADA4FF0097D7FC256FE4BF75D562F7CFCD7CCD47C68E
            BB4AA8249BAFF175580CFF00716E1A26863A859A924A19F71ED3DAB473AB8427
            20D257452060D47A4027DD7BADE5BE237C1EF8C5F06BAF60EB8F8D7D5981D838
            A68298673330C6F5DBAF76D74112A3E5373EE3AD69B2392AAA890193C7AD2961
            2DA618A340AA3DD7BA365EFDD7BAF7BF75EEBDEFDD7BAF7BF75EEBFFD2DFE3DF
            BAF75EF7EEBDD7BDFBAF75EF7EEBDD7BDFBAF75EF7EEBDD5767F3031FCB15B67
            63D7F98D3FC5D8F06D45931B5DFBE46CE3B9921315B20FB0C6515F779AB5F49F
            F7120CBE5D1605F4FBF75EEB4BEF927F1D7FE12DDBED72F2F477F305ECBE84DD
            B3D5CAD011D21F273B6BAEA886B66963A0C09E98C1E467879D2AD1679A20B620
            1FCFBAF7551BD97F0E7F97960A213754FF00380EA2EC4216A4BD1EEBF879F353
            AE2AFD2C8D4A90BD27546FBA39DE642CAC5A4815081FA81257DD7BA2959FE93E
            A1C624C70FF317A37723463F6969362FCA2C699883F5032DF1FA9D5491F86651
            EFDD7BAF60FA4FA8B245065BE627466DCBB80CD55B1FE51E402A102E74E2FE3E
            5513A7FC0FBF75EE8D9F5B7C38FE5E99C89A5ED4FE703D3FD7A2D014A7DADF0F
            3E6AF63D61D45FEE566FBAEA7D8745088805D256597C849BE8B02DEEBDD5B77C
            6DF8E7FF000970D8B4B847EF5FE611D99DF3BC609D5AADE0E91F939D4DD775CA
            B566458EAB023A533994829DA1D31CCD2675632BAC90A0FA7DD7BADCE3F97AAF
            F2B65DA95ABFCB85FE2CC98E5C763D773C9D183678DEB251852285F7E8A248F7
            D0999F511FC5955FC9AB80D7F7EEBDD5917BF75EEBDEFDD7BAF7BF75EEBDEFDD
            7BAF7BF75EEBDEFDD7BAFFD9}
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
        object Memo23: TfrxMemoView
          Left = 574.488560000000000000
          Top = 57.252010000000000000
          Width = 151.181200000000000000
          Height = 26.456710000000000000
          DataSet = FSCLIENTE
          DataSetName = 'FSCLIENTE'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'VENDA N'#186': [fsvenda."CODIGO"]')
          ParentFont = False
        end
        object Memo24: TfrxMemoView
          Left = 566.929500000000000000
          Top = 2.000000000000000000
          Width = 253.228434330000000000
          Height = 11.338590000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'SISTEMA-GCSISTEM')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        Height = 119.188971500000000000
        Top = 355.275820000000000000
        Width = 733.228820000000000000
        OnBeforePrint = 'PageFooter1OnBeforePrint'
        object Shape1: TfrxShapeView
          Left = 0.377952760000000000
          Top = 1.559060000000000000
          Width = 732.472440940000000000
          Height = 116.409448820000000000
          Fill.BackColor = clWhite
          Frame.Color = clWhite
          Frame.Width = 0.100000000000000000
        end
        object Memo41: TfrxMemoView
          Left = 514.015713860000000000
          Top = 23.685246850000000000
          Width = 117.165354330000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'DESCONTOS:')
          ParentFont = False
        end
        object Memo43: TfrxMemoView
          Left = 514.015713860000000000
          Top = 52.480546850000000000
          Width = 117.165354330000000000
          Height = 22.677180000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            'TOTAL DO PEDIDO:')
          ParentFont = False
        end
        object Memo45: TfrxMemoView
          Left = 657.637778190000000000
          Top = 21.905716850000000000
          Width = 71.811023620000000000
          Height = 15.118120000000000000
          DataField = 'DESCONTO'
          DataSet = fsvenda
          DataSetName = 'fsvenda'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[fsvenda."DESCONTO"]')
          ParentFont = False
        end
        object Memo47: TfrxMemoView
          Left = 645.637778190000000000
          Top = 54.701016850000000000
          Width = 86.929143620000000000
          Height = 22.677180000000000000
          DataField = 'TOTAL'
          DataSet = fsvenda
          DataSetName = 'fsvenda'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[fsvenda."TOTAL"]')
          ParentFont = False
        end
        object Memo40: TfrxMemoView
          Left = 514.015713860000000000
          Top = 4.787689610000000000
          Width = 117.165354330000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            'TOTAL DOS PRODUTOS:')
          ParentFont = False
        end
        object Memo44: TfrxMemoView
          Left = 657.637778190000000000
          Top = 3.008159610000000000
          Width = 71.811023620000000000
          Height = 15.118120000000000000
          DataField = 'SUBTOTAL'
          DataSet = fsvenda
          DataSetName = 'fsvenda'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[fsvenda."SUBTOTAL"]')
          ParentFont = False
        end
        object Memo53: TfrxMemoView
          Top = 3.551449609999990000
          Width = 113.385900000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Condi'#231#245'es de Pagamento:')
          ParentFont = False
        end
        object Memo51: TfrxMemoView
          Left = 117.165430000000000000
          Top = 2.551449609999990000
          Width = 86.929190000000000000
          Height = 15.118120000000000000
          DataField = 'LINHA7'
          DataSet = frmmodulo.fxrelatorio
          DataSetName = 'fxrelatorio'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            '[fxrelatorio."LINHA7"]')
          ParentFont = False
        end
        object Line2: TfrxLineView
          Left = 0.220470000000000000
          Top = 17.890039610000000000
          Width = 461.102660000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
          Frame.Width = 0.500000000000000000
        end
        object Memo59: TfrxMemoView
          Left = 210.992270000000000000
          Top = 3.551449609999990000
          Width = 241.889920000000000000
          Height = 15.118120000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Vencimentos ('#224' prazo)')
          ParentFont = False
        end
        object Memo60: TfrxMemoView
          Left = 5.559079530000000000
          Top = 19.637761110000000000
          Width = 98.267780000000000000
          Height = 11.338590000000000000
          DataSet = frxDBDataset1
          DataSetName = 'fsvenda_produto'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Dinheiro:')
          ParentFont = False
        end
        object Memo64: TfrxMemoView
          Left = 5.559079530000000000
          Top = 33.401540630000000000
          Width = 94.488250000000000000
          Height = 11.338590000000000000
          DataSet = frxDBDataset1
          DataSetName = 'fsvenda_produto'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Cheque '#224' Vista:')
          ParentFont = False
        end
        object Memo65: TfrxMemoView
          Left = 5.559079530000000000
          Top = 48.740123309999700000
          Width = 94.488250000000000000
          Height = 11.338590000000000000
          DataSet = frxDBDataset1
          DataSetName = 'fsvenda_produto'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Cheque '#224' Prazo:')
          ParentFont = False
        end
        object Memo66: TfrxMemoView
          Left = 5.559079530000000000
          Top = 64.503897960000000000
          Width = 94.488250000000000000
          Height = 11.338590000000000000
          DataSet = frxDBDataset1
          DataSetName = 'fsvenda_produto'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Cart'#227'o de D'#233'bito:')
          ParentFont = False
        end
        object Memo67: TfrxMemoView
          Left = 5.559060000000000000
          Top = 79.866100239999900000
          Width = 94.488250000000000000
          Height = 11.338590000000000000
          DataSet = frxDBDataset1
          DataSetName = 'fsvenda_produto'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Cart'#227'o de Cr'#233'dito:')
          ParentFont = False
        end
        object Memo68: TfrxMemoView
          Left = 109.606387090000000000
          Top = 19.637761110000000000
          Width = 86.929190000000000000
          Height = 15.118120000000000000
          DataField = 'MEIO_DINHEIRO'
          DataSet = fsvenda
          DataSetName = 'fsvenda'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[fsvenda."MEIO_DINHEIRO"]')
          ParentFont = False
        end
        object Memo69: TfrxMemoView
          Left = 109.606387090000000000
          Top = 33.401540630000000000
          Width = 86.929190000000000000
          Height = 15.118120000000000000
          DataField = 'MEIO_CHEQUEAV'
          DataSet = fsvenda
          DataSetName = 'fsvenda'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[fsvenda."MEIO_CHEQUEAV"]')
          ParentFont = False
        end
        object Memo70: TfrxMemoView
          Left = 109.606387090000000000
          Top = 48.740123310000000000
          Width = 86.929190000000000000
          Height = 15.118120000000000000
          DataField = 'MEIO_CHEQUEAP'
          DataSet = fsvenda
          DataSetName = 'fsvenda'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[fsvenda."MEIO_CHEQUEAP"]')
          ParentFont = False
        end
        object Memo71: TfrxMemoView
          Left = 109.606370000000000000
          Top = 64.503897960000000000
          Width = 86.929190000000000000
          Height = 15.118120000000000000
          DataField = 'MEIO_CARTAODEB'
          DataSet = fsvenda
          DataSetName = 'fsvenda'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[fsvenda."MEIO_CARTAODEB"]')
          ParentFont = False
        end
        object Memo72: TfrxMemoView
          Left = 109.606370000000000000
          Top = 79.866100240000000000
          Width = 86.929190000000000000
          Height = 15.118120000000000000
          DataField = 'MEIO_CARTAOCRED'
          DataSet = fsvenda
          DataSetName = 'fsvenda'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[fsvenda."MEIO_CARTAOCRED"]')
          ParentFont = False
        end
        object Memo83: TfrxMemoView
          Left = 5.559060000000000000
          Top = 95.449099610000000000
          Width = 94.488250000000000000
          Height = 11.338590000000000000
          DataSet = frxDBDataset1
          DataSetName = 'fsvenda_produto'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8W = (
            'Credi'#225'rio:')
          ParentFont = False
        end
        object Memo84: TfrxMemoView
          Left = 110.606370000000000000
          Top = 95.449099610000000000
          Width = 86.929190000000000000
          Height = 15.118120000000000000
          DataField = 'MEIO_CREDIARIO'
          DataSet = fsvenda
          DataSetName = 'fsvenda'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '%2.2n'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = [fsBold]
          HAlign = haRight
          Memo.UTF8W = (
            '[fsvenda."MEIO_CREDIARIO"]')
          ParentFont = False
        end
        object Line8: TfrxLineView
          Left = 461.102660000000000000
          Top = 1.645659529999990000
          Height = 117.543311970000000000
          Color = clBlack
          Frame.Typ = [ftLeft]
          Frame.Width = 0.500000000000000000
        end
        object Line10: TfrxLineView
          Top = 1.000000000000000000
          Width = 733.228820000000000000
          Color = clBlack
          Frame.Typ = [ftTop]
          Frame.Width = 0.500000000000000000
        end
        object Line5: TfrxLineView
          Left = 204.094620000000000000
          Top = 17.763779530000000000
          Height = 101.291338582677000000
          Color = clBlack
          Frame.Typ = [ftLeft]
          Frame.Width = 0.500000000000000000
        end
        object Line13: TfrxLineView
          Left = 642.520100000000000000
          Top = 2.023573230000000000
          Height = 35.905484960000000000
          Color = clBlack
          Frame.Width = 0.500000000000000000
          Diagonal = True
        end
        object Memo2: TfrxMemoView
          Left = 468.661720000000000000
          Top = 106.047310000000000000
          Width = 253.228434330000000000
          Height = 11.338590000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -7
          Font.Name = 'Arial'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            'Assinatura do Cliente')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          Left = 211.653680000000000000
          Top = 22.677180000000000000
          Width = 154.960730000000000000
          Height = 90.708720000000000000
          DataField = 'TEXTO_GRANDE'
          DataSet = frmmodulo.fxrelatorio
          DataSetName = 'fxrelatorio'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Lucida Console'
          Font.Style = []
          Memo.UTF8W = (
            '[fxrelatorio."TEXTO_GRANDE"]')
          ParentFont = False
        end
        object Line25: TfrxLineView
          Left = 733.008350000000000000
          Top = 77.031540000000000000
          Width = -272.126160000000000000
          Color = clBlack
          Frame.Width = 0.500000000000000000
          Diagonal = True
        end
        object Line27: TfrxLineView
          Left = 733.008350000000000000
          Top = 39.236240000000000000
          Width = -272.126160000000000000
          Color = clBlack
          Frame.Width = 0.500000000000000000
          Diagonal = True
        end
        object Line28: TfrxLineView
          Left = 733.008350000000000000
          Top = 20.338590000000000000
          Width = -272.126160000000000000
          Color = clBlack
          Frame.Width = 0.500000000000000000
          Diagonal = True
        end
      end
      object MasterData4: TfrxMasterData
        FillType = ftBrush
        Height = 49.511835430000000000
        Top = 245.669450000000000000
        Width = 733.228820000000000000
        DataSet = frxDBDataset1
        DataSetName = 'fsvenda_produto'
        PrintIfDetailEmpty = True
        RowCount = 28
        Stretched = True
        object Memo27: TfrxMemoView
          Left = 3.779530000000000000
          Top = 1.779529999999990000
          Width = 41.574830000000000000
          Height = 11.338590000000000000
          DataField = 'CODPRODUTO'
          DataSet = frxDBDataset1
          DataSetName = 'fsvenda_produto'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Tahoma'
          Font.Style = []
          Memo.UTF8W = (
            '[fsvenda_produto."CODPRODUTO"]')
          ParentFont = False
        end
        object Memo26: TfrxMemoView
          Left = 60.472480000000000000
          Top = 1.779529999999990000
          Width = 340.157700000000000000
          Height = 11.338590000000000000
          DataField = 'PRODUTO'
          DataSet = frxDBDataset1
          DataSetName = 'fsvenda_produto'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Tahoma'
          Font.Style = []
          Memo.UTF8W = (
            '[fsvenda_produto."PRODUTO"]')
          ParentFont = False
        end
        object Memo30: TfrxMemoView
          Left = 415.748300000000000000
          Top = 1.779529999999990000
          Width = 26.456710000000000000
          Height = 11.338590000000000000
          DataField = 'NUMERACAO'
          DataSet = frxDBDataset1
          DataSetName = 'fsvenda_produto'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Tahoma'
          Font.Style = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[fsvenda_produto."NUMERACAO"]')
          ParentFont = False
        end
        object Memo31: TfrxMemoView
          Left = 459.102660000000000000
          Top = 1.779529999999990000
          Width = 83.149660000000000000
          Height = 11.338590000000000000
          DataField = 'QTDE'
          DataSet = frxDBDataset1
          DataSetName = 'fsvenda_produto'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '###,###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Tahoma'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[fsvenda_produto."QTDE"]')
          ParentFont = False
        end
        object Memo32: TfrxMemoView
          Left = 557.370440000000000000
          Top = 1.779529999999990000
          Width = 83.149660000000000000
          Height = 11.338590000000000000
          DataField = 'UNITARIO'
          DataSet = frxDBDataset1
          DataSetName = 'fsvenda_produto'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '###,###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Tahoma'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[fsvenda_produto."UNITARIO"]')
          ParentFont = False
        end
        object Memo33: TfrxMemoView
          Left = 648.079160000000000000
          Top = 1.779529999999990000
          Width = 83.149660000000000000
          Height = 11.338590000000000000
          DataField = 'TOTAL'
          DataSet = frxDBDataset1
          DataSetName = 'fsvenda_produto'
          DisplayFormat.DecimalSeparator = ','
          DisplayFormat.FormatStr = '###,###,##0.00'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Tahoma'
          Font.Style = []
          HAlign = haRight
          Memo.UTF8W = (
            '[fsvenda_produto."TOTAL"]')
          ParentFont = False
        end
      end
      object Line3: TfrxLineView
        Top = 517.512060000000000000
        Width = 733.228820000000000000
        Color = clBlack
        Diagonal = True
      end
    end
  end
  object fscontasreceber: TfrxDBDataset
    UserName = 'fscontasreceber'
    CloseDataSource = False
    FieldAliases.Strings = (
      'CODIGO=CODIGO'
      'CODVENDEDOR=CODVENDEDOR'
      'CODCAIXA=CODCAIXA'
      'CODCLIENTE=CODCLIENTE'
      'DATA_EMISSAO=DATA_EMISSAO'
      'DATA_VENCIMENTO=DATA_VENCIMENTO'
      'DATA_PAGAMENTO=DATA_PAGAMENTO'
      'VALOR_ORIGINAL=VALOR_ORIGINAL'
      'VALOR_PAGO=VALOR_PAGO'
      'VALOR_JUROS=VALOR_JUROS'
      'VALOR_ATUAL=VALOR_ATUAL'
      'VALOR_DESCONTO=VALOR_DESCONTO'
      'DOCUMENTO=DOCUMENTO'
      'TIPO=TIPO'
      'SITUACAO=SITUACAO'
      'FILTRO=FILTRO'
      'CODVENDA=CODVENDA'
      'NOSSONUMERO=NOSSONUMERO'
      'CODREGIAO=CODREGIAO'
      'cliente=cliente')
    DataSet = qrcontasreceber
    BCDToCurrency = False
    Left = 456
    Top = 48
  end
  object fxdesenhar: TfrxDesigner
    DefaultScriptLanguage = 'PascalScript'
    DefaultFont.Charset = DEFAULT_CHARSET
    DefaultFont.Color = clWindowText
    DefaultFont.Height = -13
    DefaultFont.Name = 'Arial'
    DefaultFont.Style = []
    DefaultLeftMargin = 10.000000000000000000
    DefaultRightMargin = 10.000000000000000000
    DefaultTopMargin = 10.000000000000000000
    DefaultBottomMargin = 10.000000000000000000
    DefaultPaperSize = 9
    DefaultOrientation = poPortrait
    GradientEnd = 11982554
    GradientStart = clWindow
    TemplatesExt = 'fr3'
    Restrictions = []
    RTLLanguage = False
    MemoParentFont = False
    Left = 8
    Top = 8
  end
  object frxDBDataset1: TfrxDBDataset
    UserName = 'fsvenda_produto'
    CloseDataSource = False
    FieldAliases.Strings = (
      'ITEM=ITEM'
      'CODPRODUTO=CODPRODUTO'
      'PRODUTO=PRODUTO'
      'NUMERACAO=NUMERACAO'
      'SERIAL=SERIAL'
      'QTDE=QTDE'
      'UNITARIO=UNITARIO'
      'TOTAL=TOTAL'
      'MIX=MIX'
      'CODGRADE=CODGRADE'
      'CODBARRAS=CODBARRAS'
      'DESCONTO=DESCONTO'
      'ACRESCIMO=ACRESCIMO'
      'TIPO=TIPO')
    DataSet = frmvenda.qrvenda_produto
    BCDToCurrency = False
    Left = 40
    Top = 104
  end
  object fsvenda: TfrxDBDataset
    UserName = 'fsvenda'
    CloseDataSource = False
    FieldAliases.Strings = (
      'CODIGO=CODIGO'
      'CODCAIXA=CODCAIXA'
      'CODVENDEDOR=CODVENDEDOR'
      'DATA=DATA'
      'CODCLIENTE=CODCLIENTE'
      'OBS=OBS'
      'MEIO_DINHEIRO=MEIO_DINHEIRO'
      'MEIO_CHEQUEAV=MEIO_CHEQUEAV'
      'MEIO_CHEQUEAP=MEIO_CHEQUEAP'
      'MEIO_CARTAOCRED=MEIO_CARTAOCRED'
      'MEIO_CARTAODEB=MEIO_CARTAODEB'
      'MEIO_CREDIARIO=MEIO_CREDIARIO'
      'SUBTOTAL=SUBTOTAL'
      'DESCONTO=DESCONTO'
      'ACRESCIMO=ACRESCIMO'
      'TOTAL=TOTAL'
      'CUPOM_FISCAL=CUPOM_FISCAL'
      'NUMERO_CUPOM_FISCAL=NUMERO_CUPOM_FISCAL'
      'RETIRADO=RETIRADO'
      'MEIO_CONVENIO=MEIO_CONVENIO'
      'P5=P5'
      'P3=P3'
      'CLIENTE=cliente'
      'VENDEDOR=vendedor')
    DataSet = qrvenda
    BCDToCurrency = False
    Left = 8
    Top = 72
  end
  object FSCLIENTE: TfrxDBDataset
    UserName = 'FSCLIENTE'
    CloseDataSource = False
    FieldAliases.Strings = (
      'NOME=NOME'
      'CODIGO=CODIGO'
      'CPF=CPF'
      'ENDERECO=ENDERECO'
      'APELIDO=APELIDO'
      'BAIRRO=BAIRRO'
      'CIDADE=CIDADE'
      'UF=UF'
      'CEP=CEP'
      'COMPLEMENTO=COMPLEMENTO'
      'MORADIA=MORADIA'
      'TIPO=TIPO'
      'SITUACAO=SITUACAO'
      'TELEFONE1=TELEFONE1'
      'TELEFONE2=TELEFONE2'
      'TELEFONE3=TELEFONE3'
      'CELULAR=CELULAR'
      'EMAIL=EMAIL'
      'RG=RG'
      'FILIACAO=FILIACAO'
      'ESTADOCIVIL=ESTADOCIVIL'
      'CONJUGE=CONJUGE'
      'PROFISSAO=PROFISSAO'
      'EMPRESA=EMPRESA'
      'RENDA=RENDA'
      'LIMITE=LIMITE'
      'REF1=REF1'
      'REF2=REF2'
      'CODVENDEDOR=CODVENDEDOR'
      'DATA_CADASTRO=DATA_CADASTRO'
      'DATA_ULTIMACOMPRA=DATA_ULTIMACOMPRA'
      'OBS1=OBS1'
      'OBS2=OBS2'
      'OBS3=OBS3'
      'OBS4=OBS4'
      'OBS5=OBS5'
      'OBS6=OBS6'
      'NASCIMENTO=NASCIMENTO'
      'CODREGIAO=CODREGIAO'
      'regiao=regiao'
      'vendedor=vendedor')
    DataSet = frmvenda.qrcliente
    BCDToCurrency = False
    Left = 40
    Top = 72
  end
  object PopupMenu2: TPopupMenu
    Left = 456
    Top = 88
    object Fechar1: TMenuItem
      Caption = 'Fechar'
      ShortCut = 27
      OnClick = bcancelarClick
    end
  end
  object qrvenda: TZQuery
    Connection = frmmodulo.econexao2
    Active = True
    SQL.Strings = (
      'select venda.*,'
      'cli.nome cliente,'
      'vend.nome vendedor'
      'from'
      'c000048 venda,'
      'c000007 cli,'
      'c000008 vend'
      'where '
      'venda.codcliente = cli.codigo and'
      'venda.codvendedor = vend.codigo')
    Params = <>
    Left = 584
    Top = 72
    object qrvendaCODIGO: TWideStringField
      FieldName = 'CODIGO'
      Required = True
      Size = 10
    end
    object qrvendaCODCAIXA: TWideStringField
      FieldName = 'CODCAIXA'
      Size = 6
    end
    object qrvendaCODVENDEDOR: TWideStringField
      FieldName = 'CODVENDEDOR'
      Size = 6
    end
    object qrinventarioDATA: TDateField
      FieldName = 'DATA'
    end
    object qrvendaCODCLIENTE: TWideStringField
      FieldName = 'CODCLIENTE'
      Size = 6
    end
    object qrvendaOBS: TWideStringField
      FieldName = 'OBS'
      Size = 50
    end
    object qrvendaMEIO_DINHEIRO: TFloatField
      FieldName = 'MEIO_DINHEIRO'
    end
    object qrvendaMEIO_CHEQUEAV: TFloatField
      FieldName = 'MEIO_CHEQUEAV'
    end
    object qrvendaMEIO_CHEQUEAP: TFloatField
      FieldName = 'MEIO_CHEQUEAP'
    end
    object qrvendaMEIO_CARTAOCRED: TFloatField
      FieldName = 'MEIO_CARTAOCRED'
    end
    object qrvendaMEIO_CARTAODEB: TFloatField
      FieldName = 'MEIO_CARTAODEB'
    end
    object qrvendaMEIO_CREDIARIO: TFloatField
      FieldName = 'MEIO_CREDIARIO'
    end
    object qrvendaSUBTOTAL: TFloatField
      FieldName = 'SUBTOTAL'
    end
    object qrvendaDESCONTO: TFloatField
      FieldName = 'DESCONTO'
    end
    object qrvendaACRESCIMO: TFloatField
      FieldName = 'ACRESCIMO'
    end
    object qrvendaTOTAL: TFloatField
      FieldName = 'TOTAL'
    end
    object qrvendaCUPOM_FISCAL: TIntegerField
      FieldName = 'CUPOM_FISCAL'
    end
    object qrvendaNUMERO_CUPOM_FISCAL: TWideStringField
      FieldName = 'NUMERO_CUPOM_FISCAL'
      Size = 10
    end
    object qrvendaRETIRADO: TWideStringField
      FieldName = 'RETIRADO'
      Size = 50
    end
    object qrvendaMEIO_CONVENIO: TFloatField
      FieldName = 'MEIO_CONVENIO'
    end
    object qrvendaP5: TFloatField
      FieldName = 'P5'
    end
    object qrvendaP3: TFloatField
      FieldName = 'P3'
    end
    object qrvendaMEIO_FINANCEIRA: TFloatField
      FieldName = 'MEIO_FINANCEIRA'
    end
    object qrvendaCOD_FINANCEIRA: TWideStringField
      FieldName = 'COD_FINANCEIRA'
      Size = 10
    end
    object qrvendaCOD_FINANCEIRA_LANCTO: TWideStringField
      FieldName = 'COD_FINANCEIRA_LANCTO'
      Size = 10
    end
    object qrvendaCOD_FINANCEIRA_LACTO: TWideStringField
      FieldName = 'COD_FINANCEIRA_LACTO'
      Size = 10
    end
    object qrvendaCODCONVENIO: TWideStringField
      FieldName = 'CODCONVENIO'
      Size = 10
    end
    object qrvendaSITUACAO: TIntegerField
      FieldName = 'SITUACAO'
    end
    object qrvendaCODTRANSPORTADOR: TWideStringField
      FieldName = 'CODTRANSPORTADOR'
      Size = 10
    end
    object qrvendaCODVEICULO: TWideStringField
      FieldName = 'CODVEICULO'
      Size = 10
    end
    object qrvendaFRETE_VALOR: TFloatField
      FieldName = 'FRETE_VALOR'
    end
    object qrvendaFRETE_OBS: TWideStringField
      FieldName = 'FRETE_OBS'
      Size = 80
    end
    object qrvendaFRETE_LANCAR: TIntegerField
      FieldName = 'FRETE_LANCAR'
    end
    object qrvendaECF_SERIAL: TWideStringField
      FieldName = 'ECF_SERIAL'
      Size = 30
    end
    object qrvendaCODNFSAIDA: TWideStringField
      FieldName = 'CODNFSAIDA'
      Size = 10
    end
    object qrvendaATACADO_VAREJO: TSmallintField
      FieldName = 'ATACADO_VAREJO'
      Required = True
    end
    object qrvendaNRVENDA: TWideStringField
      FieldName = 'NRVENDA'
      Size = 6
    end
    object qrvendaFILTRO: TIntegerField
      FieldName = 'FILTRO'
    end
    object qrvendaCLIENTE: TWideStringField
      FieldName = 'CLIENTE'
      Size = 80
    end
    object qrvendaVENDEDOR: TWideStringField
      FieldName = 'VENDEDOR'
      Size = 80
    end
  end
  object IBQuery1: TZQuery
    Connection = frmmodulo.econexao2
    Params = <>
    Left = 680
    Top = 72
  end
  object qrcontasreceber: TZQuery
    Connection = frmmodulo.econexao2
    SQL.Strings = (
      'select * from c000049')
    Params = <>
    Left = 616
    Top = 72
  end
  object qrcliente: TZQuery
    Connection = frmmodulo.econexao2
    Params = <>
    Left = 648
    Top = 72
  end
end
