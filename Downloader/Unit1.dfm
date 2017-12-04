object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 238
  ClientWidth = 514
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  DesignSize = (
    514
    238)
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 24
    Top = 16
    Width = 27
    Height = 16
    Caption = 'URL:'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 24
    Top = 54
    Width = 89
    Height = 16
    Caption = 'Save Directory: '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 24
    Top = 99
    Width = 19
    Height = 16
    Caption = '0%'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Edit1: TEdit
    Left = 136
    Top = 13
    Width = 353
    Height = 22
    Anchors = [akLeft, akTop, akRight]
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
  end
  object Edit2: TEdit
    Left = 136
    Top = 51
    Width = 289
    Height = 22
    Anchors = [akLeft, akTop, akRight]
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 1
  end
  object ProgressBar1: TProgressBar
    Left = 63
    Top = 96
    Width = 346
    Height = 25
    Anchors = [akLeft, akTop, akRight]
    TabOrder = 2
  end
  object Memo1: TMemo
    Left = 24
    Top = 135
    Width = 465
    Height = 95
    Anchors = [akLeft, akTop, akRight, akBottom]
    Font.Charset = TURKISH_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Consolas'
    Font.Style = []
    Lines.Strings = (
      'Fill the blanks and click '#39'Download'#39'...')
    ParentFont = False
    ReadOnly = True
    ScrollBars = ssVertical
    TabOrder = 3
  end
  object Button1: TButton
    Left = 415
    Top = 96
    Width = 74
    Height = 25
    Anchors = [akTop, akRight]
    Caption = 'Download'
    TabOrder = 4
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 431
    Top = 51
    Width = 58
    Height = 22
    Anchors = [akTop, akRight]
    Caption = 'Select'
    TabOrder = 5
    OnClick = Button2Click
  end
  object IdHTTP: TIdHTTP
    AllowCookies = True
    ProxyParams.BasicAuthentication = False
    ProxyParams.ProxyPort = 0
    Request.ContentLength = -1
    Request.ContentRangeEnd = -1
    Request.ContentRangeStart = -1
    Request.ContentRangeInstanceLength = -1
    Request.Accept = 'text/html,application/xhtml+xml,application/xml;q=0.9,*/*;q=0.8'
    Request.BasicAuthentication = False
    Request.UserAgent = 'Mozilla/3.0 (compatible; Indy Library)'
    Request.Ranges.Units = 'bytes'
    Request.Ranges = <>
    HTTPOptions = [hoForceEncodeParams]
    Left = 104
    Top = 168
  end
  object SaveDialog: TSaveDialog
    Left = 376
    Top = 48
  end
end
