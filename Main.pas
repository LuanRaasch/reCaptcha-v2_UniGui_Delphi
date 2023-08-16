unit Main;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIRegClasses, uniGUIForm, uniButton, uniBitBtn, uniEdit,
  uniGUIBaseClasses, uniLabel, uniPanel, uniHTMLFrame, uniReCAPTCHA;

type
  TMainForm = class(TUniForm)
    UniLabel1: TUniLabel;
    userEdt: TUniEdit;
    UniLabel2: TUniLabel;
    SenhaEdt: TUniEdit;
    UniLabel3: TUniLabel;
    loginBtn: TUniBitBtn;
    UniBitBtn2: TUniBitBtn;
    UniReCAPTCHA1: TUniReCAPTCHA;
    procedure loginBtnClick(Sender: TObject);
    procedure validarLogin;
    procedure UniReCAPTCHA1Verified(Sender: TObject);
    procedure UniBitBtn2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }

    var
    telaInicial :TFrame;
  end;

function MainForm: TMainForm;

implementation

{$R *.dfm}

uses
  uniGUIVars, MainModule, uniGUIApplication, ServerModule, unitEmpresa,
  unitFormEmpresa;

function MainForm: TMainForm;
begin
  Result := TMainForm(UniMainModule.GetFormInstance(TMainForm));
end;

procedure TMainForm.loginBtnClick(Sender: TObject);
begin
  if (userEdt.Text = EmptyStr) or (SenhaEdt.Text = EmptyStr) then
    ShowToast('Todos os campos precisam ser preenchidos!')
  else
    UniReCAPTCHA1.Visible := True;
end;

procedure TMainForm.UniBitBtn2Click(Sender: TObject);
begin
  userEdt.Clear;
  senhaEdt.Clear;
end;

procedure TMainForm.UniReCAPTCHA1Verified(Sender: TObject);
begin
  validarLogin;
end;

procedure TMainForm.validarLogin;
var
senha: String;
user: String;
begin
  Try
    user  := 'Luan Carlos';
    senha := '062023';

    if (user = useredt.Text) and (senha = senhaedt.Text) then
      begin
        ShowToast('Login efetuado com sucesso!');
        uniform1.Show;
      end
    else
      ShowToast('Usuário ou senha incorreto!');
    Except on E: Exception do
      ShowMessage('Erro inesperado, contate o administrador')
  End;
end;


initialization
  RegisterAppFormClass(TMainForm);

end.
