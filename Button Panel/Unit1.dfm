object Form1: TForm1
  Left = 232
  Top = 126
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Button Panel'
  ClientHeight = 385
  ClientWidth = 393
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -14
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnCreate = FormCreate
  PixelsPerInch = 120
  TextHeight = 16
  object LB1: TLabel
    Left = 49
    Top = 69
    Width = 28
    Height = 26
    Caption = '***'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -23
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Panel1: TPanel
    Left = 33
    Top = 110
    Width = 328
    Height = 248
    Caption = 'Button Panel'
    Color = 14417356
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -23
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
    TabOrder = 0
    object LB2: TLabel
      Left = 20
      Top = 69
      Width = 28
      Height = 26
      Caption = '***'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -23
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object BP4: TPanel
      Tag = 4
      Left = 20
      Top = 20
      Width = 80
      Height = 30
      Caption = 'Msg 3'
      Color = 9829312
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -17
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnClick = BP4Click
    end
    object BP5: TPanel
      Tag = 5
      Left = 128
      Top = 20
      Width = 80
      Height = 30
      Caption = 'Msg 4'
      Color = 15710447
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlue
      Font.Height = -17
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnClick = BP5Click
    end
  end
  object BP1: TPanel
    Tag = 1
    Left = 30
    Top = 20
    Width = 89
    Height = 30
    Caption = 'Msg 1'
    Color = 8454143
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    OnClick = BP1Click
  end
  object BP2: TPanel
    Tag = 2
    Left = 154
    Top = 20
    Width = 90
    Height = 30
    Caption = 'Msg 2'
    Color = 16448199
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    OnClick = BP2Click
  end
  object BP3: TPanel
    Tag = 3
    Left = 272
    Top = 20
    Width = 90
    Height = 30
    Caption = 'Quitter'
    Color = 5163744
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'MS Sans Serif'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
    OnClick = BP3Click
  end
end
