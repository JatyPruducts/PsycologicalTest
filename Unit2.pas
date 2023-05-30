unit Unit2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, PsychologicalTest, Vcl.StdCtrls,
  Vcl.ExtCtrls;


type
  TForm2 = class(TForm)
    TextLabel: TLabel;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    RadioButton3: TRadioButton;
    Button1: TButton;
    RadioButton4: TRadioButton;
    RadioButton5: TRadioButton;
    ModuleName: TLabel;
    QuestionName: TLabel;
    Button2: TButton;
    Panel1: TPanel;
    Memo1: TMemo;
    Button3: TButton;
    Label1: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure RadioButton1Click(Sender: TObject);
    procedure RadioButton2Click(Sender: TObject);
    procedure RadioButton3Click(Sender: TObject);
    procedure RadioButton4Click(Sender: TObject);
    procedure RadioButton5Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
  FTest: TPsychologicalTest;
  end;

var
  Form2: TForm2;




implementation

{$R *.dfm}

uses Unit1, Unit3, Unit4;

procedure TForm2.Button1Click(Sender: TObject);
begin
  if (RadioButton1.Checked.ToInteger + RadioButton2.Checked.ToInteger * 2 + RadioButton3.Checked.ToInteger * 3 + RadioButton4.Checked.ToInteger * 4 + RadioButton5.Checked.ToInteger * 5) = FTest.GetCurrentQuestion.CorrectAnswer then
  begin
    PsychologicalTest.total_result := PsychologicalTest.total_result + 1;
  end;



  if FTest.IsLastQuestion then
    begin
     Form3.Show;
     Form2.Visible := False;
    end
  else
  begin
    Button1.Enabled := False;
    FTest.NextQuestion;
    ModuleName.Caption := FTest.GetCurrentQuestion.Module;
    QuestionName.Caption := FTest.GetCurrentQuestion.MainQuesion;
    TextLabel.Caption := FTest.GetCurrentQuestion.Prompt;
    RadioButton1.Caption := FTest.GetCurrentQuestion.Choices[0];
    RadioButton2.Caption := FTest.GetCurrentQuestion.Choices[1];
    RadioButton3.Caption := FTest.GetCurrentQuestion.Choices[2];
    RadioButton4.Caption := FTest.GetCurrentQuestion.Choices[3];
    RadioButton5.Caption := FTest.GetCurrentQuestion.Choices[4];
    RadioButton1.Checked := False;
    RadioButton2.Checked := False;
    RadioButton3.Checked := False;
    RadioButton4.Checked := False;
    RadioButton5.Checked := False;
    if (FTest.FCurrentQuestionIndex >= 40) and (FTest.FCurrentQuestionIndex <= 64) then
    begin
      Label1.Visible := True;
    end
    else
      Label1.Visible := False;
end;
  end;




procedure TForm2.Button2Click(Sender: TObject);
begin
  Form4.Show;
  Form2.Visible := False;
end;

procedure TForm2.Button3Click(Sender: TObject);
begin
  Panel1.Visible := False;
end;

procedure TForm2.FormCreate(Sender: TObject);
begin
  PsychologicalTest.total_result := 0;
  FTest := TPsychologicalTest.Create;
  ModuleName.Caption := FTest.GetCurrentQuestion.Module;
  QuestionName.Caption := FTest.GetCurrentQuestion.MainQuesion;
  TextLabel.Caption := FTest.GetCurrentQuestion.Prompt;
  RadioButton1.Caption := FTest.GetCurrentQuestion.Choices[0];
  RadioButton2.Caption := FTest.GetCurrentQuestion.Choices[1];
  RadioButton3.Caption := FTest.GetCurrentQuestion.Choices[2];
  RadioButton4.Caption := FTest.GetCurrentQuestion.Choices[3];
  RadioButton5.Caption := FTest.GetCurrentQuestion.Choices[4];


end;






procedure TForm2.RadioButton1Click(Sender: TObject);
begin
   Button1.Enabled := True;
end;

procedure TForm2.RadioButton2Click(Sender: TObject);
begin
  Button1.Enabled := True;
end;

procedure TForm2.RadioButton3Click(Sender: TObject);
begin
  Button1.Enabled := True;
end;

procedure TForm2.RadioButton4Click(Sender: TObject);
begin
  Button1.Enabled := True;
end;

procedure TForm2.RadioButton5Click(Sender: TObject);
begin
  Button1.Enabled := True;
end;

end.
