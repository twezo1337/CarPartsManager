object Form3: TForm3
  Left = 0
  Top = 0
  Caption = #1059#1087#1088#1072#1074#1083#1077#1085#1080#1077' '#1084#1072#1075#1072#1079#1080#1085#1086#1084
  ClientHeight = 585
  ClientWidth = 872
  Color = clWindow
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 872
    Height = 585
    ActivePage = TabSheet2
    Align = alClient
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = #1057#1086#1089#1090#1086#1103#1085#1080#1077' '#1089#1082#1083#1072#1076#1072
      object DBGrid1: TDBGrid
        Left = 0
        Top = 65
        Width = 864
        Height = 501
        Align = alTop
        Color = clHotLight
        DataSource = DataModule2.DS_Q_v_storage
        FixedColor = clActiveCaption
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'IDstorage'
            Title.Caption = #1053#1086#1084#1077#1088
            Width = 25
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'gcName'
            Title.Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
            Width = 200
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Articul'
            Title.Caption = #1040#1088#1090#1080#1082#1091#1083
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'tgName'
            Title.Caption = #1050#1072#1090#1077#1075#1086#1088#1080#1103
            Width = 120
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'markName'
            Title.Caption = #1052#1072#1088#1082#1072' '#1072#1074#1090#1086
            Width = 100
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'modelName'
            Title.Caption = #1052#1086#1076#1077#1083#1100' '#1072#1074#1090#1086
            Width = 100
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'genName'
            Title.Caption = #1055#1086#1082#1086#1083#1077#1085#1080#1077
            Width = 170
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'sCount'
            Title.Caption = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086
            Width = 40
            Visible = True
          end>
      end
      object Panel2: TPanel
        Left = 0
        Top = 0
        Width = 864
        Height = 65
        Align = alTop
        TabOrder = 1
        object Label2: TLabel
          Left = 0
          Top = 16
          Width = 143
          Height = 13
          Caption = #1042#1099#1073#1086#1088' '#1079#1072#1087#1080#1089#1077#1081' '#1089#1086#1076#1077#1088#1078#1072#1097#1080#1093
        end
        object E_Filter: TEdit
          Left = 151
          Top = 16
          Width = 362
          Height = 21
          TabOrder = 0
          TextHint = #1042#1074#1077#1076#1080#1090#1077' '#1092#1088#1072#1075#1084#1077#1085#1090' '#1085#1072#1079#1074#1072#1085#1080#1103' '#1090#1086#1074#1072#1088#1072' '#1080#1083#1080' '#1077#1075#1086' '#1090#1080#1087#1072' '#1080#1083#1080' '#1084#1072#1088#1082#1080' '#1072#1074#1090#1086
          OnChange = E_FilterChange
        end
        object GroupBox2: TGroupBox
          Left = 536
          Top = 0
          Width = 321
          Height = 59
          Caption = #1060#1080#1083#1100#1090#1088#1072#1094#1080#1103' '#1087#1086' '#1082#1086#1083#1080#1095#1077#1089#1090#1074#1091
          TabOrder = 1
          object Label4: TLabel
            Left = 8
            Top = 16
            Width = 42
            Height = 13
            Caption = #1059#1089#1083#1086#1074#1080#1077
          end
          object Label5: TLabel
            Left = 128
            Top = 16
            Width = 48
            Height = 13
            Caption = #1047#1085#1072#1095#1077#1085#1080#1077
          end
          object ComboBox1: TComboBox
            Left = 56
            Top = 13
            Width = 57
            Height = 21
            TabOrder = 0
            Text = '>'
            OnChange = ComboBox1Change
            Items.Strings = (
              '>'
              '>='
              '='
              '<>'
              '<'
              '<=')
          end
          object SpinEdit1: TSpinEdit
            Left = 182
            Top = 13
            Width = 59
            Height = 22
            MaxValue = 0
            MinValue = 0
            TabOrder = 1
            Value = 0
            OnChange = SpinEdit1Change
          end
          object ChkCountFilter: TCheckBox
            Left = 247
            Top = 15
            Width = 66
            Height = 17
            Caption = #1042#1082#1083#1102#1095#1080#1090#1100
            TabOrder = 2
            OnClick = ChkCountFilterClick
          end
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = #1054#1087#1077#1088#1072#1094#1080#1080
      ImageIndex = 1
      object Label1: TLabel
        Left = 0
        Top = 240
        Width = 864
        Height = 13
        Align = alBottom
        Alignment = taCenter
        Caption = #1057#1086#1089#1090#1072#1074' '#1086#1087#1077#1088#1072#1094#1080#1080
        ExplicitWidth = 87
      end
      object DBGrid2: TDBGrid
        AlignWithMargins = True
        Left = 3
        Top = 52
        Width = 858
        Height = 178
        Align = alTop
        DataSource = DataModule2.DS_Q_v_goods_operations
        PopupMenu = PopupMenu1
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'IDoperation'
            Title.Caption = #8470
            Width = 25
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'oDateTime'
            Title.Caption = #1044#1072#1090#1072
            Width = 125
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'opType'
            Title.Caption = #1058#1080#1087
            Width = 150
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'oFullCost'
            Title.Caption = #1055#1086#1083#1085#1072#1103' '#1094#1077#1085#1072
            Width = 250
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'scName'
            Title.Caption = #1048#1084#1103' '#1087#1086#1089#1090#1072#1074#1097#1080#1082#1072
            Width = 270
            Visible = True
          end>
      end
      object DBGrid3: TDBGrid
        AlignWithMargins = True
        Left = 3
        Top = 256
        Width = 858
        Height = 298
        Align = alBottom
        DataSource = DataModule2.DS_Q_v_operation_goods_list
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'tgName'
            Title.Caption = #1050#1072#1090#1077#1075#1086#1088#1080#1103
            Width = 126
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'markName'
            Title.Caption = #1052#1072#1088#1082#1072' '#1072#1074#1090#1086
            Width = 107
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'gcName'
            Title.Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
            Width = 357
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ocCount'
            Title.Caption = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086
            Width = 80
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'gcCost'
            Title.Caption = #1057#1090#1086#1080#1084#1086#1089#1090#1100
            Width = 65
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ogcFCost'
            Title.Caption = #1054#1073#1097#1072#1103' '#1089#1090#1086#1080#1084#1086#1089#1090#1100
            Width = 97
            Visible = True
          end>
      end
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 864
        Height = 49
        Align = alTop
        TabOrder = 2
        object RadioGroup1: TRadioGroup
          Left = 3
          Top = 0
          Width = 342
          Height = 46
          Caption = #1042#1099#1073#1086#1088' '#1086#1087#1077#1088#1072#1094#1080#1080
          Columns = 3
          ItemIndex = 0
          Items.Strings = (
            #1042#1089#1077' '#1086#1087#1077#1088#1072#1094#1080#1080
            #1055#1088#1086#1076#1072#1078#1080
            #1055#1086#1089#1090#1072#1074#1082#1080)
          TabOrder = 0
          OnClick = RadioGroup1Click
        end
        object GroupBox1: TGroupBox
          Left = 384
          Top = 0
          Width = 329
          Height = 46
          Caption = #1060#1080#1083#1100#1090#1088' '#1087#1086' '#1076#1072#1090#1077
          TabOrder = 1
          object Label3: TLabel
            Left = 210
            Top = 16
            Width = 12
            Height = 13
            Caption = #1087#1086
          end
          object CheckBox1: TCheckBox
            Left = 3
            Top = 3
            Width = 94
            Height = 40
            Caption = #1054#1090#1086#1073#1088#1072#1079#1080#1090#1100' '#1089
            TabOrder = 0
            OnClick = CheckBox1Click
          end
          object DateTimePicker1: TDateTimePicker
            Left = 103
            Top = 16
            Width = 101
            Height = 21
            Date = 44916.000000000000000000
            Time = 0.961896990738750900
            TabOrder = 1
            OnChange = DateTimePicker1Change
          end
          object DateTimePicker2: TDateTimePicker
            Left = 228
            Top = 16
            Width = 98
            Height = 21
            Date = 44916.000000000000000000
            Time = 0.962212233796890400
            TabOrder = 2
            OnChange = DateTimePicker2Change
          end
        end
      end
    end
  end
  object MainMenu1: TMainMenu
    Left = 804
    Top = 520
    object d1: TMenuItem
      Caption = #1042#1099#1093#1086#1076
      OnClick = d1Click
    end
    object N1: TMenuItem
      Caption = #1055#1086#1089#1090#1072#1074#1097#1080#1082#1080
      OnClick = N1Click
    end
    object N2: TMenuItem
      Caption = #1059#1087#1088#1072#1074#1083#1077#1085#1080#1077' '#1090#1086#1074#1072#1088#1072#1084#1080
      OnClick = N2Click
    end
    object N3: TMenuItem
      Caption = #1040#1085#1072#1083#1080#1090#1080#1095#1077#1089#1082#1080#1077' '#1076#1072#1085#1085#1099#1077
      object N4: TMenuItem
        Caption = #1043#1088#1072#1092#1080#1082#1080
        OnClick = N4Click
      end
      object N5: TMenuItem
        Caption = #1054#1090#1095#1077#1090' "'#1050#1072#1090#1072#1083#1086#1075' '#1090#1086#1074#1072#1088#1086#1074'"'
        OnClick = N5Click
      end
      object N6: TMenuItem
        Caption = #1054#1090#1095#1077#1090' "'#1069#1090#1080#1082#1077#1090#1082#1072'"'
        OnClick = N6Click
      end
      object N7: TMenuItem
        Caption = #1054#1090#1095#1077#1090' '#1087#1086' '#1086#1087#1077#1088#1072#1094#1080#1103#1084
        OnClick = N7Click
      end
      object N8: TMenuItem
        Caption = #1054#1090#1095#1077#1090' '#1086' '#1089#1082#1083#1072#1076#1089#1082#1080#1093' '#1079#1072#1087#1072#1089#1072#1093
        OnClick = N8Click
      end
    end
  end
  object PopupMenu1: TPopupMenu
    Left = 804
    Top = 192
    object PM_add_sale: TMenuItem
      Caption = #1054#1092#1086#1088#1084#1080#1090#1100' '#1087#1088#1086#1076#1072#1078#1091
      OnClick = PM_add_saleClick
    end
    object PM_add_supply: TMenuItem
      Caption = #1054#1092#1086#1088#1084#1080#1090#1100' '#1087#1086#1089#1090#1072#1074#1082#1091
      OnClick = PM_add_supplyClick
    end
    object PM_Edit_Operation: TMenuItem
      Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100' '#1086#1087#1077#1088#1072#1094#1080#1102
      OnClick = PM_Edit_OperationClick
    end
  end
end
