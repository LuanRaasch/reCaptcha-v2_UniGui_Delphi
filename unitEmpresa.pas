unit unitEmpresa;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics,
  Controls, Forms, uniGUITypes, uniGUIAbstractClasses,
  uniGUIClasses, uniGUIFrame, uniLabel, uniEdit, uniDBEdit, uniBasicGrid,
  uniDBGrid, uniGUIBaseClasses, uniGroupBox, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf,
  FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys,
  FireDAC.Phys.FB, FireDAC.Phys.FBDef, FireDAC.VCLUI.Wait, FireDAC.Stan.Param,
  FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, uniButton, uniBitBtn;

type
  TUniFrame1 = class(TUniFrame)
    UniGroupBox1: TUniGroupBox;
    UniDBGrid1: TUniDBGrid;
    UniDBEdit1: TUniDBEdit;
    UniDBEdit2: TUniDBEdit;
    UniDBEdit3: TUniDBEdit;
    UniDBEdit4: TUniDBEdit;
    UniDBEdit5: TUniDBEdit;
    UniDBEdit6: TUniDBEdit;
    UniLabel1: TUniLabel;
    UniLabel2: TUniLabel;
    UniLabel3: TUniLabel;
    UniLabel4: TUniLabel;
    UniLabel5: TUniLabel;
    UniLabel6: TUniLabel;
    UniLabel7: TUniLabel;
    salvarBtn: TUniBitBtn;
    cancelarBtn: TUniBitBtn;
    connection: TFDConnection;
    TB_Empresas: TFDTable;
    DS_Empresas: TDataSource;
    TB_EmpresasID: TIntegerField;
    TB_EmpresasRAZAO_SOCIAL: TStringField;
    TB_EmpresasNOME_FANTASIA: TStringField;
    TB_EmpresasCNPJ: TStringField;
    TB_EmpresasTELEFONE: TStringField;
    TB_EmpresasEMAIL: TStringField;
    procedure salvarBtnClick(Sender: TObject);
    procedure cancelarBtnClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

implementation

{$R *.dfm}



procedure TUniFrame1.cancelarBtnClick(Sender: TObject);
begin
  try
    UniDBEdit1.Clear;
    UniDBEdit2.Clear;
    UniDBEdit3.Clear;
    UniDBEdit4.Clear;
    UniDBEdit5.Clear;
    UniDBEdit6.Clear;
    ShowToast('Operação Cancelada!');
  Except on E: Exception do
    ShowToast('Erro ao gravar dados!');
  end;
end;

procedure TUniFrame1.salvarBtnClick(Sender: TObject);
begin
  try
    if TB_Empresas.State in [dsInsert] then
       TB_Empresas.Post;
  Except on E: Exception do
    ShowMessage('Erro ao gravar dados!')
  end;
end;

end.
