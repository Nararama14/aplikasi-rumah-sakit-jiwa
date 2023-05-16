unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TForm1 = class(TForm)
    Label1: TLabel;
    enama: TEdit;
    epass: TEdit;
    Button1: TButton;
    Button2: TButton;
    ctampilkan: TCheckBox;
    Label2: TLabel;
    Label3: TLabel;
    Button3: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure ctampilkanClick(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses Unit3, Unit2;

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
begin
if (enama.Text='admin') and (epass.Text='kelompok2')
  then
  begin
    Form2.show;
    Form1.Hide;
  end
  else
  Showmessage ('Username atau Password Anda Salah');
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
close;
end;

procedure TForm1.ctampilkanClick(Sender: TObject);
begin
 if ctampilkan.Checked then
  begin
    epass.PasswordChar := #0;
  end
  else
  begin
    epass.PasswordChar := '*';
  end;
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
form2.show;

end;

end.
