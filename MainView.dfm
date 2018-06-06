object ViewMain: TViewMain
  Left = 0
  Top = 0
  Caption = 'Spring4D Entity Code Generator'
  ClientHeight = 426
  ClientWidth = 692
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  ScreenSnap = True
  ShowHint = True
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 96
  TextHeight = 13
  object spl1: TSplitter
    Left = 0
    Top = 0
    Height = 407
    ExplicitLeft = 305
    ExplicitHeight = 586
  end
  object pRight: TPanel
    Left = 3
    Top = 0
    Width = 689
    Height = 407
    Align = alClient
    BevelOuter = bvNone
    ShowCaption = False
    TabOrder = 0
    object pProperties: TPanel
      Left = 0
      Top = 0
      Width = 689
      Height = 145
      Align = alTop
      BevelOuter = bvNone
      ShowCaption = False
      TabOrder = 0
      DesignSize = (
        689
        145)
      object edConString: TButtonedEdit
        Left = 6
        Top = 6
        Width = 672
        Height = 21
        Hint = 'Enter Connection String here...'
        Anchors = [akLeft, akTop, akRight]
        Images = ilMain
        ParentShowHint = False
        RightButton.Hint = 'Build Connection String'
        RightButton.ImageIndex = 0
        RightButton.Visible = True
        ShowHint = True
        TabOrder = 0
        TextHint = 'Enter Connection String here...'
        OnRightButtonClick = edConStringRightButtonClick
      end
      object edDbName: TEdit
        Left = 6
        Top = 33
        Width = 219
        Height = 21
        Hint = 'Database Name'
        TabOrder = 1
        TextHint = 'Database Name'
      end
      object edSchemaName: TEdit
        Left = 231
        Top = 33
        Width = 447
        Height = 21
        Hint = 'Default Schema Name'
        Anchors = [akLeft, akTop, akRight]
        TabOrder = 2
        TextHint = 'Default Schema Name'
      end
      object btnExec: TButton
        Left = 572
        Top = 116
        Width = 106
        Height = 23
        Action = aGenerateUnits
        Anchors = [akRight, akBottom]
        TabOrder = 3
      end
      object btnConnect: TButton
        Left = 6
        Top = 87
        Width = 75
        Height = 23
        Caption = 'Connect'
        TabOrder = 4
        OnClick = btnConnectClick
      end
      object edOutputDir: TButtonedEdit
        Left = 6
        Top = 60
        Width = 672
        Height = 21
        Hint = 'Output Directory, e.g. D:\Models'
        Anchors = [akLeft, akTop, akRight]
        Images = ilMain
        LeftButton.Hint = 'Open Directory'
        LeftButton.ImageIndex = 5
        LeftButton.Visible = True
        ParentShowHint = False
        RightButton.Hint = 'Select Directory'
        RightButton.ImageIndex = 1
        RightButton.Visible = True
        ShowHint = True
        TabOrder = 5
        TextHint = 'Output Directory, e.g. D:\Models'
        OnLeftButtonClick = edOutputDirLeftButtonClick
        OnRightButtonClick = edOutputDirRightButtonClick
      end
      object edUnitPrefix: TEdit
        Left = 6
        Top = 116
        Width = 219
        Height = 21
        Hint = 'Unit Prefix, e.g. ORM.Model.'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 6
        TextHint = 'Unit Prefix, e.g. ORM.Model.'
      end
      object cbUseNullableTypes: TCheckBox
        Left = 231
        Top = 118
        Width = 194
        Height = 21
        Caption = 'Use Nullable Type'
        TabOrder = 7
      end
    end
    object vtTables: TVirtualStringTree
      Left = 0
      Top = 145
      Width = 689
      Height = 241
      Align = alClient
      BorderStyle = bsNone
      DrawSelectionMode = smBlendedRectangle
      Header.AutoSizeIndex = 0
      Header.DefaultHeight = 17
      Header.Height = 17
      Header.MainColumn = -1
      PopupMenu = pmTree
      TabOrder = 1
      TreeOptions.MiscOptions = [toCheckSupport, toFullRepaintOnResize, toInitOnSave, toToggleOnDblClick, toWheelPanning]
      TreeOptions.PaintOptions = [toHideFocusRect, toShowButtons, toShowDropmark, toShowRoot, toShowTreeLines, toThemeAware, toUseBlendedImages, toUseBlendedSelection, toUseExplorerTheme, toHideTreeLinesIfThemed]
      OnGetText = vtTablesGetText
      OnInitNode = vtTablesInitNode
      Columns = <>
      WideDefaultText = ''
    end
    object edVstSearch: TButtonedEdit
      Left = 0
      Top = 386
      Width = 689
      Height = 21
      Align = alBottom
      Images = ilMain
      RightButton.ImageIndex = 6
      RightButton.Visible = True
      TabOrder = 2
      TextHint = 'Filter...'
      OnChange = edVstSearchChange
      OnRightButtonClick = edVstSearchRightButtonClick
    end
  end
  object sbBot: TStatusBar
    Left = 0
    Top = 407
    Width = 692
    Height = 19
    Panels = <>
    SimplePanel = True
  end
  object ilMain: TImageList
    ColorDepth = cd32Bit
    Left = 464
    Top = 264
    Bitmap = {
      494C010107000900400010001000FFFFFFFF2110FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000002000000001002000000000000020
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0002000000060000000B000000100000001200000013000000100000000C0000
      0007000000020000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000006060610171717441717
      1744171717441717174417171744171717441717174417171744171717441717
      174417171744171717440404040E000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000020000000C0000
      00190000002500000030000A0D44002D3771000F14500000003A000000320000
      00280000001C0000000F00000003000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000393939972C2C2C702C2C
      2C702C2C2C702C2C2C702C2C2C702C2C2C702C2C2C702C2C2C702C2C2C702C2C
      2C702C2C2C702D2D2D71393939980000000000000000110E0B2A3E2C1F763E2C
      1F763E2C1F763E2C1F763E2C1F763E2C1F763E2C1F763E2C1F763E2C1F763E2C
      1F763524175E1B10092A0000000000000000000000000000000B0000001B0000
      002B0000003B0000004A268798CE40C5DBFF34BCD5FE3595A7D7013541870000
      003F0000002E0000001F0000000F000000010000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000373737940C0C0C260B0B
      0B220B0B0B220B0B0B220B0B0B220B0B0B220B0B0B220B0B0B220B0B0B220B0B
      0B220B0B0B220E0E0E2736363691000000010000000025222065482D1979100C
      0829100C0829100C0829100C0829100C0829100C0829100C0829100C0829100C
      082727232064331E104F0E080316000000000000000000000008000000180000
      002700000036053641803AC5DBFF23C3DAFF19C2DBFF2FC2D9FF4BCBDFFF188D
      A3D6001B21500000001B0000000C000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000023232359101010311111
      11331111113311111133111111331111113311111133111111337D7D7D9BAEAE
      AECA11111133101010312323235700000001000000001D1D1D59301C0E580A07
      0224000000140000001400000014000000140000001400000014000000140000
      00101D1D1D540101000239221158000000000000000000000000000000050000
      00100000001B258EA0C817C2DBFF1CC3DDFF35D2E8FF23C1DAFF0EB8D3FF3ACF
      E2FF37B6CEF60B3A445B00000001000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000022222256000000000000
      000000000000000000000000000000000000000000009B9B9BAFDFDFDFFFCCCC
      CCE600000000000000002121215500000001000000001D1D1D570E09071C2F1C
      0F500000000A0000000A0000000A0000000A0000000A0000000A0000000A0000
      00071D1D1D540000000038211257000000000000000000000000000000000000
      000000090A0F2CC0D8FC19CDE6FF24D1EBFF1FC5E0FF1CC1DBFF1DC6DCFF27BE
      D7FF5BCFE1FE1E7383A000020203000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000002929295B111111111111
      11113737373D777777895D5D5D6915151515BABABAD2DFDFDFFFC5C5C5DF1A1A
      1A1C11111111111111112626265900000001000000001B1B1B5B1C1C1C2E3922
      1165000000140000001400000014000000140000001400000014000000140202
      02151919194B0000000029190D400F0804170000000000000000000000000000
      000000242C393AD2E8FF2ED9F1FF36DAF2FF23CDE8FF15C5DEFF1EC0D8FF51BF
      D1EE09323C4B0000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000868686A6F0F0F0F3DFDF
      DFFBCBB8A9FEC9B2A1FDC7AF9EFDD7D0CBFEE4E4E4FFE1E1E1FCDDDDDDF6DDDD
      DDF6E2E2E2F5F0F0F0F37777779A00000000020202091818184E2D2D2D353721
      115D0000000A0000000A0000000A0000000A0000000A0000000A0000000A0C0C
      0C26111111320000000005020007331E104F0000000000000000000000000000
      0001002C476F4FE2F6FF4EE3F8FF43DCF3FF24D4ECFF19C5DDFF3EB0C3E3011B
      212B000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000021212148C0C0C0DBC1AA
      96FBBAB5B0DAB5B5B5D7B5B5B5D7B39D8DEBCFC8C3F9B5B5B5D7B5B5B5D7BCBC
      BCD5ADADADE2A7A7A7BF1B1B1B3F000000000B0B0B221010103E363636463821
      1164000000140000001400000014000000140000001400000014000000141313
      1341080808190000000000000000372111560000000000000000000000000000
      22510000AAFF2F57B8FF68CFEAFF4BE6FBFF32D7EDFF2B9FB4D40013171E0000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000A29E9CC06A58
      49A0000000030000000B0000000B0000000BA18A78D34A4A4A5D0000000B0000
      00002E2E2E560000000000000000000000001313133A090909213232323B3524
      1654392212603621105C3621105C3621105C3621105C3621105C3621105C4A34
      238D3823125737211055372110554F31187B0000000000000000000B0D121078
      8DB2206EB8FF262BC3FF3A3DCEFF3779BFFE1C71839C00090C0F000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000A8A099CC574A
      3F89000000030000000B0000000B0000000B917B69BF5E5E5E6F000000000000
      00002E2E2E560000000000000000000000001B1B1B5001010116010101164444
      44532C2C2C553636366236363662363636623636366236363662141414321C1C
      1C5B00000000000000000000000000000000000000000000000000080A0D0E66
      7B9C4FD3E9FF6CD4EDFF375FB9FE090972C70000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000828280988A72
      5DC5000000030000000B0000000B160E0A2AB5A194E5181818260000000B0000
      00002E2E2E560000000000000000000000001D1D1D550000000A0000000A4949
      49502222223D5A5A5A925A5A5A925A5A5A925A5A5A925A5A5A925A5A5A926767
      67B4363636550000000000000000000000000000000000000000000001010E4B
      73B60D75ADFF319EBBE942B5CBE8000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000006060607B4AA
      A1E27E644EB0392A1E6156402F84A38B78DA6D6D6D8900000015000000150000
      00002E2E2E560000000000000000000000001D1D1D5600000014000000143434
      3444161616283333335F47474789646464A66B6B6BAA6B6B6BAA6B6B6BAA5252
      528F363636550808080D000000000000000000000000000000000B2D446D2082
      BEFF1978B2FE00121E35001A1F29000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000003232
      325A7F7F7F94A49D97C9999896B94D4D4D600000000B0000000B0000000B0000
      00002E2E2E560000000000000000000000001E1E1E590000000A0000000A0606
      06104343434A50505085686868B55A5A5A8E5A5A5A8E5A5A5A8E5A5A5A8E4E4E
      4E7C3636365500000000000000000000000000000000000B13233183B6F6127D
      C1FF1E5F88C40000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000002525
      25442E2E2E552E2E2E552E2E2E552E2E2E552E2E2E552E2E2E552E2E2E552E2E
      2E55252525440000000000000000000000000D0D0D251D1D1D551D1D1D551D1D
      1D557D7D7D9D4A4A4A743636363D2D2D2D2D2222222222222222212121211111
      11111111111111111111050505050000000000000000042032575092BAFF3485
      B7FF042032540000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000004080E164665991136
      4D79000001010000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000052A364F007295CF002A
      388C0000004200000037000000290000001C0000001100000009000000020000
      0000000000000000000000000000000000000000000002020208000000010000
      00000000000000000000000000000000000000000001020202080303030A0202
      0208000000010000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000002020208000000010000
      00000000000000000000000000000000000000000001020202080303030A0202
      0208000000010000000000000000000000000005090F1FBFF2FC0FB7EBFF008E
      BAF60010153E0000001700000017000000170000001600000015000000130000
      000E00000009000000050000000200000000000000000303030B312D258A4441
      33BB454133BB454133BB454133BB454133BB454133BB444133BB444033BF423D
      31B91817134A0101010200000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000303030A030404110101
      0102000000000000000000000000000000000000000001010102030404110505
      05140304041101010102000000000000000000010101007A9FBA28CAFCFF04B0
      E5FF006583C90001020400000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000221F1960544F40EC4440
      35C25C5543FB332F258A332E2488332E2488332E2488332E2488322E24893F3B
      30B4534E3FEB09090922010101020000000000000000000000000000000B0000
      00190000001A0000001A0000001A0000001A0000001A0000001A0000001A0000
      001A0000001A0000000C00000000000000000000000002020208050505140707
      071A000000030000000000000000000000000000000000000000000000030707
      071A0707071E0707071A010101020000000000000000000E131F0CA9DAEE1DC2
      F5FF00A4D7FF002E3D8E00000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000002D29227E464133C30E0E
      0D33595242F81D1B155200000000000000000000000000000000000000000303
      030C554F40EE2825217703040411000000010000000000000000000000150202
      02430707076B0A0A0A750A0A0A750A0A0A750A0A0A750A0A0A750A0A0A750707
      076B020202450000001800000000000000000000000000000001030404110707
      071E0707071A0000000300000000000000000000000000000000000000000000
      00030707071A0707071E03040411000000010000000000000000002D3C641BBF
      F2FF12BAEEFF0093C1F900121839000000000000000000000000000000000000
      00000000000000000000000000000000000000000000302C2380464032BF0707
      071A3C392DAC464034C300000003000000000000000000000000000000000000
      00003530278F494538D005050514020202080000000000000000000000001515
      1562ABABABD6E9E9E9FFE8E8E8FFE8E8E8FFE8E8E8FFE8E8E8FFE9E9E9FFABAB
      ABD6151515620000000000000000000000000000000000000000010101020707
      071A0707071E0707071A040404250101010D0000000000000000000000000000
      0000000000030707071A0505051402020208000000000000000000000000005C
      78B12ACBFDFF07B2E7FF005874CB000000000000000000000000000000000000
      00000000000000000000000000000000000000000000302C2380474133BF0000
      0003161512465B5444FE14141242000000030000000000000000000000000000
      00000D0C09265E5644FE171612460303030A0000000000000000000000001E1E
      1E6EEBEBEBFFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFE3E3E3FFEBEB
      EBFF1E1E1E6E0000000000000000000000000000000000000000000000000000
      00030707071A0A0A0A391C1D1DE1131414BC0000000900000000000000000000
      00000000000000000003030404110303030A0000000000000000000000000008
      0B140799C7DD20C4F7FF00A8DDFF0027326F0000000000000000000000000000
      00000000000000000000000000000000000000000000302C2380474133BF0000
      000000000003464135C53C392FAC0707071A0000000300000000000000000000
      000000000000433D30B43C392BA4020202080000000000000000000000002222
      226DEEEEEEFFE8E8E8FFE8E8E8FFE8E8E8FFE8E8E8FFE8E8E8FFE8E8E8FFEEEE
      EEFF2222226D0000000000000000000000000000000000000000000000000000
      0000030505211C1D1DE11E2020FF1D1F1FFF131515BB00000009000000000000
      0000000000000000000001010102020202080000000000000000000000000000
      00000018203817B5E7F615BBEFFF008CB8E70005071200000000000000000000
      00000000000000000000000000000000000000000000302C2380474133BF0000
      0000000000001B1B134C595343FA444034C3434034C1444133BB454133BB4541
      33BB454133BB514B3BD85D5544FA080806190000000000000000000000002626
      266CF1F1F1FFEDEDEDFFEDEDEDFFEDEDEDFFEDEDEDFFEDEDEDFFEDEDEDFFF1F1
      F1FF2626266C0000000000000000000000000000000000000000000000000303
      0327181A1AE61A1C1CFF181A1ACB1C1E1EE81D1F1FFF151515C20000000C0000
      0000000000000000000000000000000000010000000000000000000000000000
      0000000000000032426826C8FBFF0BADDFF51128305900000000000000000000
      00000000000000000000000000000000000000000000302C2380474133BF0000
      000000000000000000012F2B2281343026943330279634302694322E2489332E
      2488332E2488332E2488332E248813120E360000000000000000000000002929
      296AF6F6F6FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF2F2F2FFF6F6
      F6FF2929296A0000000000000000000000000000000000000000000000000707
      07461A1B1BF7131414BD0101010D0A0A0A3C1B1E1EE71D1F1FFF151515C20000
      000C000000000000000000000000000000000000000000000000000000000000
      0000000000000000000004455972C8DFE7EC9A9A9DD204040408000000000000
      00000000000000000000000000000000000000000000302C2380474133BF0000
      0000000000000000000029251D6F2D2820782D2A24842E2B248712120F3B0B0A
      0923191712450000000000000000000000000000000000000000000000002B2B
      2B69F9F9F9FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF7F7F7FFF9F9
      F9FF2B2B2B690000000000000000000000000000000000000001000000000000
      0000060606370000000900000000000000030909093A1B1E1EE61D1F1FFF1315
      15C10000000B0000000000000000000000000000000000000000000000000000
      000000000000000000000000000038383869E4E4E6FF4B4B4B94000000000000
      0000000000000B0B0B1A3030308F00000000000000002F2C22834B4636CC1211
      0D3312110D33211E185A5E5645FD4C4637CC4B4636CC35302897100F0E384F4A
      3CDF595241F31714103E00000000000000000000000000000000000000002E2E
      2E68FDFDFDFFFBFBFBFFFBFBFBFFFBFBFBFFFBFBFBFFFBFBFBFFFBFBFBFFFDFD
      FDFF2E2E2E680000000000000000000000000000000002020208010101020000
      000000000000000000000000000000000000000000030A0A0A391B1F1FE5171A
      1AD0020202130000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000007F7C7FBABABABFED4B4B4B790101
      0104000000034E4D4DDF747272FE4A4A4A82000000002F2C24845C5544FF5E56
      44FF5F5745FF5F5745FF423D31B500000000000000000D0B0925514B3DE45952
      42F8595242F85C5442F81B19144B000000000000000000000000000000002A2A
      2A5AC0C0C0D3FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0C0
      C0D32A2A2A5A000000000000000000000000000000000303030A030404110000
      0003000000000000000000000000000000000000000000000003090909360809
      092C0707071A0000000300000000000000000000000000000000000000000000
      0000000000000000000000000000000000000D0D0D1EC4C4C4E4D6D6D6F1817F
      7FF0626060EF9E9D9DFFABAAAAF6353535680000000002020208050505140707
      071A00000003000000000000000000000000000000004B4436C8453F32BD342F
      2895464034C633302793595241F3070605140000000000000000000000001111
      11222B2B2B593333336633333366333333663333336633333366333333662B2B
      2B59111111220000000000000000000000000000000002020208050505140707
      071A000000030000000000000000000000000000000000000000000000030707
      071A0707071E0707071A01010102000000000000000000000000000000000000
      00000000000000000000000000000000000000000000A5A4A5F3F9F9FAFFE9E9
      EAFECFCECFFF404040B400000003000000000000000000000001030404110505
      051403040411010101020000000000000000000000000D0B09240303030A302C
      2380464133C30505051413120F3B000000010000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000001030404110505
      0514030404110101010200000000000000000000000000000000000000000101
      0102030404110505051403040411000000010000000000000000000000000000
      000000000000424242C7444344B64E4E4EB87A797AEB9A9A9AFFFCFCFDFFEAEA
      ECFE979798BE0505050D00000000000000000000000000000000000000010202
      02080303030A020202080000000100000000000000000000000000000000302C
      2380464032BF020202080303030A020202080000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000010202
      02080303030A0202020800000001000000000000000000000000000000000000
      000000000001020202080303030A020202080000000000000000000000000000
      0000000000002121214C555255BE767376E9A3A0A3F0BDBCBDD58E8E8E9F3030
      3036000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000002523
      1B66393429990000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000200000000100010000000000000100000000000000000000
      000000000000000000000000FFFFFF00FFFFFFFFE00700008001FFFF80010000
      8001800380000000800080018001000080008001C0010000BF8C8005F0010000
      80008004F007000080010004E00F000080010006E01F0000C0170000C03F0000
      C037000FC0FF0000C0170007C1FF0000C0170003C1FF0000E017000787FF0000
      E007000187FF0000FFFFFFFF87FF0000801F9F07FFFF9F0700018003FFFF8F83
      03FF8001C00387C183FF83E0C00383E0C1FF81F0E007C0F0E1FF80F0E007E078
      E0FF9078E007F03CF07F9800E007E01EF87F9800E007E00FFC3F9C07E007B207
      FE398003E0079F07FF008181E0078F83FF008780E00787C1FF818380FFFF83E0
      F803C1E0FFFFC1F0F80FFFE7FFFFFFFF00000000000000000000000000000000
      000000000000}
  end
  object pmTree: TPopupMenu
    Images = ilMain
    Left = 184
    Top = 312
    object CheckAll1: TMenuItem
      Action = aCheckAll
    end
    object UncheckAll1: TMenuItem
      Action = aUncheckAll
    end
  end
  object alMain: TActionList
    Images = ilMain
    Left = 392
    Top = 296
    object aCheckAll: TAction
      Caption = 'Check All'
      Hint = 'Check All'
      ImageIndex = 3
      OnExecute = aCheckAllExecute
    end
    object aUncheckAll: TAction
      Caption = 'Uncheck All'
      ImageIndex = 2
      OnExecute = aUncheckAllExecute
    end
    object aGenerateUnits: TAction
      Caption = 'Generate Units'
      Hint = 'Generate Units'
      OnExecute = aGenerateUnitsExecute
      OnUpdate = aGenerateUnitsUpdate
    end
  end
  object SearchTimer: TTimer
    Interval = 500
    OnTimer = SearchTimerRun
    Left = 88
    Top = 312
  end
end
