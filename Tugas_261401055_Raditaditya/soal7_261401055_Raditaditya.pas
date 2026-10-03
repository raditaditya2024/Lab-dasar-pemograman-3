program soal7;
uses crt;
var
    kodekendaran: char;
    lamaparkir: integer;
    tarif: real;

begin
clrscr;
    // user memasukan kode kendaraan miliknya dan berapa lama waktu parkir dia
    write('Masukkan Kode Kendaraan (M/K/B): ');
    readln(kodekendaran);
    write('Masukkan Lama Parkir (jam): ');
    readln(lamaparkir);

    // ngitung biaya parkir dengan kode kendaraan dan lama parkir
    case upcase(kodekendaran) of
        'M': begin
            if lamaparkir <= 1 then
                tarif := 5000
            else if lamaparkir > 10 then
                tarif := 30000
            else
                tarif := 5000 + (lamaparkir - 1) * 3000;
        end;
        'K': begin
            if lamaparkir <= 1 then
                tarif := 2000
            else if lamaparkir > 10 then
                tarif := 10000
            else
                tarif := 2000 + (lamaparkir - 1) * 1000;
        end;
        'B': begin
            if lamaparkir <= 1 then
                tarif := 10000
            else if lamaparkir > 10 then
                tarif := 50000
            else
                tarif := 10000 + (lamaparkir - 1) * 5000;
        end;
        else begin
            writeln('Kode kendaraan tidak valid.');
            exit; // Keluar dari program jika kode tidak valid
        end;
    end;

    // nampilin hasil akhir dari perhitungan tarif parkir
    writeln('Tarif Parkir: Rp', tarif:0:2);
end.