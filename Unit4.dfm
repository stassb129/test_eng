object Form4: TForm4
  Tag = 900
  Left = 450
  Top = 250
  Align = alCustom
  Caption = 'Form4'
  ClientHeight = 173
  ClientWidth = 493
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poDesigned
  TextHeight = 15
  object Label1: TLabel
    Left = 48
    Top = 101
    Width = 72
    Height = 15
    Caption = '*'#1074#1074#1077#1076#1080#1090#1077' '#1080#1084#1103
    Color = clSilver
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clGray
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentColor = False
    ParentFont = False
  end
  object Label2: TLabel
    Left = 194
    Top = 101
    Width = 105
    Height = 15
    Caption = '*'#1074#1074#1077#1076#1080#1090#1077' '#1092#1072#1084#1080#1083#1080#1102
    Color = clSilver
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clGray
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentColor = False
    ParentFont = False
  end
  object Label3: TLabel
    Left = 320
    Top = 101
    Width = 157
    Height = 15
    Caption = '*'#1074#1074#1077#1076#1080#1090#1077' '#1089#1077#1075#1086#1076#1085#1103#1096#1085#1102#1102' '#1076#1072#1090#1091
    Color = clActiveBorder
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clGray
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentColor = False
    ParentFont = False
  end
  object Label4: TLabel
    Left = 215
    Top = 9
    Width = 57
    Height = 24
    Caption = #1042#1061#1054#1044
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label5: TLabel
    Left = 381
    Top = 39
    Width = 96
    Height = 15
    Caption = '*'#1074#1093#1086#1076' '#1076#1083#1103' '#1072#1076#1084#1080#1085#1072
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clGray
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object Edit1: TEdit
    Left = 24
    Top = 72
    Width = 121
    Height = 23
    TabOrder = 0
  end
  object Edit2: TEdit
    Left = 185
    Top = 72
    Width = 121
    Height = 23
    TabOrder = 1
  end
  object Edit3: TEdit
    Left = 340
    Top = 72
    Width = 121
    Height = 23
    TabOrder = 2
  end
  object Button1: TButton
    Left = 208
    Top = 128
    Width = 92
    Height = 30
    Caption = #1087#1088#1086#1076#1086#1083#1078#1080#1090#1100
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentFont = False
    TabOrder = 3
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 400
    Top = 8
    Width = 61
    Height = 25
    Caption = #1040#1076#1084#1080#1085
    TabOrder = 4
    OnClick = Button2Click
  end
  object ADOConnection1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=C:\Users\XE\Desktop' +
      '\test_eng\'#1073#1076'\'#1088#1077#1075#1080#1089#1090#1088#1072#1094#1080#1103'.mdb;Persist Security Info=False'
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 416
    Top = 136
  end
  object ADOQuery1: TADOQuery
    Connection = ADOConnection1
    Parameters = <>
    Left = 448
    Top = 136
  end
end
