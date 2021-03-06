unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ZConnection, StdCtrls, Grids, DBGrids, DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset;

type
  TForm1 = class(TForm)
    ZConnection1: TZConnection;
    ZQuery1: TZQuery;
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    btnIncluir: TButton;
    btnAlterar: TButton;
    btnApagar: TButton;
    ZQuery2: TZQuery;
    procedure DBGrid1TitleClick(Column: TColumn);
    procedure btnApagarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure btnIncluirClick(Sender: TObject);
  private
    { Private declarations }
    procedure ChamaForm(Codigo: Integer);
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses Unit2;

{$R *.dfm}

procedure TForm1.btnIncluirClick(Sender: TObject);
begin
   ChamaForm(0);
end;

procedure TForm1.btnAlterarClick(Sender: TObject);
begin
   ChamaForm(ZQuery1.FieldByName('codigo').AsInteger);
end;

procedure TForm1.FormShow(Sender: TObject);
begin
   ZConnection1.Connect;

   ZQuery1.Close;
   ZQuery1.SQL.Text :=
      'select * from cliente';
   ZQuery1.Open;

   WindowState := wsMaximized;
end;

procedure TForm1.ChamaForm(Codigo: Integer);
begin
   Application.CreateForm(TForm2,Form2);
   Form2.Codigo := Codigo;
   Form2.ShowModal;

   if Form2.ModalResult = mrOk then
   begin
      ZQuery1.Refresh;
      ZQuery1.Last;
   end;

   Form2.Free;
end;

procedure TForm1.btnApagarClick(Sender: TObject);
begin
   if Application.MessageBox('Deseja apagar o registro selecionado',
         'Aten??o',MB_YESNO + MB_ICONINFORMATION) = ID_YES then
   begin
      ZQuery2.SQL.Text :=
         'delete from cliente ' +
         'where codigo = :codigo ';
      ZQuery2.ParamByName('codigo').AsInteger :=
         ZQuery1.FieldByName('codigo').AsInteger;

      ZQuery2.ExecSQL;
      ZQuery1.Refresh;
   end;

end;

procedure TForm1.DBGrid1TitleClick(Column: TColumn);
begin
   ZQuery1.SortedFields := Column.FieldName;
end;

end.
