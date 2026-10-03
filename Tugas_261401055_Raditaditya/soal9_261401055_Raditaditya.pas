program soal9;
uses crt;
var
    tahun, bulan, hari: integer;
    kabisat: boolean;

begin
clrscr;
    // user memasukan tahun dan bulan
    write('Masukkan Tahun: ');
    readln(tahun);
    write('Masukkan Nomor Bulan (1-12): ');
    readln(bulan);

    // sistem ngecek apakah tahun kabisat atau bukan
    kabisat := (tahun mod 400 = 0) or ((tahun mod 4 = 0) and (tahun mod 100 <> 0));

    // sistem nentuin jumlah hari berdasarkan bulan ama kabisat
    case bulan of
        1, 3, 5, 7, 8, 10, 12: hari := 31;
        4, 6, 9, 11: hari := 30;
        2: if kabisat then
                begin
                hari := 29;
                writeln(tahun,' adalah tahun kabisat');
                end
            else
                begin
                hari := 28;
                writeln(tahun,' bukan tahun kabisat');
                end;
        else begin
            writeln('Nomor bulan tidak valid.');
            exit; // program ngestop jika nomor bulan tidak valid
        end;
    end;

    // nampilin hasil
    writeln('Jumlah hari pada bulan ', bulan, ' tahun ', tahun, ' adalah: ', hari);
end.