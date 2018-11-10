uses crt, dos;
var x,y,m,j,i:integer; s:char; deltat,t,t1:real;

function laysaocuathoigianhientai:real;
var h,m,s,ss:word; rs:real;
begin
        gettime(h,m,s,ss);
        rs:=((h*60+m)*60+s)*1000+ss;
        laysaocuathoigianhientai:=rs;
end;
begin

gotoxy(0,0);
        randomize;
        repeat

                clrscr;
                gotoxy(1,22);
                write('nhan esc de thoat chuong trinh');
                x:=random(70);
                y:=random(20);
                if (x<>1) and (y<>22) then gotoXY(x,y);
                j:=random(93)+32;
                writeln(chr(j));
                t:=laysaocuathoigianhientai;
                deltat:=0;
                while (keypressed=false) and (deltat<3000) do
                begin
                        t1:=laysaocuathoigianhientai;
                        deltat:=t1-t;


                end;
                s:=readkey;
                if keypressed=true then write(s);
                if (s=chr(27)) then break
                else if (deltat>3000) OR (s<>chr(j)) then
                write('lose')
                else if s=chr(j) then write('win');
                readln;




        until s=chr(27);


end.
