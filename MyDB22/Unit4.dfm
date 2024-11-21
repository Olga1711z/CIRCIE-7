object StudentsForm: TStudentsForm
  Left = 468
  Top = 161
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
  object Label1: TLabel
    Left = 56
    Top = 16
    Width = 73
    Height = 13
    Caption = #1060#1048#1054' '#1056#1077#1073#1077#1085#1082#1072
  end
  object Label2: TLabel
    Left = 56
    Top = 56
    Width = 71
    Height = 13
    Caption = #1044#1072#1090#1072' '#1088#1077#1073#1077#1085#1082#1072
  end
  object Label3: TLabel
    Left = 400
    Top = 16
    Width = 31
    Height = 13
    Caption = #1040#1076#1088#1077#1089
  end
  object Label4: TLabel
    Left = 400
    Top = 56
    Width = 31
    Height = 13
    Caption = #1050#1083#1072#1089#1089
  end
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
    Columns = <
      item
        Expanded = False
        FieldName = 'fiorebenka'
        Title.Caption = #1060#1048#1054' '#1056#1077#1073#1077#1085#1082#1072
        Width = 91
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'datarebenka'
        Title.Caption = #1044#1072#1090#1072' '#1088#1077#1073#1077#1085#1082#1072
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'adris'
        Title.Caption = #1040#1076#1088#1077#1089
        Width = 113
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'idklass'
        Title.Caption = #1050#1083#1072#1089#1089
        Visible = True
      end>
  end
  object DBNavigator1: TDBNavigator
    Left = 144
    Top = 480
    Width = 550
    Height = 33
    DataSource = DataSource1
    TabOrder = 1
  end
  object DBEdit1: TDBEdit
    Left = 192
    Top = 16
    Width = 153
    Height = 21
    DataField = 'fiorebenka'
    DataSource = DataSource1
    TabOrder = 2
  end
  object DBEdit2: TDBEdit
    Left = 200
    Top = 56
    Width = 153
    Height = 21
    DataField = 'datarebenka'
    DataSource = DataSource1
    TabOrder = 3
  end
  object DBEdit3: TDBEdit
    Left = 464
    Top = 16
    Width = 153
    Height = 21
    DataField = 'adris'
    DataSource = DataSource1
    TabOrder = 4
  end
  object DBEdit4: TDBEdit
    Left = 464
    Top = 56
    Width = 153
    Height = 21
    DataField = 'idklass'
    DataSource = DataSource1
    TabOrder = 5
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
    Left = 280
    Top = 112
  end
  object MySQLTable1: TMySQLTable
    Database = MySQLDatabase1
    Active = True
    TableName = 'bystrova_students'
    Left = 400
    Top = 112
  end
  object DataSource1: TDataSource
    DataSet = MySQLTable1
    Left = 448
    Top = 112
  end
  object MySQLTable2: TMySQLTable
    Database = MySQLDatabase1
    TableName = 'bystrova_krujok'
    Left = 336
    Top = 112
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
