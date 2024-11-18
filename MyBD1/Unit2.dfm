object Form2: TForm2
  Left = 291
  Top = 204
  Width = 1044
  Height = 538
  Caption = #1090#1086#1074#1072#1088#1099
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 16
    Top = 24
    Width = 32
    Height = 13
    Caption = 'Label1'
  end
  object Label2: TLabel
    Left = 8
    Top = 56
    Width = 32
    Height = 13
    Caption = 'Label2'
  end
  object Label3: TLabel
    Left = 296
    Top = 16
    Width = 32
    Height = 13
    Caption = 'Label3'
  end
  object DBGrid1: TDBGrid
    Left = 160
    Top = 200
    Width = 601
    Height = 120
    DataSource = DataSource1
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object DBNavigator1: TDBNavigator
    Left = 160
    Top = 368
    Width = 600
    Height = 25
    DataSource = DataSource1
    TabOrder = 1
  end
  object DBEdit1: TDBEdit
    Left = 104
    Top = 16
    Width = 153
    Height = 21
    DataField = 'tovar'
    DataSource = DataSource1
    TabOrder = 2
  end
  object DBEdit2: TDBEdit
    Left = 104
    Top = 56
    Width = 145
    Height = 21
    DataField = 'edizm'
    DataSource = DataSource1
    TabOrder = 3
  end
  object DBEdit3: TDBEdit
    Left = 400
    Top = 16
    Width = 169
    Height = 21
    DataField = 'zena'
    DataSource = DataSource1
    TabOrder = 4
  end
  object MySQLDatabase1: TMySQLDatabase
    Connected = True
    DatabaseName = 'bh35910_kis'
    UserName = 'bh35910_student1711'
    UserPassword = 'pgu2023pgu2023'
    Host = '91.219.194.4'
    ConnectOptions = []
    ConnectionCharacterSet = 'utf8'
    Params.Strings = (
      'Port=3306'
      'TIMEOUT=30'
      'DatabaseName=bh35910_kis'
      'UID=bh35910_student1711'
      'PWD=pgu2023pgu2023'
      'Host=91.219.194.4')
    DatasetOptions = []
    Left = 192
    Top = 96
  end
  object MySQLTable1: TMySQLTable
    Database = MySQLDatabase1
    Active = True
    TableName = 'bystrova_tovar'
    Left = 272
    Top = 96
  end
  object DataSource1: TDataSource
    DataSet = MySQLTable1
    Left = 360
    Top = 96
  end
end
