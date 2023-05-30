unit PsychologicalTest;

interface

type
  TQuestion = record
    Prompt, Module, MainQuesion: string;
    Choices: array[0..5] of string;
    CorrectAnswer: Integer;
  end;

  TPsychologicalTest = class
  private
    FQuestions: array[0..84] of TQuestion;
  public
    FCurrentQuestionIndex: Integer;
    constructor Create;
    function GetCurrentQuestion: TQuestion;
    function IsLastQuestion: Boolean;
    procedure NextQuestion;
  end;

  TQuestion2 = record
    Prompt, Module, MainQuesion, Dop: string;
    CorrectAnswer2: array[0..2] of string;
  end;

  TPsychologicalTest2 = class
  private
    FQuestions2: array[0..33] of TQuestion2;
  public
    FCurrentQuestionIndex2: Integer;
    constructor Create;
    function GetCurrentQuestion: TQuestion2;
    function IsLastQuestion: Boolean;
    procedure NextQuestion;
  end;
 var
  total_result : integer;

implementation

constructor TPsychologicalTest.Create;
begin
  FQuestions[0].Module := '������ 1. ������������';
  FQuestions[0].MainQuesion := '1. ���������� �����������';
  FQuestions[0].Prompt := '��������� ����� ����� � �������� ���������� ...?';
  FQuestions[0].Choices[0] := '�������';
  FQuestions[0].Choices[1] := '��������';
  FQuestions[0].Choices[2] := '��������';
  FQuestions[0].Choices[3] := '������';
  FQuestions[0].Choices[4] := '���������';
  FQuestions[0].CorrectAnswer := 2;

  FQuestions[1].Module := '������ 1. ������������';
  FQuestions[1].MainQuesion := '2. ���������� �����������';
  FQuestions[1].Prompt := '�������� - ��� ...?';
  FQuestions[1].Choices[0] := '������������';
  FQuestions[1].Choices[1] := '����������';
  FQuestions[1].Choices[2] := '����������������';
  FQuestions[1].Choices[3] := '�����������';
  FQuestions[1].Choices[4] := '�����������������';
  FQuestions[1].CorrectAnswer := 2;

  FQuestions[2].Module := '������ 1. ������������';
  FQuestions[2].MainQuesion := '3. ���������� �����������';
  FQuestions[2].Prompt := '������� �������� �� ������� � �������� ���� ...?';
  FQuestions[2].Choices[0] := '�����';
  FQuestions[2].Choices[1] := '������';
  FQuestions[2].Choices[2] := '�������������';
  FQuestions[2].Choices[3] := '��������';
  FQuestions[2].Choices[4] := '�������';
  FQuestions[2].CorrectAnswer := 3;

  FQuestions[3].Module := '������ 1. ������������';
  FQuestions[3].MainQuesion := '4. ���������� �����������';
  FQuestions[3].Prompt := '����������� �� ������ �������� ����� "����������" � ...? ';
  FQuestions[3].Choices[0] := '�������';
  FQuestions[3].Choices[1] := '����������';
  FQuestions[3].Choices[2] := '�������������';
  FQuestions[3].Choices[3] := '��������';
  FQuestions[3].Choices[4] := '������';
  FQuestions[3].CorrectAnswer := 3;

  FQuestions[4].Module := '������ 1. ������������';
  FQuestions[4].MainQuesion := '5. ���������� �����������';
  FQuestions[4].Prompt := '����� � ��������� ������ ����� �������� � ������ �������� ���������� ...?';
  FQuestions[4].Choices[0] := '�������';
  FQuestions[4].Choices[1] := '�����';
  FQuestions[4].Choices[2] := '��������';
  FQuestions[4].Choices[3] := '��������';
  FQuestions[4].Choices[4] := '����������';
  FQuestions[4].CorrectAnswer := 3;

  FQuestions[5].Module := '������ 1. ������������';
  FQuestions[5].MainQuesion := '6. ���������� �����������';
  FQuestions[5].Prompt := '������� ������, ������ ��������� ���������� �����, ������, ������� -��� ...?';
  FQuestions[5].Choices[0] := '�����';
  FQuestions[5].Choices[1] := '������';
  FQuestions[5].Choices[2] := '�������';
  FQuestions[5].Choices[3] := '�������';
  FQuestions[5].Choices[4] := '��������';
  FQuestions[5].CorrectAnswer := 5;

  FQuestions[6].Module := '������ 1. ������������';
  FQuestions[6].MainQuesion := '7. ���������� �����������';
  FQuestions[6].Prompt := '������������, �������� � ������� �������� - ��� ...?';
  FQuestions[6].Choices[0] := '����������������';
  FQuestions[6].Choices[1] := '���������';
  FQuestions[6].Choices[2] := '��������';
  FQuestions[6].Choices[3] := '������';
  FQuestions[6].Choices[4] := '����������';
  FQuestions[6].CorrectAnswer := 3;

  FQuestions[7].Module := '������ 1. ������������';
  FQuestions[7].MainQuesion := '8. ���������� �����������';
  FQuestions[7].Prompt := '���������� �������� � ������ ��������� ������� � ����������� - ��� ...?';
  FQuestions[7].Choices[0] := '��������������';
  FQuestions[7].Choices[1] := '�����������';
  FQuestions[7].Choices[2] := '��������';
  FQuestions[7].Choices[3] := '����������������';
  FQuestions[7].Choices[4] := '����������';
  FQuestions[7].CorrectAnswer := 2;

  FQuestions[8].Module := '������ 1. ������������';
  FQuestions[8].MainQuesion := '9. ���������� �����������';
  FQuestions[8].Prompt := '���� �������, ����������� � �����-���� ������� ������������ ����� � ������������ ���������� ...?';
  FQuestions[8].Choices[0] := '����������';
  FQuestions[8].Choices[1] := '��������������';
  FQuestions[8].Choices[2] := '���������';
  FQuestions[8].Choices[3] := '��������';
  FQuestions[8].Choices[4] := '��������';
  FQuestions[8].CorrectAnswer := 4;

  FQuestions[9].Module := '������ 1. ������������';
  FQuestions[9].MainQuesion := '10. ���������� �����������';
  FQuestions[9].Prompt := '������������������ ������� "����������" ����� ...?';
  FQuestions[9].Choices[0] := '���������';
  FQuestions[9].Choices[1] := '��������������';
  FQuestions[9].Choices[2] := '���������';
  FQuestions[9].Choices[3] := '��������';
  FQuestions[9].Choices[4] := '�����������';
  FQuestions[9].CorrectAnswer := 1;

  FQuestions[10].Module := '������ 1. ������������';
  FQuestions[10].MainQuesion := '11. ���������� �����������';
  FQuestions[10].Prompt := '���� ���� ������������� ��������� ���������, ����� ������� � ...?';
  FQuestions[10].Choices[0] := '�����������';
  FQuestions[10].Choices[1] := '�������';
  FQuestions[10].Choices[2] := '�����������';
  FQuestions[10].Choices[3] := '�����������';
  FQuestions[10].Choices[4] := '������������';
  FQuestions[10].CorrectAnswer := 1;

  FQuestions[11].Module := '������ 1. ������������';
  FQuestions[11].MainQuesion := '12. ���������� �����������';
  FQuestions[11].Prompt := '����� - ��� ������ � ...?';
  FQuestions[11].Choices[0] := '�������';
  FQuestions[11].Choices[1] := '������';
  FQuestions[11].Choices[2] := '�������';
  FQuestions[11].Choices[3] := '��������';
  FQuestions[11].Choices[4] := '���������';
  FQuestions[11].CorrectAnswer := 2;

  FQuestions[12].Module := '������ 1. ������������';
  FQuestions[12].MainQuesion := '13. ���������� �����������';
  FQuestions[12].Prompt := '������������������ ������� "����������" ����� ...?';
  FQuestions[12].Choices[0] := '�������������';
  FQuestions[12].Choices[1] := '������������';
  FQuestions[12].Choices[2] := '������������';
  FQuestions[12].Choices[3] := '���������';
  FQuestions[12].Choices[4] := '�������������';
  FQuestions[12].CorrectAnswer := 4;

  FQuestions[13].Module := '������ 1. ������������';
  FQuestions[13].MainQuesion := '14. ���������� �����������';
  FQuestions[13].Prompt := '������������ �� �����������, �������������, ��������� � ������ -��� ...?';
  FQuestions[13].Choices[0] := '�����';
  FQuestions[13].Choices[1] := '���������';
  FQuestions[13].Choices[2] := '���������';
  FQuestions[13].Choices[3] := '��������';
  FQuestions[13].Choices[4] := '�����������';
  FQuestions[13].CorrectAnswer := 5;

  FQuestions[14].Module := '������ 1. ������������';
  FQuestions[14].MainQuesion := '15. ���������� �����������';
  FQuestions[14].Prompt := '��������� - ��� ...?';
  FQuestions[14].Choices[0] := '���������������';
  FQuestions[14].Choices[1] := '��������';
  FQuestions[14].Choices[2] := '������';
  FQuestions[14].Choices[3] := '��������';
  FQuestions[14].Choices[4] := '�������';
  FQuestions[14].CorrectAnswer := 1;

  FQuestions[15].Module := '������ 1. ������������';
  FQuestions[15].MainQuesion := '16. ���������� �����������';
  FQuestions[15].Prompt := '����������� - ��� ...?';
  FQuestions[15].Choices[0] := '��������';
  FQuestions[15].Choices[1] := '���������';
  FQuestions[15].Choices[2] := '������������';
  FQuestions[15].Choices[3] := '��������';
  FQuestions[15].Choices[4] := '�������';
  FQuestions[15].CorrectAnswer := 4;

  FQuestions[16].Module := '������ 1. ������������';
  FQuestions[16].MainQuesion := '17. ���������� �����������';
  FQuestions[16].Prompt := '����������� �� ������ �������� ����� "���������" � ...?';
  FQuestions[16].Choices[0] := '�����������';
  FQuestions[16].Choices[1] := '����';
  FQuestions[16].Choices[2] := '�����';
  FQuestions[16].Choices[3] := '����������';
  FQuestions[16].Choices[4] := '�����������';
  FQuestions[16].CorrectAnswer := 4;

  FQuestions[17].Module := '������ 1. ������������';
  FQuestions[17].MainQuesion := '18. ���������� �����������';
  FQuestions[17].Prompt := '�������� - ��� ...?';
  FQuestions[17].Choices[0] := '�����������';
  FQuestions[17].Choices[1] := '��������';
  FQuestions[17].Choices[2] := '������';
  FQuestions[17].Choices[3] := '������';
  FQuestions[17].Choices[4] := '�����������';
  FQuestions[17].CorrectAnswer := 5;

  FQuestions[18].Module := '������ 1. ������������';
  FQuestions[18].MainQuesion := '19. ���������� �����������';
  FQuestions[18].Prompt := '����������� �� ������ �������� ����� "���������" � ...?';
  FQuestions[18].Choices[0] := '�������������';
  FQuestions[18].Choices[1] := '���������������';
  FQuestions[18].Choices[2] := '����������';
  FQuestions[18].Choices[3] := '������';
  FQuestions[18].Choices[4] := '��������������';
  FQuestions[18].CorrectAnswer := 1;

  FQuestions[19].Module := '������ 1. ������������';
  FQuestions[19].MainQuesion := '20. ���������� �����������';
  FQuestions[19].Prompt := '�������, ������� ����������� ��������� � ���������, �������� ...?';
  FQuestions[19].Choices[0] := '����������';
  FQuestions[19].Choices[1] := '���������';
  FQuestions[19].Choices[2] := '�������������';
  FQuestions[19].Choices[3] := '���������';
  FQuestions[19].Choices[4] := '����������';
  FQuestions[19].CorrectAnswer := 3;



  FQuestions[20].Module := '������ 2. ������������';
  FQuestions[20].MainQuesion := '1. ��������� �������';
  FQuestions[20].Prompt := '������������� - ';
  FQuestions[20].Choices[0] := '����������������';
  FQuestions[20].Choices[1] := '���������';
  FQuestions[20].Choices[2] := '������';
  FQuestions[20].Choices[3] := '��������';
  FQuestions[20].Choices[4] := '��������������';
  FQuestions[20].CorrectAnswer := 2;

  FQuestions[21].Module := '������ 2. ������������';
  FQuestions[21].MainQuesion := '2. ��������� �������';
  FQuestions[21].Prompt := '������������� - ';
  FQuestions[21].Choices[0] := '����������';
  FQuestions[21].Choices[1] := '������';
  FQuestions[21].Choices[2] := '���������';
  FQuestions[21].Choices[3] := '��������';
  FQuestions[21].Choices[4] := '�����������';
  FQuestions[21].CorrectAnswer := 2;

  FQuestions[22].Module := '������ 2. ������������';
  FQuestions[22].MainQuesion := '3. ��������� �������';
  FQuestions[22].Prompt := '����� - ';
  FQuestions[22].Choices[0] := '��������';
  FQuestions[22].Choices[1] := '�������';
  FQuestions[22].Choices[2] := '��������';
  FQuestions[22].Choices[3] := '������������';
  FQuestions[22].Choices[4] := '��������';
  FQuestions[22].CorrectAnswer := 4;

  FQuestions[23].Module := '������ 2. ������������';
  FQuestions[23].MainQuesion := '4. ��������� �������';
  FQuestions[23].Prompt := '�������� - ';
  FQuestions[23].Choices[0] := '�����';
  FQuestions[23].Choices[1] := '��������';
  FQuestions[23].Choices[2] := '����';
  FQuestions[23].Choices[3] := '�����';
  FQuestions[23].Choices[4] := '�����';
  FQuestions[23].CorrectAnswer := 1;

  FQuestions[24].Module := '������ 2. ������������';
  FQuestions[24].MainQuesion := '5. ��������� �������';
  FQuestions[24].Prompt := '��� - ';
  FQuestions[24].Choices[0] := '���������';
  FQuestions[24].Choices[1] := '����������';
  FQuestions[24].Choices[2] := '��������';
  FQuestions[24].Choices[3] := '�����';
  FQuestions[24].Choices[4] := '����';
  FQuestions[24].CorrectAnswer := 3;

  FQuestions[25].Module := '������ 2. ������������';
  FQuestions[25].MainQuesion := '6. ��������� �������';
  FQuestions[25].Prompt := '���������� - ';
  FQuestions[25].Choices[0] := '����������';
  FQuestions[25].Choices[1] := '�������';
  FQuestions[25].Choices[2] := '����������';
  FQuestions[25].Choices[3] := '���������������';
  FQuestions[25].Choices[4] := '��������������';
  FQuestions[25].CorrectAnswer := 4;

  FQuestions[26].Module := '������ 2. ������������';
  FQuestions[26].MainQuesion := '7. ��������� �������';
  FQuestions[26].Prompt := '������ - ';
  FQuestions[26].Choices[0] := '�����';
  FQuestions[26].Choices[1] := '������';
  FQuestions[26].Choices[2] := '�������';
  FQuestions[26].Choices[3] := '������';
  FQuestions[26].Choices[4] := '������';
  FQuestions[26].CorrectAnswer := 2;

  FQuestions[27].Module := '������ 2. ������������';
  FQuestions[27].MainQuesion := '8. ��������� �������';
  FQuestions[27].Prompt := '������ - ';
  FQuestions[27].Choices[0] := '�����';
  FQuestions[27].Choices[1] := '�����';
  FQuestions[27].Choices[2] := '������';
  FQuestions[27].Choices[3] := '�������';
  FQuestions[27].Choices[4] := '����';
  FQuestions[27].CorrectAnswer := 4;

  FQuestions[28].Module := '������ 2. ������������';
  FQuestions[28].MainQuesion := '9. ��������� �������';
  FQuestions[28].Prompt := '����������� - ';
  FQuestions[28].Choices[0] := '�������������';
  FQuestions[28].Choices[1] := '����������';
  FQuestions[28].Choices[2] := '������';
  FQuestions[28].Choices[3] := '��������';
  FQuestions[28].Choices[4] := '���������';
  FQuestions[28].CorrectAnswer := 2;

  FQuestions[29].Module := '������ 2. ������������';
  FQuestions[29].MainQuesion := '10. ��������� �������';
  FQuestions[29].Prompt := '���������� - ';
  FQuestions[29].Choices[0] := '��������';
  FQuestions[29].Choices[1] := '���������';
  FQuestions[29].Choices[2] := '���������������';
  FQuestions[29].Choices[3] := '������������';
  FQuestions[29].Choices[4] := '����������';
  FQuestions[29].CorrectAnswer := 4;

  FQuestions[30].Module := '������ 2. ������������';
  FQuestions[30].MainQuesion := '11. ��������� �������';
  FQuestions[30].Prompt := '���������� - ';
  FQuestions[30].Choices[0] := '����������';
  FQuestions[30].Choices[1] := '������������';
  FQuestions[30].Choices[2] := '�����������';
  FQuestions[30].Choices[3] := '������';
  FQuestions[30].Choices[4] := '����';
  FQuestions[30].CorrectAnswer := 1;

  FQuestions[31].Module := '������ 2. ������������';
  FQuestions[31].MainQuesion := '12. ��������� �������';
  FQuestions[31].Prompt := '��������������� - ';
  FQuestions[31].Choices[0] := '�����������';
  FQuestions[31].Choices[1] := '��������������';
  FQuestions[31].Choices[2] := '���������';
  FQuestions[31].Choices[3] := '��������';
  FQuestions[31].Choices[4] := '��������';
  FQuestions[31].CorrectAnswer := 2;

  FQuestions[32].Module := '������ 2. ������������';
  FQuestions[32].MainQuesion := '13. ��������� �������';
  FQuestions[32].Prompt := '������� - ';
  FQuestions[32].Choices[0] := '�������';
  FQuestions[32].Choices[1] := '������';
  FQuestions[32].Choices[2] := '�����';
  FQuestions[32].Choices[3] := '��������';
  FQuestions[32].Choices[4] := '�������';
  FQuestions[32].CorrectAnswer := 3;

  FQuestions[33].Module := '������ 2. ������������';
  FQuestions[33].MainQuesion := '14. ��������� �������';
  FQuestions[33].Prompt := '����������� - ';
  FQuestions[33].Choices[0] := '�����������';
  FQuestions[33].Choices[1] := '�����������';
  FQuestions[33].Choices[2] := '�����������';
  FQuestions[33].Choices[3] := '������';
  FQuestions[33].Choices[4] := '�����������������';
  FQuestions[33].CorrectAnswer := 2;

  FQuestions[34].Module := '������ 2. ������������';
  FQuestions[34].MainQuesion := '15. ��������� �������';
  FQuestions[34].Prompt := '������ - ';
  FQuestions[34].Choices[0] := '�����';
  FQuestions[34].Choices[1] := '��������';
  FQuestions[34].Choices[2] := '�����������';
  FQuestions[34].Choices[3] := '�����';
  FQuestions[34].Choices[4] := '�����';
  FQuestions[34].CorrectAnswer := 1;

  FQuestions[35].Module := '������ 2. ������������';
  FQuestions[35].MainQuesion := '16. ��������� �������';
  FQuestions[35].Prompt := '�������������� - ';
  FQuestions[35].Choices[0] := '��������';
  FQuestions[35].Choices[1] := '���������';
  FQuestions[35].Choices[2] := '�������';
  FQuestions[35].Choices[3] := '������������';
  FQuestions[35].Choices[4] := '������';
  FQuestions[35].CorrectAnswer := 4;

  FQuestions[36].Module := '������ 2. ������������';
  FQuestions[36].MainQuesion := '17. ��������� �������';
  FQuestions[36].Prompt := '����������� - ';
  FQuestions[36].Choices[0] := '��������';
  FQuestions[36].Choices[1] := '��������';
  FQuestions[36].Choices[2] := '���������';
  FQuestions[36].Choices[3] := '��������';
  FQuestions[36].Choices[4] := '�����������';
  FQuestions[36].CorrectAnswer := 1;

  FQuestions[37].Module := '������ 2. ������������';
  FQuestions[37].MainQuesion := '18. ��������� �������';
  FQuestions[37].Prompt := '���������� - ';
  FQuestions[37].Choices[0] := '���������';
  FQuestions[37].Choices[1] := '������';
  FQuestions[37].Choices[2] := '�������������';
  FQuestions[37].Choices[3] := '������������';
  FQuestions[37].Choices[4] := '������';
  FQuestions[37].CorrectAnswer := 3;

  FQuestions[38].Module := '������ 2. ������������';
  FQuestions[38].MainQuesion := '19. ��������� �������';
  FQuestions[38].Prompt := '������������ - ';
  FQuestions[38].Choices[0] := '������������';
  FQuestions[38].Choices[1] := '������������';
  FQuestions[38].Choices[2] := '������';
  FQuestions[38].Choices[3] := '�������';
  FQuestions[38].Choices[4] := '�����������';
  FQuestions[38].CorrectAnswer := 3;

  FQuestions[39].Module := '������ 2. ������������';
  FQuestions[39].MainQuesion := '20. ��������� �������';
  FQuestions[39].Prompt := '�������� - ';
  FQuestions[39].Choices[0] := '�������';
  FQuestions[39].Choices[1] := '�������������';
  FQuestions[39].Choices[2] := '���������';
  FQuestions[39].Choices[3] := '������������';
  FQuestions[39].Choices[4] := '���������';
  FQuestions[39].CorrectAnswer := 3;

  FQuestions[40].Module := '������ 3. ��������';
  FQuestions[40].MainQuesion := '1. ����� ������ � ������ ������� ���������� �����.';
  FQuestions[40].Prompt := '������: �������� = ���������������: ?';
  FQuestions[40].Choices[0] := '��������';
  FQuestions[40].Choices[1] := '������������';
  FQuestions[40].Choices[2] := '�����������';
  FQuestions[40].Choices[3] := '��������';
  FQuestions[40].Choices[4] := '������';
  FQuestions[40].CorrectAnswer := 4;

  FQuestions[41].Module := '������ 3. ��������';
  FQuestions[41].MainQuesion := '2. ����� ������ � ������ ������� ���������� �����.';
  FQuestions[41].Prompt := '�������: ������ = ��������: ?';
  FQuestions[41].Choices[0] := '�������';
  FQuestions[41].Choices[1] := '�����';
  FQuestions[41].Choices[2] := '��������';
  FQuestions[41].Choices[3] := '��������������';
  FQuestions[41].Choices[4] := '��������';
  FQuestions[41].CorrectAnswer := 2;

  FQuestions[42].Module := '������ 3. ��������';
  FQuestions[42].MainQuesion := '3. ����� ������ � ������ ������� ���������� �����.';
  FQuestions[42].Prompt := '������: �������������� = �������������: ?';
  FQuestions[42].Choices[0] := '����������������';
  FQuestions[42].Choices[1] := '����������� ���';
  FQuestions[42].Choices[2] := '����������';
  FQuestions[42].Choices[3] := '������';
  FQuestions[42].Choices[4] := '��������� �������';
  FQuestions[42].CorrectAnswer := 5;

  FQuestions[43].Module := '������ 3. ��������';
  FQuestions[43].MainQuesion := '4. ����� ������ � ������ ������� ���������� �����.';
  FQuestions[43].Prompt := '���������: ����� = ���������: ?';
  FQuestions[43].Choices[0] := '��������';
  FQuestions[43].Choices[1] := '��������';
  FQuestions[43].Choices[2] := '������������';
  FQuestions[43].Choices[3] := '���������';
  FQuestions[43].Choices[4] := '�����';
  FQuestions[43].CorrectAnswer := 3;

  FQuestions[44].Module := '������ 3. ��������';
  FQuestions[44].MainQuesion := '5. ����� ������ � ������ ������� ���������� �����.';
  FQuestions[44].Prompt := '�������������: ��������� = ����: ?';
  FQuestions[44].Choices[0] := '����������������� �����';
  FQuestions[44].Choices[1] := '���������';
  FQuestions[44].Choices[2] := '�������������';
  FQuestions[44].Choices[3] := '������� �������';
  FQuestions[44].Choices[4] := '�������';
  FQuestions[44].CorrectAnswer := 4;

  FQuestions[45].Module := '������ 3. ��������';
  FQuestions[45].MainQuesion := '6. ����� ������ � ������ ������� ���������� �����.';
  FQuestions[45].Prompt := '����������: ����� = �����: ?';
  FQuestions[45].Choices[0] := '�����';
  FQuestions[45].Choices[1] := '������';
  FQuestions[45].Choices[2] := '��������';
  FQuestions[45].Choices[3] := '����';
  FQuestions[45].Choices[4] := '���';
  FQuestions[45].CorrectAnswer := 4;

  FQuestions[46].Module := '������ 3. ��������';
  FQuestions[46].MainQuesion := '7. ����� ������ � ������ ������� ���������� �����.';
  FQuestions[46].Prompt := '�������������: ������ = �������: ?';
  FQuestions[46].Choices[0] := '�����';
  FQuestions[46].Choices[1] := '��������';
  FQuestions[46].Choices[2] := '�������';
  FQuestions[46].Choices[3] := '�����������';
  FQuestions[46].Choices[4] := '�����';
  FQuestions[46].CorrectAnswer := 5;

  FQuestions[47].Module := '������ 3. ��������';
  FQuestions[47].MainQuesion := '8. ����� ������ � ������ ������� ���������� �����.';
  FQuestions[47].Prompt := '����: ������ - ������: ?';
  FQuestions[47].Choices[0] := '������';
  FQuestions[47].Choices[1] := '�����������';
  FQuestions[47].Choices[2] := '�������';
  FQuestions[47].Choices[3] := '�������������� ������';
  FQuestions[47].Choices[4] := '��������������';
  FQuestions[47].CorrectAnswer := 2;

  FQuestions[48].Module := '������ 3. ��������';
  FQuestions[48].MainQuesion := '9. ����� ������ � ������ ������� ���������� �����.';
  FQuestions[48].Prompt := '��������: ������� = ������: ?';
  FQuestions[48].Choices[0] := '����';
  FQuestions[48].Choices[1] := '���������';
  FQuestions[48].Choices[2] := '�����';
  FQuestions[48].Choices[3] := '�������';
  FQuestions[48].Choices[4] := '�������';
  FQuestions[48].CorrectAnswer := 1;

  FQuestions[49].Module := '������ 3. ��������';
  FQuestions[49].MainQuesion := '10. ����� ������ � ������ ������� ���������� �����.';
  FQuestions[49].Prompt := '���������: �������� = ���������� �����������: ?';
  FQuestions[49].Choices[0] := '���������� ���������';
  FQuestions[49].Choices[1] := '������ �������';
  FQuestions[49].Choices[2] := '�����������';
  FQuestions[49].Choices[3] := '������� �������������';
  FQuestions[49].Choices[4] := '���������� �����';
  FQuestions[49].CorrectAnswer := 2;

  FQuestions[50].Module := '������ 3. ��������';
  FQuestions[50].MainQuesion := '11. ����� ������ � ������ ������� ���������� �����.';
  FQuestions[50].Prompt := '�����: ����� = ������: ?';
  FQuestions[50].Choices[0] := '���������';
  FQuestions[50].Choices[1] := '��������';
  FQuestions[50].Choices[2] := '�����������';
  FQuestions[50].Choices[3] := '��������';
  FQuestions[50].Choices[4] := '������';
  FQuestions[50].CorrectAnswer := 5;

  FQuestions[51].Module := '������ 3. ��������';
  FQuestions[51].MainQuesion := '12. ����� ������ � ������ ������� ���������� �����.';
  FQuestions[51].Prompt := '������: ���� = ������� ���������: ?';
  FQuestions[51].Choices[0] := '������';
  FQuestions[51].Choices[1] := '��������';
  FQuestions[51].Choices[2] := '���� �������';
  FQuestions[51].Choices[3] := '���';
  FQuestions[51].Choices[4] := '�����';
  FQuestions[51].CorrectAnswer := 3;

  FQuestions[52].Module := '������ 3. ��������';
  FQuestions[52].MainQuesion := '13. ����� ������ � ������ ������� ���������� �����.';
  FQuestions[52].Prompt := '����������-�������� �����: ����������������� ����� = ����������������� �����: ?';
  FQuestions[52].Choices[0] := '���������';
  FQuestions[52].Choices[1] := '����������';
  FQuestions[52].Choices[2] := '�������������';
  FQuestions[52].Choices[3] := '�����������';
  FQuestions[52].Choices[4] := '���������';
  FQuestions[52].CorrectAnswer := 5;

  FQuestions[53].Module := '������ 3. ��������';
  FQuestions[53].MainQuesion := '14. ����� ������ � ������ ������� ���������� �����.';
  FQuestions[53].Prompt := '�����: ����� = �������������: ?';
  FQuestions[53].Choices[0] := '�����';
  FQuestions[53].Choices[1] := '�����';
  FQuestions[53].Choices[2] := '������';
  FQuestions[53].Choices[3] := '����';
  FQuestions[53].Choices[4] := '����';
  FQuestions[53].CorrectAnswer := 3;

  FQuestions[54].Module := '������ 3. ��������';
  FQuestions[54].MainQuesion := '15. ����� ������ � ������ ������� ���������� �����.';
  FQuestions[54].Prompt := '�����: ����������������� = ��������: ?';
  FQuestions[54].Choices[0] := '���';
  FQuestions[54].Choices[1] := '��������';
  FQuestions[54].Choices[2] := '������';
  FQuestions[54].Choices[3] := '��������';
  FQuestions[54].Choices[4] := '�������';
  FQuestions[54].CorrectAnswer := 5;

  FQuestions[55].Module := '������ 3. ��������';
  FQuestions[55].MainQuesion := '16. ����� ������ � ������ ������� ���������� �����.';
  FQuestions[55].Prompt := '������: ����������� = ��������� ��������: ?';
  FQuestions[55].Choices[0] := '��������';
  FQuestions[55].Choices[1] := '��������';
  FQuestions[55].Choices[2] := '�����������';
  FQuestions[55].Choices[3] := '����';
  FQuestions[55].Choices[4] := '��������';
  FQuestions[55].CorrectAnswer := 1;

  FQuestions[56].Module := '������ 3. ��������';
  FQuestions[56].MainQuesion := '17. ����� ������ � ������ ������� ���������� �����.';
  FQuestions[56].Prompt := '����: ������ = ����������: ?';
  FQuestions[56].Choices[0] := '������������';
  FQuestions[56].Choices[1] := '�������';
  FQuestions[56].Choices[2] := '����������';
  FQuestions[56].Choices[3] := '�����';
  FQuestions[56].Choices[4] := '�������';
  FQuestions[56].CorrectAnswer := 4;

  FQuestions[57].Module := '������ 3. ��������';
  FQuestions[57].MainQuesion := '18. ����� ������ � ������ ������� ���������� �����.';
  FQuestions[57].Prompt := '��������� ������������ ��������: ������ = ����������: ?';
  FQuestions[57].Choices[0] := '����� ������';
  FQuestions[57].Choices[1] := '������';
  FQuestions[57].Choices[2] := '������';
  FQuestions[57].Choices[3] := '���������';
  FQuestions[57].Choices[4] := '�����������';
  FQuestions[57].CorrectAnswer := 1;

  FQuestions[58].Module := '������ 3. ��������';
  FQuestions[58].MainQuesion := '19. ����� ������ � ������ ������� ���������� �����.';
  FQuestions[58].Prompt := '�������������: ��������� = ���: ?';
  FQuestions[58].Choices[0] := '������������';
  FQuestions[58].Choices[1] := '�����';
  FQuestions[58].Choices[2] := '������';
  FQuestions[58].Choices[3] := '�����������';
  FQuestions[58].Choices[4] := '�������';
  FQuestions[58].CorrectAnswer := 1;

  FQuestions[59].Module := '������ 3. ��������';
  FQuestions[59].MainQuesion := '20. ����� ������ � ������ ������� ���������� �����.';
  FQuestions[59].Prompt := '�����: ������ = ������� �������������: ?';
  FQuestions[59].Choices[0] := '�������';
  FQuestions[59].Choices[1] := '����������';
  FQuestions[59].Choices[2] := '�����������';
  FQuestions[59].Choices[3] := '����';
  FQuestions[59].Choices[4] := '���������� ���������';
  FQuestions[59].CorrectAnswer := 3;

  FQuestions[60].Module := '������ 3. ��������';
  FQuestions[60].MainQuesion := '21. ����� ������ � ������ ������� ���������� �����.';
  FQuestions[60].Prompt := '������������: ���������� = ������: ?';
  FQuestions[60].Choices[0] := '����';
  FQuestions[60].Choices[1] := '��������';
  FQuestions[60].Choices[2] := '���������';
  FQuestions[60].Choices[3] := '����� ����';
  FQuestions[60].Choices[4] := '��������';
  FQuestions[60].CorrectAnswer := 2;

  FQuestions[61].Module := '������ 3. ��������';
  FQuestions[61].MainQuesion := '22. ����� ������ � ������ ������� ���������� �����.';
  FQuestions[61].Prompt := '�����: �� = ������: ?';
  FQuestions[61].Choices[0] := '�������';
  FQuestions[61].Choices[1] := '�����';
  FQuestions[61].Choices[2] := '�����';
  FQuestions[61].Choices[3] := '������';
  FQuestions[61].Choices[4] := '������';
  FQuestions[61].CorrectAnswer := 4;

  FQuestions[62].Module := '������ 3. ��������';
  FQuestions[62].MainQuesion := '23. ����� ������ � ������ ������� ���������� �����.';
  FQuestions[62].Prompt := ' �������: ������ = ����������: ?';
  FQuestions[62].Choices[0] := '����';
  FQuestions[62].Choices[1] := '�������';
  FQuestions[62].Choices[2] := '�������';
  FQuestions[62].Choices[3] := '�����';
  FQuestions[62].Choices[4] := '����';
  FQuestions[62].CorrectAnswer := 1;

  FQuestions[63].Module := '������ 3. ��������';
  FQuestions[63].MainQuesion := '24. ����� ������ � ������ ������� ���������� �����.';
  FQuestions[63].Prompt := '��������: ����� = �����: ?';
  FQuestions[63].Choices[0] := '������';
  FQuestions[63].Choices[1] := '���������� �����';
  FQuestions[63].Choices[2] := '�������';
  FQuestions[63].Choices[3] := '����';
  FQuestions[63].Choices[4] := '�����';
  FQuestions[63].CorrectAnswer := 3;

  FQuestions[64].Module := '������ 3. ��������';
  FQuestions[64].MainQuesion := '25. ����� ������ � ������ ������� ���������� �����.';
  FQuestions[64].Prompt := ' �������: �������� = ���������: ?';
  FQuestions[64].Choices[0] := '���������';
  FQuestions[64].Choices[1] := '�����������';
  FQuestions[64].Choices[2] := '��������';
  FQuestions[64].Choices[3] := '��������';
  FQuestions[64].Choices[4] := '���������';
  FQuestions[64].CorrectAnswer := 2;

  FQuestions[65].Module := '������ 4. �������������';
  FQuestions[65].MainQuesion := '1. ������� ������ ����� �� ������������.';
  FQuestions[65].Prompt := '';
  FQuestions[65].Choices[0] := '���������';
  FQuestions[65].Choices[1] := '�������';
  FQuestions[65].Choices[2] := '�������';
  FQuestions[65].Choices[3] := '���������';
  FQuestions[65].Choices[4] := '������';
  FQuestions[65].CorrectAnswer := 2;

  FQuestions[66].Module := '������ 4. �������������';
  FQuestions[66].MainQuesion := '2. ������� ������ ����� �� ������������.';
  FQuestions[66].Prompt := '';
  FQuestions[66].Choices[0] := '������';
  FQuestions[66].Choices[1] := '����';
  FQuestions[66].Choices[2] := '�������������';
  FQuestions[66].Choices[3] := '�������';
  FQuestions[66].Choices[4] := '�����������';
  FQuestions[66].CorrectAnswer := 1;

  FQuestions[67].Module := '������ 4. �������������';
  FQuestions[67].MainQuesion := '3. ������� ������ ����� �� ������������.';
  FQuestions[67].Prompt := '';
  FQuestions[67].Choices[0] := '��������';
  FQuestions[67].Choices[1] := '������';
  FQuestions[67].Choices[2] := '���������';
  FQuestions[67].Choices[3] := '������';
  FQuestions[67].Choices[4] := '������';
  FQuestions[67].CorrectAnswer := 5;

  FQuestions[68].Module := '������ 4. �������������';
  FQuestions[68].MainQuesion := '4. ������� ������ ����� �� ������������.';
  FQuestions[68].Prompt := '';
  FQuestions[68].Choices[0] := '������������';
  FQuestions[68].Choices[1] := '���';
  FQuestions[68].Choices[2] := '����������';
  FQuestions[68].Choices[3] := '�������';
  FQuestions[68].Choices[4] := '����������';
  FQuestions[68].CorrectAnswer := 1;

  FQuestions[69].Module := '������ 4. �������������';
  FQuestions[69].MainQuesion := '5. ������� ������ ����� �� ������������.';
  FQuestions[69].Prompt := '';
  FQuestions[69].Choices[0] := '���������';
  FQuestions[69].Choices[1] := '�������������';
  FQuestions[69].Choices[2] := '�����';
  FQuestions[69].Choices[3] := '�������';
  FQuestions[69].Choices[4] := '�������';
  FQuestions[69].CorrectAnswer := 1;

  FQuestions[70].Module := '������ 4. �������������';
  FQuestions[70].MainQuesion := '6. ������� ������ ����� �� ������������.';
  FQuestions[70].Prompt := '';
  FQuestions[70].Choices[0] := '����������';
  FQuestions[70].Choices[1] := '�������';
  FQuestions[70].Choices[2] := '����';
  FQuestions[70].Choices[3] := '�������������';
  FQuestions[70].Choices[4] := '�����������';
  FQuestions[70].CorrectAnswer := 1;

  FQuestions[71].Module := '������ 4. �������������';
  FQuestions[71].MainQuesion := '7. ������� ������ ����� �� ������������.';
  FQuestions[71].Prompt := '';
  FQuestions[71].Choices[0] := '�����';
  FQuestions[71].Choices[1] := '����';
  FQuestions[71].Choices[2] := '������';
  FQuestions[71].Choices[3] := '����';
  FQuestions[71].Choices[4] := '����';
  FQuestions[71].CorrectAnswer := 3;

  FQuestions[72].Module := '������ 4. �������������';
  FQuestions[72].MainQuesion := '8. ������� ������ ����� �� ������������.';
  FQuestions[72].Prompt := '';
  FQuestions[72].Choices[0] := '�����������';
  FQuestions[72].Choices[1] := '�������';
  FQuestions[72].Choices[2] := '�����';
  FQuestions[72].Choices[3] := '�������';
  FQuestions[72].Choices[4] := '����';
  FQuestions[72].CorrectAnswer := 3;

  FQuestions[73].Module := '������ 4. �������������';
  FQuestions[73].MainQuesion := '9. ������� ������ ����� �� ������������.';
  FQuestions[73].Prompt := '';
  FQuestions[73].Choices[0] := '������';
  FQuestions[73].Choices[1] := '�������';
  FQuestions[73].Choices[2] := '�����';
  FQuestions[73].Choices[3] := '������';
  FQuestions[73].Choices[4] := '�����';
  FQuestions[73].CorrectAnswer := 5;

  FQuestions[74].Module := '������ 4. �������������';
  FQuestions[74].MainQuesion := '10. ������� ������ ����� �� ������������.';
  FQuestions[74].Prompt := '';
  FQuestions[74].Choices[0] := '�����';
  FQuestions[74].Choices[1] := '�����';
  FQuestions[74].Choices[2] := '�������';
  FQuestions[74].Choices[3] := '�����';
  FQuestions[74].Choices[4] := '�������';
  FQuestions[74].CorrectAnswer := 4;

  FQuestions[75].Module := '������ 4. �������������';
  FQuestions[75].MainQuesion := '11. ������� ������ ����� �� ������������.';
  FQuestions[75].Prompt := '';
  FQuestions[75].Choices[0] := '���������';
  FQuestions[75].Choices[1] := '�����';
  FQuestions[75].Choices[2] := '��������';
  FQuestions[75].Choices[3] := '�������';
  FQuestions[75].Choices[4] := '�����';
  FQuestions[75].CorrectAnswer := 2;

  FQuestions[76].Module := '������ 4. �������������';
  FQuestions[76].MainQuesion := '12. ������� ������ ����� �� ������������.';
  FQuestions[76].Prompt := '';
  FQuestions[76].Choices[0] := '����������';
  FQuestions[76].Choices[1] := '�����';
  FQuestions[76].Choices[2] := '��������';
  FQuestions[76].Choices[3] := '���������';
  FQuestions[76].Choices[4] := '�������������� �������';
  FQuestions[76].CorrectAnswer := 2;

  FQuestions[77].Module := '������ 4. �������������';
  FQuestions[77].MainQuesion := '13. ������� ������ ����� �� ������������.';
  FQuestions[77].Prompt := '';
  FQuestions[77].Choices[0] := '�����';
  FQuestions[77].Choices[1] := '����';
  FQuestions[77].Choices[2] := '�����';
  FQuestions[77].Choices[3] := '�����';
  FQuestions[77].Choices[4] := '��������';
  FQuestions[77].CorrectAnswer := 2;

  FQuestions[78].Module := '������ 4. �������������';
  FQuestions[78].MainQuesion := '14. ������� ������ ����� �� ������������.';
  FQuestions[78].Prompt := '';
  FQuestions[78].Choices[0] := '���������� ���';
  FQuestions[78].Choices[1] := '����';
  FQuestions[78].Choices[2] := '����';
  FQuestions[78].Choices[3] := '�������';
  FQuestions[78].Choices[4] := '���������';
  FQuestions[78].CorrectAnswer := 4;

  FQuestions[79].Module := '������ 4. �������������';
  FQuestions[79].MainQuesion := '15. ������� ������ ����� �� ������������.';
  FQuestions[79].Prompt := '';
  FQuestions[79].Choices[0] := '������';
  FQuestions[79].Choices[1] := '�����������';
  FQuestions[79].Choices[2] := '����������';
  FQuestions[79].Choices[3] := '��������';
  FQuestions[79].Choices[4] := '������';
  FQuestions[79].CorrectAnswer := 3;

  FQuestions[80].Module := '������ 4. �������������';
  FQuestions[80].MainQuesion := '16. ������� ������ ����� �� ������������.';
  FQuestions[80].Prompt := '';
  FQuestions[80].Choices[0] := '��������';
  FQuestions[80].Choices[1] := '���������';
  FQuestions[80].Choices[2] := '����';
  FQuestions[80].Choices[3] := '���';
  FQuestions[80].Choices[4] := '���������';
  FQuestions[80].CorrectAnswer := 2;

  FQuestions[81].Module := '������ 4. �������������';
  FQuestions[81].MainQuesion := '17. ������� ������ ����� �� ������������.';
  FQuestions[81].Prompt := '';
  FQuestions[81].Choices[0] := '����';
  FQuestions[81].Choices[1] := '������';
  FQuestions[81].Choices[2] := '�������';
  FQuestions[81].Choices[3] := '��������������';
  FQuestions[81].Choices[4] := '��������';
  FQuestions[81].CorrectAnswer := 3;

  FQuestions[82].Module := '������ 4. �������������';
  FQuestions[82].MainQuesion := '18. ������� ������ ����� �� ������������.';
  FQuestions[82].Prompt := '';
  FQuestions[82].Choices[0] := '�����';
  FQuestions[82].Choices[1] := '�����';
  FQuestions[82].Choices[2] := '�������';
  FQuestions[82].Choices[3] := '����������� ���������';
  FQuestions[82].Choices[4] := '�����';
  FQuestions[82].CorrectAnswer := 4;

  FQuestions[83].Module := '������ 4. �������������';
  FQuestions[83].MainQuesion := '19. ������� ������ ����� �� ������������.';
  FQuestions[83].Prompt := '';
  FQuestions[83].Choices[0] := '��������';
  FQuestions[83].Choices[1] := '���������';
  FQuestions[83].Choices[2] := '��������������';
  FQuestions[83].Choices[3] := '������';
  FQuestions[83].Choices[4] := '�����������';
  FQuestions[83].CorrectAnswer := 4;

  FQuestions[84].Module := '������ 4. �������������';
  FQuestions[84].MainQuesion := '20. ������� ������ ����� �� ������������.';
  FQuestions[84].Prompt := '';
  FQuestions[84].Choices[0] := '�����';
  FQuestions[84].Choices[1] := '����';
  FQuestions[84].Choices[2] := '������';
  FQuestions[84].Choices[3] := '�������';
  FQuestions[84].Choices[4] := '��������';
  FQuestions[84].CorrectAnswer := 3;

  FCurrentQuestionIndex := 0;
end;


constructor TPsychologicalTest2.Create;
  begin
  FQuestions2[0].Module := '������ 5. ���������';
  FQuestions2[0].MainQuesion := '1. ��� ������������ ��� �����. ����� ����������, ��� ����� ���� ������.';
  FQuestions2[0].Prompt := '���� - ������';
  FQuestions2[0].Dop := '';
  FQuestions2[0].CorrectAnswer2[0] := '����� �����';
  FQuestions2[0].CorrectAnswer2[1] := '��������';
  FQuestions2[0].CorrectAnswer2[2] := '����������';

  FQuestions2[1].Module := '������ 5. ���������';
  FQuestions2[1].MainQuesion := '2. ��� ������������ ��� �����. ����� ����������, ��� ����� ���� ������.';
  FQuestions2[1].Prompt := '�������� - ��������';
  FQuestions2[1].Dop := '';
  FQuestions2[1].CorrectAnswer2[0] := '��������';
  FQuestions2[1].CorrectAnswer2[1] := '�����';
  FQuestions2[1].CorrectAnswer2[2] := '�������';

  FQuestions2[2].Module := '������ 5. ���������';
  FQuestions2[2].MainQuesion := '3. ��� ������������ ��� �����. ����� ����������, ��� ����� ���� ������.';
  FQuestions2[2].Prompt := '��������� - ����������';
  FQuestions2[2].Dop := '';
  FQuestions2[2].CorrectAnswer2[0] := '������������ �����';
  FQuestions2[2].CorrectAnswer2[1] := '��������';
  FQuestions2[2].CorrectAnswer2[2] := '������� ��������';

  FQuestions2[3].Module := '������ 5. ���������';
  FQuestions2[3].MainQuesion := '4. ��� ������������ ��� �����. ����� ����������, ��� ����� ���� ������.';
  FQuestions2[3].Prompt := '������ - ������';
  FQuestions2[3].Dop := '';
  FQuestions2[3].CorrectAnswer2[0] := '������ �������� ����������';
  FQuestions2[3].CorrectAnswer2[1] := '����������';
  FQuestions2[3].CorrectAnswer2[2] := '���������';

  FQuestions2[4].Module := '������ 5. ���������';
  FQuestions2[4].MainQuesion := '5. ��� ������������ ��� �����. ����� ����������, ��� ����� ���� ������.';
  FQuestions2[4].Prompt := '��� - ��������';
  FQuestions2[4].Dop := '';
  FQuestions2[4].CorrectAnswer2[0] := '��������� ��������';
  FQuestions2[4].CorrectAnswer2[1] := '��������';
  FQuestions2[4].CorrectAnswer2[2] := '��������� ����';

  FQuestions2[5].Module := '������ 5. ���������';
  FQuestions2[5].MainQuesion := '6. ��� ������������ ��� �����. ����� ����������, ��� ����� ���� ������.';
  FQuestions2[5].Prompt := '������ - �������';
  FQuestions2[5].Dop := '';
  FQuestions2[5].CorrectAnswer2[0] := '������ ��������������';
  FQuestions2[5].CorrectAnswer2[1] := '���������� ������';
  FQuestions2[5].CorrectAnswer2[2] := '������ ��������';

  FQuestions2[6].Module := '������ 5. ���������';
  FQuestions2[6].MainQuesion := '7. ��� ������������ ��� �����. ����� ����������, ��� ����� ���� ������.';
  FQuestions2[6].Prompt := '���������� - �������';
  FQuestions2[6].Dop := '';
  FQuestions2[6].CorrectAnswer2[0] := '�������';
  FQuestions2[6].CorrectAnswer2[1] := '������';
  FQuestions2[6].CorrectAnswer2[2] := '����� ����������';

  FQuestions2[7].Module := '������ 5. ���������';
  FQuestions2[7].MainQuesion := '8. ��� ������������ ��� �����. ����� ����������, ��� ����� ���� ������.';
  FQuestions2[7].Prompt := '���� - ��������';
  FQuestions2[7].Dop := '';
  FQuestions2[7].CorrectAnswer2[0] := '���������� ���������';
  FQuestions2[7].CorrectAnswer2[1] := '��������� ��������';
  FQuestions2[7].CorrectAnswer2[2] := '��������';

  FQuestions2[8].Module := '������ 5. ���������';
  FQuestions2[8].MainQuesion := '9. ��� ������������ ��� �����. ����� ����������, ��� ����� ���� ������.';
  FQuestions2[8].Prompt := '���� - �����';
  FQuestions2[8].Dop := '';
  FQuestions2[8].CorrectAnswer2[0] := '����������� ��������';
  FQuestions2[8].CorrectAnswer2[1] := '�������������� �������';
  FQuestions2[8].CorrectAnswer2[2] := '������������ �������� ��� ������';

  FQuestions2[9].Module := '������ 5. ���������';
  FQuestions2[9].MainQuesion := '10. ��� ������������ ��� �����. ����� ����������, ��� ����� ���� ������.';
  FQuestions2[9].Prompt := '����� - ���������';
  FQuestions2[9].Dop := '';
  FQuestions2[9].CorrectAnswer2[0] := '���������� �������';
  FQuestions2[9].CorrectAnswer2[1] := '������������';
  FQuestions2[9].CorrectAnswer2[2] := '��������';

  FQuestions2[10].Module := '������ 5. ���������';
  FQuestions2[10].MainQuesion := '11. ��� ������������ ��� �����. ����� ����������, ��� ����� ���� ������.';
  FQuestions2[10].Prompt := '��������� - ��������';
  FQuestions2[10].Dop := '';
  FQuestions2[10].CorrectAnswer2[0] := '�������� ���������';
  FQuestions2[10].CorrectAnswer2[1] := '����������� ����������';
  FQuestions2[10].CorrectAnswer2[2] := '�����������';

  FQuestions2[11].Module := '������ 5. ���������';
  FQuestions2[11].MainQuesion := '12. ��� ������������ ��� �����. ����� ����������, ��� ����� ���� ������.';
  FQuestions2[11].Prompt := '����� - �����';
  FQuestions2[11].Dop := '';
  FQuestions2[11].CorrectAnswer2[0] := '������� ���������';
  FQuestions2[11].CorrectAnswer2[1] := '������������� ��������������';
  FQuestions2[11].CorrectAnswer2[2] := '���������';

  FQuestions2[12].Module := '������ 5. ���������';
  FQuestions2[12].MainQuesion := '13. ��� ������������ ��� �����. ����� ����������, ��� ����� ���� ������.';
  FQuestions2[12].Prompt := '����� - �������';
  FQuestions2[12].Dop := '';
  FQuestions2[12].CorrectAnswer2[0] := '������������� ���������� ����������';
  FQuestions2[12].CorrectAnswer2[1] := '�������� �������� ����';
  FQuestions2[12].CorrectAnswer2[2] := '����';

  FQuestions2[13].Module := '������ 5. ���������';
  FQuestions2[13].MainQuesion := '14. ��� ������������ ��� �����. ����� ����������, ��� ����� ���� ������.';
  FQuestions2[13].Prompt := '������� - �����';
  FQuestions2[13].Dop := '';
  FQuestions2[13].CorrectAnswer2[0] := '������������ ���������';
  FQuestions2[13].CorrectAnswer2[1] := '�����������';
  FQuestions2[13].CorrectAnswer2[2] := '�������';

  FQuestions2[14].Module := '������ 5. ���������';
  FQuestions2[14].MainQuesion := '15. ��� ������������ ��� �����. ����� ����������, ��� ����� ���� ������.';
  FQuestions2[14].Prompt := '���������� - ������';
  FQuestions2[14].Dop := '';
  FQuestions2[14].CorrectAnswer2[0] := '���������';
  FQuestions2[14].CorrectAnswer2[1] := '��������������';
  FQuestions2[14].CorrectAnswer2[2] := '��������';

  FQuestions2[15].Module := '������ 5. ���������';
  FQuestions2[15].MainQuesion := '16. ��� ������������ ��� �����. ����� ����������, ��� ����� ���� ������.';
  FQuestions2[15].Prompt := '����� - ������������';
  FQuestions2[15].Dop := '';
  FQuestions2[15].CorrectAnswer2[0] := '�������������� ��������';
  FQuestions2[15].CorrectAnswer2[1] := '��������';
  FQuestions2[15].CorrectAnswer2[2] := '����������';

  FQuestions2[16].Module := '������ 5. ���������';
  FQuestions2[16].MainQuesion := '17. ��� ������������ ��� �����. ����� ����������, ��� ����� ���� ������.';
  FQuestions2[16].Prompt := '����������� - ��������';
  FQuestions2[16].Dop := '';
  FQuestions2[16].CorrectAnswer2[0] := '�������� �����';
  FQuestions2[16].CorrectAnswer2[1] := '��������';
  FQuestions2[16].CorrectAnswer2[2] := '�����';

  FQuestions2[17].Module := '������ 5. ���������';
  FQuestions2[17].MainQuesion := '18. ��� ������������ ��� �����. ����� ����������, ��� ����� ���� ������.';
  FQuestions2[17].Prompt := '����������-�������';
  FQuestions2[17].Dop := '';
  FQuestions2[17].CorrectAnswer2[0] := '�����';
  FQuestions2[17].CorrectAnswer2[1] := '�������';
  FQuestions2[17].CorrectAnswer2[2] := '���������';

  FQuestions2[18].Module := '������ 5. ���������';
  FQuestions2[18].MainQuesion := '19. ��� ������������ ��� �����. ����� ����������, ��� ����� ���� ������.';
  FQuestions2[18].Prompt := '������-������';
  FQuestions2[18].Dop := '';
  FQuestions2[18].CorrectAnswer2[0] := '������� �������';
  FQuestions2[18].CorrectAnswer2[1] := '������';
  FQuestions2[18].CorrectAnswer2[2] := '����������';

  FQuestions2[19].Module := '������ 6. �������� ����';
  FQuestions2[19].MainQuesion := '1. ���� ������ ������� � ���, ����� ���������� �����,';
  FQuestions2[19].Prompt := '6 9 12 15 18 21...';
  FQuestions2[19].Dop := ' ������� ���� �� ������������ ����, � �������� ���.';
  FQuestions2[19].CorrectAnswer2[0] := '24';
  FQuestions2[19].CorrectAnswer2[1] := 'pass';
  FQuestions2[19].CorrectAnswer2[2] := 'pass';

  FQuestions2[20].Module := '������ 6. �������� ����';
  FQuestions2[20].MainQuesion := '2. ���� ������ ������� � ���, ����� ���������� �����,';
  FQuestions2[20].Prompt := '9 1 7 1 5 1 ...';
  FQuestions2[20].Dop := ' ������� ���� �� ������������ ����, � �������� ���.';
  FQuestions2[20].CorrectAnswer2[0] := '3';
  FQuestions2[20].CorrectAnswer2[1] := 'pass';
  FQuestions2[20].CorrectAnswer2[2] := 'pass';

  FQuestions2[21].Module := '������ 6. �������� ����';
  FQuestions2[21].MainQuesion := '3. ���� ������ ������� � ���, ����� ���������� �����,';
  FQuestions2[21].Prompt := '2 3 5 6 8 9 ...';
  FQuestions2[21].Dop := ' ������� ���� �� ������������ ����, � �������� ���.';
  FQuestions2[21].CorrectAnswer2[0] := '11';
  FQuestions2[21].CorrectAnswer2[1] := 'pass';
  FQuestions2[21].CorrectAnswer2[2] := 'pass';

  FQuestions2[22].Module := '������ 6. �������� ����';
  FQuestions2[22].MainQuesion := '4. ���� ������ ������� � ���, ����� ���������� �����,';
  FQuestions2[22].Prompt := '10 12 9 11 8 10 ...';
  FQuestions2[22].Dop := ' ������� ���� �� ������������ ����, � �������� ���.';
  FQuestions2[22].CorrectAnswer2[0] := '7';
  FQuestions2[22].CorrectAnswer2[1] := 'pass';
  FQuestions2[22].CorrectAnswer2[2] := 'pass';

  FQuestions2[23].Module := '������ 6. �������� ����';
  FQuestions2[23].MainQuesion := '5. ���� ������ ������� � ���, ����� ���������� �����,';
  FQuestions2[23].Prompt := '1 3 6 8 16 18 ...';
  FQuestions2[23].Dop := ' ������� ���� �� ������������ ����, � �������� ���.';
  FQuestions2[23].CorrectAnswer2[0] := '36';
  FQuestions2[23].CorrectAnswer2[1] := 'pass';
  FQuestions2[23].CorrectAnswer2[2] := 'pass';

  FQuestions2[24].Module := '������ 6. �������� ����';
  FQuestions2[24].MainQuesion := '6. ���� ������ ������� � ���, ����� ���������� �����,';
  FQuestions2[24].Prompt := '3 4 6 9 13 18 ...';
  FQuestions2[24].Dop := ' ������� ���� �� ������������ ����, � �������� ���.';
  FQuestions2[24].CorrectAnswer2[0] := '24';
  FQuestions2[24].CorrectAnswer2[1] := 'pass';
  FQuestions2[24].CorrectAnswer2[2] := 'pass';

  FQuestions2[25].Module := '������ 6. �������� ����';
  FQuestions2[25].MainQuesion := '7. ���� ������ ������� � ���, ����� ���������� �����,';
  FQuestions2[25].Prompt := '15 13 16 12 17 11 ...';
  FQuestions2[25].Dop := ' ������� ���� �� ������������ ����, � �������� ���.';
  FQuestions2[25].CorrectAnswer2[0] := '18';
  FQuestions2[25].CorrectAnswer2[1] := 'pass';
  FQuestions2[25].CorrectAnswer2[2] := 'pass';

  FQuestions2[26].Module := '������ 6. �������� ����';
  FQuestions2[26].MainQuesion := '8. ���� ������ ������� � ���, ����� ���������� �����,';
  FQuestions2[26].Prompt := '1 2 4 8 16 32 ...';
  FQuestions2[26].Dop := ' ������� ���� �� ������������ ����, � �������� ���.';
  FQuestions2[26].CorrectAnswer2[0] := '64';
  FQuestions2[26].CorrectAnswer2[1] := 'pass';
  FQuestions2[26].CorrectAnswer2[2] := 'pass';

  FQuestions2[27].Module := '������ 6. �������� ����';
  FQuestions2[27].MainQuesion := '9. ���� ������ ������� � ���, ����� ���������� �����,';
  FQuestions2[27].Prompt := '1 2 5 10 17 26 ...';
  FQuestions2[27].Dop := ' ������� ���� �� ������������ ����, � �������� ���.';
  FQuestions2[27].CorrectAnswer2[0] := '37';
  FQuestions2[27].CorrectAnswer2[1] := 'pass';
  FQuestions2[27].CorrectAnswer2[2] := 'pass';

  FQuestions2[28].Module := '������ 6. �������� ����';
  FQuestions2[28].MainQuesion := '10. ���� ������ ������� � ���, ����� ���������� �����,';
  FQuestions2[28].Prompt := '1 4 9 16 25 36 ...';
  FQuestions2[28].Dop := ' ������� ���� �� ������������ ����, � �������� ���.';
  FQuestions2[28].CorrectAnswer2[0] := '49';
  FQuestions2[28].CorrectAnswer2[1] := 'pass';
  FQuestions2[28].CorrectAnswer2[2] := 'pass';

  FQuestions2[29].Module := '������ 6. �������� ����';
  FQuestions2[29].MainQuesion := '11. ���� ������ ������� � ���, ����� ���������� �����,';
  FQuestions2[29].Prompt := '1 2 6 16 31 56 ...';
  FQuestions2[29].Dop := ' ������� ���� �� ������������ ����, � �������� ���.';
  FQuestions2[29].CorrectAnswer2[0] := '92';
  FQuestions2[29].CorrectAnswer2[1] := 'pass';
  FQuestions2[29].CorrectAnswer2[2] := 'pass';

  FQuestions2[30].Module := '������ 6. �������� ����';
  FQuestions2[30].MainQuesion := '12. ���� ������ ������� � ���, ����� ���������� �����,';
  FQuestions2[30].Prompt := '31 24 18 13 9 6 ...';
  FQuestions2[30].Dop := ' ������� ���� �� ������������ ����, � �������� ���.';
  FQuestions2[30].CorrectAnswer2[0] := '4';
  FQuestions2[30].CorrectAnswer2[1] := 'pass';
  FQuestions2[30].CorrectAnswer2[2] := 'pass';

  FQuestions2[31].Module := '������ 6. �������� ����';
  FQuestions2[31].MainQuesion := '13. ���� ������ ������� � ���, ����� ���������� �����,';
  FQuestions2[31].Prompt := '174 171 57 54 18 15 ...';
  FQuestions2[31].Dop := ' ������� ���� �� ������������ ����, � �������� ���.';
  FQuestions2[31].CorrectAnswer2[0] := '5';
  FQuestions2[31].CorrectAnswer2[1] := 'pass';
  FQuestions2[31].CorrectAnswer2[2] := 'pass';

  FQuestions2[32].Module := '������ 6. �������� ����';
  FQuestions2[32].MainQuesion := '14. ���� ������ ������� � ���, ����� ���������� �����,';
  FQuestions2[32].Prompt := '54 19 18 14 6 9 ...';
  FQuestions2[32].Dop := ' ������� ���� �� ������������ ����, � �������� ���.';
  FQuestions2[32].CorrectAnswer2[0] := '2';
  FQuestions2[32].CorrectAnswer2[1] := 'pass';
  FQuestions2[32].CorrectAnswer2[2] := 'pass';

  FQuestions2[33].Module := '������ 6. �������� ����';
  FQuestions2[33].MainQuesion := '15. ���� ������ ������� � ���, ����� ���������� �����,';
  FQuestions2[33].Prompt := '301 294 49 44 11 8';
  FQuestions2[33].Dop := ' ������� ���� �� ������������ ����, � �������� ���.';
  FQuestions2[33].CorrectAnswer2[0] := '4';
  FQuestions2[33].CorrectAnswer2[1] := 'pass';
  FQuestions2[33].CorrectAnswer2[2] := 'pass';


  FCurrentQuestionIndex2 := 0;
  end;

function TPsychologicalTest.GetCurrentQuestion: TQuestion;
begin
  Result := FQuestions[FCurrentQuestionIndex];
end;

function TPsychologicalTest.IsLastQuestion: Boolean;
begin
  Result := FCurrentQuestionIndex = High(FQuestions);
end;

procedure TPsychologicalTest.NextQuestion;
begin
  if not IsLastQuestion then
    Inc(FCurrentQuestionIndex);
end;

function TPsychologicalTest2.GetCurrentQuestion: TQuestion2;
begin
  Result := FQuestions2[FCurrentQuestionIndex2];
end;

function TPsychologicalTest2.IsLastQuestion: Boolean;
begin
  Result := FCurrentQuestionIndex2 = High(FQuestions2);
end;

procedure TPsychologicalTest2.NextQuestion;
begin
  if not IsLastQuestion then
    Inc(FCurrentQuestionIndex2);
end;

end.
