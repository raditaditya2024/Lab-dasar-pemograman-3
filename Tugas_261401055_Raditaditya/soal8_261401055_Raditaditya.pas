program soal8;
uses crt;
var
    golongan: char;
    jam: integer;
    gaji, lembur, bonus, totalgaji: real;

begin
clrscr;
    // user memasukan golongan dan jam kerja
    write('Masukkan Golongan Karyawan (A/B/C): ');
    readln(golongan);
    write('Masukkan Total Jam Kerja (jam): ');
    readln(jam);

    // case yang ini untuk nentuin golongan dan gajinya
    case upcase(golongan) of
        'A': gaji := 1500000;
        'B': gaji := 2000000;
        'C': gaji := 2500000;
        else begin
            writeln('Golongan tidak valid.');
            exit; // Keluar dari program jika golongan tidak valid
        end;
    end;

    // kondisi semisal jam kerja lebih dari 40 jam,dapat uang lembur
    if jam > 40 then
        lembur := (jam - 40) * 20000
    else
        lembur := 0;

    // kondisi vvip untuk pekerja dari golongan C semisal jam kerja > 50 jam
    if (upcase(golongan) = 'C') and (jam > 50) then
        bonus := 100000
    else
        bonus := 0;

    // total gaji bersih
    totalgaji := gaji + lembur + bonus;

    // nampilin rincian uang yang didapat karyawan dari mana aja
    writeln;
    writeln('Rincian Gaji Karyawan:');
    writeln('Golongan: ', upcase(golongan));
    writeln('Gaji Pokok: Rp', gaji:0:2);
    writeln('Lembur: Rp', lembur:0:2);
    writeln('Bonus: Rp', bonus:0:2);
    writeln('Total Gaji Akhir: Rp', totalgaji:0:2);
end.