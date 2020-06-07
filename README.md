# Analisis pergerakan harga saham empat bank BUMN di Indonesia (BMRI, BNI, BRT, BTN)

Repository ini mencoba untuk menjelaskan sedikit mengenai analisis variasi pergerakan harga saham empat Bank BUMN di Indonesia menggunakan Support Vector Regression (SVR). Support Vector Regression atau disingkat SVR merupakan pengembangan dari SVM (Support Vector Machine) salah satu algoritma supervised machine learning. Secara singkat metode SVR mencoba untuk membangun sebuah model yang mana memiliki nilai sedekat mungkin terhadap data aktual yang diuji (data training maupun data testing).
Informasi yang ingin diperoleh dari repository ini adalah perkiraan kedepan mengenai harga saham sehingga dapat dijadikan rujukan oleh para pengambil keputusan. 
Pengerjaan proyek ini menggunakan bahasa R dengan library e1071 dan data yang dipakai adalah harga penutupan (Closing Price) keempat bank tersebut pada setiap periode nya (harian, mingguan dan bulanan). Setiap kontribusi dan masukan akan berarti bagi pengembangan dan perbaikan repository ini kedepan nya.

Sistematika pengerjaan proyek : 

1. Mengunduh data historical price (harian, mingguan dan bulanan) dari www.finance.yahoo.com berdasarkan kode saham masing-masing bank (misal BMRI.JK, BBNI.JK dst). Pada repository ini data diunduh mulai tanggal 1 Januari 2020 sd 4 Juni 2020.
2. Melakukan data cleaning seperti pemisahan kolom/kategori data yang tidak dipakai, pengubahan class setiap variabel, dan penyesuai data numerik.
3. Membagi setiap dataset (harian, mingguan dan bulanan) menjadi training dan testing data dengan perbandingan 80:20
4. Melakukan teknik SVR pada setiap data untuk mendapatkan model yang paling akurat/mendekati data aktual. Memvariasikan fungsi kernel (Radial, Linear, Polinomial dan Sigmoid) dapat membantu dalam proses ini, setelah itu dilakukan plotting.
5. Melihat variasi error (perbedaan data aktual dan data prediksi), nilai error ini digunakan untuk evaluasi model. Evaluasi model bertujuan untuk mengukur keakuratan suatu model yang sudah dihasilkan,parameter evaluasi antara lain : MAPE (Mean Absolute Percentage Error), RMSE (Root Mean Square Error) dan NRMSE (Normalized Root Mean Square Error).


