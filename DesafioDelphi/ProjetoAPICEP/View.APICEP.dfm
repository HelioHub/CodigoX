object Form1: TForm1
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'API CEP'
  ClientHeight = 358
  ClientWidth = 369
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 15
  object lblTitulo: TLabel
    Left = 0
    Top = 0
    Width = 369
    Height = 16
    Align = alTop
    Alignment = taCenter
    Caption = 'API CEP'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    ExplicitWidth = 45
  end
  object Panel: TPanel
    Left = 0
    Top = 16
    Width = 369
    Height = 342
    Align = alClient
    TabOrder = 0
    ExplicitWidth = 367
    ExplicitHeight = 255
    object Bevel: TBevel
      Left = 15
      Top = 131
      Width = 337
      Height = 17
      Shape = bsTopLine
    end
    object lblInfo1: TLabel
      Left = 24
      Top = 154
      Width = 82
      Height = 13
      Caption = 'Endere'#231'o do CEP'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsItalic]
      ParentFont = False
    end
    object lblAPICEP: TLabel
      Left = 142
      Top = 15
      Width = 66
      Height = 15
      Alignment = taRightJustify
      Caption = 'Informe CEP'
    end
    object btnGetCEP: TBitBtn
      Left = 118
      Top = 75
      Width = 114
      Height = 33
      Caption = 'Obter Endere'#231'o'
      TabOrder = 0
      OnClick = btnGetCEPClick
    end
    object edtCEP: TEdit
      Left = 103
      Top = 38
      Width = 145
      Height = 23
      Alignment = taCenter
      NumbersOnly = True
      TabOrder = 1
      Text = '60744325'
    end
    object MmEndereco: TMemo
      Left = 24
      Top = 173
      Width = 313
      Height = 158
      Lines.Strings = (
        '')
      TabOrder = 2
    end
  end
end
