import 'package:flutter/material.dart';
import 'package:flutter_travel_lodge/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HotelPage(),
    );
  }
}

class HotelPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
         title: Text(
          'Pilihan Hotel',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.blue[800],
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios, color: Colors.white),
          onPressed: () {
            Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => CarRentalHomePage(),  // Pastikan HargaMobil sudah diimport
          ),
        );
          },
        ),
        
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Expanded(
              child: GridView.count( //konstruksi widget untuk membuat grid dengan jumlah kolom yang tetap
                crossAxisCount: 2, //menentukan jumlah kolom dalam grid
                crossAxisSpacing: 10, // menentukan jarak antar item secara vertikal
                mainAxisSpacing: 10, // menentukan jarak antar item secara horizontal
                children: [
                  HotelOption(
                    name: 'The Udaya Resorts',
                    facilities: 'Kamar , Kolam Renang Outdoor , Pusat Kebugaran , Spa',
                    price: 'Rp. 2.126.000/ 1 malam',
                    imagePath: 'assets/hotelbali.jpg',
                  ),
                  HotelOption(
                    name: 'Swiss Beelboutique ',
                    facilities: 'Kamar , Restoran ,  Kolam Renang luar',
                    price: 'Rp. 1.850.000 / 1 malam',
                    imagePath: 'assets/hoteljogja.jpg',
                  ),
                  HotelOption(
                    name: 'Grand Mercure Solo',
                    facilities: 'Kamar , Air panas , Restoran ',
                    price: 'Rp. 2.500.000 / 1 malam',
                    imagePath: 'assets/hotelsolo.jpg',
                  ),
                  HotelOption(
                    name: 'Hotel Raffles Jakarta',
                    facilities: 'Kamar, Kolam Renang ',
                    price: 'Rp. 1.700.000 / 1 malam',
                    imagePath: 'assets/hoteljakarta.jpg',
                  ),
                  HotelOption(
                    name: 'Gaia Hotel Bandung',
                    facilities: 'Kamar , Kolam Renang , Spa , Restoran',
                    price: 'Rp. 2.850.000 / 1 malam',
                    imagePath: 'assets/hotelbandung.jpg',
                  ),
                  HotelOption(
                    name: 'Hotel Harper Malioboro',
                    facilities: 'Kamar , Kolam Renang , Restoran',
                    price: 'Rp. 2.670.000 / 1 malam',
                    imagePath: 'assets/hoteljogja.jpg',
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class HotelOption extends StatelessWidget {
  final String name;
  final String facilities;
  final String price;
  final String imagePath;

  HotelOption({
    required this.name,
    required this.facilities,
    required this.price,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(color: Colors.black),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: ClipRRect(
              borderRadius: BorderRadius.vertical(top: Radius.circular(4.0)),
              child: Image.asset(
                imagePath,
                fit: BoxFit.cover,
                width: double.infinity,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Nama: $name',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                SizedBox(height: 4),
                Text('Fasilitas: $facilities'),
                SizedBox(height: 4),
                Text('Harga: $price'),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8.0),
            child: Center(
            child: ElevatedButton(
              onPressed: () {},
              child: Text('Pilih'),
              
            ),
            ),
          ),
          
          SizedBox(height: 8),
        ],
      ),
    );
  }
}
