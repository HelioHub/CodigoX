object FormVisitorPattern: TFormVisitorPattern
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Visitor Pattern'
  ClientHeight = 271
  ClientWidth = 367
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OnCreate = FormCreate
  TextHeight = 15
  object lblTitulo: TLabel
    Left = 0
    Top = 0
    Width = 367
    Height = 16
    Align = alTop
    Alignment = taCenter
    Caption = 'Design Patterns '#8212' Visitor'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    ExplicitWidth = 145
  end
  object Panel: TPanel
    Left = 0
    Top = 16
    Width = 367
    Height = 255
    Align = alClient
    TabOrder = 0
    object lblTipoVenda: TLabel
      Left = 67
      Top = 23
      Width = 77
      Height = 15
      Alignment = taRightJustify
      Caption = 'Tipo de  Venda'
    end
    object Bevel: TBevel
      Left = 15
      Top = 169
      Width = 337
      Height = 17
      Shape = bsTopLine
    end
    object lblInfo1: TLabel
      Left = 24
      Top = 192
      Width = 220
      Height = 13
      Caption = 'Para testar implementa'#231#227'o do Desing Pattern '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsItalic]
      ParentFont = False
    end
    object lblInfo2: TLabel
      Left = 24
      Top = 208
      Width = 33
      Height = 13
      Caption = 'Visitor.'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsItalic]
      ParentFont = False
    end
    object lblPrecoUnitario: TLabel
      Left = 69
      Top = 77
      Width = 75
      Height = 15
      Alignment = taRightJustify
      Caption = 'Pre'#231'o Unit'#225'rio'
    end
    object btnPrecoaVista: TBitBtn
      Left = 232
      Top = 23
      Width = 114
      Height = 33
      Caption = 'Pre'#231'o '#224' Vista'
      TabOrder = 0
      OnClick = btnPrecoaVistaClick
    end
    object btnPrecoPromocional: TBitBtn
      Left = 232
      Top = 59
      Width = 114
      Height = 33
      Caption = 'Pre'#231'o Promocional'
      TabOrder = 1
      OnClick = btnPrecoPromocionalClick
    end
    object cbTipoVenda: TComboBox
      Left = 40
      Top = 44
      Width = 145
      Height = 23
      ItemIndex = 0
      TabOrder = 2
      Text = 'Varejo'
      Items.Strings = (
        'Varejo'
        'Atacado')
    end
    object edtPrecoUnitario: TEdit
      Left = 40
      Top = 98
      Width = 145
      Height = 23
      Alignment = taRightJustify
      NumbersOnly = True
      TabOrder = 3
      Text = '100'
    end
  end
end
