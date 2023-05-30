unit Unit3;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, PsychologicalTest;

type
  TForm3 = class(TForm)
    ModuleName56: TLabel;
    ModuleQustion56: TLabel;
    Question56: TLabel;
    Edit1: TEdit;
    Button1: TButton;
    Label2: TLabel;
    Button2: TButton;
    procedure FormCreate(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    FTest2: TPsychologicalTest2;
  end;

var
  Form3: TForm3;

implementation

{$R *.dfm}

uses Unit2, Unit4;

procedure TForm3.Button1Click(Sender: TObject);
begin
  if Pos('6', ModuleName56.Caption) <> 0 then
    begin
    if FTest2.GetCurrentQuestion.CorrectAnswer2[0] = edit1.Text then
       PsychologicalTest.total_result :=  PsychologicalTest.total_result + 1;
    end
  else
    if AnsiLowerCase(edit1.Text) = FTest2.GetCurrentQuestion.CorrectAnswer2[0] then
       PsychologicalTest.total_result := PsychologicalTest.total_result + 2;
    if (AnsiLowerCase(edit1.Text) = FTest2.GetCurrentQuestion.CorrectAnswer2[1]) or (AnsiLowerCase(edit1.Text) = FTest2.GetCurrentQuestion.CorrectAnswer2[2]) then
       PsychologicalTest.total_result := PsychologicalTest.total_result + 1;
  if FTest2.IsLastQuestion then
    begin
     Form4.Show;
     Form3.Visible := False;
    end
  else
    begin
    Button1.Enabled := False;
    FTest2.NextQuestion;
    ModuleName56.Caption := FTest2.GetCurrentQuestion.Module;
    ModuleQustion56.Caption := FTest2.GetCurrentQuestion.MainQuesion;
    Question56.Caption := FTest2.GetCurrentQuestion.Prompt;
    Label2.Caption := FTest2.GetCurrentQuestion.Dop;
    edit1.Clear;
    edit1.TextHint := '���� ��� �����'
    end;
end;

procedure TForm3.Button2Click(Sender: TObject);
begin
  Form4.Show;
  Form3.Visible := False;
end;

procedure TForm3.Edit1Change(Sender: TObject);
begin
  if Edit1.Text <> '' then
    Button1.Enabled := True;
end;

procedure TForm3.FormCreate(Sender: TObject);
begin
  FTest2 := TPsychologicalTest2.Create;
  ModuleName56.Caption := FTest2.GetCurrentQuestion.Module;
  ModuleQustion56.Caption := FTest2.GetCurrentQuestion.MainQuesion;
  Question56.Caption := FTest2.GetCurrentQuestion.Prompt;
  Label2.Caption := FTest2.GetCurrentQuestion.Dop;

end;


end.
