program soal10;
uses crt;
var
    hari: integer;

begin
clrscr;
    // user memasukan hari (1-7)
    write('Masukkan nomor hari (1-7): ');
    readln(hari);

    // sistem nentuin nama hari berdasarkan input user
    case hari of
        1: writeln('Hari Senin');
        2: writeln('Hari Selasa');
        3: writeln('Hari Rabu');
        4: writeln('Hari Kamis');
        5: writeln('Hari Jumat');
        6: writeln('Hari Sabtu');
        7: writeln('Hari Minggu');
        else
            // semisal user masukin angka yang bukan dari 1-7, sistem bakal nampilin error
            writeln('Nomor hari tidak valid. Silakan masukkan angka antara 1 hingga 7.');
    end;

end.