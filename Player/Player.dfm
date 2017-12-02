object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'mp3Player - Hashshashin'
  ClientHeight = 432
  ClientWidth = 489
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesigned
  DesignSize = (
    489
    432)
  PixelsPerInch = 96
  TextHeight = 13
  object PathLabel: TLabel
    Left = 8
    Top = 8
    Width = 130
    Height = 18
    Caption = #199'al'#305'nan K'#252't'#252'phane: '
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object MainGroup: TGroupBox
    Left = 8
    Top = 32
    Width = 473
    Height = 352
    Anchors = [akLeft, akTop, akRight, akBottom]
    TabOrder = 2
    DesignSize = (
      473
      352)
    object ListBox: TListBox
      Left = 3
      Top = 3
      Width = 467
      Height = 324
      Anchors = [akLeft, akTop, akRight, akBottom]
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      OnClick = ListBoxClick
    end
    object MixButton: TButton
      Left = 412
      Top = 328
      Width = 58
      Height = 21
      Anchors = [akRight, akBottom]
      Caption = 'Kar'#305#351't'#305'r'
      TabOrder = 1
      OnClick = MixButtonClick
    end
    object MediaPlayer: TMediaPlayer
      Left = 152
      Top = 128
      Width = 253
      Height = 30
      DoubleBuffered = True
      Visible = False
      ParentDoubleBuffered = False
      TabOrder = 2
    end
  end
  object ButtonsGroup: TGroupBox
    Left = 8
    Top = 387
    Width = 473
    Height = 37
    Anchors = [akLeft, akRight, akBottom]
    TabOrder = 0
    DesignSize = (
      473
      37)
    object PlayButton: TButton
      Left = 42
      Top = 3
      Width = 33
      Height = 31
      Anchors = [akLeft, akBottom]
      Caption = '|>'
      TabOrder = 0
      OnClick = PlayButtonClick
    end
    object NextButton: TButton
      Left = 81
      Top = 3
      Width = 33
      Height = 31
      Anchors = [akLeft, akBottom]
      Caption = '>'
      TabOrder = 1
      OnClick = NextButtonClick
    end
    object PrevButton: TButton
      Left = 3
      Top = 3
      Width = 33
      Height = 31
      Anchors = [akLeft, akBottom]
      Caption = '<'
      TabOrder = 2
      OnClick = PrevButtonClick
    end
  end
  object PathButton: TButton
    Left = 423
    Top = 8
    Width = 58
    Height = 21
    Anchors = [akTop, akRight]
    Caption = 'De'#287'i'#351'tir'
    TabOrder = 1
    OnClick = PathButtonClick
  end
  object FileOpenDialog: TFileOpenDialog
    FavoriteLinks = <>
    FileTypes = <>
    Options = [fdoPickFolders]
    Left = 72
    Top = 160
  end
end
