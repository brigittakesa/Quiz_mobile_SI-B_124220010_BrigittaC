import 'package:flutter/material.dart';

class Trapesium extends StatefulWidget {
  @override
  _TrapesiumState createState() => _TrapesiumState();
}

class _TrapesiumState extends State<Trapesium> {
  final TextEditingController _base1Controller = TextEditingController();
  final TextEditingController _base2Controller = TextEditingController();
  final TextEditingController _heightController = TextEditingController();

  double _luas = 0;
  double _keliling = 0;

  void _calculate() {
    double base1 = double.parse(_base1Controller.text);
    double base2 = double.parse(_base2Controller.text);
    double height = double.parse(_heightController.text);
    _luas = ((base1 + base2) * height) / 2;
    // Keliling asumsi, ganti dengan logika yang tepat jika perlu
    _keliling = base1 + base2 + (2 * height);
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Trapesium'),
        backgroundColor: Color(0xFFD5006D), // Warna fuchsia
      ),
      body: Container(
        color: Color(0xFFFFE0F0), // Latar belakang yang lebih cerah
        padding: EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              TextField(
                controller: _base1Controller,
                decoration: InputDecoration(
                  labelText: 'Alas 1',
                  border: OutlineInputBorder(),
                  filled: true,
                  fillColor: Colors.white,
                ),
                keyboardType: TextInputType.number,
              ),
              SizedBox(height: 16),
              TextField(
                controller: _base2Controller,
                decoration: InputDecoration(
                  labelText: 'Alas 2',
                  border: OutlineInputBorder(),
                  filled: true,
                  fillColor: Colors.white,
                ),
                keyboardType: TextInputType.number,
              ),
              SizedBox(height: 16),
              TextField(
                controller: _heightController,
                decoration: InputDecoration(
                  labelText: 'Tinggi',
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
                      Color.fromARGB(255, 235, 159, 187), // Warna tombol
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
