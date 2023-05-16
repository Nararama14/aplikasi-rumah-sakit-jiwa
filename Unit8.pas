unit Unit8;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, jpeg, Grids, DBGrids, frxpngimage;

type
  TForm8 = class(TForm)
    GroupBox1: TGroupBox;
    Image1: TImage;
    Label1: TLabel;
    Label2: TLabel;
    Label6: TLabel;
    edokter: TEdit;
    enama: TEdit;
    ealamat: TEdit;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button1: TButton;
    ecari: TEdit;
    Panel1: TPanel;
    Label3: TLabel;
    espesialis: TEdit;
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
  Form8: TForm8;

implementation

uses Unit4, Unit2, Unit14;

{$R *.dfm}

procedure TForm8.Button2Click(Sender: TObject);
begin
dm4.ADOTable5.Insert;
dm4.ADOTable5.FieldByName('id_dokter').AsString := edokter.Text;
dm4.ADOTable5.FieldByName('nama_dokter').AsString := enama.Text;
dm4.ADOTable5.FieldByName('alamat_dokter').asstring:=ealamat.text;
dm4.ADOTable5.FieldByName('spesialis').asstring:=espesialis.text;
dm4.adotable5.post;
end;

procedure TForm8.Button3Click(Sender: TObject);
begin
dm4.ADOTable5.edit;
dm4.ADOTable5.FieldByName('id_dokter').AsString := edokter.Text;
dm4.ADOTable5.FieldByName('nama_dokter').AsString := enama.Text;
dm4.ADOTable5.FieldByName('alamat').asstring:=ealamat.text;
dm4.ADOTable5.FieldByName('spesialis').asstring:=espesialis.text;
dm4.adotable5.post;
end;

procedure TForm8.Button5Click(Sender: TObject);
begin
edokter.Text := ' ';
enama.Text := ' ';
ealamat.Text := ' ';
espesialis.Text := ' ';
end;

procedure TForm8.Button4Click(Sender: TObject);
begin
dm4.adotable5.Delete;
end;

procedure TForm8.Button6Click(Sender: TObject);
begin
Form8.hide;
form2.show;

end;

procedure TForm8.Button1Click(Sender: TObject);
begin
if dm4.ADOTable5.Locate('id_dokter',ecari.Text,[])then
  begin
dm4.ADOTable4.Insert;
edokter.Text := dm4.ADOTable5.FieldByName('id_dokter').AsString;
enama.Text := dm4.ADOTable5.FieldByName('nama_dokter').AsString;
ealamat.text := dm4.ADOTable5.FieldByName('alamat_dokter').asstring;
espesialis.text := dm4.ADOTable5.FieldByName('spesialis').asstring;
end
else
if not dm4.ADOTable5.locate('id_dokter',ecari.text,[]) then
begin
  ShowMessage('Data Tidak Ada');
  end;
end;

procedure TForm8.Button7Click(Sender: TObject);
begin
form14.QuickRep1.preview;
end;

end.
