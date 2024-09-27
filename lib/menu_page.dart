import 'package:flutter/material.dart';
import 'package:quiz_mobile_brigitta/bil_prima.dart';
import 'package:quiz_mobile_brigitta/data_diri.dart';
import 'package:quiz_mobile_brigitta/layang_layang.dart';
import 'package:quiz_mobile_brigitta/lingkaran.dart';
import 'package:quiz_mobile_brigitta/trapesium.dart';

class MenuPage extends StatelessWidget {
  const MenuPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Quiz Mobile SI-B"),
        centerTitle: true,
        backgroundColor: const Color.fromARGB(255, 232, 29, 124),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: GridView.count(
          crossAxisCount: 2, // Jumlah kolom dalam grid
          crossAxisSpacing: 16,
          mainAxisSpacing: 16,
          children: [
            _menuItem(context, "Layang-Layang", Icons.category_rounded,
                LayangLayang()),
            _menuItem(
                context, "Trapesium", Icons.dashboard_customize, Trapesium()),
            _menuItem(context, "Lingkaran", Icons.circle, Lingkaran()),
            _menuItem(context, "Bilangan Prima", Icons.calculate, BilPrima()),
            _menuItem(context, "Data Diri", Icons.person_2_rounded, DataDiri()),
          ],
        ),
      ),
    );
  }

  Widget _menuItem(
      BuildContext context, String title, IconData icon, Widget destination) {
    return Card(
      elevation: 4,
      child: InkWell(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => destination),
          );
        },
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(icon,
                size: 60, color: const Color.fromARGB(255, 239, 73, 167)),
            SizedBox(height: 10),
            Text(
              title,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
