unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ZConnection, StdCtrls, Grids, DBGrids, DB, ZAbstractRODataset,
  ZAbstractDataset, ZDataset, ComCtrls, RpDefine, RpBase, RpSystem, RpRender,
  RpRenderPDF;

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
    StatusBar1: TStatusBar;
    Button1: TButton;
    RvSystem1: TRvSystem;
    RvRenderPDF1: TRvRenderPDF;
    procedure RvSystem1PrintHeader(Sender: TObject);
    procedure RvSystem1Print(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure DBGrid1TitleClick(Column: TColumn);
    procedure btnApagarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btnAlterarClick(Sender: TObject);
    procedure btnIncluirClick(Sender: TObject);
  private
    { Private declarations }
    linha: Real;
    const COLUNA1 = 5;
    const COLUNA2 = 20;
    const COLUNA3 = 70;

    procedure ChamaForm(Codigo: Integer);
  public
    { Public declarations }
    procedure ImprimteTexto(Rave: TRvSystem;
       coluna: Real; linha: Real; Texto: String; Fonte: String = 'Arial';
       tamanho: Integer = 8; cor: TColor = clBlack;
       estilo: TFontStyles = []);
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
var
   icontador: Integer;
   stitulo: String;
begin
   for icontador := 0 to DBGrid1.Columns.Count - 1 do
   begin
      stitulo := DBGrid1.Columns[icontador].Title.Caption;
      stitulo := StringReplace(stitulo,' v','',[rfReplaceAll]);
      stitulo := StringReplace(stitulo,' ^','',[rfReplaceAll]);
      DBGrid1.Columns[icontador].Title.Caption := stitulo;

   end;


   if ZQuery1.SortedFields = Column.FieldName then
   begin
      if ZQuery1.SortType = stAscending then
      begin
         ZQuery1.SortType := stDescending;
         Column.Title.Caption := StringReplace(Column.Title.Caption,' v','',[rfReplaceAll]);
         Column.Title.Caption := Column.Title.Caption + ' v';
      end
      else                                  
      begin
         ZQuery1.SortType := stAscending;
         Column.Title.Caption := StringReplace(Column.Title.Caption,' ^','',[rfReplaceAll]);
         Column.Title.Caption := Column.Title.Caption + ' ^';
      end;
   end
   else
   begin
      ZQuery1.SortedFields := Column.FieldName;
      ZQuery1.SortType := stAscending;
      Column.Title.Caption := StringReplace(Column.Title.Caption,' ^','',[rfReplaceAll]);
      Column.Title.Caption := Column.Title.Caption + ' ^';
   end;
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
   RvSystem1.Execute;
end;


procedure TForm1.ImprimteTexto(Rave: TRvSystem; coluna, linha: Real;
  Texto: String; Fonte: String; tamanho: Integer; cor: TColor; estilo: TFontStyles);
begin
   with Rave.BaseReport do
   begin
      Bold := fsBold in estilo;
      Italic := fsItalic in estilo;
      Underline := fsUnderline in estilo;
      Strikeout := fsStrikeOut in estilo;

      FontName := Fonte;
      FontSize := tamanho;
      FontColor := cor;

      GotoXY(coluna,linha);
      Print(Texto);
   end;
end;


procedure TForm1.RvSystem1Print(Sender: TObject);
begin
   ZQuery2.Close;
   ZQuery2.SQL.Text :=
      'select CODIGO, NOME, ENDERECO ' +
      'from CLIENTE ' +
      'order by NOME';
   ZQuery2.Open;

   linha := linha + 5;

   while ZQuery2.Eof = False do
   begin
      ImprimteTexto(RvSystem1,COLUNA1,linha,
         ZQuery2.FieldByName('CODIGO').AsString);

      ImprimteTexto(RvSystem1,COLUNA2,linha,
         ZQuery2.FieldByName('NOME').AsString);

      ImprimteTexto(RvSystem1,COLUNA3,linha,
         ZQuery2.FieldByName('ENDERECO').AsString);

      linha := linha + 5;

      if linha >= RvSystem1.BaseReport.PageHeight - 10 then
         RvSystem1.BaseReport.NewPage;

      ZQuery2.Next;
   end;


end;

procedure TForm1.RvSystem1PrintHeader(Sender: TObject);
begin
   linha := 5;
   ImprimteTexto(RvSystem1,COLUNA1,linha,'CURSO T?CNICO SENAC',
      'Arial',12,clBlack,[fsBold]);

   ImprimteTexto(RvSystem1,RvSystem1.BaseReport.PageWidth - 30,linha,
      FormatDateTime('dd/mm/yyyy',now),
      'Arial',12,clBlack,[fsBold]);

   linha := linha + 5;
   ImprimteTexto(RvSystem1,COLUNA1,linha,'PROGRAMA??O - Delphi',
      'Arial',12,clBlack,[fsBold]);

   ImprimteTexto(RvSystem1,RvSystem1.BaseReport.PageWidth - 15,linha,
      'Pag. ' + IntToStr(RvSystem1.BaseReport.CurrentPage),
      'Arial',12,clBlack,[fsBold]);

   linha := linha + 10;
   ImprimteTexto(RvSystem1,COLUNA1,linha,'C?digo',
      'Arial',10,clBlue,[fsBold]);
   ImprimteTexto(RvSystem1,COLUNA2,linha,'Nome',
      'Arial',10,clBlue,[fsBold]);
   ImprimteTexto(RvSystem1,COLUNA3,linha,'Endere?o',
      'Arial',10,clBlue,[fsBold]);
end;

end.
