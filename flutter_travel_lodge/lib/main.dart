import 'package:flutter/material.dart';
import 'package:flutter_travel_lodge/login.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: PhoneWidget(),
        ),
      ),
    );
  }
}

// Kerangka untuk PhoneWidget
class PhoneWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
        width: 250,
        height: 500,
        decoration: BoxDecoration(
          color: Color.fromARGB(255, 59, 117, 203),
          borderRadius: BorderRadius.circular(30),
        ),
        padding: const EdgeInsets.all(20),
        child: Stack(
          children: [
            Positioned(
              top: 10,
              left: 80,
              child: Container(
                width: 50,
                height: 10,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 232, 224, 224),
                  borderRadius: BorderRadius.circular(5),
                ),
              ),
            ),
            Positioned.fill(
              child: Center(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SizedBox(height: 80),
                    Text(
                      'TRAVELLODGE',
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Pemesanan Hotel dan Travel',
                      style: TextStyle(
                        fontSize: 15,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(height: 100),
                    // Tombol Start dengan onPressed
                    ElevatedButton(
                      onPressed: () {
                        // Navigasi ke halaman LoginPage saat tombol ditekan
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => LoginPage()),
                        );
                      },
                      style: ElevatedButton.styleFrom(
                        foregroundColor: Colors.black, backgroundColor: Colors.white, // Teks warna hitam
                        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                      child: Text(
                        "Start",
                        style: TextStyle(
                          fontSize: 14,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
