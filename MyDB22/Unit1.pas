unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Menus;

type
  TCotrudnikiForm = class(TForm)
    Button1: TButton;
    MainMenu1: TMainMenu;
    Y1: TMenuItem;
    N1: TMenuItem;
    N2: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    N5: TMenuItem;
    N6: TMenuItem;
    N7: TMenuItem;
    N8: TMenuItem;
    N9: TMenuItem;
    N10: TMenuItem;
    N11: TMenuItem;
    N12: TMenuItem;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  CotrudnikiForm: TCotrudnikiForm;

implementation

uses Unit2, Unit3, Unit4, Unit5, Unit6;

{$R *.dfm}

procedure TCotrudnikiForm.Button1Click(Sender: TObject);
begin
form2.show();
end;

procedure TCotrudnikiForm.Button2Click(Sender: TObject);
begin
krujokForm.show();
end;

procedure TCotrudnikiForm.Button3Click(Sender: TObject);
begin
studentsForm.show();
end;

procedure TCotrudnikiForm.Button4Click(Sender: TObject);
begin
ZhurnalForm.show();
end;

procedure TCotrudnikiForm.Button5Click(Sender: TObject);
begin
form6.show();
end;

end.
