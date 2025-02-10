import 'package:flutter/material.dart';
import 'package:flutter_travel_lodge/home.dart'; // Pastikan import ini sesuai dengan file yang ada
import 'package:flutter_travel_lodge/register.dart'; // Pastikan import ini sesuai dengan file yang ada

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: Center(
          child: LoginPage(),
        ),
      ),
    );
  }
}

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // Mendapatkan ukuran layar
    double screenWidth = MediaQuery.of(context).size.width;
    double screenHeight = MediaQuery.of(context).size.height;

    return Center(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(30),
            ),
            elevation: 4.0,
            child: Padding(
              padding: const EdgeInsets.all(20), // Padding pada Card
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.center, // Menyusun konten secara horizontal di tengah
                mainAxisAlignment: MainAxisAlignment.center, // Menyusun konten secara vertikal di tengah
                children: [
                  SizedBox(height: 16.0),
                  Text(
                    'TRAVEL LODGE',
                    style: TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 59, 117, 203),
                    ),
                  ),
                  SizedBox(height: 8.0), // Jarak antara dua teks
                  Text(
                    'Perjalanan dan Penginapan',
                    style: TextStyle(
                      fontSize: 12,
                      color: Color.fromARGB(255, 14, 14, 14),
                    ),
                  ),
                  SizedBox(height: 30.0),
                  // Mengubah posisi teks ke kiri dengan jarak
                  Text(
                    'Masuk ke Akun Anda',
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 59, 117, 203),
                    ),
                  ),
                  SizedBox(height: 16.0),
                  // Email/Username Field
                  TextField(
                    decoration: InputDecoration(
                      labelText: 'Email/Username',
                      filled: true,
                      fillColor: Color.fromARGB(255, 176, 185, 199),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                  ),
                  SizedBox(height: 16.0),
                  // Password Field
                  TextField(
                    decoration: InputDecoration(
                      labelText: 'Password',
                      filled: true,
                      fillColor: Color.fromARGB(255, 176, 185, 199),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                    ),
                    obscureText: true,
                  ),
                  SizedBox(height: 16.0),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      'Lupa Password?',
                      style: TextStyle(
                        color: Color.fromARGB(255, 59, 117, 203),
                      ),
                    ),
                  ),
                  SizedBox(height: 16.0),
                  ElevatedButton(
                    onPressed: () {
                      // Aksi tombol masuk
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => CarRentalHomePage()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Color.fromARGB(255, 59, 117, 203), // Background color
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0),
                      ),
                      padding: EdgeInsets.symmetric(vertical: 16.0),
                    ),
                    child: Center(
                      child: Text(
                        'Masuk',
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  ),
                  SizedBox(height: 16.0),
                  GestureDetector(
                    onTap: () {
                      // Navigasi ke halaman register saat teks "DAFTAR" ditekan
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => RegisterPage()),
                      );
                    },
                    child: Text.rich(
                      TextSpan(
                        text: 'Kamu belum terdaftar? ',
                        style: TextStyle(color: Colors.grey[700]),
                        children: [
                          TextSpan(
                            text: 'DAFTAR',
                            style: TextStyle(
                              color: Color.fromARGB(255, 59, 117, 203),
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 16.0),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Ketentuan Pengguna',
                        style: TextStyle(color: Colors.grey[700]),
                      ),
                      Text(
                        'Kebijakan Privasi',
                        style: TextStyle(color: Colors.grey[700]),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
