program Project1;

{$APPTYPE CONSOLE}

uses
  SysUtils;

var
    x,y,x1,y1,x2,y2:Integer;
    paket1,sigmayi,sigmaxi2,paket2,paket3,paket4,sigmaxi,sigmaxiyi:Real;
    Hasilkons:Real;
  paket1kons, paket2kons, paket3kons, paket4kons, HasilKonstanta : Real;
  paket1koef, paket2koef, paket3koef, paket4koef, HasilKoefisien : Real;
  paket1kore, paket2kore, paket3kore, paket4kore, paket5kore, hasilakarkore, HasilKorelasi : Real;

begin
  { TODO -oUser -cConsole Main : Insert code here }
    Writeln('Nama : Frederikus Klau');
    Writeln('NRP : 152017127');

    write ('masukan nilai x1 = ');Readln(x1);
    write ('masukan nilai y1 = ');Readln(y1);
    write ('masukan nilai x2 = ');Readln(x2);
    write ('masukan nilai y2 = ');Readln(y2);

    sigmayi := y1+y2;
    sigmaxi2 := (x1*x1)+(x2*x2);
    paket1 := sigmayi*sigmaxi2 ;
    Writeln ('Hasil konstanta paket 1 = ',paket1:4:0);

    sigmaxi := x1+x2;
    sigmaxiyi:= (x1*y1)+(x2*y2);
    paket2 := sigmaxi * sigmaxiyi;
    Writeln('Hasil konstanta paket 2 =',paket2 :4:0);

    paket3 := 2*sigmaxi2;
    Writeln('Hasil konstanta paket 3 =',paket3 :4:0);

    Paket4 := sigmaxi * sigmaxi ;
    Writeln('Hasil konstanta paket 4 =',paket4 :4:0);

    HasilKons := (paket1-paket2)/(paket3-paket4);

    Writeln('nilai Konstanta (a) =',HasilKons :4:0);

    paket1koef := 4*sigmaxiyi;
  Writeln ('Hasil Koefisien Paket 1 = ', paket1koef:4:0);

  paket2koef := sigmaxi*sigmayi;
  Writeln ('Hasil Koefisien Paket 2 = ', paket2koef:4:0);

  paket3koef := 4*sigmaxi;
  Writeln ('Hasil Koefisien Paket 3 = ', paket3koef:4:0);

  paket4koef := sigmaxi*sigmaxi;
  Writeln ('Hasil Koefisien Paket 4 = ', paket4koef:4:0);

  HasilKoefisien := (paket1koef-paket2koef)/(paket3koef-paket4koef);
  Writeln ('Hasil Akhir Koefisien (b) = ', HasilKoefisien:0:4);

  Writeln ('------------------------------------------------');
  Writeln ('Persamaan Regresi :   Y = a + bx');
  //PersamaanRegresi := HasilKonstanta + HasilKoefisien;
  Writeln ('Hasil Persamaan Regresi = ', HasilKonstanta:4:0,'+',HasilKoefisien:4:0,'x');
  Writeln ('------------------------------------------------');

  paket1kore := 4*sigmaxiyi;
  Writeln ('Hasil Korelasi Pearson Paket 1 = ', paket1kore:4:0);

  paket2kore := sigmaxi*sigmayi;
  Writeln ('Hasil Korelasi Pearson Paket 2 = ', paket2kore:4:0);

  paket3kore := (4*sigmaxi2)-(sigmaxi*sigmaxi);
  Writeln ('Hasil Korelasi Pearson Paket 3 = ', paket3kore:4:0);

  paket4kore := (4*(sigmayi*sigmayi))-((y1+y2)*(y1+y2));
  Writeln ('Hasil Korelasi Pearson Paket 4 = ', paket4kore:4:2);

  paket5kore := paket3kore*paket4kore;
  hasilakarkore := Sqrt(paket5kore);
  Writeln ('Hasil Akar Paket Bawah Korelasi =', hasilakarkore:4:0);

  HasilKorelasi := (paket1kore-paket2kore)/(hasilakarkore);
  Writeln ('Hasil Akhir Korelasi Pearson (Rxy) = ', HasilKorelasi);
  Writeln ('------------------------------------------------');










    readln;

end.
 