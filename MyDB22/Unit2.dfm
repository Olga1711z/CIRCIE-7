object Form2: TForm2
  Left = 752
  Top = 500
  Width = 1044
  Height = 540
  Caption = 'Form2'
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
    Top = 32
    Width = 32
    Height = 13
    Caption = 'Label1'
  end
  object Label2: TLabel
    Left = 16
    Top = 80
    Width = 32
    Height = 13
    Caption = 'Label2'
  end
  object Label3: TLabel
    Left = 400
    Top = 56
    Width = 32
    Height = 13
    Caption = 'Label3'
  end
  object DBGrid1: TDBGrid
    Left = 112
    Top = 200
    Width = 569
    Height = 129
    DataSource = DataSource1
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object DBNavigator1: TDBNavigator
    Left = 136
    Top = 344
    Width = 550
    Height = 33
    DataSource = DataSource1
    TabOrder = 1
  end
  object DBEdit1: TDBEdit
    Left = 144
    Top = 32
    Width = 177
    Height = 21
    DataField = 'cotrudniki'
    DataSource = DataSource1
    TabOrder = 2
  end
  object DBEdit2: TDBEdit
    Left = 144
    Top = 80
    Width = 177
    Height = 21
    DataField = 'tel'
    DataSource = DataSource1
    TabOrder = 3
  end
  object DBEdit3: TDBEdit
    Left = 496
    Top = 56
    Width = 145
    Height = 21
    DataField = 'position'
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
    Left = 336
    Top = 152
  end
  object MySQLTable1: TMySQLTable
    Database = MySQLDatabase1
    Active = True
    TableName = 'bystrova_cotrudniki'
    Left = 408
    Top = 152
  end
  object DataSource1: TDataSource
    DataSet = MySQLTable1
    Left = 504
    Top = 152
  end
end
