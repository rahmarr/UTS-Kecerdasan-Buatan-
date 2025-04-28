% Fakta: R1 - Daun menguning
% Fakta: R2 - Terdapat bercak hitam
% Fakta: R3 - Daun berlubang
% Fakta: R4 - Tanaman layu

% Rules (Aturan):
% Jika R1 dan R4, maka A1 (Hama Wereng)
hama(A1) :- gejala(R1), gejala(R4).

% Jika R2 dan R1, maka A2 (Jamur Daun)
hama(A2) :- gejala(R2), gejala(R1).

% Jika R3 dan R2, maka A3 (Ulat Grayak)
hama(A3) :- gejala(R3), gejala(R2).

% Jika R1 dan R3, maka A4 (Hama Aphid)
hama(A4) :- gejala(R1), gejala(R3).

% Menampilkan deskripsi hama
deskripsi(A1) :- write('Hama terdeteksi: Wereng').
deskripsi(A2) :- write('Hama terdeteksi: Jamur Daun').
deskripsi(A3) :- write('Hama terdeteksi: Ulat Grayak').
deskripsi(A4) :- write('Hama terdeteksi: Aphid').

% Program utama
start :-
    tanya_gejala,
    (   hama(Hama) -> deskripsi(Hama)
    ;   write('Tidak dapat mengidentifikasi hama berdasarkan gejala yang diberikan.')
    ).

% Tanya gejala ke pengguna
tanya_gejala :-
    tanya('Apakah daun menguning? (ya/tidak)', R1),
    tanya('Apakah terdapat bercak hitam? (ya/tidak)', R2),
    tanya('Apakah daun berlubang? (ya/tidak)', R3),
    tanya('Apakah tanaman layu? (ya/tidak)', R4).

% Menyimpan gejala yang dijawab 'ya'
tanya(Pertanyaan, Gejala) :-
    write(Pertanyaan), nl,
    read(Jawaban),
    (   Jawaban == ya -> assert(gejala(Gejala))
    ;   true).

