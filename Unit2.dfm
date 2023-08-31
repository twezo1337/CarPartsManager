object DataModule2: TDataModule2
  OldCreateOrder = False
  Height = 677
  Width = 871
  object ADOConnection1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=MSDASQL.1;Persist Security Info=False;User ID=root;Exte' +
      'nded Properties="Driver=MySQL ODBC 5.3 Unicode Driver;SERVER=loc' +
      'alhost;UID=root;DATABASE=carpartsmanager;PORT=3306;COLUMN_SIZE_S' +
      '32=1"'
    Left = 24
    Top = 24
  end
  object T_goods_catalog: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    BeforePost = T_goods_catalogBeforePost
    TableName = 'goods_catalog'
    Left = 120
    Top = 24
    object T_goods_catalogIDgc: TAutoIncField
      FieldName = 'IDgc'
      ReadOnly = True
    end
    object T_goods_cataloggcName: TWideStringField
      FieldName = 'gcName'
      Size = 255
    end
    object T_goods_catalogIDtg: TIntegerField
      FieldName = 'IDtg'
    end
    object T_goods_cataloggcDesription: TWideStringField
      FieldName = 'gcDesription'
      Size = 255
    end
    object T_goods_cataloggcPhoto: TBlobField
      FieldName = 'gcPhoto'
    end
    object T_goods_cataloggcCost: TBCDField
      FieldName = 'gcCost'
      Precision = 10
      Size = 2
    end
    object T_goods_catalogIDcars: TIntegerField
      FieldName = 'IDcars'
    end
    object T_goods_catalogArticul: TIntegerField
      FieldName = 'Articul'
    end
  end
  object T_type_goods: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'type_goods'
    Left = 120
    Top = 88
  end
  object T_supliers_catalog: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'suppliers_catalog'
    Left = 120
    Top = 152
    object T_supliers_catalogIDsc: TAutoIncField
      FieldName = 'IDsc'
      ReadOnly = True
    end
    object T_supliers_catalogscName: TStringField
      FieldName = 'scName'
      OnGetText = T_supliers_catalogscNameGetText
      Size = 50
    end
    object T_supliers_catalogscAddres: TStringField
      FieldName = 'scAddres'
      Size = 100
    end
    object T_supliers_catalogscPhone: TStringField
      FieldName = 'scPhone'
      EditMask = '!\+7-000-000-0000;0;_'
      Size = 15
    end
    object T_supliers_catalogscEmail: TStringField
      FieldName = 'scEmail'
      OnValidate = T_supliers_catalogscEmailValidate
      Size = 50
    end
  end
  object T_operations: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    AfterPost = T_operationsAfterPost
    AfterDelete = T_operationsAfterDelete
    TableName = 'operations'
    Left = 120
    Top = 216
    object T_operationsIDoperation: TAutoIncField
      FieldName = 'IDoperation'
      ReadOnly = True
    end
    object T_operationsoDateTime: TDateTimeField
      FieldName = 'oDateTime'
    end
    object T_operationsoIsSale: TSmallintField
      FieldName = 'oIsSale'
    end
    object T_operationsIDsc: TIntegerField
      FieldName = 'IDsc'
    end
  end
  object T_op_goods_list: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    BeforePost = T_op_goods_listBeforePost
    AfterPost = T_op_goods_listAfterPost
    AfterDelete = T_op_goods_listAfterDelete
    IndexFieldNames = 'IDoperation'
    MasterFields = 'IDoperation'
    MasterSource = DS_T_operations
    TableName = 'op_goods_list'
    Left = 120
    Top = 280
    object T_op_goods_listIDoperation: TIntegerField
      FieldName = 'IDoperation'
    end
    object T_op_goods_listIDgc: TIntegerField
      FieldName = 'IDgc'
    end
    object T_op_goods_listocCount: TIntegerField
      FieldName = 'ocCount'
      OnChange = T_op_goods_listocCountChange
    end
  end
  object T_storage: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'storage'
    Left = 120
    Top = 344
    object T_storageIDstorage: TAutoIncField
      FieldName = 'IDstorage'
      ReadOnly = True
    end
    object T_storageIDgc: TIntegerField
      FieldName = 'IDgc'
    end
    object T_storagesCount: TIntegerField
      FieldName = 'sCount'
    end
  end
  object DS_T_goods_catalog: TDataSource
    DataSet = T_goods_catalog
    Left = 232
    Top = 24
  end
  object DS_T_type_goods: TDataSource
    DataSet = T_type_goods
    Left = 232
    Top = 88
  end
  object DS_T_supliers_catalog: TDataSource
    DataSet = T_supliers_catalog
    Left = 232
    Top = 152
  end
  object DS_T_operations: TDataSource
    DataSet = T_operations
    Left = 232
    Top = 216
  end
  object DS_T_op_goods_list: TDataSource
    DataSet = T_op_goods_list
    Left = 232
    Top = 280
  end
  object DS_T_storage: TDataSource
    DataSet = T_storage
    Left = 232
    Top = 344
  end
  object Q_v_goods_catalog: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    AfterPost = Q_v_goods_catalogAfterPost
    AfterDelete = Q_v_goods_catalogAfterDelete
    AfterScroll = Q_v_goods_catalogAfterScroll
    Parameters = <>
    SQL.Strings = (
      'SELECT *'
      'FROM view_goods_catalog')
    Left = 408
    Top = 24
    object Q_v_goods_catalogIDgc: TAutoIncField
      FieldName = 'IDgc'
      ReadOnly = True
    end
    object Q_v_goods_catalogtgName: TWideStringField
      FieldName = 'tgName'
      Size = 50
    end
    object Q_v_goods_cataloggcName: TWideStringField
      FieldName = 'gcName'
      Size = 255
    end
    object Q_v_goods_cataloggcDesription: TWideStringField
      FieldName = 'gcDesription'
      Size = 255
    end
    object Q_v_goods_catalogmarkName: TWideStringField
      FieldName = 'markName'
      Size = 50
    end
    object Q_v_goods_catalogmodelName: TWideStringField
      FieldName = 'modelName'
      Size = 255
    end
    object Q_v_goods_cataloggenName: TWideStringField
      FieldName = 'genName'
      Size = 255
    end
    object Q_v_goods_catalogtransName: TWideStringField
      FieldName = 'transName'
      Size = 50
    end
    object Q_v_goods_catalogArticul: TIntegerField
      FieldName = 'Articul'
    end
    object Q_v_goods_cataloggcPhoto: TBlobField
      FieldName = 'gcPhoto'
    end
    object Q_v_goods_cataloggcCost: TBCDField
      FieldName = 'gcCost'
      Precision = 10
      Size = 2
    end
    object Q_v_goods_catalogsCount: TIntegerField
      FieldName = 'sCount'
    end
  end
  object Q_v_goods_operations: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    AfterScroll = Q_v_goods_operationsAfterScroll
    Parameters = <>
    SQL.Strings = (
      'SELECT *'
      'FROM view_goods_operations')
    Left = 408
    Top = 88
    object Q_v_goods_operationsIDoperation: TAutoIncField
      FieldName = 'IDoperation'
      ReadOnly = True
    end
    object Q_v_goods_operationsoDateTime: TDateTimeField
      FieldName = 'oDateTime'
    end
    object Q_v_goods_operationsoIsSale: TSmallintField
      FieldName = 'oIsSale'
    end
    object Q_v_goods_operationsopType: TWideStringField
      FieldName = 'opType'
      Size = 8
    end
    object Q_v_goods_operationsoFullCost: TFMTBCDField
      FieldName = 'oFullCost'
      Precision = 42
      Size = 2
    end
    object Q_v_goods_operationsscName: TWideStringField
      FieldName = 'scName'
      Size = 50
    end
  end
  object Q_v_storage: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT *'
      'FROM view_storage')
    Left = 408
    Top = 152
    object Q_v_storageIDstorage: TAutoIncField
      FieldName = 'IDstorage'
      ReadOnly = True
    end
    object Q_v_storageIDgc: TIntegerField
      FieldName = 'IDgc'
    end
    object Q_v_storagegcName: TWideStringField
      FieldName = 'gcName'
      Size = 255
    end
    object Q_v_storageArticul: TIntegerField
      FieldName = 'Articul'
    end
    object Q_v_storageIDtg: TIntegerField
      FieldName = 'IDtg'
    end
    object Q_v_storagetgName: TWideStringField
      FieldName = 'tgName'
      Size = 50
    end
    object Q_v_storagemarkName: TWideStringField
      FieldName = 'markName'
      Size = 50
    end
    object Q_v_storagemodelName: TWideStringField
      FieldName = 'modelName'
      Size = 255
    end
    object Q_v_storagegenName: TWideStringField
      FieldName = 'genName'
      Size = 255
    end
    object Q_v_storagesCount: TIntegerField
      FieldName = 'sCount'
    end
  end
  object DS_Q_v_goods_catalog: TDataSource
    DataSet = Q_v_goods_catalog
    Left = 536
    Top = 24
  end
  object DS_Q_v_goods_operations: TDataSource
    DataSet = Q_v_goods_operations
    Left = 536
    Top = 88
  end
  object DS_Q_v_storage: TDataSource
    DataSet = Q_v_storage
    Left = 536
    Top = 152
  end
  object Q_v_operation_goods_list: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    AfterScroll = Q_v_operation_goods_listAfterScroll
    DataSource = DS_Q_v_goods_operations
    Parameters = <
      item
        Name = 'IDoperation'
        Attributes = [paNullable]
        DataType = ftInteger
        NumericScale = 240
        Precision = 255
        Value = 1
      end>
    SQL.Strings = (
      'SELECT *'
      'FROM view_operation_goods_list'
      'WHERE view_operation_goods_list.IDoperation = :IDoperation')
    Left = 408
    Top = 216
    object Q_v_operation_goods_listIDoperation: TIntegerField
      FieldName = 'IDoperation'
    end
    object Q_v_operation_goods_listIDgc: TIntegerField
      FieldName = 'IDgc'
    end
    object Q_v_operation_goods_listtgName: TWideStringField
      FieldName = 'tgName'
      Size = 50
    end
    object Q_v_operation_goods_listgcName: TWideStringField
      FieldName = 'gcName'
      Size = 255
    end
    object Q_v_operation_goods_listmarkName: TWideStringField
      FieldName = 'markName'
      Size = 50
    end
    object Q_v_operation_goods_listmodelName: TWideStringField
      FieldName = 'modelName'
      Size = 255
    end
    object Q_v_operation_goods_listgenName: TWideStringField
      FieldName = 'genName'
      Size = 255
    end
    object Q_v_operation_goods_listocCount: TIntegerField
      FieldName = 'ocCount'
    end
    object Q_v_operation_goods_listgcCost: TBCDField
      FieldName = 'gcCost'
      Precision = 10
      Size = 2
    end
    object Q_v_operation_goods_listogcFCost: TFMTBCDField
      FieldName = 'ogcFCost'
      Precision = 20
      Size = 2
    end
  end
  object DS_Q_v_operation_goods_list: TDataSource
    DataSet = Q_v_operation_goods_list
    Left = 536
    Top = 216
  end
  object Q_v_operations_fullcost: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    DataSource = DS_T_operations
    Parameters = <
      item
        Name = 'IDoperation'
        Attributes = [paNullable]
        DataType = ftInteger
        NumericScale = 240
        Precision = 255
        Value = 1
      end>
    SQL.Strings = (
      'SELECT *'
      'FROM view_operations_fullcost'
      'WHERE view_operations_fullcost.IDoperation = :IDoperation')
    Left = 408
    Top = 280
  end
  object DS_Q_v_operations_fullcost: TDataSource
    DataSet = Q_v_operations_fullcost
    Left = 536
    Top = 280
  end
  object Q_v_selector_goods: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    DataSource = DS_T_operations
    Parameters = <
      item
        Name = 'IDoperation'
        Attributes = [paNullable]
        DataType = ftInteger
        NumericScale = 240
        Precision = 255
        Value = 1
      end
      item
        Name = 'IDgcSelected'
        Attributes = [paNullable]
        DataType = ftString
        NumericScale = 240
        Precision = 255
        Size = 255
        Value = '1'
      end>
    SQL.Strings = (
      'SELECT IDgc, sNameCost, sCount'
      'FROM view_selector_goods'
      'WHERE view_selector_goods.IDgc NOT IN'
      ' (SELECT IDgc FROM view_operation_goods_list'
      ' WHERE view_operation_goods_list.IDoperation = :IDoperation)'
      'or view_selector_goods.IDgc = :IDgcSelected')
    Left = 408
    Top = 344
    object Q_v_selector_goodsIDgc: TAutoIncField
      FieldName = 'IDgc'
      ReadOnly = True
    end
    object Q_v_selector_goodssNameCost: TWideStringField
      FieldName = 'sNameCost'
      Size = 273
    end
    object Q_v_selector_goodssCount: TIntegerField
      FieldName = 'sCount'
      DisplayFormat = '"('#1044#1086#1089#1090#1091#1087#1085#1086' '#1085#1072' '#1089#1082#1083#1072#1076#1077':" 0 "'#1096#1090'.)" '
    end
  end
  object DS_Q_v_selector_goods: TDataSource
    DataSet = Q_v_selector_goods
    Left = 536
    Top = 344
  end
  object Q_avg_cost_by_type: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT'
      ' view_goods_catalog.tgName,'
      ' AVG(view_goods_catalog.gcCost) AS avgCost'
      'FROM view_goods_catalog'
      'GROUP BY view_goods_catalog.tgName')
    Left = 408
    Top = 464
  end
  object Q_sales_by_days: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT'
      ' CAST(view_goods_operations.oDateTime AS date) AS oSaleDate,'
      ' SUM(view_goods_operations.oFullCost) AS oDayCost'
      'FROM view_goods_operations'
      'WHERE view_goods_operations.oIsSale = 1'
      'GROUP BY oSaleDate')
    Left = 408
    Top = 528
  end
  object Q_storage_count: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT'
      '  view_storage.IDstorage,'
      '  view_storage.IDgc,'
      '  view_storage.gcName,'
      '  view_storage.IDtg,'
      '  view_storage.tgName,'
      '  view_storage.sCount'
      'FROM view_storage')
    Left = 408
    Top = 592
  end
  object frxDBDataset1: TfrxDBDataset
    UserName = 'frxDBDataset1'
    CloseDataSource = False
    DataSet = Q_v_goods_catalog
    BCDToCurrency = False
    DataSetOptions = []
    Left = 688
    Top = 24
  end
  object frxReport1: TfrxReport
    Version = '2022.2.10'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 44917.012453854200000000
    ReportOptions.LastChange = 44917.017729942100000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.')
    Left = 768
    Top = 24
    Datasets = <
      item
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 215.900000000000000000
      PaperHeight = 279.400000000000000000
      PaperSize = 1
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = []
      MirrorMode = []
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 18.897650000000000000
        Width = 740.409927000000000000
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Left = 309.921460000000000000
          Width = 109.606370000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            #1057#1087#1080#1089#1086#1082' '#1090#1086#1074#1072#1088#1086#1074)
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 30.236240000000000000
        Top = 102.047310000000000000
        Width = 740.409927000000000000
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
        RowCount = 0
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 7.559060000000000000
          Top = 7.559060000000000000
          Width = 158.740260000000000000
          Height = 18.897650000000000000
          DataField = 'gcName'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."gcName"]')
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 170.078850000000000000
          Top = 7.559060000000000000
          Width = 113.385900000000000000
          Height = 18.897650000000000000
          DataField = 'tgName'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."tgName"]')
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 291.023810000000000000
          Top = 7.559060000000000000
          Width = 117.165430000000000000
          Height = 18.897650000000000000
          DataField = 'markName'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."markName"]')
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 665.197280000000000000
          Top = 7.559060000000000000
          Width = 71.811070000000000000
          Height = 18.897650000000000000
          DataField = 'gcCost'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."gcCost"]')
        end
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Left = 411.968770000000000000
          Top = 7.559060000000000000
          Width = 120.944960000000000000
          Height = 18.897650000000000000
          DataField = 'modelName'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."modelName"]')
        end
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Left = 536.693260000000000000
          Top = 7.559060000000000000
          Width = 124.724490000000000000
          Height = 18.897650000000000000
          DataField = 'genName'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."genName"]')
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 192.756030000000000000
        Width = 740.409927000000000000
        object Memo1: TfrxMemoView
          AllowVectorExport = True
          Left = 664.819327000000000000
          Width = 75.590600000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          HAlign = haRight
          Memo.UTF8W = (
            '[Page#]')
        end
      end
    end
  end
  object frxReport2: TfrxReport
    Version = '2022.2.10'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 44917.018041400500000000
    ReportOptions.LastChange = 44917.018041400500000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 768
    Top = 88
    Datasets = <
      item
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 215.900000000000000000
      PaperHeight = 279.400000000000000000
      PaperSize = 1
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Columns = 2
      ColumnWidth = 95.000000000000000000
      ColumnPositions.Strings = (
        '0'
        '95')
      Frame.Typ = []
      MirrorMode = []
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 90.708720000000000000
        Top = 18.897650000000000000
        Width = 359.055350000000000000
        Child = frxReport2.Child1
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
        KeepChild = True
        RowCount = 0
        Stretched = True
        object Memo1: TfrxMemoView
          AllowVectorExport = True
          Left = 15.118120000000000000
          Top = 11.338590000000000000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            #1040#1088#1090#1080#1082#1091#1083':')
        end
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Left = 15.118120000000000000
          Top = 37.795300000000000000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            #1058#1086#1074#1072#1088':')
        end
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 15.118120000000000000
          Top = 64.252010000000000000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          Frame.Typ = []
          Memo.UTF8W = (
            #1054#1087#1080#1089#1072#1085#1080#1077':')
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 105.826840000000000000
          Top = 11.338590000000000000
          Width = 238.110390000000000000
          Height = 18.897650000000000000
          DataField = 'Articul'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."Articul"]')
        end
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 105.826840000000000000
          Top = 37.795300000000000000
          Width = 238.110390000000000000
          Height = 18.897650000000000000
          DataField = 'gcName'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."gcName"]')
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 105.826840000000000000
          Top = 64.252010000000000000
          Width = 238.110390000000000000
          Height = 18.897650000000000000
          StretchMode = smActualHeight
          DataField = 'gcDesription'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset1."gcDesription"]')
        end
      end
      object Child1: TfrxChild
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 30.236240000000000000
        Top = 132.283550000000000000
        Width = 359.055350000000000000
        ToNRows = 0
        ToNRowsMode = rmCount
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Left = 11.338590000000000000
          Top = 7.559060000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            #1057#1090#1086#1080#1084#1086#1089#1090#1100':')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Left = 105.826840000000000000
          Top = 7.559060000000000000
          Width = 117.165430000000000000
          Height = 18.897650000000000000
          DataField = 'gcCost'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[frxDBDataset1."gcCost"]')
          ParentFont = False
        end
      end
    end
  end
  object op_master: TfrxDBDataset
    UserName = 'op_master'
    CloseDataSource = False
    DataSource = DS_Q_v_goods_operations
    BCDToCurrency = False
    DataSetOptions = []
    Left = 688
    Top = 152
  end
  object frxReport3: TfrxReport
    Version = '2022.2.10'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 44917.025670486100000000
    ReportOptions.LastChange = 44917.025670486100000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 768
    Top = 152
    Datasets = <
      item
        DataSet = op_master
        DataSetName = 'op_master'
      end
      item
        DataSet = op_detail
        DataSetName = 'op_detail'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 215.900000000000000000
      PaperHeight = 279.400000000000000000
      PaperSize = 1
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = []
      MirrorMode = []
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 30.236240000000000000
        Top = 18.897650000000000000
        Width = 740.409927000000000000
        DataSet = op_master
        DataSetName = 'op_master'
        RowCount = 0
        object Memo1: TfrxMemoView
          AllowVectorExport = True
          Width = 120.944960000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clTeal
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Color = clWhite
          Frame.Typ = []
          Fill.BackColor = clWhite
          Memo.UTF8W = (
            #1042#1088#1077#1084#1103' '#1086#1087#1077#1088#1072#1094#1080#1080':')
          ParentFont = False
        end
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Left = 120.944960000000000000
          Width = 170.078850000000000000
          Height = 22.677180000000000000
          DataField = 'oDateTime'
          DataSet = op_master
          DataSetName = 'op_master'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clTeal
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Fill.BackColor = clWhite
          Memo.UTF8W = (
            '[op_master."oDateTime"]')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 343.937230000000000000
          Width = 105.826840000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clTeal
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Fill.BackColor = clWhite
          Memo.UTF8W = (
            #1058#1080#1087' '#1086#1087#1077#1088#1072#1094#1080#1080':')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 449.764070000000000000
          Width = 143.622140000000000000
          Height = 22.677180000000000000
          DataField = 'opType'
          DataSet = op_master
          DataSetName = 'op_master'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clTeal
          Font.Height = -15
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Fill.BackColor = clWhite
          Memo.UTF8W = (
            '[op_master."opType"]')
          ParentFont = False
        end
      end
      object DetailData1: TfrxDetailData
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 30.236240000000000000
        Top = 71.811070000000000000
        Width = 740.409927000000000000
        DataSet = op_detail
        DataSetName = 'op_detail'
        RowCount = 0
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 3.779530000000000000
          Width = 98.267780000000000000
          Height = 22.677180000000000000
          DataField = 'tgName'
          DataSet = op_detail
          DataSetName = 'op_detail'
          Frame.Typ = []
          Memo.UTF8W = (
            '[op_detail."tgName"]')
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Left = 102.047310000000000000
          Width = 90.708720000000000000
          Height = 22.677180000000000000
          DataField = 'markName'
          DataSet = op_detail
          DataSetName = 'op_detail'
          Frame.Typ = []
          Memo.UTF8W = (
            '[op_detail."markName"]')
        end
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Left = 302.362400000000000000
          Width = 268.346630000000000000
          Height = 22.677180000000000000
          DataField = 'gcName'
          DataSet = op_detail
          DataSetName = 'op_detail'
          Frame.Typ = []
          Memo.UTF8W = (
            '[op_detail."gcName"]')
        end
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Left = 570.709030000000000000
          Width = 37.795300000000000000
          Height = 22.677180000000000000
          DataField = 'ocCount'
          DataSet = op_detail
          DataSetName = 'op_detail'
          Frame.Typ = []
          Memo.UTF8W = (
            '[op_detail."ocCount"]')
        end
        object Memo9: TfrxMemoView
          AllowVectorExport = True
          Left = 608.504330000000000000
          Width = 64.252010000000000000
          Height = 22.677180000000000000
          DataField = 'gcCost'
          DataSet = op_detail
          DataSetName = 'op_detail'
          Frame.Typ = []
          Memo.UTF8W = (
            '[op_detail."gcCost"]')
        end
        object Memo10: TfrxMemoView
          AllowVectorExport = True
          Left = 672.756340000000000000
          Width = 68.031540000000000000
          Height = 22.677180000000000000
          DataField = 'ogcFCost'
          DataSet = op_detail
          DataSetName = 'op_detail'
          Frame.Typ = []
          Memo.UTF8W = (
            '[op_detail."ogcFCost"]')
        end
        object Memo11: TfrxMemoView
          AllowVectorExport = True
          Left = 192.756030000000000000
          Width = 109.606370000000000000
          Height = 22.677180000000000000
          DataField = 'modelName'
          DataSet = op_detail
          DataSetName = 'op_detail'
          Frame.Typ = []
          Memo.UTF8W = (
            '[op_detail."modelName"]')
        end
      end
    end
  end
  object op_detail: TfrxDBDataset
    UserName = 'op_detail'
    CloseDataSource = False
    DataSource = DS_Q_v_operation_goods_list
    BCDToCurrency = False
    DataSetOptions = []
    Left = 688
    Top = 216
  end
  object frxDBDataset2: TfrxDBDataset
    UserName = 'frxDBDataset2'
    CloseDataSource = False
    DataSet = Q_v_storage
    BCDToCurrency = False
    DataSetOptions = []
    Left = 688
    Top = 280
  end
  object frxReport4: TfrxReport
    Version = '2022.2.10'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 44917.036682534700000000
    ReportOptions.LastChange = 44917.036682534700000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 768
    Top = 280
    Datasets = <
      item
        DataSet = frxDBDataset2
        DataSetName = 'frxDBDataset2'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -19
      Font.Name = 'Arial'
      Font.Style = []
      PaperWidth = 215.900000000000000000
      PaperHeight = 279.400000000000000000
      PaperSize = 1
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Color = clWhite
      Frame.Typ = []
      MirrorMode = []
      object GroupHeader1: TfrxGroupHeader
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 34.015770000000000000
        Top = 18.897650000000000000
        Width = 740.409927000000000000
        Condition = 'frxDBDataset2."markName"'
        DrillDown = True
        KeepTogether = True
        ReprintOnNewPage = True
        object Memo1: TfrxMemoView
          AllowVectorExport = True
          Left = 15.118120000000000000
          Width = 740.787880000000000000
          Height = 26.456710000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clTeal
          Font.Height = -19
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = []
          Fill.BackColor = clWhite
          Memo.UTF8W = (
            '[frxDBDataset2."markName"]')
          ParentFont = False
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 75.590600000000000000
        Width = 740.409927000000000000
        DataSet = frxDBDataset2
        DataSetName = 'frxDBDataset2'
        RowCount = 0
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Left = 306.141930000000000000
          Width = 336.378170000000000000
          Height = 22.677180000000000000
          DataField = 'gcName'
          DataSet = frxDBDataset2
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Highlight.ApplyFont = False
          Highlight.Font.Charset = DEFAULT_CHARSET
          Highlight.Font.Color = clRed
          Highlight.Font.Height = -13
          Highlight.Font.Name = 'Arial'
          Highlight.Font.Style = []
          Highlight.Condition = '<frxDBDataset2."sCount"> < 6'
          Highlight.FillType = ftBrush
          Highlight.Fill.BackColor = clRed
          Highlight.Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset2."gcName"]')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 151.181200000000000000
          Width = 154.960730000000000000
          Height = 22.677180000000000000
          DataField = 'tgName'
          DataSet = frxDBDataset2
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Highlight.ApplyFont = False
          Highlight.Font.Charset = DEFAULT_CHARSET
          Highlight.Font.Color = clRed
          Highlight.Font.Height = -13
          Highlight.Font.Name = 'Arial'
          Highlight.Font.Style = []
          Highlight.Condition = '<frxDBDataset2."sCount"> < 6'
          Highlight.FillType = ftBrush
          Highlight.Fill.BackColor = clRed
          Highlight.Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset2."tgName"]')
          ParentFont = False
        end
        object Memo4: TfrxMemoView
          AllowVectorExport = True
          Left = 642.520100000000000000
          Width = 98.267780000000000000
          Height = 22.677180000000000000
          DataField = 'sCount'
          DataSet = frxDBDataset2
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Highlight.ApplyFont = False
          Highlight.Font.Charset = DEFAULT_CHARSET
          Highlight.Font.Color = clRed
          Highlight.Font.Height = -13
          Highlight.Font.Name = 'Arial'
          Highlight.Font.Style = []
          Highlight.Condition = '<frxDBDataset2."sCount"> < 6'
          Highlight.FillType = ftBrush
          Highlight.Fill.BackColor = clRed
          Highlight.Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset2."sCount"]')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Width = 151.181200000000000000
          Height = 22.677180000000000000
          DataField = 'modelName'
          DataSet = frxDBDataset2
          DataSetName = 'frxDBDataset2'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Highlight.ApplyFont = False
          Highlight.Font.Charset = DEFAULT_CHARSET
          Highlight.Font.Color = clRed
          Highlight.Font.Height = -13
          Highlight.Font.Name = 'Arial'
          Highlight.Font.Style = []
          Highlight.Condition = '<frxDBDataset2."sCount"> < 6'
          Highlight.FillType = ftBrush
          Highlight.Fill.BackColor = clRed
          Highlight.Frame.Typ = []
          Memo.UTF8W = (
            '[frxDBDataset2."modelName"]')
          ParentFont = False
        end
      end
      object GroupFooter1: TfrxGroupFooter
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 22.677180000000000000
        Top = 120.944960000000000000
        Width = 740.409927000000000000
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Left = 642.520100000000000000
          Width = 98.267780000000000000
          Height = 22.677180000000000000
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            #1042#1089#1077#1075#1086': [SUM(<frxDBDataset2."sCount">, MasterData1)] '#1077#1076'.')
          ParentFont = False
        end
      end
    end
  end
  object Q_v_cars_list: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT *'
      'FROM view_cars_list')
    Left = 408
    Top = 408
  end
  object DS_Q_v_cars_list: TDataSource
    DataSet = Q_v_cars_list
    Left = 536
    Top = 408
  end
  object T_users: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'users'
    Left = 120
    Top = 408
  end
  object DS_T_users: TDataSource
    DataSet = T_users
    Left = 232
    Top = 408
  end
  object Q_v_users: TADOQuery
    Connection = ADOConnection1
    CursorType = ctStatic
    DataSource = DS_T_users
    Parameters = <>
    SQL.Strings = (
      'SELECT *'
      'FROM view_users')
    Left = 496
    Top = 592
  end
  object DS_Q_v_users: TDataSource
    DataSet = Q_v_users
    Left = 600
    Top = 592
  end
  object T_user_basket: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    AfterPost = T_user_basketAfterPost
    AfterDelete = T_user_basketAfterDelete
    IndexFieldNames = 'IDuser'
    MasterFields = 'IDuser'
    MasterSource = DS_T_users
    TableName = 'user_basket'
    Left = 120
    Top = 472
    object T_user_basketIDuser: TIntegerField
      FieldName = 'IDuser'
    end
    object T_user_basketIDgc: TIntegerField
      FieldName = 'IDgc'
    end
  end
  object DS_T_user_basket: TDataSource
    DataSet = T_user_basket
    Left = 232
    Top = 472
  end
  object Q_v_user_basket: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    AfterPost = Q_v_user_basketAfterPost
    AfterDelete = Q_v_user_basketAfterDelete
    AfterScroll = Q_v_user_basketAfterScroll
    DataSource = DS_T_user_basket
    Parameters = <>
    SQL.Strings = (
      'SELECT *'
      'FROM view_user_basket')
    Left = 496
    Top = 528
    object Q_v_user_basketIDuser: TIntegerField
      FieldName = 'IDuser'
    end
    object Q_v_user_basketIDgc: TIntegerField
      FieldName = 'IDgc'
    end
    object Q_v_user_basketuserName: TWideStringField
      FieldName = 'userName'
      Size = 50
    end
    object Q_v_user_basketuserPhone: TWideStringField
      FieldName = 'userPhone'
      Size = 11
    end
    object Q_v_user_baskettgName: TWideStringField
      FieldName = 'tgName'
      Size = 50
    end
    object Q_v_user_basketgcName: TWideStringField
      FieldName = 'gcName'
      Size = 255
    end
    object Q_v_user_basketArticul: TIntegerField
      FieldName = 'Articul'
    end
    object Q_v_user_basketmarkName: TWideStringField
      FieldName = 'markName'
      Size = 50
    end
    object Q_v_user_basketmodelName: TWideStringField
      FieldName = 'modelName'
      Size = 255
    end
    object Q_v_user_basketgenName: TWideStringField
      FieldName = 'genName'
      Size = 255
    end
    object Q_v_user_basketgcPhoto: TBlobField
      FieldName = 'gcPhoto'
    end
    object Q_v_user_basketgcCost: TBCDField
      FieldName = 'gcCost'
      Precision = 10
      Size = 2
    end
  end
  object DS_Q_v_user_basket: TDataSource
    DataSet = Q_v_user_basket
    Left = 600
    Top = 528
  end
  object frxDBDataset3: TfrxDBDataset
    RangeBegin = rbCurrent
    UserName = 'basket'
    CloseDataSource = False
    DataSet = Q_v_user_basket
    BCDToCurrency = False
    DataSetOptions = []
    Left = 688
    Top = 352
  end
  object frxReport5: TfrxReport
    Version = '2022.2.10'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick, pbCopy, pbSelection]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 44933.918929039400000000
    ReportOptions.LastChange = 44933.918929039400000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      ''
      'begin'
      ''
      'end.')
    Left = 768
    Top = 352
    Datasets = <
      item
        DataSet = frxDBDataset3
        DataSetName = 'basket'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      Frame.Typ = []
      MirrorMode = []
      object ReportTitle1: TfrxReportTitle
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 196.535560000000000000
        Top = 18.897650000000000000
        Width = 718.110700000000000000
        object Memo5: TfrxMemoView
          AllowVectorExport = True
          Top = 3.779530000000000000
          Width = 718.110700000000000000
          Height = 37.795300000000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -29
          Font.Name = 'Segoe UI Black'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            #1040#1042#1058#1054#1047#1040#1055#1063#1040#1057#1058#1068)
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          AllowVectorExport = True
          Top = 166.299320000000000000
          Width = 718.110700000000000000
          Height = 30.236240000000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -19
          Font.Name = 'Segoe UI Black'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            #1050#1072#1089#1089#1086#1074#1099#1081' '#1095#1077#1082)
          ParentFont = False
          VAlign = vaCenter
        end
        object Picture1: TfrxPictureView
          AllowVectorExport = True
          Left = 283.464750000000000000
          Top = 45.354360000000000000
          Width = 162.519790000000000000
          Height = 117.165430000000000000
          Frame.Typ = []
          Picture.Data = {
            0A544A504547496D6167659D9A0000FFD8FFE000104A46494600010101012C01
            2C0000FFDB004300080606070605080707070909080A0C140D0C0B0B0C191213
            0F141D1A1F1E1D1A1C1C20242E2720222C231C1C2837292C30313434341F2739
            3D38323C2E333432FFC2000B080230032001012200FFC4001B00010002030101
            000000000000000000000005060304070201FFDA0008010100000001BF800000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            000000000000000000000002BB8ACBE801E6B596C40000000000000000000073
            4A5ACBD5B200C7CA6B4BA74B00000000000000000000E694BB863A9D97AB6406
            3E535AB664A7DD3A580000000000000000001CD29771F71F2549B2F56C9435F3
            1F29AD5DA3643C53AE9D2C00000000000000000039AD2AF13550B0D42CB45B2C
            E73E74183AD5EAB56EAFDBE168F75E94000000000000000000734A5DEA7AA177
            E6B7AE6971A4AC5F2BCBB53BA551BA5522DF0345BA74B000000000000000000E
            6B4AB947E7BF738E8FC76CDA966A049A32FF0059DBACF62E71D1E8382429B75E
            940000000000000000073CA1DC627677A37A5F2F7D9B899BAF2C3072F09F1D43
            9A4968EB4B53AF9D0C00000000000000001C26670EC6788B557BDCA6FD6F0C5F
            4FFBCBE533593422FC586AB2F835F34377600000000000000000723809BDD87B
            3D37A772898BFD0A33A65A157E67277DA043F57E6372AC4C69424FF5C0000000
            00000000006AF228B94B151643AFD72329DB7BD7B9D415134752E32763E411F7
            AAEC5CA75DDA0000000000000000035B90C5EDE8243A2F32D75EEB3D51CAECD4
            46C74DE751EDFD494EBDB2000000000000000001ABC86327EB8C96FD1AD67BAD
            4D6CA560B2EF5431AC70127D7B68000000000000003E62C3AF83060C1AF83060
            D7C1A117927EB996C71B62A9E6CF63AAE1B65764AB98AC7018E537F3EC67CF9F
            633E7CF9F63365FA00000000003E62C1CFEA38C07DCB9B633FC859A89C97BBE5
            428563ACDAEB79E6AB57DB7D0E898E5A166BEE0D7C38BE00C96EE819F2FD0000
            00031D2E335F060C1835F1782C760CFB19F3E7D8CF9BD9ADC87DE2DCBF7A9D8A
            AC506ED05EA62A976B3CAC179A0E9E5F1D7B64F18706BE0C1835F057EB87BCBB
            19F3E7CFB12774C800000E6D49DBD8CF9F3E7D8CF9F3C4EA7540035B90FDC5B5
            7CE6DB7A9F2466217D4C552C3A31DF76F53A4D0F572FCEBDB20072BDB96C1830
            6BE0C18306BEA5DBA480000394573BA6600C3C53ACCC61D7C1835F5F060D7AC7
            AC32372E7BD634F4A4E85F37FEC05823BEDF633777393F42A6C766F367D8CF9F
            63633E7D8CD0FC9BB5E600C3C2EC7D5C0000154E57D1AF203C61A852FB0C3F33
            8F025B1C8DAE89B9A51AFB73D1F3A8DBF5BD4CF892DDD3BDD523B2448121D326
            38F5D2DF9BD80A3739EA96B0000079E331DD97779DC7EBE0D7C18BE121D36C10
            111832E2A148E3DCE83CD7AB72CF5EEC14ED5BF2A8B5A83B57089C7ABD4F94F4
            AE7DA7923AFB97167979FAFF00328F3EE5CFB19F6243A26971A91ECDE8000008
            6E3DB3D637A935CD066CB973C2EB262C9279B1D1B0F893E8941B3FC83C3729AA
            450E46C9ACD9ADC75F2E91155F937F6B17EE7719EF35E72618CADC3B666B062C
            585BF63BB68F27D6EC332000001CDA93EADF6F9ACAF9E31E1E2FD465B14247E8
            D5F3F895E89A1CA6EF9B4F358A6EAB528BBE5416FA1CA5B6D10D09ABB38691D5
            B7F9DC57B8EB96F484DE589E5DDA3364F7F58A16A150F376E920000018F83C8D
            97344C4F8FBF3264CDAB6CBF9ADC97C68EEF6282C30B50E8109196EB1F37DA8D
            B972DFBD46A123A9D1EBB50909DA1DB663626F8FE8FBDAEBDB2502A7B5871E3F
            BF3DCB4B61AD47778C8000003E70DDAED200D0E35D8A46A54AD4C9BB73B4553C
            DAB89CFC658A172EFC5C95766FDC1D8A324A3FD4AC16D45F65AB7BB3D6E9909E
            B76EF6F8EE3BD977C01C5B57B97D000000E7D41EA96B78C3AF835F060D7A9EA7
            53E6BA386C762C776A4E2D8AD6959223E67D2DAAED8AEFF2850B3FAFB78FCCF5
            4266C1AD92E551F75383FBBDD43966DDB3633E7D8CFB19BDAA9CAEFDD0400000
            1838AE2EC5E39645003DEF6B752AEE1567EE5F978A6F9F1970ADFE67BED6F729
            593C7AF9B16CA762C7E2D4D89CE559F580095EA7EF8EE5ED59C00000082E4793
            A6D9ABB09ABEF2E6CB9F366A9553263F32B63B34A57F985FEC9CAE2F278B1DF2
            AD65562D94280C59373ABD6A89D32C1175EADC2EC61F96EB6E1C383161C5E36A
            6EC559E658FAE4E80000004272B8F97B44BEC78C38B0E1C38305533DBADD2F5C
            AAF4289E5168BCD173356CFBB53B3AB16CD2AC6D30DEA8D57EAF4793E8DE22EA
            351C16BCF9F366CD9737BD788ABC4487549B00000003152EA1100098BD5AA1A8
            3D2EA39F7F3F3BD3EAD42B04DD1EC9BB52B4AAD6DD2ADDE212BF7DE53B97FA14
            B749E39D731E4AE5161C012F6FBA650000000035A3B17ACCE795A93E896388AF
            DEB9EDEE3E833D65E7957EC141B1CD516D1BB4FB6AA570D2ABDEA16B97EE3F68
            B6E69CA1D43B7F38D0EAF82079DC6597A1B0F9CB23B20000000000D6E470D75E
            81EB3732CDD023A2ADD19A755ACC7F4DA85926A896ADDA65C14FB9E9556F70B5
            BB7F3290B35AE72BD59BCF259DE97C7EF366E734A99EB9B200000000000E3D05
            7DB447517ADD5EAF7C9CAFD4EAFABBF2FA9BF1F669AA1DAF76957153AEBA554B
            E42D6643436E1B4B6AD16DDE809B566F7CDE534E853BD8400000000001C5752F
            F27B9CA663A9C7D56991E32DBF4B16A59A66856DDDA55C54EBAE954AFB0D59DB
            CBB351F2242E773ADDA35B9DC86E5036FB5000000000002138E59ADB27036EA3
            5230582E7B1CA71336CD8ABF398ABDB3AD8466D9D6B0E583B056F57C36FAD46D
            32BF9EEF7BE771375A9567B1CD800000000001C9A1AF7331FCEF4ED37D98395D
            506DEACACDCB496F6C6761D6D18D89848ADAD43D5AFA910F42AAEEF43DC8BA24
            CF5900000000000153E597A8CAC4C74B9C0E29A18F62CF66B06854EFD9B9D79E
            8EE5123D1B1536D7EEBF59AC6BE5DEED6107CD21ECF2745EA76C000000000001
            17C536B57DF75CE0A3F3897E8F37995383E879796C6763F3CFB1F49AFD6772F4
            C309CE223A3DE01838578DAD5ED7280000000000030F0BC49FEA7BA073EA0DDE
            E12DEB479D58AE343CD73F3CC266F742D2BBC9F989A7D22FDD040D2E5900CBDD
            330000000000004256E72C601F392C074AB1EEF982DE8D8DD2C2CDBB25927CD2
            AE7359EEB7F402B907649B0000000000000003478A4D740D6AD5763D2F153C81
            95884858ACBB3CFE13B66F000000000000000000073AA2FBF0F527157CA35F94
            1BCD0E5E2BCBDF8BD745000000000000000000047F2298B867E4A938DC37C50F
            349C5BAD60A7C3F5D900000000000000000000021391A520ECEAC4E45BAE4D80
            0000000000000000000042F224B40A7A25D7668000000000000000000000085E
            4497443AECD0000000000000000000000042723FAF9D726C0000000000000000
            000000085E44EBB340000000000000000000000010A9A0000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            0000000000000000000000000000000000000000000000000000000000000000
            000000000000FFC400341000020300010106010B050101010000000304010205
            0006101112131435161520212224253031344060233233365026A041FFDA0008
            010100010502FF00E1D98DA4C1616F244B45A2D1F85368AC177921D97DA4CF6F
            E25F9735F5FCE9ECCBD5B257A5EA4A7E05EF51D35356CEDFB3235FC99FCFF887
            E5CD7D7F3FB33B347516CD118ECCBD4B257A5EA4A7CEBDEA3A6A6A59DBF31A88
            CF3473476173235FC8E7E7FC3F5F5FCE9E67675283DD644C5733325BB6CA8A54
            3CCBD4B257A5EA4A736363C3CC7D8F1765EF51D35352CEDF98CA2960E9E64A96
            C2644BD7473A971F3235FC8E7E7FC375F5FCEECC8C8F339B6F044BE6664B96D9
            2D7E4E4522BE6D4C90054E65EA592BEB6D4787B3276A3C3A9A9676FCCBC90194
            7922A06C62D7E4ED3CC94ED88F04ABEBE4797D991AFE4FF0CD7D7F3A79918FE3
            E6AEAD52A66E69344DA26593411448F9DEFB0E4F9979A1712B643F2ECCFCF82D
            7410A8ABCFCF82C4AD50F32F1447EDD92F22440F9C659C434B3499C6CAD5ABB4
            D7C7F076646BF933FC275F5FCEECCECEA0C4DEB9CED66E69344CDB60CD584267
            65D91AD9D9F6B70D911286669DD1269E651D10BC1533FA12DD90D0B2962F82C6
            CCCCA242D3D3BBC40E444215B7206B68E7944CE33AA360D25B4B3499C6535CE0
            6B473A84173235FC9FE11BBA56F1F3373A83168E8DDE2E6664B72F6CCC5C4267
            65CAD56CB4DF7C9A27F4A2F067E8133CFA39C360599A77449B4A008BE623EB99
            D347D0B38AA006BE9E9DDE267670D7168681340FE945E041F2671ED55B513289
            9C6711D999BE9E64A939DA3744BA59D420B985A56F1FF066666CCE300266F4B4
            6EF1733325B9D3D382C22891E337A03CD1B2E33AA6F515CFE29A5634B6955AAA
            6E1F2D9D02A87378EF6A63E7D935B633ECE2DE3BD699E5500671C3EA30A25556
            ADE95833EA2BA1C59C6728CA680F486F22444D99A7028D3CC95273746E897640
            10B6B4CD59FE0DB29D967697B0EF9AAD741CD4D382C22891E33CF0900000464C
            2CD8411E2D4EF49B76124D71975B4247E13E7E389462FF00E3A7F8F431C4DB10
            3F11D819727414761D519A7725C2E6C3E89C0458C8BC27C0F22444D97A7028D2
            56B9EE5EF625F193B32EFF00066171B41D0CF2206A5EC3BAE1269BCF3C2403C4
            DB224751B13A03635AA46AB29D4E72305CF37A77F681E4E965370D08BFE117F8
            755B85458A0F3B4B40DEA1F01C8B955ACB950E35AC46DB124071B23A7E22F09F
            0B012663D7BD897CFCF23E65D71AA1FE0E700D90E867910352F61DC9623CCF62
            6E152397717AA4631182F653BB6735568D9CD51B13685DB128834D1B45ABF763
            66F604C45CA2DC5EC938E15D3F60EC4459BDEC4BE7E791F30003583FC2585C6D
            07433C881A97B0EF7A574A9D83F0799E971D9E338AC029C09AE02DE82DC5C273
            A4431CEE9294161AE635CE5E2D8AC1E9E971D6E13C1E6765295CDA5EF625F3F3
            C8F9975C6A87FEEF7F24A38E4B6BD793A29C7275D08E4EE211C9EA04A393D46A
            F27A945C9EA5E4F529793D46CF27A81DE4EE3F3C3E8B4CD394BD877BD2BA54E0
            E9E614D82E0B8B3ACE7959543A805EA092CCCA8CBADCE89E940E1AF132DB2C54
            1055950E5819759D028705C2F094F2CBCA52B9B4BDEC4BF01A2D2D48DC7E391D
            40EF23A8D9E47529791D4BC8EA51723A8D5E4750253C8DC42791AE84F234539E
            436B5B9051CF3BFF00E6F7C724A38E4B6B4734770A5BC92F69FC0EE9E40893C8
            5199E466BB3C8C87E785CA6802E268F9C3ADE464212EC191C9F4CB71FCEABEC8
            8AC66B6D801A4B7A964C018C588B8A96D169870B51ACB0B28052B1A4DA19D541
            9E3D93EA56192EB9AD79211C47C91F0594D1C5390FC72735D8E4A8CC724448E7
            74FE0C12F59CEDC28AF0DAD3C828E79DF1FF0002F7A8E8C7518EB69EA46393D4
            2E72779F9E4ECBF3C9D47A792F373C939A7936B4FCCCEC99D01C74D5791D360E
            474EA7C8C1463918A847232918E422A472170C722958F98C303583A1A047CC92
            504ABAECB56CBCBBBD7AC2291587562A9C1CFDE5BB74494A78ED23A071170ACC
            EA9DC73C7459616501A688D9B0AE88E84F72E2EEAC252D08BC5D4CBBA3749D95
            6CEA503AE7E811032EC0D90F6CD2B3C95C33C94549E4E5233C9C542793828CF2
            7A753E4F4D8393D355E68E4CE78FB62D68E41CD1C879B8E46A3D1C8D97E391BC
            FC723A85CE475231C5FA8C76B52F5253F6DD42DDACC721562DC8CE72DC8C97A7
            9188FCF2301E9E474EB73C8E9B3723A6A791D343E474E2DCD4C61A8AE0B5E43B
            F86738D60E86811F3269D49571CB356CFCEBB5CD0D01662F41B3A2C9721E0F28
            CB6ACDDC64B657199679E7A19355D6634CEF341B42CB0B240CB06708BFC98E2C
            D6332B728E321B5D96DA91643C6E5C6CE7339FA02D35F433AEAF1372CAD9C4EA
            3AE7E8110300E3643F87BCD79EEE5E30DB567A716E4F4D0F93D353C9E9B3727A
            75B8E4E03D1C9C47E39392F472739CAF25562BD9D3CDDAAC7EDB7C534D21DFCB
            2889060FE09475309905D36B35D8795E49475E4B8B5793A495793B0847277508
            E4F50A71C9EA45F93D4B4E4F52DB8F6815F226A549571CB356CBCBB3C4D47028
            2A10B1A4DA8A073D72ED22299DCCE2F1732458D5BE8F8F21355B26CB355F8A2E
            2CC5AFEAB50D84C8EF1B09AAA132AFA3E360C90A2373385C16D22596D40E82E6
            0B19ADE5B817D5D4CBB2244DCB2B66D4A8EA8E815024752DB91D4B4E47522FC8
            EA14E791BA84F236109E469256E438B5B9051DBB349D8455581771A10EA117E0
            94901092FE61700537D2FDB6F2BE725CE9E77C43FC0F156392C0639B5551A0A2
            EDD1616646D8747244F71949852DF3D456090DB72CDB2F2ECF5D9D1166D42163
            49BA119C575B78EEDFB2266250D8F1C69216CE3E6025FD1D3725C7331C94DCD3
            04A1A39A85B44EFEC782266667B1478E9DEE46769D3058CD6D6D116957532EC8
            DD46E56B36AC0E3E7AC930DDB3B2448F19646A05E76EF318B55150C3019E78AB
            3F83D42EF847CC157C94BF6D31168D14E526C45B80A83B47972F99E531B3A2B9
            2775F9E4EC3F3C9D276DC9719B724C49E77CFCC51C32454B6176E26B168362A4
            6E5BA685CF86B91D343E1B0D45457F0F8D556090D352C4A19F666DA0E8F2D508
            4FA4DAAA8735560A6D3798A8D49B663154FE1C9B0985EEA9F99458D044A39C9C
            4555F384D2BE488439D6C4D52C67A3C5D7BB47F8726075CCBFA40880EF1729B3
            1E6950E92A609F35BCF747A8ABF9F65ACAB52BCB4AC0E29E1F1870D46853D343
            E7C35CAF4D0B81C5483C8AC561DD85D486DC33A5EDEF9E41891C8719AF2349DA
            F2361F8E46EBF1C5F6745820BCCF29F7688AE52DCE5CE4E5D6E222B1FB7D242A
            F2C41DC4455B2A6647482F518542D518E9C9E1321E1F25466BC85199E7C9EE4F
            232DE9E463BF3C8C27E78705973762FA8DADC1752DB95EA25679F1025CF8894E
            686811F32CB4121966589CBCCB3C46EB502DBF7F169E49D35D1D8D015B3F3221
            5CCC25AACB9B7ED40FD3916AB9AF039F1669FD3E86FB0338D0EEF905FEEF9070
            181807A47F51A1239F10D6AA7AE69EE5F1BE8CBDA5AA16752219CEC7D01573F5
            8E9B08E05FC3A6A56A75B5332C89166657965681C67E811037C44A73E204B96E
            A256385EA5B718D46D9ED002CC1A709F8E4E3BF1C9CB7A39F27B91C95198E428
            CDB83C8789C5BA7278BAA1568F69051A34D95C30C77293350AA2B7EE7A80CB5C
            DCADA69657A80E2E03652372A51DFE64DE91CF3C31C97558E33F4B28A2899384
            95AF0B9CA1A09D3AA5B93D35C630A150CD2BDEBAF17861993CE5E5D9EBE7C569
            CDDBCD10B4CDAD86E1E07B9764898FEB74BF4D7F9B77DA96FD2AB3FF00A356B0
            7D85BC5EAF63D51D14CDE059C378D6C7F5404588B7AB6ABE46C353FF00A33FE9
            F1BBFE4DEA09EEB9FEAF4D61DD91A9B8E1E45599ADB0AF3743422B7E6A65D91B
            AECC82585E291C5F0A1A0C74D707D3AA5782CE5031292B6E3C8A214D6FA19875
            59E79E19E45E93F32C51D387D9483C6BA80E5E5AD37B73A7CCB50DFB925BC03B
            DA6F7451BBE58E9A2F3E1AFA0B80E0F9645C173ED95E7DB2DCF4EE5B9F27BB3C
            8CA7A7918CFCF1ACF653A74EB9F30C7A2E3D270AE9441F110E7934A4958F71D2
            A3A665FBC9B7FA7D6C799B2C622ACB89B074F1ADC5CA5C7D1D7644CE3A93F637
            0E40E96503D3AB96990CDB603C291DFCFA6DC540C7A5D15AEBBFA42F56928621
            749B9FB1E4B34164B042EBE96D12B129A4C81362E66DACAC698B61CF7ADA76EE
            212B52D1C46C1B80F2193862B19FA0440C038D90F6F5139C573D972938CFC727
            29E8E7C9EEC73D3B95E7DB2BCFB65B9545C2F0580E139F0D7D13D345E3C8DD02
            D2D34B8EDE31FEE263BE1A0CAED66B3E91EFC2715AB8AFF553691728EAD3F445
            F785523CF1340A3A53C052C90F97996749A5150D6398F3F5F763BC31F9351366
            D0B67C0DBAAB466A75F5447C6743CF234EF50E38D6E3EFCBD6523268BB9615CB
            5CCB2F93F275CD92BC80463FC937166BDE9209902662E1D3A5038EE1A85656C9
            A29E45987A73BCB53C72D4FE5833DE0D89882F33A2A58D5CD94C81348A4A28AF
            33F4088187D4012DE3E9879CA24B7F55C69356A9ABF85A4CFAB7950CB0D44774
            7EE7A894FA7986F7A85BB26F58E4B018E4BEA47275518E4ED211C9DF46393D44
            A727A903CD2784F5D274889E9A8ADD46DDB3CCD29121212492867D9B3E05FBD6
            DFBF879FFE625BBD8DD241057EA05875CE308AD944545A0EBD99E1B3D9B93C7A
            69DA7434AF6F45A262596B0521FE5961EED2DAF6AC8F6CD50F8B587DFE2AAB73
            678917C133A5A438B5B4DCA57399A9CBAB65EEB88AFBAF1442669BEB9ABD3C5A
            543BD6EEBF30A7EB7505A2AB69E6592B0C9E09253BB99EED9166FA8AD1475D23
            C7CD7848DE3A903C8EA25391BE8CF236909E46AA33C87D49E43019E45EB3DBB8
            F7A75B9D3AA7D3FBA30AA70B6ADD46173DD6322F0DE03E851E1B88B29DBF0AB3
            E1B5E7EAC5AB1217024CCE9E2C539BAD08F637509ED5ADEF34A564D622D60D57
            FE9BDD43F406EB1031EAD8EEB38CF99EA98F328E33E3B9CA4A62E6D7CBA4FF00
            E93667EECC69EFCCBFFB4EC66D29CA9CABC7AC66DCBB8C77FAB67CB236CF8E8B
            998274E447A7667BDC5D6316083B887524CF07BC7A461B6001BA84B524B0E045
            996FEEA4F82BF869A2CB96410A22379E1A2060F764CA2B76D808AA00FEEF4F3A
            AF80A2B848BB0554A8ED819E4C45EA7C348DCBF4D73E1B3F23A68BCF86A791D3
            54E474D8391D3AA7230118E7C848776861DD6A56F6A4C9679525E9C89989122E
            37C074DDE780C6481C9A45387AF8AB179F33A86FFD04AB06CDF2EF663937B4C7
            0E81039B8FF4E552DFFA8DB9F0E6624F8B309FED3B3ED40CF21B366F6EC8BCD7
            9019A32F56A2CCE9DB772F72DAF2BD3C15AD6979363246E17A7CB4E1D3716ECB
            1AF7E47267BE73F0EECD3E4243BA70119E4F4EA9C9E9B0727A6A9CF86A793D34
            5E7C367E53A6B80C3483C888A55EDB02DC6182B4510AE62666755007EF743344
            FD1A48E9938B69B6AF05D4BCAF50256E7CB887277508E7C409727A894E7C480E
            4F52D393D4B3CF894DC9EA36A784BF98402A766CB74E5E78BE628B7669EA467F
            3E5C7E979BC1006FAB73D3CB3EA93CDCDCBF6BC79FBEF7901AF6CAC686479A3A
            577BA8BDBF13DAA9FED3BDED783ED77FF69DBF6AE9DF6FD21D2DBDAB8D0B0F05
            01B16D89FBEF53DAF289E566829E61C3F5AE6F3DED84DF796D0E4DAB1C633146
            78CF4E5E38754EB48EFE5923A8DA8E7C4A6E4752CF23A969CF8901C8EA2539F1
            025C8DD4279F2E21CB750255E17A978CE9B6D762A91DC267E6890A7EFC83A1A8
            D74ED2DC3E638BF3F2FC25331A738AE02E1E56B5A574DFB200BBEFBE74844029
            D481FA34BEDB838C5F5192CC4D85AD5EED0231E62795ED58D3F7CF52FE9B1FDA
            909FFD0F51FE830BDA87FECFBFED781ED64FF67DDF6AE9CFD03F3FFA1D8F6AE9
            AFD36CCFDF3ABED4363CB4F26BDFA02B790B673F093399DEF6DDAD14A693F675
            A5BE85596C29D2B70B426B017371BCC693FC2FCF80CC718E2BD3B4AF063A069F
            F0C8B84BCB64A36E7C8A873E4742391968C72E9A00A68688CDD8A20C3B64F0D7
            5B97BD44357429A23C774DEB66B16E6F8642D2E583AFAA0F519CAEAD4199D374
            240AFF0056DAA2EE173227EE8C7F78EA5FF0E2FB567CFDFDD47FA2C1F6A17FB2
            EFFB6607B617FD977BDABA73F45A13F7F6D7B574D7F87627EF8D79FBA39942EF
            13C229D4CDCFA8F3840102BBDA3E292585211FD03D5BDB4359B5C98EDD266682
            602C71CC35D9E3683095B99FA230F289A07A4E5A33CF91D09E7C8A872B928D78
            35C22FF96C1C6B074348AF92226673F1A262D60AA1118671FE7C1FDD1B9B42B2
            9A002D4E0D55FD4E7F4F92F2973D1274B9B6115F8CEFF99C61D3333CC263C79D
            8FEEFD4BFD987ED59DEF7D49FA3C0F6B17FB17507B6F4FFB697FD8B7FDAFA6FF
            0047A3EF7B9ED5D35FD9B1EEFBAC783378BBA65A56DFF2F80D848FC898B42D8E
            15DBD74BB9F7188513159A5F880CDA7A96AF8AA70CADA790EB4D72F4A92BA18D
            111313139FA45408B9C6C87FE76A3F6759FCF88E7D03232F8B9B02F33333F40A
            85C071B21EA053CD58FA77711C80157CF9EE88636535B8C751317E1993313C5D
            42B3CAA63171EAD3C1844F09F27DD7A97985ED59DEF3D49FA6E9FF006C1FBFF5
            0FB774F7B713DFFA83DB3A6FF4DA3EF3BBED5D35CD6F75DD2788E8D69E0B2632
            F185AEB5B8164C095FA898A716D94D8E36A09F069675A32B32B6A66E8B70927D
            3EA4CF635B4C90EAEB519E3D9F434FE5CCB7EC931FF3B413BA4D2E6F4EC0A3C5
            032549698F3403F3BB83EBB1D98FAD5B7A44A1AEA2AC7187996A7E60EFE5DD73
            79B5D3F1F958F1F6ACBF73EA5FEEC1F6ACF9FBDBA97FC1D3DEDA3F7DEA29FB07
            4ECFD809EFBD43EDBD35FE0D09FBDB7BDABA6BFBB53DCF623ED599E3F29A67C9
            8B4F8A7E62EF32ACABD4559E04E2629AD9CC3C718EA217AC0432ACCAFB6BA508
            3458F0C306F50C67A7775AFF009DA8943AA7E539E6B5978EE25877F3781CE62B
            B052083473A8785310F7E2B8CDB3C5B01617343202D0083B849D83248ECC9685
            E628BECE85EA37F75B0B454B63D12632D84665E61BE54C5A57BE7BFBE679DF31
            CEF9EFB18B7AACF30A7085B14CEEC7AD4F09B0AA57EF523FB42FB380D5172D69
            BCF62CB11A329980556670162F1AC66D6EC11880BA7D43C11867A69AAC27A143
            DCFA33DC3B681AD55FF39CB4A1253FE7EE2BE9DF50FE9DAA7F42B4FA966F6449
            D596CCD93F3E2784C31C5731553E6750162FA1F32AD1E8188999166386E0FA75
            9B729D3628E53051AF2B948D79E8D4A73D3839E9C1C9495B72D948DB97C146DC
            BF4D8A784E9D66BC2E6381E4C4C4D9A3DC3DB6ACD67A7CDE5BFDAD662ADF1CC2
            617E7E5C59B328453604ED3CBA77DFFAF56CFEA1AC357D43FF00F43A803E621C
            15FCC0BBA9249E259A77AC9652E947CDD1EFF944768A5A7F3100A79074F337E0
            70131704B8431A1A03CF17C484F1889530B87B5ABD4FB9F5757B3B9BD57F2CED
            035784BC0C42EA40CF16682D8CAB84D06C04CBC3F4F334E140504C4F7492F04B
            6777FCA3F35DCA5DD87734E8DB896A48E4B7F2C3CE9F0F9687FD0D2AF8F37927
            B48794988B864721F9DB393269E67FA7B143788AD2DDBB8891B0ABA0B1E83AD2
            83E6BC5FE5B742D80D1FDB79F08FA6E3BD8CCFEA750F368BE565A4A2DF21F4D5
            27CAECBDB86BC4D743D3D4BCC6C990CFCE348E037989BF20F680F336BE0CEFFA
            05A79A128EC12F62392C3B2AAD5517F9FB797DDD99CED8B515A3BAB3E2AF1C63
            D2AAE388BCBF4EDAF29F34553DF6B7533B25A7F6129E60823D3CCBE1267A1F9D
            485FABF0F33E04148495E5A7C352DA3BB45DB0ABCC4CBEFF00C0696AB6BBD92C
            253D821D8C5153CA0FFD17B2C0F73E1AFA56C45179FC1FCE35F3FD1303258245
            0D06A8AFDFD96AC5AB18A845BCF514A13711A72DD4808E5BA9679F129B9F129B
            95EA59E57A9013C1EE237E5C79DA17ED2DFBB8D9A035212C626467FAD623E88F
            C167114627E1AFA51CB023FC01B5AADAC51D825CB37D7A1AB3436F26283F5131
            7E15E68FDA9E719DAC477DB473273E99D993A1498EEB399C64ABD8279A0701D4
            4C5381DE4CB1735629A86FAE21D8C54D6AA8B7F0DEA253C37E4DED6EDACF86C4
            0D4E3E74F4FF0046BFDFD49FE3E9BFF1DBFBFA867FA3C1068015A7C56EC8BDAB
            D9D3AA7889FC39E5A1C50A834222D82D1B8BE1A61E3F9616C060917284B7010C
            1A30209C8B923F3EA3FECE9CFEC9FEE31C8C1021A2E231AE72842460A8658540
            318699B8CE0B41E09068A445584D4FE27A39C37C460917284D75CA6051917355
            E1BC1CA786887810516118D760A109182E7670D017F19D1CE1BE23048B9426BA
            E53028D0BB020A2A231AEC14212305CECE1A02FE37A39C37C460917280E45CA7
            00DA10003544739182842460B9D9C3405FC7747386F88C122E501C8B14E72325
            0848C173B38680BF8FE8E70DF118245CA109182E7670D017F21D1CE1BE2CECE1
            A02FFE1F7FFFC400471000010301040508060805040105010000010002031104
            122131132232415110334252617172812334628291921420304360A1B1C12440
            5073A20583D1E1534493A0F0F163FFDA0008010100063F02FF00E0ED76F979F6
            1509747E20AAD35077FD9D5C6806F5405D27842BB7CB0FB7F850D9ECE7D1F49D
            D6E5B9254C07F241EC3569C8FD897BCD1A332AE475100FCF9459ED07D1F45DD5
            FC246CF673E8FA4EEB727D32DDAB08C9A77A8DF6522F3BA2DCA9C971F8C07F24
            1EC3569C8FD72F79A346655C66100FCF9247DA88BCDE8BB2A2FA65875A139B46
            EE4167B41F47D17757F081B3D9CFA3E93BADC9F4DB6EAC4DC5AD3BD40629EF36
            9B0372D2CBAB676E678A65A6CEF6B6F617474B92E3F180FE483D86AD391E4366
            B33B1E93C2166B4BB1E8BCF217BCD1A332AE330807E7C8FB4DA1ED75DC2E9E8A
            D2C5AD677647829CCB3DD681B077AFA6D8B5A2762E68DDC82CF683E8FA2EEAFE
            0E367B39F47D2775B905A2D0DD4E8B78A366BA1F23865D55A59756CEDCCF1510
            B2CCC109C2EB77A0C6EC8CDDC109E0701730353B5C971F8C07F25A0B2BB3DA78
            E5D05A9D96CBCAB8CC201F9F219E77037F0143B28B1DB272771528B54CC308C2
            EBB72D2C5AD67764782166BA1923465D646D1676EA749BC39059ED07D1F45DD5
            FC186CF6777A3E93BADC82D1696EAF45877AD1454331FF0014679C9D157127A4
            8C6F68BA45D6C637AB8CC18369DC152C4E60683473AB8A0C2F376B5A264D6593
            48FA54FB5CA6D369372CCCDFD642D36637ECCFDFD5E57CD6A9346FA547B28B03
            CDDAD68A96D2C2DAD1AEAE2AE3F161D97714236345D02EBA33B909E027455C08
            E8AD14B4130FF246D1666EAF49837720B3DA1DE8FA2EEAFE0A367B39F47D2775
            B93E9B6DD58862D69DE849138C6D66C008CF393A2AE27AC8603831811738F7BB
            73427376230313BCA2D05D72B500A65A6C926970D7575D8C2731C17D32C742E3
            8903A49BA6692C075820D68B90336188B5C2FC0FDB627685A4309D50BE996CA0
            70C403D1575B842321C53ED36B934586A20D25D72B52026B76E32303BC20E69E
            E76E704701C1EC284F013A2AE07AA8C92B8C8D7ED82BE9B62D688E2E68DDC82C
            F683E8FA2EEAFE0836488D00DB3FB727D36DBAB13716B4EF5D5886CB56965D5B
            3B733C5362B16A451F0DEAF38F89DB9A175636EFE2B137631B2382BBF4BB3F1A
            E355D68CED357D3AC38B4E2E68575D8C2731C10B7C0E1AD9D3A4AEB8D18D1572
            BAD3563855A8DBE770D5CABD1575B842321C57D3ADD83462D695D58C6CB55DFA
            5D9F8D71AAC0DE8CED0E2BAD1BB7F0579A7C2EDCE09D15B75E2938EE5A58B5AC
            EEC8F05D688ED357D36C5AD13B17346EE416494D41D83FB7E07949CCBCA266C4
            31B78378AEAC4DD96AD2CBAB676E678AFA2D9756CEDC30E92B8CC1A369DC10B2
            586979BB4F4D14CB2635165964D238ED38C6AECD2E8C9C88841056B4EEBC32FE
            1E8AEB9A6E74985696CCD732BB4D2108EA4B6B8353DF273920CB804C7C7CE463
            2E2118EA436B8B5692D2D73E9B2D015D6B4DC1B2C0B56775E39FF0F557619748
            4664C2000832D5268DC365C234E14CF36391B25BA979DB2F571F8B4ECBB8AFA2
            DAB5ACEEC31E8AD2C5AD67764782EB44EDA6A061C03DB78B782888CC3C7E0773
            E9E8E4350507B0D1C32211D34986D3B8B97D16CDAB676E186F57198346D3B82F
            A0D873E9BD08E3179C54A6371D35C353C96A71D96D2E9F6AA98E7CAF3339B837
            054924D6762494637614750ABEE7695D4AB70C93BB937B95F6BB44EA55D866B4
            6DC6AEA0548E4D66E2084F73257899ADC5B82B2B86CBAB78FB55E488C8E3A6B8
            28518E4175C17D06DD9F41EAE3F169D97715F45B4EB59DD863B90D0C986D378B
            517BCD5C732535F4F4719A93F81CC52B6AD2A8EC58765C83D868E19154AB5A5D
            8B8AFA0D873E9BF904B1F98E2B491F98E09CEB3689D1B8D74728C930DACC7AB8
            C76788615E251965755C54326EBD8A79E8BF58269AEB36301C9FE1299E109C6B
            ACE8C86A61E8B358A9A4DD7B042589D4704F36431EB63259E51857884D75A744
            D8DA6BA38866B492790E28CB2790E1C9F41B767D07AA55AE2DC5A517BCD5C732
            A8DC18369C8451368D1F820C52B6AD2A87161D9720F61A386455E6C6348EDCC1
            9F289233DE38A1333191D9338146491D571E511D7F8B872ED55028460F61DE9F
            2C47A26A38264B29E80A0E2AA4549C18C1B918EBFC5CD9F6728923751C1199F8
            48DCD9C4A32487B870E5BCE8C691BB9E3245EF3571CCAA0C18369C8451368D1F
            828C52B6AD2AEBB161D977141EC3470C884658806DA86DB074FB472B7495B9BE
            8BD15A5D0BB83969232268F8B390491BA8E0B491D196C60C5BD64F68AB49175C
            D298D357102EB5A16924A3ED8F1837AA8C923AAE3C9A4908863E2F5E96D2E99D
            C1A9DA3ADCDD5E512CA03AD476187A1DA517BCD5C73255D6E0C1B4EE08451368
            D1FD7F191BF158CF1FCCBD663F997AC3573A4FBA57DE1F75611CA561677FC561
            66FF0025859D9F15845105F763DD5CE81EE8572596F37853903D868E19146588
            06DA86DB074FB472359D63455686C83D92B54914CD8E46D76314987391ABB697
            3D8DE2D0B496691C5A365D4A2616C203E94D5E915A4928FB63C60DEAAD25A647
            069DA752AAED99CF7B78B8216BB60ACC79B8D6B126B931AAAE0D8C7B45399D53
            4E412CA03AD476187A1DA517BCD5C733C972296EB785173A0FBA17DD9F756314
            45636767C56366FF00258D9DFF00158C7285F783DD5CE91EE95EB0D5EB31FC56
            13C7F32C246FC7FA766B191A3CD633C7F3231D99D7231D21995573DC7BCFD8E4
            B08DC7C961049F2AF5693E0BD5DDF146595AD634717723A79DDA3B3B7A5C7B90
            7C6E2083815788ABDDC0668DA271E969837ABC930184AD636E9F8AA8AB5EDCC1
            DE8DB6CD46C8DE7589964BC5CCAE0D5A5968FB63C6AB7AA9CE9AD0D67173CAFA
            1C52874230D46D2A85AED62B31E6E3553573DD901B9420E32B98EBC7E1C82D10
            0F4B4C5BD65780A3DBC4648BE471249C4A6CF03B4967774B877F209626B5ED3C
            1CBD5DDF15EAD27C163049F2AC6370F2597D8D5AF70EE28476975F8CF48E6161
            3C7F32C2469F359FF402F7B835A33255208AFF00B4EC1610C616518F25B6D1EE
            AE7CFC02F597AC6D12FCCB195FF32C5C7EA39FA60CBA694A556B5A4F93563348
            56D4A7CD6C38FBCB98AF792BD598B0B345F2AC2267CAB068FA86595D46855384
            6365A8DA2D06E599999EB76041AD1721660C60DCAF3AAD846678A7D445152945
            268E7638D38F25A3C0CFDD6DFF001032BBFBAB8CA92EC2837AD2CB47DB1E355B
            D54F949F13DD9216486289AD6E15663797D2ED62B31E6E346594E3FA2DB1F483
            9DEFD959FC0FFDB923D24EC69A714CA08A5AD6AAF36AE84E47822D70BF0BF07B
            0EF42D16737ECCFC8F57B0AA8C633B4D42589D569FA98B42C6267CAB1B345F2A
            F5662E629DC4AD870F796D4A3CD6134816ADA4F9B535FA60FBC694A53EA60E2B
            095FF32C2D12FCCBD65EB9F3F00B6DA7DD59467C9630C655278AE7B4DC507B1C
            1CD3911FCB8B303AAD153DA79308243EEAC2CD27CABD59CB99FF0020B260F796
            2F8879AC6767C16369FF00158DA1DF2AC6590AD3425E6875AAB44E3AB2E1E7F6
            86595D468578E0C1B2D46D168372CCCCCF5BB02000B90B306306E5A57610B4E2
            78A114406929AADE08DDAC921C4958C25C3D9C550492B3B112E95E4BB034DEAF
            3868A3EB3D1166F4F69EBEE09D33EA5B5D772167B24218D199DEE5F4BB58ACE7
            9B8F8274F254FE81321907D1E66F4F8ABCD1A58FACC40B65782DC05772A19257
            F62C212D1ED6085EAC720C41462940D25359BC5695B8C2E381E08822FC2FC1EC
            3BD0B459CDFB33F23D5EC2AF0C58769A84B13AAD3F69A269D58B0F35A698BC54
            EAD1612C81616877CAB0B4FF008AC2767C160F88F9AC987DE5CCFF00905EACE5
            8D9A4F95630483DDE43662755C2A3B0FF2E5DB9ED0426BC744D53246E4E15FB2
            746FD970A14E8CED30E0507F4C60F1C9AD23477958DA22F9963698FE2BD607C1
            738E3EEACA43EEAC2290AC2CEEF9961661F32ABF068C9A119ED06E59D999EB76
            04001722660C60DCAFBF085B99E2841152FF0045A372A0AB9EEC5CE3B95D141D
            679DEA9A5BDE115547B5DEF311FA2E86FEE14A2A5AAA19BAEECA22690DF1947C
            50B159896B40D7C7F242DB6B1594F371A925A17968A9EC09D6199AD2D7622A33
            5486437CE71F054B2D4B37DED943E95A1BFBC52AA8C6BBDD62A696EF88515D34
            3D578DCA86AD7B716B86F4609697FA4D3BD5F6630BB23C11045F89F83D877A13
            D9CDFB3BF23D5EC2AACC5A736958D987CCB1B3BBE658C52059483DD5CE387BAB
            D607C161698FE2B0B445F32D591A7B8F217F4CE0C09B18DA79C4A6C6CD968A0F
            B27C8EC9A2A9CF3D23541DB98D24FF002FA568D68B1F2E436579C5B8B3BBEC76
            82C668C7BCB48C9E2D333DACC212332E9378A12C4EA83F92BEDD49BADC55258C
            8EDDDF60679CDCB3B333C7B02000B90B306306E57DF840333C54D144D17EB463
            78601506B3DD8B9C772208EF1B9C15657E1B9A321CB506857D1ADDAF13B0BC53
            66809D11356BB82D24B8B5BAEF29CEAEA0C1BDC9AEAEA1C1DDCB49160D76BB0A
            74D393A206AE7715F46B0EA44DC2F05526A796B13F0DED3914001DC37342A1D5
            7B716B86F50C52B45FAD1EDE38157D98C0723C11045F85F83D877A13C06FD9DF
            91E1D87EC291464F6EE57DDAF375B8232CAEA01F9A323F2E8B782D23E78B4CFF
            006B20B09A33EF2DA1F622CAC38BB17F772695C35A5C7CBF9720E453A3E81C5A
            7B136461A39A6A1091BB5D26F047425B7F75EC918E46318EF0AE71BF2AF583F0
            58DA64F8AC6D127CCB191FF159FD4BF13BBC6E28349D1C9D572A38023B557477
            0FB068B56778EF0BD67FC1636877CA8CB35A5E1A11B95BBBAA8CD31B9676E678
            F604001722660C60DC848F1486F004F14D646D17CE0C6F0541ACF762E71DC8D3
            70ABDDC554024B8D1ADE01685947CC36DFC3B0275AA5D56F039941CCB4624571
            6A74326D37924B04C710350A737EFA6342AD129D98995F3567946CCACAF9A6B7
            EFA1340A3B04271235CF23618F69C897DA31A5706A16966B8ECCC2D156E4DD17
            71EF552082D347378842BBC558EE0A8755EDC5AE1BD3992345F183DBC519182B
            0DE201E08822FC4FC1EC3BD09A137ECEEC8F0EC285FADDDF442586D2F2D2B0B4
            3BE55EB3FE0B5A779EE0ABA3BE7DB355468007622D07492755AAFCAEEE1B87D4
            CD6123FE2B0B449F32C2D327C57AC1F82E71BF2A11C6C63DDE1434C5B7F7DDC9
            191DB5D16F14E91E6AE71A94D8FA03171EC400C87F317729062D28C6F1470CC2
            12447BC715AA6EC9BD855C9981C156CD2FBAF58C04F87158C127CAB0824F957A
            B4BF2AF567AF573F10B9B1F304627D2F0CE87968C9496F55D8AF4B6707C2562C
            94792FBCF956CCBF05538306CB519A637206E678F6040017226E0C60DCAF3B08
            5B99E2A16305D6895800F3445765A02650EBBB17EA9CD39913B59C6991569B77
            4F6589D2498E8F1A76A97CBF551F842B744ECF462E9E0539BBC28A4270AD0A87
            46EAD09AE0ADDC55878A9B48EA548A60A5901C2B409ADDE558626E7A3378F12A
            53D8545E684B1EA976B60ACD6EA6B9D5726B2571BCD34C8A7D4D5EDC59AA7340
            5769A42998F179A657823CD5E6E30BB23C11045F89D83D877A13426FC0EC8F0E
            C2AA3161DA6AD997E0BEF3E5583253E4BD159C0F11547CA437AADC39444CA5E3
            954AE6C7CC17AB9F885EACF5EAD2FCAB1824F9561049F2AC2023C582ADA65F75
            8AE42C0D0B58DE937302324A7B87042360AB8E415DCE438B8FF3418D6D676ED3
            BF6E40E69208DE106CEDD2B78EF5CEDC3C1F82D47B5DDC7EA62E1F15CEB3E658
            DA22F994A6B7B58E2A29059D86ADDEB0B3C5F2AD7819E428B51F233CEAB56D3F
            16A32CB6B6868F6516EFE28CB31BB03733C7B020297636EC306E57DF56C0333C
            55A18C146B65200F20839B83848288B9C6A4A759E384494D6DBA26E96CE23687
            E77EAA403A3262A7F0852778517802B5F87FE161B2E73BE0A2BA2AEBE2811D25
            943030DEBD7EAAD7175E3FDD5922EA47FBA1A3B287879BD7AFD14B7851D7CD42
            15D90E6FC1593C3FF2A51EC95183B8951712D2A31C5F827E8ACE24697E77E89B
            6792111D75B6EA839A68422E762E321AAB3B1E2AD74A011E455F655D01C8F044
            52F46EDB61DE84B09BD03B23C3B0F20962B5B4B4FB2B5AD3F06AD77C8FF3A2D4
            819E62AB1B3C5F2A96436760A377288D6EEB0C561688BE65CEB3E658387C7EA6
            BBDADEF2B9DBE7833145B03744DE3BD1738924EF3C858E6D2776CBBF6FE69CEE
            02A8B9D9935463639A282B8AC6D0CF82F59C7C2B52EC83B0AC60947705F7E3E2
            BEFCFC573531F22BD5E5F82F567AE63F309AE999407B53ACAE3ED33EA191E700
            AFBB08C6CB7827C926110CCF1EC0861758DC1AD1B946F7B4E84BC36A8318DBAD
            19056DFEF950FF0074233D9599ED463F641CD718CE44D324E06DBA514BC1B706
            2A6B1CBB330C3BD10F1960E1C422F89E1C0B8287C015ADD174C5DAD54F6E9053
            54B58839AFD1DCD6BF9A94CBFEA3565DC45C18AC3922D1DBE8CBB80B8155EFD2
            5F17AF528A1B6C58E003D591D2D35356B553780A0F95F401C500D07834700A1B
            0C38B6118F7A6816CD18A5E2DB80D1389264390345A7B5372D967FCA9BFBA558
            BFBE1163DB79A730A47B1A4C21E5B5E08E1798EC1CC3BD092237A17647876157
            862C3B4DE284B13AAD3F51B6569F69E9CE859503B5731F985EACF5EAF2FC1735
            30F22BEFC7C57DF9F8AC2094F785AF7631DA57ACE3E1585A19F04237B9A6A2B8
            20E6E60D535DC457F99A152447A254721D9C9DDDF66F85DBF23C0AEAC91B9091
            B9F48702B2AA3198250E19D5549BB137208B9C488F79E3D811DCD0355BC15E7E
            10B733C558DADA35AD9861C96CED96AA11FF00F4414EEA7DE1463B5037C6F15C
            55EB24C6EE630D9420B51D1DA46CBF8AD56691BC589B00135DFC909ADD28681D
            0E2AE3352CECC820647B9D2748E2AF40CB919C829AD330A3DC05D6F0C5433C03
            D253587115434E0BDBBC0DC9DA07112D30CD1126B40FC0B68B4D609439A7A1C1
            68836D176944D0E6E8C0EB27C766F4969766FE0BF8B90D0E278B8A0DB1F39C71
            509395F08A98F17AB1D77495E4B635D88329AABECE65DF92385E63B69A77ABF1
            9AC672ECEC556E2C3B4D418DB3CA5C7705951191D9F44712BAD248E4C85BBB33
            C4FD9C920D9C9BDCA388748AA0FE69B6A68F65DC9A179F491FE639717058CD1F
            CCB1B4C5F32F5962E7ABDCD2B69E7DD583253E4B0824F8A123612C7EF35CD691
            99749BC51B45FA0198DE9F2101A2ED1A15E71A301C5014A346CB782748EC216E
            678A99A320F2ACBE3AF25A78607F551318F6937B5A8500C63E43F053453370B4
            9C3B0D5480E0F6E2D3C5689BFE9EC91D4C45734D747637B070AD68A834CD6D78
            5427B6F3F2DCC42492295DDAE53092C2E073D217278EC503256622B8153797EA
            A0EE5232266271A0EE544D11D85C4D6BA40ECD1788656D3AA86B3FCDA873CEE3
            8515E7D8DF2378568B44EB1318698628018B9C6A4F04D8A16E167CFB4D510E63
            D869DEA46B9E012EC2A559BC555E4AD5C4BAAA169C8C8B48CC60764782E2D398
            E2AF371615A40D0E191085A2FD5A721BCAD23F2E8B782323A12F7EE35C963049
            F158B251E4B69E3DD5CF53BDA57ACB161698BE6584D1FCCB070E5D0B0FA493F2
            1C8EB5387B2DFE6DD13C6AB8513A17EEC8F14D963347057D9B5D26F054BC58F1
            9382A4AD34EB6EFB3AAAB718FAAB5598A798C0616478B3AAAD01CE00501C545A
            278786D7257628DACED38AD57107F5541139CEF6535CF89E03B10A0232BC0A85
            C06379324BAE65E179AF69C147E9E4F991F4F267D64FF4F265D643F8893E6520
            7C8F70ED285AE5C6A3502F79DFA292B8E4A33DE9BE21FA236D8B569B6D575923
            AE1E0551B2CBF32A09E4C3DA4DF4F267D647D3C9F329650096B5B5738A98D31B
            E15A8FB4539CC8C901AA8F639A6BBC2BAE71A6EEC572789AF1C460A50F7DCBF9
            55599AD7023138263A501F7D828CE28A24E4EE8F1FB4A44D34EB6E54BC5EF39B
            8ABEFDAE8B78A74B21AB8A6C2CDF99E09B1306AB453F9CC3095BB2518E46DD70
            CC21244EA3906CBE8A5EDC8AA10082AA18633EC2D4B4FC5AB9F8D636867C17AC
            FF008AC6D2EF95633C8B6E5F8AC9E7DE5CD9F99196071918331BC2D52B0C11BA
            E22A2856085C85D4E2700AB3CC1BD8D5CDDF3C5C532E8005EE098DC316CACC90
            7702ACC46FC5421E038160A853B221B17881C94E4FA44F839CE146A87CFF0055
            4F6CFE89F4E21309E250F18FD14DE5FAAFA4406AE6B882CE2A9C98285B28DBA1
            20A9C3051A23380569AEEC51A9CCA7B7836267FF007E29E1C1AEC725CD5C3C59
            82F413870EABD6BC240EB01C82F1AD0502C7904B3B8C6C390DE57367E6593C7B
            CB6E5F8AC2791616977CABD67FC5616867C173F1AD7B4FC1AAA58643EDAA0000
            08B62F4B2F66411925755C8471B6F38E417195DB47F9EC7564193D5D95BDC771
            E4A4729BBD576217A683CDA5637DBDED5CF7F895CE3BE55F79F2AC1929F25CC4
            8B0B31F996166FF25859D9F158471273E8054E415218DCE55B44B77D96AD4885
            78BB1E46B5ACBF2393649230233BAED2A9B2372C1C9BECDA3F270FFB5233AAE2
            17FA7BBD92ACFE04EF7936D11E17CD0B569ED1CD9D9037AD1D355AE70154DF18
            5179FEABFDC3FA2778826F88AFF707E8A5F2FD53BC6568E9AAE7341A2D3D9F9B
            1B40EE4EB4498DC340D4DF755A3C0BFD41DEC851B3ACE013BDAB47E4D1FF004A
            46D9CD1D534C69926596D46F54D083BB9002462B5E215E2DC156CF2DEF65CA93
            46E6A6BE80D0E45631C4B1B3B3E2B1B37F92C6CC7E65CC48B164A3C97DE7CAB9
            C77CAB9EFF0012B0BEEEE6AF43079B8AA4929BBD56E0392EC4DEF3B82C35A439
            BFFA01648D0E69DC55EB33EEFB2EC96BC2EA716E3F6756328CEB3B2559BD2BBF
            2575AD007009AF6C57EA699E49B0692E5FC0346AA8E295C1CF68A5428671BB54
            A8ED0336D1DFF28337B6AC52D337441E3BC27B865251E3CD430EF8CBBF350785
            0F7943E350777EEBDF7267F7147DE7F55FEE947C410F115FEE852778FD53FF00
            B8BDF6A9FBBF75378D1F754FE15343BE42DFC931C728EAF3E49AF77DDC2643DE
            53A67C77EF0A669F69235455DFF08B9C68D1892AFE4C6E0C0A2AF5020E99D404
            D16A9648C3E6AB0FA277E4AAF6559D66E5F67A90BA9C5D82BD697DEF65B920C8
            DA1AD1B87F44F49131DDE17ABB7C9731FE457AB8F895EACC45EF8216B46F2118
            ECB0B238FAD7713C9489986F71C90749E964EDC939E765A2B8298415639B80AF
            EAA5B35A5E4BCF1E2B5803DEA1B5B3FF00A428E51938554AD03102F04FB2BE32
            FAD68A67104309144DE0D7D0F71509DF19311F2CB922EE2A3F350788A8BCFF00
            54DFEE3947FDC4CEF2BFDE28F8C21E32BFDE09FDE149FDC4EFEE354BE5FAA9FC
            4149E4A5EE1C931DF21110F3CD4CC8055D23AE81EC84D8ED1134B89A90E0AEC5
            1B583B02FA244701B67F650B23690E15BE4EF4D1D899648CE0D377FE533433D4
            9C50270344ED1C8D7D3028BA3F4527664A92B30DCE197208ED50B248FAD77108
            3D9042E69DE02F5662F571F12B98FF0022BD5DBE6BD1C4C6F70FE966594D1A16
            3AB18D962A015284D6AC81A18F877AA92D8E36A1244E0E69DFC974F34EFD0A8E
            D91F4B1F34C95B9385548DE90D609D1BDA4069D52790CA60881E242A692F1E0C
            C538450D03852AE29DA476D1A900723E3DF1A87BCFE8ACFDE547DE7F551F8CA8
            BC69BE22BFDF2BDF0BDF2BFDF09DE20A5F1A93C6149DE3F5568EF0A6EF1FA264
            7BE4E46E8DDB26A0109A2586A1A295695CEDC3C1F82A8351D89D3DE325773B72
            8B41672186952D18553E5EA8C3BD0B7330ABA97BB50B54EDD46E24D3045A77A3
            1585EF7381C299D53D9688F9BE9648B5ED05A771466B2E44D047C7B9508A1586
            B46769884B11AB4FF4F3FF0089B8347206B88D2C8DBF0CA38F04262297B5256F
            02A46F4A221DE4AF0A988ED350962755A509DA35A3CFB94764D0DE78E96F4D64
            B83AB5A7058E4A97EFBB83152163631C732AB2CAE7779E437184819D17A4D003
            EDCD5FC82616161DDA91168F8A9DBD688A83C4ACFE699DE545FDC50F8D7BE50F
            EFFEE878C23E328FF7FF0075EF85378D4BFDC4FEF0AD1E4A7F1281BD58827979
            60DDAF1170F8AF47A027D89A9F91403DA4572AF256295CDEE2A9331B20E39154
            BFA37707AB8F269982D2A2B3D9985FA3355035E08706E453A4E964DEF4EB6499
            9C1BFF003C8F1651E89BECABC5B4998DA471F128B5A469636DF9A53C78720FFC
            4EC1C3FA7B98ED938B4F10992D2B74E48D9E37607D3595DC3B1364A7A3B48BAF
            1C1E8B5F9E313D4963632F173B2A638265584893A031AFFDACB3DC519088A2ED
            A515DB3475F69CBD2CAE2386EFAA1D40EEC39143464876F6C1661879A6DF168C
            FEF5E3F4521E10B959FC6ACFE68788A87FB8A0F1147C650FEFFEE9BE34EF1A3F
            DFFDD0F1853F8829BFB88F882B4792B478D4678C2D4EB82D19FDD3C7E8B58973
            FA93D9C57E2ABF57D14AE0386E576D51D3DA6ABD1481E3B1445AF1A21811C3B5
            36360A35A2817D18C834BC14D0B3A65CC0AD16ABD7DB16AB30CDC859E47603D3
            5A9DC7B13E5A52F1C9358DD918B8F01FD3C81CE3716F2160E7603A58BF70A463
            362D0CD345D8E4D76E9E3FCC2FA532E888EB1FDC2D24AE6B40DE516591BEFB95
            F95E5CEEDE4ADCD1B38BD565ACAEEDC95226B6391BB3408C7236EB866396A2B4
            DE2B9A6DC898CF0D55B26E11DD503DC68D0FC4A8B42FBF741AAD088AF1A935AA
            12B3681A8434D25EA6582BAC91ED1C0155DEB359AAEF575F23DC38128E864BB5
            CF04657ED38D4AD098AE9A835AA974CFB9780A29DED35697E0558E6E31DD4EBD
            1324AF59549AF288A21525688B03C9DA2466AB156277664AB7348CE2CE4BF13C
            B5DD8832D6DF7DAAFC6F0E6F108DB98DBCCADEAE7442D31C776E51C546C7EC59
            D9A697B5C830F3B39D2CBFB054401E71D8BBFA817346AC9ACA39781C7B9103FF
            004B3823C0E4E6FF00E39F0EE77FFA9D1C7AF2D4E1B82BF33CBBF6E40E97D133
            B735A91D5DD6767F52E8A6A3687EA9859239B19CC05402AB56CEEF3C16BC91B3
            F35E92779EE1458B5CEEF72C2CCCF35CC443DD0B998FE55CCC7F2AC6CF17CAB1
            B333C960D737B9CBD1CEF1DE2AB5248DFF0092D6B3BBCB154228842F91CE8C64
            0FD4A3850A319FBC6FD4D78E8EEB37345D17A567667C97E1796FEE845200C949
            186E29AC63434493E341B9BFFE200FFEAA724F81AA49789C3B907386AC7ADFD4
            749BE377254FDE59083DED4E6C068D786DE3DA39350519BDE55436F49D777D6B
            457AE554B6F79F25238DCEEE5595ED8C7C4AD7BD21ED2A91C4D6F7041CE05CE7
            64D087F0EDB9DE9B23765C2A39182F1A5E1FA280F60FD79650C9685B5A63800B
            E892C85E31071AF239E7268AAF4B0B9BDD8AD242EA8549226BBBC2D4BD19EC2A
            B13DB20F8154923737BD555EBB4F3567A75C7D6A96DD93AED5AE2ACDCF197235
            B39AB581D74F69551F77640077BB9349BE477F51B40F60F2322C836BF9F234B8
            5457109862A5C230A7D736A836BA4DE3C8639C52F6C3FAA53AAC0CA613306EF6
            82BA731F9F2B1F10ABA3DC9B65FF0050840BA70765F14D6C60060CA9C9E88D1E
            6EDD51FD2DD79C72D6AA09C7805687F6295FC0BCF249C5DAAA49E68DAE762429
            DFB890396E8CCFE49B4607D7085877FB4508E015BBB6FEB1E416A9F6BA2DE1F5
            DE65A68C0C6A9C5A282B80E47C598753F2E4B38F607F517C7D6144E8DE28E69A
            1E5AD2E45D629B0B092071FB036A81BE368FD7900CE7887FEE33826861A8A5E8
            8F11C154723E6B97AEEE4647C663B56EBBFBA78756E876AF2432C7139CC176A4
            0ED5098632FA0354DAF04F6758513C450935CCDDAD549699985951415E48211B
            F590B93B68E1883826C35A9CC9E4A94E0F3414BD29E03822329E51FF00B6CE1C
            82D53B7C0DFDFEC1D0BC900F055A5F8BAC395B1B055CE340991F5453FA95E76A
            C9D60BD670F0AA96E91DC5FF006542AF307A17E5D9D89B230D1CD3509A598365
            D667B126F081C83F7703C85AE150772AE87E255CD2451B46EAAE70BBC2D5AB0C
            87BD6AD9879B97ABB3E2BD5D9F15AD661E4E5AD0C83B97385BE26A6BCBD8F78C
            A8EFA84E619BB894E2FC5B16B3FDB93704E91E6AE71A9579E3D0B33EDEC541F6
            550DD1BB8B17ACE1E1579BAD2758FE007C2EDF91E053A378A39A6853ACE5D744
            98B4F55FB95F710C0FC71E8BC2D52647706AF44C6C63E2BD24EF3D95E57BA32D
            0199D500A3265BF7FB14844B72E7622131D21690FCA9CBE8E778ECAAF4AC6C83
            E0B126377072BED21E198E1D2794DB3875E11E2E3D67EF4D8D82AE71A04C85BB
            B33C4FE0E65A5A36B55DC98B89E507871467B38A539C8FABFF005C96B1D8877A
            B379AB4F923DEAC83B3905A2D02B5E6E3EB7FD2270C7872E0E2391F6970D9D56
            FE0F7C3C723DAAE3A07D7B055564A44DEDCD55CD32BBDA575AD6B1EDD920231C
            8DA38212466842369B30A539C8BABDBDCAFC6EA14159BCD5A7C9157E4754A169
            B48AD79B8BADDBDC8C921AB8A11C6DAB8ABAE6B5EF76D12155AD313BD9558E92
            B7B33571B03EBDA28990F0CCF6FE14E128D97231C8DBAE084919A382369B28A5
            39C8BABDBDDC96673707341BCDE0AD2E762E70175BC7905A6D42B5E6E2EB76F7
            232486AE28471B6F38AE329DA77E1AE120D97231C8DA382124668E08DAACA284
            73B1757B476728B55A8549E6A2EB769EC46490D5C508E36D5C57190ED3BF0E70
            906CB918E46D1C10923347046D56514239D8BABDA3B10B55A8549E6A2EB769EC
            46490D5C508E36D5C57190ED3BF0F70906CB918E46D1C10923347046490D5C50
            8E36D5C57190ED3BF1070906CB918E46D1C108E36D5C57190ED3BF1170906CB9
            7190ED3BFF0083F7FFC4002C1001000201020406020203010100000000010011
            213141516171811091A1B1D1F0C1E130602050F140A0FFDA0008010100013F21
            FF00E1D7422EA1EA0BF5869D3BE2F485C99406C7F8DB93294D0474E8DF17AC1D
            63D015EB353FA9281568378AD61C0FA0E5E25195C9EF20292D86FF00C20A4B69
            B468CAE0F7BE2AD6BC2FA1E50402363BFF0050502AD06F1D549C07A3A7829A83
            7EB6CA6D9DBE69C9F034EB727BC80A4B61BFF98292DA6D1D3ADC1EF7C2DB6767
            9A73609A837EB6783AB9784F47482011B1DFFA7280AB411AA9380F474F0C77FC
            A1BF12C0E5B6B99E738C8AF8E82348A8344713C0D3ADC9EF20292D86FE1D0476
            9C89D04779C9F00525B4DA3A75B83DEF8348ACB4471671914F3D0CC81C36B98E
            731DFF002867C783AB9784F47482011B1DFF00A6280AB411DD49C0FA0E5E17F8
            F1FD6F289ED5AE9CD38F08F8E820DA571C4FC4B6335ED0CA69AA7EABF034EB72
            7BC8876EBD1703C4069D7A2E0C74EB707BDF0A69AA7EAB96C6E9DA18B695C717
            F138F0879E8607B46BA734BFC787EB39783BB9785F43CA0882363FD294055A08
            CC01C07A3A7875B9F58794C082C1B0E2CD48135CF81366318C14BB21343F305F
            591B26CD738D12742703C6576AC5D3A222912936F0D4AD95E826A96C0F43E00A
            00B5DA5F6ACDD3AA1649D81C2F186B7AB6E81DE34BB20343F3376318C6A409AE
            7C1981059361C49D6E7D60E5E0CC0BC27A3A411046C7FA4280AB411DD49C0FA0
            E5E18F7F9207E23CC2FDAE3350047D5F0263628E25FA8982BE20458AD28391FC
            C7753687AF58D609707E0E5C26763FE7130413611F312F852E149A5DE07BB349
            3C5DF9912F952B684C104D847CCCEC7FCE634C3987F273E11CD0DA1EBD60C569
            51C87E6260AF88333B16702FD4D4010F57C18F30BF4B84C7BFC901F1E0EEE5E1
            7D0F282208D8FF004756DF56EF8304FF00203FA9BFBFE9DE738EF898E9225A3F
            08DBF88FD35F0026C12DAB57F9609C9A95C7333A9FA1EB54454DEA070F326061
            FDD90FC4CEC7FCE264911C0B6FD612696AD53810835B56A1C264913C0A6FD667
            43FE733030FECCA7E202B6F523839B3A9FA1EB54539350B8E626C12D8357F861
            F4D7C018968FCA37FE271DF033D2CDFDFF004E739827F901FD780B7FAB67FA3B
            55B07CE64D4B5B7396F28B4B2BF2BCE71DF131D24F2D90FF00887C370E8266CC
            71B3F965C5D680A1C598434AAAAF81798047888C70D207BE2DC7E7A23AB53895
            7CCB97056900BE2404738B317D2037599E8A037789E8A2A39C598BE92E1AD209
            7C586ED4C4BA38B513D712EBF2D9108F1118E1A4C21B55557C1ACCB8BAD01078
            333663859FC31F86C1D04F3D90FF0089C77C0CF4B28B4B2BF29CE60D4B4B7796
            D355B03CFF00A39A325CF6E44D2DBD412B34182FC8948F5AD18FE21F0DC3A098
            101C06B7BE78C4DEBFAB198D31D65AD0E533AB1AC603F22AED70D0032EAAD5C6
            934C71E0470974F5170CD44D5508D08749CD1DA7240D7548588AA7D45C7334C7
            0E0CF18EC0197556A6348D6341F995F6A99D484C619EB0D68F289BD7F526042F
            09ADED9E31F86C1D04A47A56ACFF0012B35582FCC89A5B7A863A305CF6C7F47F
            6244E64F765DFDC7F2DB0DA3B6CF103AD115E0181D6F7EF356D8B4727D070869
            393EAB83337085C172630DDB047EC2238DFCBD1A14E8711AAB76EBAFACD0D22E
            62C74FF4A8EDFE9534348B9A91AAB76E9A7ACAD1B54E83111C6FE10DDB24FC44
            C5C21505CD8E9391EAB81168E47A0E1346C82F22C2EB7B7786CB3C41E9647F2D
            B4DE7B32EFEE7B922737FA41A8F4BCC9EF0FFF00B89A5B61B44C905BA8065894
            D3E1C80CFA1E0C72748BAF339473CFCAF88AC01D5B636623D80CB1E998D5568C
            A1E980D556842CC47B0082B04746DF173CFC24727483AF2394E4063D0F03C02D
            A206082CD4130C4D2DB4DE7B43FF00EE1A8F5BCDFE95EC489CC9F486DE71F4B6
            F610389DE887B9CA2534F80560DB336D72800FA477F98E355B7ABA7826E7D891
            21CC4B5C06FD29701B74087311373ED5F031AADBD5D2207E91DBE60161DB334D
            73F00B6881C4EF443DCE51F4B6F713E90DBCE7B922737FDF20D509A39EA6695F
            B66AFDBB4DC2E83F13DA2434A7A105F600FCCDC9EA67EFFF0059B49D5B1FEC0B
            F98BD3ECEB3D9149EDE7383C134B6C3681C4EF443DCE5129A6546D237E170E44
            BA9E4CAA84B867B4065DE2FCFBC43CD408F320974DABB72627D61EA6000E6229
            74D8BA72201E4A05791019768BF3ED2AA12E18ED0E14BA9E44B8DB56FC6A05B4
            40E277A21EE7289A5B69BF80570E704F74521EBDEFDA1FD813F33793A327E9FF
            0059B13D0C6FB00FE66B4F523DE04360BA8FC4D1FBF59AE7ED9AB9E8601D11FF
            005A96A0EF3D5E8CD35F6C43585F4688D903BA32EFF806D13DA7A3D39AABEF9A
            0CFA697507E66F7320F015D3E77BE1C52EC0E3C3131919C56E84C97646FACF82
            2974D878188017AD30E0C77C6B56BBFDD6500261195E1031C0048DB9F4C08835
            F8FDBB0FB7548FCFB4000BD69870222974D8380F00ABB317D660632319ADD197
            6073E582BA7C572F870786F73209AEB740FE66A33E8AFBE7ABD3896A8EDFC175
            0B20374221AC2FA364D75F6CF47A306D03DFFD01E21B4608C9C0DCA3DA37D6AD
            8BD3BEFCCF60C66D374F8A6B3DB6A6A2BBE6AAFAA9AA0EAFF811C1BA13EF2FAC
            3FA60101AF61F89AB754E6D2FA5BCD27BA5CD1476CD0DF413413D0FF0000D1EB
            391338FB5FF7131F5CA872F4E61F3321CFE1137DC8343A4E13D01B86498A932F
            2F3FED065E58504823CE865343941532C3B7725C3E61734FDFB4B38AD0D87026
            1E5CBFB43C52382709E84DEB37CC814BA4C873F84CE5E9CC3E6263EB150CE3EF
            7FDC0D1E9393FE1A89EA4D4DF513551DB359EC953697D2DE68DD1388D3B0FC47
            FAE033EF2FAC6383743FC3441D19A2BE8A682BBE693DF6E6F375F8A7B86307AF
            7DF985F4AB2127077287687886D187FF003A0E0C7C4F0F4CA73F3044D9DEB44D
            9875F926A9D547BE61FC4D9BE899B27B7EF371FA086FC71F885708EDBC30D281
            7C1FC86A3D6F227B41FF00EE313473140DAF00C3E62B4A61D4E84D0DF0F43C59
            583321D3E26738A1C5B5A6E53D183E4CB15434310AE34707A4C50AAADF4F29AB
            DF5A18E05CC7ADC729D607017E8E3ED35892B074486822A2D87CD8571A193D20
            D936C5D1D4CCB6B5D8AFA1339C50E2B06243AFCCD0DF1F43C48AD2B8753A30DA
            F00C3E6313473143DE0FFF0070D47A5E4FF218582F9235C23B6B0477E39FC4D8
            7EA26C9EFF00BCDDBEA89EF983F1344E8A3663D3E49BBBD299F98267AE53F041
            CB8F81FF009D1BAA1E9F88DAD84768F1D9C7F109D6A0967658E27065B63B61F0
            7E92361269D3B67B62BCDC5E8BE27B20734AE8BF685F5EA26F77513F2B7EB0E5
            7CA6220D57317B900C8B663F33301DCC5C082D061B62376C408A6C038B2CEEE6
            2DB9C4197CE8C821D48ACF1E815F4D61DB25C35BEF39AFDC062BD6018580C629
            C1FA5FBF69A270469C2258747746E307EA86A57AC7960B8697DE5159E3D02BE9
            ACC021D08032F9D16777336DCA00453601C482D223B62B764CC0773170601916
            CC7E630D57317B91E57CA667E16FD66D77411BE9D4CD6BAAFDA7BA073617AAF8
            9EF8AB35E9DB1FA49D85F0B6C77C32CEDB3C0E2C13A841FC4F1D3D46D6CABBC0
            6EA87A7E7FF3D7586F93C038995BEE3F85D607567AB8098C13829D2992278D81
            37242375C1862811B31D52B78D8E577FE05F2AE7BF7204F06CC3E667A37E092A
            6890E8359881166C038B3340DD89633A5763C4120344814E691DD75F9981E927
            5F08D5EE5EDE03F2EB847E5D7055EE56DA647A49D7C20539A4757D3E622426AB
            E2399D6BB13340D988022CD807125CD169D06B133D1BF05813C1B30F98BE55CF
            7EE7F056F1BBC0EF0C1063663A26C4846EB81304471B026304E4A74A7A380869
            13A3FC21C0CADB61E17D41BE0FFCE65D8523BCAF8F714662C845840638C85D22
            BA57074F79BA666C17433617A0F89ED8EB35ABDF3531D5C5354F7FF0C23717D4
            870F8E61E8C6EC7A82C63CDA9BFB0D237D3166BE1FAE33F0909CBB1667912CA4
            2D82CD44BE9E7BF721FF0016C47E63281E743544AC38A1A0E2C788A3601C5815
            A6EBAD229A6E5D8966709AA3FA660F41526ECC48EA94C50A10D6A6CF0B275B4D
            43F4C5CD17E363FE7BC4D717F044D317F241CD37E773FE7B4A275B0D53F6F814
            23A56D10092B8314A49AF66D22185BA6B87CA09F54E440AD355D6D0E228D8071
            2561C58D07123285E54354C3FA2D88FCF3896D3CF7EE4A292B60B3539762CC72
            67E52135F0FD7185F4C48F1686FEC3485C8F40504387C730756651AB47D0FF00
            00344779A18E8E6957BE7BE3BCDC5EA3E26E17531E9EF275CC26D15D2A858456
            38C998B212BE3D85065D0501B7FE8458F42DE1D23AB7D24A8ABB9A0E0C2D8833
            3274E33804ABD4E8CBC96BE998CB4FC60E50FBE6AAFBE1A0F3B345EF953647AF
            C9360FAC9B5E7D5789604721000738AFD183677A1FCCC7F6F788E8DDBF3328FB
            7FF71A8AF9EFDC87778123F3CE65DBBE21031881B61132400A7480F485975F55
            443A8B4D8DF525322A5DC3EACC74C556EB79EBBDA997D6C43E8B27000A89AB8D
            B3A6B31D1E52E218A0CA33DE2C5DF9E9457E62CDDF8E94DFE218A0C237DA67A3
            CA4C40D5C651D7487D609C406E7D92C41577DDDE1434B0E221C0542F18074AD7
            636D080F48B2AAEAA8982085BAC0C6806F94CBB77C461DDE048FCF38D457CF7E
            E4CA3EFF00FDC1752EDF998FEDEF06CEF41F988139C5FE842D48E43C5B5E5D5C
            DC3E92DD1E9F24D57B65C751E7668AFBE394BEF8C94FC61682D7D333884AAD5E
            AC6D983332F5E12E2AEC683811D5BE8202C7A96F0E9FFAB68705D0E2E3E1920B
            09490C083A3F7839D99EED21362721F1B3893447D61D61F64D0576C584D9A8D8
            E6517EAD16DEF34E5DB2ADD558F49EC0083DDFAF39DC90879199468D0B86AACC
            1ABF721789EB407E79CCB41F8241873D3620DED8573CC5C0AB5778AF974B1519
            4080C0674C3BD6CF31163FA5C55CCF7E2B5FAD4D7B4933324FC8C14ABB2156DC
            B9016834DB4EF2C27161D41F32867163D55F12E485B0DB6D3B4615F642E9B855
            34B97D134ED247AEF6A544E418EB322D003BC231FF00432C20190CE88AB976A1
            708B815626D1BDB0AE78830EFA6E432D07E0B1B44F5A03F3CE355664D5FB90AB
            2F49DC94D393987BBF5E73D801156EAAC7ACD7976CB2FD5229BDA2C268D66833
            3515DB0D23F64D51F48B389E24D89C820EF667BB486049D5FACC90594B5F0DE1
            E17538387FEAA1B7E176B7279C4B4DD6760BA360ED6783ED8F34E927D62DDD17
            F136FB18CFBCE1268DDDDF347EE626ED3AFCD0433E840E607DE373FC2AB52D5A
            8A26CFDA02A4F5B8ABCC87D416CC7E79C1B07B6ABBE103E06836250D7492520D
            FCC50CEA07AFC20392EB88DF0C373A0461932424AFC6BEBFE45235F94C9A3589
            D4EB32FF007A940CAD568317ED1B4812EEF181468D028ED88542F7A1A217C999
            9832B589B7B9B3F28AAE930ACEF89D7A6B4C7CC77AC4E30CD7BCC9EE3FA43680
            76B7A408EB6E79CCE0002E4FBE73495C168EB997A7B72966D880F8B27BC74EFE
            395FE301B83A4D185A8EDAF0E30F902D90FCF38B9119357EE4C85FBB7386A3D2
            F27FC02BEF1820867D2A0CCDDAF4F9A6AFD8CC76777C64D7DE3367B19C5BBA2F
            E63C53AC9F48BA51E2FB66E175644B4D56576A3079CB1F6FFF00481F41299BEB
            21D3697A293DE4112CD3F8B1014F60673DEBC4A7734C46AA241A1BC56FD42A54
            4BD86CE6F1628C9798BDC86958F0D054C8A77C420554C83056D0665CD794EDCC
            0B6AD58E9336E30A09285EEC13B4D6F638409CF032EAC0D45AD9FAE12D323B9A
            F69873C06D48D40480E7BE7BF0BF3651AC5806B9512D6F742ACA0C2936232F38
            D980606B6349B7D3B83D11BB6F2A9F6CCD7FCB76EE47F9EDC5F5CE6BEE905A24
            B04A55755DA2F2636DFDF08718E962A36B222CECE5B89DE68F4E64D692609C0E
            150CCDD5EB51C347E3479D428C76138CABCA9878B8301280AD10840CD79D5717
            39D59675FDC7313400DC68AA49A3B4CBBE989CF7AF333014F707F8940B7497A2
            C3DA4DB591E9BC03D00A3FF56CBBFE2F80962759ECBE3A19EACD1C7513F06335
            BEC5B3EEC3CA685D0383F607CC1EABA8217B58C9A438B6B09A195B63CFA1E150
            9A840321CE0246766ABC0E7019A0069063A6F21A108A52C1C9258E47E5A97AF9
            4E713214F29018C6F00200B742C4C9888E709978181817ACCBA9800F254B666E
            F12DF6A854059A8AD6F697132F33D66BD04D2E62682D3A66F1C6BD1AB27DCE49
            F739B13478A7AB93164AD038989F52DE88BDB17952F94AAC6F6BD3CC86C82AD0
            A22D3DDB92352BC48C63854D985560718AF2BA4F38CB47BF2692DCD9145E25CC
            DBF14BD1EC8C82E2F4DDC33AC0A7103F733D7F50B1D84D3BE82091F68EE7279C
            04C39466B94ADB0E3D4E151E2D0C068637B58C1A45E8BA062FD81F3352EA1CFB
            B0F29A5F72C9F8319AB8E826A67A3E22D89D63BAF86CBBFEAFFEBBF55A42772B
            A0D996F63E7CA046A1D452D2D453DF8910A9B4E577FE3AC8441D053C10DB6733
            71952AAE48D679455C659B8D9D17290AAAD44446E906A92DC2F06B0ABB297B4A
            A0D1BCE04552EF1B54C7B9F042F5DA736577F1800C7CD9C35BEE8817578E05F2
            9874D66305EE09CDF0308AF4BC6EB7261EACE1DD8EBA649142CE5378B39C680E
            6072687B8AB941462AEF98F30DBE08CAFAE3510695A719899817CAA73E7DF970
            CF2C1865A6A94CBF19B8C290A32A602916D2B11D82C566C4CFDCC72FDCC00614
            5CD4E851EE7F201137BC0EF292D453DB811235AEA296F63E5CA13B95D06ECAF5
            527FECA85323F1BCA2385D2452E5E4F2612A380BC863CD93258C4541DD51E532
            ED70FDD3FE43360BA386F1EDFBCFC3820B51D882D53B3E26B9D54641AFBDE657
            04A60FCCB8211BA8B6A046330AA751DA5E9532F48DA10A211C3B7CE5238BC546
            882D072330BF98064F6805B9065EFD59B7625D68E0D713426429781DA3965A4E
            217656BB41E898AEA8E2CED67B919BB400A847AFFA46CB1FCB14A2AE9FB11BB3
            82139738FC9AE20578154B1357DB8616094200556213F42179319F7079C114AF
            9B60571BE0EC4BF7AB3D9A429E542BD65D75C23CCF0B05806762206F2E512E5C
            CCAE084C1F898069EF79A67450AD03B3E22B41D89F9704768F7FDE6E17573FE4
            332ED70FDD1100775679439B260A085A8E02F318A5DBC8E44470BA09506B23F1
            9CBFF76CD2C47A3C4972E1B3E83E15280818832FD54CD6BF6369CD7D394DD0E8
            E27A5A0DEC8F98EDAF727E51FD66DBEFFAC760F553485D97F32FD7DD4D0749D5
            150C1DE5098755F394EBCF39E18CC160B404B623C3ABA199AE7574C305A76EFB
            08477F6132A5A83D4A22BE8258DC670C3AD697C499B14E553CD29628265A5D45
            DEF698AFEED51E527DEF19F7BC63C2455F7688BB5ED12D620261AD5CCD8A72AD
            E69861DEB4BE2CA9B84AAEA2654A403AB64437F6105A37EBB08B8B1046973452
            A4D916DA37E0C86740BACB74EF9C96261D17CE754D530F795EBEEA6C7ACD611D
            13F30DC3D14DB7DBF59F847F586F8F723BD91F307D691B21D5CE6BE9CA6B5FB1
            BCC4997EAA25C80BC02E5D377D466CD2CC7A1C0FF41AF0702E32DBF5BCD116D0
            E53D222A929FE250ECEBF6954CF0DC7961A13D028972466B414CB05680F996D2
            021C4E4A7A9F98352127B4580DDE7E3DE327A826FE20E9BBB25CB1AFD1A9FB8E
            FEED5993E3F83161E6F68EFACF74CD78FE79E85ECC5724B27E94F89CEB07E944
            5525EA5EC4C5787E38EBA4F6458793DA763FC08EBEED49435FA35BF50749DD92
            E68FDEA76FE63E979851336CB31B72EDB087B836362220BD1038F5810A54B6FA
            4C63BF8B974D56D04BA678667CB147BBAFD3F8815416C44A4B94F58C96FD2F34
            D383815FE93D09166AE7DC7B4FABE487E71F34D13BE5C038B6862DA2D413E3F0
            F2C0A12A8D5B9C3A12E64B4A6C46833456F26292F3B545E835216028D94BCCC4
            0AD0A763EF29A39B8C8E77819893EAB2A01FDCC8A8CEEE6E010EA3EDF148CC7B
            AEBF43E172F0F718BBEFB58B0FD2A3BFBB54C971FC93EF7267D3F18B57D33E39
            CAD5F4C4FA7E33EF72266B87E08EBEED1161FA54EC6FB4952F1F70F0623DD75F
            A084CC1B95F5463E53186A3251CA552CF85ADD8E6B1203C3941C989E93DD119B
            BEF096178C0C35C1203B6053830217044749546EDCE5D49E7814BC16D1688BF3
            C038B6066A9DB2A3F8C7CD3EAF9268EFDCFBCF4244FF0057EEA9BC899895607D
            5E705B93006F3651A30C284B3A04D2724220112C75895C4B5ED794C2B88B1C3F
            2454F1C4A7CB1EE9316098C23C3C1D500A480632DBFF0089BEF1792688D81415
            02C2AFC09FD57C9CFCC5F4374783EB88EE6966FBE62C1F7862FB3BC583F4B8FE
            CE71FD9CA2C9FA5917D9DE2C3F7822CDF7C47534F07D7317D0D908BD53C8CFC7
            8360525C0B4AB9B4F179A6994801763FE257DA6EAE22A85A11B3AB3466AC8931
            DFAD278EC97AA8B7D37A98BA706230D0215F00534D32A2B45DC1CE6331C1AD97
            824C05110B19BA8D1960ADC1847699895647D4E73D953793FEBB487828AFE5C0
            5505B1894EE6019FAE103093F2DFEBB911CC8878FF00C7B4AB8BD6C3D39C3D1E
            9393327DB6E39A330BD493810DD515BB1DA2428372CBA34B9FEBA4B1E2921645
            F63C2E1ADEA63CD9AB6488CA82FBA0D626DA8F28E97EB0C783F7A47F6F78B373
            7E63C7CDED163CA0F373C3FADB31FD6D88F372C2CF9C1E3E4F68B3727E23FB7B
            C783F7AC76BF58226DA8F38B2B29EC8349AB648D5495E0C9D9F0B32FB1287824
            852E5395EBA4339FF104A280AAD5C36FACCB0501925E72F8F8A949EDD57D6282
            DF395DCB6F529C5E12F8201744C59E9DA112BDCC2B3F5C222A92987CAAA7E5CD
            7FD6A588EF00AC918C38CFB6E41C2C7BF4A4E9C87BEA7622E544E62F03ECF788
            D0EAF287838422EB96072C20D701A132E6EA0265E5AF4CF2881E7AD793FC5683
            0E4EFA90DD48D59DE94D71715DB70E919E28FA455D3478397E3176239A8587E9
            517D2D88F24C2B134FB302B535FB11E49AFA5B3161FA54CD42EE45E0E5F9C57D
            74638A3E92DBE2669B6E3D6589B4CC471A455405BA1A1FE201E7ADF925658F5C
            F29D59AB49C9954BC5CD2A50011A53A5DFEEB3D2A456EB1A99FD02FB7AD41C2C
            7B74B2E33A9B100AC9181401B7FAE33B77E7C3BC4504A4D48AFF009A8F8A17BA
            137075F5A613D1B09C3FEDE92E3E505D6CD0EB3CB08D8EE0395EC4488DBA816D
            128F31CAF4D653AF64F240011CA81E4C730BA4F1BF1C0114E0D4B49616893DD6
            30B3081ECAFE2113294D025578220C4743B5C54CC5D034D6F0B351D8A1533E26
            ED84B323BAE3AC4F561A447465191DD733E26EDA42CD47628DC5D07496F1C0E5
            517312ABC11262113690D123233009EC27E669E463213A24B6A5CDBF1F43CA0E
            2CE3C1BD696EBDD3C92CF11CEF4D62534C080DBA8E64395EE402EDB90A93548C
            BCC96BE00DD982BD7F30BDDA9B8BA7ADB15FF251F1404016BA10CEDDF9F0EDFE
            C02843A75DFEF38C7698DC777A456ED47F6E33EF50410419538BBCB213636E82
            02A82D769AC2F833ED0912EADFA7F8073B121BBAC05D3FC19885AAAE5A82E012
            BAA8EE69EB33DDE152B3A2946A6DCEFC4F910F782B0A805A7908B6BE426B8BB6
            7C087B4D4DB9DF9979D14A33DDE152FAE86E69E92D417048CC42D575FE09D81A
            890F40507533F3FE04A9746FDA690BE0C7B44552526D2C84DCDBA88329057176
            88DD6228DCF7856ED67F6E119ED31B86CF481621DBAEDF797FB1AD0603D9C7C7
            815E7AF1C47D985B4A1B7869C7E44F98138AB53B70FF0026DB5CB6455028F68A
            D341C8835CAD612B782D0A847451E44A12F96451615BC998AAD9CEFCE699EBC0
            C8438EF117B2697F10ADD805962A8A8E71595810D4BF0D758BED2A4E76E93559
            E9D91E7284BE5B2E11D547932F782D05AE46B095141AD995168E4B3EF196D7FE
            524E0AD4EFC66BC77897C783ECC2DB40DE15E7AF1CF81AA321EC63E7FD88A3C4
            F2CF873AC43A9B3C28E08788426C15DAAFF32B2EB8FD47865498AE9B366E4C98
            13163DB91F768CDADEF7071F1CB2A5EF4784DA15552F4C08748B1D35E0F22658
            35997322B6E8DC769CA73846746279BFA9C45EE15E184BA23BFEA603DB9D4D8F
            5824E84EDFF7C58A5ADEE0E332605CD8F7E47DDE654988E9BB46C7815955CFEA
            7FCC9B4976EA59C14F00F0E778974367808BC4F3CFFB134345F39160500F880E
            747AF4379BD82DDBFC03A735F68F06069A0F7BACDA3AD4FA80FA7DD209693E19
            3D5DD5ADE654530D8F0B4BFC53B74C8785E163842A29DE4A6D98108534B2664A
            B6DC2C85A6582BA4C2A0834AADB8F0E31251E87E66C14667FD416565E297C05B
            4886A53E801EBF75840D350ED75BBF80E9CD5BDDFC1BD82DD31072A3D3A9B78A
            C0A00860683E53FD961948ADFEFC61BFEFFDE1661F30F28005183F85040B1C23
            37CCDF3A33D2422D231E59E8BAF9C3627A03A9E018054ADC8CB3DECB4445D842
            0AED30E2F992E3BE827D61F49FF453FE8A7D61F4951DF4330EAF992A69B6A5F2
            FF00036A7A83A11691873CF44D7CA67A484DF237CE800050600FE14129C91B31
            F9079476FDFF00BCC32B15BFDB87F40DBE7EC0CC330094E2C17B1ABF12B116D6
            A3567A7A4D024D0C1DE5A1C78E534C1E81E478EF3A8667DD5A8612C4A29550C2
            5814DAEE67DD1A9BCEA1F1D307A8793290E3C329A069A187BCAC45A5ACD19EBE
            B2DCD80F7357E25330026CF2F707FA70614F33B3E05515774BE2A082ABA164DE
            AA07A8FAAF01CCCD1AECCD7F245E77E1162E7F94D7F341CCCD9AEC786E01175E
            77EAE2A2055D0A3C4AA2AEE87C0302799DDFE9EA74137C2D91764542A1E8CADB
            D75F9252F141E3CA50F36995C9E51CF3F233DD32B93377885AF2BEAA5C3575D4
            E13D747E4FE11F93F94F592E1ABAE8709BBDC6D79DF573D8D23911CF3F012879
            B5CBE47296BC5078F297B5AE9F241D9953683AB00E8A6F8CB5FEA9B64BFA5E51
            CF2F233D392138337A285ABE0FAA861B9809026EC4C04803766396E6F451B5E7
            7D5CF4E680E0728E797809B64BFA4E5FD6AB2D1FF4BCA3BE7E49EFCF1C99AD64
            0FD1ECF1D6B21607B77C7223BE7E095928FF00A4E5FD72B2D1FF004BCA3BE7E4
            9EE3F9C99A8E40C0D4761607B0FE7223BE7E095928FF00A4E5FD7AB2D1FF004B
            CA3BE7E49EE1F9C99EC1F9C88EF9F82564A3FE9397F60ACB47FD2F28EF9F923B
            E7E095928FFA4E5FD8A92D1FF4BCA524A3FE9397FF000FDFFFDA000801010000
            0010FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FAFF
            00F5FF00FF00FF00FF00FF00FF00FF00FF00FF00FF004FFF002FFF00FF00FF00
            FF00FF00FF00FF00FF00FF00E23FC47FFF00FF00FF00FF00FF00FF00FF00FF00
            FD41F823FF00FF00FF00FF00FF00FF00FF00FF00FF008AC03D1FFF00FF00FF00
            FF00FF00FF00FF00FF00F4612962FF00FF00FF00FF00FF00FF00FF00FF00FE3A
            ED55C7FF00FF00FF00FF00FF00FF00FF00FF00E712088E7FFF00FF00FF00FF00
            FF00FF00FF00FF00F96469FF00FF00FF00FF00FF00FF00FF00FF00FF00F51EF7
            8AFF00FF00FF00FF00FF00FF00FF00FF00FF001871E18FFF00FF00FF00FF00FF
            00FF00FF00FF00F1900098FF00FF00FF00FF00FF00FF00FF00FF00FF00E5968A
            7FFF00FF00FF00FF00FF00FF00FF00D88E254A4511BFFF00FF00FF00FF00FF00
            2C05CECCB73A034FFF00FF00FF00F314E6DA66B66DB6728CFF00FF00FECE67FF
            002AA7554FFE6737FF00FF00F3FF003C8AD68EB513CFFCFF00FF00FE3FB90022
            79E44009DFC7FF00FF00F78E142CC061B342871EFF00FF00FF0087BCE6146070
            8673DE1FFF00FF00F91E7E9491699297E789FF00FF00FF00477DE6F0C655EA3B
            EE2FFF00FF00F2FF00A623562172925FF4FF00FF00FF00D9B3F08CF2605BDCD9
            BFFF00FF00F9800160C8C5C48C0019FF00FF00FF00E91F494193863A6F897FFF
            00FF00FE310ED7070E0EF708CFFF00FF00FF00F100794940291FE008FF00FF00
            FF00FF00FA1F793F0FCD5185FF00FF00FF00FF00FF00ECD9D739CE9C337FFF00
            FF00FF00FF00FC3A69F1F8F92FC3FF00FF00FF00FF00FF00C31C09F6F9C3843F
            FF00FF00FF00FF00FE5E98FB6DE01427FF00FF00FF00FF00FF00F09FC7018E2F
            D1FF00FF00FF00FF00FF00FF000FF4F7E774FF000FFF00FF00FF00FF00FF00F0
            BFC72FF63FD1FF00FF00FF00FF00FF00FF00C7F93A2FC9FE3FFF00FF00FF00FF
            00FF00F97FDA4F1DFF00E9FF00FF00FF00FF00FF00FF00FF00FEBC93DBFF00FF
            00FF00FF00FF00FF00FF00FF00FF00F459927FFF00FF00FF00FF00FF00FF00FF
            00FF00FE4B0B27FF00FF00FF00FF00FF00FF00FF00FF00FF00FF0009CFFF00FF
            00FF00FF00FF00FF00FF00FF00FF00FF00F801FF00FF00FF00FF00FF00FF00FF
            00FF00FF00FF00FF00CF3FFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF
            000FFF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00F0FF00FF00FF00FF
            00FF00FF00FF00FF00FF00FF00FF00FF009FFF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
            FF00FF00FF00FF00FF00FF00FF00FF00FFC4002C100100010302060202010501
            01000000000111002141315161718191A1B110C1D1F0E12030405060F1A0FFDA
            0008010100013F10FF00E1D5445402EAE2A5DBE2063B490ECD327083C9A98EB4
            4772140DC4FED91DC8503756993843E0D44F4A976F881AED053BB42022237133
            FF002465812A600DE9F0A28C2B73F6F2F9DE688D6FEE99E747478CC81CFF0065
            E8F198019ADA688D67EE18E7F2F8504655B9FB39519604819137FF009032C295
            3006F485D5270AD9FB9E5F1AC8928E00D63633CB51474984D68BB11F1BF5B1AD
            FD933CE8E8F199039FEB7A3C660066B6EB6359FB0639FC0ABA4C22351D88AD64
            494F106B1B98E5A5217549CAB77EE39519614819137FF8E06C09558029D3AA5E
            15B3F73CBE2760D11D01936CB96B313F8D631B5843A453F754A1A37536DDC507
            884F25B5AD132E79EB5BF5B1ADFD933CE8E8F199039F8839E3DD6FBEEE34A838
            E3DD2FBECE74F87A3C660066B6EB6359FB0639FC07884F0DB5ED570E39E87DD5
            086ADC4DB6735103D8DCCDEC20D66A760D11D41837C3969485D5272ADDFB8E54
            658120644DFF00E301B0255600A46E895857E9E3CBE1D38105F417819E5AC3EE
            4691871A260FAA708A64346EA6DBB8A9EC2CD1802304B8EE53A7769AB1C71705
            0A38CD221891E39B1AF4F8DFAD8D6FEC99E7410DDD7611AFBEEE34A5565BB428
            C966821BBAEC835F7D9CE95B75B1ACFD831CFE051CE6812C4AF1C59D3AD3A776
            9A11CF13254761E69DC2725B06CD1845321AB7136D9CD43EE4E91933AAE4FAA7
            4E5497D45E46396948DD12B2AFD3C3950360488C89FF00140D812AB0053AE057
            856CFDCF2F8991D619D27E06795254878DF0837D8FAAB886B4EF536DDC6949F4
            F5A7662340D568005A0251ED60A3879B19B2333B390D2901189566B0DE99B5D2
            596EC709A43AF3A72C885108EDF1B12C22CEB4624E456EAB08A7AD189793F0E5
            9100255DA99B5D2592E472BA41A73A00422509A437A085DF18BA8B89D8CA6B40
            02D0100F432507D1D69D999D4751AB086B4ED536D9CE941521EB6CA0DF73EAA6
            4F5C6759F918E5F0EB805E55BBF71CA81B0244644FF8806C095580291BA25615
            FA78F2F8B1F10FBBC06471972A5C3A95A1A49D12634C55F805B6F6E9EDC55F69
            A2AB34B6065FBABEC5163820F4675DDA446C87191225D78FC52BAFA1E26C234B
            225A84201AF3AAEA182AF69A0C9AEB957BF733401FB9F91B1C99E745C2D3E31B
            9C1ADADCAC02C0169F55B8F9481B20E8FBA6E16BF63638B481FB9F93BBC18E74
            8935D70AF7EC629080835E751D47005EF34AE9E8798B20D2C986811B25C644AB
            70E7F157D8AA47141ECC6BB357DA6AAADD6D9587EEADC02DB7B64F4E6870EA56
            A69274418D31563E29F7790C0670E5F08DD12B2AFD3C3950360488C89FF0E900
            40BBB5EED8CEFA7C26888175611936CB9564E682D83C8BC694F515AB685D4C1B
            B8A27E5B60F08F5CEB49692153820F467BB4E01D709BD7736A8EED25936B7ABB
            BDA98BA3CDD688D9E14238D50E9C376739ABEF41771E8099EA28126BAE55EFDC
            CD156433C901819FE2974ECB131C055D69F5EEB1312DE1CD356433CD11958FE6
            91A6BAE15EFD8C55B3A0BBAF505C7534238D50E9C777718A26EAF175A2367854
            77692C8B5FD1D9EF4605D309BD3636A0B49289C507B31D9A67E5BE0F08F5C6B4
            75158B6A5C4C9B39AC9CC15B278079D2834448BAB20C1BE1CBE120091772BDDB
            38DB4FF875BD664D667436C4912669940BC66AFE8DA38C7E8B694F515AB685D4
            C1BB8A3A00C49D0C1B7BEAD3F65093F94B828CF8C582D6A3B99DB43831DC8E34
            684AF3C16AB448B0B1AC16033829B4E7462121B9BD642DC89C29A26A35552D16
            0A10C68E6A786D79510B1392826C8D4CB693735727E650145C6F2F4AB83F32A0
            28E3693AD24D93A886D2EE2A696479D1093182A77D12DBC294B1AB8AC85B9118
            5344D369CEAC424B676AB448B8B5A4120B18688E64F0A346139E4B519F38905E
            D03631BE8F17ECA527F093253D00684EA61DFD7528EA2B16D4B899367356F46D
            5CE3F45F4A1B66489334CA45E314B7A449ACC7FE1D0DC442C2BF3465E4D193E3
            50864ABE92B617E53ECE0ADA2A4E4A3076CEAD3F65093F94B829D20AA72306E7
            971A1C2C11B1B6E980CB47F981B369212078D32D4BE5CD117B1620B9BEC62997
            3E722C4E0068441BC3216834E46952673E3CD92315AA04CFAA484B2DB5C57099
            BC35C666F05081B19F5094921BEB9A93B8F1E2E80C5289368252D069CCD299F3
            EF205464268ABDCB125CDF73144352D93147F981BB2B012A78D5C23637D93238
            68D20A270B06C3873A3C5FB2949FC24C95B4549C9465ED8D4AB6929657E43E8E
            4A727C6A51CB486E621645F9AB0F23FE1CCF0FABC2612A252A532C76761928D3
            F998514BCE85081A875781CEA020EB12300E5E5C6870551155957346F943AC35
            F9C51FF44EAF83EF347D4C2EA6A95C385BAD4E4636F42EA8E32BA6F48E1255A0
            600C06D450F33F59E1A13C613167F80D120395C113D487AD70A93CAB8C49E14C
            90657244F425E94A79CAED0FE41472F33F49E0A470920D13226476A8C8E47AC9
            7517084D36A3EA6171345AE9C2FD28FF0080747C1F78A37C29D218FCE6850444
            644C54041C621605C1C39D1E23CE8D0A3A974783CE9D3F99953512950B963B1B
            AC146787D5E532BFF10720AE3AAC26137ABBF528163B3B0C9465F8CC28CD5996
            16DC21DD8569101118471F1C4405C687A7141DC4BDC6708DF38A9172B0360301
            83E5AFAE7C31C6BB200EC86F50FAA4A006E18766A5709A35F90DFDD42E11469F
            01FB150EAA4A816C197768AFAF7CB1C6BB0286EAEDF322E5646E26472507710F
            709C6B7C66B8880B850F6E7E1001558033576585B70877244A72FC6654E6AEFD
            42858EC6EB051C82B06AB2995DFF00E28CF0FABC261290829502C367619280BF
            188519A83C0FA05A9F9F51488088C238F82A74600728284D1538005B4F18476A
            1402640DCE5D169114484C57D7F94CEE3B51F035E801ECD9C68D40C82A804444
            DC991A819055400001BB12B4FC0D7A40FA3773A15F5FE531B06D40A804AE29A0
            13016E30EA945460456D3C211DE85469C02E10149F840055600CD41E07D2AD0F
            C7A9A42FC6254E680829142C36375828CF0FABCA657FDF793462BC058FBAF3E7
            F968F9E94F4A9598DBBF545E3AADF55E8F7F6940DF38D60678441FCD0CDC4FDF
            4A2BF77360A07AC524AC7909F747EDC07DC29193048C9346C5BE0CBF198519A8
            3C0FA05A9F9F51488088C238A4292A648904F9ABCA2B499D0F134AA3A4EF1856
            8F12F42D564607221E0FB54701A260F084C628D101BA1C090ECE1A251D61DD3F
            1C334EC0D7A40FA3773A14E880FD0602C6C60A8E0300C9E0098C50B559585C0A
            793ED42A3A4EF0806AF16F579456B13A9E6290A5A8902493E290015580335078
            1F4AB43F1EA69CBF199539F8766880E4BAB72F4FDF80FA8540F709EA81D420FF
            0077371A39C1FBEB44C71893F8A16F9C2B3DBEFE96978796DF550B13B67EE87C
            F4AFB57893FCB5E42C7DD783467FD6F93E0578F6DEDA1D4E37FCF4C911D371C7
            B117AD700C91EED294AAF3FEC783A4D79929E8A663977E3A306F7767BA127F42
            AF42F637975C002AAEDF091D0453824EA9AD1E12821B344B1D03E220D5A32F51
            740A977F71CFE0ADE6BC59F0182F88AEBB06F00C8EFD4A81E7E5282FCDB3ED40
            469BE604B54306293862FC81F46EE742AC2E9B01B48279160A5DD012CB926E0B
            9CD0065948B2B29E4FB574D837806037EAD15BCD7831E012DF33F06FC159022D
            CFDCF3A658E81F1106A78AD5E12825BB411D05A6491AA7E0BD8DA5C7222889B5
            093FA156A18B6BB37D5331CFBF1D78929ECAF2748FEC0948A72AD300C90ECD32
            4435DC75EE4DE87139DBF3D79F6DE9AF07C1FF004167E10814A3723B10098E71
            5FB20B9944C71A1BDD2423F61D6969E865345BCBF40A360CDBF9696593DDFDD2
            F29F15A55D55F9231072A3132DC82FE1A2EAB907B54959B6FA26A27AE07AA15F
            A4368AF7715139773BD9A7C523F5D28408FD9FD50506F04A00D00E5F2028F575
            580CAED499D0416C77775969AF04B5BC817734A0AC3D0B70EEB2D0B3D0942FF7
            9714DEB92382DD0B7686B46278C9A0DE9008889A94529D13CD6201F088D378B0
            75928D8B45C4DF620D6F4A9917240FA3773A14D6A273C25862D834282815B60E
            80444F7A90529125C29E4FB53F8B73E483054401E11186F364EB2D1C2754F354
            22A006AD0D6A447196A17A6B5C91C12C94B94ACF4252BFDE1CD0541EA5B83618
            69AF9495FC013775A0CE802B63B9B0C34028F535590C26DF283A83CE8283782D
            0893FBBFAA7D527F5D2939373BD1AF57150AFD21BCD4CF4C4F744ACDB7D114DD
            1721F4298C40CA0C4C9764B793E4534529794F8A52C307B3FBA360CDBF96B55B
            CBF61A5A7A994809FD874A2638D25EA9FB20B9B4A3723B90898E53577E1081FE
            3960313A0927911DE8150055D0282911CA7EAB5AFCFD8A6A0E6BEC6A23B3D432
            793FF435FB82B851CDAFF4B4AB7E767A1CBA709ED6BC693F7293920270B42406
            8C77A8081196C1BF7DCEA7F70E415D75580CAED577AA406C7777596B64623C72
            CAE5C508A4D0F7EEEB2D3A5962CA48F7EEE2B4203BE42DB86AB57F46B286EAD8
            6DE2804F2F13C4BF8AD0DD239E8F157F4858992109897BD0416914937353D60E
            357C813855CC258385CE5A1E4F22137282C6340A45056916D00591DF35A87088
            AA357D9F6A4A461348198707DD326889CC12CCB86230D2416914837751D24E35
            7A4A58890128983B5686E91CF478A007CBC4F16FE2ADE8D650DC4B0DFCD68407
            7C85B70D468D0CB1750C3B76734229353DF9B0C35BA311E796130E6AEF5408D8
            EE6C30D1C82B26AB2184DBFB9210270D977EDB1D1A4E4A09CAD2B23AB3DABCE9
            3F529E5D38CF4957FCACF4336BFD2D6BF70571A193C9FF00B0A98EEF51A879AF
            A1AD2BF2F4282910C87EA9114444D469B0189D04B1CC9EDFE3848F48848EFE54
            3209B25950FD51E0519B24C7F68B0F09448A5B212ED0993E643515820BA89AF2
            753F8F863ACE40776BCD8FE5AF4C4F49A3A5E11F461089FB64A5A38D81EE9FB6
            CB9B432FDC27A1A8CC1713BEA89F870B78EF15DEACC567CAEFACB8AD00CC3DEB
            BACB5A58695BF552E2A123C8200036B736BAEC0E6130183A1517E04C0B713A1B
            18A7C21D413BE9E690C63227DB4D8F220442D3021CAA24AE9A75CD5EEA9F14D0
            3B99BC88682E4A5A03A03CBCCE341F6493549229DD3871A451CF419A0778356F
            56EDEB3439A6091E0F0A96FC90453399C065A892BA6BD7747BA8B1E051885E20
            C39D218C644FB28F097404EFA79A8BF12605B88D4DCCD74D81CC26472746A123
            C8240836BF32B4B0D6BFEAA1CD6A0661EF4D861ABF559F3BB630E693F0E16F0D
            E09BD1824B99CF74597EE33D857EDB2E652D1C6C1F5460199FB60A3A4E10F4F4
            C4F68AF163F9688E93903D9F89AC12DD54D791ABFCD259287784CBF225A2C3C2
            5023FB478146EC13143201B05852FDD048F58840EFE1FE3B4C84A0BAEDDB67A3
            F1A89491A9A1C9BF2787F6140950E758EAD929B86361FDD0B2D914FACDAEB93B
            669B86F331B3E7B347489E40184A842101C8873CF5E74CA53837462DF7FD8F09
            1438F2BC577D2A093BACB404F6D2A3F75C73A88A7C23B729EED4E8AE7C4260D8
            E8505DB218ED11F4EA539606508B865CDBD2230FC3B6095C23C1A082C8CA6DE3
            3B8A8ADC4A9D5139DC7254FF0087415320F37C0D314558E075EADE98A02C753A
            F46F51FE1D054CA1C9F09535B8853AB071BAE0A482C9CA6FE13B9A76C12B9578
            BF00AC146D899422E38732F4176C863BC57DBAB53A2B9F0099373A35114F84F6
            E53D9A427BE953FB8E79D77D2A091B0C35E522831E079FEC1294E0DD5AB7DD42
            108AE6438E7AF2A3A44F000CAD370DA66767CF7695B649A7D62F75CBDB14DC31
            B2FEEB3D5B2D089223CBFB1A09491A1A9CDBF238FC3448424B86DDF77A9FE393
            570EB048469C088BB23A733479538F281B98783A50F07245FF001B86A293C932
            3B308F5A49A7A2D06E94271A390FD37529E57842D3D903D2BCE9FE5A0A39EAFB
            AF2A52FE83900C17E3B0FBD4A4C46C804ED3CACD17118101C9ADCE580F6F0A45
            4DC113DA283A9F92A0D7F21F746722F06AC045D76A4C4FD149C25209AB4C449C
            21E578D5A918A179C7759735A7ABFCB3F26EE287D52341352D8F2F5AEA52F904
            C060E8543B8C0EE895786C62B8ED89859C2D75E6D2BBE606EA3B9A2AF3A4513D
            76CD9018C6B37A476191A483122FAA491017409223C93E329ECAC18E31746294
            75ABCEA58781EF420D14BBAB1F6F4A20D44BB1B1F4F5A51C6AF1A165E2FBD30B
            ECAC99E337423E1244259004AAF21A3D77A98209D549ED4B76B273708B06BA62
            F520591A18C7C740759A9DB936E59C6D71E4D43BA40EE891386E66BA14BE4132
            393A34BEA11A59A16CF87A56BEAFF2DFC1B39A919A179C3618C2AF3512718781
            E7529311F450F2859268CE45A5D5908B26D48D3F31F749D0FC95444DC933DE6B
            739603D3C28B88C080E450623600A768E5769E4048B71D87DEAFF4785285782D
            5F75E34FF2D7B207B53C2708DA1C0FE9BA14934F4180DD000E35349E4981D895
            7AD0707645FF0019969C7B48DDC1C0D28C0081B03A737439D13530EB00803FC8
            6CDC55DC7168F47148EF64C22544D9B731836F551D329D52D8E275A6F9742177
            0B94670570613807ECA1C0D9C2F667C5481FC7F0D7886FC35F504FAAD38723D9
            A4FC0540A5FDA334C970860BD94CFCE8E60D1F626E744A6C0659E03EE8EB9C00
            8EB44A573B4293DD99A3674905B1DDDD65A84D884E10F2FC1768C91CA738EEB5
            56B5A60E8D97EFDDC515F86601FC550366C9342A7065A7E318512364220D0A4B
            3A875B9B80D08EB4C46637340938C1DA8CE0BBCCE616F10BCE29C71C2852375F
            1ADDEE01291E9E0D2210CF1668EC3DA89C2FE05B52B1AEB3D29FBE820D423413
            9A3842D75A81E10BDD2A07EFA093419D0C6289C2FE44B50B3A693D68109678B1
            4764EF43DF701293E8E05302C3AFB42280C86E2B12FF0034279D4110D74E7AF3
            9A3501B65092F111EF4165506B73721A31D29F8CA144858408746A06CD906810
            E2C9457E99907F356983AB75FBF6734648E539C361A834A84D094E30F07C9728
            B3A40AD8EE6C30D477766834AC76851EB8C089EB46C0619E01EEB573068FB317
            7AAFC925CA182F61734149FB46693F21535E1C8F46BEE09F55E61BF0D481FC3F
            0D0E26CE13BB3E294602E8CAF05FD145F2E84AEE976A3A653AA5B1C5E953366D
            C860DBDD03BD937568B3611761C1A1D5CFF9405E091C60DC7AF878452846E255
            A43116238BA7577A10426B607F4CD1364BCFAC7E53D4B9B5E04C2BCF51FDD3F0
            C71FCF5A2DBA31532391A9203AD74892E646BDEC3F543EDE411AEB06AEA96C03
            C93E6A7B6183F0D0671EF9701A96836759BADA74A86E28DBF0F2B7D02ED4C199
            7FCC5AAAEB4406C06CA3F75C501491E00B14DC41CD4121EE5280C2F2A755695D
            64D888212337BF5A79772FC40100466F497A400DA7F495CE8FE5F9A896C3C6B8
            909E3424C817AF0A10B20C6E5F4D0B650E2304E39D057E84E35580D2DB070FD4
            B2ABE42C3F52C2809F4271A2E1696AB2DB839273CEA6823912C3EA50B3255A9C
            685218123D7F749B69E6570715A19C732C29972C8DC82A9DA9E9DCB700242338
            BD0AAC9B13006022F7E942030BC28D11A6E28E6AA92F7680A48F2258A6037037
            53FB8E6A62CCBFE20D4171A86E08DBF4B037D12E56A5495D09628648EE1721A1
            2A796193F2D2EA96C83C13E697DFC8675D64D7AD87EAA480EBDD2209994AD56D
            D188195C053F0C70FCF5E3A9FEEBC098D0FA3727E59925E7DE342000D2E0FE99
            AB48626CC7074E8EF4F08A508DD5F802D249E326E3DFF9482A508DE05A57AD13
            7532D4F4FAEC448580575A71FB09B958E468B678D180768CA7487BA7CBA3A81D
            E8362C7422C45223643BBFD50B273DF75690F94F66A13B05454A3B69130C69FC
            5008C5591D76BDF7FE88E9DBC6AB80E2ED5ABCE838DD8D565A8B9AC611E22EC1
            76847FA73456AABAD0A32BC8E52275D2EF1A285B0E0E0515B0F340FAA86B6502
            6269400B544B8B3C474A7ABF0041895863676ACFAD6F8B09250761408C9044D7
            54BF3A26BB3A391B7813B513B4995D9981A8F3A26F9568396A0BF08958988CC2
            3AD20045859086EE301D6A4E25062C24C33F542E84F1422D2199582D57512510
            DB35117300460FAA5840182C6325BA325E8229E9C0422C2279A58E2DE4C82BCA
            43D287656B368999CC03A50905005F8EE55C7692E26C0CB4254D7A85BF916ADA
            C46BCA003C42EF1A06D6B184992658A42BE2560C58B0BB71A75E0E1E6E62F477
            A8D6EFBCAAF6C4FEC27DD2D941363AD5FF00E73542D0D35B35FAAD72506A0B8D
            42D500DE2181D92E51454C11B0DCD861A390564D564309B7F42258C903A6F7BE
            D429477D22609D7F9A94EE153587CA7A342CBCB7D548DD06C7F551622916F5E3
            A83CBABA01DE8C0BB5613A4BDD6391AAD9E1431FB09BB53D3EBB11297104D295
            E944DC0C94A22148DA41FF0024F69706E36687B45D3994AEA257D0E282F4B3D2
            8120A244C9FDA8AE5331A17EE789A197E889E47C8D324009F7CC72C8ED4A3808
            C4AD89B52F9004F1D649A41CA89ECF90A3F139C005C0CADF40BB5174BA7A2775
            CBAB46ED142CB2EFDCE2693D13683403AD281880109CCB342FF66120EAC536A5
            05A9D16AD202D04A16237E140A0882C2C53CE1A9C250872EA32B7E540BC90214
            71A89371AD2F9C42E216D0E574ADDF6B981BABFBA4C58D1A03495080A3B4C292
            17885DE46BBD1304E0A438006763145F2040B790434A3601856037595BBB148B
            8165E71B0B6C1CE8866826503C47AA8D32C9B93AA12536A91A4311435165F4A8
            4F85454B83C353314E00A4984D85D397750EB9CE4DA96522B422E9E70D54436E
            70360E96C0EB445204E492E090355A0C9CF0816095D69332B2D052B9B7298EC1
            2324871E5470C460C413DEA65A030CB203CD43592F1293D8AC770CA611D28E45
            56FF007FC4E69E92267F193512E34B79A39AC381D92E70BCA783C03B9B0DE883
            6156B94D08E02C52B662D4CB085FDF11CB2BB52CBF644F01E02A2B94C46A5FB9
            E23FB4890012AE0AFA1C501EB77AD0F6ABA31295D01A3DA0C1B058FF00298BF0
            119A39BC9DBE2562532BE974347A6FF0A1AA1CE8093782514A49B3FBA9C851C5
            FBA521EF1FA0AFBB8508BBEDF722A67B0747989DFF002546E9E78D94805CDF6A
            B5CA21C8BC767151EAE966DF79711AD0951D9034965A744285A0B16576356805
            1E6243ED755CB4F4A868AC13F738AE15606041E2A0B3AA50CD1E2F1570B60729
            FB53D4FF00A4C22C6C6B439E68010DDBC74A0660A037CFDD89A3FDD52B049D44
            D4E943B0031E22185A385EB5FB1336340B0C542594B239C4895097968128324A
            83A50CAB0EA92978C80C2851044070CD5FD01468A696EB4C4B22E80989B96694
            71C3429E02AA60A4171010376ED63015E14BDBA527F50624DCA44470C54390E5
            380BA68723E89D831AC94BFA25A3E30052CE9982141AB76395229BAD93612345
            140816E904A8D0307229A494A4593772269A0CBF07505FC5189A9659E275A451
            6D06C3534BC72FDE742DD5A4CC55CF1B54C63D9D4268001D1D7537FC6E683482
            5BF809A8E1A5C6B872E78C79D4A13C30C93D6586A69F52CDEED26674ABDCB21C
            89C777346E9E38DD408DDDF6A7889DFF0005513DC3A1177DBEA4D7D5C28A41DE
            3F615192A783F745092EEFEE8093782D08E88F2F8858B5CAFA5D4D0EBB7C336E
            0673571783BFF972FCC1DA72711BD270BA82CFA1CCA4B32C6C328C896A2D6507
            7F946CD1134B3D6E0285A7586BF5CF061FED4B1136A58B90D4DCCD11C0F178FA
            BABACF4A71F3586E802A67C5A260DEA2E7EEAD50248220B2F328DB5A0F245873
            A62869D99EBDA2701D9A14FF005F84C931AC5E82AD219D5712290D6C03210563
            4BA17DE8B324E3A8268894AAE4579C9B34B4048C5D010BAE14CAE6196CE34433
            9AD675E7490C01034EC71A4F11367F3D2E548206585A64868D5018E749631509
            5DAABFA2482892D5040E0407BA884E9406EB12440AF29733AD3C0F89B3B90D9A
            984F1146BCD9B153EEB22EB2EB4A5BA82EAF9A32396843A73A5C589BA26DDABC
            2B37111BD8B4EDAD4DDFFA3482846220541275B896DA9681450CB71A3C6444B0
            E6441D29FA124B1C4E47C5346BBAB05B4C5B5CD2A0D43B8C92726A1B0C84A903
            39028400180609AD648A3B16C0DC759EBF12C44DBFB430EB0D7EF9E04B4C4D24
            F5F80A0B5950DFE11BB496659D8601802D49C2EA0B1EA72A87E60EF1978ADFFC
            CB18F539DF8CF0DEA09121847F1C6B5D02C5C7219297ECB301B89A727CD0C748
            4C0E4EB5C62D84E693B451498B0BBEE7D299ECE6E9FD53BCC2FB3E3744D472DE
            DA4AC7B07F4D057FE5D3CA7A7A0A06E711A93897AEFC400EB581D2A7D5DB51E6
            503388011C9DA915DE7932DCA04EE053DB105FAB03D26B7919E5483C3490BBA9
            CE7958F146AA84008431C529906B5A1D4A36AB4108886991E1C323F9A86C0C1A
            0B21A81364822FCE42FD2928ACAB2D61550A00A716A68AB3D1ACD1F52284A2BC
            5634C51933715091087041AEB154C1062DA71ACD3D752BEC1E35CE2542A0E113
            0832764E99A258D18F20F87C49330830EF4B724E50E3BCCBF5A359A300B22BC2
            C79FC553481AC1374DE8052100CA1EC528BAC06441A3C46B5C07E93E94E44F49
            6E824F054FCD5A1F9C8EB52904B6D3853F35E058740263C524291A2CBC6964E5
            5DF8801D7B07AD2B7388D4BC5BD794F5F63415FF009F44AC7B2FF453341CF7A7
            E3766F10BEDA27B99B8FF545066CAEFBBF4AE316C27241DE6863B40607234A17
            B2C486E06BC8F15A68166C380C1504890CABF8E35633E071B709E5BFF9D3A8C7
            5E8E07FE18A60F4E50EFF46BF02FF00D0373A254523CBF59DE8825DD4903B9A1
            0986A681FB4EA56B4E5FE6D4AF60684F303F744D7F28FB5619E7BEA8C9EA0FF1
            44206E1AC679D39E9C0C15362CC3DDCAC77ACBD647A6AB1D0688C0B7E774E914
            44111188A3855A2CEC4B1765C70A6072A800D45BCDF59AD568B9DDE8A2D057AE
            21D2682643D95152EC84701BC9531E0769A273F7568151E0AC8AF027251872C3
            5F1124D01183351E4F2D9192F9235A80A91CA09A245E0F9528E39514F0CA971E
            0F8573826890E911E4F2DD192D9675A70EC86BE220BA8ADCC502A1C15D11E246
            0A833F746A63C0EF150EC84700BCB4204BDD4145A0ED5C03A4D130F74011961A
            4B3DEB135C60D0EBA8DD6DF0A5350A17901D688C0B7E735EB3597AC0F4C167A8
            54DCB307670B3DE98E7467A303254401B056123A03FCD659E79EE8CD3F29FA53
            3C42FDD42F7069AD39FF008B5A87ED3A148132D4219734201EE2A681E1FACEF4
            2FF20D0177AAFC103A70877FA35A9D463AF4F03FF4CFFA012E501869E63DEEF4
            351D669C31B1E79475A70A0D4484FED2884D678B867A06873E5DB33C977ABD28
            657C061C82821362C0249825987B54CC928B76E4BAADBB7A99CA89449B12DD82
            09E14B02804C4FE0A09097863177F550D4191B6BE03B5132A6BCF3DD3526B770
            7DA6A214805D164792938D99DBE0D441BE5FDF5AE411A27FFD16AA037A3E412F
            2A9F787438E3FB1A73C3F6151ED0E8E612F0A521B51C7FF82D798468936CBFBE
            957DA89C6E4EF44429029A0C9F2D352EB7617DA2B338070C39D853D802149904
            9798288DBCC2DC7187C53E54A10012B49FE195173C9AF631475084A558EB4D34
            A512945982F0452E02C014704FCD0EFCB97679AE747A52880D278B8E7A83FB46
            149A012B4E18D8F3C27A53CC3BDDEA6A7A45097280C1FE905493D573BA5352E7
            1FB452CCC683965E6281DCF37D9AB1D48D075ABA36008E71679F895A8B1DCB72
            F025A24480EB3FD6ECD0109465409603851131425719044CDB855E61A53661B0
            8481B51D50108068DF345A70A8697D4A2B259BB2973A3253AA46212ECB98275A
            9F2AE08FCEAC9274A9F298101921D12F46B88D62183A78143D4B77091EA5F1C2
            E7DAA8D3675739AF87E6B976344DFF00B015505B8AD4F00BCEBB27E4538E37D9
            4E785F45764FC8A51C42F1A525B2AE0FFC80AF3EC68E535F2FC54C9B3AB85CFB
            FC43D4377091E8D5051486D6189B7D8A4878B56B013C834A7E890293BBBD5E49
            45BA17390D5E3CAA4CD68D7C459804457FE7C4291C24997077E804502CE635B8
            83448DEB8A358C252A349632A1844DBC3448921D67FADC8A95A9B1D8B70F061F
            8B236008E71679AB1D48D274A0EC79BE8D3971E4281331A0D4B9C7ED342841E8
            B9DC3FD58DD15DCAC06576A40E2301ECF4C532830395380A982BF455BAC1A58C
            333566821A1B60DF814451E5BE1D9E0D196120744A699BEDD16BBABD3455C99A
            04333D0F353BAE10497398C9D2BAE78FAF07324EB5385BAA5DD13AC33DFE1DB2
            612077BD8A662D92C5C24B3BD4506E106CC86824B9DAA1FDF32C44378B7C4051
            D74D0F78542BBD47593E2BCA01E553EF3CC562DD4AA90762A74E1E65451DFD74
            9A3B7AE9D3878AA01DCA936C25547B4F115E700F0AEB27C5655DAA2009E9A627
            BC3E21FDF30CC4378B54706C106ECA6A2C19DE97E6E03CFF002A106CB103C929
            E6179E0993325B4CB4F7621E70AD86236A694B8192C3BC5189058C91023A8DEF
            4B84D2054C4ED6F0C73A4E1BB44091670D1EC9336424530FCD405906B576BAC5
            E48E57A0A090A0711A982BF455BAC9AD9C1334CA0D0E1461280388C0FA3DB343
            745672B2184DBFD72815602EB53CD78598617C5F0519526804B4CFFF00337C0E
            259774D0644E4D0582F5D591315298C16A0C0F723C55199AF1A8656811FCD18A
            7B26AB2184DA95351115DD4ECC3D5AB584376D512CA59D75689EB34BB245B398
            E342181288038D0DA1D0823B3A1DE9974D8D1BAD8ED4B50B0C8E4687C34EF038
            92DD00A8F456A4CECCF49A61732D1499D576A947A5B8DE785AE2D23B8575A3AC
            DC02F3A877DE5A45B84AC83B1F550FEC275116F41316D412FEC23500EC7DD4DB
            04ACFB6F0D22E2178D75A3AF0681D82A51E96E37BE028858CB4426755DEA7D55
            A133B33D26A588521F10507E07816185CCD1A64D36746E967B54B6ECA1D7C353
            BD16445188820ECEB9A78018807A0655D0544B531171893168A3141C9E41E45D
            E94A39AD2597CCDBBD68C09BA0D79D1ED18442D85B09DA2288698855E49D9189
            6F4CFF00F316C2E2DD360539506A24353DD78589603C4F250804646E3FEB40C4
            821A718A22591B75346A2160C6DA49D49A83A1D8EA199383226CB5328F65A3A1
            3B2C732864E40A681DCCF594724A5F49277B776A231E49E204683F64A4060D6E
            01344FAA2643B024825E454AD6803D40DDEA9CA99007440E42DFD24690B93019
            2853F0BCE13377A22EA845BB4F2BA511F463C3EEA6DC0EF2572FB79A7EF7D66A
            0DF9F2B5CE0DE15306C740DFDA5ED4F525B6359C492DAD637F687A5441B9D1CA
            0DE5526DDF84AFDEFACD75FDE6936E0768298FA11E1F5445D108B66BE574A078
            51210DC1DEA5780C3123A060FE92401D5239AB54AC6823D45DCE8BCA8D3A6ACE
            F026A3CEA56584372F2AC8ED479064C014D60296899D01D3746B7ABD92E30241
            6F0134509C0805023B8891978549D1E4752CC9C580360A905891B69074229C60
            089606FD5D0A0310083FD702589CB817E416E714E194885C4C524678C07C6DD1
            CEB904C8AA4E30EF5160ED032738855838EE26C8066EBE9A53E9A88C12E199E0
            53506D355CFEF7B56B99C7AF2363814800AB603340668BD3386A76A8ED974D5F
            25DEAD21AE871B68C3BE29F4481847F1F21E5891A93A8862A7E1B226BA355489
            B5AF5A070F65F41DD48AA19891756A5C6A50152214BE98AB5DC86005A038511C
            5A3200C9675A444F4309D740DAA534AB8A73034A2D9326DD779A2A0AE2345415
            C4280490605B8EF3509A45C51985A44474308D351DE98E25080A65B1A55EEE43
            006D09C6A5C6A72916650B6B9A4750CCC8B235A070F64F61D944C702E3265226
            B7E54D23C81681809C7CA6775DEA93014901A25F44E8182A7B65C357CD73A340
            660BD138E876A44044B238AD3338F1E4EE7069A8369AAE7F79DAB4AD3CA393B3
            C1A21CD82A188C46CF2A2A2386824AF158E34909916F52F1976A9231C70BE32E
            8E54E094005D5C502588CB916E416E73FEC2DA4642C4E0F7BD343A5C42C7AA68
            650379B0F287DAADBB02C3122394BED42D552589C4B36C1E2914A3B65B681465
            C88012AD0E9D46B0F0C7AC72A34CCBEADC16DD11FD071419129A17302521015D
            83FA1948A0C690CC5DB1A51255D14AF4A9368579D42A1C4E402EC079A9E21919
            E668421D9BAE90A4892F03EE68A0BB4107C940C0B97E3A0615CFF1D7928FC34D
            28D763EE28465D9B2E92A9E21819E22A5C4E052EE279A936A579D4A990AEAA13
            A51291418C2089B9674FE887AF599249B9CA9DE0733CA78FE83AE65B52E296EA
            9A1D3A8D21E39F49E54E5C885108D029477CB6D06AE861ECE332784D9F34E466
            08A0A2D883BB46A01B0D87941EF563A7700B1E80AB69194B3383DEFF00EC4126
            4E7AEF2F67C5D125739A278C454B7D0F5252C1317D6D4AAAAAAEAB4599A40938
            46EE078A29C6580878341CAFC7FAA776D2FB0C1E229F88CC222DA590B9B4D010
            559C0702A3A604A93B2E854A90BA5F116F3514FF0057D49E56800B6E1DF5A60C
            852186AAE024EF57CDA464670844F4A57D529D6126FF0011A556FEA18A701201
            36B3A1927E1DCA09E22C0D4A90445650C971A47C789F502FD5488D93F6986A22
            CA1A3B106E52056DC3BEB534FF0047DC9E12A1485C6F89B79A9E981284EC3A35
            A99530D9ABE55014D4CCA5E9353BB696D961F13FD4539CB004F06839DF8D266D
            409780EEE0F9A144451344A86FA1E84A59266FADEAC892B9C511C627E201939E
            9BC9DDFEC4001B49DC43C9F06C583102C157093E082B6189B9D4A171424032D0
            1FD7143CA4B90EF46A6629114484D4680988212267091B3340A4022C7A6CC064
            C5F55504C318E8BA1FBE3F25CDCCDB31D491A500CC89260B2043C74DE89D4445
            B8470F82A8C6543006717A7B284C80D138BD7188BE28526055E42D22B789FCD6
            929E84870B1EFE34A9DD4BF83461914A23219192CD38D274865850ABE1F304C3
            59E83ABFAE340A4022C7AEC4565C5F51404C4508533840D88A054025740A9A1E
            D25CA77A34313FD62E2040A25E4688A96199B1D0F8722C1A85628384BF00405E
            46E25E5FF62A2C2E7690FBA41EE0B44F99C746EC43BCBC71A9EFAA4D15979138
            3FB06434E12C703D9D77F8BFA1B5A3A9B95FB37ABCC77BF9758728DD4B230C93
            A9C1E3F0A4C115C041330E933425B42CC991023BEA533F351A808E407DFC374C
            467509781537F92C341265E751404B618BD30338FC609F345F4C406942262ED1
            1B9D60424AE16F3F0B20A1ECC7E4A40F282CA90510920D5BE70306BA0DB43A7C
            2C8C32C6AF038D5A63BDFCBAE394ECAB7A1B5ABA1B15FB36F83258B0B6781E8E
            BB7F623BEAB14464E64E1A9C706ECC3BCBC71F901EE0B55A516473BC07D7FB25
            C8504723006C3CF1AE6E634A9796C0803C0DBBCD0200080080FEC9E0120488E1
            A79048874D757B3872A63A507095B1616073C2BA0C8D1C04A55ADB3F67A8EFF0
            8FFC6C89A89517F34CCF289A75118E8A05E9646B08F2C14F0DB11DF2D234DCC7
            D51C01CDE8C89C8E81AEE61EE8F0DF11CF252C2D601E492B4E709D0642ED2785
            1A5B4F97810906B6C7DCEA9B56C58581CF1ACA301463AD272B4F2A80B8D607B7
            873A1C0200800D03FB28804211246AF2D850478BB768AE6E674A8BB2A08E0640
            5879E3FF0000788124170D0E4F89A764B3371A8A75A482E7872DDCE8D3E70F62
            32E93DD2DE890B42DD9B2E0ED3524F34FBF83C536CF307E10A55555572FC4096
            E6E3716C03B35A008E7B4B14AB3923683BB3AD2ACE48DA2EE4695AC09E7BC315
            225B9BAD81B886E7C0A22289929B23993F285413CD7EBE4F14C83A92FCD83277
            8A7479C3D8849AC76436A8A75A492E78F0D9CA9990C99568711268AE9A9CDF11
            FF001D11ED10C4B9CC93A1430C9AD406952692EADF3F20F200091847528AE03A
            92FBEB7E8EFF00008ACDAF1AB4A360DE6A61E2F8AC7C53E2AA7709E691159B5E
            357E055032109DF0BF429DEA10025D00D0F990D224C24D1B66965975A9976B86
            658E441D5FF8F106C412132BBF8691B8F30840868C7DDB24E5D3AA51E48DF4B8
            1B779A1291450E00D578D6A01CACAD91C8E1A5E0FB3120750C8964684747A827
            95FE141C0138D1085191A57B83DD4A3C7F158078FE2AA538BDD2740067402006
            028C447A02784D182376801A0600B054039585BAB80CB4A4228A1C03A0F3AD1E
            C8DB4B8BB768A31F76C139F5E8B40CCE47185082901B0040C95DFC1FF291A655
            6B4F62F1502F8646C8E470D3F667346A191D128A421A9E40EABA283633422AE7
            25E27231668455CE43C4E026ED29373345A10D09303A868FC9BCB0830340A817
            C3037570196A3442AD6BE81E7FE6AE3D96AE3E45E2A33C84D1308E477A7E2DB3
            A832191D128B0975156432BE45C4BA0AB0181E69F0B6EE80C060305467901A06
            55C06F561ECB575F00F3FF003971ECB571F22F1519E4268984723BD2014F3064
            3239285B9F5156432BC50B53E82AC06079A4029E40C060305467901A0655C06F
            561ECB575F00F3FF003D716CB571F22F1518E4268984723BD3975D9D4190C8E4
            A72EBBBA030180C1518E4068195701BD585B2D5D7C03CFFD05C7B222E3E45E2A
            33C84D1308E477A8CF20340CAB80DEAC3D93175F00F3FF0045796CB571F22F15
            696CB575F00F3FFC3F7FFFD9}
          HightQuality = False
          Transparent = False
          TransparentColor = clWhite
        end
      end
      object MasterData1: TfrxMasterData
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 204.094620000000000000
        Top = 275.905690000000000000
        Width = 718.110700000000000000
        DataSet = frxDBDataset3
        DataSetName = 'basket'
        RowCount = 0
        object Memo2: TfrxMemoView
          AllowVectorExport = True
          Left = 166.299320000000000000
          Top = 22.677180000000000000
          Width = 374.173470000000000000
          Height = 30.236240000000000000
          DataField = 'gcName'
          DataSet = frxDBDataset3
          DataSetName = 'basket'
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[basket."gcName"]')
          ParentFont = False
        end
        object Memo3: TfrxMemoView
          AllowVectorExport = True
          Left = 166.299320000000000000
          Top = 52.913420000000000000
          Width = 374.173470000000000000
          Height = 30.236240000000000000
          DataField = 'tgName'
          DataSet = frxDBDataset3
          DataSetName = 'basket'
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[basket."tgName"]')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          AllowVectorExport = True
          Left = 34.015770000000000000
          Top = 22.677180000000000000
          Width = 132.283550000000000000
          Height = 30.236240000000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077':')
          ParentFont = False
        end
        object Memo8: TfrxMemoView
          AllowVectorExport = True
          Left = 34.015770000000000000
          Top = 52.913420000000000000
          Width = 132.283550000000000000
          Height = 30.236240000000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            #1050#1072#1090#1077#1075#1086#1088#1080#1103':')
          ParentFont = False
        end
        object Memo9: TfrxMemoView
          AllowVectorExport = True
          Left = 166.299320000000000000
          Top = 83.149660000000000000
          Width = 374.173470000000000000
          Height = 30.236240000000000000
          DataField = 'Articul'
          DataSet = frxDBDataset3
          DataSetName = 'basket'
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[basket."Articul"]')
          ParentFont = False
        end
        object Memo10: TfrxMemoView
          AllowVectorExport = True
          Left = 34.015770000000000000
          Top = 83.149660000000000000
          Width = 132.283550000000000000
          Height = 30.236240000000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            #1040#1088#1090#1080#1082#1091#1083':')
          ParentFont = False
        end
        object Memo15: TfrxMemoView
          AllowVectorExport = True
          Left = 34.015770000000000000
          Top = 113.385900000000000000
          Width = 132.283550000000000000
          Height = 30.236240000000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            #1052#1072#1088#1082#1072' '#1072#1074#1090#1086':')
          ParentFont = False
        end
        object Memo16: TfrxMemoView
          AllowVectorExport = True
          Left = 34.015770000000000000
          Top = 143.622140000000000000
          Width = 132.283550000000000000
          Height = 30.236240000000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            #1052#1086#1076#1077#1083#1100' '#1072#1074#1090#1086':')
          ParentFont = False
        end
        object Memo17: TfrxMemoView
          AllowVectorExport = True
          Left = 34.015770000000000000
          Top = 173.858380000000000000
          Width = 132.283550000000000000
          Height = 30.236240000000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            #1055#1086#1082#1086#1083#1077#1085#1080#1077' '#1072#1074#1090#1086':')
          ParentFont = False
        end
        object Memo18: TfrxMemoView
          AllowVectorExport = True
          Left = 166.299320000000000000
          Top = 113.385900000000000000
          Width = 374.173470000000000000
          Height = 30.236240000000000000
          DataField = 'markName'
          DataSet = frxDBDataset3
          DataSetName = 'basket'
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[basket."markName"]')
          ParentFont = False
        end
        object Memo19: TfrxMemoView
          AllowVectorExport = True
          Left = 166.299320000000000000
          Top = 143.622140000000000000
          Width = 374.173470000000000000
          Height = 30.236240000000000000
          DataField = 'modelName'
          DataSet = frxDBDataset3
          DataSetName = 'basket'
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[basket."modelName"]')
          ParentFont = False
        end
        object Memo20: TfrxMemoView
          AllowVectorExport = True
          Left = 166.299320000000000000
          Top = 173.858380000000000000
          Width = 374.173470000000000000
          Height = 30.236240000000000000
          DataField = 'genName'
          DataSet = frxDBDataset3
          DataSetName = 'basket'
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[basket."genName"]')
          ParentFont = False
        end
        object Memo21: TfrxMemoView
          AllowVectorExport = True
          Left = 540.472790000000000000
          Top = 22.677180000000000000
          Width = 56.692950000000000000
          Height = 181.417440000000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            #1062#1077#1085#1072':')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo22: TfrxMemoView
          AllowVectorExport = True
          Left = 597.165740000000000000
          Top = 22.677180000000000000
          Width = 86.929190000000000000
          Height = 181.417440000000000000
          DataSet = frxDBDataset3
          DataSetName = 'basket'
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8W = (
            '[basket."gcCost"]')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo23: TfrxMemoView
          AllowVectorExport = True
          Left = 597.165740000000000000
          Top = 124.724490000000000000
          Width = 86.929190000000000000
          Height = 18.897650000000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            #1056#1091#1073'.')
          ParentFont = False
        end
      end
      object PageFooter1: TfrxPageFooter
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 30.236240000000000000
        Top = 657.638220000000000000
        Width = 718.110700000000000000
        object Memo24: TfrxMemoView
          AllowVectorExport = True
          Top = 3.779530000000000000
          Width = 718.110700000000000000
          Height = 22.677180000000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            #1054#1054#1054' "'#1040#1042#1058#1054#1047#1040#1055#1063#1040#1057#1058#1068'"')
          ParentFont = False
        end
      end
      object Footer1: TfrxFooter
        FillType = ftBrush
        FillGap.Top = 0
        FillGap.Left = 0
        FillGap.Bottom = 0
        FillGap.Right = 0
        Frame.Typ = []
        Height = 94.488250000000000000
        Top = 502.677490000000000000
        Width = 718.110700000000000000
        object Memo13: TfrxMemoView
          AllowVectorExport = True
          Left = 34.015770000000000000
          Top = 26.456710000000000000
          Width = 188.976500000000000000
          Height = 26.456710000000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            #1050#1086#1085#1090#1072#1082#1090#1085#1099#1081' '#1090#1077#1083#1077#1092#1086#1085':')
          ParentFont = False
        end
        object Memo14: TfrxMemoView
          AllowVectorExport = True
          Left = 222.992270000000000000
          Top = 26.456710000000000000
          Width = 136.063080000000000000
          Height = 26.456710000000000000
          DataField = 'userPhone'
          DataSet = frxDBDataset3
          DataSetName = 'basket'
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[basket."userPhone"]')
          ParentFont = False
        end
        object Memo12: TfrxMemoView
          AllowVectorExport = True
          Left = 222.992270000000000000
          Width = 136.063080000000000000
          Height = 26.456710000000000000
          DataField = 'userName'
          DataSet = frxDBDataset3
          DataSetName = 'basket'
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            '[basket."userName"]')
          ParentFont = False
        end
        object Memo11: TfrxMemoView
          AllowVectorExport = True
          Left = 34.015770000000000000
          Width = 188.976500000000000000
          Height = 26.456710000000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Segoe UI'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          Memo.UTF8W = (
            #1048#1084#1103' '#1087#1086#1083#1100#1079#1086#1074#1072#1090#1077#1083#1103':')
          ParentFont = False
        end
        object Memo25: TfrxMemoView
          AllowVectorExport = True
          Left = 359.055350000000000000
          Top = 3.779530000000000000
          Width = 181.417440000000000000
          Height = 49.133890000000000000
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            #1048#1090#1086#1075' '#1082' '#1086#1087#1083#1072#1090#1077':')
          ParentFont = False
          VAlign = vaCenter
        end
        object Memo26: TfrxMemoView
          AllowVectorExport = True
          Left = 540.472790000000000000
          Top = 3.779530000000000000
          Width = 143.622140000000000000
          Height = 49.133890000000000000
          DisplayFormat.FormatStr = '%2.2f'
          DisplayFormat.Kind = fkNumeric
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -16
          Font.Name = 'Segoe UI Semibold'
          Font.Style = [fsBold]
          Frame.Typ = []
          HAlign = haCenter
          Memo.UTF8W = (
            '[SUM(<basket."gcCost">, MasterData1)]')
          ParentFont = False
          VAlign = vaCenter
        end
      end
    end
  end
end
