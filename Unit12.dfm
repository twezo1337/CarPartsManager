object Form12: TForm12
  Left = 0
  Top = 0
  Caption = #1050#1086#1088#1079#1080#1085#1072
  ClientHeight = 667
  ClientWidth = 1106
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label8: TLabel
    Left = 886
    Top = 179
    Width = 51
    Height = 25
    Caption = #1062#1077#1085#1072':'
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clGray
    Font.Height = -19
    Font.Name = 'Segoe UI Semibold'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object DBCtrlGrid1: TDBCtrlGrid
    Left = 0
    Top = 48
    Width = 1106
    Height = 619
    Align = alBottom
    DataSource = DataModule2.DS_Q_v_user_basket
    PanelHeight = 206
    PanelWidth = 1089
    TabOrder = 0
    SelectedColor = clWhite
    object DBText1: TDBText
      Left = 336
      Top = 16
      Width = 529
      Height = 25
      DataField = 'gcName'
      DataSource = DataModule2.DS_Q_v_user_basket
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label9: TLabel
      Left = 336
      Top = 57
      Width = 62
      Height = 21
      Caption = #1040#1088#1090#1080#1082#1091#1083':'
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clGray
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TLabel
      Left = 336
      Top = 95
      Width = 76
      Height = 21
      Caption = #1050#1072#1090#1077#1075#1086#1088#1080#1103':'
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clGray
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object DBText9: TDBText
      Left = 426
      Top = 57
      Width = 87
      Height = 21
      DataField = 'Articul'
      DataSource = DataModule2.DS_Q_v_user_basket
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object DBText4: TDBText
      Left = 426
      Top = 95
      Width = 153
      Height = 21
      DataField = 'tgName'
      DataSource = DataModule2.DS_Q_v_user_basket
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TLabel
      Left = 574
      Top = 60
      Width = 43
      Height = 17
      Caption = #1052#1072#1088#1082#1072':'
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clGray
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TLabel
      Left = 574
      Top = 83
      Width = 51
      Height = 17
      Caption = #1052#1086#1076#1077#1083#1100':'
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clGray
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object Label6: TLabel
      Left = 574
      Top = 106
      Width = 69
      Height = 17
      Caption = #1055#1086#1082#1086#1083#1077#1085#1080#1077':'
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clGray
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object DBText3: TDBText
      Left = 656
      Top = 60
      Width = 125
      Height = 17
      DataField = 'markName'
      DataSource = DataModule2.DS_Q_v_user_basket
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object DBText5: TDBText
      Left = 656
      Top = 83
      Width = 125
      Height = 17
      DataField = 'modelName'
      DataSource = DataModule2.DS_Q_v_user_basket
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
    end
    object DBText6: TDBText
      Left = 656
      Top = 106
      Width = 125
      Height = 38
      DataField = 'genName'
      DataSource = DataModule2.DS_Q_v_user_basket
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI'
      Font.Style = []
      ParentFont = False
      WordWrap = True
    end
    object Label1: TLabel
      Left = 886
      Top = 77
      Width = 51
      Height = 25
      Caption = #1062#1077#1085#1072':'
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clGray
      Font.Height = -19
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBText8: TDBText
      Left = 943
      Top = 77
      Width = 86
      Height = 25
      DataField = 'gcCost'
      DataSource = DataModule2.DS_Q_v_user_basket
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label10: TLabel
      Left = 1035
      Top = 77
      Width = 37
      Height = 25
      Caption = #1056#1091#1073'.'
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBImage1: TDBImage
      Left = 0
      Top = 0
      Width = 305
      Height = 201
      DataField = 'gcPhoto'
      DataSource = DataModule2.DS_Q_v_user_basket
      Proportional = True
      TabOrder = 0
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1106
    Height = 49
    Align = alTop
    TabOrder = 1
    object Label5: TLabel
      Left = 856
      Top = 15
      Width = 90
      Height = 17
      Caption = #1055#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1100':'
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label7: TLabel
      Left = 952
      Top = 15
      Width = 38
      Height = 17
      Caption = 'Label7'
      Font.Charset = RUSSIAN_CHARSET
      Font.Color = clGray
      Font.Height = -13
      Font.Name = 'Segoe UI Semibold'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Button1: TButton
      Left = 8
      Top = 12
      Width = 121
      Height = 27
      Caption = #1054#1092#1086#1088#1084#1080#1090#1100' '#1079#1072#1082#1072#1079
      TabOrder = 0
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 152
      Top = 12
      Width = 121
      Height = 27
      Caption = #1059#1076#1072#1083#1080#1090#1100' '#1090#1086#1074#1072#1088
      TabOrder = 1
      OnClick = Button2Click
    end
  end
  object MainMenu1: TMainMenu
    Left = 1072
    Top = 16
    object N1: TMenuItem
      Caption = #1042#1099#1093#1086#1076
      OnClick = N1Click
    end
  end
end
