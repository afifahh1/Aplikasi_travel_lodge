import 'package:flutter/material.dart';
import 'package:flutter_travel_lodge/pembayaran.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Bookinghotel(),
    );
  }
}

class Bookinghotel extends StatelessWidget {
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
                  'Booking',
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
              Text('Alamat : Jl. Raya Petulu Kabupaten Gianyar, Bali 80571'),
              Text('Harga : Rp.1.966.192'),
              Text('Pesan : 1 Kamar untuk 2 Malam'),
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
                      MaterialPageRoute(builder: (context) => PembayaranPage()),
                    );
                  },
                  child: Text('Lanjut Pembayaran'),
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


