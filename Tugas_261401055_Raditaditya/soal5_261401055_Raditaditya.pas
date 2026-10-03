program soal5;
uses crt;

var
    m, n, i, j, tl, ttl: integer;
    nilai, total, ratarata: real;

begin
    clrscr;
    // user memasukan jumlah mahasiswa dan tugas
    write('Masukkan jumlah mahasiswa (m): ');
    readln(m);
    write('Masukkan jumlah tugas (n): ');
    readln(n);

    tl := 0;
    ttl := 0;

    // perulangan untuk input nilai setiap mahasiswa
    for i := 1 to m do
    begin
        total := 0;
        // user memasukan nilai mahasiswa
        writeln('Masukkan nilai mahasiswa ', i, ':');

        for j := 1 to n do
        begin
            write('Nilai Tugas ', j, ': ');
            readln(nilai);
            total := total + nilai;
        end;

        ratarata := total / n;

        writeln('Rata-rata mahasiswa ', i, ': ', ratarata:0:2);

        if ratarata >= 65 then
        begin
            writeln('Status: LULUS');
            tl := tl + 1;
        end
        else
        begin
            writeln('Status: TIDAK LULUS');
            ttl := ttl + 1;
        end;

        writeln;
    end;

    writeln('Total mahasiswa LULUS: ', tl);
    writeln('Total mahasiswa TIDAK LULUS: ', ttl);

    readln;
end.
