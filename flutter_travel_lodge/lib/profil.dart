import 'package:flutter/material.dart';
import 'package:flutter_travel_lodge/home.dart';
import 'package:flutter_travel_lodge/login.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: ProfilePage(),
    );
  }
}

class ProfilePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Profil',
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
      backgroundColor: Color.fromARGB(255, 249, 249, 249),
      body: Center(
        child: Container(
          width: MediaQuery.of(context).size.width * 0.9,
          constraints: BoxConstraints(maxWidth: 1000),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8),
            boxShadow: [
              BoxShadow(
                color: Colors.black12,
                blurRadius: 8,
                offset: Offset(0, 4),
              ),
            ],
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                decoration: BoxDecoration(
                  
                  borderRadius: BorderRadius.vertical(top: Radius.circular(10)),
                ),
                padding: EdgeInsets.all(50),
                child: Column(
                  children: [
                    ClipOval(
                      child: Image.asset(
                        'assets/profil.jpg',
                        width: 100, // Width of the ellipse
                        height: 100, // Height of the ellipse
                        fit: BoxFit.cover, // Make sure image covers the area
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Kelompok 2',
                      style: TextStyle(
                        color: Color.fromARGB(255, 51, 51, 51),
                        fontSize: 15,
                      ),
                    ),
                    SizedBox(height: 5),
                    Text(
                      'namakamu@gmail.com',
                      style: TextStyle(
                        color: const Color.fromARGB(255, 56, 55, 55),
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
              ),
              MenuItem(
                icon: Icons.person,
                text: 'Password',
                onTap: () {},
                textStyle: TextStyle(
                  fontSize: 15, // Font size for the text
                  color: Colors.black, // Set text color
                ),
                
              ),
              MenuItem(
                icon: Icons.info,
                text: 'Informasi Aplikasi',
                onTap: () {},
                textStyle: TextStyle(
                  fontSize: 15, // Font size for the text
                  color: Colors.black, // Set text color
                ),
              ),
              MenuItem(
                icon: Icons.lock,
                text: 'Kelola akun',
                onTap: () {},
                textStyle: TextStyle(
                  fontSize: 15, // Font size for the text
                  color: Colors.black, // Set text color
                ),
              ),
              Container(
                width: double.infinity,
                child: TextButton(
                  style: TextButton.styleFrom(
                    backgroundColor: Colors.red,
                    padding: EdgeInsets.all(10),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.vertical(bottom: Radius.circular(10)),
                    ),
                  ),
                  onPressed: () {
                        // Navigasi ke halaman LoginPage saat tombol ditekan
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => LoginPage()),
                        );
                      },
                  child: Text(
                    'Keluar',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class MenuItem extends StatelessWidget {
  final IconData icon;
  final String text;
  final VoidCallback onTap;
  final TextStyle? textStyle; // Added optional parameter for textStyle

  const MenuItem({
    required this.icon,
    required this.text,
    required this.onTap,
    this.textStyle, // Optional textStyle parameter
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: EdgeInsets.symmetric(vertical: 8),
        padding: EdgeInsets.symmetric(vertical: 15, horizontal: 20),
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(8),
          boxShadow: [
            BoxShadow(
              color: Colors.black12,
              blurRadius: 4,
              offset: Offset(0, 2),
            ),
          ],
        ),
        child: Row(
          children: [
            Icon(icon, color: Color(0xFF4facfe)),
            SizedBox(width: 15),
            Expanded(
              child: Text(
                text,
                style: textStyle ?? TextStyle(fontSize: 16), // Use custom textStyle or default style
              ),
            ),
            Icon(Icons.arrow_forward_ios, size: 16, color: Color(0xFF4facfe)),
          ],
        ),
      ),
    );
  }
}
