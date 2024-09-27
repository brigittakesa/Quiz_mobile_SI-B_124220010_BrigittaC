import 'dart:math';
import 'package:flutter/material.dart';

class BilPrima extends StatefulWidget {
  @override
  _BilPrimaState createState() => _BilPrimaState();
}

class _BilPrimaState extends State<BilPrima> {
  final TextEditingController _searchController = TextEditingController();
  List<int> primes = [];
  String _resultMessage = '';

  @override
  void initState() {
    super.initState();
    primes = _generatePrimes(50); // Generate first 50 prime numbers
  }

  List<int> _generatePrimes(int n) {
    List<int> primes = [];
    for (int i = 2; primes.length < n; i++) {
      bool isPrime = true;
      for (int j = 2; j <= sqrt(i); j++) {
        if (i % j == 0) {
          isPrime = false;
          break;
        }
      }
      if (isPrime) {
        primes.add(i);
      }
    }
    return primes;
  }

  bool _isPrime(int number) {
    if (number < 2) return false;
    for (int i = 2; i <= sqrt(number); i++) {
      if (number % i == 0) return false;
    }
    return true;
  }

  void _checkPrime() {
    int number = int.tryParse(_searchController.text) ?? 0;
    if (number > 0) {
      setState(() {
        _resultMessage = _isPrime(number)
            ? '$number adalah bilangan prima.'
            : '$number bukan bilangan prima.';
      });
    } else {
      setState(() {
        _resultMessage = 'Masukkan angka yang valid.';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Bilangan Prima'),
        backgroundColor: Color.fromARGB(255, 232, 29, 124),
      ),
      body: Container(
        color: Color(0xFFF3E5F5),
        padding: EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _searchController,
              decoration: InputDecoration(
                labelText: 'Masukkan angka untuk diperiksa',
                border: OutlineInputBorder(),
              ),
              keyboardType: TextInputType.number,
            ),
            SizedBox(height: 10),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor:
                    Color.fromARGB(255, 235, 159, 187), // Warna tombol ungu
                padding: EdgeInsets.symmetric(vertical: 12.0, horizontal: 24.0),
                textStyle: TextStyle(fontSize: 16),
              ),
              onPressed: _checkPrime,
              child: Text('Periksa Bilangan Prima'),
            ),
            SizedBox(height: 20),
            Text(
              _resultMessage,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 25),
            Text(
              'Bilangan Prima :',
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            Expanded(
              child: ListView.builder(
                itemCount: primes.length,
                itemBuilder: (context, index) {
                  return Card(
                    elevation: 4,
                    margin: EdgeInsets.symmetric(vertical: 8),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: ListTile(
                      title: Text(
                        primes[index].toString(),
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.bold),
                      ),
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
