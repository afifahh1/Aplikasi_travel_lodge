import 'package:flutter/material.dart';
import 'package:flutter_travel_lodge/home.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Transaction',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        fontFamily: 'Roboto',
      ),
      home: TransactionPage(),
    );
  }
}

class TransactionPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
     appBar: AppBar(
        title: Text(
          'Transaction',
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
            TransactionCard(
              bookingId: '12345678',
              hotelName: 'Hotel Grand Makkasan',
              date: 'Mon, 24 Aug 2025',
              status: 'Pending',
              statusColor: Colors.green,
              imagePath: 'assets/hotel1.jpg',
            ),
            TransactionCard(
              bookingId: '12345678',
              hotelName: 'OYO Life 2736 Pondok Klara',
              date: 'Tue, 17 Aug 2025',
              status: 'Finished',
              statusColor: Colors.blue,
              imagePath: 'assets/hotel2.jpg',
            ),
            TransactionCard(
              bookingId: '12345678',
              hotelName: 'OYO Life 2736 Pondok Klara',
              date: 'Wed, 08 April 2025',
              status: 'Cancelled',
              statusColor: Colors.red,
              imagePath: 'assets/hotel3.jpg',
            ),
          ],
        ),
      ),
    );
  }
}

class TransactionCard extends StatelessWidget {
  final String bookingId;
  final String hotelName;
  final String date;
  final String status;
  final Color statusColor;
  final String imagePath;

  TransactionCard({
    required this.bookingId,
    required this.hotelName,
    required this.date,
    required this.status,
    required this.statusColor,
    required this.imagePath,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.only(bottom: 20),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(8),
      ),
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Row(
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.asset(
                imagePath,
                width: 80,
                height: 80,
                fit: BoxFit.cover,
              ),
            ),
            SizedBox(width: 15),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Booking ID: $bookingId',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  SizedBox(height: 5),
                  Text(
                    hotelName,
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.black,
                    ),
                  ),
                  Text(
                    date,
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.black,
                    ),
                  ),
                  SizedBox(height: 10),
                  Row(
                    children: [
                      Icon(
                        Icons.circle,
                        size: 12,
                        color: statusColor,
                      ),
                      SizedBox(width: 5),
                      Text(
                        status,
                        style: TextStyle(
                          fontSize: 14,
                          color: statusColor,
                        ),
                      ),
                    ],
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