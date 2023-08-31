object Form4: TForm4
  Left = 0
  Top = 0
  Caption = #1055#1086#1089#1090#1072#1074#1097#1080#1082#1080
  ClientHeight = 580
  ClientWidth = 861
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 0
    Top = 0
    Width = 861
    Height = 580
    Align = alClient
    DataSource = DataModule2.DS_T_supliers_catalog
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'scName'
        Title.Caption = #1048#1084#1103' '#1087#1086#1089#1090#1072#1074#1097#1080#1082#1072
        Width = 150
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'scAddres'
        Title.Caption = #1040#1076#1088#1077#1089
        Width = 350
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'scPhone'
        Title.Caption = #1058#1077#1083#1077#1092#1086#1085
        Width = 150
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'scEmail'
        Title.Caption = #1069#1083#1077#1082#1090#1088#1086#1085#1085#1072#1103' '#1087#1086#1095#1090#1072
        Width = 170
        Visible = True
      end>
  end
end
