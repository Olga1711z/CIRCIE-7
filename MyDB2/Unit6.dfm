object Form6: TForm6
  Left = 348
  Top = 252
  Width = 850
  Height = 408
  Caption = 'Form6'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Button1: TButton
    Left = 512
    Top = 24
    Width = 193
    Height = 57
    Caption = #1042#1099#1087#1086#1083#1085#1080' '#1079#1072#1087#1088#1086#1089' '#1089#1086#1090#1088#1091#1076#1085#1080#1082#1080
    TabOrder = 0
    OnClick = Button1Click
  end
  object DBGrid1: TDBGrid
    Left = 112
    Top = 168
    Width = 409
    Height = 113
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object T: TEdit
    Left = 384
    Top = 32
    Width = 81
    Height = 21
    TabOrder = 2
    Text = 'cotrudniki'
  end
  object Button2: TButton
    Left = 640
    Top = 112
    Width = 137
    Height = 49
    Caption = #1055#1077#1095#1072#1090#1100
    TabOrder = 3
    OnClick = Button2Click
  end
  object MySQLQuery1: TMySQLQuery
    Database = MySQLDatabase2
    SQL.Strings = (
      'SELECT * FROM bystrova_cotrudniki WHERE cortrudniki LIKE :par1;')
    Left = 240
    Top = 24
    ParamData = <
      item
        DataType = ftString
        Name = 'par1'
        ParamType = ptUnknown
      end>
  end
  object DataSource1: TDataSource
    DataSet = MySQLQuery1
    Left = 288
    Top = 24
  end
  object MySQLDatabase2: TMySQLDatabase
    Connected = True
    DatabaseName = 'bh35910_kis'
    UserName = 'bh35910_student1711'
    UserPassword = 'pgu2023pgu2023'
    Host = '91.219.194.4'
    ConnectOptions = []
    ConnectionCharacterSet = 'latin1'
    Params.Strings = (
      'Port=3306'
      'TIMEOUT=30'
      'DatabaseName=bh35910_kis'
      'UID=bh35910_student1711'
      'PWD=pgu2023pgu2023'
      'Host=91.219.194.4')
    DatasetOptions = []
    Left = 184
    Top = 24
  end
  object frxReport1: TfrxReport
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    ReportOptions.CreateDate = 45616.970142777780000000
    ReportOptions.LastChange = 45616.970142777780000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 568
    Top = 200
    Datasets = <>
    Variables = <>
    Style = <>
    object Page1: TfrxReportPage
      PaperWidth = 210.015666666666700000
      PaperHeight = 297.010666666666700000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
    end
  end
  object frxDBDataset1: TfrxDBDataset
    UserName = 'frxDBDataset1'
    CloseDataSource = False
    DataSource = DataSource1
    Left = 624
    Top = 200
  end
  object frxPDFExport1: TfrxPDFExport
    PrintOptimized = False
    Outline = False
    Author = 'FastReport'#174
    Subject = 'FastReport'#174' PDF export'
    Background = False
    Creator = 'FastReport'#174' (http://www.fast-report.com)'
    HTMLTags = True
    Left = 688
    Top = 216
  end
end
