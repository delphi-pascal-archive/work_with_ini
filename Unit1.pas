unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, IniFiles, StdCtrls, ComCtrls, ExtCtrls, Menus, Buttons;

type
  TForm1 = class(TForm)
    CheckBox1: TCheckBox;
    Edit1: TEdit;
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    TabSheet2: TTabSheet;
    RadioGroup1: TRadioGroup;
    ListBox1: TListBox;
    Button1: TButton;
    MainMenu1: TMainMenu;
    File1: TMenuItem;
    N11: TMenuItem;
    N21: TMenuItem;
    FontDialog1: TFontDialog;
    Button2: TButton;
    TrackBar1: TTrackBar;
    UpDown1: TUpDown;
    Edit2: TEdit;
    ColorBox1: TColorBox;
    Panel1: TPanel;
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure ColorBox1Change(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  LBFontStyle: integer;

implementation

{$R *.dfm}

procedure TForm1.FormCreate(Sender: TObject);
var
 Ini: Tinifile;
 List: TStringList;
 i: integer;
begin
 // Открываем файл
 // Размер и позиция формы
 Ini:=TiniFile.Create(ExtractFilePath(paramstr(0))+'Installation.ini');
 Form1.Width:=Ini.ReadInteger('FormSize','Width',Form1.Width);
 Form1.Height:=Ini.ReadInteger('FormSize','Height',Form1.Height);
 Form1.Left:=Ini.ReadInteger('FormPosition','X',Form1.Left);
 Form1.Top:=Ini.ReadInteger('FormPosition','Y',Form1.Top);
 // Состояние  CheckBox1
 CheckBox1.Checked := Ini.ReadBool('CheckBox1','Checked', false{Состояние CheckBox1 при первой загрузке });
 // Текст в Edit1
 Edit1.Text:= Ini.ReadString('Edit1','Text',Edit1.Text);
 PageControl1.ActivePageIndex:=  Ini.ReadInteger('PageControl1', 'ActivePage', PageControl1.ActivePageIndex);
 RadioGroup1.ItemIndex:= Ini.ReadInteger('RadioGroup1','ItemIndex', RadioGroup1.ItemIndex);
 List := TStringList.Create;
 Ini.ReadSection('ListBox1',List);
 for i := 0 to List.Count - 1 do
  ListBox1.Items.Add(Ini.ReadString('ListBox1', List.Strings[i], ''));
 List.Destroy;
 N11.Checked:=  Ini.Readbool('MainMenu1','Пункт1', true);
 N21.Checked:=  Ini.Readbool('MainMenu1','Пункт2', false);
 ListBox1.Font.Name:= Ini.ReadString('LBFont','Name', ListBox1.Font.Name);
 ListBox1.Font.Size:= Ini.ReadInteger('LBFont','Size', ListBox1.Font.Size);
 LBFontStyle:= Ini.ReadInteger('LBFont','Style', LBFontStyle);
 TrackBar1.Position:=Ini.ReadInteger('TrackBar1','Position', TrackBar1.Position);
 UpDown1.Position:=Ini.ReadInteger('UpDown1','Position', UpDown1.Position);
 ColorBox1.ItemIndex:= Ini.ReadInteger('ColorBox1','ColorSelected', ColorBox1.ItemIndex);
 Ini.Free;
 if  LBFontStyle = 0 then
 ListBox1.Font.Style:= [];
 if  LBFontStyle = 1 then
 ListBox1.Font.Style:= [fsItalic];
 if  LBFontStyle = 2 then
 ListBox1.Font.Style:= [fsBold];
 if  LBFontStyle = 3 then
 ListBox1.Font.Style:= [fsBold,fsItalic];
 Panel1.Color:= ColorBox1.Selected;
end;

procedure TForm1.FormDestroy(Sender: TObject);
var
 Ini: Tinifile; // необходимо создать объект, чтоб потом с ним работать
 i: integer;
begin
 // Создали файл в директории программы
 Ini:=TiniFile.Create(ExtractFilePath(paramstr(0))+'Installation.ini');
 Ini.WriteInteger('FormSize','Width',Form1.Width);
 Ini.WriteInteger('FormSize','Height',Form1.Height);
 Ini.WriteInteger('FormPosition','X',Form1.Left);
 Ini.WriteInteger('FormPosition','Y',Form1.Top);
 Ini.WriteBool('CheckBox1','Checked',CheckBox1.Checked);
 Ini.WriteString('Edit1','Text',Edit1.Text);
 Ini.WriteInteger('PageControl1', 'ActivePage', PageControl1.ActivePageIndex);
 Ini.WriteInteger('RadioGroup1','ItemIndex', RadioGroup1.ItemIndex);
 for i := 0 to ListBox1.Items.Count - 1 do
  Ini.WriteString('ListBox1', 'ItemsList' + IntToStr(i+1), ListBox1.Items.Strings[i]);
 Ini.WriteBool('MainMenu1','Пункт1', N11.Checked);
 Ini.WriteBool('MainMenu1','Пункт2', N21.Checked);
 Ini.WriteString('LBFont','Name', ListBox1.Font.Name);
 Ini.WriteInteger('LBFont','Size', ListBox1.Font.Size);
 Ini.WriteInteger('LBFont','Style', LBFontStyle);
 Ini.WriteInteger('TrackBar1','Position', TrackBar1.Position);
 Ini.WriteInteger('UpDown1','Position', UpDown1.Position);
 Ini.WriteInteger('ColorBox1','ColorSelected', ColorBox1.ItemIndex);
 Ini.Free;
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
 ListBox1.Items.Add(Edit1.Text);
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
 FontDialog1.Font:= ListBox1.Font;
 if FontDialog1.Execute
 then ListBox1.Font:= FontDialog1.Font;
end;

procedure TForm1.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 if  ListBox1.Font.Style = [] then
 LBFontStyle:= 0;
 if  ListBox1.Font.Style = [fsItalic] then
 LBFontStyle:= 1;
 if  ListBox1.Font.Style = [fsBold] then
 LBFontStyle:= 2;
 if  ListBox1.Font.Style = [fsBold,fsItalic] then
 LBFontStyle:= 3;
end;

procedure TForm1.ColorBox1Change(Sender: TObject);
begin
 Panel1.Color:=ColorBox1.Selected;
end;

end.
