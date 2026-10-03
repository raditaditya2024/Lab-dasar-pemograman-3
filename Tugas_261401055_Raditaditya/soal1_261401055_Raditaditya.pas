program soal1;
uses crt;

var
n,i: integer;
harga,total,diskon,bayar:real;

begin
    clrscr;
    //user memasukan jumlah barang
    write('Masukan Jumlah barang: ');
    readln(n);

    total := 0;

    //perulangan untuk input harga barang
    for i := 1 to n do
    begin
        write('Masukan harga barang ke-',i,' : Rp.');
        readln(harga);
        total := total + harga;
    end;

    //menentukan diskon
    if total < 100000 then
    begin
    diskon := 0;
    end
    else if total < 500000 then
    begin
        diskon := total * 0.10;
    end
    else
    begin
        diskon := total * 0.20;
    end;

    bayar := total-diskon;

    //menampilkan rincian belanja
    writeln;
    writeln('TOTAL HARGA : Rp.',total:0:0);
    writeln('DISKON      : Rp.',diskon:0:0);
    writeln('TOTAL BAYAR : Rp.',bayar:0:0);
end.