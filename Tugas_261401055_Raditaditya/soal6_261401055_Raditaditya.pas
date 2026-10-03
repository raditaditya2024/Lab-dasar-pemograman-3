program soal6;
uses crt;
var
    nt, nuts, nuas, kehadiran, na: real;
    status: string;
    huruf: char;

begin
clrscr;
    //user memasukan nilai dan kehadiran
    write('Masukkan Nilai Tugas (0-100): ');
    readln(nt);
    write('Masukkan Nilai UTS (0-100): ');
    readln(nuts);
    write('Masukkan Nilai UAS (0-100): ');
    readln(nuas);
    write('Masukkan Kehadiran (%) (0-100): ');
    readln(kehadiran);

    //ngecek status lulus atau tidak lulus
    na := (nt * 0.3) + (nuts * 0.3) + (nuas * 0.4);
    if (na >= 60) and (kehadiran >= 80) then
        status := 'LULUS'
    else
        status := 'TIDAK LULUS';

    //ngecek nilai akhir tergolong a,b,c,d,e
    if na >= 85 then
        huruf := 'A'
    else if na >= 75 then
        huruf := 'B'
    else if na >= 60 then
        huruf := 'C'
    else if na >= 50 then
        huruf := 'D'
    else
        huruf := 'E';

    //menampilkan nilai status dan indeks huruf
    writeln;
    writeln('Nilai Akhir: ', na:0:2);
    writeln('Status: ', status);
    writeln('Indeks Huruf: ', huruf);

end.