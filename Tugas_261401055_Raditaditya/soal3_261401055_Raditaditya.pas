program soal3;
uses crt;
var
    n, i, pilihan: integer;

begin
clrscr;
    // user memasukan nilai n dan kategori deret
    write('Masukkan nilai n: ');
    readln(n);
    writeln('Pilih kategori deret:');
    writeln('1. Ganjil');
    writeln('2. Genap');
    write('Pilihan (1/2): ');
    readln(pilihan);

    i := 1;
    writeln('Deret angka hasil penyaringan:');
    while i <= n do
    begin
        // sistem ngecek apakah angka sesuai kategori deret yang dipilih
        if (pilihan = 1) and (i mod 2 = 0) then
        begin
            i := i + 1;
            continue; // lewati angka genap jika user memilih ganjil
        end
        else if (pilihan = 2) and (i mod 2 <> 0) then
        begin
            i := i + 1;
            continue; // lewati angka ganjil jika user memilih genap
        end;

        // sistem ngecek apakah angka merupakan kelipatan 5, jika iya lewati
        if i mod 5 = 0 then
        begin
            i := i + 1;
            continue; // lewati angka kelipatan 5
        end;

        // tampilkan angka yang lolos penyaringan ke layar
        writeln(i);
        i := i + 1;
    end;

end.