unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset, ExtCtrls,
  StdCtrls, Mask, DBCtrls, DBClient, Provider;

type
  TForm2 = class(TForm)
    ZQuery1: TZQuery;
    Label1: TLabel;
    edCodigo: TEdit;
    Label2: TLabel;
    edNome: TEdit;
    Label3: TLabel;
    edEndereco: TEdit;
    Label4: TLabel;
    Label5: TLabel;
    meTelefone: TMaskEdit;
    meNascimento: TMaskEdit;
    btnGravar: TButton;
    btnCancelar: TButton;
    Bevel1: TBevel;
    Label6: TLabel;
    Label7: TLabel;
    cbUF: TComboBox;
    Label8: TLabel;
    dblCidade: TDBLookupComboBox;
    zqcidade: TZQuery;
    DataSource1: TDataSource;
    ZQuery2: TZQuery;
    procedure cbUFChange(Sender: TObject);
    procedure edNomeKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
    procedure edNomeKeyPress(Sender: TObject; var Key: Char);
    procedure btnGravarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
  private
    { Private declarations }
    icodigo: Integer;
  public
    { Public declarations }
    property Codigo: Integer read icodigo write icodigo;
  end;

var
  Form2: TForm2;

implementation

uses Unit1;

{$R *.dfm}

procedure TForm2.btnCancelarClick(Sender: TObject);
begin
   ModalResult := mrCancel;

   // assim tb funcona
   //Close;
end;

procedure TForm2.FormShow(Sender: TObject);
begin
   ZQuery1.Close;
   ZQuery1.SQL.Text :=
      'select * ' +
      'from cliente ' +
      'where codigo = ' + IntToStr(Codigo);
   ZQuery1.Open;


   edCodigo.Text := ZQuery1.FieldByName('codigo').AsString;
   edNome.Text := ZQuery1.FieldByName('nome').AsString;
   edEndereco.Text := ZQuery1.FieldByName('endereco').AsString;
   meTelefone.Text := ZQuery1.FieldByName('telefone').AsString;
   meNascimento.Text := ZQuery1.FieldByName('nascimento').AsString;
   cbUF.ItemIndex := cbUF.Items.IndexOf(ZQuery1.FieldByName('uf').AsString);

   cbUFChange(Sender);

   dblCidade.KeyValue := ZQuery1.FieldByName('cidade').AsString;




end;

procedure TForm2.btnGravarClick(Sender: TObject);
begin
   //valida??es
   if Trim(edNome.Text) = '' then
   begin
      ShowMessage('Informe o nome!');
      edNome.SetFocus;
      Exit;
   end;

   if Trim(edEndereco.Text) = '' then
   begin
      ShowMessage('Informe o endere?o!');
      edEndereco.SetFocus;
      Exit;
   end;

   if Trim(meTelefone.Text) = '' then
   begin
      ShowMessage('Informe o telefone!');
      meTelefone.SetFocus;
      Exit;
   end;

   if StrToDateDef(meNascimento.Text,0) = 0 then
   begin
      ShowMessage('Data inv?lida!');
      meNascimento.SetFocus;
      Exit;
   end;

   if VarToStr(dblCidade.KeyValue) = '' then
   begin
      ShowMessage('Informe a cidade');
      dblCidade.SetFocus;
      Exit;
   end;

   if cbUF.ItemIndex < 0 then
   begin
      ShowMessage('Informe o estado');
      cbUF.SetFocus;
      Exit;
   end;



   ZQuery1.Close;
   if Codigo = 0 then
   begin
      // se entrar aqui ? inclus?o
      ZQuery1.SQL.Text :=
         'insert into cliente (codigo, nome, endereco, telefone, nascimento, cidade, uf) ' +
         'values (:codigo, :nome, :endereco, :telefone, :nascimento, :cidade, :uf) ';

      ZQuery2.Close;
      ZQuery2.SQL.Text :=
         'select nextval(''cliente_codigo_seq'') as novo_codigo ';
      ZQuery2.Open;

      edCodigo.Text := ZQuery2.FieldByName('novo_codigo').AsString;
      ZQuery1.ParamByName('codigo').AsInteger := StrToInt(edCodigo.Text);
      Codigo := StrToInt(edCodigo.Text);
   end
   else
   begin
      // se entrar aqui ? altera??o
      ZQuery1.SQL.Text :=
         'update cliente set ' +
         'nome = :nome, endereco = :endereco, ' +
         'telefone = :telefone, nascimento = :nascimento, ' +
         'cidade = :cidade, uf = :uf ' +
         'where codigo = :codigo';
      ZQuery1.ParamByName('codigo').AsInteger := Codigo;

   end;

   ZQuery1.ParamByName('nome').AsString := edNome.Text;
   ZQuery1.ParamByName('endereco').AsString := edEndereco.Text;
   ZQuery1.ParamByName('telefone').AsInteger := StrToInt(meTelefone.Text);
   ZQuery1.ParamByName('nascimento').AsDate := StrToDate(meNascimento.Text);
   ZQuery1.ParamByName('cidade').AsInteger := dblCidade.KeyValue;
   ZQuery1.ParamByName('uf').AsString := cbUF.Text;

   ZQuery1.ExecSQL;

   //ModalResult := mrOk;
end;

procedure TForm2.edNomeKeyPress(Sender: TObject; var Key: Char);
begin
   if Key = #13 then
      SelectNext(Self.ActiveControl,True,True);
end;

procedure TForm2.edNomeKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
   Label6.Caption := 'C?digo da tecla: ' + IntToStr(Ord(key));
end;

procedure TForm2.cbUFChange(Sender: TObject);
begin
   zqcidade.Close;
   zqcidade.SQL.Text :=
      'select * from cidade ' +
      'where uf = :uf';
   zqcidade.ParamByName('uf').AsString := cbUF.Text;
   zqcidade.Open;

end;

end.
