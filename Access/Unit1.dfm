object Form1: TForm1
  Left = 439
  Top = 219
  Caption = 'Form1'
  ClientHeight = 304
  ClientWidth = 522
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesigned
  DesignSize = (
    522
    304)
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid: TDBGrid
    Left = 8
    Top = 8
    Width = 506
    Height = 288
    Anchors = [akLeft, akTop, akRight, akBottom]
    DataSource = DataSource
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object FDQuery: TFDQuery
    Active = True
    Connection = FDConnection
    SQL.Strings = (
      'select * from table1')
    Left = 128
    Top = 64
  end
  object FDConnection: TFDConnection
    Params.Strings = (
      'Database=E:\Delphi Projects\Access\Win32\Debug\database.mdb'
      'DriverID=MSAcc')
    Connected = True
    LoginPrompt = False
    Left = 56
    Top = 64
  end
  object DataSource: TDataSource
    DataSet = FDQuery
    Left = 200
    Top = 64
  end
end
