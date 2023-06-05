unit fMain;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, FileUtil, Forms, Controls, Graphics, Dialogs, StdCtrls,
  LCLType;

type

  { TForm1 }

  TForm1 = class(TForm)
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.lfm}

{ TForm1 }

procedure TForm1.Button1Click(Sender: TObject);
var
  ch1: Char;
  ch2: TUTF8Char;
begin
  ch1:= #90;  //буква Z
  ch2:= 'Я';
  ShowMessage(ch1 + #13 + ch2); //вывод двухстрочного сообщения
end;

end.

