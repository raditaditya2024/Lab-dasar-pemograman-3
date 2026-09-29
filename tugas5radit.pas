program pemesanan;
uses crt;

var
makanan,status,jumlah : integer;
harga,hargamkn,diskon,total: real;

begin
    clrscr;
    writeln('================================================');
    writeln('|                    MAKANAN                   |');
    writeln('================================================');
    writeln('| 1.Nasi Goreng    ( Rp.20.000 )               |');
    writeln('| 2.Mie Goreng     ( Rp.18.000 )               |');
    writeln('| 3.Ayam Geprek    ( Rp.25.000 )               |');
    writeln('| 3.Steak          ( Rp.50.000 )               |');
    writeln('================================================');
    writeln('                                                ');
    writeln('================================================');
    writeln('|                STATUS PELANGGAN              |');
    writeln('================================================');
    writeln('| 1.Member         ( Dapat Diskon )            |');
    writeln('| 2.Non-member     ( Tidak Dapat Diskon )      |');
    writeln('================================================');
    writeln('                                                ');
    write('Masukan Nomor Makanan : ');
    readln(makanan);
    write('Masukan Jumlah Makanan : ');
    readln(jumlah);
    write('Masukan Status : ');
    readln(status);

    case makanan of
    1: harga:= 20000;
    2: harga:= 18000;
    3: harga:= 25000;
    4: harga:= 50000;
    else
    begin
        writeln('------------------------');
        writeln('| Makanan Tidak Valid! |');
        writeln('------------------------');
    end
    end;

    if jumlah >= 10 then
    begin
    writeln('---------------------------');
    writeln('| Pesanan Terlalu Banyak! |');
    writeln('---------------------------');
    end
    else if jumlah <= 0 then
    begin
    writeln('-------------------------------');
    writeln('| Jumlah Pesanan Tidak Valid! |');
    writeln('-------------------------------');
    end;

    hargamkn := harga * jumlah;


    if (status = 1) and (hargamkn >= 100000) then
    begin
    diskon := hargamkn * 0.15;
    end
    else if (status = 1) and (hargamkn >= 50000)  then
    begin
    diskon := hargamkn * 0.10;
    end
    else if (status = 1) and (hargamkn < 50000)  then
    begin
    diskon := hargamkn * 0.05;
    end
    else if (status = 2) and (hargamkn >= 100000)  then
    begin
    diskon := hargamkn * 0.05;
    end
    else
    begin
    diskon := 0;
    end;

    total := hargamkn - diskon;

    writeln('================================================');
    writeln('|                    STRUK                     |');
    writeln('================================================');
    writeln('            Harga Makanan  : RP.',harga:0:0);
    writeln('            Total Harga    : RP.',hargamkn:0:0);
    writeln('            Diskon         : Rp.',diskon:0:0);
    writeln('            Total Bayar    : Rp.',total:0:0);
    writeln('================================================');
        
end.