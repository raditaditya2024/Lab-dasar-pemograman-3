program soal2;
uses crt;
var
    sandi: string;
    coba: integer;
    katasandi: string;

begin
clrscr;
    // pw asli
    katasandi := 'radit123';
    coba := 0;

    repeat
        // user memasukan kata sandi
        write('Masukkan Kata Sandi: ');
        readln(sandi);
        coba := coba + 1;

        // ngecek kata sandi benar atau tidak
        if sandi = katasandi then
        begin
            writeln('Login Berhasil!');
            break; // keluar dari loop jika login berhasil
        end
        else
            writeln('Kata Sandi Salah! Silakan coba lagi.');

    until coba >= 3;

    // jika user gagal 3 kali, tampilkan pesan akses ditolak
    if coba >= 3 then
        writeln('Akses Ditolak!');

end.