object Form11: TForm11
  Left = 0
  Top = 0
  Caption = #1040#1074#1090#1086#1088#1080#1079#1072#1094#1080#1103
  ClientHeight = 265
  ClientWidth = 338
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 8
    Top = 8
    Width = 321
    Height = 249
    TabOrder = 0
    object Label1: TLabel
      Left = 80
      Top = 0
      Width = 157
      Height = 32
      Caption = #1040#1074#1090#1086#1088#1080#1079#1072#1094#1080#1103
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -24
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 56
      Top = 45
      Width = 46
      Height = 21
      Caption = #1051#1086#1075#1080#1085
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clGray
      Font.Height = -16
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 56
      Top = 113
      Width = 57
      Height = 21
      Caption = #1055#1072#1088#1086#1083#1100
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clGray
      Font.Height = -16
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Edit1: TEdit
      Left = 56
      Top = 72
      Width = 217
      Height = 21
      TabOrder = 0
    end
    object Edit2: TEdit
      Left = 56
      Top = 140
      Width = 217
      Height = 21
      TabOrder = 1
    end
    object Button1: TButton
      Left = 56
      Top = 192
      Width = 217
      Height = 41
      Caption = #1042#1086#1081#1090#1080
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      OnClick = Button1Click
    end
  end
  object MainMenu1: TMainMenu
    Left = 328
    Top = 56
    object N1: TMenuItem
      Caption = #1042#1099#1093#1086#1076
      OnClick = N1Click
    end
  end
end
