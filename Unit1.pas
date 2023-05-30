unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons;

type
  TMainForm = class(TForm)
    Label1: TLabel;
    Edit1: TEdit;
    Label2: TLabel;
    Edit2: TEdit;
    Edit3: TEdit;
    Label3: TLabel;
    Edit4: TEdit;
    Label4: TLabel;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  MainForm: TMainForm;
  counter: integer;
  i: integer;
  flagName, flagSecName, flagDadName, flagmail : bool;

implementation

{$R *.dfm}

uses Unit2, Unit4;


procedure TMainForm.Button1Click(Sender: TObject);
begin
  flagDadName := True;
  flagName := False;
  flagSecName := False;
  flagmail := False;
  if Edit1.Text <> '' then
  begin
    for i:= 1 to length(Edit1.Text) do
    begin
      if Edit1.Text[i] in ['0'..'9'] then
      begin
        flagName := False;
      end
      else
        flagName := True;
    end;
    if flagName = False then
      showMessage('¬ведите корректное им€')
  end
  else
    showMessage('¬ведите им€');

  if flagName = True then
  begin
    if Edit2.Text <> '' then
    begin
    for i:= 1 to length(Edit2.Text) do
    begin
      if Edit2.Text[i] in ['0'..'9'] then
      begin
        flagSecName := False;
      end
      else
        flagSecName := True;
    end;
    if flagSecName = False then
      showMessage('¬ведите корректную фамилию')
    end
    else
      showMessage('¬ведите фамилию');
  end;


  if Edit3.Text <> '' then
  begin
    for i:= 1 to length(Edit3.Text) do
    begin
      if Edit3.Text[i] in ['0'..'9'] then
       begin
        flagDadName := False;
      end
      else
        flagDadName := True;
    end;
    if flagDadName = False then
      showMessage('¬ведите корректное отчество')
  end;

  if flagSecName = True then
  begin
    if (pos('@',Edit4.Text) <> 0) and (pos('.',Edit4.Text) <> 0) and (flagSecName = True) then
      begin
        flagMail := True;
      end
    else
      showMessage('¬ведите корректную почту');
  end;


  if (flagName = True) and (flagSecName = True) and (flagDadName = True) and (flagMail = True) then
  begin
    Unit4.naming := Edit1.Text;
    Unit4.secName := Edit2.Text;
    Unit4.dadName := Edit3.Text;
    Unit4.mail := Edit4.Text;
    Form2.Visible := True;
    MainForm.Visible := False;
  end;

end;

end.
