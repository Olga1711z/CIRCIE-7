program Project1;

uses
  Forms,
  Unit1 in 'Unit1.pas' {CotrudnikiForm},
  Unit2 in 'Unit2.pas' {Form2},
  Unit3 in 'Unit3.pas' {KrujokForm},
  Unit4 in 'Unit4.pas' {StudentsForm},
  Unit5 in 'Unit5.pas' {ZhurnalForm},
  Unit6 in 'Unit6.pas' {Form6};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TCotrudnikiForm, CotrudnikiForm);
  Application.CreateForm(TForm2, Form2);
  Application.CreateForm(TKrujokForm, KrujokForm);
  Application.CreateForm(TStudentsForm, StudentsForm);
  Application.CreateForm(TZhurnalForm, ZhurnalForm);
  Application.CreateForm(TForm6, Form6);
  Application.Run;
end.
