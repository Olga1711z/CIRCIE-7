object KrujokForm: TKrujokForm
  Left = 9
  Top = 256
  Width = 1018
  Height = 597
  Caption = 'KrujokForm'
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
    Left = 224
    Top = 56
    Width = 32
    Height = 13
    Caption = 'Label1'
  end
  object Label2: TLabel
    Left = 568
    Top = 40
    Width = 32
    Height = 13
    Caption = 'Label2'
  end
  object Label3: TLabel
    Left = 16
    Top = 32
    Width = 32
    Height = 13
    Caption = 'Label3'
  end
  object DBGrid1: TDBGrid
    Left = 120
    Top = 256
    Width = 577
    Height = 233
    DataSource = DataSource1
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
  end
  object DBNavigator1: TDBNavigator
    Left = 120
    Top = 504
    Width = 550
    Height = 33
    DataSource = DataSource1
    TabOrder = 1
  end
  object DBLookupComboBox1: TDBLookupComboBox
    Left = 328
    Top = 56
    Width = 145
    Height = 21
    DataField = 'krujok'
    DataSource = DataSource1
    KeyField = 'datarebenka'
    ListField = 'idstudents'
    ListSource = DataSource2
    TabOrder = 2
  end
  object DBLookupComboBox2: TDBLookupComboBox
    Left = 672
    Top = 40
    Width = 153
    Height = 21
    DataField = 'idstudents'
    DataSource = DataSource2
    KeyField = 'namecotrudniki'
    ListField = 'idkrujok'
    ListSource = DataSource1
    TabOrder = 3
  end
  object DBEdit1: TDBEdit
    Left = 88
    Top = 32
    Width = 129
    Height = 21
    DataField = 'datarebenka'
    DataSource = DataSource2
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
    Left = 728
    Top = 224
  end
  object MySQLTable1: TMySQLTable
    Database = MySQLDatabase1
    Active = True
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
      LookupDataSet = MySQLTable2
      LookupKeyFields = 'idstudents'
      LookupResultField = 'idstudents'
      KeyFields = 'krujok'
      Lookup = True
    end
    object MySQLTable1namecotrudniki: TStringField
      FieldKind = fkLookup
      FieldName = 'namecotrudniki'
      LookupDataSet = MySQLTable3
      LookupKeyFields = 'idcotrudniki'
      LookupResultField = 'cotrudniki'
      KeyFields = 'krujok'
      Lookup = True
    end
  end
  object DataSource1: TDataSource
    DataSet = MySQLTable1
    Left = 424
    Top = 88
  end
  object MySQLTable2: TMySQLTable
    Database = MySQLDatabase1
    Active = True
    TableName = 'bystrova_students'
    Left = 712
    Top = 64
  end
  object DataSource2: TDataSource
    DataSet = MySQLTable2
    Left = 768
    Top = 64
  end
  object MySQLTable3: TMySQLTable
    Database = MySQLDatabase1
    Active = True
    TableName = 'bystrova_cotrudniki'
    Left = 760
    Top = 280
  end
end
