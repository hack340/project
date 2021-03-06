unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Mask, DBCtrls, DB, DBTables, DBClient, Provider;

type
  TForm2 = class(TForm)
    Query1: TQuery;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    DBEdit1: TDBEdit;
    DBEdit2: TDBEdit;
    DBEdit3: TDBEdit;
    DBEdit4: TDBEdit;
    DBEdit5: TDBEdit;
    DBEdit6: TDBEdit;
    btngravar: TButton;
    btncancelar: TButton;
    DataSource1: TDataSource;
    Query2: TQuery;
    DataSetProvider1: TDataSetProvider;
    ClientDataSet1: TClientDataSet;
    procedure btngravarClick(Sender: TObject);
    procedure btncancelarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    icodigo: integer;
  public
    { Public declarations }
    property codigo: integer read icodigo write icodigo;
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

procedure TForm2.FormShow(Sender: TObject);
begin
  ClientDataSet1.close;
  query1.Close;
  query1.SQL.Text:=
      'select * ' +
      'from cliente.dbf ' +
      'where codigo = ' + inttostr(codigo);
  ClientDataSet1.Open;
end;

procedure TForm2.btncancelarClick(Sender: TObject);
begin
  ModalResult:= mrCancel;
end;

procedure TForm2.btngravarClick(Sender: TObject);
begin
  query2.close;
  if codigo = 0 then
  begin
    query2.SQL.Text:=
        'insert into cliente.dbf (codigo, nome, endereco, telefone, nascimento, bairro) ' +
        'values (' + QuotedStr(ClientDataSet1.FieldByName('codigo').AsString) + ', ' +
        QuotedStr(ClientDataSet1.FieldByName('nome').AsString) + ', ' +
        QuotedStr(ClientDataSet1.FieldByName('endereco').AsString) + ', ' +
        QuotedStr(ClientDataSet1.FieldByName('telefone').AsString) + ', ' +
        QuotedStr(ClientDataSet1.FieldByName('bairro').AsString) + ', ' +
        FormatDateTime('mm/dd/yyy'  ) + ', ' +
        )';
  end
  else
  begin
    query2.SQL.Text:=
        'update cliente.dbf set ' +
        'nome= :nome ' +
        'endereco= :endereco ' +
        'telefone= :telefone ' +
        'nascimento= :nascimento ' +
        'bairro= :bairro ' +
        'where codigo= :codigo ';
  end;

  query2.ParamByName('codigo').AsInteger := ClientDataSet1.FieldByName('codigo').AsInteger;
  query2.ParamByName('nome').AsString := ClientDataSet1.FieldByName('nome').AsString;
  query2.ParamByName('endereco').AsString := ClientDataSet1.FieldByName('endereco').AsString;
  query2.ParamByName('nascimento').AsDate := ClientDataSet1.FieldByName('nascimento').AsDateTime;
  query2.ParamByName('telefone').AsInteger := ClientDataSet1.FieldByName('codigo').AsInteger;
  query2.ParamByName('bairro').AsString := ClientDataSet1.FieldByName('codigo').AsString;
  query2.ExecSQL;
end;

end.
