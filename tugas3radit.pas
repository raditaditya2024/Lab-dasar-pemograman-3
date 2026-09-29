program tiket;
uses crt;

var
jenis,hari,jumlah : integer;
harga,hargatkt,diskon,total: real;

begin
    clrscr;
    writeln('================================================');
    writeln('|                 JENIS FILM                   |');
    writeln('================================================');
    writeln('| 1.Reguler ( Rp.30.000 )                      |');
    writeln('| 2.3D      ( Rp.45.000 )                      |');
    writeln('| 3.IMAX    ( Rp.60.000 )                      |');
    writeln('================================================');
    writeln('                                                ');
    writeln('================================================');
    writeln('|                    HARI                      |');
    writeln('================================================');
    writeln('| 1.Senin - Kamis   ( tidak ada tambahan )     |');
    writeln('| 2.Jumat           ( naik Rp.5.000/tiket )    |');
    writeln('| 3.Sabtu - Minggu  ( naik Rp.10.000/tiket )   |');
    writeln('================================================');
    writeln('                                                ');
    write('Masukan Jenis Film : ');
    readln(jenis);
    write('Masukan Hari : ');
    readln(hari);
    write('Masukan Jumlah Tiket : ');
    readln(jumlah);

    case jenis of
    1: harga:= 30000;
    2: harga:= 45000;
    3: harga:= 60000;
    else
    begin
        writeln('jenis film tidak ada');
    end
    end;

    hargatkt := harga * jumlah;

    if hari = 3 then
    begin
    hargatkt := hargatkt + (10000 * jumlah);
    end
    else if hari = 2 then
    begin
    hargatkt := hargatkt + (5000 * jumlah);
    end
    else if hari = 1 then
    begin
    hargatkt := hargatkt + 0;
    end
    else
    begin
    writeln ('hari tidak valid');
    end;
    

    if hargatkt >= 200000 then
    begin
    diskon := hargatkt * 0.10;
    end
    else if hargatkt >= 100000 then
    begin
    diskon := hargatkt * 0.05;
    end
    else
    begin
    diskon := 0;
    end;

    total := hargatkt - diskon;

    writeln('================================================');
    writeln('|                    STRUK                     |');
    writeln('================================================');
    writeln('            Harga Tiket : RP.',hargatkt:0:0);
    writeln('            Diskon      : Rp.',diskon:0:0);
    writeln('            Total Bayar : Rp.',total:0:0);
    writeln('================================================');
        
end.