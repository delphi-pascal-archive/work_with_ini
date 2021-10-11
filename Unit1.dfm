object Form1: TForm1
  Left = 241
  Top = 125
  Width = 474
  Height = 468
  Caption = 'Work with INI'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -14
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Icon.Data = {
    0000010001002020100000000000E80200001600000028000000200000004000
    0000010004000000000080020000000000000000000000000000000000000000
    0000000080000080000000808000800000008000800080800000C0C0C0008080
    80000000FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00CCC0
    000CCCC0000000000CCCC7777CCCCCCC0000CCCC00000000CCCC7777CCCCCCCC
    C0000CCCCCCCCCCCCCC7777CCCCC0CCCCC0000CCCCCCCCCCCC7777CCCCC700CC
    C00CCCC0000000000CCCC77CCC77000C0000CCCC00000000CCCC7777C7770000
    00000CCCC000000CCCC777777777C000C00000CCCC0000CCCC77777C777CCC00
    CC00000CCCCCCCCCC77777CC77CCCCC0CCC000CCCCC00CCCCC777CCC7CCCCCCC
    CCCC0CCCCCCCCCCCCCC7CCCCCCCCCCCC0CCCCCCCCCCCCCCCCCCCCCC7CCC70CCC
    00CCCCCCCC0CC0CCCCCCCC77CC7700CC000CCCCCC000000CCCCCC777CC7700CC
    0000CCCC00000000CCCC7777CC7700CC0000C0CCC000000CCC7C7777CC7700CC
    0000C0CCC000000CCC7C7777CC7700CC0000CCCC00000000CCCC7777CC7700CC
    000CCCCCC000000CCCCCC777CC7700CC00CCCCCCCC0CC0CCCCCCCC77CC770CCC
    0CCCCCCCCCCCCCCCCCCCCCC7CCC7CCCCCCCC0CCCCCCCCCCCCCC7CCCCCCCCCCC0
    CCC000CCCCC00CCCCC777CCC7CCCCC00CC00000CCCCCCCCCC77777CC77CCC000
    C00000CCCC0000CCCC77777C777C000000000CCCC000000CCCC777777777000C
    0000CCCC00000000CCCC7777C77700CCC00CCCC0000000000CCCC77CCC770CCC
    CC0000CCCCCCCCCCCC7777CCCCC7CCCCC0000CCCCCCCCCCCCCC7777CCCCCCCCC
    0000CCCC00000000CCCC7777CCCCCCC0000CCCC0000000000CCCC7777CCC0000
    0000000000000000000000000000000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    0000000000000000000000000000000000000000000000000000000000000000
    000000000000000000000000000000000000000000000000000000000000}
  Menu = MainMenu1
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  PixelsPerInch = 120
  TextHeight = 16
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 466
    Height = 416
    ActivePage = TabSheet1
    Align = alClient
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = 'TabSheet1'
      object CheckBox1: TCheckBox
        Left = 8
        Top = 14
        Width = 119
        Height = 21
        Caption = 'CheckBox1'
        TabOrder = 0
      end
      object Edit1: TEdit
        Left = 8
        Top = 40
        Width = 193
        Height = 25
        TabOrder = 1
        Text = 'Edit1'
      end
      object RadioGroup1: TRadioGroup
        Left = 208
        Top = 285
        Width = 233
        Height = 92
        Caption = ' RadioGroup1 '
        ItemIndex = 0
        Items.Strings = (
          'Item1'
          'Item2'
          'Item3')
        TabOrder = 2
      end
      object ListBox1: TListBox
        Left = 8
        Top = 72
        Width = 193
        Height = 241
        Color = clWhite
        ItemHeight = 16
        TabOrder = 3
      end
      object Button1: TButton
        Left = 8
        Top = 320
        Width = 193
        Height = 25
        Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '#1087#1091#1085#1082#1090' '#1074' ListBox1'
        TabOrder = 4
        OnClick = Button1Click
      end
      object Button2: TButton
        Left = 8
        Top = 352
        Width = 193
        Height = 25
        Caption = #1042#1099#1073#1088#1072#1090#1100' '#1096#1088#1080#1092#1090
        TabOrder = 5
        OnClick = Button2Click
      end
      object TrackBar1: TTrackBar
        Left = 208
        Top = 242
        Width = 233
        Height = 31
        Max = 20
        TabOrder = 6
        ThumbLength = 12
      end
      object UpDown1: TUpDown
        Left = 266
        Top = 199
        Width = 20
        Height = 26
        Associate = Edit2
        TabOrder = 7
      end
      object Edit2: TEdit
        Left = 208
        Top = 199
        Width = 58
        Height = 26
        TabOrder = 8
        Text = '0'
      end
      object ColorBox1: TColorBox
        Left = 208
        Top = 40
        Width = 229
        Height = 22
        DefaultColorColor = clBtnFace
        NoneColorColor = clBtnFace
        Selected = clBtnFace
        ItemHeight = 16
        TabOrder = 9
        OnChange = ColorBox1Change
      end
      object Panel1: TPanel
        Left = 208
        Top = 80
        Width = 229
        Height = 106
        BevelOuter = bvLowered
        Caption = 'Color'
        TabOrder = 10
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'TabSheet2'
      ImageIndex = 1
    end
  end
  object MainMenu1: TMainMenu
    Left = 48
    Top = 162
    object File1: TMenuItem
      Caption = 'File'
      object N11: TMenuItem
        AutoCheck = True
        Caption = #1055#1091#1085#1082#1090'1'
      end
      object N21: TMenuItem
        AutoCheck = True
        Caption = #1055#1091#1085#1082#1090'2'
      end
    end
  end
  object FontDialog1: TFontDialog
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    Left = 78
    Top = 162
  end
end
