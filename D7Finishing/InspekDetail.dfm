object InspekDetailFrm: TInspekDetailFrm
  Left = 120
  Top = 71
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Form Detail Check Inspekting'
  ClientHeight = 366
  ClientWidth = 999
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 999
    Height = 79
    Align = alTop
    Color = 4605440
    TabOrder = 0
  end
  object Panel2: TPanel
    Left = 0
    Top = 294
    Width = 999
    Height = 72
    Align = alBottom
    Color = 4605440
    TabOrder = 1
    object BitBtn1: TBitBtn
      Left = 19
      Top = 25
      Width = 79
      Height = 25
      Caption = '<-- &Prev'
      TabOrder = 0
      OnClick = BitBtn1Click
    end
    object BitBtn2: TBitBtn
      Left = 100
      Top = 25
      Width = 79
      Height = 25
      Caption = '&Next -->'
      TabOrder = 1
      OnClick = BitBtn2Click
    end
    object BitBtn3: TBitBtn
      Left = 387
      Top = 25
      Width = 75
      Height = 25
      Caption = '&Close'
      TabOrder = 2
      OnClick = BitBtn3Click
      Glyph.Data = {
        DE010000424DDE01000000000000760000002800000024000000120000000100
        0400000000006801000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00388888888877
        F7F787F8888888888333333F00004444400888FFF444448888888888F333FF8F
        000033334D5007FFF4333388888888883338888F0000333345D50FFFF4333333
        338F888F3338F33F000033334D5D0FFFF43333333388788F3338F33F00003333
        45D50FEFE4333333338F878F3338F33F000033334D5D0FFFF43333333388788F
        3338F33F0000333345D50FEFE4333333338F878F3338F33F000033334D5D0FFF
        F43333333388788F3338F33F0000333345D50FEFE4333333338F878F3338F33F
        000033334D5D0EFEF43333333388788F3338F33F0000333345D50FEFE4333333
        338F878F3338F33F000033334D5D0EFEF43333333388788F3338F33F00003333
        4444444444333333338F8F8FFFF8F33F00003333333333333333333333888888
        8888333F00003333330000003333333333333FFFFFF3333F00003333330AAAA0
        333333333333888888F3333F00003333330000003333333333338FFFF8F3333F
        0000}
      NumGlyphs = 2
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 79
    Width = 999
    Height = 215
    Align = alClient
    BorderStyle = bsSingle
    Ctl3D = False
    ParentCtl3D = False
    TabOrder = 2
    object GroupBox2: TGroupBox
      Left = 17
      Top = 113
      Width = 171
      Height = 79
      Caption = ' BS Parah '
      Color = 13618941
      ParentColor = False
      TabOrder = 1
      object Label20: TLabel
        Left = 8
        Top = 24
        Width = 14
        Height = 13
        Caption = 'KS'
      end
      object Label45: TLabel
        Left = 48
        Top = 24
        Width = 23
        Height = 13
        Caption = 'ANR'
      end
      object Label46: TLabel
        Left = 88
        Top = 24
        Width = 22
        Height = 13
        Caption = 'UTS'
      end
      object Label47: TLabel
        Left = 128
        Top = 24
        Width = 22
        Height = 13
        Caption = 'KBR'
      end
      object Ed24: TwwDBEdit
        Left = 128
        Top = 40
        Width = 33
        Height = 19
        DataField = 'KBR'
        DataSource = HasilTenunFrm.dsDetail
        TabOrder = 3
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
        OnKeyPress = Ed24KeyPress
      end
      object Ed21: TwwDBEdit
        Left = 8
        Top = 40
        Width = 33
        Height = 19
        DataField = 'KS'
        DataSource = HasilTenunFrm.dsDetail
        TabOrder = 0
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
        OnKeyPress = Ed101KeyPress
      end
      object Ed22: TwwDBEdit
        Left = 48
        Top = 40
        Width = 33
        Height = 19
        DataField = 'ANR'
        DataSource = HasilTenunFrm.dsDetail
        TabOrder = 1
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
        OnKeyPress = Ed101KeyPress
      end
      object Ed23: TwwDBEdit
        Left = 88
        Top = 40
        Width = 33
        Height = 19
        DataField = 'UTS'
        DataSource = HasilTenunFrm.dsDetail
        TabOrder = 2
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
        OnKeyPress = Ed101KeyPress
      end
    end
    object GroupBox3: TGroupBox
      Left = 40
      Top = 224
      Width = 697
      Height = 185
      Caption = 'Cacat Arah Lusi dan Pakan'
      TabOrder = 2
      Visible = False
      object Label24: TLabel
        Left = 8
        Top = 24
        Width = 22
        Height = 13
        Caption = 'UTB'
      end
      object Label25: TLabel
        Left = 48
        Top = 24
        Width = 22
        Height = 13
        Caption = 'UTK'
      end
      object Label26: TLabel
        Left = 88
        Top = 24
        Width = 20
        Height = 13
        Caption = 'LBK'
      end
      object Label29: TLabel
        Left = 168
        Top = 24
        Width = 22
        Height = 13
        Caption = 'CUP'
      end
      object Label6: TLabel
        Left = 56
        Top = 96
        Width = 13
        Height = 13
        Caption = 'LP'
        Visible = False
      end
      object Label7: TLabel
        Left = 312
        Top = 96
        Width = 14
        Height = 13
        Caption = 'LR'
        Visible = False
      end
      object Label10: TLabel
        Left = 456
        Top = 96
        Width = 14
        Height = 13
        Caption = 'CK'
        Visible = False
      end
      object Label30: TLabel
        Left = 96
        Top = 96
        Width = 20
        Height = 13
        Caption = 'LPB'
        Visible = False
      end
      object Label31: TLabel
        Left = 136
        Top = 96
        Width = 20
        Height = 13
        Caption = 'LPS'
        Visible = False
      end
      object Label32: TLabel
        Left = 352
        Top = 96
        Width = 21
        Height = 13
        Caption = 'LRB'
        Visible = False
      end
      object Label33: TLabel
        Left = 392
        Top = 96
        Width = 21
        Height = 13
        Caption = 'LRS'
        Visible = False
      end
      object Label34: TLabel
        Left = 176
        Top = 96
        Width = 13
        Height = 13
        Caption = 'LS'
        Visible = False
      end
      object Label35: TLabel
        Left = 216
        Top = 96
        Width = 20
        Height = 13
        Caption = 'LSB'
        Visible = False
      end
      object Label36: TLabel
        Left = 256
        Top = 96
        Width = 20
        Height = 13
        Caption = 'LSS'
        Visible = False
      end
      object Label38: TLabel
        Left = 496
        Top = 96
        Width = 14
        Height = 13
        Caption = 'CB'
        Visible = False
      end
      object Label14: TLabel
        Left = 560
        Top = 96
        Width = 14
        Height = 13
        Caption = 'PP'
        Visible = False
      end
      object Label15: TLabel
        Left = 600
        Top = 96
        Width = 14
        Height = 13
        Caption = 'PS'
        Visible = False
      end
      object E14: TwwDBEdit
        Left = 8
        Top = 40
        Width = 33
        Height = 19
        DataField = 'UTB'
        DataSource = HasilTenunFrm.dsDetail
        TabOrder = 0
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
        OnKeyPress = Ed101KeyPress
      end
      object E24: TwwDBEdit
        Left = 48
        Top = 40
        Width = 33
        Height = 19
        DataField = 'UTK'
        DataSource = HasilTenunFrm.dsDetail
        TabOrder = 1
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
        OnKeyPress = Ed101KeyPress
      end
      object E34: TwwDBEdit
        Left = 88
        Top = 40
        Width = 33
        Height = 19
        DataField = 'LBK'
        DataSource = HasilTenunFrm.dsDetail
        TabOrder = 2
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
        OnKeyPress = Ed101KeyPress
      end
      object E3A4: TwwDBEdit
        Left = 168
        Top = 40
        Width = 33
        Height = 19
        DataField = 'CUP'
        DataSource = HasilTenunFrm.dsDetail
        TabOrder = 3
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
        OnKeyPress = Ed101KeyPress
      end
      object wwDBEdit9: TwwDBEdit
        Left = 496
        Top = 112
        Width = 33
        Height = 19
        DataField = 'CB'
        DataSource = HasilTenunFrm.dsDetail
        TabOrder = 4
        UnboundDataType = wwDefault
        Visible = False
        WantReturns = False
        WordWrap = False
        OnKeyPress = wwDBEdit9KeyPress
      end
      object E61: TwwDBEdit
        Left = 56
        Top = 112
        Width = 33
        Height = 19
        DataField = 'LP'
        DataSource = HasilTenunFrm.dsDetail
        TabOrder = 5
        UnboundDataType = wwDefault
        Visible = False
        WantReturns = False
        WordWrap = False
        OnKeyPress = Ed101KeyPress
      end
      object E71: TwwDBEdit
        Left = 312
        Top = 112
        Width = 33
        Height = 19
        DataField = 'LR'
        DataSource = HasilTenunFrm.dsDetail
        TabOrder = 6
        UnboundDataType = wwDefault
        Visible = False
        WantReturns = False
        WordWrap = False
        OnKeyPress = Ed101KeyPress
      end
      object E101: TwwDBEdit
        Left = 456
        Top = 112
        Width = 33
        Height = 19
        DataField = 'CK'
        DataSource = HasilTenunFrm.dsDetail
        TabOrder = 7
        UnboundDataType = wwDefault
        Visible = False
        WantReturns = False
        WordWrap = False
        OnKeyPress = Ed101KeyPress
      end
      object wwDBEdit1: TwwDBEdit
        Left = 96
        Top = 112
        Width = 33
        Height = 19
        DataField = 'LPB'
        DataSource = HasilTenunFrm.dsDetail
        TabOrder = 8
        UnboundDataType = wwDefault
        Visible = False
        WantReturns = False
        WordWrap = False
        OnKeyPress = Ed101KeyPress
      end
      object wwDBEdit2: TwwDBEdit
        Left = 136
        Top = 112
        Width = 33
        Height = 19
        DataField = 'LPS'
        DataSource = HasilTenunFrm.dsDetail
        TabOrder = 9
        UnboundDataType = wwDefault
        Visible = False
        WantReturns = False
        WordWrap = False
        OnKeyPress = Ed101KeyPress
      end
      object wwDBEdit3: TwwDBEdit
        Left = 352
        Top = 112
        Width = 33
        Height = 19
        DataField = 'LRB'
        DataSource = HasilTenunFrm.dsDetail
        TabOrder = 10
        UnboundDataType = wwDefault
        Visible = False
        WantReturns = False
        WordWrap = False
        OnKeyPress = Ed101KeyPress
      end
      object wwDBEdit4: TwwDBEdit
        Left = 392
        Top = 112
        Width = 33
        Height = 19
        DataField = 'LRS'
        DataSource = HasilTenunFrm.dsDetail
        TabOrder = 11
        UnboundDataType = wwDefault
        Visible = False
        WantReturns = False
        WordWrap = False
        OnKeyPress = Ed101KeyPress
      end
      object wwDBEdit5: TwwDBEdit
        Left = 176
        Top = 112
        Width = 33
        Height = 19
        DataField = 'LS'
        DataSource = HasilTenunFrm.dsDetail
        TabOrder = 12
        UnboundDataType = wwDefault
        Visible = False
        WantReturns = False
        WordWrap = False
        OnKeyPress = Ed101KeyPress
      end
      object wwDBEdit6: TwwDBEdit
        Left = 216
        Top = 112
        Width = 33
        Height = 19
        DataField = 'LSB'
        DataSource = HasilTenunFrm.dsDetail
        TabOrder = 13
        UnboundDataType = wwDefault
        Visible = False
        WantReturns = False
        WordWrap = False
        OnKeyPress = Ed101KeyPress
      end
      object wwDBEdit7: TwwDBEdit
        Left = 256
        Top = 112
        Width = 33
        Height = 19
        DataField = 'LSS'
        DataSource = HasilTenunFrm.dsDetail
        TabOrder = 14
        UnboundDataType = wwDefault
        Visible = False
        WantReturns = False
        WordWrap = False
        OnKeyPress = Ed101KeyPress
      end
      object E32: TwwDBEdit
        Left = 560
        Top = 112
        Width = 33
        Height = 19
        DataField = 'PP'
        DataSource = HasilTenunFrm.dsDetail
        TabOrder = 15
        UnboundDataType = wwDefault
        Visible = False
        WantReturns = False
        WordWrap = False
        OnKeyPress = Ed101KeyPress
      end
      object E42: TwwDBEdit
        Left = 600
        Top = 112
        Width = 33
        Height = 19
        DataField = 'PS'
        DataSource = HasilTenunFrm.dsDetail
        TabOrder = 16
        UnboundDataType = wwDefault
        Visible = False
        WantReturns = False
        WordWrap = False
        OnKeyPress = Ed101KeyPress
      end
    end
    object GroupBox4: TGroupBox
      Left = 201
      Top = 113
      Width = 136
      Height = 79
      Caption = ' Diterima '
      Color = clSkyBlue
      ParentColor = False
      TabOrder = 4
      object Label27: TLabel
        Left = 11
        Top = 24
        Width = 14
        Height = 13
        Caption = 'BK'
      end
      object Label28: TLabel
        Left = 51
        Top = 24
        Width = 14
        Height = 13
        Caption = 'BS'
      end
      object Label37: TLabel
        Left = 90
        Top = 24
        Width = 28
        Height = 13
        Caption = 'Parah'
      end
      object Ed31: TwwDBEdit
        Left = 11
        Top = 38
        Width = 33
        Height = 19
        DataField = 'QTY3'
        DataSource = HasilTenunFrm.dsDetail
        ReadOnly = True
        TabOrder = 0
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
      end
      object Ed32: TwwDBEdit
        Left = 51
        Top = 38
        Width = 33
        Height = 19
        DataField = 'QTY2'
        DataSource = HasilTenunFrm.dsDetail
        ReadOnly = True
        TabOrder = 1
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
      end
      object Ed33: TwwDBEdit
        Left = 90
        Top = 38
        Width = 33
        Height = 19
        DataField = 'PR'
        DataSource = HasilTenunFrm.dsDetail
        TabOrder = 2
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
      end
    end
    object GroupBox1: TGroupBox
      Left = 17
      Top = 18
      Width = 927
      Height = 80
      Caption = ' Defect B-Grade '
      Color = clMoneyGreen
      ParentColor = False
      TabOrder = 0
      object Label1: TLabel
        Left = 8
        Top = 24
        Width = 14
        Height = 13
        Caption = 'LD'
      end
      object Label2: TLabel
        Left = 48
        Top = 24
        Width = 13
        Height = 13
        Caption = 'LB'
      end
      object Label3: TLabel
        Left = 88
        Top = 24
        Width = 13
        Height = 13
        Caption = 'LT'
      end
      object Label4: TLabel
        Left = 128
        Top = 24
        Width = 13
        Height = 13
        Caption = 'LK'
      end
      object Label5: TLabel
        Left = 206
        Top = 24
        Width = 19
        Height = 13
        Caption = 'FLS'
      end
      object Label8: TLabel
        Left = 323
        Top = 24
        Width = 17
        Height = 13
        Caption = 'WL'
      end
      object Label9: TLabel
        Left = 403
        Top = 24
        Width = 13
        Height = 13
        Caption = 'OJ'
      end
      object Label11: TLabel
        Left = 443
        Top = 24
        Width = 22
        Height = 13
        Caption = 'CRT'
      end
      object Label13: TLabel
        Left = 167
        Top = 24
        Width = 20
        Height = 13
        Caption = 'FPK'
      end
      object Label39: TLabel
        Left = 245
        Top = 24
        Width = 20
        Height = 13
        Caption = 'LPT'
      end
      object Label40: TLabel
        Left = 284
        Top = 24
        Width = 22
        Height = 13
        Caption = 'LRG'
      end
      object Label41: TLabel
        Left = 362
        Top = 24
        Width = 14
        Height = 13
        Caption = 'CK'
      end
      object Label42: TLabel
        Left = 483
        Top = 24
        Width = 19
        Height = 13
        Caption = 'CAJ'
      end
      object Label12: TLabel
        Left = 523
        Top = 24
        Width = 15
        Height = 13
        Caption = 'PD'
      end
      object Label43: TLabel
        Left = 563
        Top = 24
        Width = 14
        Height = 13
        Caption = 'PP'
      end
      object Label16: TLabel
        Left = 603
        Top = 24
        Width = 21
        Height = 13
        Caption = 'BTS'
      end
      object Label44: TLabel
        Left = 643
        Top = 24
        Width = 21
        Height = 13
        Caption = 'BTB'
      end
      object Label17: TLabel
        Left = 683
        Top = 24
        Width = 18
        Height = 13
        Caption = 'WP'
      end
      object Label19: TLabel
        Left = 723
        Top = 24
        Width = 14
        Height = 13
        Caption = 'SC'
      end
      object Label21: TLabel
        Left = 763
        Top = 24
        Width = 14
        Height = 13
        Caption = 'KP'
      end
      object Label22: TLabel
        Left = 803
        Top = 24
        Width = 15
        Height = 13
        Caption = 'BO'
      end
      object Label23: TLabel
        Left = 843
        Top = 24
        Width = 22
        Height = 13
        Caption = 'KTR'
      end
      object Label18: TLabel
        Left = 884
        Top = 24
        Width = 19
        Height = 13
        Caption = 'SLL'
      end
      object Ed101: TwwDBEdit
        Left = 8
        Top = 40
        Width = 33
        Height = 19
        DataField = 'LD'
        DataSource = HasilTenunFrm.dsDetail
        TabOrder = 0
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
        OnKeyPress = Ed101KeyPress
      end
      object Ed102: TwwDBEdit
        Left = 48
        Top = 40
        Width = 33
        Height = 19
        DataField = 'LB'
        DataSource = HasilTenunFrm.dsDetail
        TabOrder = 1
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
        OnKeyPress = Ed101KeyPress
      end
      object Ed103: TwwDBEdit
        Left = 88
        Top = 40
        Width = 33
        Height = 19
        DataField = 'LT'
        DataSource = HasilTenunFrm.dsDetail
        TabOrder = 2
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
        OnKeyPress = Ed101KeyPress
      end
      object Ed104: TwwDBEdit
        Left = 128
        Top = 40
        Width = 33
        Height = 19
        DataField = 'LK'
        DataSource = HasilTenunFrm.dsDetail
        TabOrder = 3
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
        OnKeyPress = Ed101KeyPress
      end
      object Ed106: TwwDBEdit
        Left = 206
        Top = 40
        Width = 33
        Height = 19
        DataField = 'LL'
        DataSource = HasilTenunFrm.dsDetail
        TabOrder = 5
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
        OnKeyPress = Ed101KeyPress
      end
      object Ed109: TwwDBEdit
        Left = 323
        Top = 40
        Width = 33
        Height = 19
        DataField = 'WL'
        DataSource = HasilTenunFrm.dsDetail
        TabOrder = 8
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
        OnKeyPress = Ed101KeyPress
      end
      object Ed111: TwwDBEdit
        Left = 403
        Top = 40
        Width = 33
        Height = 19
        DataField = 'OJ'
        DataSource = HasilTenunFrm.dsDetail
        TabOrder = 10
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
        OnKeyPress = Ed101KeyPress
      end
      object Ed112: TwwDBEdit
        Left = 443
        Top = 40
        Width = 33
        Height = 19
        DataField = 'CRT'
        DataSource = HasilTenunFrm.dsDetail
        TabOrder = 11
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
        OnKeyPress = Ed101KeyPress
      end
      object Ed105: TwwDBEdit
        Left = 167
        Top = 40
        Width = 33
        Height = 19
        DataField = 'PL'
        DataSource = HasilTenunFrm.dsDetail
        TabOrder = 4
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
        OnKeyPress = Ed101KeyPress
      end
      object Ed107: TwwDBEdit
        Left = 245
        Top = 40
        Width = 33
        Height = 19
        DataField = 'LPT'
        DataSource = HasilTenunFrm.dsDetail
        TabOrder = 6
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
        OnKeyPress = Ed101KeyPress
      end
      object Ed108: TwwDBEdit
        Left = 284
        Top = 40
        Width = 33
        Height = 19
        DataField = 'LRG'
        DataSource = HasilTenunFrm.dsDetail
        TabOrder = 7
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
        OnKeyPress = Ed101KeyPress
      end
      object Ed110: TwwDBEdit
        Left = 362
        Top = 40
        Width = 33
        Height = 19
        DataField = 'CKK'
        DataSource = HasilTenunFrm.dsDetail
        TabOrder = 9
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
        OnKeyPress = Ed101KeyPress
      end
      object Ed113: TwwDBEdit
        Left = 483
        Top = 40
        Width = 33
        Height = 19
        DataField = 'CAJ'
        DataSource = HasilTenunFrm.dsDetail
        TabOrder = 12
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
        OnKeyPress = Ed101KeyPress
      end
      object Ed114: TwwDBEdit
        Left = 523
        Top = 40
        Width = 33
        Height = 19
        DataField = 'PD'
        DataSource = HasilTenunFrm.dsDetail
        TabOrder = 13
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
        OnKeyPress = Ed101KeyPress
      end
      object Ed115: TwwDBEdit
        Left = 563
        Top = 40
        Width = 33
        Height = 19
        DataField = 'PKP'
        DataSource = HasilTenunFrm.dsDetail
        TabOrder = 14
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
        OnKeyPress = Ed101KeyPress
      end
      object Ed116: TwwDBEdit
        Left = 603
        Top = 40
        Width = 33
        Height = 19
        DataField = 'NG'
        DataSource = HasilTenunFrm.dsDetail
        TabOrder = 15
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
        OnKeyPress = Ed101KeyPress
      end
      object Ed117: TwwDBEdit
        Left = 643
        Top = 40
        Width = 33
        Height = 19
        DataField = 'BTB'
        DataSource = HasilTenunFrm.dsDetail
        TabOrder = 16
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
        OnKeyPress = Ed101KeyPress
      end
      object Ed118: TwwDBEdit
        Left = 683
        Top = 40
        Width = 33
        Height = 19
        DataField = 'WP'
        DataSource = HasilTenunFrm.dsDetail
        TabOrder = 17
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
        OnKeyPress = Ed118KeyPress
      end
      object Ed119: TwwDBEdit
        Left = 723
        Top = 40
        Width = 33
        Height = 19
        DataField = 'SC'
        DataSource = HasilTenunFrm.dsDetail
        TabOrder = 18
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
        OnKeyPress = Ed101KeyPress
      end
      object Ed120: TwwDBEdit
        Left = 763
        Top = 40
        Width = 33
        Height = 19
        DataField = 'KP'
        DataSource = HasilTenunFrm.dsDetail
        TabOrder = 19
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
        OnKeyPress = Ed101KeyPress
      end
      object Ed121: TwwDBEdit
        Left = 803
        Top = 40
        Width = 33
        Height = 19
        DataField = 'BO'
        DataSource = HasilTenunFrm.dsDetail
        TabOrder = 20
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
        OnKeyPress = Ed101KeyPress
      end
      object Ed122: TwwDBEdit
        Left = 843
        Top = 40
        Width = 33
        Height = 19
        DataField = 'TCS'
        DataSource = HasilTenunFrm.dsDetail
        TabOrder = 21
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
        OnKeyPress = Ed101KeyPress
      end
      object Ed123: TwwDBEdit
        Left = 884
        Top = 40
        Width = 33
        Height = 19
        DataField = 'SLL'
        DataSource = HasilTenunFrm.dsDetail
        TabOrder = 22
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
        OnKeyPress = Ed123KeyPress
      end
    end
    object GroupBox5: TGroupBox
      Left = 347
      Top = 113
      Width = 136
      Height = 79
      Caption = ' Data '
      Color = 10743288
      ParentColor = False
      TabOrder = 3
      object Label48: TLabel
        Left = 11
        Top = 24
        Width = 20
        Height = 13
        Caption = 'PJG'
      end
      object Label49: TLabel
        Left = 51
        Top = 24
        Width = 21
        Height = 13
        Caption = 'LBR'
      end
      object Label50: TLabel
        Left = 90
        Top = 24
        Width = 22
        Height = 13
        Caption = 'CUP'
      end
      object Ed41: TwwDBEdit
        Left = 11
        Top = 38
        Width = 33
        Height = 19
        DataField = 'UTB'
        DataSource = HasilTenunFrm.dsDetail
        TabOrder = 0
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
        OnKeyPress = Ed101KeyPress
      end
      object Ed42: TwwDBEdit
        Left = 51
        Top = 38
        Width = 33
        Height = 19
        DataField = 'LBK'
        DataSource = HasilTenunFrm.dsDetail
        TabOrder = 1
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
        OnKeyPress = Ed101KeyPress
      end
      object Ed43: TwwDBEdit
        Left = 90
        Top = 38
        Width = 33
        Height = 19
        DataField = 'CUP'
        DataSource = HasilTenunFrm.dsDetail
        TabOrder = 2
        UnboundDataType = wwDefault
        WantReturns = False
        WordWrap = False
        OnKeyPress = Ed43KeyPress
      end
    end
  end
  object wwTable1: TwwTable
    SyncSQLByRange = False
    NarrowSearch = False
    ValidateWithMask = True
    Left = 360
    Top = 144
  end
end
