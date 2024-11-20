unit Unit6;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, mySQLDbTables, Grids, DBGrids, StdCtrls, frxClass, frxDBSet,
  frxExportPDF;

type
  TForm6 = class(TForm)
    Button1: TButton;
    MySQLQuery1: TMySQLQuery;
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    MySQLDatabase2: TMySQLDatabase;
    T: TEdit;
    Button2: TButton;
    frxDBDataset1: TfrxDBDataset;
    frxReport1: TfrxReport;
    frxPDFExport1: TfrxPDFExport;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form6: TForm6;

implementation

{$R *.dfm}

procedure TForm6.Button1Click(Sender: TObject);
begin
 if (MySQLQuery1.Active = false)
 then
  begin
      MySQLQuery1.ParamByName('par1').AsString := klass.Text;
      MySQLQuery1.Active:= true;
  end
 else
  MySQLQuery1.Active:= false;
end;

procedure TForm6.Button2Click(Sender: TObject);
begin
   frxReport11.ShowReport ();
end;

end.
