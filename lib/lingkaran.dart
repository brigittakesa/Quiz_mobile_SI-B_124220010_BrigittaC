import 'package:flutter/material.dart';
import 'dart:math';

class Lingkaran extends StatefulWidget {
  @override
  _LingkaranState createState() => _LingkaranState();
}

class _LingkaranState extends State<Lingkaran> {
  final TextEditingController _radiusController = TextEditingController();

  double _luas = 0;
  double _keliling = 0;

  void _calculate() {
    double radius = double.parse(_radiusController.text);
    _luas = pi * radius * radius;
    _keliling = 2 * pi * radius;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Lingkaran'),
        backgroundColor: Color(0xFFD81B60), // Warna ungu gelap
      ),
      body: Container(
        color: Color(0xFFF3E5F5), // Latar belakang yang lebih cerah
        padding: EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              TextField(
                controller: _radiusController,
                decoration: InputDecoration(
                  labelText: 'Jari-jari',
                  border: OutlineInputBorder(),
                  filled: true,
                  fillColor: Colors.white,
                ),
                keyboardType: TextInputType.number,
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: _calculate,
                style: ElevatedButton.styleFrom(
                  backgroundColor:
                      Color.fromARGB(255, 235, 159, 187), // Warna tombol ungu
                  padding:
                      EdgeInsets.symmetric(vertical: 12.0, horizontal: 24.0),
                  textStyle: TextStyle(fontSize: 16),
                ),
                child: Text('Hitung'),
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
                        'Hasil:',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 10),
                      Text('Luas: ${_luas.toStringAsFixed(2)}',
                          style: TextStyle(fontSize: 18)),
                      Text('Keliling: ${_keliling.toStringAsFixed(2)}',
                          style: TextStyle(fontSize: 18)),
                    ],
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
