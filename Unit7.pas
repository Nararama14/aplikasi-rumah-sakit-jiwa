unit Unit7;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, ExtCtrls, StdCtrls, jpeg;

type
  TForm7 = class(TForm)
    GroupBox1: TGroupBox;
    Image1: TImage;
    Label1: TLabel;
    Label2: TLabel;
    Label6: TLabel;
    eobat: TEdit;
    enama: TEdit;
    eexp: TEdit;
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
  Form7: TForm7;

implementation

uses Unit4, Unit2, Unit13;

{$R *.dfm}

procedure TForm7.Button2Click(Sender: TObject);
begin
dm4.ADOTable4.Insert;
dm4.ADOTable4.FieldByName('id_obat').AsString := eobat.Text;
dm4.ADOTable4.FieldByName('nama_obat').AsString := enama.Text;
dm4.ADOTable4.FieldByName('exp').asstring:=eexp.text;
dm4.adotable4.post;
end;

procedure TForm7.Button3Click(Sender: TObject);
begin
dm4.ADOTable4.edit;
dm4.ADOTable4.FieldByName('id_obat').AsString := eobat.Text;
dm4.ADOTable4.FieldByName('nama_obat').AsString := enama.Text;
dm4.ADOTable4.FieldByName('exp').asstring:=eexp.text;
dm4.adotable4.post;
end;

procedure TForm7.Button5Click(Sender: TObject);
begin
  eobat.Text := ' ';
  enama.Text := ' ';
  eexp.Text := ' ';
end;

procedure TForm7.Button4Click(Sender: TObject);
begin
 dm4.adotable4.delete;
end;

procedure TForm7.Button6Click(Sender: TObject);
begin
Form7.hide;
form2.show;

end;

procedure TForm7.Button1Click(Sender: TObject);
begin
if dm4.ADOTable4.Locate('id_obat',ecari.Text,[])then
  begin
dm4.ADOTable4.Insert;
eobat.Text := dm4.ADOTable4.FieldByName('id_obat').AsString;
enama.Text := dm4.ADOTable4.FieldByName('nama_obat').AsString;
eexp.text := dm4.ADOTable4.FieldByName('exp').asstring;
end
else
if not dm4.ADOTable4.locate('id_obat',ecari.text,[]) then
begin
  ShowMessage('Data Tidak Ada');
  end;
end;

procedure TForm7.Button7Click(Sender: TObject);
begin
form13.QuickRep1.preview;
end;

end.
