object Root: TRoot
  Left = 0
  Top = 0
  Caption = 'SyncText'
  ClientHeight = 301
  ClientWidth = 553
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = TaskBar
  OldCreateOrder = False
  Position = poDesigned
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  DesignSize = (
    553
    301)
  PixelsPerInch = 96
  TextHeight = 13
  object MevcutDosya: TLabel
    Left = 8
    Top = 5
    Width = 144
    Height = 16
    Caption = 'Mevcut Dosya: '#304'simsiz.txt'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Editor: TMemo
    Left = 8
    Top = 27
    Width = 537
    Height = 266
    Anchors = [akLeft, akTop, akRight, akBottom]
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    ScrollBars = ssVertical
    TabOrder = 0
    StyleElements = []
    OnKeyPress = EditorKeyPress
    ExplicitHeight = 280
  end
  object TaskBar: TMainMenu
    Left = 96
    Top = 136
    object Dosya1: TMenuItem
      Caption = 'Dosya'
      object A1: TMenuItem
        Caption = 'A'#231
        ShortCut = 16463
        OnClick = A1Click
      end
      object Kaydet1: TMenuItem
        Caption = 'Kaydet'
        ShortCut = 16467
        OnClick = Kaydet1Click
      end
      object FarklKaydet1: TMenuItem
        Caption = 'Farkl'#305' Kaydet'
        OnClick = FarklKaydet1Click
      end
    end
    object Edit1: TMenuItem
      Caption = 'D'#252'zen'
      object Bul1: TMenuItem
        Caption = 'Bul'
        ShortCut = 16454
        OnClick = Bul1Click
      end
    end
    object Ayarlar1: TMenuItem
      Caption = 'Ayarlar'
      object YazTipi1: TMenuItem
        Caption = 'Yaz'#305' Tipi'
        OnClick = YazTipi1Click
      end
      object EditrRengi1: TMenuItem
        Caption = 'Edit'#246'r Rengi'
        OnClick = EditrRengi1Click
      end
    end
  end
  object OpenDialog: TOpenDialog
    Filter = '|*.txt||*.cfg||*.ini||*.bat||*.html||*.css'
    Left = 152
    Top = 136
  end
  object SaveDialog: TSaveDialog
    Filter = '|*.txt||*.cfg||*.ini||*.bat||*.html||*.css'
    Left = 208
    Top = 136
  end
  object FontDialog: TFontDialog
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Left = 264
    Top = 136
  end
  object ColorDialog: TColorDialog
    Left = 320
    Top = 136
  end
  object FindDialog: TFindDialog
    FindText = 'sasd'
    OnFind = FindDialogFind
    Left = 376
    Top = 136
  end
end
