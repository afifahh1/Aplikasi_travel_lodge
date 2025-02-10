import 'package:flutter/material.dart';
import 'package:flutter_travel_lodge/favorite.dart';
import 'package:flutter_travel_lodge/hargakhusus.dart';
import 'package:flutter_travel_lodge/hargamobil.dart';
import 'package:flutter_travel_lodge/pilihanhotel.dart';
import 'package:flutter_travel_lodge/pilihantravel.dart';
import 'package:flutter_travel_lodge/profil.dart';
import 'package:flutter_travel_lodge/transaksi.dart';

void main() {
  runApp(CarRentalApp());
}

class CarRentalApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Booking.com',
      theme: ThemeData(
        primarySwatch: Colors.blue, // Ganti primaryColor ke primarySwatch
        fontFamily: 'Roboto',
      ),
      home: CarRentalHomePage(),
    );
  }
}

class CarRentalHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        ),

      body: SingleChildScrollView(
        child: Column(
          children: [
            // Menambahkan tinggi latar belakang biru
            Container(
              color: Color(0xFF003580),
              height: 50,  // Mengatur tinggi latar biru
              padding: EdgeInsets.symmetric(vertical: 10),  // Mengatur padding untuk memberi ruang di dalam container
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  _buildNavButton(Icons.bed, 'Hotel', context),
                  _buildNavButton(Icons.car_rental, 'Travel', context),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Promo Akhir Pekan',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Hemat untuk Menginap 3 Januari - 5 Januari',
                    style: TextStyle(fontSize: 14),
                  ),
                  SizedBox(height: 20),
                  
                     //fungsi yang di buat untuk menyusun tampilan card yang 
                     //berfungsi menampilkan data  dan informasi tertentu 

                      _buildCard(
                    'The Compass Rose Ubud',
                    '9.2',
                    'Luar biasa • 604 ulasan',
                    'Ubud',
                    'Harga khusus ',
                    'Rp 1.966.162',
                    'Rp 5.400.000',
                    '2 malam',
                    'assets/hotel1.jpg', // code menampilkan gambar
                    context,
                  ),
                  _buildCard(
                    'Beautiful Seaside Resort',
                    '8.9',
                    'Sangat baik • 500 ulasan',
                    'Bali',
                    'Harga khusus ',
                    'Rp 3.100.000',
                    'Rp 3.000.000',
                    '2 malam',
                    'assets/hotel2.jpg', // code menampilkan gambar
                    context,
                  ),

                  _buildCard(
                    'The Hotel Park',
                    '8.9',
                    'Sangat baik • 500 ulasan',
                    'Bali',
                    'Harga khusus ',
                    'Rp 2.000.000',
                    'Rp 3.000.000',
                    '2 malam',
                    'assets/hotel3.jpg', // code menampilkan gambar
                    context,
                  ),

                   _buildCard(
                    'Penginapan Villa di Bandung',
                    '8.9',
                    'Sangat baik • 500 ulasan',
                    'Bali',
                    'Harga khusus ',
                    'Rp 2.800.000',
                    'Rp 3.200.000',
                    '2 malam',
                    'assets/hotelbandung.jpg', // code menampilkan gambar
                    context,
                  ),

                  SizedBox(height: 20),
                  Text(
                    'Pilihan Travel Untuk Anda',
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),

                  SizedBox(height: 10),
                  _buildCard(
                    'Travel Avanza',
                    '8.9',
                    'Sangat baik • 500 ulasan',
                    'Bandung',
                    'Harga khusus ',
                    'Rp 50.000',
                    'Rp 85.000',
                    '2 Orang ',
                    'assets/mobil5.jpeg', // code menampilkan gambar
                    context,
                  ),

                  SizedBox(height: 10),
                  _buildCard(
                    'Travel Agya',
                    '8.9',
                    'Sangat baik • 500 ulasan',
                    'Jakarta',
                    'Harga khusus ',
                    'Rp 75.000',
                    'Rp 100.000',
                    '2 Orang',
                    'assets/mobil4.jpeg', // code menampilkan gambar
                    context,
                  ),

                  SizedBox(height: 10),
                  _buildCard(
                    'Travel APV',
                    '8.9',
                    'Sangat baik • 500 ulasan',
                    'Jakarta',
                    'Harga khusus ',
                    'Rp.95.000',
                    'Rp 115.000',
                    '3 Orang',
                    'assets/mobil1.jpeg', // code menampilkan gambar
                    context,
                  ),

                  SizedBox(height: 10),
                  _buildCard(
                    'Travel Luxury',
                    '8.9',
                    'Sangat baik • 500 ulasan',
                    'Jakarta',
                    'Harga khusus ',
                    'Rp.120.000',
                    'Rp 135.000',
                    '4 Orang',
                    'assets/mobil2.jpeg', // code menampilkan gambar
                    context,
                  ), 
                ],
              ),
            ),
          ],
        ),
      ),

    
      //code untuk menampilkan komponen yang terletak di tampilan halaman bawah 
      bottomNavigationBar: BottomNavigationBar(
  items: [
    BottomNavigationBarItem(
      icon: Icon(Icons.search),
      label: 'Cari',
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.favorite),
      label: 'Favorit',
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.business_center),
      label: 'Pemesanan',
    ),
    BottomNavigationBarItem(
      icon: Icon(Icons.person),
      label: 'Profil',
    ),
  ],

  selectedItemColor: Color(0xFF003580),
  unselectedItemColor: Colors.grey,
  onTap: (index) {
    switch (index) {
      case 0:
        // Aksi untuk menu 'Cari'
        print("Menu Cari dipilih");
        break;
      case 1:

      //code untuk menjalankan ke halaman selanjutnya
      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => HargaMobil(), 
          ),
        );
         // Aksi untuk menu 'Favorite Page'
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => FavoritePage(),  // Halaman yang di tuju selanjutnya
          ),
        );
        break;
      case 2:

      // Aksi untuk menu 'Transaksi Pemesanan'
      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => TransactionPage(),  // Halaman yang di tuju selanjutnya
          ),
        );
        print("Menu Pemesanan dipilih");
        break;
      case 3:

      // Aksi untuk menu 'Profile'
      Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => ProfilePage(),  // Halaman yang di tuju selanjutnya
          ),
        );
        // Aksi untuk menu 'Profil'
        print("Menu Profil dipilih");
        break;
    }
  },
),

    );
  }

  

  // Fungsi untuk membuat tombol navigasi
  Widget _buildNavButton(IconData icon, String label, BuildContext context) {
    return ElevatedButton.icon(
      onPressed: () {
        // Navigasi ke halaman lain berdasarkan tombol yang dipilih
        if (label == 'Hotel') {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => HotelPage()),
          );
        } else if (label == 'Travel') {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => TravelPage()),
          );
        }
      },
      icon: Icon(icon, color: Color(0xFF003580)),
      label: Text(label, style: TextStyle(color: Color(0xFF003580))),
      style: ElevatedButton.styleFrom(
        iconColor: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
      ),
    );
  }
Widget _buildCard(
  String title,
  String rating,
  String review,
  String location,
  String promo,
  String price,
  String oldPrice,
  String nights,
  String imageAssets,
  BuildContext context,
) {
  return Card(
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10),
    ),
    margin: EdgeInsets.only(bottom: 20),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Menambahkan GestureDetector pada Image.asset
        ClipRRect(
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(10),
            topRight: Radius.circular(10),
          ),
          child: GestureDetector(
            onTap: () {
              // Navigasi ke halaman tertentu saat gambar diklik
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => HargaMobil()),
              );
            },
            child: Image.asset(
              imageAssets,
              width: double.infinity,
              height: 200,
              fit: BoxFit.cover,
            ),
          ),
        ),

        Padding(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                    decoration: BoxDecoration(
                      color: Color(0xFF0071c2),
                      borderRadius: BorderRadius.circular(5),
                    ),
                    child: Text(
                      rating,
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  SizedBox(width: 10),
                  Text(review),
                ],
              ),
              SizedBox(height: 10),
              Row(
                children: [
                  Icon(Icons.location_on, size: 16),
                  SizedBox(width: 5),
                  Text(location),
                ],
              ),
              SizedBox(height: 10),
              ElevatedButton(
                onPressed: () {
                  // Navigasi ke halaman harga khusus
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => Hargakhusus()),
                  );
                },
                child: Text(promo),
                style: ElevatedButton.styleFrom(
                  iconColor: Colors.green,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
              ),
              SizedBox(height: 10),
              Text(
                price,
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Row(
                children: [
                  Text(
                    oldPrice,
                    style: TextStyle(
                      decoration: TextDecoration.lineThrough,
                      color: Colors.red,
                    ),
                  ),
                  SizedBox(width: 10),
                  Text(nights),
                ],
              ),
            ],
          ),
        ),
      ],
    ),
  );
}

}