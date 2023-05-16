unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, ExtCtrls, StdCtrls, jpeg, frxpngimage;

type
  TForm2 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Image1: TImage;
    Image2: TImage;
    Image3: TImage;
    Image4: TImage;
    Image5: TImage;
    MainMenu1: TMainMenu;
    e1: TMenuItem;
    BiodataKelompok1: TMenuItem;
    procedure Button3Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure e1Click(Sender: TObject);
    procedure BiodataKelompok1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

uses Unit3, Unit5, Unit6, Unit7, Unit8, Unit9;

{$R *.dfm}

procedure TForm2.Button3Click(Sender: TObject);
begin
form3.show;
Form2.Hide;

end;

procedure TForm2.Button5Click(Sender: TObject);
begin
form5.show;
Form2.Hide;
end;

procedure TForm2.Button2Click(Sender: TObject);
begin
form6.show;
Form2.Hide;
end;

procedure TForm2.Button4Click(Sender: TObject);
begin
form7.show;
form2.hide;
end;

procedure TForm2.Button1Click(Sender: TObject);
begin
form8.show;
Form2.Hide;
end;

procedure TForm2.e1Click(Sender: TObject);
begin
  close;
  
end;

procedure TForm2.BiodataKelompok1Click(Sender: TObject);
begin
form9.show;
Form2.Hide;
end;

end.
