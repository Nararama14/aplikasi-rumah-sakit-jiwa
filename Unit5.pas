unit Unit5;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, jpeg, ExtCtrls;

type
  TForm5 = class(TForm)
    Panel1: TPanel;
    GroupBox1: TGroupBox;
    Image1: TImage;
    Label1: TLabel;
    Label2: TLabel;
    Label4: TLabel;
    Label6: TLabel;
    eperawat: TEdit;
    enama: TEdit;
    ealamat: TEdit;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button1: TButton;
    ecari: TEdit;
    DBGrid1: TDBGrid;
    ejaga: TComboBox;
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
  Form5: TForm5;

implementation

uses Unit4, Unit2, Unit11;

{$R *.dfm}

procedure TForm5.Button2Click(Sender: TObject);
begin
dm4.ADOTable2.Insert;
dm4.ADOTable2.FieldByName('id_perawat').AsString := eperawat.Text;
dm4.ADOTable2.FieldByName('nama_perawat').AsString := enama.Text;
dm4.ADOTable2.FieldByName('alamat_perawat').asstring:=ealamat.text;
dm4.ADOTable2.FieldByName('jam_jaga_pasien').asstring:=ejaga.text;
dm4.adotable2.post;
end;

procedure TForm5.Button3Click(Sender: TObject);
begin
dm4.ADOTable2.Edit;
dm4.ADOTable2.FieldByName('id_perawat').AsString := eperawat.Text;
dm4.ADOTable2.FieldByName('nama_perawat').AsString := enama.Text;
dm4.ADOTable2.FieldByName('alamat_perawat').asstring:=ealamat.text;
dm4.ADOTable2.FieldByName('jam_jaga_pasien').asstring:=ejaga.text;
dm4.adotable2.post;
end;

procedure TForm5.Button5Click(Sender: TObject);
begin
 eperawat.Text := ' ';
 enama.Text := ' ';
 ealamat.Text := ' ';
 ejaga.Text := ' ';
end;

procedure TForm5.Button4Click(Sender: TObject);
begin
dm4.ADOTable2.Delete;

end;

procedure TForm5.Button6Click(Sender: TObject);
begin
form2.show;
Form5.Hide;
end;

procedure TForm5.Button1Click(Sender: TObject);
begin
if dm4.ADOTable2.Locate('id_perawat',ecari.Text,[])then
  begin
dm4.ADOTable1.Insert;
eperawat.Text := dm4.ADOTable2.FieldByName('id_perawat').AsString;
enama.Text := dm4.ADOTable2.FieldByName('nama_perawat').AsString;
ealamat.text := dm4.ADOTable2.FieldByName('alamat_perawat').asstring;
ejaga.text := dm4.ADOTable2.FieldByName('jam_jaga_pasien').asstring;
end
else
if not dm4.ADOTable2.locate('id_perawat',ecari.text,[]) then
begin
  ShowMessage('Data Tidak Ada');
  end;
end;

procedure TForm5.Button7Click(Sender: TObject);
begin
form11.QuickRep1.preview;

end;

end.
