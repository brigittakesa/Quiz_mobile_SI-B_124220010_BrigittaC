import 'package:flutter/material.dart';

class LayangLayang extends StatefulWidget {
  @override
  _LayangLayangState createState() => _LayangLayangState();
}

class _LayangLayangState extends State<LayangLayang> {
  final TextEditingController _diagonal1Controller = TextEditingController();
  final TextEditingController _diagonal2Controller = TextEditingController();

  double _luas = 0;
  double _keliling = 0;

  void _calculate() {
    double d1 = double.parse(_diagonal1Controller.text);
    double d2 = double.parse(_diagonal2Controller.text);
    _luas = (d1 * d2) / 2;
    // Menghitung keliling jika sisi sama
    _keliling = 4 * (d1 + d2) / 2; // Ubah sesuai dengan logika keliling
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Layang-Layang'),
        backgroundColor: Color.fromARGB(255, 232, 29, 124),
      ),
      body: Container(
        color: Color.fromARGB(
            255, 255, 199, 231), // Latar belakang yang lebih cerah
        padding: EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              TextField(
                controller: _diagonal1Controller,
                decoration: InputDecoration(
                  labelText: 'Diagonal 1',
                  border: OutlineInputBorder(),
                  filled: true,
                  fillColor: Colors.white,
                ),
                keyboardType: TextInputType.number,
              ),
              SizedBox(height: 16),
              TextField(
                controller: _diagonal2Controller,
                decoration: InputDecoration(
                  labelText: 'Diagonal 2',
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
                      Color.fromARGB(255, 233, 158, 197), // Warna tombol
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
                    children: [
                      Text(
                        'Hasil:',
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      SizedBox(height: 10),
                      Text('Luas: $_luas', style: TextStyle(fontSize: 18)),
                      Text('Keliling: $_keliling',
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
