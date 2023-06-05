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
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
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

procedure TForm1.Button2Click(Sender: TObject);
var
  s1: String; //он же AnsiString
  s2: ShortString;
  s3: PChar;
begin
  s1:= 'Это строка из пяти слов!';

  //Теперь присвоим тот же текст в ShortString:
  s2:= s1;

  //Тот же текст в PChar. Для преобразования строки в этот тип
  //используем функцию PChar():
  s3:= PChar(s1);

  //Соберем сообщение из трех разнотиповых строк. Каждый тип
  //выведем в отдельной строчке:
  ShowMessage(s1 + #13 + s2 + #13 + s3);
end;

end.

