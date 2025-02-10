import 'package:flutter/material.dart';
import 'package:flutter_travel_lodge/cekpesanan.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: PembayaranPage(),
    );
  }
}

class PembayaranPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                width: 100,
                height: 100,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 59, 117, 203),
                  shape: BoxShape.circle,
                ),
                child: Icon(Icons.check, color: Colors.white, size: 50),
              ),
              SizedBox(height: 20),
              Text(
                'Pembayaran Berhasil',
                style: TextStyle(
                  color: Color.fromARGB(255, 59, 117, 203),
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 20),
              Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                  border: Border.all(color: Color.fromARGB(255, 59, 117, 203)),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Rincian Pembayaran',
                      style: TextStyle(
                        color: Color.fromARGB(255, 59, 117, 203),
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    SizedBox(height: 10),
                    PaymentDetailRow(
                      label: 'Total Harga',
                      value: 'Rp 1.966.192',
                    ),
                    PaymentDetailRow(
                      label: 'Pajak & Biaya',
                      value: 'Rp 20.000',
                    ),
                    PaymentDetailRow(
                      label: 'Biaya Pengiriman',
                      value: 'Rp 5.000',
                    ),
                    Divider(color: Color.fromARGB(255, 59, 117, 203)),
                    PaymentDetailRow(
                      label: 'Total Pembayaran',
                      value: 'Rp 1.966.217',
                      isBold: true,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: () {
                  // Menavigasi ke halaman PesananPage saat tombol ditekan
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => PesananPage()),
                  );
                },
                style: ElevatedButton.styleFrom(
                  iconColor: Color.fromARGB(255, 59, 117, 203),
                  padding: EdgeInsets.symmetric(horizontal: 50, vertical: 10),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                child: Text(
                  'Cek Pesanan',
                  style: TextStyle(fontSize: 16),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}



class PaymentDetailRow extends StatelessWidget {
  final String label;
  final String value;
  final bool isBold;

  PaymentDetailRow({required this.label, required this.value, this.isBold = false});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 5.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            label,
            style: TextStyle(
              fontSize: 16,
              fontWeight: isBold ? FontWeight.bold : FontWeight.normal,
            ),
          ),
          Text(
            value,
            style: TextStyle(
              fontSize: 16,
              fontWeight: isBold ? FontWeight.bold : FontWeight.normal,
            ),
          ),
        ],
      ),
    );
  }
}
