object Form5: TForm5
  Left = 0
  Top = 0
  Caption = #1056#1072#1073#1086#1090#1072' '#1089' '#1090#1086#1074#1072#1088#1072#1084#1080
  ClientHeight = 583
  ClientWidth = 904
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 904
    Height = 315
    ActivePage = TabSheet2
    Align = alClient
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = #1050#1072#1090#1072#1083#1086#1075' '#1090#1086#1074#1072#1088#1086#1074
      object Label1: TLabel
        Left = 0
        Top = 163
        Width = 896
        Height = 13
        Align = alBottom
        Caption = #1054#1087#1080#1089#1072#1085#1080#1077':'
        ExplicitTop = 150
        ExplicitWidth = 53
      end
      object DBText1: TDBText
        AlignWithMargins = True
        Left = 3
        Top = 179
        Width = 890
        Height = 13
        Align = alBottom
        AutoSize = True
        DataField = 'gcDesription'
        DataSource = DataModule2.DS_T_goods_catalog
        WordWrap = True
        ExplicitTop = 166
        ExplicitWidth = 373
      end
      object DBGrid1: TDBGrid
        Left = 0
        Top = 0
        Width = 545
        Height = 163
        Align = alLeft
        DataSource = DataModule2.DS_Q_v_goods_catalog
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'IDgc'
            Title.Caption = #8470
            Width = 25
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'tgName'
            Title.Caption = #1050#1072#1090#1077#1075#1086#1088#1080#1103
            Width = 125
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'gcName'
            Title.Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
            Width = 190
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'markName'
            Title.Caption = #1052#1072#1088#1082#1072
            Width = 100
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'modelName'
            Title.Caption = #1052#1086#1076#1077#1083#1100
            Width = 80
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'Articul'
            Title.Caption = #1040#1088#1090#1080#1082#1091#1083
            Width = 70
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'gcCost'
            Title.Caption = #1062#1077#1085#1072
            Visible = True
          end>
      end
      object InsertEditDeletePanel: TPanel
        Left = 0
        Top = 195
        Width = 896
        Height = 92
        Align = alBottom
        TabOrder = 1
        object InsertButton: TButton
          Left = 3
          Top = 16
          Width = 106
          Height = 41
          Caption = #1042#1089#1090#1072#1074#1080#1090#1100
          TabOrder = 0
          OnClick = InsertButtonClick
        end
        object DeleteButton: TButton
          Left = 259
          Top = 16
          Width = 106
          Height = 41
          Caption = #1059#1076#1072#1083#1080#1090#1100
          TabOrder = 1
          OnClick = DeleteButtonClick
        end
        object EditButton: TButton
          Left = 131
          Top = 16
          Width = 106
          Height = 41
          Caption = #1048#1079#1084#1077#1085#1080#1090#1100
          TabOrder = 2
          OnClick = EditButtonClick
        end
        object E_dFormat: TEdit
          Left = 417
          Top = 16
          Width = 64
          Height = 21
          TabOrder = 3
          Text = '#.00 '#8381
        end
        object B_setFormat: TButton
          Left = 487
          Top = 16
          Width = 114
          Height = 41
          Caption = #1055#1088#1080#1084#1077#1085#1080#1090#1100' '#1092#1086#1088#1084#1072#1090
          TabOrder = 4
          OnClick = B_setFormatClick
        end
        object GroupBox1: TGroupBox
          Left = 616
          Top = 3
          Width = 277
          Height = 74
          Caption = #1060#1080#1083#1100#1090#1088' '#1087#1086' '#1094#1077#1085#1077
          TabOrder = 5
          object Label7: TLabel
            Left = 3
            Top = 21
            Width = 42
            Height = 13
            Caption = #1059#1089#1083#1086#1074#1080#1077
          end
          object Label8: TLabel
            Left = 103
            Top = 20
            Width = 48
            Height = 13
            Caption = #1047#1085#1072#1095#1077#1085#1080#1077
          end
          object ComboCostCondition: TComboBox
            Left = 3
            Top = 40
            Width = 78
            Height = 21
            ItemIndex = 0
            TabOrder = 0
            Text = '>'
            OnChange = ComboCostConditionChange
            Items.Strings = (
              '>'
              '>='
              '='
              '<>'
              '<'
              '<=')
          end
          object SpinCostValue: TSpinEdit
            Left = 103
            Top = 40
            Width = 73
            Height = 22
            MaxValue = 0
            MinValue = 0
            TabOrder = 1
            Value = 0
            OnChange = SpinCostValueChange
          end
          object ChkCostFilter: TCheckBox
            Left = 198
            Top = 42
            Width = 81
            Height = 17
            Caption = #1042#1082#1083#1102#1095#1080#1090#1100
            TabOrder = 2
            OnClick = ChkCostFilterClick
          end
        end
      end
      object Goods_Image: TDBImage
        AlignWithMargins = True
        Left = 544
        Top = 3
        Width = 349
        Height = 157
        Align = alRight
        DataField = 'gcPhoto'
        DataSource = DataModule2.DS_T_goods_catalog
        Proportional = True
        Stretch = True
        TabOrder = 2
      end
    end
    object TabSheet2: TTabSheet
      Caption = #1057#1087#1080#1089#1086#1082' '#1072#1074#1090#1086#1084#1086#1073#1080#1083#1077#1081
      ImageIndex = 1
      object DBGrid2: TDBGrid
        Left = 0
        Top = 0
        Width = 896
        Height = 284
        Align = alTop
        DataSource = DataModule2.DS_Q_v_cars_list
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'markName'
            Title.Caption = #1052#1072#1088#1082#1072
            Width = 160
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'modelName'
            Title.Caption = #1052#1086#1076#1077#1083#1100
            Width = 160
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'genName'
            Title.Caption = #1055#1086#1082#1086#1083#1077#1085#1080#1077
            Width = 220
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'transName'
            Title.Caption = #1058#1088#1072#1085#1089#1084#1080#1089#1089#1080#1103
            Width = 320
            Visible = True
          end>
      end
    end
  end
  object PanelToInputValues: TPanel
    Left = 0
    Top = 315
    Width = 904
    Height = 268
    Align = alBottom
    TabOrder = 1
    Visible = False
    object Label2: TLabel
      Left = 7
      Top = 158
      Width = 57
      Height = 13
      Caption = #1058#1080#1087' '#1090#1086#1074#1072#1088#1072
    end
    object Label3: TLabel
      Left = 453
      Top = 158
      Width = 73
      Height = 13
      Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077
    end
    object Label4: TLabel
      Left = 728
      Top = 158
      Width = 26
      Height = 13
      Caption = #1062#1077#1085#1072
    end
    object Label5: TLabel
      Left = 7
      Top = 204
      Width = 49
      Height = 13
      Caption = #1054#1087#1080#1089#1072#1085#1080#1077
    end
    object Label6: TLabel
      Left = 263
      Top = 158
      Width = 66
      Height = 13
      Caption = #1052#1086#1076#1077#1083#1100' '#1072#1074#1090#1086
    end
    object Label9: TLabel
      Left = 453
      Top = 204
      Width = 43
      Height = 13
      Caption = #1040#1088#1090#1080#1082#1091#1083
    end
    object DBLookupComboBox1: TDBLookupComboBox
      Left = 7
      Top = 177
      Width = 250
      Height = 21
      DataField = 'IDtg'
      DataSource = DataModule2.DS_T_goods_catalog
      KeyField = 'IDtg'
      ListField = 'tgName'
      ListSource = DataModule2.DS_T_type_goods
      TabOrder = 0
    end
    object DBEdit1: TDBEdit
      Left = 453
      Top = 177
      Width = 269
      Height = 21
      DataField = 'gcName'
      DataSource = DataModule2.DS_T_goods_catalog
      TabOrder = 1
    end
    object DBEdit2: TDBEdit
      Left = 728
      Top = 177
      Width = 169
      Height = 21
      DataField = 'gcCost'
      DataSource = DataModule2.DS_T_goods_catalog
      TabOrder = 2
    end
    object DBEdit3: TDBEdit
      Left = 79
      Top = 204
      Width = 368
      Height = 21
      DataField = 'gcDesription'
      DataSource = DataModule2.DS_T_goods_catalog
      TabOrder = 3
    end
    object CancelButton: TButton
      Left = 782
      Top = 204
      Width = 114
      Height = 37
      Caption = #1054#1090#1084#1077#1085#1080#1090#1100
      TabOrder = 4
      OnClick = CancelButtonClick
    end
    object Button2: TButton
      Left = 662
      Top = 204
      Width = 114
      Height = 37
      Caption = #1047#1072#1087#1086#1084#1085#1080#1090#1100
      TabOrder = 5
      OnClick = Button2Click
    end
    object B_SetImage: TButton
      Left = 7
      Top = 231
      Width = 186
      Height = 25
      Caption = #1053#1072#1079#1085#1072#1095#1080#1090#1100' '#1082#1072#1088#1090#1080#1085#1082#1091
      TabOrder = 6
      OnClick = B_SetImageClick
    end
    object B_ClearImage: TButton
      Left = 199
      Top = 231
      Width = 186
      Height = 25
      Caption = #1054#1095#1080#1089#1090#1080#1090#1100' '#1082#1072#1088#1090#1080#1085#1082#1091
      TabOrder = 7
      OnClick = B_ClearImageClick
    end
    object DBGrid3: TDBGrid
      Left = 1
      Top = 1
      Width = 902
      Height = 151
      Align = alTop
      DataSource = DataModule2.DS_Q_v_cars_list
      TabOrder = 8
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'IDcar'
          Title.Caption = #1053#1086#1084#1077#1088
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'markName'
          Title.Caption = #1052#1072#1088#1082#1072
          Width = 150
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'modelName'
          Title.Caption = #1052#1086#1076#1077#1083#1100
          Width = 150
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'genName'
          Title.Caption = #1055#1086#1082#1086#1083#1077#1085#1080#1077
          Width = 200
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'transName'
          Title.Caption = #1058#1088#1072#1085#1089#1084#1080#1089#1089#1080#1103
          Width = 300
          Visible = True
        end>
    end
    object DBLookupComboBox2: TDBLookupComboBox
      Left = 263
      Top = 177
      Width = 184
      Height = 21
      DataField = 'IDcars'
      DataSource = DataModule2.DS_T_goods_catalog
      KeyField = 'IDcar'
      ListField = 'IDcar'
      ListSource = DataModule2.DS_Q_v_cars_list
      TabOrder = 9
    end
    object DBEdit4: TDBEdit
      Left = 512
      Top = 204
      Width = 144
      Height = 21
      DataField = 'Articul'
      DataSource = DataModule2.DS_T_goods_catalog
      TabOrder = 10
    end
  end
  object OpenPictureDialog1: TOpenPictureDialog
    Left = 860
    Top = 128
  end
end
