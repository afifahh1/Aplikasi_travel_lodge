import 'package:flutter/material.dart';
import 'package:flutter_travel_lodge/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Favorite',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: FavoritePage(),
    );
  }
}

class FavoritePage extends StatelessWidget {
  final List<Map<String, String>> hotels = [
    {
      'name': 'The Dharmawangsa Jakarta',
      'location': 'Jakarta Selatan',
      'rating': '5.0',
      'image': 'assets/hotel1.jpg',
    },
    {
      'name': 'The Hermitage, A Tribute Portfolio Hotel, Jakarta',
      'location': 'Jakarta',
      'rating': '5.0',
      'image': 'assets/hotel2.jpg',
    },
    {
      'name': 'Ascott Kuningan Jakarta',
      'location': 'Jakarta Selatan',
      'rating': '5.0',
      'image': 'assets/hotel3.jpg',
    },
    {
      'name': 'ibis Styles Jakarta Mangga Dua Square',
      'location': 'JAKARTA',
      'rating': '3.0',
      'image': 'assets/hotelbali.jpg',
    },
    {
      'name': 'Asana Kawanua Jakarta',
      'location': 'Jakarta',
      'rating': '3.0',
      'image': 'assets/hotelbandung.jpg',
    },
    {
      'name': 'Swiss-Belinn Airport Jakarta',
      'location': 'Tangerang',
      'rating': '3.0',
      'image': 'assets/hotel2.jpg',
    },
    {
      'name': 'Holiday Inn Express Jakarta Cikini',
      'location': 'Jakarta',
      'rating': '3.0',
      'image': 'assets/hoteljakarta.jpg',
    },
    {
      'name': 'Fairmont Jakarta',
      'location': 'JAKARTA',
      'rating': '5.0',
      'image': 'assets/hoteljogja.jpg',
    },
    {
      'name': 'D Hotel Jakarta',
      'location': 'Jakarta Selatan',
      'rating': '3.0',
      'image': 'assets/hotelsolo.jpg',
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Favorite',
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
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 10.0),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10.0),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    blurRadius: 4.0,
                    offset: Offset(0, 2),
                  ),
                ],
              ),
           
            ),
            SizedBox(height: 20),
            Expanded(
              child: ListView.builder(
                itemCount: hotels.length,
                itemBuilder: (context, index) {
                  final hotel = hotels[index];
                  return Container(
                    margin: EdgeInsets.only(bottom: 10.0),
                    padding: EdgeInsets.all(10.0),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(10.0),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.1),
                          blurRadius: 4.0,
                          offset: Offset(0, 2),
                        ),
                      ],
                    ),
                    child: Row(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(10.0),
                          child: Image.asset(
                            hotel['image']!,
                            width: 60,
                            height: 60,
                            fit: BoxFit.cover,
                          ),
                        ),
                        SizedBox(width: 10),
                        Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                hotel['name']!,
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.bold,
                                  color: Colors.black,
                                ),
                              ),
                              SizedBox(height: 5),
                              Text(
                                hotel['location']!,
                                style: TextStyle(
                                  fontSize: 14,
                                  color: Colors.grey,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Row(
                          children: [
                            Icon(Icons.star, color: Colors.amber),
                            SizedBox(width: 5),
                            Text(
                              hotel['rating']!,
                              style: TextStyle(
                                fontSize: 14,
                                color: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}