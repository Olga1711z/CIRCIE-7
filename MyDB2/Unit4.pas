unit Unit4;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, mySQLDbTables, ExtCtrls, DBCtrls, Grids, DBGrids, StdCtrls,
  Mask;

type
  TStudentsForm = class(TForm)
    DBGrid1: TDBGrid;
    DBNavigator1: TDBNavigator;
    MySQLDatabase1: TMySQLDatabase;
    MySQLTable1: TMySQLTable;
    DataSource1: TDataSource;
    MySQLTable2: TMySQLTable;
    MySQLTable1idkrujok: TAutoIncField;
    MySQLTable1krujok: TStringField;
    MySQLTable1klass: TIntegerField;
    MySQLTable1rukovoditel: TStringField;
    MySQLTable1namestudents: TStringField;
    MySQLTable1namecotrudniki: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  StudentsForm: TStudentsForm;

implementation

{$R *.dfm}

end.
