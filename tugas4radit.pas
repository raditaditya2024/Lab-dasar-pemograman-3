program beasiswa;
uses crt;

var
ipk,penghasilan,jumlah : real;
begin
    clrscr;
    write('Masukan IPK Anda: ');
    readln(ipk);
    write('Masukan Penghasilan Orang Tua: ');
    readln(penghasilan);
    write('Masukan Jumlah Prestasi: ');
    readln(jumlah);

    if (ipk >= 3.75) and (penghasilan <= 5000000) and (jumlah >= 2) then
    begin
        writeln('------------------------------------');
        writeln('| Anda Mendapatkan Beasiswa Penuh! |');
        writeln('------------------------------------');
    end
    else if (ipk >= 3.50) and (penghasilan <= 7000000) and (jumlah >= 1) then
    begin
        writeln('---------------------------------------');
        writeln('| Anda Mendapatkan Beasiswa Sebagian! |');
        writeln('---------------------------------------'); 
    end
    else if ipk < 2.75 then
    begin
        writeln('-------------------------------');
        writeln('| IPK  Tidak memenuhi syarat! |');
        writeln('-------------------------------');
    end
    else if penghasilan > 7000000 then
    begin
        writeln('--------------------------------------');
        writeln('| Penghasilan Tidak Memenuhi syarat! |');
        writeln('--------------------------------------');
    end
    else
    begin
        writeln('------------------------------------');
        writeln('| Anda Tidak Mendapatkan Beasiswa! |');
        writeln('------------------------------------');
    end;

end.