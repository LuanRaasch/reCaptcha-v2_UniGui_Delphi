object UniForm1: TUniForm1
  Left = 0
  Top = 0
  ClientHeight = 590
  ClientWidth = 1114
  Caption = 'UniForm1'
  BorderStyle = bsNone
  OldCreateOrder = False
  MonitoredKeys.Keys = <>
  PixelsPerInch = 96
  TextHeight = 13
  object UniGroupBox1: TUniGroupBox
    Left = 0
    Top = 0
    Width = 1114
    Height = 590
    Hint = ''
    Caption = 'Empresas'
    Align = alClient
    TabOrder = 0
    object UniDBGrid1: TUniDBGrid
      Left = 17
      Top = 176
      Width = 642
      Height = 361
      Hint = ''
      DataSource = DS_Empresas
      LoadMask.Message = 'Loading data...'
      TabOrder = 1
    end
    object UniDBEdit1: TUniDBEdit
      Left = 80
      Top = 48
      Width = 265
      Height = 22
      Hint = ''
      DataField = 'NOME_FANTASIA'
      DataSource = DS_Empresas
      TabOrder = 2
    end
    object UniDBEdit2: TUniDBEdit
      Left = 233
      Top = 100
      Width = 210
      Height = 22
      Hint = ''
      DataField = 'TELEFONE'
      DataSource = DS_Empresas
      TabOrder = 3
    end
    object UniDBEdit3: TUniDBEdit
      Left = 351
      Top = 48
      Width = 308
      Height = 22
      Hint = ''
      DataField = 'RAZAO_SOCIAL'
      DataSource = DS_Empresas
      TabOrder = 4
    end
    object UniDBEdit4: TUniDBEdit
      Left = 17
      Top = 100
      Width = 210
      Height = 22
      Hint = ''
      DataField = 'CNPJ'
      DataSource = DS_Empresas
      TabOrder = 5
    end
    object UniDBEdit5: TUniDBEdit
      Left = 17
      Top = 48
      Width = 57
      Height = 22
      Hint = ''
      DataField = 'ID'
      DataSource = DS_Empresas
      TabOrder = 6
    end
    object UniDBEdit6: TUniDBEdit
      Left = 449
      Top = 100
      Width = 210
      Height = 22
      Hint = ''
      DataField = 'EMAIL'
      DataSource = DS_Empresas
      TabOrder = 7
    end
    object UniLabel1: TUniLabel
      Left = 80
      Top = 29
      Width = 75
      Height = 13
      Hint = ''
      Caption = 'Nome Fantasia:'
      TabOrder = 8
    end
    object UniLabel2: TUniLabel
      Left = 17
      Top = 29
      Width = 15
      Height = 13
      Hint = ''
      Caption = 'ID:'
      TabOrder = 9
    end
    object UniLabel3: TUniLabel
      Left = 351
      Top = 29
      Width = 64
      Height = 13
      Hint = ''
      Caption = 'Raz'#227'o Social:'
      TabOrder = 10
    end
    object UniLabel4: TUniLabel
      Left = 17
      Top = 81
      Width = 29
      Height = 13
      Hint = ''
      Caption = 'CNPJ:'
      TabOrder = 11
    end
    object UniLabel5: TUniLabel
      Left = 233
      Top = 81
      Width = 46
      Height = 13
      Hint = ''
      Caption = 'Telefone:'
      TabOrder = 12
    end
    object UniLabel6: TUniLabel
      Left = 449
      Top = 81
      Width = 28
      Height = 13
      Hint = ''
      Caption = 'Email:'
      TabOrder = 13
    end
    object UniLabel7: TUniLabel
      Left = 17
      Top = 157
      Width = 50
      Height = 13
      Hint = ''
      Caption = 'Empresas:'
      TabOrder = 14
    end
    object salvarBtn: TUniBitBtn
      Left = 1006
      Top = 551
      Width = 75
      Height = 25
      Hint = ''
      Caption = 'Salvar'
      TabOrder = 15
      OnClick = salvarBtnClick
    end
    object cancelarBtn: TUniBitBtn
      Left = 844
      Top = 551
      Width = 75
      Height = 25
      Hint = ''
      Caption = 'Cancelar'
      TabOrder = 16
      OnClick = cancelarBtnClick
    end
    object UniBitBtn1: TUniBitBtn
      Left = 925
      Top = 551
      Width = 75
      Height = 25
      Hint = ''
      Caption = 'Novo'
      TabOrder = 17
      OnClick = UniBitBtn1Click
    end
  end
  object connection: TFDConnection
    Params.Strings = (
      
        'Database=C:\Users\luanr\OneDrive\'#193'rea de Trabalho\SISTEMA\Banco ' +
        'de dados\BANCOESTOQUE.FDB'
      'User_Name=SYSDBA'
      'Password=masterkey'
      'DriverID=FB')
    Connected = True
    LoginPrompt = False
    Left = 488
    Top = 544
  end
  object TB_Empresas: TFDTable
    Active = True
    IndexFieldNames = 'ID'
    Connection = connection
    TableName = 'EMPRESA_PRODUTO'
    Left = 560
    Top = 544
    object TB_EmpresasID: TIntegerField
      AutoGenerateValue = arAutoInc
      DisplayWidth = 7
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object TB_EmpresasRAZAO_SOCIAL: TStringField
      DisplayWidth = 48
      FieldName = 'RAZAO_SOCIAL'
      Origin = 'RAZAO_SOCIAL'
      Required = True
      Size = 40
    end
    object TB_EmpresasNOME_FANTASIA: TStringField
      DisplayWidth = 47
      FieldName = 'NOME_FANTASIA'
      Origin = 'NOME_FANTASIA'
      Required = True
      Size = 40
    end
    object TB_EmpresasCNPJ: TStringField
      DisplayWidth = 36
      FieldName = 'CNPJ'
      Origin = 'CNPJ'
      Required = True
      Size = 18
    end
    object TB_EmpresasTELEFONE: TStringField
      DisplayWidth = 51
      FieldName = 'TELEFONE'
      Origin = 'TELEFONE'
      Size = 13
    end
    object TB_EmpresasEMAIL: TStringField
      DisplayWidth = 30
      FieldName = 'EMAIL'
      Origin = 'EMAIL'
      Size = 30
    end
  end
  object DS_Empresas: TDataSource
    DataSet = TB_Empresas
    Left = 632
    Top = 544
  end
end
