unit Unit4;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, PsychologicalTest, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons;

type
  TForm4 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Button1: TButton;
    Memo1: TMemo;
    procedure Button1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form4: TForm4;
  naming, secName, dadName, mail, s: string;
  f, f1: TextFile;
  i: integer;

implementation

{$R *.dfm}

uses Unit1, Unit2, Unit3;


procedure TForm4.Button1Click(Sender: TObject);
begin
  Unit1.MainForm.Close;
  Unit2.Form2.Close;
  Unit3.Form3.Close;
  close;
end;


procedure TForm4.FormShow(Sender: TObject);
begin
   Memo1.Lines.Text := 'ФИО: ' + secName + ' ' + naming + ' ' + DadName + ' Почта: ' + mail + ' Баллы: ' + IntToStr(PsychologicalTest.total_result);
   AssignFile(f, 'results.txt');
   Reset(f);
    while (not EOF(f)) do begin
      Readln(f, s);
      Memo1.Lines.Add(s);
    end;

   AssignFile(f1, 'results.txt');
   Rewrite(f);

   for i := 0 to Memo1.Lines.Count - 1 do
       Writeln(f, Memo1.Lines[i]);
   CloseFile(f);

   Label2.Caption := IntToStr(PsychologicalTest.total_result) + '/138'
end;



end.
