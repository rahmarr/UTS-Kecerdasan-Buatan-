def sistem_pakar():
    print("Jawab pertanyaan berikut dengan 'ya' atau 'tidak':")

    R1 = input("Apakah daun menguning? ").lower() == 'ya'
    R2 = input("Apakah terdapat bercak hitam? ").lower() == 'ya'
    R3 = input("Apakah daun berlubang? ").lower() == 'ya'
    R4 = input("Apakah tanaman layu? ").lower() == 'ya'

    if R1 and R4:
        print("Jenis hama terdeteksi: Wereng (A1)")
    elif R2 and R1:
        print("Jenis hama terdeteksi: Jamur Daun (A2)")
    elif R3 and R2:
        print("Jenis hama terdeteksi: Ulat Grayak (A3)")
    elif R1 and R3:
        print("Jenis hama terdeteksi: Aphid (A4)")
    else:
        print("Gejala tidak cocok dengan hama yang diketahui.")

sistem_pakar()
