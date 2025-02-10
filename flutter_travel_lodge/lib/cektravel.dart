import 'package:flutter/material.dart';
import 'package:flutter_travel_lodge/home.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: PesananTravel(),
    );
  }
}

class PesananTravel extends StatelessWidget {
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
                  'assets/mobil5.jpeg',
                  fit: BoxFit.cover,
                ),
              ),
              SizedBox(height: 20),
              Text(
                'Driver Travel Avanza',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10),
              Text('Nama Driver : Mr.Alex'),
              Text('Lokasi Awal : Jl. Raya Petulu Kabupaten Gianyar, Bali 80571'),
              Text('Lokasi Akhir : Jl. Raya Petulu Kabupaten Gianyar, Bali 80571'),
              SizedBox(height: 20),
              Text(
                'Rincian Harga',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 10),
              Text('Harga: Rp.50.000'),
              Text('Pajak & Biaya: Rp.5.000'),
              
              Text(
                'Total Harga: Rp. 55.000',
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


