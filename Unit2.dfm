object Form2: TForm2
  Left = 0
  Top = 0
  BorderStyle = bsSingle
  Caption = #1058#1077#1089#1090#1080#1088#1086#1074#1072#1085#1080#1077
  ClientHeight = 471
  ClientWidth = 794
  Color = 7052785
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OldCreateOrder = True
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 15
  object TextLabel: TLabel
    Left = 48
    Top = 152
    Width = 27
    Height = 21
    Caption = '234'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
  end
  object ModuleName: TLabel
    Left = 48
    Top = 16
    Width = 105
    Height = 21
    Caption = 'ModuleName'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object QuestionName: TLabel
    Left = 48
    Top = 80
    Width = 50
    Height = 21
    Caption = 'Label1'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label1: TLabel
    Left = 48
    Top = 107
    Width = 723
    Height = 21
    Caption = 
      #1052#1077#1078#1076#1091' '#1090#1088#1077#1090#1100#1080#1084' '#1080' '#1086#1076#1085#1080#1084' '#1080#1079' '#1089#1083#1086#1074' '#1089#1091#1097#1077#1089#1090#1074#1091#1077#1090' '#1090#1072#1082#1072#1103' '#1078#1077' '#1089#1074#1103#1079#1100'. '#1042#1072#1084' '#1085#1091#1078 +
      #1085#1086' '#1074#1099#1073#1088#1072#1090#1100' '#1101#1090#1086' '#1089#1083#1086#1074#1086'.'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
    Visible = False
  end
  object RadioButton1: TRadioButton
    Left = 48
    Top = 200
    Width = 201
    Height = 17
    Caption = 'RadioButton1'
    TabOrder = 0
    OnClick = RadioButton1Click
  end
  object RadioButton2: TRadioButton
    Left = 48
    Top = 248
    Width = 201
    Height = 17
    Caption = 'RadioButton1'
    TabOrder = 1
    OnClick = RadioButton2Click
  end
  object RadioButton3: TRadioButton
    Left = 48
    Top = 296
    Width = 201
    Height = 17
    Caption = 'RadioButton1'
    TabOrder = 2
    OnClick = RadioButton3Click
  end
  object Button1: TButton
    Left = 584
    Top = 368
    Width = 185
    Height = 57
    Caption = #1044#1072#1083#1077#1077
    Enabled = False
    TabOrder = 3
    OnClick = Button1Click
  end
  object RadioButton4: TRadioButton
    Left = 48
    Top = 337
    Width = 201
    Height = 17
    Caption = 'RadioButton1'
    TabOrder = 4
    OnClick = RadioButton4Click
  end
  object RadioButton5: TRadioButton
    Left = 48
    Top = 384
    Width = 201
    Height = 17
    Caption = 'RadioButton1'
    TabOrder = 5
    OnClick = RadioButton5Click
  end
  object Button2: TButton
    Left = 559
    Top = 8
    Width = 217
    Height = 49
    Caption = #1047#1072#1074#1077#1088#1096#1080#1090#1100' '#1090#1077#1089#1090#1080#1088#1086#1074#1072#1085#1080#1077
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Segoe UI'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 6
    OnClick = Button2Click
  end
  object Panel1: TPanel
    Left = 177
    Top = 16
    Width = 401
    Height = 437
    Color = clWhite
    ParentBackground = False
    TabOrder = 7
    object Memo1: TMemo
      Left = 0
      Top = 0
      Width = 401
      Height = 437
      Lines.Strings = (
        '                             '#1055#1088#1080#1074#1077#1090#1089#1090#1074#1091#1077#1084' '#1074#1072#1089', '#1091#1074#1072#1078#1072#1077#1084#1099#1081' '#1091#1095#1077#1085#1080#1082'!'
        '    '
        
          '    '#1057#1077#1081#1095#1072#1089' '#1074#1099' '#1073#1091#1076#1077#1090#1077' '#1087#1088#1086#1093#1086#1076#1080#1090#1100' '#1096#1082#1086#1083#1100#1085#1099#1081' '#1090#1077#1089#1090' '#1091#1084#1089#1090#1074#1077#1085#1085#1086#1075#1086' '#1088#1072#1079#1074#1080#1090#1080 +
          #1103'.'
        
          #1058#1077#1089#1090' '#1089#1086#1089#1090#1086#1080#1090' '#1080#1079' '#1085#1077#1089#1082#1086#1083#1100#1082#1080#1093' '#1084#1086#1076#1091#1083#1077#1081', '#1074' '#1082#1072#1078#1076#1086#1084' '#1080#1079' '#1082#1086#1090#1086#1088#1099#1093' '#1074#1072#1084' '#1073#1091#1076#1077 +
          #1090' '
        #1087#1088#1077#1076#1083#1086#1078#1077#1085#1086' '#1088#1077#1096#1080#1090#1100' '#1079#1072#1076#1072#1085#1080#1103'. '#1050' '#1082#1072#1078#1076#1086#1084#1091' '#1085#1086#1084#1077#1088#1091' '#1073#1091#1076#1077#1090' '#1076#1072#1085#1086' '#1091#1089#1083#1086#1074#1080#1077' '
        #1079#1072#1076#1072#1095#1080'.'
        '   '
        
          '     '#1042#1072#1084' '#1085#1091#1078#1085#1086' '#1073#1091#1076#1077#1090' '#1074#1099#1073#1088#1072#1090#1100' '#1086#1076#1080#1085' '#1074#1072#1088#1080#1072#1085#1090' '#1086#1090#1074#1077#1090#1072' '#1080#1079' '#1087#1088#1077#1076#1083#1086#1078#1077#1085#1085#1099#1093 +
          ','
        #1083#1080#1073#1086' '#1074#1087#1080#1089#1072#1090#1100' '#1086#1090#1074#1077#1090' '#1074' '#1089#1086#1086#1090#1074#1077#1090#1089#1090#1074#1091#1102#1097#1077#1077' '#1087#1086#1083#1077'.'
        ''
        '    '#1063#1090#1086#1073#1099' '#1087#1077#1088#1077#1081#1090#1080' '#1082' '#1089#1083#1077#1076#1091#1102#1097#1077#1084#1091' '#1074#1086#1087#1088#1086#1089#1091' '#1090#1077#1089#1090#1072', '#1074#1072#1084' '#1085#1091#1078#1085#1086' '#1073#1091#1076#1077#1090' '
        #1085#1072#1078#1072#1090#1100' '#1082#1085#1086#1087#1082#1091':'
        '                                                    "'#1076#1072#1083#1077#1077'"'
        ''
        '    '#1058#1072#1082' '#1078#1077' '#1076#1083#1103' '#1076#1086#1089#1088#1086#1095#1085#1086#1075#1086' '#1079#1072#1074#1077#1088#1096#1077#1085#1080#1103' '#1090#1077#1089#1090#1072' '#1074#1072#1084' '#1073#1091#1076#1077#1090' '#1076#1086#1089#1090#1091#1087#1085#1072' '
        #1082#1085#1086#1087#1082#1072':'
        '                                     "'#1079#1072#1074#1077#1088#1096#1080#1090#1100' '#1090#1077#1089#1090#1080#1088#1086#1074#1072#1085#1080#1077'"'
        ''
        '    '#1041#1091#1076#1100#1090#1077' '#1074#1085#1080#1084#1072#1090#1077#1083#1100#1085#1099' '#1080' '#1085#1077' '#1090#1086#1088#1086#1087#1080#1090#1077#1089#1100'. '#1057#1090#1072#1088#1072#1081#1090#1077#1089#1100' '#1087#1086#1083#1085#1086#1089#1090#1100#1102' '
        #1086#1073#1076#1091#1084#1099#1074#1072#1090#1100' '#1089#1074#1086#1080' '#1086#1090#1074#1077#1090#1099' '#1080' '#1091' '#1074#1072#1089' '#1074#1089#1105' '#1087#1086#1083#1091#1095#1080#1090#1089#1103'.'
        '                                                      '#1059#1076#1072#1095#1080'!'
        ''
        ''
        
          '                 '#1044#1083#1103' '#1079#1072#1082#1088#1099#1090#1080#1103' '#1080#1085#1089#1090#1088#1091#1082#1094#1080#1080' '#1085#1072#1078#1084#1080#1090#1077' '#1082#1085#1086#1087#1082#1091' "'#1079#1072#1082#1088#1099#1090#1100 +
          '".'
        '')
      TabOrder = 0
    end
    object Button3: TButton
      Left = 96
      Top = 384
      Width = 185
      Height = 33
      Caption = #1079#1072#1082#1088#1099#1090#1100
      TabOrder = 1
      OnClick = Button3Click
    end
  end
end
