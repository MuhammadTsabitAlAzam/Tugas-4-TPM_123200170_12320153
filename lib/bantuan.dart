import 'package:flutter/material.dart';
import 'package:tugas4/main.dart';

class Bantuan extends StatelessWidget {
  const Bantuan({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        padding: EdgeInsets.all(15),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("Bantuan Cara Menggunakan Aplikasi Ini", style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold,),),
              SizedBox(height: 20),
              Text("Login", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
              Text(
                  "Login dilakukan dengan menggunakan username 123 dan password 123", overflow: TextOverflow.clip,),
              Text(
                  "Gunakan Bottom Navigation Bar di bawah untuk berpindah antara halaman Utama dengan Bantuan"
                , overflow: TextOverflow.clip,
              ),
              SizedBox(height: 10),
              Text("Halaman Utama", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
              Text("Pada Halaman Utama Terdapat 4 Menu utama yaitu : "),
              Text("1. Daftar Anggota "),
              Text("Untuk melihat anggota kelompok pembuat aplikasi "),
              Text("2. Aplikasi Stopwatch "),
              Text(
                  "Untuk menghitung waktu, terdapat tombol start untuk memulai jalannya waktu, tombol stop untuk menghentikan eaktu dan tombol reset untuk mereset waktu",
                overflow: TextOverflow.clip,),
              Text("3. Daftar Rekomendasi Film"),
              Text(
                  "Halaman ini digunakan untuk melihat film-film yang direkomendasikan pembuat, terdapat dua tombol yaitu untuk menambahkan ke Favorit dan tombol untuk membuka link film",
                overflow: TextOverflow.clip,),
              Text("4. Favorite"),
              Text(
                  "Halaman ini digunakan untuk melihat film-film yang telah dimasukkan ke daftar favorite dan terdapat tombol untuk membuka link film",
                overflow: TextOverflow.clip,),
              SizedBox(height: 10),
              Text("Bantuan", style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),),
              Text(
                  "Bantuan berisikan cara-cara untuk menggunakan aplikasi dan tombol LogOut"),
              SizedBox(height: 30),
              Center(
                child: ElevatedButton(onPressed: (){
                  exit(context);
                },
                  child: Text("Log Out"),),
              ),
            ],
          ),
        ),
    );
  }
}

void exit(BuildContext context) {
  AlertDialog alert = AlertDialog(
    title: Text("Log Out"),
    content: Container(
      child: Text("Apakah Anda Yakin Ingin Log Out ?"),
    ),
    actions: [
      TextButton(
        child: Text('Yes'),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => MyApp()),
          );
        },
      ),
      TextButton(
        child: Text('No'),
        onPressed: () {Navigator.of(context).pop();},
      ),
    ],
  );
  showDialog(context: context, builder: (context) => alert);
  return;
}
