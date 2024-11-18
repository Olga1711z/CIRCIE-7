object Form2: TForm2
  Left = 356
  Top = 203
  Width = 1044
  Height = 540
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
  object DBGrid1: TDBGrid
    Left = 144
    Top = 200
    Width = 320
    Height = 120
    DataSource = DataSource1
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        Visible = True
      end
      item
        Expanded = False
        Visible = True
      end
      item
        Expanded = False
        Visible = True
      end
      item
        Expanded = False
        Visible = True
      end
      item
        Expanded = False
        Visible = True
      end>
  end
  object DBNavigator1: TDBNavigator
    Left = 144
    Top = 352
    Width = 320
    Height = 25
    DataSource = DataSource1
    TabOrder = 1
  end
  object DBEdit1: TDBEdit
    Left = 80
    Top = 16
    Width = 121
    Height = 21
    DataField = 'tovar'
    DataSource = DataSource1
    TabOrder = 2
  end
  object DBEdit2: TDBEdit
    Left = 80
    Top = 48
    Width = 121
    Height = 21
    DataField = 'edizm'
    DataSource = DataSource1
    TabOrder = 3
  end
  object DBEdit3: TDBEdit
    Left = 248
    Top = 16
    Width = 121
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
    ConnectionCharacterSet = 'latin1'
    Params.Strings = (
      'Port=3306'
      'TIMEOUT=30'
      'DatabaseName=bh35910_kis'
      'UID=bh35910_student1711'
      'PWD=pgu2023pgu2023'
      'Host=91.219.194.4')
    DatasetOptions = []
    Left = 144
    Top = 112
  end
  object MySQLTable1: TMySQLTable
    Database = MySQLDatabase1
    Active = True
    TableName = 'bystrova_tovar'
    Left = 272
    Top = 112
  end
  object DataSource1: TDataSource
    DataSet = MySQLTable1
    Left = 376
    Top = 120
  end
end
