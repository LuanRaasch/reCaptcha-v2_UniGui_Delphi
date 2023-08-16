object MainForm: TMainForm
  Left = 0
  Top = 0
  ClientHeight = 371
  ClientWidth = 325
  Caption = 'MainForm'
  BorderStyle = bsNone
  OldCreateOrder = False
  MonitoredKeys.Keys = <>
  PixelsPerInch = 96
  TextHeight = 13
  object UniLabel1: TUniLabel
    Left = 64
    Top = 64
    Width = 40
    Height = 13
    Hint = ''
    Caption = 'Usu'#225'rio:'
    TabOrder = 0
  end
  object userEdt: TUniEdit
    Left = 64
    Top = 83
    Width = 185
    Hint = ''
    Text = ''
    TabOrder = 1
  end
  object UniLabel2: TUniLabel
    Left = 64
    Top = 128
    Width = 34
    Height = 13
    Hint = ''
    Caption = 'Senha:'
    TabOrder = 2
  end
  object SenhaEdt: TUniEdit
    Left = 64
    Top = 147
    Width = 185
    Hint = ''
    PasswordChar = #8226
    Text = ''
    TabOrder = 3
  end
  object UniLabel3: TUniLabel
    Left = 110
    Top = 23
    Width = 92
    Height = 35
    Hint = ''
    Caption = 'Entrar'
    ParentFont = False
    Font.Height = -29
    Font.Style = [fsBold]
    TabOrder = 4
  end
  object loginBtn: TUniBitBtn
    Left = 174
    Top = 184
    Width = 75
    Height = 25
    Hint = ''
    Caption = 'Login'
    TabOrder = 5
    OnClick = loginBtnClick
  end
  object UniBitBtn2: TUniBitBtn
    Left = 64
    Top = 184
    Width = 75
    Height = 25
    Hint = ''
    Caption = 'Cancelar'
    TabOrder = 6
    OnClick = UniBitBtn2Click
  end
  object UniReCAPTCHA1: TUniReCAPTCHA
    Left = 11
    Top = 252
    Width = 302
    Height = 76
    Hint = ''
    Visible = False
    SiteKey = '6LepN7EmAAAAAHTJ39RDf1foYHJ7pf6hA5w6b5DF'
    SecretKey = '6LepN7EmAAAAADa37oELlnQgb2kDX_BzDqHDm2dD'
    OnVerified = UniReCAPTCHA1Verified
  end
end
