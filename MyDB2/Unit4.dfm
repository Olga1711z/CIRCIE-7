object StudentsForm: TStudentsForm
  Left = 61
  Top = 509
  Width = 1005
  Height = 583
  AlphaBlend = True
  Caption = 'StudentsForm'
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
    Left = 80
    Top = 168
    Width = 673
    Height = 241
    DataSource = DataSource1
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object DBNavigator1: TDBNavigator
    Left = 144
    Top = 480
    Width = 550
    Height = 33
    DataSource = DataSource1
    TabOrder = 1
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
    Left = 288
    Top = 112
  end
  object MySQLTable1: TMySQLTable
    Database = MySQLDatabase1
    Active = True
    TableName = 'bystrova_students'
    Left = 368
    Top = 112
  end
  object DataSource1: TDataSource
    DataSet = MySQLTable1
    Left = 480
    Top = 112
  end
  object MySQLTable2: TMySQLTable
    Database = MySQLDatabase1
    TableName = 'bystrova_krujok'
    Left = 352
    Top = 88
    object MySQLTable1idkrujok: TAutoIncField
      DisplayWidth = 12
      FieldName = 'idkrujok'
      Origin = 'bystrova_krujok.idkrujok'
    end
    object MySQLTable1krujok: TStringField
      DisplayWidth = 21
      FieldName = 'krujok'
      Origin = 'bystrova_krujok.krujok'
      Size = 50
    end
    object MySQLTable1klass: TIntegerField
      DisplayWidth = 5
      FieldName = 'klass'
      Origin = 'bystrova_krujok.klass'
    end
    object MySQLTable1rukovoditel: TStringField
      DisplayWidth = 24
      FieldName = 'rukovoditel'
      Origin = 'bystrova_krujok.rukovoditel'
      Size = 50
    end
    object MySQLTable1namestudents: TStringField
      DisplayWidth = 18
      FieldKind = fkLookup
      FieldName = 'namestudents'
      LookupKeyFields = 'idstudents'
      LookupResultField = 'idstudents'
      KeyFields = 'krujok'
      Lookup = True
    end
    object MySQLTable1namecotrudniki: TStringField
      FieldKind = fkLookup
      FieldName = 'namecotrudniki'
      LookupKeyFields = 'idcotrudniki'
      LookupResultField = 'cotrudniki'
      KeyFields = 'krujok'
      Lookup = True
    end
  end
end
