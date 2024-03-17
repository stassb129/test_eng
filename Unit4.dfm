object Form4: TForm4
  Left = 0
  Top = 0
  Caption = 'Form4'
  ClientHeight = 208
  ClientWidth = 519
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object Edit1: TEdit
    Left = 0
    Top = 32
    Width = 121
    Height = 23
    TabOrder = 0
    Text = 'Edit1'
  end
  object Edit2: TEdit
    Left = 152
    Top = 32
    Width = 121
    Height = 23
    TabOrder = 1
    Text = 'Edit2'
  end
  object Edit3: TEdit
    Left = 312
    Top = 32
    Width = 121
    Height = 23
    TabOrder = 2
    Text = 'Edit3'
  end
  object Button1: TButton
    Left = 184
    Top = 104
    Width = 75
    Height = 25
    Caption = #1087#1088#1086#1076#1086#1083#1078#1080#1090#1100
    TabOrder = 3
    OnClick = Button1Click
  end
  object ADOConnection1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=C:\Users\XE\Desktop' +
      '\test_eng\'#1073#1076'\'#1088#1077#1075#1080#1089#1090#1088#1072#1094#1080#1103'.mdb;Persist Security Info=False'
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 384
    Top = 112
  end
  object ADOQuery1: TADOQuery
    Connection = ADOConnection1
    Parameters = <>
    Left = 456
    Top = 88
  end
end
