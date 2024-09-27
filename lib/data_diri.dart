import 'package:flutter/material.dart';

class DataDiri extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Data Diri'),
        backgroundColor: Color.fromARGB(255, 227, 15, 111), // Warna ungu gelap
      ),
      body: Container(
        color: Color(0xFFF3E5F5), // Latar belakang yang lebih cerah
        padding: EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              width: 100,
              height: 100,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0), // Sudut melengkung
                color: Colors.grey[300], // Warna latar belakang placeholder
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(10.0), // Sudut melengkung
                child: Image.asset(
                  'assets/foto.jpg', // Gambar yang akan ditampilkan
                  fit: BoxFit.cover, // Mengatur gambar agar menutupi area
                ),
              ),
            ),
            SizedBox(height: 20),
            Card(
              elevation: 4,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              child: Padding(
                padding: EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Nama: Brigitta Chrishyandra',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(height: 8),
                    Text('NIM: 124220010', style: TextStyle(fontSize: 16)),
                    SizedBox(height: 8),
                    Text(
                        'Tempat dan Tanggal Lahir: Yogyakarta, 11 November 2004',
                        style: TextStyle(fontSize: 16)),
                    SizedBox(height: 8),
                    Text('Hobi: Menyanyi dan Dance',
                        style: TextStyle(fontSize: 16)),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
