import 'package:flutter/material.dart';
import 'package:flutter_travel_lodge/home.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: PesananPage(),
    );
  }
}

class PesananPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          width: MediaQuery.of(context).size.width * 0.9,
          padding: EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            boxShadow: [
              BoxShadow(
                color: Colors.black12,
                blurRadius: 10,
              ),
            ],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Center(
                child: Text(
                  'Detail Pesanan',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              SizedBox(height: 20),
              Container(
                width: double.infinity,
                height: 150,
                child: Image.asset(
                  'assets/hotel1.jpg',
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(height: 20),
              Text(
                'The Compass Rose Ubud',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10),
              Text('Nama Tamu : Bella Azahra'),
              Text('Check-in  : 20 Januari 2025  (13.00)'),
              Text('Rincian Kamar : Airy Room Standart Twin (2 Malam,1 Kamar,dan 2 Tamu)'),
              SizedBox(height: 20),
              Text(
                'Rincian Harga',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10),
              Text('Harga: Rp.1.966.192'),
              Text('Pajak & Biaya: Rp.20.000'),
              Text('Biaya Pengiriman: Rp.5.000'),
              Text(
                'Total Harga: Rp. 1.966.217',
                style: TextStyle(
                  fontSize: 15,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 20),
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    // Navigator push untuk menuju halaman pembayaran
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => CarRentalHomePage()),
                    );
                  },
                  child: Text('Kembali Ke Home'),
                ),
              ),
            ],
          ),
        ),
      ),
      backgroundColor: Colors.grey[200],
    );
  }
}


