unit Unit6;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, ExtCtrls, StdCtrls, jpeg;

type
  TForm6 = class(TForm)
    GroupBox1: TGroupBox;
    Image1: TImage;
    Label1: TLabel;
    Label2: TLabel;
    Label6: TLabel;
    ekamar: TEdit;
    enama: TEdit;
    egedung: TEdit;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button1: TButton;
    ecari: TEdit;
    Panel1: TPanel;
    DBGrid1: TDBGrid;
    Button7: TButton;
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form6: TForm6;

implementation

uses Unit4, Unit2, Unit12;

{$R *.dfm}

procedure TForm6.Button2Click(Sender: TObject);
begin
dm4.ADOTable3.Insert;
dm4.ADOTable3.FieldByName('id_kamar').AsString := ekamar.Text;
dm4.ADOTable3.FieldByName('nama_ruangan').AsString := enama.Text;
dm4.ADOTable3.FieldByName('gedung').asstring:=egedung.text;
dm4.adotable3.post;
end;

procedure TForm6.Button3Click(Sender: TObject);
begin
dm4.ADOTable3.edit;
dm4.ADOTable3.FieldByName('id_kamar').AsString := ekamar.Text;
dm4.ADOTable3.FieldByName('nama_ruangan').AsString := enama.Text;
dm4.ADOTable3.FieldByName('gedung').asstring:=egedung.text;
dm4.adotable3.post
end;

procedure TForm6.Button5Click(Sender: TObject);
begin
  ekamar.Text := ' ';
  enama.Text := ' ';
  egedung.Text := ' ';
end;

procedure TForm6.Button4Click(Sender: TObject);
begin
dm4.adotable3.delete;
end;

procedure TForm6.Button6Click(Sender: TObject);
begin
form6.hide;
form2.show;
end;

procedure TForm6.Button1Click(Sender: TObject);
begin
if dm4.ADOTable3.Locate('id_kamar',ecari.Text,[])then
  begin
dm4.ADOTable3.Insert;
ekamar.Text := dm4.ADOTable3.FieldByName('id_kamar').AsString;
enama.Text := dm4.ADOTable3.FieldByName('nama_ruangan').AsString;
egedung.text := dm4.ADOTable3.FieldByName('gedung').asstring;
end
else
if not dm4.ADOTable3.locate('id_kamar',ecari.text,[]) then
begin
  ShowMessage('Data Tidak Ada');
  end;
end;

procedure TForm6.Button7Click(Sender: TObject);
begin
form12.QuickRep1.preview;
end;

end.
