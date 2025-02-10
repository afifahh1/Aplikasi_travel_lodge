import 'package:flutter/material.dart';
import 'package:flutter_travel_lodge/home.dart';


void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: TravelPage(),
    );
  }
}

class TravelPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
         title: Text(
          'Pilihan Travel',
          style: TextStyle(color: Colors.white),
        ),
        backgroundColor: Colors.blue[800],
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios, color: Colors.white),
          onPressed: () {
            Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => CarRentalHomePage(),  // Halaman Home yang telah di import
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
                  //merupakan code untuk menampilkan grid view
                  TravelOption(
                    name: 'Alex',
                    facilities: 'Mobil ',
                    price: 'Rp. 35.000',
                    imagePath: 'assets/mobil5.jpeg',
                  ),
                  TravelOption(
                    name: 'Budi ',
                    facilities: 'Mobil',
                    price: 'Rp. 50.000',
                    imagePath: 'assets/mobil5.jpeg',
                  ),
                  TravelOption(
                    name: 'Adit',
                    facilities: 'Mobil ',
                    price: 'Rp. 45.000',
                    imagePath: 'assets/mobil3.jpeg',
                  ),
                  TravelOption(
                    name: 'Andre',
                    facilities: 'Mobil ',
                    price: 'Rp. 35.000',
                    imagePath: 'assets/mobil2.jpeg',
                  ),
                  TravelOption(
                    name: 'Joko',
                    facilities: 'Mobil',
                    price: 'Rp. 25.000',
                    imagePath: 'assets/mobil5.jpeg',
                  ),
                  TravelOption(
                    name: 'Sandi',
                    facilities: 'Mobil',
                    price: 'Rp. 15.000',
                    imagePath: 'assets/mobil2.jpeg',
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

class TravelOption extends StatelessWidget {
  final String name;
  final String facilities;
  final String price;
  final String imagePath;

  TravelOption({
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
                SizedBox(height: 2),
                Text('Fasilitas: $facilities'),
                SizedBox(height: 2),
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
